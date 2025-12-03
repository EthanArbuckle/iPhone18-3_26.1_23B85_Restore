@interface AFUserUtterance
- (AFUserUtterance)initWithPhrases:(id)phrases correctionIdentifier:(id)identifier;
- (AFUserUtterance)initWithPhrases:(id)phrases sentenceConfidence:(int64_t)confidence utterances:(id)utterances correctionIdentifier:(id)identifier;
- (AFUserUtterance)initWithPhrases:(id)phrases utterances:(id)utterances;
- (AFUserUtterance)initWithString:(id)string correctionIdentifier:(id)identifier;
- (AFUserUtterance)initWithTokens:(id)tokens correctionIdentifier:(id)identifier;
- (NSArray)allPhrases;
- (NSArray)dictationResult;
- (id)allRecognitionStringsAndScores;
- (id)bestTextInterpretation;
- (id)description;
- (id)interpretationOfUtteranceAtIndex:(unint64_t)index;
- (id)longestCommonSubsequenceBetweenList:(id)list andList:(id)andList;
- (id)rangeListOfDifferingTextFromSpeechInterpretation:(id)interpretation comparedToBaseTokenList:(id)list;
- (id)rangeListOfDifferingTextFromSpeechInterpretation:(id)interpretation comparedToBaseUtteranceAtIndex:(unint64_t)index;
- (id)rangeListOfDifferingTextFromTargetTokenList:(id)list comparedToBaseTokenList:(id)tokenList;
- (id)rangeListOfDifferingTextFromUtteranceAtIndex:(unint64_t)index comparedToBaseUtteranceAtIndex:(unint64_t)atIndex;
- (id)speechTokensForUtteranceAtIndex:(unint64_t)index;
- (id)textOfUtteranceAtIndex:(unint64_t)index;
- (id)updateDictationResult:(id)result withAlternativeUtteranceAtIndex:(unint64_t)index;
- (void)_updatePhraseswithSwapIndices:(id)indices;
- (void)_updateUtteranceswithAlternativeUtteranceAtIndex:(unint64_t)index swapIndices:(id)indices;
@end

@implementation AFUserUtterance

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSMutableArray *)self->_phrases count];
  v7 = [(NSMutableArray *)self->_tokens count];
  bestTextInterpretation = [(AFUserUtterance *)self bestTextInterpretation];
  v9 = [v3 stringWithFormat:@"<%@: %p %lu phrases; %lu tokens; text: %@>", v5, self, v6, v7, bestTextInterpretation];;

  return v9;
}

- (NSArray)dictationResult
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_phrases)
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = self->_phrases;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(obj);
          }

          interpretations = [*(*(&v23 + 1) + 8 * i) interpretations];
          v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(interpretations, "count")}];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = interpretations;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                text = [*(*(&v19 + 1) + 8 * j) text];
                [v9 addObject:text];
              }

              v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }

          [array addObject:v9];
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v5);
    }
  }

  else
  {
    array = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (NSArray)allPhrases
{
  v2 = [(NSMutableArray *)self->_phrases copy];
  firstObject = [v2 firstObject];
  firstInterpretation = [firstObject firstInterpretation];
  tokens = [firstInterpretation tokens];
  firstObject2 = [tokens firstObject];
  [firstObject2 setRemoveSpaceBefore:1];

  return v2;
}

- (id)updateDictationResult:(id)result withAlternativeUtteranceAtIndex:(unint64_t)index
{
  v30 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([(NSMutableArray *)self->_utterances count]<= index)
  {
    allPhrases = [(AFUserUtterance *)self allPhrases];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_utterances objectAtIndex:index];
    interpretationIndices = [v7 interpretationIndices];

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultCopy, "count")}];
    v10 = [interpretationIndices count];
    if (v10 == [resultCopy count])
    {
      indexCopy = index;
      v11 = [interpretationIndices count];
      if (v11 >= 1)
      {
        v12 = v11;
        for (i = 0; i != v12; ++i)
        {
          v14 = [resultCopy objectAtIndex:i];
          v15 = [interpretationIndices objectAtIndex:i];
          integerValue = [v15 integerValue];

          [v9 addObject:&unk_1F056D278];
          if (integerValue && integerValue < [v14 count])
          {
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue];
            [v9 replaceObjectAtIndex:i withObject:v17];
          }
        }
      }

      [(AFUserUtterance *)self _updateUtteranceswithAlternativeUtteranceAtIndex:indexCopy swapIndices:v9];
      [(AFUserUtterance *)self _updatePhraseswithSwapIndices:v9];
      v18 = [(NSMutableArray *)self->_utterances objectAtIndex:0];
      v19 = [(NSMutableArray *)self->_utterances objectAtIndex:indexCopy];
      confidenceScore = [v18 confidenceScore];
      [v18 setConfidenceScore:{objc_msgSend(v19, "confidenceScore")}];
      [v19 setConfidenceScore:confidenceScore];
      allPhrases = [(AFUserUtterance *)self allPhrases];
    }

    else
    {
      v22 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "[AFUserUtterance updateDictationResult:withAlternativeUtteranceAtIndex:]";
        v28 = 2050;
        indexCopy2 = index;
        _os_log_error_impl(&dword_1912FE000, v22, OS_LOG_TYPE_ERROR, "%s utterance index %{public}lu out of range", buf, 0x16u);
      }

      allPhrases = [(AFUserUtterance *)self allPhrases];
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return allPhrases;
}

- (void)_updateUtteranceswithAlternativeUtteranceAtIndex:(unint64_t)index swapIndices:(id)indices
{
  v42 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(indicesCopy, "count")}];
  if ([(NSMutableArray *)self->_utterances count])
  {
    v9 = 0;
    *&v8 = 136315650;
    v32 = v8;
    selfCopy = self;
    v34 = v7;
    indexCopy = index;
    do
    {
      v10 = [(NSMutableArray *)self->_utterances objectAtIndex:v9, v32];
      v11 = v10;
      if (v9 == index || !v9)
      {
        [v7 setObject:v10 atIndexedSubscript:v9];
      }

      else
      {
        interpretationIndices = [v10 interpretationIndices];
        v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(indicesCopy, "count")}];
        v14 = [interpretationIndices count];
        if (v14 == [indicesCopy count])
        {
          if ([indicesCopy count])
          {
            v15 = 0;
            do
            {
              v16 = [indicesCopy objectAtIndex:v15];
              integerValue = [v16 integerValue];

              v18 = [interpretationIndices objectAtIndex:v15];
              integerValue2 = [v18 integerValue];

              if (integerValue2 == integerValue)
              {
                v20 = 0;
              }

              else
              {
                v20 = integerValue2;
              }

              if (!integerValue2)
              {
                v20 = integerValue;
              }

              if (integerValue >= 1)
              {
                v21 = v20;
              }

              else
              {
                v21 = integerValue2;
              }

              v22 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
              [v13 setObject:v22 atIndexedSubscript:v15];

              ++v15;
            }

            while (v15 < [indicesCopy count]);
          }

          v23 = -[AFSpeechUtterance initWithInterpretationIndices:confidenceScore:]([AFSpeechUtterance alloc], "initWithInterpretationIndices:confidenceScore:", v13, [v11 confidenceScore]);
          -[AFSpeechUtterance setSource:](v23, "setSource:", [v11 source]);
          v7 = v34;
          [v34 addObject:v23];

          self = selfCopy;
          index = indexCopy;
        }

        else
        {
          v24 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            interpretationIndices2 = [v11 interpretationIndices];
            v27 = [interpretationIndices2 count];
            v28 = [indicesCopy count];
            *buf = v32;
            v37 = "[AFUserUtterance _updateUtteranceswithAlternativeUtteranceAtIndex:swapIndices:]";
            v38 = 2050;
            v39 = v27;
            v40 = 2050;
            v41 = v28;
            _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, "%s utterance interpretationIndices count (%{public}ld) does not match swapIndices count (%{public}ld)", buf, 0x20u);

            index = indexCopy;
            v7 = v34;
          }

          [v7 addObject:v11];
        }
      }

      ++v9;
    }

    while (v9 < [(NSMutableArray *)self->_utterances count]);
  }

  v29 = [v7 copy];
  utterances = self->_utterances;
  self->_utterances = v29;

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_updatePhraseswithSwapIndices:(id)indices
{
  v32 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  v5 = [(NSMutableArray *)self->_phrases count];
  if (v5 == [indicesCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(NSMutableArray *)self->_phrases count])
    {
      v7 = 0;
      do
      {
        v8 = [indicesCopy objectAtIndex:v7];
        integerValue = [v8 integerValue];

        v10 = [(NSMutableArray *)self->_phrases objectAtIndex:v7];
        v11 = v10;
        if (integerValue && ([v10 interpretations], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, integerValue < v13))
        {
          array2 = [MEMORY[0x1E695DF70] array];
          interpretations = [v11 interpretations];
          if ([interpretations count])
          {
            v16 = 0;
            do
            {
              if (integerValue == v16)
              {
                v17 = 0;
              }

              else
              {
                v17 = v16;
              }

              if (v16)
              {
                v18 = v17;
              }

              else
              {
                v18 = integerValue;
              }

              v19 = [interpretations objectAtIndex:v18];
              [array2 addObject:v19];

              ++v16;
            }

            while (v16 < [interpretations count]);
          }

          v20 = -[AFSpeechPhrase initWithInterpretations:isLowConfidence:]([AFSpeechPhrase alloc], "initWithInterpretations:isLowConfidence:", array2, [v11 isLowConfidence]);
          [(NSMutableArray *)array addObject:v20];
        }

        else
        {
          [(NSMutableArray *)array addObject:v11];
        }

        ++v7;
      }

      while (v7 < [(NSMutableArray *)self->_phrases count]);
    }

    phrases = self->_phrases;
    self->_phrases = array;
  }

  else
  {
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_phrases;
      v25 = v22;
      v26 = 136315650;
      v27 = "[AFUserUtterance _updatePhraseswithSwapIndices:]";
      v28 = 2050;
      v29 = [(NSMutableArray *)v24 count];
      v30 = 2050;
      v31 = [indicesCopy count];
      _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, "%s _phrase count (%{public}ld) not match swapIndices count (%{public}ld)", &v26, 0x20u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)allRecognitionStringsAndScores
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_phrases)
  {
    if ([(NSMutableArray *)self->_utterances count])
    {
      if ([(NSMutableArray *)self->_utterances count])
      {
        v4 = 0;
        v57 = 136315394;
        do
        {
          v5 = [(NSMutableArray *)self->_utterances objectAtIndex:v4, v57];
          confidenceScore = [v5 confidenceScore];
          v7 = [(AFUserUtterance *)self textOfUtteranceAtIndex:v4];
          if (v7)
          {
            v76[0] = @"avg";
            v8 = [MEMORY[0x1E696AD98] numberWithInteger:confidenceScore];
            v77[0] = v8;
            v76[1] = @"index";
            v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
            v77[1] = v9;
            v76[2] = @"source";
            v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "source")}];
            v77[2] = v10;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
            [v3 setObject:v11 forKey:v7];
          }

          else
          {
            v12 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = v57;
              *&buf[4] = "[AFUserUtterance allRecognitionStringsAndScores]";
              *&buf[12] = 2050;
              *&buf[14] = v4;
              _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s No utterance text existed for utterance index %{public}lu", buf, 0x16u);
            }
          }

          ++v4;
        }

        while (v4 < [(NSMutableArray *)self->_utterances count]);
      }

      goto LABEL_68;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = self->_phrases;
    v21 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (!v21)
    {
      goto LABEL_67;
    }

    v22 = v21;
    v23 = *v60;
    v58 = &buf[16];
LABEL_22:
    v24 = 0;
    while (1)
    {
      if (*v60 != v23)
      {
        objc_enumerationMutation(v14);
      }

      allInterpretationStringsAndScores = [*(*(&v59 + 1) + 8 * v24) allInterpretationStringsAndScores];
      if ([v3 count])
      {
        if ([allInterpretationStringsAndScores count])
        {
          v26 = v3;
          v27 = allInterpretationStringsAndScores;
          if ([v27 count])
          {
            if ([v26 count])
            {
              v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __af_mergedUtteranceDictionary_block_invoke;
              v83 = &unk_1E7342C18;
              v84 = v27;
              v29 = v28;
              v85 = v29;
              [v26 enumerateKeysAndObjectsUsingBlock:buf];
              v30 = v85;
              v31 = v29;

LABEL_34:
              [v26 setDictionary:v31];

              goto LABEL_35;
            }

            v32 = v27;
          }

          else
          {
            v32 = v26;
          }

          v31 = v32;
          goto LABEL_34;
        }
      }

      else
      {
        [v3 setDictionary:allInterpretationStringsAndScores];
      }

LABEL_35:

      if (v22 == ++v24)
      {
        v22 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v59 objects:v75 count:16];
        if (!v22)
        {
          goto LABEL_67;
        }

        goto LABEL_22;
      }
    }
  }

  tokens = self->_tokens;
  if (tokens)
  {
    v14 = af_bestTokenInterpretation(tokens);
    v15 = self->_tokens;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v71 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v72;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v72 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v18 += [*(*(&v71 + 1) + 8 * i) confidenceScore];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v71 objects:buf count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v33 = v15;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v68;
      v37 = -1;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v68 != v36)
          {
            objc_enumerationMutation(v33);
          }

          confidenceScore2 = [*(*(&v67 + 1) + 8 * j) confidenceScore];
          if (confidenceScore2 > v37)
          {
            v37 = confidenceScore2;
          }
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v35);
    }

    else
    {
      v37 = -1;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v40 = v33;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v64;
      v44 = 1000;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(v40);
          }

          confidenceScore3 = [*(*(&v63 + 1) + 8 * k) confidenceScore];
          if (confidenceScore3 < v44)
          {
            v44 = confidenceScore3;
          }
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v42);
    }

    else
    {
      v44 = 1000;
    }

    v47 = [(NSMutableArray *)v40 count];
    if (v47 < 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = v18 / v47;
    }

    v78[0] = @"avg";
    v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
    v79[0] = v49;
    v78[1] = @"max";
    v50 = [MEMORY[0x1E696AD98] numberWithInteger:v37];
    v79[1] = v50;
    v78[2] = @"min";
    v51 = [MEMORY[0x1E696AD98] numberWithInteger:v44];
    v79[2] = v51;
    v78[3] = @"sum";
    v52 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
    v79[3] = v52;
    v78[4] = @"count";
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](v40, "count")}];
    v79[4] = v53;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:5];

    [v3 setObject:v54 forKey:v14];
LABEL_67:
  }

  else if (self->_text)
  {
    [v3 setObject:MEMORY[0x1E695E0F8] forKey:?];
  }

LABEL_68:
  v55 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)interpretationOfUtteranceAtIndex:(unint64_t)index
{
  utterances = self->_utterances;
  if (utterances && [(NSMutableArray *)utterances count]> index)
  {
    v6 = [(NSMutableArray *)self->_utterances objectAtIndex:index];
    interpretationIndices = [v6 interpretationIndices];
    v8 = [interpretationIndices count];
    v9 = [(NSMutableArray *)self->_phrases count];

    if (v8 == v9)
    {
      array = [MEMORY[0x1E695DF70] array];
      interpretationIndices2 = [v6 interpretationIndices];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __52__AFUserUtterance_interpretationOfUtteranceAtIndex___block_invoke;
      v18 = &unk_1E7342ED0;
      selfCopy = self;
      v20 = array;
      v12 = array;
      [interpretationIndices2 enumerateObjectsUsingBlock:&v15];

      v13 = objc_alloc_init(AFSpeechInterpretation);
      [(AFSpeechInterpretation *)v13 setTokens:v12, v15, v16, v17, v18, selfCopy];

      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:

  return v13;
}

void __52__AFUserUtterance_interpretationOfUtteranceAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  v12 = [v5 objectAtIndex:a3];
  v7 = [v12 interpretations];
  v8 = [v6 unsignedIntegerValue];

  v9 = [v7 objectAtIndex:v8];

  v10 = *(a1 + 40);
  v11 = [v9 tokens];
  [v10 addObjectsFromArray:v11];
}

- (id)textOfUtteranceAtIndex:(unint64_t)index
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_phrases && [(NSMutableArray *)self->_utterances count]> index)
  {
    v5 = [(NSMutableArray *)self->_utterances objectAtIndex:index];
    interpretationIndices = [v5 interpretationIndices];
    v7 = [interpretationIndices count];
    if (v7 == [(NSMutableArray *)self->_phrases count])
    {
      string = [MEMORY[0x1E696AD60] string];
      if ([(NSMutableArray *)self->_phrases count])
      {
        v10 = 0;
        *&v9 = 136315650;
        v22 = v9;
        do
        {
          v11 = [interpretationIndices objectAtIndex:{v10, v22}];
          unsignedIntegerValue = [v11 unsignedIntegerValue];

          v13 = [(NSMutableArray *)self->_phrases objectAtIndex:v10];
          interpretations = [v13 interpretations];

          if (unsignedIntegerValue >= [interpretations count])
          {
            v17 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v24 = "[AFUserUtterance textOfUtteranceAtIndex:]";
              v25 = 2050;
              v26 = unsignedIntegerValue;
              v27 = 2112;
              v28 = interpretations;
              _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s utterance interpretationIndex (%{public}lu) is out of range of interpretations=%@", buf, 0x20u);
            }
          }

          else
          {
            v15 = [interpretations objectAtIndex:unsignedIntegerValue];
            text = [v15 text];
            [string appendString:text];
          }

          ++v10;
        }

        while (v10 < [(NSMutableArray *)self->_phrases count]);
      }
    }

    else
    {
      v18 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        phrases = self->_phrases;
        *buf = 136315650;
        v24 = "[AFUserUtterance textOfUtteranceAtIndex:]";
        v25 = 2112;
        v26 = phrases;
        v27 = 2114;
        v28 = interpretationIndices;
        _os_log_error_impl(&dword_1912FE000, v18, OS_LOG_TYPE_ERROR, "%s Phrase length is not the same as interpretationIndices. Phrases=%@, interpretationIndices=%{public}@", buf, 0x20u);
      }

      string = 0;
    }
  }

  else
  {
    string = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)rangeListOfDifferingTextFromTargetTokenList:(id)list comparedToBaseTokenList:(id)tokenList
{
  listCopy = list;
  v21 = [(AFUserUtterance *)self longestCommonSubsequenceBetweenList:listCopy andList:tokenList];
  v7 = [v21 count];
  array = [MEMORY[0x1E695DF70] array];
  if ([listCopy count])
  {
    v8 = 0;
    v9 = 0;
    removeSpaceAfter = 0;
    v11 = 0;
    do
    {
      if (v9 >= v7)
      {
        v14 = 1;
      }

      else
      {
        v12 = [v21 objectAtIndex:v9];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        v14 = v11 != unsignedIntegerValue;
        if (v11 == unsignedIntegerValue)
        {
          ++v9;
        }
      }

      v15 = [listCopy objectAtIndex:v11];
      text = [v15 text];
      v17 = [text length];

      if (!((v8 == 0) | removeSpaceAfter & 1))
      {
        v8 += [v15 removeSpaceBefore] ^ 1;
      }

      if (v14)
      {
        v18 = [MEMORY[0x1E696B098] valueWithRange:{v8, v17}];
        [array addObject:v18];
      }

      v8 += v17;
      removeSpaceAfter = [v15 removeSpaceAfter];

      ++v11;
    }

    while (v11 < [listCopy count]);
  }

  return array;
}

- (id)rangeListOfDifferingTextFromSpeechInterpretation:(id)interpretation comparedToBaseTokenList:(id)list
{
  listCopy = list;
  tokens = [interpretation tokens];
  v8 = [(AFUserUtterance *)self rangeListOfDifferingTextFromTargetTokenList:tokens comparedToBaseTokenList:listCopy];

  return v8;
}

- (id)rangeListOfDifferingTextFromSpeechInterpretation:(id)interpretation comparedToBaseUtteranceAtIndex:(unint64_t)index
{
  interpretationCopy = interpretation;
  v7 = [(AFUserUtterance *)self speechTokensForUtteranceAtIndex:index];
  v8 = [(AFUserUtterance *)self rangeListOfDifferingTextFromSpeechInterpretation:interpretationCopy comparedToBaseTokenList:v7];

  return v8;
}

- (id)longestCommonSubsequenceBetweenList:(id)list andList:(id)andList
{
  listCopy = list;
  andListCopy = andList;
  array = [MEMORY[0x1E695DF70] array];
  v45 = listCopy;
  v7 = [listCopy count];
  v44 = andListCopy;
  v8 = [andListCopy count];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7 + 1];
  if (v7 == -1)
  {
    goto LABEL_8;
  }

  v10 = 0;
  do
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8 + 1];
    v12 = v8 + 1;
    if (v8 != -1)
    {
      do
      {
        [v11 addObject:&unk_1F056D278];
        --v12;
      }

      while (v12);
    }

    [v9 addObject:v11];
  }

  while (v10++ != v7);
  if (v7)
  {
LABEL_8:
    v14 = 0;
    v43 = v7;
    do
    {
      while (1)
      {
        v15 = v14 + 1;
        if (v8)
        {
          break;
        }

        ++v14;
        if (v15 == v7)
        {
          goto LABEL_28;
        }
      }

      v16 = 0;
      do
      {
        v17 = [v45 objectAtIndex:v14];
        text = [v17 text];
        v19 = [v44 objectAtIndex:v16];
        text2 = [v19 text];
        v21 = [text isEqualToString:text2];

        if (v21)
        {
          v22 = MEMORY[0x1E696AD98];
          v23 = [v9 objectAtIndexedSubscript:v14];
          v24 = [v23 objectAtIndexedSubscript:v16];
          v25 = [v22 numberWithInt:{objc_msgSend(v24, "intValue") + 1}];
          v26 = [v9 objectAtIndexedSubscript:v14 + 1];
          [v26 setObject:v25 atIndexedSubscript:++v16];
        }

        else
        {
          v27 = [v9 objectAtIndexedSubscript:v14 + 1];
          v28 = [v27 objectAtIndexedSubscript:v16];

          v29 = [v9 objectAtIndexedSubscript:v14];
          v30 = [v29 objectAtIndexedSubscript:++v16];

          if (v28 >= v30)
          {
            v31 = v28;
          }

          else
          {
            v31 = v30;
          }

          v24 = v31;

          v23 = [v9 objectAtIndexedSubscript:v14 + 1];
          [v23 setObject:v24 atIndexedSubscript:v16];
        }
      }

      while (v16 != v8);
      ++v14;
      v7 = v43;
    }

    while (v15 != v43);
    do
    {
      v32 = [v9 objectAtIndexedSubscript:v7];
      v33 = [v32 objectAtIndexedSubscript:v8];
      v34 = [v9 objectAtIndexedSubscript:v7 - 1];
      v35 = [v34 objectAtIndexedSubscript:v8];

      if (v33 != v35)
      {
        v36 = [v9 objectAtIndexedSubscript:v7];
        v37 = [v36 objectAtIndexedSubscript:v8];
        v38 = [v9 objectAtIndexedSubscript:v7];
        v39 = [v38 objectAtIndexedSubscript:--v8];

        if (v37 == v39)
        {
          continue;
        }

        v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 - 1];
        [array insertObject:v40 atIndex:0];
      }

      --v7;
    }

    while (v7 && v8);
  }

LABEL_28:

  return array;
}

- (id)speechTokensForUtteranceAtIndex:(unint64_t)index
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_utterances count]<= index)
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[AFUserUtterance speechTokensForUtteranceAtIndex:]";
      v23 = 2050;
      indexCopy = index;
      _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s utterance index (%{public}lu) is out of range", buf, 0x16u);
    }

    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = [(NSMutableArray *)self->_utterances objectAtIndex:index];
    interpretationIndices = [v6 interpretationIndices];

    if ([(NSMutableArray *)self->_phrases count])
    {
      v9 = 0;
      *&v8 = 136315650;
      v20 = v8;
      do
      {
        v10 = [interpretationIndices objectAtIndex:{v9, v20}];
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        v12 = [(NSMutableArray *)self->_phrases objectAtIndex:v9];
        interpretations = [v12 interpretations];

        if (unsignedIntegerValue >= [interpretations count])
        {
          v16 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v22 = "[AFUserUtterance speechTokensForUtteranceAtIndex:]";
            v23 = 2050;
            indexCopy = unsignedIntegerValue;
            v25 = 2112;
            v26 = interpretations;
            _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, "%s utterance interpretationIndex (%{public}lu) is out of range of interpretations=%@", buf, 0x20u);
          }
        }

        else
        {
          v14 = [interpretations objectAtIndex:unsignedIntegerValue];
          tokens = [v14 tokens];
          [array addObjectsFromArray:tokens];
        }

        ++v9;
      }

      while (v9 < [(NSMutableArray *)self->_phrases count]);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)rangeListOfDifferingTextFromUtteranceAtIndex:(unint64_t)index comparedToBaseUtteranceAtIndex:(unint64_t)atIndex
{
  v38 = *MEMORY[0x1E69E9840];
  if (index == atIndex)
  {
    goto LABEL_17;
  }

  if ([(NSMutableArray *)self->_utterances count]<= index)
  {
    v25 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v27 = 0;
      goto LABEL_18;
    }

    *buf = 136315394;
    v33 = "[AFUserUtterance rangeListOfDifferingTextFromUtteranceAtIndex:comparedToBaseUtteranceAtIndex:]";
    v34 = 2050;
    atIndexCopy = index;
    v26 = "%s utterance index (%{public}lu) is out of range";
LABEL_23:
    _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);
    goto LABEL_17;
  }

  if ([(NSMutableArray *)self->_utterances count]<= atIndex)
  {
    v25 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315394;
    v33 = "[AFUserUtterance rangeListOfDifferingTextFromUtteranceAtIndex:comparedToBaseUtteranceAtIndex:]";
    v34 = 2050;
    atIndexCopy = atIndex;
    v26 = "%s base utterance index (%{public}lu) is out of range";
    goto LABEL_23;
  }

  v7 = [(NSMutableArray *)self->_utterances objectAtIndex:index];
  interpretationIndices = [v7 interpretationIndices];

  v9 = [(NSMutableArray *)self->_utterances objectAtIndex:atIndex];
  interpretationIndices2 = [v9 interpretationIndices];

  array = [MEMORY[0x1E695DF70] array];
  if ([(NSMutableArray *)self->_phrases count])
  {
    v12 = 0;
    v13 = 0;
    *&v11 = 136315650;
    v30 = v11;
    do
    {
      v14 = [interpretationIndices objectAtIndex:{v13, v30}];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      v16 = [interpretationIndices2 objectAtIndex:v13];
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];

      v18 = [(NSMutableArray *)self->_phrases objectAtIndex:v13];
      interpretations = [v18 interpretations];

      if (unsignedIntegerValue >= [interpretations count])
      {
        v24 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = v30;
          v33 = "[AFUserUtterance rangeListOfDifferingTextFromUtteranceAtIndex:comparedToBaseUtteranceAtIndex:]";
          v34 = 2050;
          atIndexCopy = unsignedIntegerValue;
          v36 = 2112;
          v37 = interpretations;
          _os_log_error_impl(&dword_1912FE000, v24, OS_LOG_TYPE_ERROR, "%s utterance interpretationIndex (%{public}lu) is out of range of interpretations=%@", buf, 0x20u);
        }
      }

      else
      {
        v20 = [interpretations objectAtIndex:unsignedIntegerValue];
        text = [v20 text];
        v22 = text;
        if (unsignedIntegerValue != unsignedIntegerValue2)
        {
          v23 = [MEMORY[0x1E696B098] valueWithRange:{v12, objc_msgSend(text, "length")}];
          [array addObject:v23];
        }

        v12 += [v22 length];
      }

      ++v13;
    }

    while (v13 < [(NSMutableArray *)self->_phrases count]);
  }

  v27 = array;
LABEL_18:
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)bestTextInterpretation
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_phrases)
  {
    tokens = self->_tokens;
    if (tokens)
    {
      v13 = af_bestTokenInterpretation(tokens);
    }

    else
    {
      text = self->_text;
      if (!text)
      {
        v11 = &stru_1F0512680;
        goto LABEL_15;
      }

      v13 = text;
    }

    v11 = v13;
    goto LABEL_15;
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_phrases;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        firstInterpretation = [*(*(&v17 + 1) + 8 * i) firstInterpretation];
        tokens = [firstInterpretation tokens];
        [array addObjectsFromArray:tokens];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v11 = af_bestTokenInterpretation(array);

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (AFUserUtterance)initWithString:(id)string correctionIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AFUserUtterance;
  v8 = [(AFUserUtterance *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    correctionIdentifier = v8->_correctionIdentifier;
    v8->_correctionIdentifier = v9;

    v11 = [stringCopy copy];
    text = v8->_text;
    v8->_text = v11;
  }

  return v8;
}

- (AFUserUtterance)initWithTokens:(id)tokens correctionIdentifier:(id)identifier
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AFUserUtterance;
  v8 = [(AFUserUtterance *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    correctionIdentifier = v8->_correctionIdentifier;
    v8->_correctionIdentifier = v9;

    v11 = [tokensCopy copy];
    tokens = v8->_tokens;
    v8->_tokens = v11;
  }

  return v8;
}

- (AFUserUtterance)initWithPhrases:(id)phrases sentenceConfidence:(int64_t)confidence utterances:(id)utterances correctionIdentifier:(id)identifier
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = AFUserUtterance;
  v13 = [(AFUserUtterance *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    correctionIdentifier = v13->_correctionIdentifier;
    v13->_correctionIdentifier = v14;

    v16 = [phrasesCopy copy];
    phrases = v13->_phrases;
    v13->_phrases = v16;

    v18 = [utterancesCopy copy];
    utterances = v13->_utterances;
    v13->_utterances = v18;

    v13->_sentenceConfidence = confidence;
  }

  return v13;
}

- (AFUserUtterance)initWithPhrases:(id)phrases utterances:(id)utterances
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  v14.receiver = self;
  v14.super_class = AFUserUtterance;
  v8 = [(AFUserUtterance *)&v14 init];
  if (v8)
  {
    v9 = [phrasesCopy copy];
    phrases = v8->_phrases;
    v8->_phrases = v9;

    v11 = [utterancesCopy copy];
    utterances = v8->_utterances;
    v8->_utterances = v11;
  }

  return v8;
}

- (AFUserUtterance)initWithPhrases:(id)phrases correctionIdentifier:(id)identifier
{
  phrasesCopy = phrases;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AFUserUtterance;
  v8 = [(AFUserUtterance *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    correctionIdentifier = v8->_correctionIdentifier;
    v8->_correctionIdentifier = v9;

    v11 = [phrasesCopy copy];
    phrases = v8->_phrases;
    v8->_phrases = v11;
  }

  return v8;
}

@end