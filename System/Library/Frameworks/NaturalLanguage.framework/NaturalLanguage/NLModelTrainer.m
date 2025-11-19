@interface NLModelTrainer
+ (id)modelTrainerWithConfiguration:(id)a3 dataSet:(id)a4 options:(id)a5 delegate:(id)a6;
- (BOOL)shouldStop;
- (Class)modelImplClass;
- (NLModel)trainedModel;
- (NLModelTrainer)initWithConfiguration:(id)a3 dataSet:(id)a4 options:(id)a5 delegate:(id)a6;
- (NSDictionary)testResults;
- (void)logMessage:(id)a3;
- (void)trainModel;
@end

@implementation NLModelTrainer

- (NLModelTrainer)initWithConfiguration:(id)a3 dataSet:(id)a4 options:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v22.receiver = self;
    v22.super_class = NLModelTrainer;
    v14 = [(NLModelTrainer *)&v22 init];
    if (v14)
    {
      v15 = [v10 copy];
      configuration = v14->_configuration;
      v14->_configuration = v15;

      objc_storeStrong(&v14->_dataSet, a4);
      v17 = [v12 copy];
      options = v14->_options;
      v14->_options = v17;

      objc_storeStrong(&v14->_delegate, a6);
      if (v13)
      {
        v14->_delegateRespondsToLogMessage = objc_opt_respondsToSelector() & 1;
        v19 = objc_opt_respondsToSelector();
      }

      else
      {
        v19 = 0;
        v14->_delegateRespondsToLogMessage = 0;
      }

      v14->_delegateRespondsToShouldStop = v19 & 1;
    }

    self = v14;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)modelTrainerWithConfiguration:(id)a3 dataSet:(id)a4 options:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithConfiguration:v13 dataSet:v12 options:v11 delegate:v10];

  return v14;
}

- (Class)modelImplClass
{
  v3 = [(NLModelTrainer *)self configuration];
  v4 = [v3 options];
  v5 = BOOLForKeyWithDefault(v4, @"UseCRF");

  v6 = [(NLModelTrainer *)self configuration];
  v7 = [v6 options];
  v8 = BOOLForKeyWithDefault(v7, @"UseRNN");

  v9 = [(NLModelTrainer *)self configuration];
  v10 = [v9 options];
  v11 = BOOLForKeyWithDefault(v10, @"UseTransfer");

  v12 = getenv("NLUseCRFSuiteMaxEnt");
  v13 = [(NLModelTrainer *)self configuration];
  v14 = [v13 options];
  v15 = [v14 objectForKey:@"Algorithm"];

  if (v15)
  {
    v5 = [v15 isEqualToString:@"CRF"];
    v8 = [v15 isEqualToString:@"RNN"];
    v11 = [v15 isEqualToString:@"Transfer"];
  }

  v16 = [(NLModelTrainer *)self configuration];
  v17 = [v16 type];

  if (v17 == 1)
  {
    v20 = off_1E76288B0;
    if (v11)
    {
      v20 = off_1E76288B8;
    }
  }

  else
  {
    if (v17)
    {
      v22 = 0;
      goto LABEL_18;
    }

    v18 = off_1E76288B0;
    if (v8)
    {
      v18 = off_1E76288A8;
    }

    v19 = off_1E7628898;
    if (v11)
    {
      v19 = off_1E76288C0;
    }

    if (v12)
    {
      v19 = off_1E76288A0;
    }

    if ((v8 | v5))
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }
  }

  v21 = *v20;
  v22 = objc_opt_class();
LABEL_18:
  v23 = v22;

  return v22;
}

- (void)trainModel
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [objc_alloc(-[NLModelTrainer modelImplClass](self "modelImplClass"))];
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v6 = [NLModel alloc];
    v7 = [(NLModelTrainer *)self configuration];
    v8 = [(NLModel *)v6 initWithConfiguration:v7 modelImpl:v3];

    [(NLModelTrainer *)self setModel:v8];
  }

  else
  {
    if (!v4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14[0] = @"Failed to train model";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v5 = [v9 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v10];
    }

    [(NLModelTrainer *)self setTrainingError:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NLModel)trainedModel
{
  model = self->_model;
  if (!model)
  {
    if (self->_trainingError)
    {
      model = 0;
    }

    else
    {
      [(NLModelTrainer *)self logMessage:@"Tokenizing data and extracting features"];
      v4 = [(NLModelTrainer *)self dataSet];
      v5 = [v4 dataProviderOfType:0];
      [v5 generateMapsWithModelTrainer:self];

      [(NLModelTrainer *)self trainModel];
      model = self->_model;
    }
  }

  return model;
}

- (NSDictionary)testResults
{
  v3 = [(NLModelTrainer *)self model];
  v4 = [(NLModelTrainer *)self dataSet];
  v5 = [v3 testResultsWithDataSet:v4];

  return v5;
}

- (void)logMessage:(id)a3
{
  if (self->_delegateRespondsToLogMessage)
  {
    [(NLModelTrainerDelegate *)self->_delegate modelTrainer:self logMessage:a3];
  }
}

- (BOOL)shouldStop
{
  if (self->_delegateRespondsToShouldStop)
  {
    return [(NLModelTrainerDelegate *)self->_delegate modelTrainerShouldStop:self];
  }

  else
  {
    return 0;
  }
}

@end