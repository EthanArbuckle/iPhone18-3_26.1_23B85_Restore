@interface AFSpeechPhrase
- (AFSpeechPhrase)initWithCoder:(id)a3;
- (AFSpeechPhrase)initWithDictionary:(id)a3;
- (AFSpeechPhrase)initWithInterpretations:(id)a3 isLowConfidence:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)allInterpretationStringsAndScores;
- (id)bestInterpretation;
- (id)description;
- (id)dictionaryRepresentation;
- (id)firstInterpretation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechPhrase

- (id)allInterpretationStringsAndScores
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(AFSpeechPhrase *)self interpretations];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v3 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = [v6 confidenceScoreAvg];
        v8 = [v6 confidenceScoreMax];
        v9 = [v6 confidenceScoreMin];
        v10 = [v6 confidenceScore];
        v11 = [v6 tokens];
        v12 = [v11 count];

        v13 = [v6 text];

        if (v13)
        {
          v30[0] = @"avg";
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
          v31[0] = v14;
          v30[1] = @"max";
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
          v31[1] = v15;
          v30[2] = @"min";
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
          v31[2] = v16;
          v30[3] = @"sum";
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          v31[3] = v17;
          v30[4] = @"count";
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v31[4] = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];
          v20 = [v6 text];
          [v24 setObject:v19 forKey:v20];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)bestInterpretation
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(AFSpeechPhrase *)self interpretations];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (v3)
          {
            v10 = [*(*(&v14 + 1) + 8 * i) confidenceScore];
            if (v10 <= [v3 confidenceScore])
            {
              continue;
            }
          }

          v11 = v9;

          v3 = v11;
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v3 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)firstInterpretation
{
  v2 = [(AFSpeechPhrase *)self interpretations];
  v3 = [v2 firstObject];

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_interpretations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v18[1] = @"isLowConfidence";
  v19[0] = v3;
  v18[0] = @"interpretations";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
  v19[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (AFSpeechPhrase)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"interpretations"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v5;
  if (v8 && (NSClassFromString(v7), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8765;
    v22 = __Block_byref_object_dispose__8766;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__AFSpeechPhrase_initWithDictionary___block_invoke;
    v17[3] = &unk_1E73436F0;
    v17[4] = &v24;
    v17[5] = &v18;
    [v8 enumerateObjectsUsingBlock:v17];
    if ((v25[3] & 1) != 0 || ![v19[5] count])
    {
      v15 = 0;
    }

    else
    {
      v9 = [v4 objectForKey:@"isLowConfidence"];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = v9;
      v13 = v11;
      v14 = v13;
      if (v12 && (NSClassFromString(v13), (objc_opt_isKindOfClass() & 1) != 0))
      {

        self = -[AFSpeechPhrase initWithInterpretations:isLowConfidence:](self, "initWithInterpretations:isLowConfidence:", v19[5], [v12 BOOLValue]);
        v15 = self;
      }

      else
      {

        v15 = 0;
      }
    }

    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

void __37__AFSpeechPhrase_initWithDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

  v11 = [[AFSpeechInterpretation alloc] initWithDictionary:v12];
  if (!v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

- (AFSpeechPhrase)initWithInterpretations:(id)a3 isLowConfidence:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AFSpeechPhrase;
  v7 = [(AFSpeechPhrase *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    interpretations = v7->_interpretations;
    v7->_interpretations = v8;

    v7->_isLowConfidence = a4;
  }

  return v7;
}

- (AFSpeechPhrase)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFSpeechPhrase;
  v5 = [(AFSpeechPhrase *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"interpretations"];
    interpretations = v5->_interpretations;
    v5->_interpretations = v9;

    v5->_isLowConfidence = [v4 decodeBoolForKey:@"isLowConfidence"];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  interpretations = self->_interpretations;
  v5 = a3;
  [v5 encodeObject:interpretations forKey:@"interpretations"];
  [v5 encodeBool:self->_isLowConfidence forKey:@"isLowConfidence"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AFSpeechPhrase;
  v4 = [(AFSpeechPhrase *)&v9 description];
  interpretations = self->_interpretations;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
  v7 = [v3 stringWithFormat:@"%@, interpretations=%@, isLowConfidence=%@", v4, interpretations, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(v4 + 2), v5 == self->_interpretations) || [(NSArray *)v5 isEqualToArray:?]) && v4[8] == self->_isLowConfidence;

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_interpretations hash];
  v4 = [(NSArray *)self->_interpretations firstObject];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end