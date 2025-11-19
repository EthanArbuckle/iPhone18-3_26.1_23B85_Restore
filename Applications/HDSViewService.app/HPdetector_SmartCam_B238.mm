@interface HPdetector_SmartCam_B238
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (HPdetector_SmartCam_B238)init;
- (HPdetector_SmartCam_B238)initWithConfiguration:(id)a3 error:(id *)a4;
- (HPdetector_SmartCam_B238)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (HPdetector_SmartCam_B238)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (HPdetector_SmartCam_B238)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromImageDescriptors:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation HPdetector_SmartCam_B238

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"HPdetector_SmartCam_B238" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000B4FD8();
    }

    v4 = 0;
  }

  return v4;
}

- (HPdetector_SmartCam_B238)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = HPdetector_SmartCam_B238;
    v6 = [(HPdetector_SmartCam_B238 *)&v10 init];
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

- (HPdetector_SmartCam_B238)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(HPdetector_SmartCam_B238 *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (HPdetector_SmartCam_B238)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(HPdetector_SmartCam_B238 *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (HPdetector_SmartCam_B238)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(HPdetector_SmartCam_B238 *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HPdetector_SmartCam_B238)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(HPdetector_SmartCam_B238 *)self initWithMLModel:v6];
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
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A9AC;
  v8[3] = &unk_1000EDD50;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(HPdetector_SmartCam_B238 *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HPdetector_SmartCam_B238 *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [HPdetector_SmartCam_B238Output alloc];
    v13 = [v11 featureValueForName:@"HomePodDetected"];
    v14 = [v13 multiArrayValue];
    v15 = [(HPdetector_SmartCam_B238Output *)v12 initWithHomePodDetected:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HPdetector_SmartCam_B238 *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AC74;
  v10[3] = &unk_1000EDD78;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HPdetector_SmartCam_B238 *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AE4C;
  v13[3] = &unk_1000EDD78;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromImageDescriptors:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[HPdetector_SmartCam_B238Input alloc] initWithImageDescriptors:v6];

  v8 = [(HPdetector_SmartCam_B238 *)self predictionFromFeatures:v7 error:a4];

  return v8;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(HPdetector_SmartCam_B238 *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v21 = v9;
      v22 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [HPdetector_SmartCam_B238Output alloc];
        v17 = [v15 featureValueForName:@"HomePodDetected"];
        v18 = [v17 multiArrayValue];
        v19 = [(HPdetector_SmartCam_B238Output *)v16 initWithHomePodDetected:v18];

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