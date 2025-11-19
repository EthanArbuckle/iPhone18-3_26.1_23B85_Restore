@interface NLModelTrainingDataSet
- (NLModelTrainingDataSet)initWithConfiguration:(id)a3 numberOfTrainingInstances:(unint64_t)a4 numberOfValidationInstances:(unint64_t)a5 trainingDataSource:(void *)a6 validationDataSource:(void *)a7 instanceDataProvider:(id)a8;
- (id)dataProviderOfType:(int64_t)a3;
@end

@implementation NLModelTrainingDataSet

- (NLModelTrainingDataSet)initWithConfiguration:(id)a3 numberOfTrainingInstances:(unint64_t)a4 numberOfValidationInstances:(unint64_t)a5 trainingDataSource:(void *)a6 validationDataSource:(void *)a7 instanceDataProvider:(id)a8
{
  v14 = a3;
  v15 = a8;
  v43.receiver = self;
  v43.super_class = NLModelTrainingDataSet;
  v16 = [(NLDataSet *)&v43 initWithConfiguration:v14 trainingDataURL:0 validationDataURL:0 testDataURL:0];
  if (v16)
  {
    obj = [[NLPModelTrainingDataProvider alloc] initWithConfiguration:v14 numberOfInstances:a4 dataSource:a6 instanceDataProvider:v15];
    v41 = [[NLPModelTrainingDataProvider alloc] initWithConfiguration:v14 numberOfInstances:a5 dataSource:a7 instanceDataProvider:v15];
    v17 = [(NLDataSet *)v16 configuration];
    v18 = [v17 options];
    v19 = BOOLForKeyWithDefault(v18, @"UseCRF");

    v20 = [(NLDataSet *)v16 configuration];
    v21 = [v20 options];
    v22 = BOOLForKeyWithDefault(v21, @"UseRNN");

    v23 = [(NLDataSet *)v16 configuration];
    v24 = [v23 options];
    v25 = BOOLForKeyWithDefault(v24, @"UseTransfer");

    if (a4 >= 0xA && !a5)
    {
      v26 = [(NLDataSet *)v16 configuration];
      if (([v26 type] != 0) | v19 & 1)
      {

LABEL_7:
        v27 = dbl_19D4E9340[a4 > 0x63];
        if (a4 >> 5 > 0xC34)
        {
          v27 = 0.05;
        }

        v28 = splitIndexes(a4, v27, 0.0);
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

- (id)dataProviderOfType:(int64_t)a3
{
  if (!a3)
  {
    v4 = &OBJC_IVAR___NLModelTrainingDataSet__modelTrainingDataProvider;
LABEL_5:
    v5 = *(&self->super.super.isa + *v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___NLModelTrainingDataSet__modelValidationDataProvider;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end