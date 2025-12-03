@interface AFSpeechRecognition
+ (id)fakeOneBestFromPhrases:(id)phrases;
+ (id)tokenListFromUtterance:(id)utterance phrases:(id)phrases;
+ (id)transcriptFromTokens:(id)tokens;
- (AFSpeechRecognition)initWithCoder:(id)coder;
- (AFSpeechRecognition)initWithDictionary:(id)dictionary;
- (AFSpeechRecognition)initWithPhrases:(id)phrases;
- (AFSpeechRecognition)initWithPhrases:(id)phrases utterances:(id)utterances processedAudioDuration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (double)averageOneBestConfidenceScore;
- (id)aceRecognition;
- (id)dictionaryRepresentation;
- (id)nBestTokenListsFromSausage;
- (id)nBestTokenListsLossless;
- (id)nBestTranscripts;
- (id)oneBestTokenList;
- (id)oneBestTranscript;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechRecognition

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_phrases;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_utterances;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * j) dictionaryRepresentation];
        [v10 addObject:dictionaryRepresentation2];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v13);
  }

  v28[0] = @"phrases";
  v28[1] = @"utterances";
  v29[0] = v3;
  v29[1] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (AFSpeechRecognition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"phrases"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v5;
  if (v8 && (NSClassFromString(v7), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__10491;
    v29 = __Block_byref_object_dispose__10492;
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42__AFSpeechRecognition_initWithDictionary___block_invoke;
    v24[3] = &unk_1E73436F0;
    v24[4] = &v31;
    v24[5] = &v25;
    [v8 enumerateObjectsUsingBlock:v24];
    if ((v32[3] & 1) != 0 || ![v26[5] count])
    {
      selfCopy = 0;
    }

    else
    {
      v9 = [dictionaryCopy objectForKey:@"utterances"];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = v9;
      v13 = v11;
      v14 = v13;
      if (v12 && (NSClassFromString(v13), (objc_opt_isKindOfClass() & 1) != 0))
      {

        *(v32 + 24) = 0;
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__10491;
        v22 = __Block_byref_object_dispose__10492;
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __42__AFSpeechRecognition_initWithDictionary___block_invoke_2;
        v17[3] = &unk_1E73436F0;
        v17[4] = &v31;
        v17[5] = &v18;
        [v12 enumerateObjectsUsingBlock:v17];
        if ((v32[3] & 1) != 0 || ![v19[5] count])
        {
          selfCopy = 0;
        }

        else
        {
          self = [(AFSpeechRecognition *)self initWithPhrases:v26[5] utterances:v19[5]];
          selfCopy = self;
        }

        _Block_object_dispose(&v18, 8);
      }

      else
      {

        selfCopy = 0;
      }
    }

    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {

    selfCopy = 0;
  }

  return selfCopy;
}

void __42__AFSpeechRecognition_initWithDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  v12 = v9;
  if (v9 && (NSClassFromString(v8), isKindOfClass = objc_opt_isKindOfClass(), v9 = v12, (isKindOfClass & 1) != 0))
  {
  }

  else
  {

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v11 = [[AFSpeechPhrase alloc] initWithDictionary:v12];
  if (!v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

void __42__AFSpeechRecognition_initWithDictionary___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  v12 = v9;
  if (v9 && (NSClassFromString(v8), isKindOfClass = objc_opt_isKindOfClass(), v9 = v12, (isKindOfClass & 1) != 0))
  {
  }

  else
  {

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v11 = [[AFSpeechUtterance alloc] initWithDictionary:v12];
  if (!v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

- (id)aceRecognition
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C79F0]);
  v4 = [(NSArray *)self->_phrases _sa_mappedArrayWithBlock:&__block_literal_global_10496];
  [v3 setPhrases:v4];

  v5 = [(NSArray *)self->_utterances _sa_mappedArrayWithBlock:&__block_literal_global_29];
  [v3 setUtterances:v5];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v3;
  obj = [v3 phrases];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = 1000;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        interpretations = [v11 interpretations];
        firstObject = [interpretations firstObject];
        tokens = [firstObject tokens];

        v15 = [tokens countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(tokens);
              }

              confidenceScore = [*(*(&v25 + 1) + 8 * j) confidenceScore];
              integerValue = [confidenceScore integerValue];

              if (integerValue < v9)
              {
                v9 = integerValue;
              }
            }

            v16 = [tokens countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1000;
  }

  [v23 setSentenceConfidence:v9];
  v21 = *MEMORY[0x1E69E9840];

  return v23;
}

id __37__AFSpeechRecognition_aceRecognition__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C7A30];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 interpretationIndices];

  [v4 setInterpretationIndices:v5];

  return v4;
}

id __37__AFSpeechRecognition_aceRecognition__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C79E0];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 interpretations];

  v6 = [v5 _sa_mappedArrayWithBlock:&__block_literal_global_22];
  [v4 setInterpretations:v6];

  return v4;
}

id __37__AFSpeechRecognition_aceRecognition__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C79D8];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 tokens];

  v6 = [v5 _sa_mappedArrayWithBlock:&__block_literal_global_26];
  [v4 setTokens:v6];

  return v4;
}

- (AFSpeechRecognition)initWithPhrases:(id)phrases utterances:(id)utterances processedAudioDuration:(double)duration
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  v16.receiver = self;
  v16.super_class = AFSpeechRecognition;
  v10 = [(AFSpeechRecognition *)&v16 init];
  if (v10)
  {
    v11 = [phrasesCopy copy];
    phrases = v10->_phrases;
    v10->_phrases = v11;

    v13 = [utterancesCopy copy];
    utterances = v10->_utterances;
    v10->_utterances = v13;

    v10->_processedAudioDuration = duration;
  }

  return v10;
}

- (AFSpeechRecognition)initWithPhrases:(id)phrases
{
  v10[1] = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  v5 = [objc_opt_class() fakeOneBestFromPhrases:phrasesCopy];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(AFSpeechRecognition *)self initWithPhrases:phrasesCopy utterances:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)nBestTokenListsLossless
{
  v21 = *MEMORY[0x1E69E9840];
  utterances = [(AFSpeechRecognition *)self utterances];
  v4 = [utterances count];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v6 = 0;
    *&v7 = 136315138;
    v18 = v7;
    do
    {
      utterances2 = [(AFSpeechRecognition *)self utterances];
      v9 = [utterances2 objectAtIndex:v6];

      interpretation = [v9 interpretation];
      tokens = [interpretation tokens];

      if (tokens)
      {
        interpretation2 = [v9 interpretation];
        tokens2 = [interpretation2 tokens];
        [v5 addObject:tokens2];
      }

      else
      {
        v14 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v20 = "[AFSpeechRecognition nBestTokenListsLossless]";
          _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Nil tokens for utterance!", buf, 0xCu);
        }
      }

      ++v6;
    }

    while (v4 != v6);
    if ([v5 count])
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)nBestTokenListsFromSausage
{
  utterances = [(AFSpeechRecognition *)self utterances];
  v4 = [utterances count];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    for (i = 0; i != v4; ++i)
    {
      utterances2 = [(AFSpeechRecognition *)self utterances];
      v8 = [utterances2 objectAtIndex:i];

      phrases = [(AFSpeechRecognition *)self phrases];
      v10 = [AFSpeechRecognition tokenListFromUtterance:v8 phrases:phrases];

      if (v10)
      {
        [v5 addObject:v10];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)averageOneBestConfidenceScore
{
  v19 = *MEMORY[0x1E69E9840];
  oneBestTokenList = [(AFSpeechRecognition *)self oneBestTokenList];
  v3 = [oneBestTokenList count];
  if (v3)
  {
    v4 = v3;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = oneBestTokenList;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = v9 + [*(*(&v14 + 1) + 8 * i) confidenceScore];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v11 = v9 / v4;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)oneBestTokenList
{
  utterances = [(AFSpeechRecognition *)self utterances];
  firstObject = [utterances firstObject];

  phrases = [(AFSpeechRecognition *)self phrases];
  v6 = [AFSpeechRecognition tokenListFromUtterance:firstObject phrases:phrases];

  return v6;
}

- (id)nBestTranscripts
{
  nBestTokenListsFromSausage = [(AFSpeechRecognition *)self nBestTokenListsFromSausage];
  v3 = [nBestTokenListsFromSausage count];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    for (i = 0; i != v4; ++i)
    {
      v7 = [nBestTokenListsFromSausage objectAtIndex:i];
      v8 = [AFSpeechRecognition transcriptFromTokens:v7];
      [v5 addObject:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)oneBestTranscript
{
  oneBestTokenList = [(AFSpeechRecognition *)self oneBestTokenList];
  v3 = [AFSpeechRecognition transcriptFromTokens:oneBestTokenList];

  return v3;
}

- (AFSpeechRecognition)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = AFSpeechRecognition;
  v5 = [(AFSpeechRecognition *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_phrases"];
    phrases = v5->_phrases;
    v5->_phrases = v9;

    v11 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_utterances"];
    utterances = v5->_utterances;
    v5->_utterances = v14;

    [coderCopy decodeDoubleForKey:@"_processedAudioDuration"];
    v5->_processedAudioDuration = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  phrases = self->_phrases;
  coderCopy = coder;
  [coderCopy encodeObject:phrases forKey:@"_phrases"];
  [coderCopy encodeObject:self->_utterances forKey:@"_utterances"];
  [coderCopy encodeDouble:@"_processedAudioDuration" forKey:self->_processedAudioDuration];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_phrases hash];
  firstObject = [(NSArray *)self->_phrases firstObject];
  v5 = [firstObject hash];
  v6 = v5 ^ v3 ^ [(NSArray *)self->_utterances hash];
  firstObject2 = [(NSArray *)self->_utterances firstObject];
  v8 = [firstObject2 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = equalCopy[1], v5 == self->_phrases) || [(NSArray *)v5 isEqualToArray:?]))
  {
    v6 = equalCopy[2];
    if (v6 == self->_utterances)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSArray *)v6 isEqualToArray:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fakeOneBestFromPhrases:(id)phrases
{
  phrasesCopy = phrases;
  v4 = [phrasesCopy count];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    for (i = 0; i != v4; ++i)
    {
      [v5 addObject:&unk_1F056D4E8];
      v9 = [phrasesCopy objectAtIndex:i];
      interpretations = [v9 interpretations];
      v11 = interpretations;
      if (interpretations && [interpretations count])
      {
        firstObject = [v11 firstObject];
        v6 += [firstObject averageConfidenceScore];

        ++v7;
      }
    }

    if (v7)
    {
      v4 = v6 / v7;
    }

    else
    {
      v4 = 0;
    }
  }

  v13 = [[AFSpeechUtterance alloc] initWithInterpretationIndices:v5 confidenceScore:v4];

  return v13;
}

+ (id)tokenListFromUtterance:(id)utterance phrases:(id)phrases
{
  phrasesCopy = phrases;
  interpretationIndices = [utterance interpretationIndices];
  v7 = [interpretationIndices count];
  if (v7 && (v8 = v7, [phrasesCopy count]))
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    for (i = 0; i != v8; ++i)
    {
      v11 = [phrasesCopy objectAtIndex:i];
      interpretations = [v11 interpretations];

      if ([interpretations count])
      {
        v13 = [interpretationIndices objectAtIndex:i];
        unsignedIntegerValue = [v13 unsignedIntegerValue];

        v15 = [interpretations objectAtIndex:unsignedIntegerValue];
        tokens = [v15 tokens];
        [v9 addObjectsFromArray:tokens];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)transcriptFromTokens:(id)tokens
{
  v20 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  if ([tokensCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = tokensCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      removeSpaceAfter = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (((removeSpaceAfter | [v11 removeSpaceBefore]) & 1) == 0)
          {
            [v4 appendString:@" "];
          }

          text = [v11 text];
          if (text)
          {
            [v4 appendString:text];
          }

          removeSpaceAfter = [v11 removeSpaceAfter];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

@end