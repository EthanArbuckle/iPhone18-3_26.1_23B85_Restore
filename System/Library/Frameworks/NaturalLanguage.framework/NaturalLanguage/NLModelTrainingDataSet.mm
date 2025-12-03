@interface NLModelTrainingDataSet
- (NLModelTrainingDataSet)initWithConfiguration:(id)configuration numberOfTrainingInstances:(unint64_t)instances numberOfValidationInstances:(unint64_t)validationInstances trainingDataSource:(void *)source validationDataSource:(void *)dataSource instanceDataProvider:(id)provider;
- (id)dataProviderOfType:(int64_t)type;
@end

@implementation NLModelTrainingDataSet

- (NLModelTrainingDataSet)initWithConfiguration:(id)configuration numberOfTrainingInstances:(unint64_t)instances numberOfValidationInstances:(unint64_t)validationInstances trainingDataSource:(void *)source validationDataSource:(void *)dataSource instanceDataProvider:(id)provider
{
  configurationCopy = configuration;
  providerCopy = provider;
  v43.receiver = self;
  v43.super_class = NLModelTrainingDataSet;
  v16 = [(NLDataSet *)&v43 initWithConfiguration:configurationCopy trainingDataURL:0 validationDataURL:0 testDataURL:0];
  if (v16)
  {
    obj = [[NLPModelTrainingDataProvider alloc] initWithConfiguration:configurationCopy numberOfInstances:instances dataSource:source instanceDataProvider:providerCopy];
    v41 = [[NLPModelTrainingDataProvider alloc] initWithConfiguration:configurationCopy numberOfInstances:validationInstances dataSource:dataSource instanceDataProvider:providerCopy];
    configuration = [(NLDataSet *)v16 configuration];
    options = [configuration options];
    v19 = BOOLForKeyWithDefault(options, @"UseCRF");

    configuration2 = [(NLDataSet *)v16 configuration];
    options2 = [configuration2 options];
    v22 = BOOLForKeyWithDefault(options2, @"UseRNN");

    configuration3 = [(NLDataSet *)v16 configuration];
    options3 = [configuration3 options];
    v25 = BOOLForKeyWithDefault(options3, @"UseTransfer");

    if (instances >= 0xA && !validationInstances)
    {
      configuration4 = [(NLDataSet *)v16 configuration];
      if (([configuration4 type] != 0) | v19 & 1)
      {

LABEL_7:
        v27 = dbl_19D4E9340[instances > 0x63];
        if (instances >> 5 > 0xC34)
        {
          v27 = 0.05;
        }

        v28 = splitIndexes(instances, v27, 0.0);
        v29 = [NLSplitDataProvider alloc];
        v30 = [v28 objectAtIndex:0];
        v31 = obj;
        v32 = [(NLSplitDataProvider *)v29 initWithDataProvider:obj indexes:v30];
        modelTrainingDataProvider = v16->_modelTrainingDataProvider;
        v16->_modelTrainingDataProvider = v32;

        v34 = [NLSplitDataProvider alloc];
        v35 = [v28 objectAtIndex:1];
        v36 = [(NLSplitDataProvider *)v34 initWithDataProvider:obj indexes:v35];
        modelValidationDataProvider = v16->_modelValidationDataProvider;
        v16->_modelValidationDataProvider = v36;

        v38 = v41;
        goto LABEL_11;
      }

      if ((v22 | v25))
      {
        goto LABEL_7;
      }
    }

    v31 = obj;
    objc_storeStrong(&v16->_modelTrainingDataProvider, obj);
    v38 = v41;
    v39 = v41;
    v28 = v16->_modelValidationDataProvider;
    v16->_modelValidationDataProvider = &v39->super;
LABEL_11:
  }

  return v16;
}

- (id)dataProviderOfType:(int64_t)type
{
  if (!type)
  {
    v4 = &OBJC_IVAR___NLModelTrainingDataSet__modelTrainingDataProvider;
LABEL_5:
    v5 = *(&self->super.super.isa + *v4);

    return v5;
  }

  if (type == 1)
  {
    v4 = &OBJC_IVAR___NLModelTrainingDataSet__modelValidationDataProvider;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end