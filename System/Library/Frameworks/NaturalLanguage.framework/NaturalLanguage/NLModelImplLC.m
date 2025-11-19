@interface NLModelImplLC
- (NLModelImplLC)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10;
- (NLModelImplLC)initWithModelTrainer:(id)a3 error:(id *)a4;
- (id)predictedLabelForString:(id)a3;
- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelsForTokens:(id)a3;
- (void)dealloc;
@end

@implementation NLModelImplLC

- (NLModelImplLC)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10
{
  v40[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  CRFSuiteMaxEntModelFromData = createCRFSuiteMaxEntModelFromData(v16);
  v23 = unsignedIntegerForKey(v21, 0x1F10C67C0, 0);

  if (CRFSuiteMaxEntModelFromData && (v38.receiver = self, v38.super_class = NLModelImplLC, v24 = [(NLModelImplLC *)&v38 init], (self = v24) != 0))
  {
    v24->_maxEntModel = CRFSuiteMaxEntModelFromData;
    v25 = [v17 copy];
    configuration = self->_configuration;
    self->_configuration = v25;

    v27 = [v18 copy];
    labelMap = self->_labelMap;
    self->_labelMap = v27;

    v29 = [v19 copy];
    vocabularyMap = self->_vocabularyMap;
    self->_vocabularyMap = v29;

    v31 = [v20 copy];
    documentFrequencyMap = self->_documentFrequencyMap;
    self->_documentFrequencyMap = v31;

    self->_numberOfTrainingInstances = v23;
    objc_storeStrong(&self->_modelData, a3);
    self = self;
    v33 = self;
  }

  else
  {
    if (a10)
    {
      v34 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40[0] = @"Failed to load model file, invalid MaxEnt model data";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *a10 = [v34 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v35];
    }

    v33 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v33;
}

- (NLModelImplLC)initWithModelTrainer:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v4 dataSet];
  v22[0] = xmmword_19D4E9090;
  v22[1] = vdupq_n_s64(0x400uLL);
  v22[2] = xmmword_19D4E90A0;
  v7 = [NLDataSet dataSetWithDataSet:v6 constraintParameters:v22 modelTrainer:v4];
  v8 = [v7 inverseLabelMap];
  v9 = [v7 vocabularyMap];
  v10 = [v7 documentFrequencyMap];
  v11 = [v6 numberOfTrainingInstances];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting MaxEnt training with %llu samples", v11];
  [v4 logMessage:v12];

  Current = CFAbsoluteTimeGetCurrent();
  v14 = createCRFSuiteMaxEntModelDataFromTrainingDataSet(v7);
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished MaxEnt training in %.2f seconds", CFAbsoluteTimeGetCurrent() - Current];
  [v4 logMessage:v15];

  v23 = 0x1F10C67C0;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v24[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v18 = [(NLModelImplLC *)self initWithModelData:v14 configuration:v5 labelMap:v8 vocabularyMap:v9 documentFrequencyMap:v10 customEmbeddingData:0 trainingInfo:v17 error:0];

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

- (id)predictedLabelForString:(id)a3
{
  maxEntModel = self->_maxEntModel;
  v5 = a3;
  v6 = [(NLModelImplLC *)self labelMap];
  v7 = [(NLModelImplLC *)self vocabularyMap];
  v8 = [(NLModelImplLC *)self documentFrequencyMap];
  v9 = predictedCRFSuiteMaxEntModelLabelForString(maxEntModel, v6, v7, v8, [(NLModelImplLC *)self numberOfTrainingInstances], v5);

  return v9;
}

- (id)predictedLabelsForTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [(NLModelImplLC *)self predictedLabelForString:v5];

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

- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4
{
  maxEntModel = self->_maxEntModel;
  v7 = a3;
  v8 = [(NLModelImplLC *)self labelMap];
  v9 = [(NLModelImplLC *)self vocabularyMap];
  v10 = [(NLModelImplLC *)self documentFrequencyMap];
  v11 = predictedCRFSuiteMaxEntModelLabelHypothesesForString(maxEntModel, v8, v9, v10, [(NLModelImplLC *)self numberOfTrainingInstances], v7);

  v12 = topHypotheses(v11, a4);

  return v12;
}

- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 componentsJoinedByString:@" "];
  v8 = [(NLModelImplLC *)self predictedLabelHypothesesForString:v7 maximumCount:a4];

  v9 = [MEMORY[0x1E695DF70] array];
  if ([v6 count])
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
      [v9 addObject:v11];
      ++v10;
    }

    while (v10 < [v6 count]);
  }

  return v9;
}

@end