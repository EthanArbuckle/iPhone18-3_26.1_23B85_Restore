@interface NLModelImplL
- (NLModelImplL)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10;
- (NLModelImplL)initWithModelTrainer:(id)a3 error:(id *)a4;
- (NLModelImplL)initWithOwnedModelObject:(const void *)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 numberOfTrainingInstances:(unint64_t)a8;
- (id)modelData;
- (id)predictedLabelForString:(id)a3;
- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelsForTokens:(id)a3;
- (void)dealloc;
@end

@implementation NLModelImplL

- (NLModelImplL)initWithOwnedModelObject:(const void *)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 numberOfTrainingInstances:(unint64_t)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a3)
  {
    v28.receiver = self;
    v28.super_class = NLModelImplL;
    v18 = [(NLModelImplL *)&v28 init];
    self = v18;
    if (v18)
    {
      v18->_maxEntModel = a3;
      v19 = [v14 copy];
      configuration = self->_configuration;
      self->_configuration = v19;

      v21 = [v15 copy];
      labelMap = self->_labelMap;
      self->_labelMap = v21;

      v23 = [v16 copy];
      vocabularyMap = self->_vocabularyMap;
      self->_vocabularyMap = v23;

      v25 = [v17 copy];
      documentFrequencyMap = self->_documentFrequencyMap;
      self->_documentFrequencyMap = v25;

      self->_numberOfTrainingInstances = a8;
    }
  }

  return self;
}

- (NLModelImplL)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  createMaxEntModelFromData(a3);
}

- (NLModelImplL)initWithModelTrainer:(id)a3 error:(id *)a4
{
  v4 = a3;
  [v4 configuration];
  objc_claimAutoreleasedReturnValue();
  v5 = [v4 dataSet];
  v9[0] = xmmword_19D4E9090;
  v9[1] = vdupq_n_s64(0x400uLL);
  v9[2] = xmmword_19D4E90A0;
  v6 = [NLDataSet dataSetWithDataSet:v5 constraintParameters:v9 modelTrainer:v4];
  [v6 inverseLabelMap];
  objc_claimAutoreleasedReturnValue();
  [v6 vocabularyMap];
  objc_claimAutoreleasedReturnValue();
  [v6 documentFrequencyMap];
  objc_claimAutoreleasedReturnValue();
  [v5 numberOfTrainingInstances];
  v7 = [v4 options];
  unsignedIntegerForKey(v7, @"MaximumIterations", 150);

  createMaxEntModelFromTrainingDataSet(v6, v4);
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

- (id)predictedLabelForString:(id)a3
{
  maxEntModel = self->_maxEntModel;
  v5 = a3;
  v6 = [(NLModelImplL *)self labelMap];
  v7 = [(NLModelImplL *)self vocabularyMap];
  v8 = [(NLModelImplL *)self documentFrequencyMap];
  v9 = predictedMaxEntModelLabelForString(maxEntModel, v6, v7, v8, [(NLModelImplL *)self numberOfTrainingInstances], v5);

  return v9;
}

- (id)predictedLabelsForTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [(NLModelImplL *)self predictedLabelForString:v5];

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
  v8 = [(NLModelImplL *)self labelMap];
  v9 = [(NLModelImplL *)self vocabularyMap];
  v10 = [(NLModelImplL *)self documentFrequencyMap];
  v11 = predictedMaxEntModelLabelHypothesesForString(maxEntModel, v8, v9, v10, [(NLModelImplL *)self numberOfTrainingInstances], v7);

  v12 = topHypotheses(v11, a4);

  return v12;
}

- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 componentsJoinedByString:@" "];
  v8 = [(NLModelImplL *)self predictedLabelHypothesesForString:v7 maximumCount:a4];

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