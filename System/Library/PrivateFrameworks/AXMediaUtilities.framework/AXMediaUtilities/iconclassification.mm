@interface iconclassification
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (iconclassification)init;
- (iconclassification)initWithConfiguration:(id)configuration error:(id *)error;
- (iconclassification)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (iconclassification)initWithContentsOfURL:(id)l error:(id *)error;
- (iconclassification)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation iconclassification

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"iconclassification" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[iconclassification URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (iconclassification)initWithMLModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = iconclassification;
  v6 = [(iconclassification *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, model), v7->_model))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (iconclassification)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(iconclassification *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (iconclassification)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(iconclassification *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (iconclassification)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(iconclassification *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (iconclassification)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(iconclassification *)self initWithMLModel:v6];
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
  v10[2] = __72__iconclassification_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_1E7A1D6E8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x1E695FF08];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(iconclassification *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  if (v5)
  {
    v6 = [iconclassificationOutput alloc];
    v7 = [v5 featureValueForName:@"leaf/leaf/predictions/probabilities"];
    multiArrayValue = [v7 multiArrayValue];
    v9 = [(iconclassificationOutput *)v6 initWithLeaf_leaf_predictions_probabilities:multiArrayValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error
{
  v6 = [[iconclassificationInput alloc] initWithImage_Placeholder:placeholder];
  v7 = [(iconclassification *)self predictionFromFeatures:v6 error:error];

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  v11 = [(MLModel *)self->_model predictionsFromBatch:v10 options:optionsCopy error:error];
  v12 = v11;
  if (v11)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [iconclassificationOutput alloc];
        v17 = [v15 featureValueForName:@"leaf/leaf/predictions/probabilities"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(iconclassificationOutput *)v16 initWithLeaf_leaf_predictions_probabilities:multiArrayValue];

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