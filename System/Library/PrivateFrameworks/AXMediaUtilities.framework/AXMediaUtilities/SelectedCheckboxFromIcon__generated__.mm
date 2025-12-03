@interface SelectedCheckboxFromIcon__generated__
+ (id)urlOfModelInThisBundle;
- (SelectedCheckboxFromIcon__generated__)init;
- (SelectedCheckboxFromIcon__generated__)initWithConfiguration:(id)configuration error:(id *)error;
- (SelectedCheckboxFromIcon__generated__)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (SelectedCheckboxFromIcon__generated__)initWithContentsOfURL:(id)l error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromImage:(__CVBuffer *)image error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation SelectedCheckboxFromIcon__generated__

+ (id)urlOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SelectedCheckboxFromIcon" ofType:@"mlmodelc"];

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

- (SelectedCheckboxFromIcon__generated__)init
{
  urlOfModelInThisBundle = [objc_opt_class() urlOfModelInThisBundle];
  v4 = [(SelectedCheckboxFromIcon__generated__ *)self initWithContentsOfURL:urlOfModelInThisBundle error:0];

  return v4;
}

- (SelectedCheckboxFromIcon__generated__)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = SelectedCheckboxFromIcon__generated__;
  v7 = [(SelectedCheckboxFromIcon__generated__ *)&v12 init];
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

- (SelectedCheckboxFromIcon__generated__)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  urlOfModelInThisBundle = [objc_opt_class() urlOfModelInThisBundle];
  v8 = [(SelectedCheckboxFromIcon__generated__ *)self initWithContentsOfURL:urlOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (SelectedCheckboxFromIcon__generated__)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  lCopy = l;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = SelectedCheckboxFromIcon__generated__;
  v10 = [(SelectedCheckboxFromIcon__generated__ *)&v15 init];
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
  v9 = [(SelectedCheckboxFromIcon__generated__ *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  v6 = [SelectedCheckboxFromIcon__generated__Output alloc];
  v7 = [v5 featureValueForName:@"labelProbability"];
  dictionaryValue = [v7 dictionaryValue];
  v9 = [v5 featureValueForName:@"label"];
  stringValue = [v9 stringValue];
  v11 = [(SelectedCheckboxFromIcon__generated__Output *)v6 initWithLabelProbability:dictionaryValue label:stringValue];

  return v11;
}

- (id)predictionFromImage:(__CVBuffer *)image error:(id *)error
{
  v6 = [[SelectedCheckboxFromIcon__generated__Input alloc] initWithImage:image];
  v7 = [(SelectedCheckboxFromIcon__generated__ *)self predictionFromFeatures:v6 error:error];

  return v7;
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
      v13 = [SelectedCheckboxFromIcon__generated__Output alloc];
      v14 = [v12 featureValueForName:@"labelProbability"];
      dictionaryValue = [v14 dictionaryValue];
      v16 = [v12 featureValueForName:@"label"];
      stringValue = [v16 stringValue];
      v18 = [(SelectedCheckboxFromIcon__generated__Output *)v13 initWithLabelProbability:dictionaryValue label:stringValue];

      [v10 addObject:v18];
      ++v11;
    }

    while (v11 < [v9 count]);
  }

  return v10;
}

@end