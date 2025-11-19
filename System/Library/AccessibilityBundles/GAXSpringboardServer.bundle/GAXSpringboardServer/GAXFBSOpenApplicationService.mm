@interface GAXFBSOpenApplicationService
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canOpenApplication:(id)a3 reason:(int64_t *)a4;
- (void)_openApplication:(id)a3 withOptions:(id)a4 clientHandle:(id)a5 completion:(id)a6;
@end

@implementation GAXFBSOpenApplicationService

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FBSOpenApplicationService" hasInstanceMethod:@"canOpenApplication: reason:" withFullSignature:{"B", "@", "^q", 0}];
  [v3 validateClass:@"FBSOpenApplicationService" hasInstanceMethod:@"_openApplication: withOptions: clientHandle: completion:" withFullSignature:{"v", "@", "@", "@", "@?", 0}];
}

- (BOOL)canOpenApplication:(id)a3 reason:(int64_t *)a4
{
  v6 = a3;
  v7 = +[GAXSpringboard sharedInstance];
  if (![v7 isActive])
  {
    goto LABEL_6;
  }

  v8 = GAXAllowedRemoteUIProcesses();
  if ([v8 containsObject:v6])
  {
    goto LABEL_5;
  }

  v9 = [v7 frontmostAppIdentifier];
  if ([v9 isEqualToString:v6])
  {

LABEL_5:
LABEL_6:
    v14.receiver = self;
    v14.super_class = GAXFBSOpenApplicationService;
    v10 = [(GAXFBSOpenApplicationService *)&v14 canOpenApplication:v6 reason:a4];
    goto LABEL_7;
  }

  v12 = [v7 isBundleIDAllowedApp:v6];

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = GAXLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for canActivate of app: %{public}@", buf, 0xCu);
  }

  v10 = 0;
  if (a4)
  {
    *a4 = 1;
  }

LABEL_7:

  return v10;
}

- (void)_openApplication:(id)a3 withOptions:(id)a4 clientHandle:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[GAXSpringboard sharedInstance];
  if (![v14 isActive])
  {
    goto LABEL_6;
  }

  v15 = GAXAllowedRemoteUIProcesses();
  if ([v15 containsObject:v10])
  {
    goto LABEL_5;
  }

  v16 = [v14 frontmostAppIdentifier];
  if ([v16 isEqualToString:v10])
  {

LABEL_5:
LABEL_6:
    v23.receiver = self;
    v23.super_class = GAXFBSOpenApplicationService;
    [(GAXFBSOpenApplicationService *)&v23 _openApplication:v10 withOptions:v11 clientHandle:v12 completion:v13];
    goto LABEL_7;
  }

  v17 = [v14 isBundleIDAllowedApp:v10];

  if (v17)
  {
    goto LABEL_6;
  }

  v18 = GAXLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v10;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Guided Access blocking activation of app: %{public}@", buf, 0xCu);
  }

  if (v13)
  {
    v19 = FBSOpenApplicationErrorDomain;
    v31 = NSLocalizedFailureReasonErrorKey;
    v32 = @"Guided Access is active";
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v21 = [NSError errorWithDomain:v19 code:1 userInfo:v20];

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_13F58;
    v27 = &unk_2D5F0;
    v30 = v13;
    v28 = v12;
    v29 = v21;
    v22 = v21;
    AXPerformSafeBlock();
  }

LABEL_7:
}

@end