@interface ACUISSystemApertureSceneHandle
- (ACUISSystemApertureSceneHandle)initWithActivitySystemApertureSceneHandle:(id)handle;
- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)descriptor metricsRequest:(id)request;
- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)descriptor metricsRequest:(id)request targetBundleIdentifier:(id)identifier;
- (ACUISSystemApertureSceneHandleDelegate)delegate;
- (void)activitySystemApertureWithSceneHandle:(id)handle requestsLaunchWithAction:(id)action;
- (void)activitySystemApertureWithSceneHandle:(id)handle updatedContentPayloadID:(id)d;
@end

@implementation ACUISSystemApertureSceneHandle

- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)descriptor metricsRequest:(id)request
{
  requestCopy = request;
  descriptorCopy = descriptor;
  v8 = [_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle alloc];
  _activityMetricsRequest = [requestCopy _activityMetricsRequest];

  v10 = [(ActivitySystemApertureSceneHandle *)v8 initWithAcActivityDescritor:descriptorCopy systemMetricsRequest:_activityMetricsRequest];
  v11 = [(ACUISSystemApertureSceneHandle *)self initWithActivitySystemApertureSceneHandle:v10];

  return v11;
}

- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)descriptor metricsRequest:(id)request targetBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  descriptorCopy = descriptor;
  v11 = [_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle alloc];
  _activityMetricsRequest = [requestCopy _activityMetricsRequest];

  v13 = [(ActivitySystemApertureSceneHandle *)v11 initWithAcActivityDescriptor:descriptorCopy systemMetricsRequest:_activityMetricsRequest targetBundleIdentifier:identifierCopy];
  v14 = [(ACUISSystemApertureSceneHandle *)self initWithActivitySystemApertureSceneHandle:v13];

  return v14;
}

- (ACUISSystemApertureSceneHandle)initWithActivitySystemApertureSceneHandle:(id)handle
{
  handleCopy = handle;
  v13.receiver = self;
  v13.super_class = ACUISSystemApertureSceneHandle;
  v6 = [(ACUISSystemApertureSceneHandle *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
    [(ActivitySystemApertureSceneHandle *)v7->_handle setDelegate:v7];
    scene = [handleCopy scene];
    scene = v7->_scene;
    v7->_scene = scene;

    descriptor = [handleCopy descriptor];
    descriptor = v7->_descriptor;
    v7->_descriptor = descriptor;
  }

  return v7;
}

- (void)activitySystemApertureWithSceneHandle:(id)handle requestsLaunchWithAction:(id)action
{
  actionCopy = action;
  delegate = [(ACUISSystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate activitySystemApertureSceneHandle:self requestsLaunchWithAction:actionCopy];
  }
}

- (void)activitySystemApertureWithSceneHandle:(id)handle updatedContentPayloadID:(id)d
{
  dCopy = d;
  delegate = [(ACUISSystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate activitySystemApertureSceneHandle:self updatedContentPayloadID:dCopy];
  }
}

- (ACUISSystemApertureSceneHandleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end