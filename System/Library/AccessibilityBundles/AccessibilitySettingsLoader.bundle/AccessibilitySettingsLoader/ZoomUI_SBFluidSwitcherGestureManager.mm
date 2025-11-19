@interface ZoomUI_SBFluidSwitcherGestureManager
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
@end

@implementation ZoomUI_SBFluidSwitcherGestureManager

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[ZoomServicesUI _shouldUnmapPointsForFluidGestures])
  {
    goto LABEL_11;
  }

  v8 = [getAXSettingsClass() sharedInstance];
  if ([v8 zoomInStandby])
  {
    goto LABEL_10;
  }

  v9 = +[ZoomServicesUI _deviceIsPortrait];

  if (!v9)
  {
LABEL_11:
    v36.receiver = self;
    v36.super_class = ZoomUI_SBFluidSwitcherGestureManager;
    v34 = [(ZoomUI_SBFluidSwitcherGestureManager *)&v36 gestureRecognizer:v6 shouldReceiveTouch:v7];
    goto LABEL_12;
  }

  v37 = 0;
  v10 = objc_opt_class();
  v11 = [(ZoomUI_SBFluidSwitcherGestureManager *)self safeValueForKey:@"activateReachabilityGestureRecognizer"];
  v8 = soft___UIAccessibilityCastAsClass(v10, v11, &v37);

  if (v37 == 1)
  {
    goto LABEL_13;
  }

  if (v8 != v6)
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

  v15 = [v14 view];
  [v15 bounds];
  v17 = v16;
  v18 = [(ZoomUI_SBFluidSwitcherGestureManager *)self safeValueForKey:@"reachabilitySettings"];
  soft_AXSafeClassFromString(@"SBReachabilitySettings");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  [v18 safeCGFloatForKey:@"homeGestureSwipeDownHeight"];
  v20 = v19;
  v21 = [v6 view];
  [v7 locationInView:v21];
  v23 = v22;
  v25 = v24;

  v26 = [getZoomServicesClass() sharedInstance];
  v27 = [MEMORY[0x29EDC7C40] mainScreen];
  v28 = [v27 displayIdentity];
  [v26 zoomFrameOnDisplay:{objc_msgSend(v28, "displayID")}];
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