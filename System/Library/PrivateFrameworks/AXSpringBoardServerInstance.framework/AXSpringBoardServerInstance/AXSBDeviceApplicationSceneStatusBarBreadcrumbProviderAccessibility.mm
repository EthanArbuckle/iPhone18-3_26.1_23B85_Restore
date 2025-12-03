@interface AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility
+ (BOOL)_shouldAddBreadcrumbToActivatingSceneEntity:(id)entity sceneHandle:(id)handle withTransitionContext:(id)context;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBWorkspaceApplicationSceneTransitionContext"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneStatusBarBreadcrumbProvider" hasClassMethod:@"_shouldAddBreadcrumbToActivatingSceneEntity:sceneHandle:withTransitionContext:" withFullSignature:{"B", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"applicationSceneEntityForLayoutRole:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"previousApplicationSceneEntityForLayoutRole:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SBWorkspaceTransitionContext"];
  [validationsCopy validateClass:@"SBWorkspaceTransitionContext" hasInstanceMethod:@"request" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainWorkspaceTransitionRequest"];
  [validationsCopy validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"source" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"isMainWorkspaceTransitionRequest" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBApplicationSceneEntity"];
  [validationsCopy validateClass:@"SBApplicationSceneEntity" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplication"];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
}

+ (BOOL)_shouldAddBreadcrumbToActivatingSceneEntity:(id)entity sceneHandle:(id)handle withTransitionContext:(id)context
{
  entityCopy = entity;
  handleCopy = handle;
  contextCopy = context;
  v11 = [entityCopy safeValueForKey:@"application"];
  v12 = [v11 safeValueForKey:@"bundleIdentifier"];

  LOBYTE(v47) = 0;
  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();

  if (![v13 isEqualToString:*MEMORY[0x277D81C00]])
  {
    goto LABEL_12;
  }

  selfCopy = self;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __148__AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility__shouldAddBreadcrumbToActivatingSceneEntity_sceneHandle_withTransitionContext___block_invoke;
  v44 = &unk_27842BBA8;
  v46 = &v47;
  v14 = contextCopy;
  v45 = v14;
  AXPerformSafeBlock();
  v15 = v48[5];

  _Block_object_dispose(&v47, 8);
  v16 = [v15 safeValueForKey:@"application"];

  v17 = [v16 safeStringForKey:@"bundleIdentifier"];

  LOBYTE(v47) = 0;
  objc_opt_class();
  v18 = __UIAccessibilityCastAsClass();
  if (v47 == 1)
  {
    goto LABEL_14;
  }

  v19 = v18;

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __148__AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility__shouldAddBreadcrumbToActivatingSceneEntity_sceneHandle_withTransitionContext___block_invoke_2;
  v38 = &unk_27842BBA8;
  v40 = &v47;
  v20 = v14;
  v39 = v20;
  AXPerformSafeBlock();
  v21 = v48[5];

  _Block_object_dispose(&v47, 8);
  v22 = [v21 safeValueForKey:@"application"];

  v23 = [v22 safeStringForKey:@"bundleIdentifier"];

  LOBYTE(v47) = 0;
  objc_opt_class();
  v24 = __UIAccessibilityCastAsClass();
  if (v47 == 1)
  {
    goto LABEL_14;
  }

  v25 = v24;

  LOBYTE(v47) = 0;
  v26 = [v20 safeValueForKey:@"request"];
  v27 = __UIAccessibilitySafeClass();

  if (v47 == 1)
  {
LABEL_14:
    abort();
  }

  v28 = [v27 safeIntegerForKey:@"source"];
  v29 = [v25 length];
  v30 = [v27 safeBoolForKey:@"isMainWorkspaceTransitionRequest"];
  if (![v19 isEqual:v13] || ((objc_msgSend(v25, "isEqual:", v13) ^ 1) & v30) != 1 || !v29 || v28 != 18)
  {

    self = selfCopy;
LABEL_12:
    v34.receiver = self;
    v34.super_class = &OBJC_METACLASS___AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility;
    v31 = objc_msgSendSuper2(&v34, sel__shouldAddBreadcrumbToActivatingSceneEntity_sceneHandle_withTransitionContext_, entityCopy, handleCopy, contextCopy, selfCopy);
    goto LABEL_13;
  }

  v31 = 1;
LABEL_13:

  return v31;
}

uint64_t __148__AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility__shouldAddBreadcrumbToActivatingSceneEntity_sceneHandle_withTransitionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationSceneEntityForLayoutRole:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __148__AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility__shouldAddBreadcrumbToActivatingSceneEntity_sceneHandle_withTransitionContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) previousApplicationSceneEntityForLayoutRole:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

@end