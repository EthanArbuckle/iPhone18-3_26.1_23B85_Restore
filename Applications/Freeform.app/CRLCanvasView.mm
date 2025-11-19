@interface CRLCanvasView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGAffineTransform)additionalTransformIntoCoordinateSpace:(SEL)a3;
- (CRLCanvasLayer)canvasLayer;
- (CRLCanvasLayerHosting)layerHost;
- (CRLInteractiveCanvasController)controller;
- (CRLScrollView)enclosingScrollView;
- (UICoordinateSpace)unscaledCoordinateSpace;
- (UIViewController)rootViewControllerForColorMagnifierHUD;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)find:(id)a3;
- (void)findAndReplace:(id)a3;
- (void)setCanvasSubviews:(id)a3;
- (void)setController:(id)a3;
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained i_visibleBoundsRectForHitTestingCanvasView];
  v13.x = x;
  v13.y = y;
  v9 = CGRectContainsPoint(v14, v13);

  if (v9)
  {
    v12.receiver = self;
    v12.super_class = CRLCanvasView;
    v10 = [(CRLCanvasView *)&v12 pointInside:v7 withEvent:x, y];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setController:(id)a3
{
  v4 = a3;
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
    objc_storeWeak(&self->_controller, v4);
    v10 = [(CRLCanvasView *)self canvasLayer];
    [v10 setController:v4];

    v11 = [v4 layerHost];
    [(CRLCanvasView *)self setLayerHost:v11];
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

  v7 = [(CRLCanvasView *)self canvasLayer];
  [v7 teardown];
}

- (CRLCanvasLayer)canvasLayer
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasView *)self layer];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CRLScrollView)enclosingScrollView
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasView *)self superview];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)setCanvasSubviews:(id)a3
{
  v4 = a3;
  v5 = [NSMutableOrderedSet alloc];
  v6 = [(CRLCanvasView *)self subviews];
  v7 = [v5 initWithArray:v6];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v4;
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
          v14 = [(CRLCanvasView *)self subviews];
          v15 = [v14 lastObject];

          if (v13 != v15)
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

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLCanvasView *)self layer];
  v9 = v8;
  if (v8 != v6)
  {

LABEL_3:
    v14.receiver = self;
    v14.super_class = CRLCanvasView;
    v10 = [(CRLCanvasView *)&v14 actionForLayer:v6 forKey:v7];
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v12 = [WeakRetained i_currentAnimation];

  if (!v12)
  {
    goto LABEL_3;
  }

  v10 = [v12 actionForLayer:v6 forKey:v7];

LABEL_6:

  return v10;
}

- (UIViewController)rootViewControllerForColorMagnifierHUD
{
  v2 = [(CRLCanvasView *)self window];
  v3 = [v2 rootViewController];
  v4 = [v3 childViewControllers];
  v5 = [v4 lastObject];

  return v5;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v16.receiver = self;
  v16.super_class = CRLCanvasView;
  v7 = [(CRLCanvasView *)&v16 hitTest:a4 withEvent:?];
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
    v11 = [WeakRetained layerHost];
    v12 = [v11 asiOSCVC];
    v13 = [v12 canvasSubview:v8 shouldHandleEventAtBoundsPoint:{x, y}];

    if ((v13 & 1) == 0)
    {
      v14 = self;

      v8 = v14;
    }
  }

  return v8;
}

- (void)find:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasView *)self controller];
  [v5 endEditing];

  v6.receiver = self;
  v6.super_class = CRLCanvasView;
  [(CRLCanvasView *)&v6 find:v4];
}

- (void)findAndReplace:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasView *)self controller];
  [v5 endEditing];

  v6.receiver = self;
  v6.super_class = CRLCanvasView;
  [(CRLCanvasView *)&v6 findAndReplace:v4];
}

- (CGAffineTransform)additionalTransformIntoCoordinateSpace:(SEL)a3
{
  v6 = a4;
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:@"CRLCanvasViewUnscaledSpaceIdentifier"];

  if (v8)
  {
    v9 = [(CRLCanvasView *)self controller];
    v10 = v9;
    if (v9)
    {
      [v9 viewScale];
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
    v16 = [v6 identifier];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:173 isFatal:0 description:"Unhandled coordinate space: %{public}@", v16];

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