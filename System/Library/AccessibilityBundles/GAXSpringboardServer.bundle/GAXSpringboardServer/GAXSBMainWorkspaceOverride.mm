@interface GAXSBMainWorkspaceOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_handleUserActionRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result;
- (void)presentPowerDownTransientOverlay;
- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion;
@end

@implementation GAXSBMainWorkspaceOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"systemService: handleOpenApplicationRequest: withCompletion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"_handleUserActionRequest: options: activationSettings: origin: withResult:" withFullSignature:{"v", "@", "@", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"_canExecuteTransitionRequest:forExecution:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"SBMainWorkspace" hasInstanceMethod:@"presentPowerDownTransientOverlay" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"source" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransitionRequest" hasInstanceMethod:@"transientOverlayContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransientOverlayTransitionContext" hasInstanceMethod:@"transientOverlay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransientOverlay" hasInstanceMethod:@"viewController" withFullSignature:{"@", 0}];
}

- (void)systemService:(id)service handleOpenApplicationRequest:(id)request withCompletion:(id)completion
{
  serviceCopy = service;
  requestCopy = request;
  completionCopy = completion;
  v11 = +[GAXSpringboard sharedInstance];
  if (![v11 isActive])
  {
    goto LABEL_6;
  }

  v12 = GAXAllowedRemoteUIProcesses();
  bundleIdentifier = [requestCopy bundleIdentifier];
  v14 = [v12 containsObject:bundleIdentifier];

  if (v14)
  {
    goto LABEL_6;
  }

  frontmostAppIdentifier = [v11 frontmostAppIdentifier];
  bundleIdentifier2 = [requestCopy bundleIdentifier];
  if ([frontmostAppIdentifier isEqualToString:bundleIdentifier2])
  {

LABEL_6:
    v24.receiver = self;
    v24.super_class = GAXSBMainWorkspaceOverride;
    [(GAXSBMainWorkspaceOverride *)&v24 systemService:serviceCopy handleOpenApplicationRequest:requestCopy withCompletion:completionCopy];
    goto LABEL_7;
  }

  bundleIdentifier3 = [requestCopy bundleIdentifier];
  v18 = [v11 isBundleIDAllowedApp:bundleIdentifier3];

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = GAXLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier4 = [requestCopy bundleIdentifier];
    *buf = 138543362;
    v28 = bundleIdentifier4;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Guided Access blocking workspace open app request: %{public}@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v21 = FBSOpenApplicationErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Guided Access active";
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = [NSError errorWithDomain:v21 code:1 userInfo:v22];

    completionCopy[2](completionCopy, v23);
  }

LABEL_7:
}

- (void)_handleUserActionRequest:(id)request options:(id)options activationSettings:(id)settings origin:(id)origin withResult:(id)result
{
  requestCopy = request;
  optionsCopy = options;
  settingsCopy = settings;
  originCopy = origin;
  resultCopy = result;
  v16 = +[GAXSpringboard sharedInstance];
  buf[0] = 0;
  objc_opt_class();
  frontmostAppIdentifier = [optionsCopy objectForKey:FBSOpenApplicationOptionKeyPayloadURL];
  v18 = __UIAccessibilityCastAsClass();

  if (![v16 isActive])
  {
    goto LABEL_10;
  }

  v19 = GAXURLSchemeIsPhoneRelated(v18);
  v20 = v19;
  if (v19)
  {
    frontmostAppIdentifier = [v16 frontmostAppIdentifier];
    if (GAXAppIsMobilePhoneOrFacetime(frontmostAppIdentifier))
    {
      goto LABEL_6;
    }
  }

  frontmostAppIdentifier2 = [v16 frontmostAppIdentifier];
  if ([frontmostAppIdentifier2 isEqualToString:requestCopy])
  {

    if ((v20 & 1) == 0)
    {
LABEL_10:
      v30.receiver = self;
      v30.super_class = GAXSBMainWorkspaceOverride;
      v23 = settingsCopy;
      [(GAXSBMainWorkspaceOverride *)&v30 _handleUserActionRequest:requestCopy options:optionsCopy activationSettings:settingsCopy origin:originCopy withResult:resultCopy];
      goto LABEL_11;
    }

LABEL_6:

    goto LABEL_10;
  }

  v28 = frontmostAppIdentifier;
  v22 = [v16 isBundleIDAllowedApp:requestCopy];

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
    v36 = requestCopy;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Guided Access blocking workspace open URL request: %{public}@ app: %{public}@", buf, 0x16u);
  }

  v23 = settingsCopy;
  if (resultCopy)
  {
    v25 = FBSOpenApplicationErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Guided Access active";
    v26 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [NSError errorWithDomain:v25 code:1 userInfo:v26];

    resultCopy[2](resultCopy, v27);
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