@interface RSSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation RSSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"RSSceneDelegate.m" lineNumber:52 description:@"Connecting scene is not a window scene!"];
  }

  userActivities = [optionsCopy userActivities];
  anyObject = [userActivities anyObject];

  _FBSScene = [sceneCopy _FBSScene];
  hostHandle = [_FBSScene hostHandle];
  auditToken = [hostHandle auditToken];

  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    memset(&cf, 0, sizeof(cf));
  }

  v15 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &cf);
  v16 = v15;
  if (v15)
  {
    *cf.val = 0;
    v17 = SecTaskCopySigningIdentifier(v15, &cf);
    if (v17)
    {
      v18 = v17;
      goto LABEL_11;
    }

    CFRelease(*cf.val);
  }

  CFRelease(v16);
  v18 = 0;
LABEL_11:

  activityType = [anyObject activityType];
  if ([activityType isEqualToString:@"RSInputRoutingActivityType"])
  {
    v20 = [_TtC19AVKitRoutingService32RSInputRoutePickerViewController createWithClientIdentifier:v18];
  }

  else
  {
    v20 = objc_alloc_init(RSPlaceholderViewController);
  }

  v21 = v20;
  v22 = sceneCopy;
  v23 = [[UIWindow alloc] initWithWindowScene:v22];

  [(RSSceneDelegate *)self setWindow:v23];
  window = [(RSSceneDelegate *)self window];
  [window setRootViewController:v21];

  window2 = [(RSSceneDelegate *)self window];
  [window2 makeKeyAndVisible];
}

@end