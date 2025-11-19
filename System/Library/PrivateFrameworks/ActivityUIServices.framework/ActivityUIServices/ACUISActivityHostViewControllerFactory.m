@interface ACUISActivityHostViewControllerFactory
+ (id)activityHostViewControllerWithDescriptor:(id)a3 metricsRequest:(id)a4;
+ (id)activityHostViewControllerWithDescriptor:(id)a3 metricsRequest:(id)a4 payloadID:(id)a5 targetBundleIdentifier:(id)a6;
+ (id)activityHostViewControllerWithDescriptor:(id)a3 sceneType:(int64_t)a4 metricsRequest:(id)a5 targetBundleIdentifier:(id)a6;
@end

@implementation ACUISActivityHostViewControllerFactory

+ (id)activityHostViewControllerWithDescriptor:(id)a3 sceneType:(int64_t)a4 metricsRequest:(id)a5 targetBundleIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[ACUISActivitySceneDescriptor alloc] initWithActivityDescriptor:v11 payloadIdentifier:0 activitySceneType:a4 metricsRequest:v10];

  v13 = [(ACUISActivitySceneDescriptor *)v12 _activitySceneDescriptor];
  v14 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v15 = _TtC18ActivityUIServices40ActivityAmbientCompactHostViewController;
        break;
      case 7:
        v15 = _TtC18ActivityUIServices41ActivityModalFullScreenHostViewController;
        break;
      case 8:
        v16 = _TtC18ActivityUIServices33ActivityCarPlayHostViewController;
        goto LABEL_11;
      default:
        goto LABEL_17;
    }

LABEL_15:
    v20 = [v15 alloc];
    v18 = [v13 activityDescriptor];
    v19 = [v13 metricsRequest];
    v21 = [v13 payloadID];
    v14 = [v20 initWithActivityDescriptor:v18 systemMetricsRequest:v19 payloadID:v21 targetBundleIdentifier:v9];

    goto LABEL_16;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v15 = _TtC18ActivityUIServices32ActivityBannerHostViewController;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_17;
      }

      v15 = _TtC18ActivityUIServices33ActivityAmbientHostViewController;
    }

    goto LABEL_15;
  }

  v16 = _TtC18ActivityUIServices34ActivityListItemHostViewController;
LABEL_11:
  v17 = [v16 alloc];
  v18 = [v13 activityDescriptor];
  v19 = [v13 metricsRequest];
  v14 = [v17 initWithActivityDescriptor:v18 systemMetricsRequest:v19 targetBundleIdentifier:v9];
LABEL_16:

LABEL_17:
  v22 = [[ACUISActivityHostViewController alloc] initWithActivityHostViewController:v14];

  return v22;
}

+ (id)activityHostViewControllerWithDescriptor:(id)a3 metricsRequest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ACUISActivitySceneDescriptor alloc] initWithActivityDescriptor:v6 payloadIdentifier:0 activitySceneType:0 metricsRequest:v5];

  v8 = [(ACUISActivitySceneDescriptor *)v7 _activitySceneDescriptor];
  v9 = [_TtC18ActivityUIServices34ActivityListItemHostViewController alloc];
  v10 = [v8 activityDescriptor];
  v11 = [v8 metricsRequest];
  v12 = [(ActivityListItemHostViewController *)v9 initWithActivityDescriptor:v10 systemMetricsRequest:v11 targetBundleIdentifier:0];

  v13 = [[ACUISActivityHostViewController alloc] initWithActivityHostViewController:v12];

  return v13;
}

+ (id)activityHostViewControllerWithDescriptor:(id)a3 metricsRequest:(id)a4 payloadID:(id)a5 targetBundleIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[ACUISActivitySceneDescriptor alloc] initWithActivityDescriptor:v12 payloadIdentifier:v10 activitySceneType:1 metricsRequest:v11];

  v14 = [(ACUISActivitySceneDescriptor *)v13 _activitySceneDescriptor];
  v15 = [_TtC18ActivityUIServices32ActivityBannerHostViewController alloc];
  v16 = [v14 activityDescriptor];
  v17 = [v14 metricsRequest];
  v18 = [(ActivityBannerHostViewController *)v15 initWithActivityDescriptor:v16 systemMetricsRequest:v17 payloadID:v10 targetBundleIdentifier:v9];

  v19 = [[ACUISActivityHostViewController alloc] initWithActivityHostViewController:v18];

  return v19;
}

@end