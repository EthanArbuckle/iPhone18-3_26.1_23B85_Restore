@interface ZoomUI_SBFluidSwitcherGestureManager
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
@end

@implementation ZoomUI_SBFluidSwitcherGestureManager

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (!+[ZoomServicesUI _shouldUnmapPointsForFluidGestures])
  {
    goto LABEL_11;
  }

  sharedInstance = [getAXSettingsClass() sharedInstance];
  if ([sharedInstance zoomInStandby])
  {
    goto LABEL_10;
  }

  v9 = +[ZoomServicesUI _deviceIsPortrait];

  if (!v9)
  {
LABEL_11:
    v36.receiver = self;
    v36.super_class = ZoomUI_SBFluidSwitcherGestureManager;
    v34 = [(ZoomUI_SBFluidSwitcherGestureManager *)&v36 gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
    goto LABEL_12;
  }

  v37 = 0;
  v10 = objc_opt_class();
  v11 = [(ZoomUI_SBFluidSwitcherGestureManager *)self safeValueForKey:@"activateReachabilityGestureRecognizer"];
  sharedInstance = soft___UIAccessibilityCastAsClass(v10, v11, &v37);

  if (v37 == 1)
  {
    goto LABEL_13;
  }

  if (sharedInstance != recognizerCopy)
  {
LABEL_10:

    goto LABEL_11;
  }

  v37 = 0;
  v12 = objc_opt_class();
  v13 = [(ZoomUI_SBFluidSwitcherGestureManager *)self safeValueForKey:@"switcherContentController"];
  v14 = soft___UIAccessibilityCastAsClass(v12, v13, &v37);

  if (v37 == 1)
  {
LABEL_13:
    abort();
  }

  view = [v14 view];
  [view bounds];
  v17 = v16;
  v18 = [(ZoomUI_SBFluidSwitcherGestureManager *)self safeValueForKey:@"reachabilitySettings"];
  soft_AXSafeClassFromString(@"SBReachabilitySettings");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  [v18 safeCGFloatForKey:@"homeGestureSwipeDownHeight"];
  v20 = v19;
  view2 = [recognizerCopy view];
  [touchCopy locationInView:view2];
  v23 = v22;
  v25 = v24;

  sharedInstance2 = [getZoomServicesClass() sharedInstance];
  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
  displayIdentity = [mainScreen displayIdentity];
  [sharedInstance2 zoomFrameOnDisplay:{objc_msgSend(displayIdentity, "displayID")}];
  *zoomFrame = v29;
  *&zoomFrame[8] = v30;
  *&zoomFrame[16] = v31;
  *&zoomFrame[24] = v32;

  [ZoomServicesUI _unMappedZoomPoint:v23, v25];
  v34 = v33 > v17 - v20;

LABEL_12:
  return v34;
}

@end