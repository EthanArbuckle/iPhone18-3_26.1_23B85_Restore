@interface ACUISActivityHostViewControllerFactory
+ (id)activityHostViewControllerWithDescriptor:(id)descriptor metricsRequest:(id)request;
+ (id)activityHostViewControllerWithDescriptor:(id)descriptor metricsRequest:(id)request payloadID:(id)d targetBundleIdentifier:(id)identifier;
+ (id)activityHostViewControllerWithDescriptor:(id)descriptor sceneType:(int64_t)type metricsRequest:(id)request targetBundleIdentifier:(id)identifier;
@end

@implementation ACUISActivityHostViewControllerFactory

+ (id)activityHostViewControllerWithDescriptor:(id)descriptor sceneType:(int64_t)type metricsRequest:(id)request targetBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  descriptorCopy = descriptor;
  v12 = [[ACUISActivitySceneDescriptor alloc] initWithActivityDescriptor:descriptorCopy payloadIdentifier:0 activitySceneType:type metricsRequest:requestCopy];

  _activitySceneDescriptor = [(ACUISActivitySceneDescriptor *)v12 _activitySceneDescriptor];
  v14 = 0;
  if (type > 2)
  {
    switch(type)
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
    activityDescriptor = [_activitySceneDescriptor activityDescriptor];
    metricsRequest = [_activitySceneDescriptor metricsRequest];
    payloadID = [_activitySceneDescriptor payloadID];
    v14 = [v20 initWithActivityDescriptor:activityDescriptor systemMetricsRequest:metricsRequest payloadID:payloadID targetBundleIdentifier:identifierCopy];

    goto LABEL_16;
  }

  if (type)
  {
    if (type == 1)
    {
      v15 = _TtC18ActivityUIServices32ActivityBannerHostViewController;
    }

    else
    {
      if (type != 2)
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
  activityDescriptor = [_activitySceneDescriptor activityDescriptor];
  metricsRequest = [_activitySceneDescriptor metricsRequest];
  v14 = [v17 initWithActivityDescriptor:activityDescriptor systemMetricsRequest:metricsRequest targetBundleIdentifier:identifierCopy];
LABEL_16:

LABEL_17:
  v22 = [[ACUISActivityHostViewController alloc] initWithActivityHostViewController:v14];

  return v22;
}

+ (id)activityHostViewControllerWithDescriptor:(id)descriptor metricsRequest:(id)request
{
  requestCopy = request;
  descriptorCopy = descriptor;
  v7 = [[ACUISActivitySceneDescriptor alloc] initWithActivityDescriptor:descriptorCopy payloadIdentifier:0 activitySceneType:0 metricsRequest:requestCopy];

  _activitySceneDescriptor = [(ACUISActivitySceneDescriptor *)v7 _activitySceneDescriptor];
  v9 = [_TtC18ActivityUIServices34ActivityListItemHostViewController alloc];
  activityDescriptor = [_activitySceneDescriptor activityDescriptor];
  metricsRequest = [_activitySceneDescriptor metricsRequest];
  v12 = [(ActivityListItemHostViewController *)v9 initWithActivityDescriptor:activityDescriptor systemMetricsRequest:metricsRequest targetBundleIdentifier:0];

  v13 = [[ACUISActivityHostViewController alloc] initWithActivityHostViewController:v12];

  return v13;
}

+ (id)activityHostViewControllerWithDescriptor:(id)descriptor metricsRequest:(id)request payloadID:(id)d targetBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  requestCopy = request;
  descriptorCopy = descriptor;
  v13 = [[ACUISActivitySceneDescriptor alloc] initWithActivityDescriptor:descriptorCopy payloadIdentifier:dCopy activitySceneType:1 metricsRequest:requestCopy];

  _activitySceneDescriptor = [(ACUISActivitySceneDescriptor *)v13 _activitySceneDescriptor];
  v15 = [_TtC18ActivityUIServices32ActivityBannerHostViewController alloc];
  activityDescriptor = [_activitySceneDescriptor activityDescriptor];
  metricsRequest = [_activitySceneDescriptor metricsRequest];
  v18 = [(ActivityBannerHostViewController *)v15 initWithActivityDescriptor:activityDescriptor systemMetricsRequest:metricsRequest payloadID:dCopy targetBundleIdentifier:identifierCopy];

  v19 = [[ACUISActivityHostViewController alloc] initWithActivityHostViewController:v18];

  return v19;
}

@end