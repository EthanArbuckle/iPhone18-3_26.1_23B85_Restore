@interface NLModelImplG
- (NLModelImplG)initWithGazetteer:(id)gazetteer;
- (NLModelImplG)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (id)predictedLabelsForTokens:(id)tokens;
@end

@implementation NLModelImplG

- (NLModelImplG)initWithGazetteer:(id)gazetteer
{
  gazetteerCopy = gazetteer;
  v9.receiver = self;
  v9.super_class = NLModelImplG;
  v6 = [(NLModelImplG *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gazetteer, gazetteer);
  }

  return v7;
}

- (NLModelImplG)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  dataCopy = data;
  v12 = [[NLGazetteer alloc] initWithData:dataCopy error:error];

  if (v12)
  {
    self = [(NLModelImplG *)self initWithGazetteer:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v14 = selfCopy;

  return v14;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplG *)self predictedLabelForString:v5];

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