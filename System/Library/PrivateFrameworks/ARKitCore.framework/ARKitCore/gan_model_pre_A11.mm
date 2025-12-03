@interface gan_model_pre_A11
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (gan_model_pre_A11)init;
- (gan_model_pre_A11)initWithConfiguration:(id)configuration error:(id *)error;
- (gan_model_pre_A11)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (gan_model_pre_A11)initWithContentsOfURL:(id)l error:(id *)error;
- (gan_model_pre_A11)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation gan_model_pre_A11

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"gan_model_pre_A11" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[gan_model_pre_A11 URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (gan_model_pre_A11)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = gan_model_pre_A11;
    v6 = [(gan_model_pre_A11 *)&v10 init];
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

- (gan_model_pre_A11)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(gan_model_pre_A11 *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (gan_model_pre_A11)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(gan_model_pre_A11 *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (gan_model_pre_A11)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(gan_model_pre_A11 *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (gan_model_pre_A11)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(gan_model_pre_A11 *)self initWithMLModel:v6];
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
  v10[2] = __71__gan_model_pre_A11_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_1E817F1D8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x1E695FF08];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(gan_model_pre_A11 *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(gan_model_pre_A11 *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [gan_model_pre_A11Output alloc];
    v13 = [v11 featureValueForName:@"output"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [(gan_model_pre_A11Output *)v12 initWithOutput:multiArrayValue];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(gan_model_pre_A11 *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__gan_model_pre_A11_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_1E817F200;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(gan_model_pre_A11 *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__gan_model_pre_A11_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_1E817F200;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromInput:(id)input error:(id *)error
{
  inputCopy = input;
  v7 = [[gan_model_pre_A11Input alloc] initWithInput:inputCopy];

  v8 = [(gan_model_pre_A11 *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  model = [(gan_model_pre_A11 *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [gan_model_pre_A11Output alloc];
        v17 = [v15 featureValueForName:@"output"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(gan_model_pre_A11Output *)v16 initWithOutput:multiArrayValue];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v21;
      inputsCopy = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end