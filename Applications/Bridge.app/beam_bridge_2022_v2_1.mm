@interface beam_bridge_2022_v2_1
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (beam_bridge_2022_v2_1)init;
- (beam_bridge_2022_v2_1)initWithConfiguration:(id)configuration error:(id *)error;
- (beam_bridge_2022_v2_1)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (beam_bridge_2022_v2_1)initWithContentsOfURL:(id)l error:(id *)error;
- (beam_bridge_2022_v2_1)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation beam_bridge_2022_v2_1

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"beam_bridge_2022_v2_1" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10018C990();
    }

    v4 = 0;
  }

  return v4;
}

- (beam_bridge_2022_v2_1)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = beam_bridge_2022_v2_1;
    v6 = [(beam_bridge_2022_v2_1 *)&v10 init];
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

- (beam_bridge_2022_v2_1)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(beam_bridge_2022_v2_1 *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (beam_bridge_2022_v2_1)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(beam_bridge_2022_v2_1 *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (beam_bridge_2022_v2_1)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(beam_bridge_2022_v2_1 *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (beam_bridge_2022_v2_1)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(beam_bridge_2022_v2_1 *)self initWithMLModel:v6];
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
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100136DD8;
  v8[3] = &unk_10026CB68;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(beam_bridge_2022_v2_1 *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(beam_bridge_2022_v2_1 *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [beam_bridge_2022_v2_1Output alloc];
    v13 = [v11 featureValueForName:@"cell_leaf_fully_connected_BiasAdd"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"leaf_leaf_predictions_probabilities"];
    multiArrayValue2 = [v15 multiArrayValue];
    v17 = [(beam_bridge_2022_v2_1Output *)v12 initWithCell_leaf_fully_connected_BiasAdd:multiArrayValue leaf_leaf_predictions_probabilities:multiArrayValue2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(beam_bridge_2022_v2_1 *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001370D8;
  v10[3] = &unk_10026CB90;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(beam_bridge_2022_v2_1 *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001372E8;
  v13[3] = &unk_10026CB90;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error
{
  v6 = [[beam_bridge_2022_v2_1Input alloc] initWithImage_Placeholder:placeholder];
  v7 = [(beam_bridge_2022_v2_1 *)self predictionFromFeatures:v6 error:error];

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(beam_bridge_2022_v2_1 *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [beam_bridge_2022_v2_1Output alloc];
        v17 = [v15 featureValueForName:@"cell_leaf_fully_connected_BiasAdd"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [v15 featureValueForName:@"leaf_leaf_predictions_probabilities"];
        multiArrayValue2 = [v19 multiArrayValue];
        v21 = [(beam_bridge_2022_v2_1Output *)v16 initWithCell_leaf_fully_connected_BiasAdd:multiArrayValue leaf_leaf_predictions_probabilities:multiArrayValue2];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
      v10 = v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end