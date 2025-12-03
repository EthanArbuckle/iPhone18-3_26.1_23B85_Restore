@interface GAXFBSOpenApplicationService
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason;
- (void)_openApplication:(id)application withOptions:(id)options clientHandle:(id)handle completion:(id)completion;
@end

@implementation GAXFBSOpenApplicationService

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FBSOpenApplicationService" hasInstanceMethod:@"canOpenApplication: reason:" withFullSignature:{"B", "@", "^q", 0}];
  [validationsCopy validateClass:@"FBSOpenApplicationService" hasInstanceMethod:@"_openApplication: withOptions: clientHandle: completion:" withFullSignature:{"v", "@", "@", "@", "@?", 0}];
}

- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason
{
  applicationCopy = application;
  v7 = +[GAXSpringboard sharedInstance];
  if (![v7 isActive])
  {
    goto LABEL_6;
  }

  v8 = GAXAllowedRemoteUIProcesses();
  if ([v8 containsObject:applicationCopy])
  {
    goto LABEL_5;
  }

  frontmostAppIdentifier = [v7 frontmostAppIdentifier];
  if ([frontmostAppIdentifier isEqualToString:applicationCopy])
  {

LABEL_5:
LABEL_6:
    v14.receiver = self;
    v14.super_class = GAXFBSOpenApplicationService;
    v10 = [(GAXFBSOpenApplicationService *)&v14 canOpenApplication:applicationCopy reason:reason];
    goto LABEL_7;
  }

  v12 = [v7 isBundleIDAllowedApp:applicationCopy];

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = GAXLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = applicationCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for canActivate of app: %{public}@", buf, 0xCu);
  }

  v10 = 0;
  if (reason)
  {
    *reason = 1;
  }

LABEL_7:

  return v10;
}

- (void)_openApplication:(id)application withOptions:(id)options clientHandle:(id)handle completion:(id)completion
{
  applicationCopy = application;
  optionsCopy = options;
  handleCopy = handle;
  completionCopy = completion;
  v14 = +[GAXSpringboard sharedInstance];
  if (![v14 isActive])
  {
    goto LABEL_6;
  }

  v15 = GAXAllowedRemoteUIProcesses();
  if ([v15 containsObject:applicationCopy])
  {
    goto LABEL_5;
  }

  frontmostAppIdentifier = [v14 frontmostAppIdentifier];
  if ([frontmostAppIdentifier isEqualToString:applicationCopy])
  {

LABEL_5:
LABEL_6:
    v23.receiver = self;
    v23.super_class = GAXFBSOpenApplicationService;
    [(GAXFBSOpenApplicationService *)&v23 _openApplication:applicationCopy withOptions:optionsCopy clientHandle:handleCopy completion:completionCopy];
    goto LABEL_7;
  }

  v17 = [v14 isBundleIDAllowedApp:applicationCopy];

  if (v17)
  {
    goto LABEL_6;
  }

  v18 = GAXLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = applicationCopy;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Guided Access blocking activation of app: %{public}@", buf, 0xCu);
  }

  if (completionCopy)
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
    v30 = completionCopy;
    v28 = handleCopy;
    v29 = v21;
    v22 = v21;
    AXPerformSafeBlock();
  }

LABEL_7:
}

@end