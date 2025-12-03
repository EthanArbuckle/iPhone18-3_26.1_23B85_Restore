@interface NLModelImplM
- (NLModelImplM)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplM)initWithModelTrainer:(id)trainer error:(id *)error;
- (NLModelImplM)initWithOwnedModelObject:(const void *)object configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap numberOfTrainingInstances:(unint64_t)instances;
- (id)modelData;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsForTokens:(id)tokens;
- (void)dealloc;
@end

@implementation NLModelImplM

- (NLModelImplM)initWithOwnedModelObject:(const void *)object configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap numberOfTrainingInstances:(unint64_t)instances
{
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  if (object)
  {
    v23.receiver = self;
    v23.super_class = NLModelImplM;
    v15 = [(NLModelImplM *)&v23 init];
    self = v15;
    if (v15)
    {
      v15->_mrlModel = object;
      v16 = [configurationCopy copy];
      configuration = self->_configuration;
      self->_configuration = v16;

      v18 = [mapCopy copy];
      labelMap = self->_labelMap;
      self->_labelMap = v18;

      v20 = [vocabularyMapCopy copy];
      vocabularyMap = self->_vocabularyMap;
      self->_vocabularyMap = v20;

      self->_numberOfTrainingInstances = instances;
    }
  }

  return self;
}

- (NLModelImplM)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v26[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  infoCopy = info;
  MRLModelFromData = createMRLModelFromData(data);
  v19 = unsignedIntegerForKey(infoCopy, 0x1F10C67C0, 0);

  if (MRLModelFromData)
  {
    self = [(NLModelImplM *)self initWithOwnedModelObject:MRLModelFromData configuration:configurationCopy labelMap:mapCopy vocabularyMap:vocabularyMapCopy numberOfTrainingInstances:v19];
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"Failed to load model file, invalid RNN model data";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *error = [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v22];
    }

    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NLModelImplM)initWithModelTrainer:(id)trainer error:(id *)error
{
  memset(&v12[1], 0, 7);
  trainerCopy = trainer;
  [trainerCopy configuration];
  objc_claimAutoreleasedReturnValue();
  dataSet = [trainerCopy dataSet];
  v12[0] = 1;
  v13 = xmmword_19D4E9520;
  v14 = xmmword_19D4E9530;
  v15 = 0x7FFFLL;
  v6 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:v12 modelTrainer:trainerCopy];
  [v6 inverseLabelMap];
  objc_claimAutoreleasedReturnValue();
  [v6 vocabularyMap];
  objc_claimAutoreleasedReturnValue();
  numberOfTrainingInstances = [dataSet numberOfTrainingInstances];
  configuration = [trainerCopy configuration];
  options = [configuration options];
  v10 = BOOLForKeyWithDefault(options, @"UseBidirectionalNeuralNetwork");

  createMRLModelFromTrainingDataSet(v6, v10, numberOfTrainingInstances, trainerCopy);
}

- (void)dealloc
{
  if (self->_mrlModel)
  {
    releaseMRLModel();
  }

  v3.receiver = self;
  v3.super_class = NLModelImplM;
  [(NLModelImplM *)&v3 dealloc];
}

- (id)modelData
{
  mrlModel = self->_mrlModel;
  if (mrlModel)
  {
    mrlModel = dataFromMRLModel();
    v2 = vars8;
  }

  return mrlModel;
}

- (id)predictedLabelForString:(id)string
{
  stringCopy = string;
  configuration = [(NLModelImplM *)self configuration];
  options = [configuration options];
  v7 = BOOLForKeyWithDefault(options, @"UseBidirectionalNeuralNetwork");

  mrlModel = self->_mrlModel;
  labelMap = [(NLModelImplM *)self labelMap];
  vocabularyMap = [(NLModelImplM *)self vocabularyMap];
  predictedMRLModelLabelForString(mrlModel, v7, labelMap, vocabularyMap, stringCopy);
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplM *)self predictedLabelForString:v5];

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
  stringCopy = string;
  configuration = [(NLModelImplM *)self configuration];
  options = [configuration options];
  v8 = BOOLForKeyWithDefault(options, @"UseBidirectionalNeuralNetwork");

  mrlModel = self->_mrlModel;
  labelMap = [(NLModelImplM *)self labelMap];
  vocabularyMap = [(NLModelImplM *)self vocabularyMap];
  predictedMRLModelLabelHypothesesForString(mrlModel, v8, labelMap, vocabularyMap, stringCopy);
}

- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count
{
  tokensCopy = tokens;
  v7 = [tokensCopy componentsJoinedByString:@" "];
  v8 = [(NLModelImplM *)self predictedLabelHypothesesForString:v7 maximumCount:count];

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