@interface NLModelImplL
- (NLModelImplL)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplL)initWithModelTrainer:(id)trainer error:(id *)error;
- (NLModelImplL)initWithOwnedModelObject:(const void *)object configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap numberOfTrainingInstances:(unint64_t)instances;
- (id)modelData;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsForTokens:(id)tokens;
- (void)dealloc;
@end

@implementation NLModelImplL

- (NLModelImplL)initWithOwnedModelObject:(const void *)object configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap numberOfTrainingInstances:(unint64_t)instances
{
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  frequencyMapCopy = frequencyMap;
  if (object)
  {
    v28.receiver = self;
    v28.super_class = NLModelImplL;
    v18 = [(NLModelImplL *)&v28 init];
    self = v18;
    if (v18)
    {
      v18->_maxEntModel = object;
      v19 = [configurationCopy copy];
      configuration = self->_configuration;
      self->_configuration = v19;

      v21 = [mapCopy copy];
      labelMap = self->_labelMap;
      self->_labelMap = v21;

      v23 = [vocabularyMapCopy copy];
      vocabularyMap = self->_vocabularyMap;
      self->_vocabularyMap = v23;

      v25 = [frequencyMapCopy copy];
      documentFrequencyMap = self->_documentFrequencyMap;
      self->_documentFrequencyMap = v25;

      self->_numberOfTrainingInstances = instances;
    }
  }

  return self;
}

- (NLModelImplL)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v20 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  frequencyMapCopy = frequencyMap;
  infoCopy = info;
  createMaxEntModelFromData(data);
}

- (NLModelImplL)initWithModelTrainer:(id)trainer error:(id *)error
{
  trainerCopy = trainer;
  [trainerCopy configuration];
  objc_claimAutoreleasedReturnValue();
  dataSet = [trainerCopy dataSet];
  v9[0] = xmmword_19D4E9090;
  v9[1] = vdupq_n_s64(0x400uLL);
  v9[2] = xmmword_19D4E90A0;
  v6 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:v9 modelTrainer:trainerCopy];
  [v6 inverseLabelMap];
  objc_claimAutoreleasedReturnValue();
  [v6 vocabularyMap];
  objc_claimAutoreleasedReturnValue();
  [v6 documentFrequencyMap];
  objc_claimAutoreleasedReturnValue();
  [dataSet numberOfTrainingInstances];
  options = [trainerCopy options];
  unsignedIntegerForKey(options, @"MaximumIterations", 150);

  createMaxEntModelFromTrainingDataSet(v6, trainerCopy);
}

- (void)dealloc
{
  maxEntModel = self->_maxEntModel;
  if (maxEntModel)
  {
    releaseMaxEntModel(maxEntModel);
  }

  v4.receiver = self;
  v4.super_class = NLModelImplL;
  [(NLModelImplL *)&v4 dealloc];
}

- (id)modelData
{
  maxEntModel = self->_maxEntModel;
  if (maxEntModel)
  {
    maxEntModel = dataFromMaxEntModel(maxEntModel);
    v2 = vars8;
  }

  return maxEntModel;
}

- (id)predictedLabelForString:(id)string
{
  maxEntModel = self->_maxEntModel;
  stringCopy = string;
  labelMap = [(NLModelImplL *)self labelMap];
  vocabularyMap = [(NLModelImplL *)self vocabularyMap];
  documentFrequencyMap = [(NLModelImplL *)self documentFrequencyMap];
  v9 = predictedMaxEntModelLabelForString(maxEntModel, labelMap, vocabularyMap, documentFrequencyMap, [(NLModelImplL *)self numberOfTrainingInstances], stringCopy);

  return v9;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplL *)self predictedLabelForString:v5];

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

- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count
{
  maxEntModel = self->_maxEntModel;
  stringCopy = string;
  labelMap = [(NLModelImplL *)self labelMap];
  vocabularyMap = [(NLModelImplL *)self vocabularyMap];
  documentFrequencyMap = [(NLModelImplL *)self documentFrequencyMap];
  v11 = predictedMaxEntModelLabelHypothesesForString(maxEntModel, labelMap, vocabularyMap, documentFrequencyMap, [(NLModelImplL *)self numberOfTrainingInstances], stringCopy);

  v12 = topHypotheses(v11, count);

  return v12;
}

- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count
{
  tokensCopy = tokens;
  v7 = [tokensCopy componentsJoinedByString:@" "];
  v8 = [(NLModelImplL *)self predictedLabelHypothesesForString:v7 maximumCount:count];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v10 = 0;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    do
    {
      [array addObject:v11];
      ++v10;
    }

    while (v10 < [tokensCopy count]);
  }

  return array;
}

@end