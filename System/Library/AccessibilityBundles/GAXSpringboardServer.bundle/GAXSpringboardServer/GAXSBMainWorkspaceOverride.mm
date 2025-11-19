@interface GAXSBMainWorkspaceOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_handleUserActionRequest:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7;
- (void)presentPowerDownTransientOverlay;
- (void)systemService:(id)a3 handleOpenApplicationRequest:(id)a4 withCompletion:(id)a5;
@end

@implementation GAXSBMainWorkspaceOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"systemService: handleOpenApplicationRequest: withCompletion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"_handleUserActionRequest: options: activationSettings: origin: withResult:" withFullSignature:{"v", "@", "@", "@", "@", "@?", 0}];
  [v3 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"_canExecuteTransitionRequest:forExecution:" withFullSignature:{"@", "B", 0}];
  [v3 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"presentPowerDownTransientOverlay" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"source" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBWorkspaceTransitionRequest" hasInstanceMethod:@"transientOverlayContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWorkspaceTransientOverlayTransitionContext" hasInstanceMethod:@"transientOverlay" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWorkspaceTransientOverlay" hasInstanceMethod:@"viewController" withFullSignature:{"@", 0}];
}

- (void)systemService:(id)a3 handleOpenApplicationRequest:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GAXSpringboard sharedInstance];
  if (![v11 isActive])
  {
    goto LABEL_6;
  }

  v12 = GAXAllowedRemoteUIProcesses();
  v13 = [v9 bundleIdentifier];
  v14 = [v12 containsObject:v13];

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = [v11 frontmostAppIdentifier];
  v16 = [v9 bundleIdentifier];
  if ([v15 isEqualToString:v16])
  {

LABEL_6:
    v24.receiver = self;
    v24.super_class = GAXSBMainWorkspaceOverride;
    [(GAXSBMainWorkspaceOverride *)&v24 systemService:v8 handleOpenApplicationRequest:v9 withCompletion:v10];
    goto LABEL_7;
  }

  v17 = [v9 bundleIdentifier];
  v18 = [v11 isBundleIDAllowedApp:v17];

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = GAXLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v9 bundleIdentifier];
    *buf = 138543362;
    v28 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Guided Access blocking workspace open app request: %{public}@", buf, 0xCu);
  }

  if (v10)
  {
    v21 = FBSOpenApplicationErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Guided Access active";
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = [NSError errorWithDomain:v21 code:1 userInfo:v22];

    v10[2](v10, v23);
  }

LABEL_7:
}

- (void)_handleUserActionRequest:(id)a3 options:(id)a4 activationSettings:(id)a5 origin:(id)a6 withResult:(id)a7
{
  v12 = a3;
  v13 = a4;
  v29 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[GAXSpringboard sharedInstance];
  buf[0] = 0;
  objc_opt_class();
  v17 = [v13 objectForKey:FBSOpenApplicationOptionKeyPayloadURL];
  v18 = __UIAccessibilityCastAsClass();

  if (![v16 isActive])
  {
    goto LABEL_10;
  }

  v19 = GAXURLSchemeIsPhoneRelated(v18);
  v20 = v19;
  if (v19)
  {
    v17 = [v16 frontmostAppIdentifier];
    if (GAXAppIsMobilePhoneOrFacetime(v17))
    {
      goto LABEL_6;
    }
  }

  v21 = [v16 frontmostAppIdentifier];
  if ([v21 isEqualToString:v12])
  {

    if ((v20 & 1) == 0)
    {
LABEL_10:
      v30.receiver = self;
      v30.super_class = GAXSBMainWorkspaceOverride;
      v23 = v29;
      [(GAXSBMainWorkspaceOverride *)&v30 _handleUserActionRequest:v12 options:v13 activationSettings:v29 origin:v14 withResult:v15];
      goto LABEL_11;
    }

LABEL_6:

    goto LABEL_10;
  }

  v28 = v17;
  v22 = [v16 isBundleIDAllowedApp:v12];

  if (v20)
  {
  }

  if (v22)
  {
    goto LABEL_10;
  }

  v24 = GAXLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v18;
    v35 = 2114;
    v36 = v12;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Guided Access blocking workspace open URL request: %{public}@ app: %{public}@", buf, 0x16u);
  }

  v23 = v29;
  if (v15)
  {
    v25 = FBSOpenApplicationErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Guided Access active";
    v26 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [NSError errorWithDomain:v25 code:1 userInfo:v26];

    v15[2](v15, v27);
  }

LABEL_11:
}

- (void)presentPowerDownTransientOverlay
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Guided Access active. Disallowing slide-to-power-down";
LABEL_7:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    if (![v3 wantsSingleAppModeOrAppSelfLockMode])
    {
      v6.receiver = self;
      v6.super_class = GAXSBMainWorkspaceOverride;
      [(GAXSBMainWorkspaceOverride *)&v6 presentPowerDownTransientOverlay];
      goto LABEL_10;
    }

    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Device wants Single App Mode / App self-lock mode. Disallowing slide-to-power-down";
      goto LABEL_7;
    }
  }

LABEL_10:
}

@end