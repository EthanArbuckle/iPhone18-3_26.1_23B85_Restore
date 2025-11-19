@interface AFSpeechUtterance
- (AFSpeechUtterance)initWithCoder:(id)a3;
- (AFSpeechUtterance)initWithDictionary:(id)a3;
- (AFSpeechUtterance)initWithInterpretationIndices:(id)a3 confidenceScore:(int64_t)a4 interpretation:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechUtterance

- (id)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  confidenceScore = self->_confidenceScore;
  v12[0] = self->_interpretationIndices;
  v11[0] = @"interpretationIndices";
  v11[1] = @"confidenceScore";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:confidenceScore];
  v12[1] = v4;
  v11[2] = @"source";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  v12[2] = v5;
  v11[3] = @"interpretation";
  interpretation = self->_interpretation;
  if (interpretation)
  {
    [(AFSpeechInterpretation *)interpretation dictionaryRepresentation];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v7 = ;
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (AFSpeechUtterance)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"interpretationIndices"];
  v6 = [v4 objectForKey:@"interpretationIndices"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  if (v9)
  {
    NSClassFromString(v8);
    if (objc_opt_isKindOfClass())
    {

      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__8765;
      v28 = __Block_byref_object_dispose__8766;
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __40__AFSpeechUtterance_initWithDictionary___block_invoke;
      v23[3] = &unk_1E73436F0;
      v23[4] = &v30;
      v23[5] = &v24;
      [v5 enumerateObjectsUsingBlock:v23];
      if ((v31[3] & 1) != 0 || ![v25[5] count])
      {
        v16 = 0;
LABEL_15:
        _Block_object_dispose(&v24, 8);

        _Block_object_dispose(&v30, 8);
        goto LABEL_16;
      }

      v10 = [v4 objectForKey:@"confidenceScore"];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = v10;
      v14 = v12;
      v15 = v14;
      if (v13)
      {
        NSClassFromString(v14);
        if (objc_opt_isKindOfClass())
        {

          if (([(AFSpeechInterpretation *)v13 intValue]& 0x80000000) != 0 || [(AFSpeechInterpretation *)v13 intValue]> 1000)
          {
            v16 = 0;
LABEL_14:

            goto LABEL_15;
          }

          v19 = [v4 objectForKey:@"interpretation"];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v15 = v19;
          v22 = v21;
          v17 = v22;
          if (v15 && (NSClassFromString(v22), (objc_opt_isKindOfClass() & 1) != 0))
          {

            v17 = [[AFSpeechInterpretation alloc] initWithDictionary:v15];
            if (v17)
            {
              self = [(AFSpeechUtterance *)self initWithInterpretationIndices:v25[5] confidenceScore:[(AFSpeechInterpretation *)v13 intValue] interpretation:v17];
              v16 = self;
              goto LABEL_13;
            }
          }

          else
          {
          }

          v16 = 0;
          goto LABEL_13;
        }
      }

      v16 = 0;
      v17 = v13;
LABEL_13:

      goto LABEL_14;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

void __40__AFSpeechUtterance_initWithDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  v11 = v9;
  if (v9 && (NSClassFromString(v8), isKindOfClass = objc_opt_isKindOfClass(), v9 = v11, (isKindOfClass & 1) != 0))
  {
  }

  else
  {

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  if (([v11 intValue] & 0x80000000) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

- (AFSpeechUtterance)initWithInterpretationIndices:(id)a3 confidenceScore:(int64_t)a4 interpretation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = AFSpeechUtterance;
  v10 = [(AFSpeechUtterance *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    interpretationIndices = v10->_interpretationIndices;
    v10->_interpretationIndices = v11;

    v10->_confidenceScore = a4;
    objc_storeStrong(&v10->_interpretation, a5);
  }

  return v10;
}

- (AFSpeechUtterance)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFSpeechUtterance;
  v5 = [(AFSpeechUtterance *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_interpretationIndices"];
    interpretationIndices = v5->_interpretationIndices;
    v5->_interpretationIndices = v9;

    v5->_confidenceScore = [v4 decodeIntegerForKey:@"_confidenceScore"];
    v5->_source = [v4 decodeIntegerForKey:@"_source"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interpretation"];
    interpretation = v5->_interpretation;
    v5->_interpretation = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  interpretationIndices = self->_interpretationIndices;
  v5 = a3;
  [v5 encodeObject:interpretationIndices forKey:@"_interpretationIndices"];
  [v5 encodeInteger:self->_confidenceScore forKey:@"_confidenceScore"];
  [v5 encodeInteger:self->_source forKey:@"_source"];
  [v5 encodeObject:self->_interpretation forKey:@"_interpretation"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AFSpeechUtterance;
  v4 = [(AFSpeechUtterance *)&v10 description];
  interpretationIndices = self->_interpretationIndices;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_confidenceScore];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  v8 = [v3 stringWithFormat:@"%@, interpretationIndices=%@, confidenceScore=%@, source=%@, interpretation=%@", v4, interpretationIndices, v6, v7, self->_interpretation];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = v4[1], v5 == self->_interpretationIndices) || [(NSArray *)v5 isEqualToArray:?]) && v4[2] == self->_confidenceScore && v4[3] == self->_source)
  {
    v6 = v4[4];
    if (v6 == self->_interpretation)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(AFSpeechInterpretation *)v6 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_interpretationIndices hash];
  v4 = [(NSArray *)self->_interpretationIndices firstObject];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end