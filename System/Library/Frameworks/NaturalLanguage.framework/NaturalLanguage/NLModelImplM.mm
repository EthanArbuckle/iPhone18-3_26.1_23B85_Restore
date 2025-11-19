@interface NLModelImplM
- (NLModelImplM)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10;
- (NLModelImplM)initWithModelTrainer:(id)a3 error:(id *)a4;
- (NLModelImplM)initWithOwnedModelObject:(const void *)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 numberOfTrainingInstances:(unint64_t)a7;
- (id)modelData;
- (id)predictedLabelForString:(id)a3;
- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelsForTokens:(id)a3;
- (void)dealloc;
@end

@implementation NLModelImplM

- (NLModelImplM)initWithOwnedModelObject:(const void *)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 numberOfTrainingInstances:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a3)
  {
    v23.receiver = self;
    v23.super_class = NLModelImplM;
    v15 = [(NLModelImplM *)&v23 init];
    self = v15;
    if (v15)
    {
      v15->_mrlModel = a3;
      v16 = [v12 copy];
      configuration = self->_configuration;
      self->_configuration = v16;

      v18 = [v13 copy];
      labelMap = self->_labelMap;
      self->_labelMap = v18;

      v20 = [v14 copy];
      vocabularyMap = self->_vocabularyMap;
      self->_vocabularyMap = v20;

      self->_numberOfTrainingInstances = a7;
    }
  }

  return self;
}

- (NLModelImplM)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10
{
  v26[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  MRLModelFromData = createMRLModelFromData(a3);
  v19 = unsignedIntegerForKey(v17, 0x1F10C67C0, 0);

  if (MRLModelFromData)
  {
    self = [(NLModelImplM *)self initWithOwnedModelObject:MRLModelFromData configuration:v14 labelMap:v15 vocabularyMap:v16 numberOfTrainingInstances:v19];
    v20 = self;
  }

  else
  {
    if (a10)
    {
      v21 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"Failed to load model file, invalid RNN model data";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *a10 = [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v22];
    }

    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NLModelImplM)initWithModelTrainer:(id)a3 error:(id *)a4
{
  memset(&v12[1], 0, 7);
  v4 = a3;
  [v4 configuration];
  objc_claimAutoreleasedReturnValue();
  v5 = [v4 dataSet];
  v12[0] = 1;
  v13 = xmmword_19D4E9520;
  v14 = xmmword_19D4E9530;
  v15 = 0x7FFFLL;
  v6 = [NLDataSet dataSetWithDataSet:v5 constraintParameters:v12 modelTrainer:v4];
  [v6 inverseLabelMap];
  objc_claimAutoreleasedReturnValue();
  [v6 vocabularyMap];
  objc_claimAutoreleasedReturnValue();
  v7 = [v5 numberOfTrainingInstances];
  v8 = [v4 configuration];
  v9 = [v8 options];
  v10 = BOOLForKeyWithDefault(v9, @"UseBidirectionalNeuralNetwork");

  createMRLModelFromTrainingDataSet(v6, v10, v7, v4);
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

- (id)predictedLabelForString:(id)a3
{
  v4 = a3;
  v5 = [(NLModelImplM *)self configuration];
  v6 = [v5 options];
  v7 = BOOLForKeyWithDefault(v6, @"UseBidirectionalNeuralNetwork");

  mrlModel = self->_mrlModel;
  v9 = [(NLModelImplM *)self labelMap];
  v10 = [(NLModelImplM *)self vocabularyMap];
  predictedMRLModelLabelForString(mrlModel, v7, v9, v10, v4);
}

- (id)predictedLabelsForTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [(NLModelImplM *)self predictedLabelForString:v5];

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
  v5 = a3;
  v6 = [(NLModelImplM *)self configuration];
  v7 = [v6 options];
  v8 = BOOLForKeyWithDefault(v7, @"UseBidirectionalNeuralNetwork");

  mrlModel = self->_mrlModel;
  v10 = [(NLModelImplM *)self labelMap];
  v11 = [(NLModelImplM *)self vocabularyMap];
  predictedMRLModelLabelHypothesesForString(mrlModel, v8, v10, v11, v5);
}

- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 componentsJoinedByString:@" "];
  v8 = [(NLModelImplM *)self predictedLabelHypothesesForString:v7 maximumCount:a4];

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