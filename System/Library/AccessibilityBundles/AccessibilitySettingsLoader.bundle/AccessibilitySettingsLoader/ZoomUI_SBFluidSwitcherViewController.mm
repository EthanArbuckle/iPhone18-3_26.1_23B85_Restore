@interface ZoomUI_SBFluidSwitcherViewController
- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture;
- (void)handleFluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture;
@end

@implementation ZoomUI_SBFluidSwitcherViewController

- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  v8 = [(ZoomUI_SBFluidSwitcherViewController *)self safeUIViewForKey:@"view"];
  window = [v8 window];
  screen = [window screen];
  displayIdentity = [screen displayIdentity];
  displayID = [displayIdentity displayID];

  if ((!soft_AXDeviceHasHomeButton() || soft_AXDeviceIsPad()) && (translatedUpwards & 1) != 0 || ([getZoomServicesClass() sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "activeZoomModeOnDisplay:", displayID), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x29EDBD628]), v14, v13, v15))
  {
    sharedInstance = [getZoomServicesClass() sharedInstance];
    [sharedInstance notifyZoomFluidSwitcherGestureWillBegin];
  }

  v17.receiver = self;
  v17.super_class = ZoomUI_SBFluidSwitcherViewController;
  [(ZoomUI_SBFluidSwitcherViewController *)&v17 handleFluidSwitcherGestureManager:managerCopy didBeginGesture:gestureCopy];
}

- (void)handleFluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!soft_AXDeviceHasHomeButton() || soft_AXDeviceIsPad())
  {
    if (soft_AXDeviceIsPad())
    {
      v8 = [(ZoomUI_SBFluidSwitcherViewController *)self safeValueForKey:@"rootModifier"];
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 3221225472;
      v12[2] = __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke;
      v12[3] = &unk_29F29A5D0;
      v9 = v8;
      v13 = v9;
      v14 = &v15;
      soft_AXPerformSafeBlock(v12);
    }

    if ((v16[3] & 1) == 0)
    {
      sharedInstance = [getZoomServicesClass() sharedInstance];
      [sharedInstance performSelector:sel_notifyZoomFluidSwitcherGestureDidFinish withObject:0 afterDelay:0.5];
    }
  }

  v11.receiver = self;
  v11.super_class = ZoomUI_SBFluidSwitcherViewController;
  [(ZoomUI_SBFluidSwitcherViewController *)&v11 handleFluidSwitcherGestureManager:managerCopy didEndGesture:gestureCopy];
  _Block_object_dispose(&v15, 8);
}

@end