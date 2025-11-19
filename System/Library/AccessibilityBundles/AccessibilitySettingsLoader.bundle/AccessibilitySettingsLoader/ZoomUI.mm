@interface ZoomUI
@end

@implementation ZoomUI

uint64_t __50__ZoomUI_UIAlertControllerOverride_viewDidAppear___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) convertRect:*(a1 + 40) fromView:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

uint64_t __50__ZoomUI_UIAlertControllerOverride_viewDidAppear___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) convertRect:0 toWindow:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

uint64_t __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke_2;
  v3[3] = &unk_29F29A5A8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateChildModifiersWithBlock:v3];
}

void __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  soft_AXSafeClassFromString(@"SBHomeGestureRootSwitcherModifier");
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke_3;
    v7[3] = &unk_29F29A580;
    v7[4] = *(a1 + 32);
    v7[5] = a4;
    [v6 enumerateChildModifiersWithBlock:v7];
  }
}

void __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  soft_AXSafeClassFromString(@"SBHomeGestureSwitcherModifier");
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 safeIntegerForKey:@"currentFinalDestination"];
    v8 = [v6 safeValueForKey:@"_dockModifier"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke_4;
    v12[3] = &unk_29F29A558;
    v14 = &v16;
    v9 = v8;
    v13 = v9;
    v15 = v7;
    soft_AXPerformSafeBlock(v12);
    LODWORD(v7) = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
    if (v7 == 1)
    {
      v10 = [getZoomServicesClass() sharedInstance];
      [v10 notifyZoomFluidSwitcherGestureDidFinishWithDock];

      v11 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
      *v11 = 1;
    }
  }
}

uint64_t __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) _shouldPresentDockForFinalDestination:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end