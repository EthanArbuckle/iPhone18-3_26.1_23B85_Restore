@interface SNSoundPrintASmokeAlarmModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (SNSoundPrintASmokeAlarmModel)init;
- (SNSoundPrintASmokeAlarmModel)initWithConfiguration:(id)a3 error:(id *)a4;
- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (SNSoundPrintASmokeAlarmModel)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInput1:(id)a3 stateIn:(id)a4 thresholdedHistoryIn:(id)a5 detectedHistoryIn:(id)a6 error:(id *)a7;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (SNSoundPrintASmokeAlarmModel)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = SNSoundPrintASmokeAlarmModel;
    v6 = [(SNSoundPrintASmokeAlarmModel *)&v10 init];
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

- (SNSoundPrintASmokeAlarmModel)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(SNSoundPrintASmokeAlarmModel *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (SNSoundPrintASmokeAlarmModel)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(SNSoundPrintASmokeAlarmModel *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(SNSoundPrintASmokeAlarmModel *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SNSoundPrintASmokeAlarmModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(SNSoundPrintASmokeAlarmModel *)self initWithMLModel:v6];
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
  v10[2] = sub_1C9A8510C;
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
  v9 = [(SNSoundPrintASmokeAlarmModel *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SNSoundPrintASmokeAlarmModel *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [SNSoundPrintASmokeAlarmModelOutput alloc];
    v26 = [v11 featureValueForName:@"input_1"];
    v13 = [v26 multiArrayValue];
    v25 = [v11 featureValueForName:@"Confidence"];
    v14 = [v25 multiArrayValue];
    v15 = [v11 featureValueForName:@"Detected"];
    v16 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"thresholdedHistoryOut"];
    v18 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"detectedHistoryOut"];
    v20 = [v19 multiArrayValue];
    v21 = v12;
    v22 = v13;
    v23 = [(SNSoundPrintASmokeAlarmModelOutput *)v21 initWithInput_1:v13 Confidence:v14 Detected:v16 thresholdedHistoryOut:v18 detectedHistoryOut:v20];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SNSoundPrintASmokeAlarmModel *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A854C0;
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
  v11 = [(SNSoundPrintASmokeAlarmModel *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C9A85778;
  v13[3] = &unk_1E8347738;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromInput1:(id)a3 stateIn:(id)a4 thresholdedHistoryIn:(id)a5 detectedHistoryIn:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[SNSoundPrintASmokeAlarmModelInput alloc] initWithInput1:v15 stateIn:v14 thresholdedHistoryIn:v13 detectedHistoryIn:v12];

  v17 = [(SNSoundPrintASmokeAlarmModel *)self predictionFromFeatures:v16 error:a7];

  return v17;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v8];
  v11 = [(SNSoundPrintASmokeAlarmModel *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v24 = v10;
      v25 = v9;
      v26 = v8;
      v27 = v13;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v29 = [SNSoundPrintASmokeAlarmModelOutput alloc];
        v32 = [v15 featureValueForName:@"input_1"];
        v28 = [v32 multiArrayValue];
        v31 = [v15 featureValueForName:@"Confidence"];
        v16 = [v31 multiArrayValue];
        v30 = [v15 featureValueForName:@"Detected"];
        v17 = [v30 multiArrayValue];
        v18 = [v15 featureValueForName:@"thresholdedHistoryOut"];
        v19 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"detectedHistoryOut"];
        v21 = [v20 multiArrayValue];
        v22 = [(SNSoundPrintASmokeAlarmModelOutput *)v29 initWithInput_1:v28 Confidence:v16 Detected:v17 thresholdedHistoryOut:v19 detectedHistoryOut:v21];

        v13 = v27;
        [v27 addObject:v22];

        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v25;
      v8 = v26;
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