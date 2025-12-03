@interface SNSoundPrintALaughterModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (SNSoundPrintALaughterModel)init;
- (SNSoundPrintALaughterModel)initWithConfiguration:(id)configuration error:(id *)error;
- (SNSoundPrintALaughterModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (SNSoundPrintALaughterModel)initWithContentsOfURL:(id)l error:(id *)error;
- (SNSoundPrintALaughterModel)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput1:(id)input1 stateIn:(id)in detectedHistoryIn:(id)historyIn error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation SNSoundPrintALaughterModel

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SNSoundPrintALaughterModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1C9788000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not load SNSoundPrintALaughterModel.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (SNSoundPrintALaughterModel)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = SNSoundPrintALaughterModel;
    v6 = [(SNSoundPrintALaughterModel *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SNSoundPrintALaughterModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(SNSoundPrintALaughterModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (SNSoundPrintALaughterModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(SNSoundPrintALaughterModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (SNSoundPrintALaughterModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(SNSoundPrintALaughterModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SNSoundPrintALaughterModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(SNSoundPrintALaughterModel *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E695FE90];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A8CA2C;
  v10[3] = &unk_1E8347710;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x1E695FF08];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(SNSoundPrintALaughterModel *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(SNSoundPrintALaughterModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [SNSoundPrintALaughterModelOutput alloc];
    v13 = [v11 featureValueForName:@"input_1"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"Confidence"];
    multiArrayValue2 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"Detected"];
    multiArrayValue3 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"detectedHistoryOut"];
    multiArrayValue4 = [v19 multiArrayValue];
    v21 = [(SNSoundPrintALaughterModelOutput *)v12 initWithInput_1:multiArrayValue Confidence:multiArrayValue2 Detected:multiArrayValue3 detectedHistoryOut:multiArrayValue4];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(SNSoundPrintALaughterModel *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A8CD9C;
  v10[3] = &unk_1E8347738;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(SNSoundPrintALaughterModel *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C9A8D018;
  v13[3] = &unk_1E8347738;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromInput1:(id)input1 stateIn:(id)in detectedHistoryIn:(id)historyIn error:(id *)error
{
  historyInCopy = historyIn;
  inCopy = in;
  input1Copy = input1;
  v13 = [[SNSoundPrintALaughterModelInput alloc] initWithInput1:input1Copy stateIn:inCopy detectedHistoryIn:historyInCopy];

  v14 = [(SNSoundPrintALaughterModel *)self predictionFromFeatures:v13 error:error];

  return v14;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  model = [(SNSoundPrintALaughterModel *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v26 = v10;
      v27 = optionsCopy;
      v28 = inputsCopy;
      v29 = v13;
      v14 = 0;
      v30 = v12;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v26, v27, v28}];
        v16 = [SNSoundPrintALaughterModelOutput alloc];
        v31 = [v15 featureValueForName:@"input_1"];
        multiArrayValue = [v31 multiArrayValue];
        v18 = [v15 featureValueForName:@"Confidence"];
        multiArrayValue2 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"Detected"];
        multiArrayValue3 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:@"detectedHistoryOut"];
        multiArrayValue4 = [v22 multiArrayValue];
        v24 = [(SNSoundPrintALaughterModelOutput *)v16 initWithInput_1:multiArrayValue Confidence:multiArrayValue2 Detected:multiArrayValue3 detectedHistoryOut:multiArrayValue4];

        v13 = v29;
        v12 = v30;

        [v29 addObject:v24];
        ++v14;
      }

      while (v14 < [v30 count]);
      optionsCopy = v27;
      inputsCopy = v28;
      v10 = v26;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end