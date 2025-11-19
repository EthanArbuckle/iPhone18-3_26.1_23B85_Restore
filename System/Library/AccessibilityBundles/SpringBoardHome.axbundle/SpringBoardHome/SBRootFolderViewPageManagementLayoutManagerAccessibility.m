@interface SBRootFolderViewPageManagementLayoutManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)transitionToActive:(BOOL)a3 inFolderView:(id)a4 usingAnimator:(id)a5;
@end

@implementation SBRootFolderViewPageManagementLayoutManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBRootFolderViewPageManagementLayoutManager" hasInstanceMethod:@"transitionToActive:inFolderView:usingAnimator:" withFullSignature:{"v", "B", "@", "@", 0}];
  [v3 validateClass:@"SBRootFolderViewPageManagementLayoutManager" hasInstanceMethod:@"focusModeSymbolView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DNDStateService" hasInstanceMethod:@"queryCurrentStateWithError:" withFullSignature:{"@", "^@", 0}];
  [v3 validateClass:@"DNDState" hasInstanceMethod:@"activeModeConfiguration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DNDModeConfiguration" hasInstanceMethod:@"mode" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DNDMode" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)transitionToActive:(BOOL)a3 inFolderView:(id)a4 usingAnimator:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = SBRootFolderViewPageManagementLayoutManagerAccessibility;
  [(SBRootFolderViewPageManagementLayoutManagerAccessibility *)&v19 transitionToActive:v6 inFolderView:v8 usingAnimator:v9];
  v10 = [(SBRootFolderViewPageManagementLayoutManagerAccessibility *)self safeUIViewForKey:@"focusModeSymbolView"];
  v11 = v10;
  if (v6 && v10)
  {
    objc_initWeak(&location, v10);
    v12 = dispatch_get_global_queue(0, 0);
    v13 = MEMORY[0x29EDCA5F8];
    v14 = 3221225472;
    v15 = __106__SBRootFolderViewPageManagementLayoutManagerAccessibility_transitionToActive_inFolderView_usingAnimator___block_invoke;
    v16 = &unk_29F300230;
    objc_copyWeak(&v17, &location);
    dispatch_async(v12, &v13);

    [v11 setIsAccessibilityElement:{1, v13, v14, v15, v16}];
    [v11 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v11);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __106__SBRootFolderViewPageManagementLayoutManagerAccessibility_transitionToActive_inFolderView_usingAnimator___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[1] = MEMORY[0x29EDCA5F8];
  v4[2] = 3221225472;
  v4[3] = __106__SBRootFolderViewPageManagementLayoutManagerAccessibility_transitionToActive_inFolderView_usingAnimator___block_invoke_321;
  v4[4] = &unk_29F3001E0;
  v4[5] = &v5;
  AXPerformSafeBlock();
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  v3 = v2;
  objc_copyWeak(v4, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(v4);
}

void __106__SBRootFolderViewPageManagementLayoutManagerAccessibility_transitionToActive_inFolderView_usingAnimator___block_invoke_321(uint64_t a1)
{
  v6 = AXSBIconControllerSharedInstance();
  v2 = [v6 safeValueForKey:@"dndStateService"];
  v3 = [v2 queryCurrentStateWithError:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __106__SBRootFolderViewPageManagementLayoutManagerAccessibility_transitionToActive_inFolderView_usingAnimator___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"focus.on");
  v4 = [*(a1 + 32) safeValueForKeyPath:@"activeModeConfiguration.mode.name"];
  v6 = [v2 stringWithFormat:v3, v4];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAccessibilityLabel:v6];
}

@end