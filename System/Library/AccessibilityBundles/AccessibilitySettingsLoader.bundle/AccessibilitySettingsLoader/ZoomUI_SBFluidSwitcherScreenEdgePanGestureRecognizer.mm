@interface ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer
- (BOOL)_viewOrientationDoesNotMatchSBOrientation:(id)a3;
- (CGPoint)_convertPortaitPointToSBOrientation:(CGPoint)a3;
- (CGPoint)_convertSBPointToPortaitOrientation:(CGPoint)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)translationInView:(id)a3;
- (void)setTranslation:(CGPoint)a3 inView:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer

- (CGPoint)_convertPortaitPointToSBOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [*MEMORY[0x29EDC8008] activeInterfaceOrientation];
  v6 = [MEMORY[0x29EDC7C40] mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = v8 - x;
  v12 = v10 - y;
  v13 = v10 - x;
  v14 = v8 - y;
  if (v5 == 4)
  {
    v15 = x;
  }

  else
  {
    v14 = x;
    v15 = y;
  }

  if (v5 == 3)
  {
    v14 = y;
  }

  else
  {
    v13 = v15;
  }

  if (v5 != 2)
  {
    v11 = v14;
    v12 = v13;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_convertSBPointToPortaitOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [*MEMORY[0x29EDC8008] activeInterfaceOrientation];
  v6 = [MEMORY[0x29EDC7C40] mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = v8 - x;
  v12 = v10 - y;
  if (v5 == 4)
  {
    v13 = y;
  }

  else
  {
    v13 = x;
  }

  if (v5 == 4)
  {
    v14 = v8 - x;
  }

  else
  {
    v14 = y;
  }

  if (v5 == 3)
  {
    v13 = v10 - y;
    v14 = x;
  }

  if (v5 != 2)
  {
    v11 = v13;
    v12 = v14;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [getZoomServicesClass() sharedInstance];
  v9 = [MEMORY[0x29EDC7C40] mainScreen];
  v10 = [v9 displayIdentity];
  [v8 zoomFrameOnDisplay:{objc_msgSend(v10, "displayID")}];
  *zoomFrame = v11;
  *&zoomFrame[8] = v12;
  *&zoomFrame[16] = v13;
  *&zoomFrame[24] = v14;

  v15 = [getAXSettingsClass() sharedInstance];
  zoomInStandByAtGestureStart = [v15 zoomInStandby];

  translatedUpwards = 0;
  v16.receiver = self;
  v16.super_class = ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer;
  [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v16 touchesBegan:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v4 = *(MEMORY[0x29EDB90E0] + 16);
  *zoomFrame = *MEMORY[0x29EDB90E0];
  *&zoomFrame[16] = v4;
  translatedUpwards = 0;
  v5.receiver = self;
  v5.super_class = ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer;
  [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
}

- (BOOL)_viewOrientationDoesNotMatchSBOrientation:(id)a3
{
  v3 = MEMORY[0x29EDC7C40];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  [v4 bounds];
  v11 = v10;
  v13 = v12;

  v14 = v9 != v13 || v7 != v11;
  return v14;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  if (+[ZoomServicesUI _shouldUnmapPointsForFluidGestures]&& (zoomInStandByAtGestureStart & 1) == 0)
  {
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self safeCGPointForKey:@"_lastSceneReferenceLocation"];
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _convertPortaitPointToSBOrientation:?];
    [ZoomServicesUI _unMappedZoomPoint:?];
    v10 = v9;
    v12 = v11;
    if ([(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _viewOrientationDoesNotMatchSBOrientation:v4])
    {
      [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _convertSBPointToPortaitOrientation:v10, v12];
      v10 = v13;
      v12 = v14;
    }

    [v4 bounds];
    v6 = v10 + v15;
    [v4 bounds];
    v8 = v12 + v16;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer;
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v19 locationInView:v4];
    v6 = v5;
    v8 = v7;
  }

  v17 = v6;
  v18 = v8;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)translationInView:(id)a3
{
  v4 = a3;
  if (+[ZoomServicesUI _shouldUnmapPointsForFluidGestures]&& (zoomInStandByAtGestureStart & 1) == 0)
  {
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self safeCGPointForKey:@"_firstSceneReferenceLocation"];
    v10 = v9;
    v12 = v11;
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self safeCGPointForKey:@"_lastSceneReferenceLocation"];
    v14 = v13;
    v16 = v15;
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _convertPortaitPointToSBOrientation:v10, v12];
    v18 = v17;
    v20 = v19;
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _convertPortaitPointToSBOrientation:v14, v16];
    v22 = v21;
    v24 = v23;
    [ZoomServicesUI _unMappedZoomPoint:v18, v20];
    v26 = v25;
    v28 = v27;
    [ZoomServicesUI _unMappedZoomPoint:v22, v24];
    v30 = v29;
    v32 = v31;
    if ([(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _viewOrientationDoesNotMatchSBOrientation:v4])
    {
      [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _convertSBPointToPortaitOrientation:v26, v28];
      v26 = v33;
      v28 = v34;
      [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _convertSBPointToPortaitOrientation:v30, v32];
      v30 = v35;
      v32 = v36;
    }

    v6 = v30 - v26;
    v8 = v32 - v28;
    translatedUpwards = v8 < 0.0;
  }

  else
  {
    v39.receiver = self;
    v39.super_class = ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer;
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v39 translationInView:v4];
    v6 = v5;
    v8 = v7;
  }

  v37 = v6;
  v38 = v8;
  result.y = v38;
  result.x = v37;
  return result;
}

- (void)setTranslation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!+[ZoomServicesUI _shouldUnmapPointsForFluidGestures]|| zoomInStandByAtGestureStart == 1)
  {
    v8.receiver = self;
    v8.super_class = ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer;
    [(ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v8 setTranslation:v7 inView:x, y];
  }
}

@end