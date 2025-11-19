@interface THWSceneController
- (BOOL)shouldFillSize:(CGSize)a3 withinSize:(CGSize)a4;
- (BOOL)userInteractionEnabled;
- (BOOL)yFovFixed;
- (CGRect)sceneFrame;
- (THWSceneController)initWithSceneInfo:(id)a3 frame:(CGRect)a4 delegate:(id)a5;
- (id)p_loadSceneFromURL:(id)a3;
- (id)sceneLayer;
- (void)dealloc;
- (void)didAddSceneView;
- (void)handleSingleTapInSceneView;
- (void)loadScene;
- (void)loadSceneDeferred;
- (void)p_addIdleAnimation;
- (void)p_cleanupFailedLoad;
- (void)p_configureDiagnosticOverlayLayer;
- (void)p_crossfadeLayerOut:(id)a3 fadeLayerIn:(id)a4 completion:(id)a5;
- (void)p_didCreateView;
- (void)p_pauseIdleAnimationForRotation:(BOOL)a3;
- (void)p_setupCameraBehavior;
- (void)p_setupGestureRecognizers;
- (void)p_setupSceneViewWithCancelHandler:(id)a3;
- (void)playIdleAnimation;
- (void)resumeIdleAnimationIfNecessary;
- (void)setFrame:(CGRect)a3 overrideDisabled:(BOOL)a4;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setupSceneView;
- (void)stopAnimation;
@end

@implementation THWSceneController

- (THWSceneController)initWithSceneInfo:(id)a3 frame:(CGRect)a4 delegate:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14.receiver = self;
  v14.super_class = THWSceneController;
  v11 = [(THWSceneController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(THWSceneController *)v11 setSceneInfo:a3];
    [(THWSceneController *)v12 setSceneFrame:x, y, width, height];
    [(THWSceneController *)v12 setDelegate:a5];
  }

  return v12;
}

- (void)stopAnimation
{
  [(THWSceneView *)[(THWSceneController *)self sceneView] removeCameraAnimation];
  v3 = [(THWSceneController *)self sceneView];

  [(THWSceneView *)v3 stop:self];
}

- (void)dealloc
{
  [(THWSceneView *)self->_sceneView setDelegate:0];
  [(THWSceneController *)self setSceneInfo:0];
  [(THWSceneController *)self setSceneView:0];

  self->_cameraControlEventHandler = 0;
  [(THWSceneController *)self setScene:0];
  [(THWSceneController *)self setSceneWidgetTimeStamp:0];
  [(THWSceneController *)self setSingleTapGR:0];
  v3.receiver = self;
  v3.super_class = THWSceneController;
  [(THWSceneController *)&v3 dealloc];
}

- (id)sceneLayer
{
  if (![(THWSceneController *)self isLoaded])
  {
    return 0;
  }

  v3 = [(THWSceneController *)self sceneView];

  return [(THWSceneView *)v3 layer];
}

- (void)p_configureDiagnosticOverlayLayer
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(NSUserDefaults *)v3 BOOLForKey:kTHSceneWidgetFPSOverlayKey[0]];
  v5 = [(THWSceneController *)self sceneView];

  [(THWSceneView *)v5 setShowsStatistics:v4];
}

- (void)p_addIdleAnimation
{
  v3 = [(THWSceneInfo *)[(THWSceneController *)self sceneInfo] idleAnimationBehavior];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(THWSceneController *)self sceneView];

      [(THWSceneView *)v4 rotateCameraContinuouslyWithEaseIn];
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }
}

- (BOOL)yFovFixed
{
  if (![(THWSceneController *)self sceneView])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [objc_msgSend(-[THWSceneView pointOfView](-[THWSceneController sceneView](self "sceneView")];
  return v3 != 0.0;
}

- (BOOL)shouldFillSize:(CGSize)a3 withinSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  if (![(THWSceneController *)self sceneView])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [objc_msgSend(-[THWSceneView pointOfView](-[THWSceneController sceneView](self "sceneView")];
  result = v9 != 0.0;
  if (v7 / v6 < width / height)
  {
    return v9 == 0.0;
  }

  return result;
}

- (void)p_pauseIdleAnimationForRotation:(BOOL)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THWSceneView *)[(THWSceneController *)self sceneView] scene])
  {
    [(THWSceneView *)[(THWSceneController *)self sceneView] removeCameraAnimation];
    [(THWSceneView *)[(THWSceneController *)self sceneView] pause:self];
    if (!a3)
    {
      [(THWSceneController *)self setUserInterruptedAnimation:1];
    }
  }

  else
  {
    [(THWSceneController *)self setPlaySceneWhenLoaded:0];
  }

  [(THWSceneController *)self setIsPlaying:0];
}

- (void)playIdleAnimation
{
  if (![(THWSceneController *)self isPlaying]&& [(THWSceneView *)[(THWSceneController *)self sceneView] scene]&& [(THWSceneControllerDelegate *)[(THWSceneController *)self delegate] sceneControllerShouldAllowIdleAnimation:self])
  {
    [(THWSceneController *)self setIsPlaying:1];
    if ([(THWSceneController *)self hasEmbeddedAnimation])
    {
      v3 = [(THWSceneController *)self sceneView];

      [(THWSceneView *)v3 play:?];
    }

    else
    {

      [(THWSceneController *)self p_addIdleAnimation];
    }
  }
}

- (void)resumeIdleAnimationIfNecessary
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THWSceneController *)self isLoaded]&& [(THWSceneView *)[(THWSceneController *)self sceneView] scene])
  {
    if (![(THWSceneController *)self userInterruptedAnimation])
    {

      [(THWSceneController *)self playIdleAnimation];
    }
  }

  else
  {

    [(THWSceneController *)self setPlaySceneWhenLoaded:1];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(THWSceneController *)self sceneView];

  [(THWSceneView *)v4 setUserInteractionEnabled:v3];
}

- (BOOL)userInteractionEnabled
{
  v2 = [(THWSceneController *)self sceneView];

  return [(THWSceneView *)v2 isUserInteractionEnabled];
}

- (void)p_setupSceneViewWithCancelHandler:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWSceneController *)self setPlaySceneWhenLoaded:0];
  [(THWSceneController *)self setUserInterruptedAnimation:0];
  v5 = [THWSceneView alloc];
  [(THWSceneController *)self sceneFrame];
  v8 = [(THWSceneView *)v5 initWithFrame:0 options:?];
  -[THWSceneView setBackgroundColor:](v8, "setBackgroundColor:", [-[THWSceneControllerDelegate backgroundColorForSceneController:](-[THWSceneController delegate](self "delegate")]);
  [(THWSceneControllerDelegate *)[(THWSceneController *)self delegate] screenScaleForSceneController:self];
  [-[THWSceneView layer](v8 "layer")];
  [-[THWSceneView layer](v8 "layer")];
  [(THWSceneController *)self setSceneView:v8];
  v7 = [(THWSceneController *)self scene];
  [(THWSceneView *)[(THWSceneController *)self sceneView] setDelegate:self];
  if (v7)
  {
    [(THWSceneView *)v8 scnWarmUpScene:v7 abortHandler:a3];
    +[SCNTransaction begin];
    [(THWSceneView *)v8 setScene:v7];
    +[SCNTransaction commit];
  }

  [(THWSceneController *)self setScene:0];
}

- (void)setupSceneView
{
  if (!self->_sceneView)
  {
    v5[7] = v2;
    v5[8] = v3;
    if (self->_scene)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1B7BF4;
      v5[3] = &unk_45E950;
      v5[4] = self;
      [(THWSceneController *)self p_setupSceneViewWithCancelHandler:v5];
      [(THWSceneController *)self p_didCreateView];
    }
  }
}

- (void)p_crossfadeLayerOut:(id)a3 fadeLayerIn:(id)a4 completion:(id)a5
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1B7E4C;
  v12[3] = &unk_45B8B0;
  v12[4] = a5;
  [CATransaction setCompletionBlock:v12];
  v8 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v9) = 1.0;
  [(CABasicAnimation *)v8 setToValue:[NSNumber numberWithFloat:v9]];
  [(CABasicAnimation *)v8 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v8 setFillMode:kCAFillModeForwards];
  [a4 addAnimation:v8 forKey:@"opacity"];
  v10 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v11) = 0.5;
  [(CABasicAnimation *)v10 setToValue:[NSNumber numberWithFloat:v11]];
  [(CABasicAnimation *)v10 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v10 setFillMode:kCAFillModeForwards];
  [a3 addAnimation:v10 forKey:@"opacity"];
  +[CATransaction commit];
}

- (void)didAddSceneView
{
  v3 = [(THWSceneControllerDelegate *)[(THWSceneController *)self delegate] placeholderLayerForSceneController:self];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1B7F50;
  v8 = &unk_45AE58;
  v9 = v3;
  v10 = self;
  if (-[THWSceneControllerDelegate sceneControllerShouldAllowCrossfade:](-[THWSceneController delegate](self, "delegate"), "sceneControllerShouldAllowCrossfade:", self) && v3 && ([v3 isHidden] & 1) == 0 && (objc_msgSend(v3, "opacity"), v4 > 0.0))
  {
    [(THWSceneController *)self p_crossfadeLayerOut:v3 fadeLayerIn:[(THWSceneView *)[(THWSceneController *)self sceneView] layer] completion:&v5];
  }

  else
  {
    v7(&v5);
  }
}

- (void)setFrame:(CGRect)a3 overrideDisabled:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 || !self->_disableFrameUpdate)
  {
    [(THWSceneController *)self sceneFrame];
    v22.origin.x = v9;
    v22.origin.y = v10;
    v22.size.width = v11;
    v22.size.height = v12;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    if (!CGRectEqualToRect(v21, v22))
    {
      [(THWSceneController *)self setSceneFrame:x, y, width, height];
      v13 = [(THWSceneController *)self sceneView];
      if (v13)
      {
        v14 = v13;
        [(THWSceneView *)v13 frame];
        v17 = [(THWSceneController *)self shouldFillSize:v15 withinSize:v16, width, height];
        v18 = &kCAGravityResizeAspectFill;
        if (!v17)
        {
          v18 = &kCAGravityResizeAspect;
        }

        [-[THWSceneView layer](v14 "layer")];
        [(THWSceneView *)v14 setFrame:x, y, width, height];
        v19 = [(THWSceneController *)self sceneView];

        [(THWSceneView *)v19 setNeedsDisplay];
      }
    }
  }
}

- (void)loadSceneDeferred
{
  if ([(THWSceneController *)self isLoaded])
  {
    if (![(THWSceneController *)self isLoaded])
    {
      v3 = +[TSUAssertionHandler currentHandler];
      v4 = [NSString stringWithUTF8String:"[THWSceneController loadSceneDeferred]"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Scene/THWSceneController.m"];

      [v3 handleFailureInFunction:v4 file:v5 lineNumber:602 description:@"should already be loaded if background loading isn't supported"];
    }
  }

  else
  {
    if ([(THWSceneController *)self isLoading])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THWSceneController *)self setIsLoading:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1B8298;
    v6[3] = &unk_45AE58;
    v6[4] = [-[THWSceneControllerDelegate documentRootForSceneController:](-[THWSceneController delegate](self "delegate")];
    v6[5] = self;
    [+[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher](TSKLowPriorityThreadDispatcher "sharedLowPriorityDispatcher")];
  }
}

- (void)loadScene
{
  if ([(THWSceneController *)self isLoaded])
  {
    if (![(THWSceneController *)self isLoaded])
    {
      v5 = +[TSUAssertionHandler currentHandler];
      v6 = [NSString stringWithUTF8String:"[THWSceneController loadScene]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Scene/THWSceneController.m"];

      [v5 handleFailureInFunction:v6 file:v7 lineNumber:628 description:@"should already be loaded if background loading isn't supported"];
    }
  }

  else
  {
    if ([(THWSceneController *)self isLoading])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THWSceneController *)self setIsLoading:1];
    v3 = [(THWSceneController *)self sceneInfo];
    if (v3)
    {
      v4 = [(THWSceneController *)self p_loadSceneFromURL:[(THWSceneInfo *)v3 sourceURL]];
    }

    else
    {
      v4 = 0;
    }

    [(THWSceneController *)self setIsLoading:0];
    [(THWSceneController *)self setIsLoaded:1];
    [(THWSceneController *)self setScene:v4];
    v8 = [(THWSceneController *)self delegate];

    [(THWSceneControllerDelegate *)v8 sceneDidLoadForSceneController:self];
  }
}

- (id)p_loadSceneFromURL:(id)a3
{
  if (a3 && ([a3 isFileURL] & 1) != 0)
  {
    v17 = self;
    if (!-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a3 path]))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v5 = [NSNumber numberWithBool:1];
    v6 = SCNSceneSourceSkipConsistencyCheckKey;
    v7 = [NSNumber numberWithBool:1];
    v8 = [NSNumber numberWithBool:1];
    v9 = SCNSceneSourceCreateCameraIfAbsentKey;
    v10 = [NSNumber numberWithBool:1];
    v11 = SCNSceneSourceCreateLightIfAbsentKey;
    v12 = [NSNumber numberWithBool:1];
    v13 = [NSDictionary dictionaryWithObjectsAndKeys:v5, v6, v7, SCNSceneSourceCreateNormalsIfAbsentKey, v8, v9, v10, v11, v12, SCNSceneSourceAdjustInvalidCameraClippingPlanesKey, 0];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3052000000;
    v20[3] = sub_1B88DC;
    v20[4] = sub_1B88EC;
    v20[5] = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v14 = [[SCNSceneSource alloc] initWithURL:a3 options:v13];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1B88F8;
    v18[3] = &unk_45E978;
    v18[5] = v19;
    v18[6] = v20;
    v18[4] = v17;
    v15 = [v14 sceneWithOptions:v13 statusHandler:v18];
    -[THWSceneController setHasEmbeddedAnimation:](v17, "setHasEmbeddedAnimation:", [objc_msgSend(v14 IDsOfEntriesWithClass:{objc_opt_class()), "count"}] != 0);
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v20, 8);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v15;
}

- (void)p_cleanupFailedLoad
{
  v3 = [(THWSceneController *)self sceneView];

  [(THWSceneView *)v3 stop:self];
}

- (void)p_setupCameraBehavior
{
  [(THWSceneController *)self setCameraControlEventHandler:[[THWSCNCameraControlEventHandler alloc] initWithSceneController:self]];
  [(THWSceneView *)[(THWSceneController *)self sceneView] setEventHandler:[(THWSceneController *)self cameraControlEventHandler]];
  v3 = [(THWSceneInfo *)[(THWSceneController *)self sceneInfo] rotationConstraints];
  if (v3)
  {
    if (v3 == 2)
    {
      [(THWSceneView *)[(THWSceneController *)self sceneView] eventHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(THWSceneView *)[(THWSceneController *)self sceneView] setEventHandlerStickyAxis:2];
      }
    }

    else if (v3 == 1)
    {
      [(THWSceneView *)[(THWSceneController *)self sceneView] eventHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [-[THWSceneView eventHandler](-[THWSceneController sceneView](self "sceneView")];
      }
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }

  [(THWSceneView *)[(THWSceneController *)self sceneView] eventHandler];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(THWSceneView *)[(THWSceneController *)self sceneView] eventHandler];
    [v4 setEnableInertia:1];
    v5 = *&THWSceneInertialDampingNormal;

    [v4 setFriction:v5];
  }
}

- (void)handleSingleTapInSceneView
{
  v3 = [(THWSceneController *)self delegate];

  [(THWSceneControllerDelegate *)v3 handleSingleTapInSceneForSceneController:self];
}

- (void)p_setupGestureRecognizers
{
  -[THWSceneController setSingleTapGR:](self, "setSingleTapGR:", [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleSingleTapInSceneView"]);
  [(THWSceneView *)[(THWSceneController *)self sceneView] addGestureRecognizer:[(THWSceneController *)self singleTapGR]];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = self;
  v3 = [-[THWSceneView eventHandler](-[THWSceneController sceneView](self "sceneView")];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setEnabled:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setEnabled:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v9 = TSUDynamicCast();
          if ([v9 minimumNumberOfTouches] == &dword_0 + 1 && objc_msgSend(v9, "maximumNumberOfTouches") >= 2)
          {
            [v9 setMaximumNumberOfTouches:1];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v10 = TSUDynamicCast();
          if ([v10 numberOfTapsRequired] == &dword_0 + 2)
          {
            [(UITapGestureRecognizer *)[(THWSceneController *)v11 singleTapGR] requireGestureRecognizerToFail:v10];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)p_didCreateView
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THWSceneView *)[(THWSceneController *)self sceneView] scene])
  {
    [(THWSceneController *)self p_setupCameraBehavior];
    if ([(THWSceneController *)self playSceneWhenLoaded])
    {
      [(THWSceneController *)self setPlaySceneWhenLoaded:0];
      [(THWSceneController *)self resumeIdleAnimationIfNecessary];
    }

    [(THWSceneController *)self p_configureDiagnosticOverlayLayer];
  }

  else
  {

    [(THWSceneController *)self p_cleanupFailedLoad];
  }
}

- (CGRect)sceneFrame
{
  x = self->_sceneFrame.origin.x;
  y = self->_sceneFrame.origin.y;
  width = self->_sceneFrame.size.width;
  height = self->_sceneFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end