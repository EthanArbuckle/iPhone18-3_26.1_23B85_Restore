@interface AFSpeechInterpretation
- (AFSpeechInterpretation)initWithCoder:(id)a3;
- (AFSpeechInterpretation)initWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)text;
- (int64_t)averageConfidenceScore;
- (int64_t)confidenceScore;
- (int64_t)confidenceScoreAvg;
- (int64_t)confidenceScoreMax;
- (int64_t)confidenceScoreMin;
- (unint64_t)hash;
@end

@implementation AFSpeechInterpretation

- (int64_t)confidenceScoreAvg
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(AFSpeechInterpretation *)self tokens];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v13 + 1) + 8 * i) confidenceScore];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = [(AFSpeechInterpretation *)self tokens];
  v10 = [v9 count];

  if (v10 < 1)
  {
    result = 0;
  }

  else
  {
    result = v6 / v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)confidenceScoreMin
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AFSpeechInterpretation *)self tokens];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 1000;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) confidenceScore];
        if (v8 < v6)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1000;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)confidenceScoreMax
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AFSpeechInterpretation *)self tokens];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) confidenceScore];
        if (v8 > v6)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)confidenceScore
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AFSpeechInterpretation *)self tokens];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) confidenceScore];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)text
{
  v2 = [(AFSpeechInterpretation *)self tokens];
  v3 = af_bestTokenInterpretation(v2);

  return v3;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_tokens;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v17 = @"tokens";
  v18 = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (AFSpeechInterpretation)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = AFSpeechInterpretation;
  v5 = [(AFSpeechInterpretation *)&v26 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v4 objectForKey:@"tokens"];
  v7 = [v4 objectForKey:@"tokens"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = v7;
  if (!v10 || (NSClassFromString(v9), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8765;
  v20 = __Block_byref_object_dispose__8766;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__AFSpeechInterpretation_initWithDictionary___block_invoke;
  v15[3] = &unk_1E73436F0;
  v15[4] = &v22;
  v15[5] = &v16;
  [v6 enumerateObjectsUsingBlock:v15];
  if ((v23[3] & 1) != 0 || ![v17[5] count])
  {
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v17[5]];
  tokens = v5->_tokens;
  v5->_tokens = v11;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

LABEL_7:
  v13 = v5;
LABEL_11:

  return v13;
}

void __45__AFSpeechInterpretation_initWithDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

  v11 = [[AFSpeechToken alloc] initWithDictionary:v12];
  if (!v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

- (int64_t)averageConfidenceScore
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_tokens count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tokens;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v12 + 1) + 8 * i) confidenceScore];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    result = v7 / v3;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (AFSpeechInterpretation)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFSpeechInterpretation;
  v5 = [(AFSpeechInterpretation *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AFSpeechInterpretation;
  v4 = [(AFSpeechInterpretation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, tokens=%@", v4, self->_tokens];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[1];
    if (v5 == self->_tokens)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSArray *)v5 isEqualToArray:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_tokens hash];
  v4 = [(NSArray *)self->_tokens firstObject];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end