@interface SNSoundPrintASmokeAlarmModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (SNSoundPrintASmokeAlarmModel)init;
- (SNSoundPrintASmokeAlarmModel)initWithConfiguration:(id)configuration error:(id *)error;
- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)l error:(id *)error;
- (SNSoundPrintASmokeAlarmModel)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput1:(id)input1 stateIn:(id)in thresholdedHistoryIn:(id)historyIn detectedHistoryIn:(id)detectedHistoryIn error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation SNSoundPrintASmokeAlarmModel

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SNSoundPrintASmokeAlarmModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1C9788000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not load SNSoundPrintASmokeAlarmModel.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (SNSoundPrintASmokeAlarmModel)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = SNSoundPrintASmokeAlarmModel;
    v6 = [(SNSoundPrintASmokeAlarmModel *)&v10 init];
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

- (SNSoundPrintASmokeAlarmModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(SNSoundPrintASmokeAlarmModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (SNSoundPrintASmokeAlarmModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(SNSoundPrintASmokeAlarmModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(SNSoundPrintASmokeAlarmModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(SNSoundPrintASmokeAlarmModel *)self initWithMLModel:v6];
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
  v10[2] = sub_1C9A8510C;
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
  v9 = [(SNSoundPrintASmokeAlarmModel *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(SNSoundPrintASmokeAlarmModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [SNSoundPrintASmokeAlarmModelOutput alloc];
    v26 = [v11 featureValueForName:@"input_1"];
    multiArrayValue = [v26 multiArrayValue];
    v25 = [v11 featureValueForName:@"Confidence"];
    multiArrayValue2 = [v25 multiArrayValue];
    v15 = [v11 featureValueForName:@"Detected"];
    multiArrayValue3 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"thresholdedHistoryOut"];
    multiArrayValue4 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"detectedHistoryOut"];
    multiArrayValue5 = [v19 multiArrayValue];
    v21 = v12;
    v22 = multiArrayValue;
    v23 = [(SNSoundPrintASmokeAlarmModelOutput *)v21 initWithInput_1:multiArrayValue Confidence:multiArrayValue2 Detected:multiArrayValue3 thresholdedHistoryOut:multiArrayValue4 detectedHistoryOut:multiArrayValue5];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(SNSoundPrintASmokeAlarmModel *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A854C0;
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
  model = [(SNSoundPrintASmokeAlarmModel *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C9A85778;
  v13[3] = &unk_1E8347738;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromInput1:(id)input1 stateIn:(id)in thresholdedHistoryIn:(id)historyIn detectedHistoryIn:(id)detectedHistoryIn error:(id *)error
{
  detectedHistoryInCopy = detectedHistoryIn;
  historyInCopy = historyIn;
  inCopy = in;
  input1Copy = input1;
  v16 = [[SNSoundPrintASmokeAlarmModelInput alloc] initWithInput1:input1Copy stateIn:inCopy thresholdedHistoryIn:historyInCopy detectedHistoryIn:detectedHistoryInCopy];

  v17 = [(SNSoundPrintASmokeAlarmModel *)self predictionFromFeatures:v16 error:error];

  return v17;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  model = [(SNSoundPrintASmokeAlarmModel *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v24 = v10;
      v25 = optionsCopy;
      v26 = inputsCopy;
      v27 = v13;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v29 = [SNSoundPrintASmokeAlarmModelOutput alloc];
        v32 = [v15 featureValueForName:@"input_1"];
        multiArrayValue = [v32 multiArrayValue];
        v31 = [v15 featureValueForName:@"Confidence"];
        multiArrayValue2 = [v31 multiArrayValue];
        v30 = [v15 featureValueForName:@"Detected"];
        multiArrayValue3 = [v30 multiArrayValue];
        v18 = [v15 featureValueForName:@"thresholdedHistoryOut"];
        multiArrayValue4 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"detectedHistoryOut"];
        multiArrayValue5 = [v20 multiArrayValue];
        v22 = [(SNSoundPrintASmokeAlarmModelOutput *)v29 initWithInput_1:multiArrayValue Confidence:multiArrayValue2 Detected:multiArrayValue3 thresholdedHistoryOut:multiArrayValue4 detectedHistoryOut:multiArrayValue5];

        v13 = v27;
        [v27 addObject:v22];

        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v25;
      inputsCopy = v26;
      v10 = v24;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end