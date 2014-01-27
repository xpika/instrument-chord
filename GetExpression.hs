module GetExpression
{-
(getExpression)
-}
where

import Language.Haskell.TH
import Language.Haskell.Meta.Parse.Careful
import Data.Either

getExpression string = head $ rights [parseExp string]
getExpressionAndLine string = (makeGhciLine string , head $ rights [parseExp string])

makeGhciLine x = "Prelude Music.Instrument.Chord> putStrLn ("++x++")"

expressions = [
  "renderGuitarChords AnnotateMarking standardTuning (minorChord B)"
 ,"renderGuitarChords AnnotateMarking dropD (majorChord F)"
 ,"renderGuitarChords AnnotateNote standardTuning (majorChord G)"
 ,"renderGuitarChords AnnotatePosition ukelele (majorChord C)"
 ,"renderPianoChord AnnotateNote (majorChord C)"
 ,"renderPianoChord AnnotatePosition (majorChord A)"
 ]

 
