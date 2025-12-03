@interface THAnimationController
- (CALayer)animationLayer;
- (CALayer)fadeInAnimationLayer;
- (CALayer)fadeOutAnimationLayer;
- (CALayer)targetLayer;
- (CALayer)targetReflectionLayer;
- (CALayer)targetShadowLayer;
- (CGPoint)initialLayerPosition;
- (CGRect)p_targetFrame;
- (CGRect)targetFrame;
- (CGSize)initialLayerSize;
- (THAnimationController)init;
- (double)animationDuration;
- (double)p_scaleForAnimationLayer;
- (double)p_scaleForTargetLayer;
- (id)curveAndOvershootAnimation;
- (id)fadeInAnimation;
- (id)fadeInOnDelayAnimationToOpacity:(double)opacity;
- (id)p_objectForLayer:(id)layer key:(id)key;
- (id)shadowFadeOutAnimation;
- (id)shadowTransformAnimation;
- (id)sourceShadowFadeOutAnimation;
- (void)addBackgroundFadeOutAnimation;
- (void)addContentAnimation;
- (void)addForegroundFadeAnimation;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didAnimate;
- (void)didAnimatePostCommit;
- (void)p_restoreLayer:(id)layer;
- (void)p_saveLayer:(id)layer;
- (void)performAnimation;
- (void)presentAnimationWithCompletionBlock:(id)block overshoot:(BOOL)overshoot;
- (void)setupAnimationLayer;
- (void)setupAnimationLayerForCrossFade;
- (void)setupTarget;
- (void)teardownTarget;
- (void)willAnimate;
@end

@implementation THAnimationController

- (THAnimationController)init
{
  v5.receiver = self;
  v5.super_class = THAnimationController;
  v2 = [(THAnimationController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSULayerSaveRestore);
    [(THAnimationController *)v2 setLayerSaveRestore:v3];

    [(THAnimationController *)v2 setShadowFadeOutDurationScale:1.0];
    v2->mObservers = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnimationController;
  [(THAnimationController *)&v3 dealloc];
}

- (CALayer)animationLayer
{
  if ([(THAnimationController *)self wrapperLayer])
  {

    return [(THAnimationController *)self wrapperLayer];
  }

  else if ([(THAnimationController *)self shouldAnimateTargetLayer])
  {
    destination = [(THAnimationController *)self destination];

    return [(THAnimatableDestination *)destination targetLayer];
  }

  else
  {
    source = [(THAnimationController *)self source];

    return [(THAnimatableSource *)source animationLayer];
  }
}

- (CALayer)targetLayer
{
  if ([(THAnimationController *)self shouldAnimateTargetLayer])
  {
    return 0;
  }

  destination = [(THAnimationController *)self destination];

  return [(THAnimatableDestination *)destination targetLayer];
}

- (CALayer)targetShadowLayer
{
  if (![(THAnimationController *)self shouldAnimateTargetLayer])
  {
    return self->_targetShadowLayer;
  }

  return [(THAnimationController *)self sourceShadowLayer];
}

- (CALayer)targetReflectionLayer
{
  if (![(THAnimationController *)self shouldAnimateTargetLayer])
  {
    return self->_targetReflectionLayer;
  }

  return [(THAnimationController *)self sourceReflectionLayer];
}

- (CALayer)fadeInAnimationLayer
{
  if (([(THAnimatableSource *)[(THAnimationController *)self source] shouldFadeOutAnimationLayer:[(THAnimationController *)self destination]]& 1) == 0 && (![(THAnimationController *)self targetLayer]|| ![(THAnimatableDestination *)[(THAnimationController *)self destination] shouldFadeInTargetLayer:[(THAnimationController *)self source]]))
  {
    return 0;
  }

  destination = [(THAnimationController *)self destination];

  return [(THAnimatableDestination *)destination targetLayer];
}

- (CALayer)fadeOutAnimationLayer
{
  if (([(THAnimatableSource *)[(THAnimationController *)self source] shouldFadeOutAnimationLayer:[(THAnimationController *)self destination]]& 1) == 0 && (![(THAnimationController *)self targetLayer]|| ![(THAnimatableDestination *)[(THAnimationController *)self destination] shouldFadeInTargetLayer:[(THAnimationController *)self source]]))
  {
    return 0;
  }

  source = [(THAnimationController *)self source];

  return [(THAnimatableSource *)source animationLayer];
}

- (void)addObserver:(id)observer
{
  if (([(NSMutableArray *)self->mObservers containsObject:?]& 1) == 0)
  {
    mObservers = self->mObservers;

    [(NSMutableArray *)mObservers addObject:observer];
  }
}

- (void)willAnimate
{
  [+[UIApplication sharedApplication](UIApplication beginIgnoringInteractionEvents];
  mObservers = self->mObservers;

  [(NSMutableArray *)mObservers tsu_makeObjectsPerformSelectorIfImplemented:"animationControllerWillPresent:" withObject:self];
}

- (void)didAnimate
{
  v3 = [(NSMutableArray *)self->mObservers copy];
  [v3 tsu_makeObjectsPerformSelectorIfImplemented:"animationControllerDidPresent:" withObject:self];

  [+[UIApplication sharedApplication](UIApplication endIgnoringInteractionEvents];
  v4 = objc_opt_class();

  [v4 performSelector:"attemptRotationToDeviceOrientation" withObject:0 afterDelay:0.01];
}

- (void)didAnimatePostCommit
{
  selfCopy = self;
  v4 = [(NSMutableArray *)self->mObservers copy];
  [v4 tsu_makeObjectsPerformSelectorIfImplemented:"animationControllerDidPresentPostCommit:" withObject:self];

  [(THAnimationController *)self removeAllObservers];
}

- (void)setupAnimationLayerForCrossFade
{
  memset(&v50, 0, sizeof(v50));
  source = [(THAnimationController *)self source];
  if (source)
  {
    [(THAnimatableSource *)source freeTransform];
  }

  else
  {
    memset(&v50, 0, sizeof(v50));
  }

  *&t1.m11 = *&v50.a;
  *&t1.m13 = *&v50.c;
  *&t1.m21 = *&v50.tx;
  v37 = *&CGAffineTransformIdentity.c;
  v39 = *&CGAffineTransformIdentity.a;
  *&t2.a = *&CGAffineTransformIdentity.a;
  *&t2.c = v37;
  v35 = *&CGAffineTransformIdentity.tx;
  *&t2.tx = v35;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    animationLayer = [(THAnimatableSource *)[(THAnimationController *)self source] animationLayer];
    *&t1.m11 = v39;
    *&t1.m13 = v37;
    *&t1.m21 = v35;
    [animationLayer setAffineTransform:&t1];
  }

  [(THAnimationController *)self p_scaleForAnimationLayer:v35];
  v6 = v5;
  [(THAnimationController *)self p_scaleForTargetLayer];
  v8 = v7;
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeScale(&t2, v6, v6);
  fadeInAnimationLayer = [(THAnimationController *)self fadeInAnimationLayer];
  fadeOutAnimationLayer = [(THAnimationController *)self fadeOutAnimationLayer];
  [(CALayer *)fadeInAnimationLayer setHidden:1];
  [(CALayer *)fadeOutAnimationLayer setHidden:0];
  hostLayer = [(THAnimationController *)self hostLayer];
  [-[THAnimatableSource animationLayer](-[THAnimationController source](self "source")];
  TSDCenterOfRect();
  -[CALayer convertPoint:fromLayer:](hostLayer, "convertPoint:fromLayer:", [-[THAnimatableSource animationLayer](-[THAnimationController source](self "source")], v12, v13);
  [(THAnimationController *)self setInitialLayerPosition:?];
  [(CALayer *)[(THAnimationController *)self animationLayer] frame];
  [(THAnimationController *)self setInitialLayerSize:v14, v15];
  hostLayer2 = [(THAnimationController *)self hostLayer];
  [(CALayer *)[(THAnimationController *)self animationLayer] frame];
  [(CALayer *)hostLayer2 convertRect:[(CALayer *)[(THAnimationController *)self animationLayer] superlayer] fromLayer:v17, v18, v19, v20];
  v21 = objc_alloc_init(CALayer);
  *&t1.m11 = v40;
  *&t1.m13 = v38;
  *&t1.m21 = v36;
  [v21 setAffineTransform:&t1];
  [(THAnimationController *)self initialLayerPosition];
  TSDRectWithCenterAndSize();
  [v21 setFrame:?];
  v22 = objc_alloc_init(CALayer);
  [v21 bounds];
  [v22 setFrame:?];
  [v21 addSublayer:v22];
  layerToAnimateUnder = self->_layerToAnimateUnder;
  hostLayer3 = [(THAnimationController *)self hostLayer];
  if (layerToAnimateUnder)
  {
    [(CALayer *)hostLayer3 insertSublayer:v21 below:self->_layerToAnimateUnder];
  }

  else
  {
    [(CALayer *)hostLayer3 addSublayer:v21];
  }

  if (v6 != 1.0)
  {
    *&t1.m11 = *&t2.a;
    *&t1.m13 = *&t2.c;
    *&t1.m21 = *&t2.tx;
    [v21 setAffineTransform:&t1];
  }

  [(CALayer *)fadeOutAnimationLayer position];
  [v22 convertPoint:-[CALayer superlayer](fadeOutAnimationLayer fromLayer:{"superlayer"), v25, v26}];
  [(CALayer *)fadeOutAnimationLayer setPosition:?];
  [v22 addSublayer:fadeOutAnimationLayer];
  [v22 addSublayer:fadeInAnimationLayer];
  if (v6 != 1.0)
  {
    memset(&v48, 0, sizeof(v48));
    CGAffineTransformMakeScale(&v48, 1.0 / v6, 1.0 / v6);
    memset(&v47, 0, sizeof(v47));
    if (fadeOutAnimationLayer)
    {
      [(CALayer *)fadeOutAnimationLayer transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CATransform3DGetAffineTransform(&v47, &t1);
    *&t1.m11 = *&v47.a;
    *&t1.m13 = *&v47.c;
    *&t1.m21 = *&v47.tx;
    v44 = v48;
    CGAffineTransformConcat(&v45, &t1, &v44);
    *&t1.m11 = *&v45.a;
    *&t1.m13 = *&v45.c;
    *&t1.m21 = *&v45.tx;
    [(CALayer *)fadeOutAnimationLayer setAffineTransform:&t1];
  }

  if (v8 != 1.0)
  {
    memset(&v48, 0, sizeof(v48));
    CGAffineTransformMakeScale(&v48, v8, v8);
    memset(&v47, 0, sizeof(v47));
    targetLayer = [(THAnimationController *)self targetLayer];
    if (targetLayer)
    {
      [(CALayer *)targetLayer transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CATransform3DGetAffineTransform(&v47, &t1);
    *&t1.m11 = *&v47.a;
    *&t1.m13 = *&v47.c;
    *&t1.m21 = *&v47.tx;
    v44 = v48;
    CGAffineTransformConcat(&v43, &t1, &v44);
    targetLayer2 = [(THAnimationController *)self targetLayer];
    *&t1.m11 = *&v43.a;
    *&t1.m13 = *&v43.c;
    *&t1.m21 = *&v43.tx;
    [(CALayer *)targetLayer2 setAffineTransform:&t1];
  }

  [v22 bounds];
  TSDCenterOfRect();
  v30 = v29;
  v32 = v31;
  [(CALayer *)fadeInAnimationLayer frame];
  TSDCenterOfRect();
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeTranslation(&v48, -(v33 - v30), -(v34 - v32));
  memset(&v47, 0, sizeof(v47));
  if (fadeInAnimationLayer)
  {
    [(CALayer *)fadeInAnimationLayer transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CATransform3DGetAffineTransform(&v47, &t1);
  *&t1.m11 = *&v47.a;
  *&t1.m13 = *&v47.c;
  *&t1.m21 = *&v47.tx;
  v44 = v48;
  CGAffineTransformConcat(&v42, &t1, &v44);
  *&t1.m11 = *&v42.a;
  *&t1.m13 = *&v42.c;
  *&t1.m21 = *&v42.tx;
  [(CALayer *)fadeInAnimationLayer setAffineTransform:&t1];
  *&t1.m11 = *&v50.a;
  *&t1.m13 = *&v50.c;
  *&t1.m21 = *&v50.tx;
  *&v48.a = v40;
  *&v48.c = v38;
  *&v48.tx = v36;
  if (!CGAffineTransformEqualToTransform(&t1, &v48))
  {
    memset(&v48, 0, sizeof(v48));
    if (v21)
    {
      [v21 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CATransform3DGetAffineTransform(&v48, &t1);
    *&t1.m11 = *&v48.a;
    *&t1.m13 = *&v48.c;
    *&t1.m21 = *&v48.tx;
    v47 = v50;
    CGAffineTransformConcat(&v41, &t1, &v47);
    *&t1.m11 = *&v41.a;
    *&t1.m13 = *&v41.c;
    *&t1.m21 = *&v41.tx;
    [v21 setAffineTransform:&t1];
  }

  [(THAnimationController *)self setInteriorWrapperLayer:v22];
  [(THAnimationController *)self setWrapperLayer:v21];
}

- (void)setupAnimationLayer
{
  memset(&v24, 0, sizeof(v24));
  source = [(THAnimationController *)self source];
  if (source)
  {
    [(THAnimatableSource *)source freeTransform];
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  t1 = v24;
  v17 = *&CGAffineTransformIdentity.c;
  v19 = *&CGAffineTransformIdentity.a;
  *&t2.a = *&CGAffineTransformIdentity.a;
  *&t2.c = v17;
  v15 = *&CGAffineTransformIdentity.tx;
  *&t2.tx = v15;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    animationLayer = [(THAnimationController *)self animationLayer];
    *&t1.a = v19;
    *&t1.c = v17;
    *&t1.tx = v15;
    [(CALayer *)animationLayer setAffineTransform:&t1];
  }

  v5 = [(THAnimationController *)self hostLayer:v15];
  [-[THAnimatableSource animationLayer](-[THAnimationController source](self "source")];
  TSDCenterOfRect();
  -[CALayer convertPoint:fromLayer:](v5, "convertPoint:fromLayer:", [-[THAnimatableSource animationLayer](-[THAnimationController source](self "source")], v6, v7);
  [(THAnimationController *)self setInitialLayerPosition:?];
  [(CALayer *)[(THAnimationController *)self animationLayer] frame];
  [(THAnimationController *)self setInitialLayerSize:v8, v9];
  v10 = objc_alloc_init(CALayer);
  [(THAnimationController *)self initialLayerPosition];
  [(THAnimationController *)self initialLayerSize];
  TSDRectWithCenterAndSize();
  [v10 setFrame:?];
  *&t1.a = v20;
  *&t1.c = v18;
  *&t1.tx = v16;
  [v10 setAffineTransform:&t1];
  [v10 setZPosition:1.0];
  [(CALayer *)[(THAnimationController *)self hostLayer] addSublayer:v10];
  if ([(THAnimationController *)self sourceOverlayLayer])
  {
    [(CALayer *)[(THAnimationController *)self hostLayer] addSublayer:[(THAnimationController *)self sourceOverlayLayer]];
  }

  [-[THAnimatableSource animationLayer](-[THAnimationController source](self "source")];
  [v10 convertPoint:objc_msgSend(-[THAnimatableSource animationLayer](-[THAnimationController source](self fromLayer:{"source"), "animationLayer"), "superlayer"), v11, v12}];
  [(CALayer *)[(THAnimationController *)self animationLayer] setPosition:v13, v14];
  t1 = v24;
  *&t2.a = v20;
  *&t2.c = v18;
  *&t2.tx = v16;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    if (v10)
    {
      [v10 affineTransform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    t2 = v24;
    CGAffineTransformConcat(&v21, &t1, &t2);
    t1 = v21;
    [v10 setAffineTransform:&t1];
  }

  [v10 addSublayer:{-[THAnimationController animationLayer](self, "animationLayer")}];
  [(THAnimationController *)self setWrapperLayer:v10];

  [(CALayer *)[(THAnimationController *)self targetLayer] setHidden:1];
}

- (void)setupTarget
{
  +[CATransaction flush];
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  v3 = [(NSMutableArray *)self->mObservers mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mObservers = self->mObservers;
  v5 = [(NSMutableArray *)mObservers countByEnumeratingWithState:&v17 objects:v21 count:16];
  v6 = &selRef_actionsForTarget_forControlEvent_;
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    do
    {
      v9 = 0;
      v10 = v6;
      v11 = v6[328];
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(mObservers);
        }

        v12 = *(*(&v17 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector() & 1) != 0 && [v12 animationControllerSetsDestination:self] && (objc_opt_respondsToSelector())
        {
          [v12 animationControllerSetupTarget:self];
          [v3 removeObject:v12];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mObservers countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v10;
    }

    while (v7);
  }

  else
  {
    v11 = "animationControllerSetupTarget:";
  }

  [v3 tsu_makeObjectsPerformSelectorIfImplemented:v11 withObject:self];

  [(THAnimationController *)self destination];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimatableDestination *)[(THAnimationController *)self destination] animatableDestinationSetupTarget:self];
  }

  [(THAnimationController *)self setShouldAnimateTargetLayer:[(THAnimatableSource *)[(THAnimationController *)self source] shouldAnimateTargetLayer:[(THAnimationController *)self destination]]];
  [(THAnimationController *)self p_targetFrame];
  [(THAnimationController *)self setTargetFrame:?];
  if ([(THAnimatableSource *)[(THAnimationController *)self source] shouldFadeOutAnimationLayer:[(THAnimationController *)self destination]]&& (![(THAnimatableSource *)[(THAnimationController *)self source] shouldFadeOutAnimationLayer:[(THAnimationController *)self destination]]|| ([(THAnimatableSource *)[(THAnimationController *)self source] shouldAnimateTargetLayer:[(THAnimationController *)self destination]]& 1) == 0))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THAnimationController *)self p_saveLayer:[(THAnimatableSource *)[(THAnimationController *)self source] animationLayer]];
  [(THAnimationController *)self p_saveLayer:[(THAnimatableDestination *)[(THAnimationController *)self destination] targetLayer]];
  [(CALayer *)[(THAnimationController *)self foregroundLayer] setOpacity:0.0];
  [(THAnimationController *)self source];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimationController *)self setSourceShadowLayer:[(THAnimatableSource *)[(THAnimationController *)self source] sourceShadowLayer]];
  }

  [(THAnimationController *)self source];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimationController *)self setSourceReflectionLayer:[(THAnimatableSource *)[(THAnimationController *)self source] sourceReflectionLayer]];
  }

  [(THAnimationController *)self source];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimationController *)self setSourceOverlayLayer:[(THAnimatableSource *)[(THAnimationController *)self source] sourceOverlayLayer]];
  }

  [(THAnimationController *)self destination];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimationController *)self setTargetShadowLayer:[(THAnimatableDestination *)[(THAnimationController *)self destination] targetShadowLayer]];
    [(THAnimationController *)self p_saveLayer:[(THAnimationController *)self targetShadowLayer]];
    [(CALayer *)[(THAnimationController *)self targetShadowLayer] setOpacity:0.0];
  }

  [(THAnimationController *)self destination];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimationController *)self setTargetReflectionLayer:[(THAnimatableDestination *)[(THAnimationController *)self destination] targetReflectionLayer]];
    [(THAnimationController *)self p_saveLayer:[(THAnimationController *)self targetReflectionLayer]];
    [(CALayer *)[(THAnimationController *)self targetReflectionLayer] setOpacity:0.0];
  }

  [(THAnimationController *)self source];
  if (objc_opt_respondsToSelector())
  {
    enforceAnimationLayer = [(THAnimatableSource *)[(THAnimationController *)self source] enforceAnimationLayer];
  }

  else
  {
    enforceAnimationLayer = 0;
  }

  if ([(THAnimationController *)self p_shouldCrossFade])
  {
    [(THAnimationController *)self setupAnimationLayerForCrossFade];
    v14 = NSArray_ptr;
  }

  else
  {
    superlayer = [(CALayer *)[(THAnimationController *)self animationLayer] superlayer];
    v16 = (superlayer != [(THAnimationController *)self hostLayer]) | enforceAnimationLayer;
    v14 = NSArray_ptr;
    if (v16)
    {
      [(THAnimationController *)self setupAnimationLayer];
    }
  }

  [v14[116] commit];
  [v14[116] flush];
}

- (void)teardownTarget
{
  [(THAnimationController *)self p_restoreLayer:[(THAnimatableDestination *)[(THAnimationController *)self destination] targetLayer]];
  [(THAnimationController *)self p_restoreLayer:[(THAnimatableSource *)[(THAnimationController *)self source] animationLayer]];
  [(THAnimationController *)self p_restoreLayer:[(THAnimationController *)self targetShadowLayer]];
  [(THAnimationController *)self p_restoreLayer:[(THAnimationController *)self targetReflectionLayer]];
  [(CALayer *)[(THAnimationController *)self foregroundLayer] removeAnimationForKey:@"THForegroundFadeAnimation"];
  [(CALayer *)[(THAnimationController *)self backgroundLayer] removeAnimationForKey:@"THBackgroundFadeAnimation"];
  [(CALayer *)[(THAnimationController *)self wrapperLayer] removeFromSuperlayer];
  [(CALayer *)[(THAnimationController *)self sourceOverlayLayer] removeFromSuperlayer];
  [(THAnimationController *)self setWrapperLayer:0];
  [(THAnimationController *)self setSourceShadowLayer:0];
  [(THAnimationController *)self setSourceReflectionLayer:0];
  [(THAnimationController *)self setSourceOverlayLayer:0];
  [(THAnimationController *)self setTargetShadowLayer:0];
  [(THAnimationController *)self setTargetReflectionLayer:0];
  [(NSMutableArray *)self->mObservers tsu_makeObjectsPerformSelectorIfImplemented:"animationControllerTeardownTarget:" withObject:self];
  [(THAnimationController *)self source];
  if (objc_opt_respondsToSelector())
  {
    [(THAnimatableSource *)[(THAnimationController *)self source] reparentAnimationLayerIfBackedByView:self];
  }

  [(THAnimationController *)self destination];
  if (objc_opt_respondsToSelector())
  {
    destination = [(THAnimationController *)self destination];

    [(THAnimatableDestination *)destination reparentTargetLayerIfBackedByView:self];
  }
}

- (void)presentAnimationWithCompletionBlock:(id)block overshoot:(BOOL)overshoot
{
  overshootCopy = overshoot;
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [+[UIWindow keyWindow](UIWindow "keyWindow")];
  [(THAnimationController *)self setOvershoot:overshootCopy];
  [(THAnimationController *)self willAnimate];
  [(THAnimationController *)self setupTarget];
  [(CALayer *)[(THAnimationController *)self animationLayer] removeAllAnimations];
  [(CALayer *)[(THAnimationController *)self fadeInAnimationLayer] removeAllAnimations];
  [(CALayer *)[(THAnimationController *)self fadeOutAnimationLayer] removeAllAnimations];
  +[CATransaction begin];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_159150;
  v7[3] = &unk_45AEA8;
  v7[4] = self;
  v7[5] = block;
  [CATransaction setCompletionBlock:v7];
  [(THAnimationController *)self performAnimation];
  +[CATransaction commit];
}

- (double)animationDuration
{
  [(THAnimationController *)self source];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.25;
  }

  source = [(THAnimationController *)self source];

  [(THAnimatableSource *)source animationDuration];
  return result;
}

- (void)addForegroundFadeAnimation
{
  foregroundLayer = [(THAnimationController *)self foregroundLayer];
  v4 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v4 setFromValue:[NSNumber numberWithFloat:0.0]];
  LODWORD(v5) = 1.0;
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:v5]];
  [(THAnimationController *)self animationDuration];
  [(CABasicAnimation *)v4 setDuration:?];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v4 setFillMode:kCAFillModeForwards];
  [(CALayer *)foregroundLayer addAnimation:v4 forKey:@"THForegroundFadeAnimation"];
  foregroundLayer2 = [(THAnimationController *)self foregroundLayer];
  LODWORD(v7) = 1.0;

  [(CALayer *)foregroundLayer2 setOpacity:v7];
}

- (void)addBackgroundFadeOutAnimation
{
  backgroundLayer = [(THAnimationController *)self backgroundLayer];
  v4 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v5) = 1.0;
  [(CABasicAnimation *)v4 setFromValue:[NSNumber numberWithFloat:v5]];
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:0.0]];
  [(THAnimationController *)self animationDuration];
  [(CABasicAnimation *)v4 setDuration:?];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v4 setFillMode:kCAFillModeForwards];

  [(CALayer *)backgroundLayer addAnimation:v4 forKey:@"THBackgroundFadeAnimation"];
}

- (void)addContentAnimation
{
  [(NSMutableArray *)self->mObservers tsu_makeObjectsPerformSelectorIfImplemented:"animationControllerWillAddContentAnimations:" withObject:self];
  [(CALayer *)[(THAnimationController *)self animationLayer] setHidden:0];
  if ([(THAnimationController *)self animationLayer])
  {
    [(CALayer *)[(THAnimationController *)self animationLayer] addAnimation:[(THAnimationController *)self curveAndOvershootAnimation] forKey:@"animationLayerCurveAndOvershoot"];
  }

  if ([(THAnimationController *)self p_shouldCrossFade])
  {
    [(CALayer *)[(THAnimationController *)self fadeInAnimationLayer] setHidden:0];
    [(CALayer *)[(THAnimationController *)self fadeOutAnimationLayer] setHidden:1];
    v3 = +[CATransition animation];
    [v3 setType:kCATransitionFade];
    [(THAnimationController *)self animationDuration];
    [v3 setDuration:?];
    shouldAnimateTargetLayer = [(THAnimationController *)self shouldAnimateTargetLayer];
    v5 = &kCAMediaTimingFunctionEaseOut;
    if (!shouldAnimateTargetLayer)
    {
      v5 = &kCAMediaTimingFunctionEaseIn;
    }

    [v3 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", *v5)}];
    [(CALayer *)[(THAnimationController *)self interiorWrapperLayer] addAnimation:v3 forKey:0];
  }

  if ([(THAnimatableSource *)[(THAnimationController *)self source] shadowAnimationLayer])
  {
    shadowFadeOutAnimation = [(THAnimationController *)self shadowFadeOutAnimation];
    shadowAnimationLayer = [(THAnimatableSource *)[(THAnimationController *)self source] shadowAnimationLayer];
    v8 = @"THAnimationControllerFadeOutAnimation";
LABEL_15:
    [(CALayer *)shadowAnimationLayer addAnimation:shadowFadeOutAnimation forKey:v8];
    goto LABEL_16;
  }

  if ([(THAnimationController *)self sourceShadowLayer])
  {
    [(CALayer *)[(THAnimationController *)self sourceShadowLayer] addAnimation:[(THAnimationController *)self sourceShadowFadeOutAnimation] forKey:@"fadeOutAnimation"];
  }

  if ([(THAnimationController *)self sourceReflectionLayer])
  {
    [(CALayer *)[(THAnimationController *)self sourceReflectionLayer] addAnimation:[(THAnimationController *)self sourceShadowFadeOutAnimation] forKey:@"fadeOutAnimation"];
  }

  if ([(THAnimationController *)self sourceOverlayLayer])
  {
    shadowFadeOutAnimation = [(THAnimationController *)self sourceShadowFadeOutAnimation];
    shadowAnimationLayer = [(THAnimationController *)self sourceOverlayLayer];
    v8 = @"fadeOutAnimation";
    goto LABEL_15;
  }

LABEL_16:
  if ([(THAnimationController *)self targetShadowLayer])
  {
    [-[THAnimationController p_objectForLayer:key:](self p_objectForLayer:-[THAnimationController targetShadowLayer](self key:{"targetShadowLayer"), @"opacity", "floatValue"}];
    [(CALayer *)[(THAnimationController *)self targetShadowLayer] addAnimation:[(THAnimationController *)self fadeInOnDelayAnimationToOpacity:v9] forKey:@"fadeInAnimation"];
  }

  if ([(THAnimationController *)self targetReflectionLayer])
  {
    [-[THAnimationController p_objectForLayer:key:](self p_objectForLayer:-[THAnimationController targetReflectionLayer](self key:{"targetReflectionLayer"), @"opacity", "floatValue"}];
    [(CALayer *)[(THAnimationController *)self targetReflectionLayer] addAnimation:[(THAnimationController *)self fadeInOnDelayAnimationToOpacity:v10] forKey:@"fadeInAnimation"];
  }

  shadowTransformAnimation = [(THAnimationController *)self shadowTransformAnimation];
  if (shadowTransformAnimation)
  {
    [-[THAnimatableSource shadowAnimationLayer](-[THAnimationController source](self "source")];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  mObservers = self->mObservers;
  v13 = [(NSMutableArray *)mObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(mObservers);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v17 animationControllerDidAddContentAnimations:self uniformTargetScale:self->_uniformTargetScale];
        }
      }

      v14 = [(NSMutableArray *)mObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (id)curveAndOvershootAnimation
{
  memset(&v85, 0, sizeof(v85));
  animationLayer = [(THAnimationController *)self animationLayer];
  if (animationLayer)
  {
    [(CALayer *)animationLayer transform];
  }

  else
  {
    memset(&v84, 0, sizeof(v84));
  }

  CATransform3DGetAffineTransform(&v85, &v84);
  animationLayer2 = [(THAnimationController *)self animationLayer];
  v74 = *&CGAffineTransformIdentity.c;
  v75 = *&CGAffineTransformIdentity.a;
  *&v84.m11 = *&CGAffineTransformIdentity.a;
  *&v84.m13 = v74;
  v73 = *&CGAffineTransformIdentity.tx;
  *&v84.m21 = v73;
  [(CALayer *)animationLayer2 setAffineTransform:&v84];
  [(THAnimationController *)self initialLayerPosition];
  [(THAnimationController *)self initialLayerSize];
  TSDRectWithCenterAndSize();
  v6 = v5;
  v8 = v7;
  if ([(THAnimationController *)self targetLayer]&& ([(THAnimatableDestination *)[(THAnimationController *)self destination] shouldFadeInTargetLayer:[(THAnimationController *)self source]]& 1) == 0)
  {
    targetLayer = [(THAnimationController *)self targetLayer];
    *&v84.m11 = v75;
    *&v84.m13 = v74;
    *&v84.m21 = v73;
    [(CALayer *)targetLayer setAffineTransform:&v84];
  }

  [(THAnimationController *)self targetFrame];
  v11 = v10;
  v13 = v12;
  v71 = v85.a;
  c = v85.c;
  HIDWORD(v14) = HIDWORD(v85.ty);
  v78 = v85.b;
  tx = v85.tx;
  d = v85.d;
  ty = v85.ty;
  LODWORD(v14) = 1055286886;
  LODWORD(v12) = 1.0;
  LODWORD(v10) = 1057803469;
  v69 = [CAMediaTimingFunction functionWithControlPoints:v14];
  LODWORD(v15) = 0.25;
  LODWORD(v16) = 0.25;
  LODWORD(v17) = 1.0;
  LODWORD(v18) = 1057803469;
  v19 = [CAMediaTimingFunction functionWithControlPoints:v15];
  [(THAnimationController *)self animationDuration];
  v65 = v20;
  [(THAnimationController *)self animationDuration];
  v72 = v21;
  overshoot = [(THAnimationController *)self overshoot];
  [(THAnimationController *)self overshoot];
  [(THAnimationController *)self destination];
  v64 = v8;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THAnimatableDestination *)[(THAnimationController *)self destination] shouldAnimateToFit])
  {
    v23 = THScaleNeededToFitSizeInSize(v6, v8, v11, v13);
  }

  else
  {
    v23 = THScaleNeededToFillSizeInSize(v6, v8, v11, v13);
  }

  v67 = v23;
  v63 = v11;
  TSDMultiplyPointScalar();
  TSDCenterOfRect();
  TSDCenterOfRect();
  TSDSubtractPoints();
  v25 = v24;
  v27 = v26;
  TSDAddPoints();
  v28 = 0.0;
  if (overshoot)
  {
    v28 = 0.05;
  }

  v66 = v28;
  v70 = v65 * 0.899999976;
  v29 = *&CATransform3DIdentity.m33;
  *&v84.m31 = *&CATransform3DIdentity.m31;
  *&v84.m33 = v29;
  v30 = *&CATransform3DIdentity.m43;
  *&v84.m41 = *&CATransform3DIdentity.m41;
  *&v84.m43 = v30;
  v31 = *&CATransform3DIdentity.m13;
  *&v84.m11 = *&CATransform3DIdentity.m11;
  *&v84.m13 = v31;
  v32 = *&CATransform3DIdentity.m23;
  *&v84.m21 = *&CATransform3DIdentity.m21;
  *&v84.m23 = v32;
  *&v83.m31 = *&v84.m31;
  *&v83.m33 = v29;
  *&v83.m41 = *&v84.m41;
  *&v83.m43 = v30;
  *&v83.m11 = *&v84.m11;
  *&v83.m13 = v31;
  v33 = (v63 / v6 + v13 / v64) * 0.5 * (1.0 / ((fabs(v71 + c) + fabs(v78 + d)) * 0.5));
  *&v83.m21 = *&v84.m21;
  *&v83.m23 = v32;
  CATransform3DTranslate(&v84, &v83, v25, v27, 0.0);
  b = v84;
  CATransform3DScale(&v83, &b, v67, v67, 1.0);
  v84 = v83;
  *&v83.m11 = v75;
  *&v83.m13 = v74;
  *&v83.m21 = v73;
  CATransform3DMakeAffineTransform(&b, &v83);
  a = v84;
  CATransform3DConcat(&v83, &a, &b);
  v84 = v83;
  self->_uniformTargetScale = v67;
  TSDMultiplyPointScalar();
  v35 = v34;
  v68 = v36;
  v83.m11 = v71;
  v83.m12 = v78;
  v83.m13 = c;
  v83.m14 = d;
  v83.m21 = tx;
  v83.m22 = ty;
  [(THAnimationController *)self p_rotationAngleFromTransform:&v83];
  v38 = v37;
  *&v83.m11 = v75;
  *&v83.m13 = v74;
  *&v83.m21 = v73;
  [(THAnimationController *)self p_rotationAngleFromTransform:&v83];
  v40 = v38 - v39;
  v41 = 3.14059265 / vabdd_f64(v38, v39) + -1.0;
  if (v41 > 0.05)
  {
    v41 = 0.05;
  }

  v42 = v40 * v41;
  v43 = fmax((v33 + -1.0) * v66 + 1.0, 0.96);
  if (v43 <= 1.04)
  {
    v44 = v43;
  }

  else
  {
    v44 = 1.04;
  }

  TSDMultiplyPointScalar();
  v46 = v45;
  v48 = v47;
  v83 = v84;
  b = v84;
  CATransform3DScale(&v83, &b, v44, v44, 1.0);
  a = v83;
  CATransform3DRotate(&b, &a, v42, 0.0, 0.0, 1.0);
  v83 = b;
  a = b;
  CATransform3DTranslate(&b, &a, v46, v48, 0.0);
  v83 = b;
  v49 = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation"];
  [(CAKeyframeAnimation *)v49 setValues:[NSArray arrayWithObjects:[NSValue valueWithCGSize:CGSizeZero.width, CGSizeZero.height], [NSValue valueWithCGSize:v35, v68], [NSValue valueWithCGSize:CGSizeZero.width, CGSizeZero.height], 0]];
  [(CAKeyframeAnimation *)v49 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], 0]];
  v50 = [NSNumber numberWithFloat:0.0];
  LODWORD(v51) = 1051361018;
  v52 = [NSNumber numberWithFloat:v51];
  LODWORD(v53) = 1.0;
  [(CAKeyframeAnimation *)v49 setKeyTimes:[NSArray arrayWithObjects:v50, v52, [NSNumber numberWithFloat:v53], 0]];
  [(CAKeyframeAnimation *)v49 setDuration:v72 + v70 * 0.5];
  [(CAKeyframeAnimation *)v49 setFillMode:kCAFillModeForwards];
  [(CAKeyframeAnimation *)v49 setRemovedOnCompletion:0];
  v54 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  a.m11 = v71;
  a.m12 = v78;
  a.m13 = c;
  a.m14 = d;
  a.m21 = tx;
  a.m22 = ty;
  CATransform3DMakeAffineTransform(&b, &a);
  v55 = [NSValue valueWithCATransform3D:&b];
  b = v83;
  v56 = [NSValue valueWithCATransform3D:&b];
  b = v84;
  [(CAKeyframeAnimation *)v54 setValues:[NSArray arrayWithObjects:v55, v56, [NSValue valueWithCATransform3D:&b], 0]];
  [(CAKeyframeAnimation *)v54 setTimingFunctions:[NSArray arrayWithObjects:v19, v69, 0]];
  v57 = [NSNumber numberWithFloat:0.0];
  v58 = v72 / (v72 + v70);
  *&v58 = v58;
  v59 = [NSNumber numberWithFloat:v58];
  LODWORD(v60) = 1.0;
  [(CAKeyframeAnimation *)v54 setKeyTimes:[NSArray arrayWithObjects:v57, v59, [NSNumber numberWithFloat:v60], 0]];
  [(CAKeyframeAnimation *)v54 setDuration:v72 + v70];
  [(CAKeyframeAnimation *)v54 setFillMode:kCAFillModeForwards];
  [(CAKeyframeAnimation *)v54 setRemovedOnCompletion:0];
  v61 = +[CAAnimationGroup animation];
  [v61 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v49, v54, 0)}];
  [v61 setDuration:v72 + v70];
  [v61 setFillMode:kCAFillModeForwards];
  [v61 setRemovedOnCompletion:0];
  return v61;
}

- (id)fadeInAnimation
{
  [(THAnimationController *)self animationDuration];
  v4 = v3;
  v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v5 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
  [(CABasicAnimation *)v5 setDuration:v4];
  [(CABasicAnimation *)v5 setFromValue:[NSNumber numberWithFloat:0.0]];
  [-[THAnimationController p_objectForLayer:key:](self p_objectForLayer:-[THAnimationController targetLayer](self key:{"targetLayer"), @"opacity", "floatValue"}];
  [(CABasicAnimation *)v5 setToValue:[NSNumber numberWithFloat:?]];
  [(CABasicAnimation *)v5 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v5 setRemovedOnCompletion:0];
  return v5;
}

- (id)shadowFadeOutAnimation
{
  [(THAnimationController *)self animationDuration];
  v4 = v3;
  v5 = v3 * self->_shadowFadeOutDurationScale;
  v6 = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
  [(CABasicAnimation *)v6 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [(CABasicAnimation *)v6 setBeginTime:v4 - v5 + CACurrentMediaTime()];
  [(CABasicAnimation *)v6 setDuration:v5];
  [(CABasicAnimation *)v6 setToValue:[NSNumber numberWithFloat:0.0]];
  [(CABasicAnimation *)v6 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v6 setRemovedOnCompletion:0];
  return v6;
}

- (id)fadeInOnDelayAnimationToOpacity:(double)opacity
{
  [(THAnimationController *)self animationDuration];
  v6 = v5;
  [(THAnimationController *)self animationDuration];
  v8 = v7 * 0.899999976;
  v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v9 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
  [(CABasicAnimation *)v9 setBeginTime:v6 + CACurrentMediaTime()];
  [(CABasicAnimation *)v9 setDuration:v8];
  [(CABasicAnimation *)v9 setFromValue:[NSNumber numberWithFloat:0.0]];
  *&v10 = opacity;
  [(CABasicAnimation *)v9 setToValue:[NSNumber numberWithFloat:v10]];
  [(CABasicAnimation *)v9 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v9 setRemovedOnCompletion:0];
  return v9;
}

- (id)sourceShadowFadeOutAnimation
{
  [(THAnimationController *)self animationDuration];
  v3 = v2 * 0.150000006;
  v4 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v4 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  [(CABasicAnimation *)v4 setDuration:v3];
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:0.0]];
  [(CABasicAnimation *)v4 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  return v4;
}

- (id)shadowTransformAnimation
{
  shadowAnimationLayer = [(THAnimatableSource *)[(THAnimationController *)self source] shadowAnimationLayer];
  if (self->_shadowTransformDurationScale <= 0.0 || shadowAnimationLayer == 0)
  {
    return 0;
  }

  v5 = shadowAnimationLayer;
  [(THAnimationController *)self source];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  [(THAnimationController *)self animationDuration];
  v7 = v6;
  [v5 affineTransform];
  memset(v15, 0, sizeof(v15));
  source = [(THAnimationController *)self source];
  destination = [(THAnimationController *)self destination];
  if (source)
  {
    [(THAnimatableSource *)source shadowAnimationLayerDestinationTransform:destination uniformTargetScale:self->_uniformTargetScale];
  }

  else
  {
    memset(v15, 0, 48);
  }

  v11 = v7 * self->_shadowTransformDurationScale;
  v10 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [(CABasicAnimation *)v10 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
  [(CABasicAnimation *)v10 setDuration:v11];
  v13 = v15[1];
  CATransform3DMakeAffineTransform(&v14, &v13);
  [(CABasicAnimation *)v10 setFromValue:[NSValue valueWithCATransform3D:&v14]];
  v13 = v15[0];
  CATransform3DMakeAffineTransform(&v14, &v13);
  [(CABasicAnimation *)v10 setToValue:[NSValue valueWithCATransform3D:&v14]];
  [(CABasicAnimation *)v10 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v10 setRemovedOnCompletion:0];
  return v10;
}

- (void)performAnimation
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THAnimationController *)self addForegroundFadeAnimation];
  [(THAnimationController *)self addContentAnimation];
  [(THAnimationController *)self addBackgroundFadeOutAnimation];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  mObservers = self->mObservers;
  v4 = [(NSMutableArray *)mObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [(THAnimationController *)self animationDuration];
          [v8 animationController:self updateWhitePointAdaptivtyStyleWithDuration:?];
        }
      }

      v5 = [(NSMutableArray *)mObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CGRect)p_targetFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  [(THAnimationController *)self destination];
  v7 = height;
  v8 = width;
  v9 = y;
  v10 = CGRectNull.origin.x;
  if (objc_opt_respondsToSelector())
  {
    [(THAnimatableDestination *)[(THAnimationController *)self destination] ftcTargetFrame];
    v10 = v11;
    v9 = v12;
    v8 = v13;
    v7 = v14;
  }

  v32.origin.x = v10;
  v32.origin.y = v9;
  v32.size.width = v8;
  v32.size.height = v7;
  if (CGRectIsEmpty(v32))
  {
    targetLayer = [(THAnimatableDestination *)[(THAnimationController *)self destination] targetLayer];
    if ([(THAnimationController *)self hostLayer])
    {
      if (targetLayer && [targetLayer superlayer])
      {
        [(THAnimationController *)self destination];
        if (objc_opt_respondsToSelector())
        {
          [(THAnimatableDestination *)[(THAnimationController *)self destination] targetFrameForSource:[(THAnimationController *)self source]];
          x = v16;
          y = v17;
          width = v18;
          height = v19;
        }

        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        if (CGRectIsEmpty(v33))
        {
          [targetLayer frame];
          x = v20;
          y = v21;
          width = v22;
          height = v23;
        }

        -[CALayer convertRect:fromLayer:](-[THAnimationController hostLayer](self, "hostLayer"), "convertRect:fromLayer:", [targetLayer superlayer], x, y, width, height);
        v10 = v24;
        v9 = v25;
        v8 = v26;
        v7 = v27;
      }
    }
  }

  v28 = v10;
  v29 = v9;
  v30 = v8;
  v31 = v7;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)p_objectForLayer:(id)layer key:(id)key
{
  layerSaveRestore = [(THAnimationController *)self layerSaveRestore];

  return [(TSULayerSaveRestore *)layerSaveRestore objectForLayer:layer key:key];
}

- (void)p_saveLayer:(id)layer
{
  if (layer)
  {
    layerSaveRestore = [(THAnimationController *)self layerSaveRestore];

    [(TSULayerSaveRestore *)layerSaveRestore saveLayer:layer];
  }
}

- (void)p_restoreLayer:(id)layer
{
  if (layer)
  {
    layerSaveRestore = [(THAnimationController *)self layerSaveRestore];

    [(TSULayerSaveRestore *)layerSaveRestore restoreLayer:layer];
  }
}

- (double)p_scaleForTargetLayer
{
  v3 = 1.0;
  if ([(THAnimationController *)self targetLayer]&& [(THAnimatableDestination *)[(THAnimationController *)self destination] shouldFadeInTargetLayer:[(THAnimationController *)self source]])
  {
    [-[THAnimatableSource animationLayer](-[THAnimationController source](self "source")];
    v5 = v4;
    v7 = v6;
    [-[THAnimatableDestination targetLayer](-[THAnimationController destination](self "destination")];
    v9 = v8;
    v11 = v10;
    [(THAnimationController *)self destination];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(THAnimatableDestination *)[(THAnimationController *)self destination] shouldAnimateToFit])
    {
      v12 = THScaleNeededToFitSizeInSize(v5, v7, v9, v11);
    }

    else
    {
      v12 = THScaleNeededToFillSizeInSize(v5, v7, v9, v11);
    }

    if (v12 <= 0.0)
    {
      return 1.0;
    }

    else
    {
      return 1.0 / v12;
    }
  }

  return v3;
}

- (double)p_scaleForAnimationLayer
{
  shouldAnimateTargetLayer = [(THAnimationController *)self shouldAnimateTargetLayer];
  result = 1.0;
  if (shouldAnimateTargetLayer)
  {
    [-[THAnimatableDestination targetLayer](-[THAnimationController destination](self destination];
    v6 = v5;
    v8 = v7;
    [(CALayer *)[(THAnimationController *)self fadeOutAnimationLayer] frame];
    result = THScaleNeededToFillSizeInSize(v6, v8, v9, v10);
    if (result <= 0.0)
    {
      return 1.0;
    }
  }

  return result;
}

- (CGPoint)initialLayerPosition
{
  x = self->_initialLayerPosition.x;
  y = self->_initialLayerPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)initialLayerSize
{
  width = self->_initialLayerSize.width;
  height = self->_initialLayerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end