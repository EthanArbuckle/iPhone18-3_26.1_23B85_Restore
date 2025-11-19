@interface ACUISSystemApertureSceneHandle
- (ACUISSystemApertureSceneHandle)initWithActivitySystemApertureSceneHandle:(id)a3;
- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)a3 metricsRequest:(id)a4;
- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)a3 metricsRequest:(id)a4 targetBundleIdentifier:(id)a5;
- (ACUISSystemApertureSceneHandleDelegate)delegate;
- (void)activitySystemApertureWithSceneHandle:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)activitySystemApertureWithSceneHandle:(id)a3 updatedContentPayloadID:(id)a4;
@end

@implementation ACUISSystemApertureSceneHandle

- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)a3 metricsRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle alloc];
  v9 = [v6 _activityMetricsRequest];

  v10 = [(ActivitySystemApertureSceneHandle *)v8 initWithAcActivityDescritor:v7 systemMetricsRequest:v9];
  v11 = [(ACUISSystemApertureSceneHandle *)self initWithActivitySystemApertureSceneHandle:v10];

  return v11;
}

- (ACUISSystemApertureSceneHandle)initWithDescriptor:(id)a3 metricsRequest:(id)a4 targetBundleIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle alloc];
  v12 = [v9 _activityMetricsRequest];

  v13 = [(ActivitySystemApertureSceneHandle *)v11 initWithAcActivityDescriptor:v10 systemMetricsRequest:v12 targetBundleIdentifier:v8];
  v14 = [(ACUISSystemApertureSceneHandle *)self initWithActivitySystemApertureSceneHandle:v13];

  return v14;
}

- (ACUISSystemApertureSceneHandle)initWithActivitySystemApertureSceneHandle:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ACUISSystemApertureSceneHandle;
  v6 = [(ACUISSystemApertureSceneHandle *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
    [(ActivitySystemApertureSceneHandle *)v7->_handle setDelegate:v7];
    v8 = [v5 scene];
    scene = v7->_scene;
    v7->_scene = v8;

    v10 = [v5 descriptor];
    descriptor = v7->_descriptor;
    v7->_descriptor = v10;
  }

  return v7;
}

- (void)activitySystemApertureWithSceneHandle:(id)a3 requestsLaunchWithAction:(id)a4
{
  v6 = a4;
  v5 = [(ACUISSystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 activitySystemApertureSceneHandle:self requestsLaunchWithAction:v6];
  }
}

- (void)activitySystemApertureWithSceneHandle:(id)a3 updatedContentPayloadID:(id)a4
{
  v6 = a4;
  v5 = [(ACUISSystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 activitySystemApertureSceneHandle:self updatedContentPayloadID:v6];
  }
}

- (ACUISSystemApertureSceneHandleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end