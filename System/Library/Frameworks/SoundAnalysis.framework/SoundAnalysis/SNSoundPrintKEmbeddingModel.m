@interface SNSoundPrintKEmbeddingModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (SNSoundPrintKEmbeddingModel)init;
- (SNSoundPrintKEmbeddingModel)initWithConfiguration:(id)a3 error:(id *)a4;
- (SNSoundPrintKEmbeddingModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (SNSoundPrintKEmbeddingModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (SNSoundPrintKEmbeddingModel)initWithMLModel:(id)a3;
- (id)predictionFromAudioSamples:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation SNSoundPrintKEmbeddingModel

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SNSoundPrintKEmbeddingModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1C9788000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not load SNSoundPrintKEmbeddingModel.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (SNSoundPrintKEmbeddingModel)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = SNSoundPrintKEmbeddingModel;
    v6 = [(SNSoundPrintKEmbeddingModel *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SNSoundPrintKEmbeddingModel)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(SNSoundPrintKEmbeddingModel *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (SNSoundPrintKEmbeddingModel)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(SNSoundPrintKEmbeddingModel *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (SNSoundPrintKEmbeddingModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(SNSoundPrintKEmbeddingModel *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SNSoundPrintKEmbeddingModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(SNSoundPrintKEmbeddingModel *)self initWithMLModel:v6];
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
  v10[2] = sub_1C9A8DC08;
  v10[3] = &unk_1E8347710;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695FF08];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(SNSoundPrintKEmbeddingModel *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SNSoundPrintKEmbeddingModel *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [SNSoundPrintKEmbeddingModelOutput alloc];
    v13 = [v11 featureValueForName:@"fixedLengthEmbedding"];
    v14 = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"framewiseEmbedding"];
    v16 = [v15 multiArrayValue];
    v17 = [(SNSoundPrintKEmbeddingModelOutput *)v12 initWithFixedLengthEmbedding:v14 framewiseEmbedding:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SNSoundPrintKEmbeddingModel *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A8DF08;
  v10[3] = &unk_1E8347738;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SNSoundPrintKEmbeddingModel *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C9A8E118;
  v13[3] = &unk_1E8347738;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromAudioSamples:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[SNSoundPrintKEmbeddingModelInput alloc] initWithAudioSamples:v6];

  v8 = [(SNSoundPrintKEmbeddingModel *)self predictionFromFeatures:v7 error:a4];

  return v8;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v8];
  v11 = [(SNSoundPrintKEmbeddingModel *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = v9;
      v25 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [SNSoundPrintKEmbeddingModelOutput alloc];
        v17 = [v15 featureValueForName:@"fixedLengthEmbedding"];
        v18 = [v17 multiArrayValue];
        v19 = [v15 featureValueForName:@"framewiseEmbedding"];
        v20 = [v19 multiArrayValue];
        v21 = [(SNSoundPrintKEmbeddingModelOutput *)v16 initWithFixedLengthEmbedding:v18 framewiseEmbedding:v20];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v24;
      v8 = v25;
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