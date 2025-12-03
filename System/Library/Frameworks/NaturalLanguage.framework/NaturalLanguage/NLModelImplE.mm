@interface NLModelImplE
- (NLModelImplE)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelsForTokens:(id)tokens;
@end

@implementation NLModelImplE

- (NLModelImplE)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  dataCopy = data;
  v13 = [[NLEmbedding alloc] initWithData:dataCopy error:error];
  if (v13 && (v17.receiver = self, v17.super_class = NLModelImplE, v14 = [(NLModelImplE *)&v17 init], (self = v14) != 0))
  {
    objc_storeStrong(&v14->_embedding, v13);
    objc_storeStrong(&self->_embeddingData, data);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)predictedLabelForString:(id)string
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NLEmbedding *)self->_embedding vectorForString:string];
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

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplE *)self predictedLabelForString:v5];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
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
      [array addObject:v9];
      ++v8;
    }

    while (v8 < [tokensCopy count]);
  }

  return array;
}

@end