@interface AXElementVision__generated__
+ (id)urlOfModelInThisBundle;
- (AXElementVision__generated__)init;
- (AXElementVision__generated__)initWithConfiguration:(id)configuration error:(id *)error;
- (AXElementVision__generated__)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (AXElementVision__generated__)initWithContentsOfURL:(id)l error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromImage:(__CVBuffer *)image iouThreshold:(double)threshold confidenceThreshold:(double)confidenceThreshold error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation AXElementVision__generated__

+ (id)urlOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"AXElementVision" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AXElementVision__generated__)init
{
  urlOfModelInThisBundle = [objc_opt_class() urlOfModelInThisBundle];
  v4 = [(AXElementVision__generated__ *)self initWithContentsOfURL:urlOfModelInThisBundle error:0];

  return v4;
}

- (AXElementVision__generated__)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = AXElementVision__generated__;
  v7 = [(AXElementVision__generated__ *)&v12 init];
  if (v7 && ([MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy error:error], v8 = objc_claimAutoreleasedReturnValue(), model = v7->_model, v7->_model = v8, model, v7->_model))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AXElementVision__generated__)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  urlOfModelInThisBundle = [objc_opt_class() urlOfModelInThisBundle];
  v8 = [(AXElementVision__generated__ *)self initWithContentsOfURL:urlOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (AXElementVision__generated__)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  lCopy = l;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = AXElementVision__generated__;
  v10 = [(AXElementVision__generated__ *)&v15 init];
  if (v10 && ([MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy configuration:configurationCopy error:error], v11 = objc_claimAutoreleasedReturnValue(), model = v10->_model, v10->_model = v11, model, v10->_model))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x1E695FF08];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(AXElementVision__generated__ *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  v6 = [AXElementVision__generated__Output alloc];
  v7 = [v5 featureValueForName:@"confidence"];
  multiArrayValue = [v7 multiArrayValue];
  v9 = [v5 featureValueForName:@"coordinates"];
  multiArrayValue2 = [v9 multiArrayValue];
  v11 = [(AXElementVision__generated__Output *)v6 initWithConfidence:multiArrayValue coordinates:multiArrayValue2];

  return v11;
}

- (id)predictionFromImage:(__CVBuffer *)image iouThreshold:(double)threshold confidenceThreshold:(double)confidenceThreshold error:(id *)error
{
  v8 = [[AXElementVision__generated__Input alloc] initWithImage:image iouThreshold:threshold confidenceThreshold:confidenceThreshold];
  v9 = [(AXElementVision__generated__ *)self predictionFromFeatures:v8 error:error];

  return v9;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v22 = inputsCopy;
  v20 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  v21 = optionsCopy;
  v9 = [MLModel predictionsFromBatch:"predictionsFromBatch:options:error:" options:? error:?];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if ([v9 count] >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [v9 featuresAtIndex:v11];
      v13 = [AXElementVision__generated__Output alloc];
      v14 = [v12 featureValueForName:@"confidence"];
      multiArrayValue = [v14 multiArrayValue];
      v16 = [v12 featureValueForName:@"coordinates"];
      multiArrayValue2 = [v16 multiArrayValue];
      v18 = [(AXElementVision__generated__Output *)v13 initWithConfidence:multiArrayValue coordinates:multiArrayValue2];

      [v10 addObject:v18];
      ++v11;
    }

    while (v11 < [v9 count]);
  }

  return v10;
}

@end