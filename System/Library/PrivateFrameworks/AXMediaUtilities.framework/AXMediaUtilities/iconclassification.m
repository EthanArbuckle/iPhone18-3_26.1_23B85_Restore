@interface iconclassification
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (iconclassification)init;
- (iconclassification)initWithConfiguration:(id)a3 error:(id *)a4;
- (iconclassification)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (iconclassification)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (iconclassification)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromImage_Placeholder:(__CVBuffer *)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
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

- (iconclassification)initWithMLModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = iconclassification;
  v6 = [(iconclassification *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, a3), v7->_model))
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
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(iconclassification *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (iconclassification)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(iconclassification *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (iconclassification)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(iconclassification *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (iconclassification)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(iconclassification *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E695FE90];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__iconclassification_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_1E7A1D6E8;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695FF08];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(iconclassification *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:a3 options:a4 error:a5];
  if (v5)
  {
    v6 = [iconclassificationOutput alloc];
    v7 = [v5 featureValueForName:@"leaf/leaf/predictions/probabilities"];
    v8 = [v7 multiArrayValue];
    v9 = [(iconclassificationOutput *)v6 initWithLeaf_leaf_predictions_probabilities:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)predictionFromImage_Placeholder:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [[iconclassificationInput alloc] initWithImage_Placeholder:a3];
  v7 = [(iconclassification *)self predictionFromFeatures:v6 error:a4];

  return v7;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v8];
  v11 = [(MLModel *)self->_model predictionsFromBatch:v10 options:v9 error:a5];
  v12 = v11;
  if (v11)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = v9;
      v22 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [iconclassificationOutput alloc];
        v17 = [v15 featureValueForName:@"leaf/leaf/predictions/probabilities"];
        v18 = [v17 multiArrayValue];
        v19 = [(iconclassificationOutput *)v16 initWithLeaf_leaf_predictions_probabilities:v18];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v21;
      v8 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end