@interface NLModelImplG
- (NLModelImplG)initWithGazetteer:(id)a3;
- (NLModelImplG)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10;
- (id)predictedLabelsForTokens:(id)a3;
@end

@implementation NLModelImplG

- (NLModelImplG)initWithGazetteer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NLModelImplG;
  v6 = [(NLModelImplG *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gazetteer, a3);
  }

  return v7;
}

- (NLModelImplG)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10
{
  v11 = a3;
  v12 = [[NLGazetteer alloc] initWithData:v11 error:a10];

  if (v12)
  {
    self = [(NLModelImplG *)self initWithGazetteer:v12];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

- (id)predictedLabelsForTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [(NLModelImplG *)self predictedLabelForString:v5];

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