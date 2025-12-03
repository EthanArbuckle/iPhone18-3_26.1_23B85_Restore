@interface Te_c3seuakuh8
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (Te_c3seuakuh8)init;
- (Te_c3seuakuh8)initWithConfiguration:(id)configuration error:(id *)error;
- (Te_c3seuakuh8)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (Te_c3seuakuh8)initWithContentsOfURL:(id)l error:(id *)error;
- (Te_c3seuakuh8)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromPlaceholder:(id)placeholder error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation Te_c3seuakuh8

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"Te_c3seuakuh8" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[Te_c3seuakuh8 URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (Te_c3seuakuh8)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = Te_c3seuakuh8;
    v6 = [(Te_c3seuakuh8 *)&v10 init];
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

- (Te_c3seuakuh8)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(Te_c3seuakuh8 *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (Te_c3seuakuh8)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(Te_c3seuakuh8 *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (Te_c3seuakuh8)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(Te_c3seuakuh8 *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Te_c3seuakuh8)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(Te_c3seuakuh8 *)self initWithMLModel:v6];
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
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__Te_c3seuakuh8_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_278C5CC78;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(Te_c3seuakuh8 *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(Te_c3seuakuh8 *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [Te_c3seuakuh8Output alloc];
    v13 = [v11 featureValueForName:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [(Te_c3seuakuh8Output *)v12 initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:multiArrayValue];
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
  model = [(Te_c3seuakuh8 *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__Te_c3seuakuh8_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_278C5CCA0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(Te_c3seuakuh8 *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__Te_c3seuakuh8_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_278C5CCA0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromPlaceholder:(id)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  v7 = [[Te_c3seuakuh8Input alloc] initWithPlaceholder:placeholderCopy];

  v8 = [(Te_c3seuakuh8 *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(Te_c3seuakuh8 *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [Te_c3seuakuh8Output alloc];
        v17 = [v15 featureValueForName:@"RHYTHM_TYPE_HEAD/FC_1/fully_connected/BiasAdd"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(Te_c3seuakuh8Output *)v16 initWithRHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd:multiArrayValue];

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