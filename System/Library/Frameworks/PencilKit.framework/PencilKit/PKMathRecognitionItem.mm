@interface PKMathRecognitionItem
- (BOOL)isLowConfidenceMath;
- (BOOL)isRecentlyCreated;
- (BOOL)isValidForDrawing:(id)drawing;
- (CGRect)bounds;
- (CGRect)boundsForTriggerStrokes;
- (NSArray)scrubbableVariables;
- (NSArray)strokes;
- (NSArray)symbolStrokes;
- (NSArray)tappableStrokes;
- (NSArray)triggerStrokes;
- (NSNumber)strokeGroupIdentifier;
- (NSString)expression;
- (NSString)expressionToPresent;
- (char)initWithStrokeGroupItem:(void *)item uuid:;
- (double)_boundsForStrokeIndexes:(void *)indexes;
- (double)_boundsForStrokes:(uint64_t)strokes;
- (double)_remainingDelayForTargetDelay:(void *)delay;
- (double)boundsForAnyEqualSign;
- (double)boundsForEqualSign;
- (double)boundsForVerticalExpressionLine;
- (double)mostRecentStrokeTimestamp;
- (double)suggestedDistanceBetweenDigits;
- (double)suggestedHeightForResult;
- (id)_anyEqualSignStrokes;
- (id)_findHeroStroke;
- (id)_heroStrokeInDrawing:(void *)drawing;
- (id)_stringForVariable:(id)variable;
- (id)_strokeIndexesForCharacterRange:(uint64_t)range;
- (id)_strokeIndexesForVerticalExpressionLine;
- (id)_strokesForStrokeIndexes:(void *)indexes;
- (id)alternativesTokens;
- (id)changeIdentifier;
- (id)graphableVariables;
- (id)mathResult;
- (id)originalExpression;
- (id)stableIdentifier;
- (id)strokeUUIDs;
- (id)strokesForEqualSign;
- (id)strokesForIdentifier;
- (id)strokesForVerticalExpressionLine;
- (uint64_t)_tagAsRecentlyUpdated;
- (uint64_t)characterRangeForTriggerSymbol;
- (uint64_t)hasAnyErrors;
- (uint64_t)hasAnyErrorsOrAlternatives;
- (uint64_t)hasAnyTrignometry;
- (unint64_t)isRecentlyModified;
- (void)_logRecentlyModifiedAndCreated;
- (void)_setIsGraphable:(void *)graphable graphableVariables:;
- (void)_updateFromOldItem:(uint64_t)item;
- (void)_updatePreferredTranscriptionChangingToken:(void *)token withAlternative:;
- (void)_updateVariable:(void *)variable valueString:;
- (void)heroStroke;
@end

@implementation PKMathRecognitionItem

- (char)initWithStrokeGroupItem:(void *)item uuid:
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  itemCopy = item;
  if (!self)
  {
    goto LABEL_39;
  }

  v58.receiver = self;
  v58.super_class = PKMathRecognitionItem;
  self = objc_msgSendSuper2(&v58, sel_init);
  if (!self)
  {
    goto LABEL_39;
  }

  if (v6)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  mathResult = [v9 mathResult];
  preferredTranscription = [mathResult preferredTranscription];

  objc_storeStrong(self + 1, a2);
  v12 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v13 = *(v6 + 3);
    *(self + 152) = *(v6 + 2);
    *(self + 168) = v13;
    v14 = *(self + 7);
    *(self + 7) = v12;

    v15 = v6[1];
  }

  else
  {
    *(self + 152) = 0u;
    *(self + 168) = 0u;
    v52 = *(self + 7);
    *(self + 7) = v12;

    v15 = 0;
  }

  v16 = v15;
  mathResult2 = [v16 mathResult];
  self[73] = [mathResult2 isEvaluationExpected];

  if ([preferredTranscription length] <= 1)
  {
    self[72] = 0;
    goto LABEL_11;
  }

  v18 = [preferredTranscription characterAtIndex:{objc_msgSend(preferredTranscription, "length") - 1}];
  self[72] = v18 == 61;
  if (v18 != 61)
  {
LABEL_11:
    v19 = [preferredTranscription hasSuffix:@"\\hline \\end{array}"];
    self[72] = v19;
    self[74] = v19;
  }

  objc_storeStrong(self + 10, preferredTranscription);
  v53 = preferredTranscription;
  if (v6)
  {
    v20 = v6[1];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  mathResult3 = [v21 mathResult];
  selectedTranscriptionPathIndex = [mathResult3 selectedTranscriptionPathIndex];

  if (v6)
  {
    v24 = v6[1];
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  mathResult4 = [v25 mathResult];
  transcriptionPaths = [mathResult4 transcriptionPaths];
  v28 = transcriptionPaths;
  if (selectedTranscriptionPathIndex)
  {
    if (v6)
    {
      v29 = v6[1];
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    mathResult5 = [v30 mathResult];
    selectedTranscriptionPathIndex2 = [mathResult5 selectedTranscriptionPathIndex];
    v33 = [v28 objectAtIndexedSubscript:{objc_msgSend(selectedTranscriptionPathIndex2, "integerValue")}];
    v60[0] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    v35 = *(self + 8);
    *(self + 8) = v34;
  }

  else
  {
    v36 = [transcriptionPaths copy];
    v30 = *(self + 8);
    *(self + 8) = v36;
  }

  if (itemCopy)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    strokesForIdentifier = [(PKMathRecognitionItem *)self strokesForIdentifier];
    v38 = [strokesForIdentifier countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = 0;
      v41 = *v55;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v55 != v41)
          {
            objc_enumerationMutation(strokesForIdentifier);
          }

          _strokeUUID = [*(*(&v54 + 1) + 8 * i) _strokeUUID];
          v44 = [_strokeUUID isEqual:itemCopy];

          v40 |= v44;
        }

        v39 = [strokesForIdentifier countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v39);

      if (v40)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    strokesForIdentifier2 = [(PKMathRecognitionItem *)self strokesForIdentifier];
    firstObject = [strokesForIdentifier2 firstObject];
    _strokeUUID2 = [firstObject _strokeUUID];
  }

  else
  {
    strokesForIdentifier2 = [(PKMathRecognitionItem *)self strokesForIdentifier];
    firstObject = [strokesForIdentifier2 firstObject];
    _strokeUUID2 = [firstObject _strokeUUID];
  }

  itemCopy = _strokeUUID2;
LABEL_35:
  if (itemCopy)
  {
    uUID = itemCopy;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v49 = *(self + 11);
  *(self + 11) = uUID;

  heroStroke = [(PKMathRecognitionItem *)self heroStroke];
  self[75] = ([heroStroke _flags] & 0x20000000000) != 0;

LABEL_39:
  return self;
}

- (id)strokesForIdentifier
{
  if (self)
  {
    triggerStrokes = [self triggerStrokes];
    if (![triggerStrokes count])
    {
      _anyEqualSignStrokes = [(PKMathRecognitionItem *)self _anyEqualSignStrokes];

      triggerStrokes = _anyEqualSignStrokes;
    }
  }

  else
  {
    triggerStrokes = 0;
  }

  return triggerStrokes;
}

- (void)heroStroke
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      _findHeroStroke = [(PKMathRecognitionItem *)self _findHeroStroke];
      v5 = selfCopy[2];
      selfCopy[2] = _findHeroStroke;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)graphableVariables
{
  if (self)
  {
    self = self[7];
    v1 = vars8;
  }

  return self;
}

- (BOOL)isLowConfidenceMath
{
  mathResult = [(PKMathRecognitionItem *)self mathResult];
  hasLowConfidence = [mathResult hasLowConfidence];

  return hasLowConfidence;
}

- (id)mathResult
{
  if (self)
  {
    v1 = *(self + 8);
    if (v1)
    {
      v1 = v1[1];
    }

    v2 = v1;
    mathResult = [v2 mathResult];
  }

  else
  {
    mathResult = 0;
  }

  return mathResult;
}

- (id)originalExpression
{
  if (self)
  {
    mathResult = [(PKMathRecognitionItem *)self mathResult];
    preferredTranscription = [mathResult preferredTranscription];
  }

  else
  {
    preferredTranscription = 0;
  }

  return preferredTranscription;
}

- (NSString)expression
{
  updatedExpression = self->_updatedExpression;
  if (!updatedExpression)
  {
    updatedExpression = self->_expression;
  }

  return updatedExpression;
}

- (void)_updateVariable:(void *)variable valueString:
{
  if (self)
  {
    variableCopy = variable;
    v6 = a2;
    originalExpression = [(PKMathRecognitionItem *)self originalExpression];
    v12 = [originalExpression mutableCopy];

    if (v6)
    {
      v9 = v6[5];
      v8 = v6[6];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    [v12 replaceCharactersInRange:v9 withString:{v8, variableCopy}];
    v10 = [v12 copy];
    v11 = *(self + 32);
    *(self + 32) = v10;

    *(self + 76) = 1;
  }
}

- (id)_stringForVariable:(id)variable
{
  variableCopy = variable;
  if (variable)
  {
    v3 = a2;
    originalExpression = [(PKMathRecognitionItem *)variableCopy originalExpression];
    if (v3)
    {
      v6 = v3[5];
      v5 = v3[6];
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = [originalExpression substringWithRange:{v6, v5}];

    variableCopy = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F476BD20];
  }

  return variableCopy;
}

- (NSNumber)strokeGroupIdentifier
{
  strokeGroupItem = self->_strokeGroupItem;
  if (strokeGroupItem)
  {
    strokeGroupItem = strokeGroupItem->_strokeGroupItem;
  }

  v3 = strokeGroupItem;
  strokeGroupIdentifier = [(PKStrokeGroupItem *)v3 strokeGroupIdentifier];

  return strokeGroupIdentifier;
}

- (id)stableIdentifier
{
  if (self)
  {
    v1 = *(self + 8);
    if (v1)
    {
      v1 = v1[1];
    }

    v2 = v1;
    strokeGroupStableIdentifier = [v2 strokeGroupStableIdentifier];
  }

  else
  {
    strokeGroupStableIdentifier = 0;
  }

  return strokeGroupStableIdentifier;
}

- (id)changeIdentifier
{
  if (self)
  {
    v1 = *(self + 8);
    if (v1)
    {
      v1 = v1[1];
    }

    v2 = v1;
    strokeGroupIdentifier = [v2 strokeGroupIdentifier];
  }

  else
  {
    strokeGroupIdentifier = 0;
  }

  return strokeGroupIdentifier;
}

- (NSArray)strokes
{
  strokeGroupItem = self->_strokeGroupItem;
  if (strokeGroupItem)
  {
    return strokeGroupItem->_strokes;
  }

  else
  {
    return 0;
  }
}

- (id)strokeUUIDs
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = MEMORY[0x1E695DFA8];
    strokes = [self strokes];
    v4 = [v2 setWithCapacity:{objc_msgSend(strokes, "count")}];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    strokes2 = [self strokes];
    v6 = [strokes2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(strokes2);
          }

          _strokeUUID = [*(*(&v12 + 1) + 8 * i) _strokeUUID];
          [v4 addObject:_strokeUUID];
        }

        v7 = [strokes2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)boundsForEqualSign
{
  if (!self)
  {
    return 0.0;
  }

  strokesForEqualSign = [(PKMathRecognitionItem *)self strokesForEqualSign];
  v3 = [(PKMathRecognitionItem *)self _boundsForStrokes:strokesForEqualSign];

  return v3;
}

- (id)strokesForEqualSign
{
  selfCopy = self;
  if (self)
  {
    if (self[72])
    {
      if ((self[74] & 1) == 0)
      {
        mathResult = [(PKMathRecognitionItem *)self mathResult];
        symbolStrokeIndexes = [mathResult symbolStrokeIndexes];
        lastObject = [symbolStrokeIndexes lastObject];
LABEL_10:

        goto LABEL_13;
      }
    }

    else if ((self[74] & 1) == 0)
    {
      mathResult2 = [(PKMathRecognitionItem *)self mathResult];
      preferredTranscription = [mathResult2 preferredTranscription];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      mathResult = [preferredTranscription componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

      v8 = [mathResult count];
      while (--v8 >= 0)
      {
        v9 = [mathResult objectAtIndexedSubscript:v8];
        v10 = [v9 isEqualToString:@"="];

        if (v10)
        {
          symbolStrokeIndexes = [(PKMathRecognitionItem *)selfCopy mathResult];
          v3SymbolStrokeIndexes = [symbolStrokeIndexes symbolStrokeIndexes];
          lastObject = [v3SymbolStrokeIndexes objectAtIndexedSubscript:v8];

          goto LABEL_10;
        }
      }
    }

    lastObject = [MEMORY[0x1E696AC90] indexSet];
LABEL_13:
    selfCopy = [(PKMathRecognitionItem *)selfCopy _strokesForStrokeIndexes:lastObject];
  }

  return selfCopy;
}

- (double)_boundsForStrokes:(uint64_t)strokes
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (strokes)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v18 + 1) + 8 * i) renderBounds];
          v26.origin.x = v13;
          v26.origin.y = v14;
          v26.size.width = v15;
          v26.size.height = v16;
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          v25 = CGRectUnion(v24, v26);
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          height = v25.size.height;
        }

        v10 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    x = 0.0;
  }

  return x;
}

- (double)boundsForAnyEqualSign
{
  if (!self)
  {
    return 0.0;
  }

  _anyEqualSignStrokes = [(PKMathRecognitionItem *)self _anyEqualSignStrokes];
  v3 = [(PKMathRecognitionItem *)self _boundsForStrokes:_anyEqualSignStrokes];

  return v3;
}

- (id)_anyEqualSignStrokes
{
  selfCopy = self;
  if (self)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
    mathResult = [(PKMathRecognitionItem *)selfCopy mathResult];
    preferredTranscription = [mathResult preferredTranscription];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v6 = [preferredTranscription componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    v7 = [v6 count];
    while (v7-- >= 1)
    {
      v9 = [v6 objectAtIndexedSubscript:v7];
      v10 = [v9 isEqualToString:@"="];

      if (v10)
      {
        mathResult2 = [(PKMathRecognitionItem *)selfCopy mathResult];
        symbolStrokeIndexes = [mathResult2 symbolStrokeIndexes];
        v13 = [symbolStrokeIndexes objectAtIndexedSubscript:v7];

        indexSet = v13;
        break;
      }
    }

    selfCopy = [(PKMathRecognitionItem *)selfCopy _strokesForStrokeIndexes:indexSet];
  }

  return selfCopy;
}

- (double)boundsForVerticalExpressionLine
{
  if (!self)
  {
    return 0.0;
  }

  strokesForVerticalExpressionLine = [(PKMathRecognitionItem *)self strokesForVerticalExpressionLine];
  v3 = [(PKMathRecognitionItem *)self _boundsForStrokes:strokesForVerticalExpressionLine];

  return v3;
}

- (id)strokesForVerticalExpressionLine
{
  selfCopy = self;
  if (self)
  {
    _strokeIndexesForVerticalExpressionLine = [(PKMathRecognitionItem *)self _strokeIndexesForVerticalExpressionLine];
    selfCopy = [(PKMathRecognitionItem *)selfCopy _strokesForStrokeIndexes:_strokeIndexesForVerticalExpressionLine];
  }

  return selfCopy;
}

- (CGRect)boundsForTriggerStrokes
{
  if ([(PKMathRecognitionItem *)self shouldBeSolved])
  {
    if ([(PKMathRecognitionItem *)self isVerticalExpression])
    {
      boundsForVerticalExpressionLine = [(PKMathRecognitionItem *)self boundsForVerticalExpressionLine];
    }

    else
    {
      boundsForVerticalExpressionLine = [(PKMathRecognitionItem *)self boundsForEqualSign];
    }
  }

  else
  {
    boundsForVerticalExpressionLine = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = boundsForVerticalExpressionLine;
  return result;
}

- (NSArray)triggerStrokes
{
  if ([(PKMathRecognitionItem *)self shouldBeSolved])
  {
    if ([(PKMathRecognitionItem *)self isVerticalExpression])
    {
      [(PKMathRecognitionItem *)self strokesForVerticalExpressionLine];
    }

    else
    {
      [(PKMathRecognitionItem *)self strokesForEqualSign];
    }
    v3 = ;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)_strokesForStrokeIndexes:(void *)indexes
{
  v3 = a2;
  if (indexes)
  {
    strokes = [indexes strokes];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    firstIndex = [v3 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [v3 indexGreaterThanIndex:i])
      {
        if (i >= [strokes count])
        {
          v10 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v11 = 0;
            _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "Stroke index out of bounds", v11, 2u);
          }
        }

        else
        {
          v10 = [strokes objectAtIndexedSubscript:i];
          [v5 addObject:v10];
        }
      }
    }

    v7 = [v5 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)symbolStrokes
{
  v3 = MEMORY[0x1E695DFA0];
  strokes = [(PKMathRecognitionItem *)self strokes];
  v5 = [v3 orderedSetWithArray:strokes];

  v6 = MEMORY[0x1E695DFD8];
  triggerStrokes = [(PKMathRecognitionItem *)self triggerStrokes];
  v8 = [v6 setWithArray:triggerStrokes];
  [v5 minusSet:v8];

  array = [v5 array];

  return array;
}

- (double)_boundsForStrokeIndexes:(void *)indexes
{
  if (!indexes)
  {
    return 0.0;
  }

  v3 = [(PKMathRecognitionItem *)indexes _strokesForStrokeIndexes:a2];
  v4 = [(PKMathRecognitionItem *)indexes _boundsForStrokes:v3];

  return v4;
}

- (id)_strokeIndexesForVerticalExpressionLine
{
  selfCopy = self;
  if (self)
  {
    if (self[74] == 1)
    {
      mathResult = [(PKMathRecognitionItem *)self mathResult];
      preferredTranscription = [mathResult preferredTranscription];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [preferredTranscription componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

      v6 = [v5 count];
      while (--v6 >= 0)
      {
        v7 = [v5 objectAtIndexedSubscript:v6];
        v8 = [v7 isEqualToString:@"\\hline"];

        if (v8)
        {
          mathResult2 = [(PKMathRecognitionItem *)selfCopy mathResult];
          symbolStrokeIndexes = [mathResult2 symbolStrokeIndexes];
          selfCopy = [symbolStrokeIndexes objectAtIndexedSubscript:v6];

          goto LABEL_9;
        }
      }
    }

    selfCopy = [MEMORY[0x1E696AC90] indexSet];
  }

LABEL_9:

  return selfCopy;
}

- (NSArray)tappableStrokes
{
  if (self)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    mathResult = [(PKMathRecognitionItem *)self mathResult];
    preferredTranscription = [mathResult preferredTranscription];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v7 = [preferredTranscription componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    if ([v7 count])
    {
      v8 = 0;
      while (1)
      {
        v9 = [v7 objectAtIndexedSubscript:v8];
        if ([v9 isEqualToString:@"\\hline"])
        {
          break;
        }

        v10 = [v7 objectAtIndexedSubscript:v8];
        v11 = [v10 isEqualToString:@"="];

        if (v11)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (++v8 >= [v7 count])
        {
          goto LABEL_9;
        }
      }

LABEL_7:
      mathResult2 = [(PKMathRecognitionItem *)self mathResult];
      symbolStrokeIndexes = [mathResult2 symbolStrokeIndexes];
      v14 = [symbolStrokeIndexes objectAtIndexedSubscript:v8];

      [indexSet addIndexes:v14];
      goto LABEL_8;
    }

LABEL_9:
    v15 = [indexSet copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(PKMathRecognitionItem *)self _strokesForStrokeIndexes:v15];

  return v16;
}

- (NSString)expressionToPresent
{
  strokeGroupItem = self->_strokeGroupItem;
  if (strokeGroupItem)
  {
    strokeGroupItem = strokeGroupItem->_strokeGroupItem;
  }

  v4 = strokeGroupItem;
  mathResult = [(PKStrokeGroupItem *)v4 mathResult];
  preferredTranscription = [mathResult preferredTranscription];

  if ([(PKMathRecognitionItem *)self shouldBeSolved]&& ![(PKMathRecognitionItem *)self isVerticalExpression])
  {
    v7 = [preferredTranscription componentsSeparatedByString:@"="];
    firstObject = [v7 firstObject];

    preferredTranscription = firstObject;
  }

  return preferredTranscription;
}

- (double)suggestedHeightForResult
{
  if (!self)
  {
    return 0.0;
  }

  mathResult = [(PKMathRecognitionItem *)self mathResult];
  [mathResult baseCharacterHeight];
  v3 = v2;

  return v3;
}

- (double)suggestedDistanceBetweenDigits
{
  v1 = 0.0;
  if (self && [self isVerticalExpression])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x4010000000;
    v15[3] = "";
    v3 = *(MEMORY[0x1E695F050] + 16);
    v16 = *MEMORY[0x1E695F050];
    v17 = v3;
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    mathResult = [(PKMathRecognitionItem *)self mathResult];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PKMathRecognitionItem_suggestedDistanceBetweenDigits__block_invoke;
    v9[3] = &unk_1E82DBFE0;
    v6 = decimalDigitCharacterSet;
    v10 = v6;
    selfCopy = self;
    v12 = v15;
    v13 = &v22;
    v14 = &v18;
    [mathResult enumerateTokensInPreferredTranscriptionPathWithBlock:v9];

    v7 = v19[3];
    if (v7 > 0.0)
    {
      v1 = v23[3] / v7;
    }

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  return v1;
}

void __55__PKMathRecognitionItem_suggestedDistanceBetweenDigits__block_invoke(void *a1, void *a2)
{
  v22 = a2;
  v3 = [v22 string];
  v4 = [v3 length] == 1 && objc_msgSend(v3, "rangeOfCharacterFromSet:", a1[4]) == 0;
  IsNull = CGRectIsNull(*(*(a1[6] + 8) + 32));
  v6 = MEMORY[0x1E695F050];
  if (v4)
  {
    v7 = a1[5];
    v8 = [v22 strokeIndexes];
    v9 = [(PKMathRecognitionItem *)v7 _boundsForStrokeIndexes:v8];
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v16 = CGRectIsNull(v24);
  v17 = v16;
  if (!v16 && !IsNull)
  {
    v25.origin.x = v9;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    MinX = CGRectGetMinX(v25);
    v19 = MinX - CGRectGetMinX(*(*(a1[6] + 8) + 32));
    if (v19 > 0.0)
    {
      *(*(a1[7] + 8) + 24) = v19 + *(*(a1[7] + 8) + 24);
      *(*(a1[8] + 8) + 24) = *(*(a1[8] + 8) + 24) + 1.0;
    }
  }

  v20 = *(a1[6] + 8);
  if (v17)
  {
    v21 = v6[1];
    *(v20 + 32) = *v6;
    *(v20 + 48) = v21;
  }

  else
  {
    *(v20 + 32) = v9;
    *(v20 + 40) = v11;
    *(v20 + 48) = v13;
    *(v20 + 56) = v15;
  }
}

- (BOOL)isValidForDrawing:(id)drawing
{
  v19 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  strokes = [(PKMathRecognitionItem *)self strokes];
  v6 = [strokes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(strokes);
        }

        _strokeUUID = [*(*(&v14 + 1) + 8 * i) _strokeUUID];
        v11 = [drawingCopy _visibleStrokeForIdentifier:_strokeUUID];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v7 = [strokes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (NSArray)scrubbableVariables
{
  scrubbableVariables = self->_scrubbableVariables;
  if (!scrubbableVariables)
  {
    allTokens = self->_allTokens;
    if (allTokens)
    {
      v5 = allTokens;
      v6 = [PKMathVariable variablesForTokens:v5 item:self];
      v7 = self->_scrubbableVariables;
      self->_scrubbableVariables = v6;

      scrubbableVariables = self->_scrubbableVariables;
    }

    else
    {
      scrubbableVariables = 0;
    }
  }

  return scrubbableVariables;
}

- (id)_strokeIndexesForCharacterRange:(uint64_t)range
{
  if (self)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__32;
    v14 = __Block_byref_object_dispose__32;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    mathResult = [(PKMathRecognitionItem *)self mathResult];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PKMathRecognitionItem__strokeIndexesForCharacterRange___block_invoke;
    v9[3] = &unk_1E82DC008;
    v9[6] = a2;
    v9[7] = range;
    v9[4] = v16;
    v9[5] = &v10;
    [mathResult enumerateTokensInPreferredTranscriptionPathWithBlock:v9];

    v7 = [v11[5] copy];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __57__PKMathRecognitionItem__strokeIndexesForCharacterRange___block_invoke(NSRange *a1, void *a2)
{
  v7 = a2;
  v3 = [v7 string];
  v4 = *(*(a1[2].location + 8) + 24);
  v9.length = [v3 length];
  v9.location = v4;
  if (NSIntersectionRange(a1[48], v9).length)
  {
    v5 = *(*(a1[2].length + 8) + 40);
    v6 = [v7 strokeIndexes];
    [v5 addIndexes:v6];
  }

  *(*(a1[2].location + 8) + 24) += [v3 length] + 1;
}

- (unint64_t)isRecentlyModified
{
  selfCopy = self;
  if (self)
  {
    strokes = [self strokes];
    if ([strokes count])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v4 = v3;
      mostRecentStrokeTimestamp = [(PKMathRecognitionItem *)selfCopy mostRecentStrokeTimestamp];
      if (mostRecentStrokeTimestamp < *(selfCopy + 40))
      {
        mostRecentStrokeTimestamp = *(selfCopy + 40);
      }

      selfCopy = v4 - mostRecentStrokeTimestamp < 5.0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (double)mostRecentStrokeTimestamp
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  strokes = [self strokes];
  v2 = [strokes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(strokes);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = +[PKLocalStrokeTracker sharedInstance];
        v9 = [(PKLocalStrokeTracker *)v8 isRecentlyCreatedLocalStroke:v7];

        if (v9)
        {
          [v7 timestamp];
          v11 = v10;
          path = [v7 path];
          if ([path count])
          {
            [path timestampAtIndex:{objc_msgSend(path, "count") - 1}];
            v11 = v11 + v13;
          }

          if (v5 < v11)
          {
            v5 = v11;
          }
        }
      }

      v3 = [strokes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)isRecentlyCreated
{
  selfCopy = self;
  if (self)
  {
    if ([self isVerticalExpression])
    {
      [(PKMathRecognitionItem *)selfCopy strokesForVerticalExpressionLine];
    }

    else
    {
      [(PKMathRecognitionItem *)selfCopy _anyEqualSignStrokes];
    }
    v2 = ;
    if (![v2 count])
    {
      strokes = [selfCopy strokes];

      v2 = strokes;
    }

    if ([v2 count])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v5 = v4;
      v6 = [v2 valueForKeyPath:@"@min.timestamp"];
      [v6 doubleValue];
      v8 = v7;

      selfCopy = v5 - v8 < 10.0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (uint64_t)hasAnyTrignometry
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(self + 104);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) isTrigonometric])
        {
          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

- (uint64_t)characterRangeForTriggerSymbol
{
  if (!self)
  {
    return 0;
  }

  isVerticalExpression = [self isVerticalExpression];
  expression = [self expression];
  v4 = expression;
  if (isVerticalExpression)
  {
    v5 = @"\\hline";
  }

  else
  {
    v5 = @"=";
  }

  v6 = [expression rangeOfString:v5 options:4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (uint64_t)hasAnyErrorsOrAlternatives
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(self + 104);
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        alternatives = [v6 alternatives];
        if ([alternatives count])
        {

LABEL_14:
          v10 = 1;
          goto LABEL_15;
        }

        errors = [v6 errors];
        v9 = [errors count];

        if (v9)
        {
          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (uint64_t)hasAnyErrors
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(self + 104);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        errors = [*(*(&v8 + 1) + 8 * i) errors];
        v6 = [errors count];

        if (v6)
        {
          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

- (id)alternativesTokens
{
  v56 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if ([*(self + 64) count] < 2)
    {
      v2 = MEMORY[0x1E695E0F0];
      goto LABEL_35;
    }

    array = [MEMORY[0x1E695DF70] array];
    mathResult = [(PKMathRecognitionItem *)selfCopy mathResult];
    tokenColumnCount = [mathResult tokenColumnCount];

    if (tokenColumnCount < 1)
    {
      goto LABEL_30;
    }

    v5 = 0;
    v6 = 0;
    v44 = selfCopy;
LABEL_6:
    mathResult2 = [(PKMathRecognitionItem *)selfCopy mathResult];
    firstObject = [*(selfCopy + 64) firstObject];
    v46 = [mathResult2 transcriptionWithPath:firstObject columnRange:{v6, 1}];

    mathResult3 = [(PKMathRecognitionItem *)selfCopy mathResult];
    v10 = [mathResult3 tokenRowsAtColumnIndex:v6];

    if ([v10 count])
    {
      v45 = v5;
      indexSet = [MEMORY[0x1E696AD50] indexSet];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v12 = *(selfCopy + 64);
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = v13;
      v15 = *v51;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          if (v6 >= [v17 length])
          {
            v19 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v20 = v19;
              v21 = "Unexpected column index for available transcription path";
LABEL_19:
              _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
            }
          }

          else
          {
            v18 = [v17 indexAtPosition:v6];
            if (v18 < [v10 count])
            {
              [indexSet addIndex:v18];
              continue;
            }

            v19 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v20 = v19;
              v21 = "Unexpected row index in available transcription path";
              goto LABEL_19;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (!v14)
        {
LABEL_23:

          selfCopy = v44;
          v22 = v45;
          if ([indexSet count] >= 2)
          {
            v23 = objc_alloc_init(PKMathRecognitionToken);
            [(PKMathRecognitionToken *)v23 setItem:v44];
            [(PKMathRecognitionToken *)v23 setType:4];
            -[PKMathRecognitionToken setCharacterRange:](v23, "setCharacterRange:", v45, [v46 length]);
            mathResult4 = [(PKMathRecognitionItem *)v44 mathResult];
            v25 = [mathResult4 strokeIndexesForColumnsInRange:{v6, 1}];

            v43 = v25;
            [(PKMathRecognitionToken *)v23 setBounds:[(PKMathRecognitionItem *)v44 _boundsForStrokeIndexes:v25]];
            v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count") - 1}];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __43__PKMathRecognitionItem_alternativesTokens__block_invoke;
            v47[3] = &unk_1E82DC030;
            v47[4] = v44;
            v48 = v10;
            v27 = v26;
            v49 = v27;
            [indexSet enumerateIndexesUsingBlock:v47];
            [(PKMathRecognitionToken *)v23 setAlternatives:v27];
            v42 = v27;
            [(PKMathRecognitionToken *)v23 setRenderableAlternatives:v27];
            [(PKMathRecognitionToken *)v23 setColumnIndex:v6];
            mathResult5 = [(PKMathRecognitionItem *)v44 mathResult];
            LOBYTE(v27) = objc_opt_respondsToSelector();

            if (v27)
            {
              mathResult6 = [(PKMathRecognitionItem *)v44 mathResult];
              v30 = [mathResult6 renderableLatexCandidatesForColumnIndex:v6];

              v31 = [v30 objectsAtIndexes:indexSet];

              v40 = [v31 count];
              alternatives = [(PKMathRecognitionToken *)v23 alternatives];
              v33 = [alternatives count];

              if (v40 == v33)
              {
                [(PKMathRecognitionToken *)v23 setRenderableAlternatives:v31];
              }

              v22 = v45;
            }

            [array addObject:v23];
          }

          v34 = [v46 length];

          v5 = v22 + v34 + 1;
          ++v6;
          mathResult7 = [(PKMathRecognitionItem *)v44 mathResult];
          tokenColumnCount2 = [mathResult7 tokenColumnCount];

          if (v6 >= tokenColumnCount2)
          {
LABEL_30:
            v37 = array;
            v2 = [array copy];
            goto LABEL_34;
          }

          goto LABEL_6;
        }
      }
    }

    v38 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v38, OS_LOG_TYPE_DEFAULT, "Unexpected number of rows", buf, 2u);
    }

    v2 = MEMORY[0x1E695E0F0];
    v37 = array;
LABEL_34:
  }

  else
  {
    v2 = 0;
  }

LABEL_35:

  return v2;
}

void __43__PKMathRecognitionItem_alternativesTokens__block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 lastObject];
    v14 = [MEMORY[0x1E696AD60] string];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 string];
          [v14 appendString:v13];

          if (v12 != v6)
          {
            [v14 appendString:@" "];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = 0;
  }

  [*(a1 + 48) addObject:v14];
}

- (void)_updateFromOldItem:(uint64_t)item
{
  v3 = a2;
  if (item)
  {
    v17 = v3;
    if (v3)
    {
      v5 = v3[13];
    }

    else
    {
      v5 = 0;
    }

    objc_setProperty_nonatomic_copy(item, v4, v5, 104);
    *(item + 48) = *(v17 + 48);
    v6 = [*(v17 + 7) copy];
    v7 = *(item + 56);
    *(item + 56) = v6;

    objc_setProperty_nonatomic_copy(item, v8, *(v17 + 18), 144);
    changeIdentifier = [(PKMathRecognitionItem *)item changeIdentifier];
    changeIdentifier2 = [(PKMathRecognitionItem *)v17 changeIdentifier];
    if ([changeIdentifier isEqualToNumber:changeIdentifier2])
    {
      stableIdentifier = [(PKMathRecognitionItem *)item stableIdentifier];
      stableIdentifier2 = [(PKMathRecognitionItem *)v17 stableIdentifier];
      v13 = [stableIdentifier isEqualToNumber:stableIdentifier2];

      v3 = v17;
      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = [*(v17 + 8) copy];
      v15 = *(item + 64);
      *(item + 64) = v14;

      changeIdentifier = [(PKMathRecognitionItem *)v17 mathResult];
      changeIdentifier2 = [changeIdentifier selectedTranscriptionPathIndex];
      mathResult = [(PKMathRecognitionItem *)item mathResult];
      [mathResult setSelectedTranscriptionPathIndex:changeIdentifier2];
    }

    v3 = v17;
  }

LABEL_8:
}

- (id)_findHeroStroke
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    uuid = [self uuid];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    triggerStrokes = [selfCopy triggerStrokes];
    v4 = [triggerStrokes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(triggerStrokes);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          _strokeUUID = [v8 _strokeUUID];
          v10 = [_strokeUUID isEqual:uuid];

          if (v10)
          {
            objc_storeStrong(selfCopy + 2, v8);
            selfCopy = v8;
            goto LABEL_12;
          }
        }

        v5 = [triggerStrokes countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
LABEL_12:
  }

  return selfCopy;
}

- (id)_heroStrokeInDrawing:(void *)drawing
{
  v3 = a2;
  if (drawing)
  {
    heroStroke = [(PKMathRecognitionItem *)drawing heroStroke];
    v5 = heroStroke;
    if (heroStroke)
    {
      _strokeUUID = [heroStroke _strokeUUID];
      v7 = [v3 _visibleStrokeForIdentifier:_strokeUUID];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updatePreferredTranscriptionChangingToken:(void *)token withAlternative:
{
  v44 = *MEMORY[0x1E69E9840];
  v34 = a2;
  tokenCopy = token;
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    mathResult = [(PKMathRecognitionItem *)self mathResult];
    transcriptionPaths = [mathResult transcriptionPaths];

    v7 = [transcriptionPaths countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v36;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v12 = 0;
        v31 = v9;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(transcriptionPaths);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          if ([*(self + 64) containsObject:{v13, v31}])
          {
            mathResult2 = [(PKMathRecognitionItem *)self mathResult];
            v15 = [mathResult2 transcriptionWithPath:v13 columnRange:{objc_msgSend(v34, "columnIndex"), 1}];

            if ([v15 isEqualToString:tokenCopy])
            {
              [array addObject:v13];
              if (v11 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v11 = v9;
              }
            }
          }

          ++v9;
          ++v12;
        }

        while (v8 != v12);
        v9 = v8 + v31;
        v8 = [transcriptionPaths countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v8);
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v16 = [array copy];
    v17 = *(self + 64);
    *(self + 64) = v16;

    mathResult3 = [(PKMathRecognitionItem *)self mathResult];
    selectedTranscriptionPathIndex = [mathResult3 selectedTranscriptionPathIndex];
    integerValue = [selectedTranscriptionPathIndex integerValue];

    if (v11 == integerValue)
    {
      v21 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        mathResult4 = [(PKMathRecognitionItem *)self mathResult];
        preferredTranscription = [mathResult4 preferredTranscription];
        *buf = 138477827;
        v40 = preferredTranscription;
        _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Candidate selection didn't lead to change in transcription for expression: %{private}@", buf, 0xCu);
      }

      v24 = v21;
    }

    else
    {
      v24 = *(self + 80);
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      mathResult5 = [(PKMathRecognitionItem *)self mathResult];
      [mathResult5 setSelectedTranscriptionPathIndex:v25];

      mathResult6 = [(PKMathRecognitionItem *)self mathResult];
      preferredTranscription2 = [mathResult6 preferredTranscription];
      v29 = *(self + 80);
      *(self + 80) = preferredTranscription2;

      v21 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(self + 80);
        *buf = 138478083;
        v40 = v30;
        v41 = 2113;
        v42 = v24;
        _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Set preferred transcription: %{private}@, for expression: %{private}@", buf, 0x16u);
      }
    }
  }
}

- (uint64_t)_tagAsRecentlyUpdated
{
  if (result)
  {
    v1 = result;
    result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(v1 + 40) = v2;
  }

  return result;
}

- (void)_setIsGraphable:(void *)graphable graphableVariables:
{
  v17 = *MEMORY[0x1E69E9840];
  graphableCopy = graphable;
  v6 = graphableCopy;
  if (self)
  {
    *(self + 48) = a2;
    v7 = [graphableCopy copy];
    v8 = *(self + 56);
    *(self + 56) = v7;

    if ([v6 count])
    {
      v9 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 count];
        expression = [self expression];
        v12[0] = 67109635;
        v12[1] = a2;
        v13 = 2048;
        v14 = v10;
        v15 = 2113;
        v16 = expression;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Setting graphable: %{BOOL}d (%lu), for expression: %{private}@", v12, 0x1Cu);
      }
    }
  }
}

- (void)_logRecentlyModifiedAndCreated
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    strokes = [self strokes];
    if (![strokes count])
    {
      v3 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Recently modified debug: no strokes", &v11, 2u);
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = [strokes valueForKeyPath:@"@min.timestamp"];
    [v6 doubleValue];
    v8 = v7;

    mostRecentStrokeTimestamp = [(PKMathRecognitionItem *)self mostRecentStrokeTimestamp];
    v10 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v5 - v8;
      v13 = 2048;
      v14 = v5 - mostRecentStrokeTimestamp;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Recently modified debug: Modified diff: %g, created diff: %g", &v11, 0x16u);
    }
  }
}

- (double)_remainingDelayForTargetDelay:(void *)delay
{
  if (!delay)
  {
    return 0.0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return fmax(a2 - (v4 - [(PKMathRecognitionItem *)delay mostRecentStrokeTimestamp]), 0.0);
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end