@interface CRLCanvasView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGAffineTransform)additionalTransformIntoCoordinateSpace:(SEL)space;
- (CRLCanvasLayer)canvasLayer;
- (CRLCanvasLayerHosting)layerHost;
- (CRLInteractiveCanvasController)controller;
- (CRLScrollView)enclosingScrollView;
- (UICoordinateSpace)unscaledCoordinateSpace;
- (UIViewController)rootViewControllerForColorMagnifierHUD;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dealloc;
- (void)find:(id)find;
- (void)findAndReplace:(id)replace;
- (void)setCanvasSubviews:(id)subviews;
- (void)setController:(id)controller;
- (void)teardown;
@end

@implementation CRLCanvasView

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137EA8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137EAA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137EB28();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasView dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasView.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:43 isFatal:0 description:"teardown not called for CRLCanvasView."];
  }

  v6.receiver = self;
  v6.super_class = CRLCanvasView;
  [(CRLCanvasView *)&v6 dealloc];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained i_visibleBoundsRectForHitTestingCanvasView];
  v13.x = x;
  v13.y = y;
  v9 = CGRectContainsPoint(v14, v13);

  if (v9)
  {
    v12.receiver = self;
    v12.super_class = CRLCanvasView;
    v10 = [(CRLCanvasView *)&v12 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137EB50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137EB64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137EBEC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasView setController:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasView.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:61 isFatal:0 description:"shouldn't try to set canvasView's controller more than once"];
  }

  v9 = objc_loadWeakRetained(&self->_controller);

  if (!v9)
  {
    objc_storeWeak(&self->_controller, controllerCopy);
    canvasLayer = [(CRLCanvasView *)self canvasLayer];
    [canvasLayer setController:controllerCopy];

    layerHost = [controllerCopy layerHost];
    [(CRLCanvasView *)self setLayerHost:layerHost];
  }
}

- (void)teardown
{
  if (self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137EC14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137EC28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137ECB0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasView teardown]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasView.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:72 isFatal:0 description:"attempting to call teardown on an instance of CRLCanvasView that has already been torn down."];
  }

  self->_isTornDown = 1;
  objc_storeWeak(&self->_controller, 0);
  unscaledCoordinateSpace = self->_unscaledCoordinateSpace;
  self->_unscaledCoordinateSpace = 0;

  canvasLayer = [(CRLCanvasView *)self canvasLayer];
  [canvasLayer teardown];
}

- (CRLCanvasLayer)canvasLayer
{
  v3 = objc_opt_class();
  layer = [(CRLCanvasView *)self layer];
  v5 = sub_100014370(v3, layer);

  return v5;
}

- (CRLScrollView)enclosingScrollView
{
  v3 = objc_opt_class();
  superview = [(CRLCanvasView *)self superview];
  v5 = sub_100014370(v3, superview);

  return v5;
}

- (void)setCanvasSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [NSMutableOrderedSet alloc];
  subviews = [(CRLCanvasView *)self subviews];
  v7 = [v5 initWithArray:subviews];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = subviewsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v7 containsObject:v13])
        {
          subviews2 = [(CRLCanvasView *)self subviews];
          lastObject = [subviews2 lastObject];

          if (v13 != lastObject)
          {
            [v13 removeFromSuperview];
            [(CRLCanvasView *)self addSubview:v13];
          }

          [v7 removeObject:v13];
        }

        else
        {
          [(CRLCanvasView *)self addSubview:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * j) removeFromSuperview];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  layer = [(CRLCanvasView *)self layer];
  v9 = layer;
  if (layer != layerCopy)
  {

LABEL_3:
    v14.receiver = self;
    v14.super_class = CRLCanvasView;
    v10 = [(CRLCanvasView *)&v14 actionForLayer:layerCopy forKey:keyCopy];
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  i_currentAnimation = [WeakRetained i_currentAnimation];

  if (!i_currentAnimation)
  {
    goto LABEL_3;
  }

  v10 = [i_currentAnimation actionForLayer:layerCopy forKey:keyCopy];

LABEL_6:

  return v10;
}

- (UIViewController)rootViewControllerForColorMagnifierHUD
{
  window = [(CRLCanvasView *)self window];
  rootViewController = [window rootViewController];
  childViewControllers = [rootViewController childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (UICoordinateSpace)unscaledCoordinateSpace
{
  unscaledCoordinateSpace = self->_unscaledCoordinateSpace;
  if (!unscaledCoordinateSpace)
  {
    v4 = [[CRLAdditionalTransformCoordinateSpace alloc] initWithCoordinateSpace:self identifier:@"CRLCanvasViewUnscaledSpaceIdentifier"];
    v5 = self->_unscaledCoordinateSpace;
    self->_unscaledCoordinateSpace = v4;

    unscaledCoordinateSpace = self->_unscaledCoordinateSpace;
  }

  return unscaledCoordinateSpace;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v16.receiver = self;
  v16.super_class = CRLCanvasView;
  v7 = [(CRLCanvasView *)&v16 hitTest:event withEvent:?];
  v8 = v7;
  if (v7)
  {
    v9 = v7 == self;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    layerHost = [WeakRetained layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    v13 = [asiOSCVC canvasSubview:v8 shouldHandleEventAtBoundsPoint:{x, y}];

    if ((v13 & 1) == 0)
    {
      selfCopy = self;

      v8 = selfCopy;
    }
  }

  return v8;
}

- (void)find:(id)find
{
  findCopy = find;
  controller = [(CRLCanvasView *)self controller];
  [controller endEditing];

  v6.receiver = self;
  v6.super_class = CRLCanvasView;
  [(CRLCanvasView *)&v6 find:findCopy];
}

- (void)findAndReplace:(id)replace
{
  replaceCopy = replace;
  controller = [(CRLCanvasView *)self controller];
  [controller endEditing];

  v6.receiver = self;
  v6.super_class = CRLCanvasView;
  [(CRLCanvasView *)&v6 findAndReplace:replaceCopy];
}

- (CGAffineTransform)additionalTransformIntoCoordinateSpace:(SEL)space
{
  v6 = a4;
  identifier = [v6 identifier];
  v8 = [identifier isEqualToString:@"CRLCanvasViewUnscaledSpaceIdentifier"];

  if (v8)
  {
    controller = [(CRLCanvasView *)self controller];
    v10 = controller;
    if (controller)
    {
      [controller viewScale];
      CGAffineTransformMakeScale(retstr, 1.0 / v11, 1.0 / v11);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137EDFC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137EE10();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137EEC0();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLCanvasView additionalTransformIntoCoordinateSpace:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasView.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:178 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];

      v21 = *&CGAffineTransformIdentity.c;
      *&retstr->a = *&CGAffineTransformIdentity.a;
      *&retstr->c = v21;
      *&retstr->tx = *&CGAffineTransformIdentity.tx;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137ECD8();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137ECEC(v12);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137EDD4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLCanvasView additionalTransformIntoCoordinateSpace:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasView.m"];
    identifier2 = [v6 identifier];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:173 isFatal:0 description:"Unhandled coordinate space: %{public}@", identifier2];

    v17 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v17;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  return result;
}

- (CRLCanvasLayerHosting)layerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layerHost);

  return WeakRetained;
}

- (CRLInteractiveCanvasController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end