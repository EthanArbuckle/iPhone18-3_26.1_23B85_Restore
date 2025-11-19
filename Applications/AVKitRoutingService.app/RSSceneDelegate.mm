@interface RSSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation RSSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"RSSceneDelegate.m" lineNumber:52 description:@"Connecting scene is not a window scene!"];
  }

  v10 = [v9 userActivities];
  v11 = [v10 anyObject];

  v12 = [v8 _FBSScene];
  v13 = [v12 hostHandle];
  v14 = [v13 auditToken];

  if (v14)
  {
    [v14 realToken];
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

  v19 = [v11 activityType];
  if ([v19 isEqualToString:@"RSInputRoutingActivityType"])
  {
    v20 = [_TtC19AVKitRoutingService32RSInputRoutePickerViewController createWithClientIdentifier:v18];
  }

  else
  {
    v20 = objc_alloc_init(RSPlaceholderViewController);
  }

  v21 = v20;
  v22 = v8;
  v23 = [[UIWindow alloc] initWithWindowScene:v22];

  [(RSSceneDelegate *)self setWindow:v23];
  v24 = [(RSSceneDelegate *)self window];
  [v24 setRootViewController:v21];

  v25 = [(RSSceneDelegate *)self window];
  [v25 makeKeyAndVisible];
}

@end