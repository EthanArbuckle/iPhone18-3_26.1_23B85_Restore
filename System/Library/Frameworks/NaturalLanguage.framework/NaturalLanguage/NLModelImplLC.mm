@interface NLModelImplLC
- (NLModelImplLC)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplLC)initWithModelTrainer:(id)trainer error:(id *)error;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsForTokens:(id)tokens;
- (void)dealloc;
@end

@implementation NLModelImplLC

- (NLModelImplLC)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v40[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  frequencyMapCopy = frequencyMap;
  infoCopy = info;
  CRFSuiteMaxEntModelFromData = createCRFSuiteMaxEntModelFromData(dataCopy);
  v23 = unsignedIntegerForKey(infoCopy, 0x1F10C67C0, 0);

  if (CRFSuiteMaxEntModelFromData && (v38.receiver = self, v38.super_class = NLModelImplLC, v24 = [(NLModelImplLC *)&v38 init], (self = v24) != 0))
  {
    v24->_maxEntModel = CRFSuiteMaxEntModelFromData;
    v25 = [configurationCopy copy];
    configuration = self->_configuration;
    self->_configuration = v25;

    v27 = [mapCopy copy];
    labelMap = self->_labelMap;
    self->_labelMap = v27;

    v29 = [vocabularyMapCopy copy];
    vocabularyMap = self->_vocabularyMap;
    self->_vocabularyMap = v29;

    v31 = [frequencyMapCopy copy];
    documentFrequencyMap = self->_documentFrequencyMap;
    self->_documentFrequencyMap = v31;

    self->_numberOfTrainingInstances = v23;
    objc_storeStrong(&self->_modelData, data);
    self = self;
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40[0] = @"Failed to load model file, invalid MaxEnt model data";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *error = [v34 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v35];
    }

    selfCopy = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NLModelImplLC)initWithModelTrainer:(id)trainer error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  trainerCopy = trainer;
  configuration = [trainerCopy configuration];
  dataSet = [trainerCopy dataSet];
  v22[0] = xmmword_19D4E9090;
  v22[1] = vdupq_n_s64(0x400uLL);
  v22[2] = xmmword_19D4E90A0;
  v7 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:v22 modelTrainer:trainerCopy];
  inverseLabelMap = [v7 inverseLabelMap];
  vocabularyMap = [v7 vocabularyMap];
  documentFrequencyMap = [v7 documentFrequencyMap];
  numberOfTrainingInstances = [dataSet numberOfTrainingInstances];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting MaxEnt training with %llu samples", numberOfTrainingInstances];
  [trainerCopy logMessage:v12];

  Current = CFAbsoluteTimeGetCurrent();
  v14 = createCRFSuiteMaxEntModelDataFromTrainingDataSet(v7);
  current = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished MaxEnt training in %.2f seconds", CFAbsoluteTimeGetCurrent() - Current];
  [trainerCopy logMessage:current];

  v23 = 0x1F10C67C0;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfTrainingInstances];
  v24[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v18 = [(NLModelImplLC *)self initWithModelData:v14 configuration:configuration labelMap:inverseLabelMap vocabularyMap:vocabularyMap documentFrequencyMap:documentFrequencyMap customEmbeddingData:0 trainingInfo:v17 error:0];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)dealloc
{
  if (self->_maxEntModel)
  {
    releaseCRFSuiteMaxEntModel();
  }

  v3.receiver = self;
  v3.super_class = NLModelImplLC;
  [(NLModelImplLC *)&v3 dealloc];
}

- (id)predictedLabelForString:(id)string
{
  maxEntModel = self->_maxEntModel;
  stringCopy = string;
  labelMap = [(NLModelImplLC *)self labelMap];
  vocabularyMap = [(NLModelImplLC *)self vocabularyMap];
  documentFrequencyMap = [(NLModelImplLC *)self documentFrequencyMap];
  v9 = predictedCRFSuiteMaxEntModelLabelForString(maxEntModel, labelMap, vocabularyMap, documentFrequencyMap, [(NLModelImplLC *)self numberOfTrainingInstances], stringCopy);

  return v9;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplLC *)self predictedLabelForString:v5];

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
  labelMap = [(NLModelImplLC *)self labelMap];
  vocabularyMap = [(NLModelImplLC *)self vocabularyMap];
  documentFrequencyMap = [(NLModelImplLC *)self documentFrequencyMap];
  v11 = predictedCRFSuiteMaxEntModelLabelHypothesesForString(maxEntModel, labelMap, vocabularyMap, documentFrequencyMap, [(NLModelImplLC *)self numberOfTrainingInstances], stringCopy);

  v12 = topHypotheses(v11, count);

  return v12;
}

- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count
{
  tokensCopy = tokens;
  v7 = [tokensCopy componentsJoinedByString:@" "];
  v8 = [(NLModelImplLC *)self predictedLabelHypothesesForString:v7 maximumCount:count];

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