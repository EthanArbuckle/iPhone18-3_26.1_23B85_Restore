@interface NLModelImplE
- (NLModelImplE)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10;
- (id)predictedLabelForString:(id)a3;
- (id)predictedLabelsForTokens:(id)a3;
@end

@implementation NLModelImplE

- (NLModelImplE)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10
{
  v12 = a3;
  v13 = [[NLEmbedding alloc] initWithData:v12 error:a10];
  if (v13 && (v17.receiver = self, v17.super_class = NLModelImplE, v14 = [(NLModelImplE *)&v17 init], (self = v14) != 0))
  {
    objc_storeStrong(&v14->_embedding, v13);
    objc_storeStrong(&self->_embeddingData, a3);
    self = self;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)predictedLabelForString:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NLEmbedding *)self->_embedding vectorForString:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ((v9 & 1) == 0)
          {
            [v4 appendString:{@", "}];
          }

          [v11 floatValue];
          [v4 appendFormat:@"%f", v12];
          v9 = 0;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v9 = 0;
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

- (id)predictedLabelsForTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [(NLModelImplE *)self predictedLabelForString:v5];

  v7 = [MEMORY[0x1E695DF70] array];
  if ([v4 count])
  {
    v8 = 0;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &stru_1F10C6540;
    }

    do
    {
      [v7 addObject:v9];
      ++v8;
    }

    while (v8 < [v4 count]);
  }

  return v7;
}

@end