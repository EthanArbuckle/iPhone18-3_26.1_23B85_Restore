@interface ZoomUI_SBHomeGesturePanGestureRecognizer
- (CGPoint)translationInView:(id)view;
@end

@implementation ZoomUI_SBHomeGesturePanGestureRecognizer

- (CGPoint)translationInView:(id)view
{
  viewCopy = view;
  if (!+[ZoomServicesUI _shouldUnmapPointsForFluidGestures])
  {
    goto LABEL_6;
  }

  sharedInstance = [getAXSettingsClass() sharedInstance];
  if ([sharedInstance zoomInStandby])
  {

LABEL_6:
    v36.receiver = self;
    v36.super_class = ZoomUI_SBHomeGesturePanGestureRecognizer;
    [(ZoomUI_SBHomeGesturePanGestureRecognizer *)&v36 translationInView:viewCopy];
    v29 = v32;
    v31 = v33;
    goto LABEL_7;
  }

  v6 = +[ZoomServicesUI _deviceIsPortrait];

  if (!v6)
  {
    goto LABEL_6;
  }

  [(ZoomUI_SBHomeGesturePanGestureRecognizer *)self safeCGPointForKey:@"_firstSceneReferenceLocation"];
  v8 = v7;
  v10 = v9;
  [(ZoomUI_SBHomeGesturePanGestureRecognizer *)self safeCGPointForKey:@"_lastSceneReferenceLocation"];
  v12 = v11;
  v14 = v13;
  window = [viewCopy window];
  screen = [window screen];
  displayIdentity = [screen displayIdentity];
  displayID = [displayIdentity displayID];

  sharedInstance2 = [getZoomServicesClass() sharedInstance];
  [sharedInstance2 zoomFrameOnDisplay:displayID];
  *zoomFrame = v20;
  *&zoomFrame[8] = v21;
  *&zoomFrame[16] = v22;
  *&zoomFrame[24] = v23;

  [ZoomServicesUI _unMappedZoomPoint:v8, v10];
  v25 = v24;
  v27 = v26;
  [ZoomServicesUI _unMappedZoomPoint:v12, v14];
  v29 = v28 - v25;
  v31 = v30 - v27;
LABEL_7:

  v34 = v29;
  v35 = v31;
  result.y = v35;
  result.x = v34;
  return result;
}

@end