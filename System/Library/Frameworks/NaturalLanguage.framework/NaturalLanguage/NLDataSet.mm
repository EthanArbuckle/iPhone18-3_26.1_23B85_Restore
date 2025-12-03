@interface NLDataSet
+ (id)dataSetWithDataSet:(id)set constraintParameters:(_NLConstraintParameters *)parameters modelTrainer:(id)trainer;
- (NLDataSet)initWithConfiguration:(id)configuration dataProvider:(id)provider validationSplit:(double)split testingSplit:(double)testingSplit;
- (NLDataSet)initWithConfiguration:(id)configuration trainingDataProvider:(id)provider validationDataProvider:(id)dataProvider testDataProvider:(id)testDataProvider;
- (NLDataSet)initWithConfiguration:(id)configuration trainingDataURL:(id)l validationDataURL:(id)rL testDataURL:(id)uRL;
- (id)dataProviderOfType:(int64_t)type;
- (id)documentFrequencyMap;
- (id)inverseLabelMap;
- (id)labelMap;
- (id)testInstanceAtIndex:(unint64_t)index;
- (id)trainingInstanceAtIndex:(unint64_t)index;
- (id)validationInstanceAtIndex:(unint64_t)index;
- (id)vocabularyMap;
- (unint64_t)numberOfLabels;
- (unint64_t)numberOfTestInstances;
- (unint64_t)numberOfTrainingInstances;
- (unint64_t)numberOfValidationInstances;
- (unint64_t)numberOfVocabularyEntries;
@end

@implementation NLDataSet

- (NLDataSet)initWithConfiguration:(id)configuration trainingDataProvider:(id)provider validationDataProvider:(id)dataProvider testDataProvider:(id)testDataProvider
{
  configurationCopy = configuration;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  testDataProviderCopy = testDataProvider;
  v18.receiver = self;
  v18.super_class = NLDataSet;
  v14 = [(NLDataSet *)&v18 init];
  if (v14)
  {
    v15 = [configurationCopy copy];
    configuration = v14->_configuration;
    v14->_configuration = v15;

    objc_storeStrong(&v14->_trainingDataProvider, provider);
    objc_storeStrong(&v14->_validationDataProvider, dataProvider);
    objc_storeStrong(&v14->_testDataProvider, testDataProvider);
  }

  return v14;
}

- (NLDataSet)initWithConfiguration:(id)configuration trainingDataURL:(id)l validationDataURL:(id)rL testDataURL:(id)uRL
{
  uRLCopy = uRL;
  rLCopy = rL;
  lCopy = l;
  configurationCopy = configuration;
  v14 = [[NLDataProvider alloc] initWithConfiguration:configurationCopy dataURL:lCopy];

  v15 = [[NLDataProvider alloc] initWithConfiguration:configurationCopy dataURL:rLCopy];
  v16 = [[NLDataProvider alloc] initWithConfiguration:configurationCopy dataURL:uRLCopy];

  v17 = [(NLDataSet *)self initWithConfiguration:configurationCopy trainingDataProvider:v14 validationDataProvider:v15 testDataProvider:v16];
  return v17;
}

- (NLDataSet)initWithConfiguration:(id)configuration dataProvider:(id)provider validationSplit:(double)split testingSplit:(double)testingSplit
{
  providerCopy = provider;
  configurationCopy = configuration;
  v12 = splitIndexes([providerCopy numberOfInstances], split, testingSplit);
  v13 = [NLSplitDataProvider alloc];
  v14 = [v12 objectAtIndex:0];
  v15 = [(NLSplitDataProvider *)v13 initWithDataProvider:providerCopy indexes:v14];

  v16 = [NLSplitDataProvider alloc];
  v17 = [v12 objectAtIndex:1];
  v18 = [(NLSplitDataProvider *)v16 initWithDataProvider:providerCopy indexes:v17];

  v19 = [NLSplitDataProvider alloc];
  v20 = [v12 objectAtIndex:2];
  v21 = [(NLSplitDataProvider *)v19 initWithDataProvider:providerCopy indexes:v20];

  v22 = [(NLDataSet *)self initWithConfiguration:configurationCopy trainingDataProvider:v15 validationDataProvider:v18 testDataProvider:v21];
  return v22;
}

+ (id)dataSetWithDataSet:(id)set constraintParameters:(_NLConstraintParameters *)parameters modelTrainer:(id)trainer
{
  trainerCopy = trainer;
  setCopy = set;
  v9 = [NLConstrainedDataProvider alloc];
  v10 = [setCopy dataProviderOfType:0];
  v11 = *&parameters->maxSplitTokens;
  v19[0] = *&parameters->splitSentences;
  v19[1] = v11;
  v19[2] = *&parameters->maxLabels;
  v12 = [(NLConstrainedDataProvider *)v9 initWithDataProvider:v10 parameters:v19 modelTrainer:trainerCopy];

  v13 = [setCopy dataProviderOfType:1];
  v14 = [setCopy dataProviderOfType:2];
  v15 = [NLDataSet alloc];
  configuration = [setCopy configuration];

  v17 = [(NLDataSet *)v15 initWithConfiguration:configuration trainingDataProvider:v12 validationDataProvider:v13 testDataProvider:v14];

  return v17;
}

- (id)dataProviderOfType:(int64_t)type
{
  if (type <= 2)
  {
    self = *(&self->_trainingDataProvider + type);
  }

  return self;
}

- (unint64_t)numberOfTrainingInstances
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  numberOfInstances = [v2 numberOfInstances];

  return numberOfInstances;
}

- (unint64_t)numberOfValidationInstances
{
  v2 = [(NLDataSet *)self dataProviderOfType:1];
  numberOfInstances = [v2 numberOfInstances];

  return numberOfInstances;
}

- (unint64_t)numberOfTestInstances
{
  v2 = [(NLDataSet *)self dataProviderOfType:2];
  numberOfInstances = [v2 numberOfInstances];

  return numberOfInstances;
}

- (id)trainingInstanceAtIndex:(unint64_t)index
{
  v4 = [(NLDataSet *)self dataProviderOfType:0];
  v5 = [v4 instanceAtIndex:index];

  return v5;
}

- (id)validationInstanceAtIndex:(unint64_t)index
{
  v4 = [(NLDataSet *)self dataProviderOfType:1];
  v5 = [v4 instanceAtIndex:index];

  return v5;
}

- (id)testInstanceAtIndex:(unint64_t)index
{
  v4 = [(NLDataSet *)self dataProviderOfType:2];
  v5 = [v4 instanceAtIndex:index];

  return v5;
}

- (id)labelMap
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  labelMap = [v2 labelMap];

  return labelMap;
}

- (id)inverseLabelMap
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  inverseLabelMap = [v2 inverseLabelMap];

  return inverseLabelMap;
}

- (id)vocabularyMap
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  vocabularyMap = [v2 vocabularyMap];

  return vocabularyMap;
}

- (id)documentFrequencyMap
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  documentFrequencyMap = [v2 documentFrequencyMap];

  return documentFrequencyMap;
}

- (unint64_t)numberOfLabels
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  numberOfLabels = [v2 numberOfLabels];

  return numberOfLabels;
}

- (unint64_t)numberOfVocabularyEntries
{
  v2 = [(NLDataSet *)self dataProviderOfType:0];
  numberOfVocabularyEntries = [v2 numberOfVocabularyEntries];

  return numberOfVocabularyEntries;
}

@end