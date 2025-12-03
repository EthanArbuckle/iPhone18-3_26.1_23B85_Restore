@interface AXSpringBoardServerSideAppManager
+ (AXSpringBoardServerSideAppManager)sharedInstance;
+ (id)_mainDisplaySceneManager;
- (AXSpringBoardServerSideAppManager)init;
- (AXSpringBoardServerSideAppManagerDelegate)delegate;
- (BOOL)_isDockIconView:(id)view;
- (BOOL)canActivateMedusaForDock;
- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)view;
- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)view;
- (BOOL)hasMultipleApps;
- (BOOL)isDisplayingApp;
- (BOOL)performMedusaGesture:(unint64_t)gesture;
- (id)_activeApplicationBundleIdentifiers;
- (id)_appForLayoutRole:(int64_t)role layoutState:(id)state;
- (id)_applicationController;
- (id)_bundleIdentifierForIconView:(id)view;
- (id)_firstFloatingAppLayout;
- (id)_floatingAppRootViewController;
- (id)_mainDisplaySceneManager;
- (id)_sbEmptyEntity;
- (id)_sbPreviousEntity;
- (id)_sbPreviousWorkspaceEntityClass;
- (id)_sbSwitcherTransitionRequestClass;
- (id)_sbWorkspaceMainWorkspace;
- (id)allowedMedusaGestures;
- (id)appForLayoutRole:(int64_t)role;
- (id)medusaAppBundleIdsToLayoutRoles;
- (id)medusaApps;
- (id)sceneLayoutState;
- (int64_t)_currentFloatingConfiguration;
- (int64_t)_currentSpaceConfiguration;
- (void)_addFloatingApplicationGesturesIfAllowed:(id)allowed;
- (void)_addResizeGestureRecognizerGesturesIfAllowed:(id)allowed;
- (void)_endDockIconActivationModeAfterTimeout;
- (void)_enumerateAppsAndLayoutRoles:(id)roles;
- (void)_performMedusaGesture:(unint64_t)gesture;
- (void)_performSwipeOnFloatingAppSwitcher:(unint64_t)switcher;
- (void)_performValidation;
- (void)_requestTransactionWithPrimaryEntity:(id)entity sideEntity:(id)sideEntity floatingEntity:(id)floatingEntity spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration;
- (void)launchApplication:(id)application;
- (void)launchApplicationWithFullConfiguration:(id)configuration;
- (void)launchFloatingApplication:(id)application;
- (void)launchPinnedApplication:(id)application onLeadingSide:(BOOL)side;
- (void)setDockIconActivationMode:(unint64_t)mode;
@end

@implementation AXSpringBoardServerSideAppManager

+ (AXSpringBoardServerSideAppManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AXSpringBoardServerSideAppManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_SharedInstance;

  return v2;
}

- (BOOL)isDisplayingApp
{
  objc_opt_class();
  _mainDisplaySceneManager = [(AXSpringBoardServerSideAppManager *)self _mainDisplaySceneManager];
  v4 = [_mainDisplaySceneManager safeValueForKey:@"externalForegroundApplicationSceneHandles"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 count] != 0;
  return v6;
}

- (id)_mainDisplaySceneManager
{
  v2 = objc_opt_class();

  return [v2 _mainDisplaySceneManager];
}

+ (id)_mainDisplaySceneManager
{
  if (AXSpringBoardIsReadyToBeProbed())
  {
    if (_mainDisplaySceneManager_onceToken != -1)
    {
      +[AXSpringBoardServerSideAppManager _mainDisplaySceneManager];
    }

    v2 = [_mainDisplaySceneManager__axSBSceneManagerCoordinatorClass safeValueForKey:@"mainDisplaySceneManager"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class __61__AXSpringBoardServerSideAppManager__mainDisplaySceneManager__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbscenemanager_0.isa);
  _mainDisplaySceneManager__axSBSceneManagerCoordinatorClass = result;
  return result;
}

uint64_t __51__AXSpringBoardServerSideAppManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_SharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AXSpringBoardServerSideAppManager)init
{
  v5.receiver = self;
  v5.super_class = AXSpringBoardServerSideAppManager;
  v2 = [(AXSpringBoardServerSideAppManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXSpringBoardServerSideAppManager *)v2 _performValidation];
  }

  return v3;
}

- (void)_performValidation
{
  mEMORY[0x277CE69B0] = [MEMORY[0x277CE69B0] sharedInstance];
  [mEMORY[0x277CE69B0] performValidations:&__block_literal_global_3 withPreValidationHandler:&__block_literal_global_540 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_546];
}

uint64_t __55__AXSpringBoardServerSideAppManager__performValidation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SBPlatformController"];
  [v2 validateClass:@"SBPlatformController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPlatformController" hasInstanceMethod:@"medusaCapabilities" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"mainDisplaySceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"externalForegroundApplicationSceneHandles" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainDisplaySceneManager"];
  [v2 validateClass:@"SBMainDisplaySceneManager" hasInstanceMethod:@"currentLayoutState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSceneManager"];
  [v2 validateClass:@"SBSceneManager" conformsToProtocol:@"SBApplicationSceneHandleProviding"];
  [v2 validateClass:@"SBSceneManager" conformsToProtocol:@"SBApplicationSceneIdentityProviding"];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"newSceneIdentityForApplication:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"fetchOrCreateApplicationSceneHandleForRequest:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBApplicationSceneHandleRequest"];
  [v2 validateClass:@"SBApplicationSceneHandleRequest" hasClassMethod:@"defaultRequestForApplication:sceneIdentity:displayIdentity:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v2 validateClass:@"SBLayoutState" hasInstanceMethod:@"elementWithRole:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"spaceConfiguration" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"floatingConfiguration" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator"];
  [v2 validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceVariable:@"_appLayouts" withType:"NSArray"];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentFloatingAppLayout" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_configureRequest:forSwitcherTransitionRequest:withEventLabel:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v2 validateClass:@"SBSwitcherTransitionRequest"];
  [v2 validateClass:@"SBSwitcherTransitionRequest" hasClassMethod:@"requestForActivatingAppLayout:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController"];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_toggleFloatingAppVisibility" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"appLayouts" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWorkspace"];
  [v2 validateClass:@"SBWorkspace" hasClassMethod:@"mainWorkspace" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainWorkspace"];
  [v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"requestTransitionWithOptions:builder:validator:" withFullSignature:{"B", "Q", "@?", "@?", 0}];
  [v2 validateClass:@"SBWorkspaceTransitionRequest"];
  [v2 validateClass:@"SBWorkspaceTransitionRequest" hasInstanceMethod:@"modifyApplicationContext:" withFullSignature:{"v", "@?", 0}];
  [v2 validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"setSource:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"SBWorkspaceApplicationSceneTransitionContext"];
  [v2 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"setEntity:forLayoutRole:" withFullSignature:{"v", "@", "q", 0}];
  [v2 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"setRequestedSpaceConfiguration:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"setRequestedFloatingConfiguration:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"applicationSceneEntityForLayoutRole:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"SBWorkspaceEntity"];
  [v2 validateClass:@"SBEmptyWorkspaceEntity" isKindOfClass:@"SBWorkspaceEntity"];
  [v2 validateClass:@"SBPreviousWorkspaceEntity" isKindOfClass:@"SBWorkspaceEntity"];
  [v2 validateClass:@"SBWorkspaceEntity" hasClassMethod:@"entity" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPreviousWorkspaceEntity" hasClassMethod:@"entityWithPreviousLayoutRole:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"SBWorkspaceEntity" hasInstanceMethod:@"applicationSceneEntity" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationController"];
  [v2 validateClass:@"SBApplicationController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationSceneEntity"];
  [v2 validateClass:@"SBApplicationSceneEntity" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication"];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"isMedusaCapable" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"info" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBDeviceApplicationSceneEntity"];
  [v2 validateClass:@"SBDeviceApplicationSceneEntity" hasInstanceMethod:@"initWithApplicationForMainDisplay:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBDeviceApplicationSceneEntity" hasInstanceMethod:@"initWithApplicationSceneHandle:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"FBSApplicationInfo"];
  [v2 validateClass:@"FBSApplicationInfo" hasInstanceMethod:@"supportsMultiwindow" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLayoutElement"];
  [v2 validateClass:@"SBLayoutElement" hasInstanceMethod:@"layoutAttributes" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"SBLayoutElement" hasInstanceMethod:@"workspaceEntity" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"mainDisplaySceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activeDisplaySwitcherController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"layoutState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"isFloatingSwitcherVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconView" hasInstanceVariable:@"_iconLocation" withType:"NSString"];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"iconManager:launchIconForIconView:withActions:modifierFlags:" withFullSignature:{"v", "@", "@", "@", "q", 0}];
  [v2 validateClass:@"SBLeafIcon" hasInstanceMethod:@"applicationBundleID" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAppLayout" hasInstanceMethod:@"environment" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBAppLayout" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];

  return 1;
}

uint64_t __55__AXSpringBoardServerSideAppManager__performValidation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AXSpringBoardServerHelperSideAppManager"];
  [v2 setOverrideProcessName:@"AXSpringBoardServerHelperSideAppManager"];
  [v2 setDebugBuild:0];

  return MEMORY[0x282138D58]();
}

- (id)allowedMedusaGestures
{
  array = [MEMORY[0x277CBEB18] array];
  if (AXDeviceSupportsSideApp())
  {
    v4 = [NSClassFromString(&cfstr_Gaxspringboard.isa) safeValueForKey:@"sharedInstance"];
    v5 = v4;
    if (v4 && ([v4 safeValueForKey:@"shouldAllowMedusaGestures"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, (v7 & 1) == 0))
    {
      v19 = array;
    }

    else
    {
      v8 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
      objc_opt_class();
      v9 = [v8 safeValueForKey:@"_contentViewController"];
      v10 = __UIAccessibilityCastAsClass();

      v11 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"_activeDisplaySwitcherController"];
      v12 = [v11 safeValueForKey:@"layoutState"];

      v13 = [v12 safeBoolForKey:@"isFloatingSwitcherVisible"];
      view = [v10 view];
      window = [view window];
      isHidden = [window isHidden];

      if ((isHidden & 1) == 0 && (v13 & 1) == 0)
      {
        [(AXSpringBoardServerSideAppManager *)self _addFloatingApplicationGesturesIfAllowed:array];
      }

      if ([(AXSpringBoardServerSideAppManager *)self _hasPinnedApp])
      {
        [(AXSpringBoardServerSideAppManager *)self _addResizeGestureRecognizerGesturesIfAllowed:array];
      }

      v17 = array;
    }
  }

  else
  {
    v18 = array;
  }

  return array;
}

- (id)appForLayoutRole:(int64_t)role
{
  sceneLayoutState = [(AXSpringBoardServerSideAppManager *)self sceneLayoutState];
  v6 = [(AXSpringBoardServerSideAppManager *)self _appForLayoutRole:role layoutState:sceneLayoutState];

  return v6;
}

- (id)_appForLayoutRole:(int64_t)role layoutState:(id)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  stateCopy = state;
  AXPerformSafeBlock();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__AXSpringBoardServerSideAppManager__appForLayoutRole_layoutState___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) elementWithRole:*(a1 + 48)];
  v2 = [v7 safeValueForKey:@"workspaceEntity"];
  v3 = [v2 safeValueForKey:@"applicationSceneEntity"];
  v4 = [v3 safeValueForKey:@"application"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_enumerateAppsAndLayoutRoles:(id)roles
{
  rolesCopy = roles;
  sceneLayoutState = [(AXSpringBoardServerSideAppManager *)self sceneLayoutState];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AXSpringBoardServerSideAppManager__enumerateAppsAndLayoutRoles___block_invoke;
  aBlock[3] = &unk_27842C758;
  aBlock[4] = self;
  v10 = sceneLayoutState;
  v11 = rolesCopy;
  v6 = rolesCopy;
  v7 = sceneLayoutState;
  v8 = _Block_copy(aBlock);
  v8[2](v8, 1);
  v8[2](v8, 2);
  if ([(AXSpringBoardServerSideAppManager *)self _currentFloatingConfiguration]!= 3 && [(AXSpringBoardServerSideAppManager *)self _currentFloatingConfiguration]!= 4)
  {
    v8[2](v8, 3);
  }
}

uint64_t __66__AXSpringBoardServerSideAppManager__enumerateAppsAndLayoutRoles___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _appForLayoutRole:a2 layoutState:*(a1 + 40)];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 48) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)medusaApps
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__AXSpringBoardServerSideAppManager_medusaApps__block_invoke;
  v6[3] = &unk_27842C780;
  v4 = v3;
  v7 = v4;
  [(AXSpringBoardServerSideAppManager *)self _enumerateAppsAndLayoutRoles:v6];

  return v4;
}

void __47__AXSpringBoardServerSideAppManager_medusaApps__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 safeValueForKey:@"displayName"];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

    v5 = v7;
  }
}

- (id)medusaAppBundleIdsToLayoutRoles
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AXSpringBoardServerSideAppManager_medusaAppBundleIdsToLayoutRoles__block_invoke;
  v6[3] = &unk_27842C780;
  v4 = v3;
  v7 = v4;
  [(AXSpringBoardServerSideAppManager *)self _enumerateAppsAndLayoutRoles:v6];

  return v4;
}

void __68__AXSpringBoardServerSideAppManager_medusaAppBundleIdsToLayoutRoles__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 safeValueForKey:@"bundleIdentifier"];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

    v5 = v7;
  }
}

- (BOOL)performMedusaGesture:(unint64_t)gesture
{
  allowedMedusaGestures = [(AXSpringBoardServerSideAppManager *)self allowedMedusaGestures];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:gesture];
  v7 = [allowedMedusaGestures containsObject:v6];

  if (v7)
  {
    if (gesture >= 0x10)
    {
      if (gesture == 16)
      {
        [(AXSpringBoardServerSideAppManager *)self _performSwipeOnFloatingAppSwitcher:16];
      }
    }

    else
    {
      [(AXSpringBoardServerSideAppManager *)self _performMedusaGesture:gesture];
    }
  }

  else
  {
    _AXLogWithFacility();
  }

  return v7;
}

- (BOOL)hasMultipleApps
{
  v19 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AAA0] sharedInstance];
  currentLayout = [mEMORY[0x277D0AAA0] currentLayout];

  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements = [currentLayout elements];
  v6 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(elements);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        if ([bundleIdentifier length])
        {
          [v4 addObject:bundleIdentifier];
        }
      }

      v7 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 count] > 1;
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)canActivateMedusaForDock
{
  sceneLayoutState = [(AXSpringBoardServerSideAppManager *)self sceneLayoutState];
  v3 = [sceneLayoutState safeIntegerForKey:@"unlockedEnvironmentMode"] == 3;

  return v3;
}

- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)view
{
  viewCopy = view;
  if ([(AXSpringBoardServerSideAppManager *)self canLaunchAsFloatingApplicationForIconView:viewCopy])
  {
    sceneLayoutState = [(AXSpringBoardServerSideAppManager *)self sceneLayoutState];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    v10 = MEMORY[0x277D85DD0];
    v11 = sceneLayoutState;
    AXPerformSafeBlock();
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
    v7 = [v6 safeUnsignedIntegerForKey:{@"layoutAttributes", v10, 3221225472, __77__AXSpringBoardServerSideAppManager_canLaunchAsPinnedApplicationForIconView___block_invoke, &unk_27842BBA8}];

    v8 = v7 & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __77__AXSpringBoardServerSideAppManager_canLaunchAsPinnedApplicationForIconView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) elementWithRole:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)view
{
  viewCopy = view;
  v5 = [viewCopy safeValueForKey:@"icon"];
  v6 = [v5 safeValueForKey:@"application"];
  v7 = [v6 safeValueForKey:@"info"];
  if ([(AXSpringBoardServerSideAppManager *)self canActivateMedusaForDock]&& [(AXSpringBoardServerSideAppManager *)self _isDockIconView:viewCopy])
  {
    v8 = [v7 safeBoolForKey:@"supportsMultiwindow"];
    v9 = [(AXSpringBoardServerSideAppManager *)self _bundleIdentifierForIconView:viewCopy];
    v10 = [(AXSpringBoardServerSideAppManager *)self _appWithIdentifier:v9];
    v11 = [v10 safeBoolForKey:@"isMedusaCapable"] | v8;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)setDockIconActivationMode:(unint64_t)mode
{
  if (self->_dockIconActivationMode != mode)
  {
    self->_dockIconActivationMode = mode;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__endDockIconActivationModeAfterTimeout object:0];
    if (mode)
    {

      [(AXSpringBoardServerSideAppManager *)self performSelector:sel__endDockIconActivationModeAfterTimeout withObject:0 afterDelay:15.0];
    }
  }
}

- (void)_endDockIconActivationModeAfterTimeout
{
  if (![(AXSpringBoardServerSideAppManager *)self dockIconActivationMode])
  {
    _AXAssert();
  }

  if ([(AXSpringBoardServerSideAppManager *)self dockIconActivationMode]== 3)
  {
    delegate = [(AXSpringBoardServerSideAppManager *)self delegate];
    [delegate didFailToFloatAppForSideAppManager:self];
LABEL_8:

    goto LABEL_9;
  }

  if ([(AXSpringBoardServerSideAppManager *)self dockIconActivationMode]== 1 || [(AXSpringBoardServerSideAppManager *)self dockIconActivationMode]== 2)
  {
    delegate = [(AXSpringBoardServerSideAppManager *)self delegate];
    [delegate didFailToPinAppForSideAppManager:self];
    goto LABEL_8;
  }

LABEL_9:

  [(AXSpringBoardServerSideAppManager *)self setDockIconActivationMode:0];
}

- (id)_applicationController
{
  v2 = _applicationController_AX_SBApplicationController;
  if (!_applicationController_AX_SBApplicationController)
  {
    v3 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
    v4 = _applicationController_AX_SBApplicationController;
    _applicationController_AX_SBApplicationController = v3;

    v2 = _applicationController_AX_SBApplicationController;
  }

  return v2;
}

- (void)_addFloatingApplicationGesturesIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13 = MEMORY[0x277D85DD0];
  AXPerformSafeBlock();
  v5 = v15[5];
  _Block_object_dispose(&v14, 8);

  v6 = [v5 safeUnsignedIntegerForKey:{@"layoutAttributes", v13, 3221225472, __78__AXSpringBoardServerSideAppManager__addFloatingApplicationGesturesIfAllowed___block_invoke, &unk_27842BBA8, self, &v14}];
  _currentFloatingConfiguration = [(AXSpringBoardServerSideAppManager *)self _currentFloatingConfiguration];
  if ((_currentFloatingConfiguration - 3) < 2)
  {
    v9 = &unk_2833B15D0;
LABEL_11:
    [allowedCopy addObject:v9];
    goto LABEL_12;
  }

  if (_currentFloatingConfiguration == 1)
  {
    [allowedCopy addObject:&unk_2833B1528];
    if (v6)
    {
      v8 = &unk_2833B1540;
      goto LABEL_9;
    }

LABEL_10:
    [allowedCopy addObject:&unk_2833B1558];
    [allowedCopy addObject:&unk_2833B1570];
    v9 = &unk_2833B1588;
    goto LABEL_11;
  }

  if (_currentFloatingConfiguration == 2)
  {
    [allowedCopy addObject:&unk_2833B15A0];
    if (v6)
    {
      v8 = &unk_2833B15B8;
LABEL_9:
      [allowedCopy addObject:v8];
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_12:
  _firstFloatingAppLayout = [(AXSpringBoardServerSideAppManager *)self _firstFloatingAppLayout];
  if (_firstFloatingAppLayout)
  {
    v11 = _firstFloatingAppLayout;
    v12 = [allowedCopy containsObject:&unk_2833B15D0];

    if ((v12 & 1) == 0)
    {
      [allowedCopy addObject:&unk_2833B15D0];
    }
  }
}

void __78__AXSpringBoardServerSideAppManager__addFloatingApplicationGesturesIfAllowed___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sceneLayoutState];
  v2 = [v5 elementWithRole:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_addResizeGestureRecognizerGesturesIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  _currentSpaceConfiguration = [(AXSpringBoardServerSideAppManager *)self _currentSpaceConfiguration];
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (_currentSpaceConfiguration == 3 || (activeInterfaceOrientation - 3) > 1)
  {
    v7 = _currentSpaceConfiguration == 3 && (activeInterfaceOrientation - 5) < 0xFFFFFFFFFFFFFFFELL;
    if (_currentSpaceConfiguration == 4 || v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    [allowedCopy addObject:&unk_2833B1600];
    [allowedCopy addObject:&unk_2833B1618];
    v8 = allowedCopy;
    if (_currentSpaceConfiguration == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [allowedCopy addObject:&unk_2833B15E8];
  if (_currentSpaceConfiguration != 4)
  {
    goto LABEL_13;
  }

LABEL_14:
  [allowedCopy addObject:&unk_2833B1630];
  [allowedCopy addObject:&unk_2833B1648];
  v8 = allowedCopy;
LABEL_15:
  [v8 addObject:&unk_2833B1660];
  [allowedCopy addObject:&unk_2833B1678];
  [allowedCopy addObject:&unk_2833B1690];
  [allowedCopy addObject:&unk_2833B16A8];
}

- (void)_performMedusaGesture:(unint64_t)gesture
{
  [(AXSpringBoardServerSideAppManager *)self _currentSpaceConfiguration];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  if (*(v5 + 24) == 1)
  {
    [(AXSpringBoardServerSideAppManager *)self _requestFloatingAppSwitcherVisible];
  }

  else
  {
    [(AXSpringBoardServerSideAppManager *)self _requestTransactionWithPrimaryEntity:v21[5] sideEntity:v15[5] floatingEntity:v9[5] spaceConfiguration:v31[3] floatingConfiguration:v27[3]];
  }

  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void __59__AXSpringBoardServerSideAppManager__performMedusaGesture___block_invoke(uint64_t a1)
{
  v1 = (a1 + 88);
  switch(*(a1 + 88))
  {
    case 0:
      v15 = *(*(a1 + 72) + 8);
      v16 = 3;
      goto LABEL_24;
    case 1:
    case 4:
      v3 = *(a1 + 72);
      goto LABEL_13;
    case 2:
    case 3:
      goto LABEL_8;
    case 5:
      v39 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v40 = [v39 entityWithPreviousLayoutRole:3];
      v41 = *(*(a1 + 40) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = v40;

      v43 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v44 = [v43 entityWithPreviousLayoutRole:1];
      v45 = *(*(a1 + 48) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v44;

      v47 = [*(a1 + 32) _sbEmptyEntity];
      v48 = *(*(a1 + 56) + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = v47;

      v16 = *(a1 + 96);
      v15 = *(*(a1 + 72) + 8);
      if (v16 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    case 6:
      v50 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v51 = [v50 entityWithPreviousLayoutRole:1];
      v52 = *(*(a1 + 40) + 8);
      v53 = *(v52 + 40);
      *(v52 + 40) = v51;

      v54 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v55 = [v54 entityWithPreviousLayoutRole:3];
      v56 = *(*(a1 + 48) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = v55;

      v58 = [*(a1 + 32) _sbEmptyEntity];
      v59 = *(*(a1 + 56) + 8);
      v60 = *(v59 + 40);
      *(v59 + 40) = v58;

      v16 = *(a1 + 96);
      v15 = *(*(a1 + 72) + 8);
      if (v16 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    case 7:
      v29 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v30 = [v29 entityWithPreviousLayoutRole:2];
      v31 = *(*(a1 + 40) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v33 = [*(a1 + 32) _sbEmptyEntity];
      v34 = *(*(a1 + 48) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;

      v36 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v37 = v36;
      v18 = 1;
      v38 = 1;
      goto LABEL_26;
    case 8:
      v61 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v62 = [v61 entityWithPreviousLayoutRole:1];
      v63 = *(*(a1 + 40) + 8);
      v64 = *(v63 + 40);
      *(v63 + 40) = v62;

      v65 = [*(a1 + 32) _sbEmptyEntity];
      v66 = *(*(a1 + 48) + 8);
      v67 = *(v66 + 40);
      *(v66 + 40) = v65;

      v36 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v37 = v36;
      v18 = 2;
      v38 = 2;
LABEL_26:
      v68 = [v36 entityWithPreviousLayoutRole:v38];
      v69 = *(*(a1 + 56) + 8);
      v70 = *(v69 + 40);
      *(v69 + 40) = v68;

      v28 = *(a1 + 64);
      goto LABEL_27;
    case 9:
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v3 = *(a1 + 64);
LABEL_13:
      v15 = *(v3 + 8);
LABEL_14:
      v16 = 2;
      goto LABEL_24;
    case 0xALL:
      v16 = 1;
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v15 = *(*(a1 + 64) + 8);
      goto LABEL_24;
    case 0xBLL:
      v5 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v6 = [v5 entityWithPreviousLayoutRole:2];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = [*(a1 + 32) _sbEmptyEntity];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [*(a1 + 32) _sbPreviousEntity];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

LABEL_8:
      v15 = *(*(a1 + 72) + 8);
LABEL_9:
      v16 = 4;
LABEL_24:
      *(v15 + 24) = v16;
      return;
    case 0xCLL:
      v17 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
      v18 = 1;
      v19 = [v17 entityWithPreviousLayoutRole:1];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = [*(a1 + 32) _sbEmptyEntity];
      v23 = *(*(a1 + 48) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = [*(a1 + 32) _sbPreviousEntity];
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v28 = *(a1 + 72);
LABEL_27:
      *(*(v28 + 8) + 24) = v18;
      return;
    case 0xDLL:
      v72 = *(a1 + 32);
      goto LABEL_20;
    case 0xELL:
      v71 = *(a1 + 32);
LABEL_20:
      AXPerformSafeBlock();
      break;
    case 0xFLL:
      *(*(*(a1 + 80) + 8) + 24) = 1;
      break;
    case 0x10:
      v4 = AXLogSpringboardServer();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __59__AXSpringBoardServerSideAppManager__performMedusaGesture___block_invoke_cold_1(v1, v4);
      }

      break;
    default:
      return;
  }
}

void __59__AXSpringBoardServerSideAppManager__performMedusaGesture___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _floatingAppRootViewController];
  [v1 _toggleFloatingAppVisibility];
}

void __59__AXSpringBoardServerSideAppManager__performMedusaGesture___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _floatingAppRootViewController];
  [v1 _toggleFloatingAppVisibility];
}

- (void)_performSwipeOnFloatingAppSwitcher:(unint64_t)switcher
{
  v4 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v5 = [v4 safeArrayForKey:@"_appLayouts"];
  v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_612];

  v7 = [v4 safeValueForKeyPath:@"_activeDisplaySwitcherController._currentFloatingAppLayout"];
  v8 = [v6 indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && switcher == 16)
  {
    v10 = v8;
    if (v8 >= [v6 count] - 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = [v6 objectAtIndex:++v10];

        v11 = v12;
      }

      while (v10 < [v6 count] - 1);
    }

    v14 = v4;
    v13 = v12;
    AXPerformSafeBlock();
  }
}

void __72__AXSpringBoardServerSideAppManager__performSwipeOnFloatingAppSwitcher___block_invoke_2(id *a1)
{
  v2 = [a1[4] _sbWorkspaceMainWorkspace];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__AXSpringBoardServerSideAppManager__performSwipeOnFloatingAppSwitcher___block_invoke_3;
  aBlock[3] = &unk_27842C7F0;
  v8 = *(a1 + 2);
  v3 = *(&v8 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v7 = _Block_copy(aBlock);
  [v2 requestTransitionWithOptions:0 builder:v7 validator:0];
}

void __72__AXSpringBoardServerSideAppManager__performSwipeOnFloatingAppSwitcher___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sbSwitcherTransitionRequestClass];
  v6 = [v5 requestForActivatingAppLayout:*(a1 + 40)];

  [*(a1 + 48) _configureRequest:v4 forSwitcherTransitionRequest:v6 withEventLabel:*(a1 + 56)];
  [v4 setSource:18];
}

- (void)_requestTransactionWithPrimaryEntity:(id)entity sideEntity:(id)sideEntity floatingEntity:(id)floatingEntity spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration
{
  entityCopy = entity;
  sideEntityCopy = sideEntity;
  floatingEntityCopy = floatingEntity;
  if (entityCopy)
  {
    if (sideEntityCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    sideEntityCopy = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
    if (floatingEntityCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    floatingEntityCopy = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
    goto LABEL_4;
  }

  entityCopy = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
  if (!sideEntityCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!floatingEntityCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = entityCopy;
  v13 = floatingEntityCopy;
  v14 = sideEntityCopy;
  v15 = entityCopy;
  AXPerformSafeBlock();
}

void __141__AXSpringBoardServerSideAppManager__requestTransactionWithPrimaryEntity_sideEntity_floatingEntity_spaceConfiguration_floatingConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sbWorkspaceMainWorkspace];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __141__AXSpringBoardServerSideAppManager__requestTransactionWithPrimaryEntity_sideEntity_floatingEntity_spaceConfiguration_floatingConfiguration___block_invoke_2;
  aBlock[3] = &unk_27842C868;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v3 = _Block_copy(aBlock);
  [v2 requestTransitionWithOptions:0 builder:v3 validator:0];
}

void __141__AXSpringBoardServerSideAppManager__requestTransactionWithPrimaryEntity_sideEntity_floatingEntity_spaceConfiguration_floatingConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __141__AXSpringBoardServerSideAppManager__requestTransactionWithPrimaryEntity_sideEntity_floatingEntity_spaceConfiguration_floatingConfiguration___block_invoke_3;
  v5[3] = &unk_27842C840;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v4 = a2;
  [v4 modifyApplicationContext:v5];
  [v4 setSource:18];
}

void __141__AXSpringBoardServerSideAppManager__requestTransactionWithPrimaryEntity_sideEntity_floatingEntity_spaceConfiguration_floatingConfiguration___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setEntity:v3 forLayoutRole:1];
  [v4 setEntity:a1[5] forLayoutRole:2];
  [v4 setEntity:a1[6] forLayoutRole:3];
  [v4 setRequestedSpaceConfiguration:a1[7]];
  [v4 setRequestedFloatingConfiguration:a1[8]];
}

void __71__AXSpringBoardServerSideAppManager__requestFloatingAppSwitcherVisible__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _sbWorkspaceMainWorkspace];
  [v1 requestTransitionWithOptions:0 builder:&__block_literal_global_622 validator:0];
}

void __71__AXSpringBoardServerSideAppManager__requestFloatingAppSwitcherVisible__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 modifyApplicationContext:&__block_literal_global_624];
  [v2 setSource:18];
}

- (void)launchApplication:(id)application
{
  applicationCopy = application;
  NSClassFromString(&cfstr_Sbapplication.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__3;
    v12 = __Block_byref_object_dispose__3;
    v13 = 0;
    v6 = MEMORY[0x277D85DD0];
    v7 = applicationCopy;
    AXPerformSafeBlock();
    v5 = v9[5];

    _Block_object_dispose(&v8, 8);
    [(AXSpringBoardServerSideAppManager *)self _requestTransactionWithPrimaryEntity:v5 sideEntity:0 floatingEntity:0 spaceConfiguration:1 floatingConfiguration:0, v6, 3221225472, __55__AXSpringBoardServerSideAppManager_launchApplication___block_invoke, &unk_27842BBA8];
  }
}

uint64_t __55__AXSpringBoardServerSideAppManager_launchApplication___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(NSClassFromString(&cfstr_Sbdeviceapplic_2.isa)) initWithApplicationForMainDisplay:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)launchApplicationWithFullConfiguration:(id)configuration
{
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Sbapplication.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = configurationCopy;
    AXPerformSafeBlock();
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
    v6 = [(AXSpringBoardServerSideAppManager *)self _sbEmptyEntity:v8];
    _sbPreviousEntity = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
    [(AXSpringBoardServerSideAppManager *)self _requestTransactionWithPrimaryEntity:v5 sideEntity:v6 floatingEntity:_sbPreviousEntity spaceConfiguration:1 floatingConfiguration:3];
  }
}

uint64_t __76__AXSpringBoardServerSideAppManager_launchApplicationWithFullConfiguration___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(NSClassFromString(&cfstr_Sbdeviceapplic_2.isa)) initWithApplicationForMainDisplay:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)launchPinnedApplication:(id)application onLeadingSide:(BOOL)side
{
  sideCopy = side;
  applicationCopy = application;
  NSClassFromString(&cfstr_Sbapplication.isa);
  if (objc_opt_isKindOfClass())
  {
    _currentSpaceConfiguration = [(AXSpringBoardServerSideAppManager *)self _currentSpaceConfiguration];
    v8 = _currentSpaceConfiguration;
    if (_currentSpaceConfiguration != 4 && _currentSpaceConfiguration != 2)
    {
      if (sideCopy)
      {
        v8 = 2;
      }

      else
      {
        v8 = 4;
      }
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    AXPerformSafeBlock();
    v9 = v32[5];
    _Block_object_dispose(&v31, 8);

    _mainDisplaySceneManager = [(AXSpringBoardServerSideAppManager *)self _mainDisplaySceneManager];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    v29 = _mainDisplaySceneManager;
    v30 = applicationCopy;
    AXPerformSafeBlock();
    v11 = v32[5];

    _Block_object_dispose(&v31, 8);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    v26 = v30;
    v27 = v11;
    v28 = v29;
    AXPerformSafeBlock();
    v12 = v32[5];

    _Block_object_dispose(&v31, 8);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    v13 = v28;
    v14 = v12;
    AXPerformSafeBlock();
    v25 = applicationCopy;
    v15 = v9;
    v16 = v8;
    v17 = v32[5];

    _Block_object_dispose(&v31, 8);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    v18 = v17;
    AXPerformSafeBlock();
    v19 = v32[5];

    _Block_object_dispose(&v31, 8);
    if (sideCopy)
    {
      v20 = v19;
    }

    else
    {
      v20 = v15;
    }

    if (sideCopy)
    {
      v21 = v15;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21;
    v23 = v20;
    _sbPreviousEntity = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
    [(AXSpringBoardServerSideAppManager *)self _requestTransactionWithPrimaryEntity:v23 sideEntity:v22 floatingEntity:_sbPreviousEntity spaceConfiguration:v16 floatingConfiguration:0];

    applicationCopy = v25;
  }
}

void __75__AXSpringBoardServerSideAppManager_launchPinnedApplication_onLeadingSide___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _sbPreviousWorkspaceEntityClass];
  v2 = [v5 entityWithPreviousLayoutRole:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __75__AXSpringBoardServerSideAppManager_launchPinnedApplication_onLeadingSide___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) newSceneIdentityForApplication:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __75__AXSpringBoardServerSideAppManager_launchPinnedApplication_onLeadingSide___block_invoke_3(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Sbapplications.isa);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = [*(a1 + 48) safeValueForKey:@"displayIdentity"];
  v5 = [(objc_class *)v2 defaultRequestForApplication:v3 sceneIdentity:v4 displayIdentity:v8];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __75__AXSpringBoardServerSideAppManager_launchPinnedApplication_onLeadingSide___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchOrCreateApplicationSceneHandleForRequest:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __75__AXSpringBoardServerSideAppManager_launchPinnedApplication_onLeadingSide___block_invoke_5(uint64_t a1)
{
  v2 = [objc_alloc(NSClassFromString(&cfstr_Sbdeviceapplic_2.isa)) initWithApplicationSceneHandle:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)launchFloatingApplication:(id)application
{
  applicationCopy = application;
  NSClassFromString(&cfstr_Sbapplication.isa);
  if (objc_opt_isKindOfClass())
  {
    _sbPreviousEntity = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
    _sbPreviousEntity2 = [(AXSpringBoardServerSideAppManager *)self _sbPreviousEntity];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = applicationCopy;
    AXPerformSafeBlock();
    v7 = v11[5];

    _Block_object_dispose(&v10, 8);
    [(AXSpringBoardServerSideAppManager *)self _requestTransactionWithPrimaryEntity:_sbPreviousEntity sideEntity:_sbPreviousEntity2 floatingEntity:v7 spaceConfiguration:0 floatingConfiguration:2, v8, 3221225472, __63__AXSpringBoardServerSideAppManager_launchFloatingApplication___block_invoke, &unk_27842BBA8];
  }
}

uint64_t __63__AXSpringBoardServerSideAppManager_launchFloatingApplication___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(NSClassFromString(&cfstr_Sbdeviceapplic_2.isa)) initWithApplicationForMainDisplay:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isDockIconView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy safeValueForKey:@"_iconLocation"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getSBIconLocationDockSymbolLoc_ptr;
  v15 = getSBIconLocationDockSymbolLoc_ptr;
  if (!getSBIconLocationDockSymbolLoc_ptr)
  {
    v6 = SpringBoardHomeLibrary();
    v13[3] = dlsym(v6, "SBIconLocationDock");
    getSBIconLocationDockSymbolLoc_ptr = v13[3];
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    [AXSpringBoardServerSideAppManager _isDockIconView:];
  }

  v7 = *v5;
  if ([v4 isEqual:v7])
  {
    goto LABEL_9;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getSBIconLocationFloatingDockSymbolLoc_ptr;
  v15 = getSBIconLocationFloatingDockSymbolLoc_ptr;
  if (!getSBIconLocationFloatingDockSymbolLoc_ptr)
  {
    v9 = SpringBoardHomeLibrary();
    v13[3] = dlsym(v9, "SBIconLocationFloatingDock");
    getSBIconLocationFloatingDockSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    [AXSpringBoardServerSideAppManager _isDockIconView:];
  }

  if ([v4 isEqualToString:*v8])
  {
LABEL_9:
    v10 = 1;
  }

  else
  {
    v10 = [v4 isEqual:@"SBIconLocationFloatingDockSuggestions"];
  }

  return v10;
}

- (id)_bundleIdentifierForIconView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy safeValueForKey:@"icon"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeStringForKey:@"applicationBundleID"];

  return v6;
}

- (id)_activeApplicationBundleIdentifiers
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  AXPerformSafeBlock();
  v2 = v4;

  return v4;
}

uint64_t __72__AXSpringBoardServerSideAppManager__activeApplicationBundleIdentifiers__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [&unk_2833B1780 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_2833B1780);
        }

        v6 = [*(*(&v11 + 1) + 8 * v5) integerValue];
        v7 = [*(a1 + 32) appForLayoutRole:v6];
        v8 = [v7 safeStringForKey:@"bundleIdentifier"];

        if (v6 == 3)
        {
          v9 = [*(a1 + 32) sceneLayoutState];
          if (([v9 safeIntegerForKey:@"floatingConfiguration"] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
          {

            v8 = 0;
          }
        }

        [*(a1 + 40) axSafelyAddObject:v8];

        ++v5;
      }

      while (v3 != v5);
      result = [&unk_2833B1780 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v3 = result;
    }

    while (result);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_sbPreviousEntity
{
  _sbPreviousWorkspaceEntityClass = [(AXSpringBoardServerSideAppManager *)self _sbPreviousWorkspaceEntityClass];
  v3 = [_sbPreviousWorkspaceEntityClass safeValueForKey:@"entity"];

  return v3;
}

- (id)_sbEmptyEntity
{
  if (_sbEmptyEntity_onceToken != -1)
  {
    [AXSpringBoardServerSideAppManager _sbEmptyEntity];
  }

  v3 = _sbEmptyEntity__sbPreviousWorkspaceClass;

  return [v3 safeValueForKey:@"entity"];
}

Class __51__AXSpringBoardServerSideAppManager__sbEmptyEntity__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbemptyworkspa.isa);
  _sbEmptyEntity__sbPreviousWorkspaceClass = result;
  return result;
}

- (id)_sbPreviousWorkspaceEntityClass
{
  if (_sbPreviousWorkspaceEntityClass_onceToken != -1)
  {
    [AXSpringBoardServerSideAppManager _sbPreviousWorkspaceEntityClass];
  }

  v3 = _sbPreviousWorkspaceEntityClass__sbPreviousWorkspaceClass;

  return v3;
}

Class __68__AXSpringBoardServerSideAppManager__sbPreviousWorkspaceEntityClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbpreviouswork.isa);
  _sbPreviousWorkspaceEntityClass__sbPreviousWorkspaceClass = result;
  return result;
}

- (id)_sbSwitcherTransitionRequestClass
{
  if (_sbSwitcherTransitionRequestClass_onceToken != -1)
  {
    [AXSpringBoardServerSideAppManager _sbSwitcherTransitionRequestClass];
  }

  v3 = _sbSwitcherTransitionRequestClass__sbSwitcherTransitionRequestClass;

  return v3;
}

Class __70__AXSpringBoardServerSideAppManager__sbSwitcherTransitionRequestClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbswitchertran.isa);
  _sbSwitcherTransitionRequestClass__sbSwitcherTransitionRequestClass = result;
  return result;
}

- (id)_sbWorkspaceMainWorkspace
{
  if (_sbWorkspaceMainWorkspace_onceToken != -1)
  {
    [AXSpringBoardServerSideAppManager _sbWorkspaceMainWorkspace];
  }

  v3 = _sbWorkspaceMainWorkspace__sbWorkSpaceClass;

  return [v3 safeValueForKey:@"mainWorkspace"];
}

Class __62__AXSpringBoardServerSideAppManager__sbWorkspaceMainWorkspace__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbworkspace.isa);
  _sbWorkspaceMainWorkspace__sbWorkSpaceClass = result;
  return result;
}

- (int64_t)_currentFloatingConfiguration
{
  sceneLayoutState = [(AXSpringBoardServerSideAppManager *)self sceneLayoutState];
  v3 = [sceneLayoutState safeIntegerForKey:@"floatingConfiguration"];

  return v3;
}

- (int64_t)_currentSpaceConfiguration
{
  sceneLayoutState = [(AXSpringBoardServerSideAppManager *)self sceneLayoutState];
  v3 = [sceneLayoutState safeIntegerForKey:@"spaceConfiguration"];

  return v3;
}

- (id)sceneLayoutState
{
  _mainDisplaySceneManager = [(AXSpringBoardServerSideAppManager *)self _mainDisplaySceneManager];
  v3 = [_mainDisplaySceneManager safeValueForKey:@"currentLayoutState"];

  return v3;
}

- (id)_floatingAppRootViewController
{
  v2 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v3 = [v2 safeValueForKey:@"_contentViewController"];

  return v3;
}

- (id)_firstFloatingAppLayout
{
  _floatingAppRootViewController = [(AXSpringBoardServerSideAppManager *)self _floatingAppRootViewController];
  v3 = [_floatingAppRootViewController safeArrayForKey:@"appLayouts"];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_643];

  firstObject = [v4 firstObject];

  return firstObject;
}

- (AXSpringBoardServerSideAppManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __59__AXSpringBoardServerSideAppManager__performMedusaGesture___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_21FE6B000, a2, OS_LOG_TYPE_ERROR, "Attempting to perform invalid gesture: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_isDockIconView:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBIconLocationFloatingDock(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerSideAppManager.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_isDockIconView:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBIconLocationDock(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerSideAppManager.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

@end