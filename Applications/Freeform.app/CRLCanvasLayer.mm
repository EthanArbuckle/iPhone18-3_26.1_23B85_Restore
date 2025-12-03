@interface CRLCanvasLayer
+ (id)zoomAnimationDefaultCAAnimation;
- (BOOL)centeredInScrollView;
- (CGPoint)contentOffsetForUnscaledContentCenter:(CGPoint)center;
- (CGPoint)p_scrollViewContentOffsetForUnscaledContentCenter:(CGPoint)center viewScale:(double)scale contentInset:(UIEdgeInsets)inset;
- (CGPoint)unscaledContentCenter;
- (CGRect)p_fixedScaledBoundsForScrollViewSize:(CGSize)size viewScale:(double)scale contentInset:(UIEdgeInsets)inset;
- (CGSize)unscaledSize;
- (CRLCanvasLayer)init;
- (CRLCanvasLayer)initWithCoder:(id)coder;
- (CRLCanvasView)canvasView;
- (CRLInteractiveCanvasController)controller;
- (UIEdgeInsets)contentInset;
- (_TtC8Freeform24CRLCanvasBackgroundLayer)associatedBackgroundLayer;
- (id)beginAnimatingViewScaleExternally;
- (id)crl_sublayersForTilingLayerSupport;
- (void)animateToViewScale:(double)scale contentCenter:(CGPoint)center contentInset:(UIEdgeInsets)inset animation:(id)animation completionBlock:(id)block;
- (void)animateToViewScale:(double)scale contentCenter:(CGPoint)center contentInset:(UIEdgeInsets)inset duration:(double)duration completionBlock:(id)block;
- (void)endAnimatingViewScaleExternallyWithToken:(id)token;
- (void)fixFrameAndScrollView;
- (void)layoutIfNeededIgnoringDisabledLayout;
- (void)layoutSublayers;
- (void)p_commonInit;
- (void)p_fixFrameAndScrollView;
- (void)p_scrollViewContentInsetDidChange:(id)change;
- (void)p_scrollViewSafeAreaInsetsDidChange:(id)change;
- (void)p_setEnclosingScrollViewZoomParameters;
- (void)p_setViewScale:(double)scale;
- (void)p_setViewScale:(double)scale preservingScrollOffset:(BOOL)offset;
- (void)setAllowsPinchZoom:(BOOL)zoom;
- (void)setBounds:(CGRect)bounds;
- (void)setCenteredInScrollView:(BOOL)view;
- (void)setController:(id)controller;
- (void)setHorizontallyCenteredInScrollView:(BOOL)view verticallyCenteredInScrollView:(BOOL)scrollView fixFrame:(BOOL)frame;
- (void)setMaximumPinchViewScale:(double)scale;
- (void)setMinimumPinchViewScale:(double)scale;
- (void)setNeedsLayout;
- (void)setScrollViewFrameMaintainingApparentScrollPosition:(CGRect)position animated:(BOOL)animated;
- (void)setUnscaledSize:(CGSize)size fixFrame:(BOOL)frame;
- (void)setViewScale:(double)scale andScrollViewFrame:(CGRect)frame maintainPosition:(BOOL)position animated:(BOOL)animated;
- (void)teardown;
- (void)updateCanvasEdgeLayersIfNecessary;
@end

@implementation CRLCanvasLayer

+ (id)zoomAnimationDefaultCAAnimation
{
  v2 = objc_alloc_init(CABasicAnimation);
  [v2 setKeyPath:@"transform"];
  v3 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v2 setTimingFunction:v3];

  +[CRLCanvasLayer zoomAnimationDefaultDuration];
  [v2 setDuration:?];

  return v2;
}

- (void)p_commonInit
{
  self->mViewScale = 1.0;
  +[CRLInteractiveCanvasController maximumRecommendedViewScale];
  self->mMaximumPinchViewScale = v3;
  +[CRLInteractiveCanvasController minimumRecommendedViewScale];
  self->mMinimumPinchViewScale = v4;
  self->mAllowsPinchZoom = 0;
  self->mHorizontallyCenteredInScrollView = 0;
  self->mVerticallyCenteredInScrollView = 0;
  v5 = *&UIEdgeInsetsZero.bottom;
  *&self->mContentInset.top = *&UIEdgeInsetsZero.top;
  *&self->mContentInset.bottom = v5;
  [(CRLCanvasLayer *)self bounds];
  self->mUnscaledSize.width = v6;
  self->mUnscaledSize.height = v7;
  self->mShowsScaleFeedback = 1;
  mAnimateToViewScaleActiveDisplayLink = self->mAnimateToViewScaleActiveDisplayLink;
  self->mAnimateToViewScaleActiveDisplayLink = 0;

  v9 = *&CGAffineTransformIdentity.c;
  *&self->mAnimateToViewScaleCurrentTransform.a = *&CGAffineTransformIdentity.a;
  *&self->mAnimateToViewScaleCurrentTransform.c = v9;
  *&self->mAnimateToViewScaleCurrentTransform.tx = *&CGAffineTransformIdentity.tx;
  v10 = [[CRLTraceableResource alloc] initWithName:@"CRLCanvasLayer.ExternalViewScaleAnimation" logContext:0];
  mExternalViewScaleAnimationResource = self->mExternalViewScaleAnimationResource;
  self->mExternalViewScaleAnimationResource = v10;

  [(CRLCanvasLayer *)self setAllowsEdgeAntialiasing:1];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"p_scrollViewScrollerStyleDidChange:" name:@"CRLScrollViewScrollerStyleDidChange" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"p_scrollViewSafeAreaInsetsDidChange:" name:@"CRLScrollViewSafeAreaInsetsDidChangeNotification" object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"p_scrollViewContentInsetDidChange:" name:@"CRLScrollViewContentInsetDidChangeNotification" object:0];
}

- (CRLCanvasLayer)init
{
  v5.receiver = self;
  v5.super_class = CRLCanvasLayer;
  v2 = [(CRLCanvasLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLCanvasLayer *)v2 p_commonInit];
  }

  return v3;
}

- (CRLCanvasLayer)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLCanvasLayer;
  v3 = [(CRLCanvasLayer *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLCanvasLayer *)v3 p_commonInit];
  }

  return v4;
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->mController);

  if (WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E1E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E1FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E290();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasLayer setController:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:198 isFatal:0 description:"shouldn't try to set canvasLayer's controller more than once"];
  }

  v9 = objc_loadWeakRetained(&self->mController);

  if (!v9)
  {
    v10 = objc_storeWeak(&self->mController, controllerCopy);
    width = self->mUnscaledSize.width;
    height = self->mUnscaledSize.height;
    v13 = v10;
    canvas = [controllerCopy canvas];
    [canvas setUnscaledSize:{width, height}];

    mViewScale = self->mViewScale;
    v16 = objc_loadWeakRetained(&self->mController);
    canvas2 = [v16 canvas];
    [canvas2 setViewScale:mViewScale];
  }
}

- (void)teardown
{
  objc_storeWeak(&self->mController, 0);
  [(CRLCanvasLayer *)self p_clearAllLayerDelegates];
  self->mViewScale = 1.0;
  [(CRLCanvasBackgroundLayer *)self->mCanvasBackgroundLayer tearDown];
  mCanvasBackgroundLayer = self->mCanvasBackgroundLayer;
  self->mCanvasBackgroundLayer = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)setUnscaledSize:(CGSize)size fixFrame:(BOOL)frame
{
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      if (size.width != self->mUnscaledSize.width || size.height != self->mUnscaledSize.height)
      {
        frameCopy = frame;
        self->mUnscaledSize = size;
        WeakRetained = objc_loadWeakRetained(&self->mController);
        canvas = [WeakRetained canvas];
        [canvas setUnscaledSize:{width, height}];

        if (frameCopy)
        {
          [(CRLCanvasLayer *)self fixFrameAndScrollView];
          v11 = objc_loadWeakRetained(&self->mController);
          [v11 layoutInvalidated];
        }
      }
    }
  }
}

- (BOOL)centeredInScrollView
{
  horizontallyCenteredInScrollView = [(CRLCanvasLayer *)self horizontallyCenteredInScrollView];
  if (horizontallyCenteredInScrollView)
  {

    LOBYTE(horizontallyCenteredInScrollView) = [(CRLCanvasLayer *)self verticallyCenteredInScrollView];
  }

  return horizontallyCenteredInScrollView;
}

- (void)setCenteredInScrollView:(BOOL)view
{
  if (self->mHorizontallyCenteredInScrollView != view)
  {
    self->mHorizontallyCenteredInScrollView = view;
    p_mVerticallyCenteredInScrollView = &self->mVerticallyCenteredInScrollView;
    if (self->mVerticallyCenteredInScrollView == view)
    {
LABEL_6:
      [(CRLCanvasLayer *)self fixFrameAndScrollView];
      return;
    }

LABEL_5:
    *p_mVerticallyCenteredInScrollView = view;
    goto LABEL_6;
  }

  p_mVerticallyCenteredInScrollView = &self->mVerticallyCenteredInScrollView;
  if (self->mVerticallyCenteredInScrollView != view)
  {
    goto LABEL_5;
  }
}

- (void)setHorizontallyCenteredInScrollView:(BOOL)view verticallyCenteredInScrollView:(BOOL)scrollView fixFrame:(BOOL)frame
{
  mHorizontallyCenteredInScrollView = self->mHorizontallyCenteredInScrollView;
  if (mHorizontallyCenteredInScrollView != view)
  {
    self->mHorizontallyCenteredInScrollView = view;
  }

  if (self->mVerticallyCenteredInScrollView == scrollView)
  {
    if (mHorizontallyCenteredInScrollView != view && frame)
    {
      goto LABEL_8;
    }
  }

  else
  {
    self->mVerticallyCenteredInScrollView = scrollView;
    if (frame)
    {
LABEL_8:
      [(CRLCanvasLayer *)self fixFrameAndScrollView];
    }
  }
}

- (void)fixFrameAndScrollView
{
  if ((self->mUnscaledSize.width != CGSizeZero.width || self->mUnscaledSize.height != CGSizeZero.height) && !self->mViewScaleAnimationCount)
  {
    WeakRetained = objc_loadWeakRetained(&self->mController);

    if (WeakRetained)
    {

      [(CRLCanvasLayer *)self p_fixFrameAndScrollView];
    }
  }
}

- (void)setNeedsLayout
{
  needsLayout = [(CRLCanvasLayer *)self needsLayout];
  v6.receiver = self;
  v6.super_class = CRLCanvasLayer;
  [(CRLCanvasLayer *)&v6 setNeedsLayout];
  if ((needsLayout & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->mController);
    i_currentlySuppressingLayerUpdates = [WeakRetained i_currentlySuppressingLayerUpdates];

    if ((i_currentlySuppressingLayerUpdates & 1) == 0)
    {
      [(CRLCanvasLayer *)self crl_setNeedsLayoutForTilingLayers];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CRLCanvasLayer *)self bounds];
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v12 = CGRectEqualToRect(v14, v15);
  v13.receiver = self;
  v13.super_class = CRLCanvasLayer;
  [(CRLCanvasLayer *)&v13 setBounds:x, y, width, height];
  if (!v12)
  {
    [(CRLCanvasBackgroundLayer *)self->mCanvasBackgroundLayer setNeedsLayout];
  }
}

- (id)crl_sublayersForTilingLayerSupport
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sublayers = [(CRLCanvasLayer *)self sublayers];
  v5 = [sublayers copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)layoutIfNeededIgnoringDisabledLayout
{
  mDisableLayout = self->mDisableLayout;
  self->mDisableLayout = 0;
  [(CRLCanvasLayer *)self layoutIfNeeded];
  self->mDisableLayout = mDisableLayout;
}

- (void)layoutSublayers
{
  if (!self->mDisableLayout)
  {
    WeakRetained = objc_loadWeakRetained(&self->mController);
    [WeakRetained i_layout];

    [(CRLCanvasLayer *)self viewScale];
    v6 = v5;
    v7 = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);
    [v7 setViewScale:v6];

    v8 = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);
    scalesWithCanvas = [v8 scalesWithCanvas];

    if ((scalesWithCanvas & 1) == 0)
    {
      [(CRLCanvasLayer *)self fixFrameAndScrollView];
    }

    [(CRLCanvasLayer *)self updateCanvasEdgeLayersIfNecessary];
  }
}

- (CRLCanvasView)canvasView
{
  WeakRetained = objc_loadWeakRetained(&self->mController);
  layerHost = [WeakRetained layerHost];
  canvasView = [layerHost canvasView];

  return canvasView;
}

- (void)setAllowsPinchZoom:(BOOL)zoom
{
  if (self->mAllowsPinchZoom != zoom)
  {
    self->mAllowsPinchZoom = zoom;
    WeakRetained = objc_loadWeakRetained(&self->mController);
    layerHost = [WeakRetained layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    [asiOSCVC i_updateZoomGestureRecognizer];

    [(CRLCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  }
}

- (void)setMinimumPinchViewScale:(double)scale
{
  if (self->mMinimumPinchViewScale != scale)
  {
    self->mMinimumPinchViewScale = scale;
    [(CRLCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  }
}

- (void)setMaximumPinchViewScale:(double)scale
{
  if (self->mMaximumPinchViewScale != scale)
  {
    self->mMaximumPinchViewScale = scale;
    [(CRLCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
  }
}

- (CGPoint)unscaledContentCenter
{
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if (enclosingScrollView)
  {
    [enclosingScrollView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [enclosingScrollView adjustedContentInset];
    v14 = v6 + v13;
    v16 = v8 + v15;
    v18 = v10 - (v13 + v17);
    v20 = v12 - (v15 + v19);
    canvasView2 = [(CRLCanvasLayer *)self canvasView];
    [canvasView2 convertPoint:enclosingScrollView fromView:{sub_100120414(v14, v16, v18, v20)}];
    v23 = v22;
    v25 = v24;

    x = sub_10011F340(v23, v25, 1.0 / self->mViewScale);
    y = v27;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v29 = x;
  v30 = y;
  result.y = v30;
  result.x = v29;
  return result;
}

- (CGPoint)contentOffsetForUnscaledContentCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  mViewScale = self->mViewScale;
  [(CRLCanvasLayer *)self contentInset];

  [(CRLCanvasLayer *)self p_scrollViewContentOffsetForUnscaledContentCenter:x viewScale:y contentInset:mViewScale, v7, v8, v9, v10];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)p_scrollViewContentOffsetForUnscaledContentCenter:(CGPoint)center viewScale:(double)scale contentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  y = center.y;
  x = center.x;
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if (enclosingScrollView)
  {
    rect_16 = x;
    rect_24 = y;
    WeakRetained = objc_loadWeakRetained(&self->mController);
    [WeakRetained unobscuredFrameOfView:enclosingScrollView];
    v17 = v16;
    v19 = v18;

    [(CRLCanvasLayer *)self p_fixedScaledBoundsForScrollViewSize:v17 viewScale:v19 contentInset:scale, top, left, bottom, right];
    rect_8 = v20;
    v21 = objc_loadWeakRetained(&self->mController);
    shouldCanvasScrollingSizeGrowToFitBoardContent = [v21 shouldCanvasScrollingSizeGrowToFitBoardContent];

    if (!shouldCanvasScrollingSizeGrowToFitBoardContent)
    {
      sub_10011F340(self->mUnscaledSize.width, self->mUnscaledSize.height, scale);
    }

    rect = sub_10011ECB4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = sub_10011F340(rect_16, rect_24, scale);
    v31 = sub_10011F31C(v29, v30, rect_8);
    v33 = v32;
    v34 = -0.5;
    v35 = 0.0;
    v36 = 0.0;
    if (v26 > v17)
    {
      v37 = v31 + v17 * -0.5;
      v53.origin.x = rect;
      v53.origin.y = v24;
      v53.size.width = v26;
      v53.size.height = v28;
      MinX = CGRectGetMinX(v53);
      v39 = sub_1004C3240(v37, MinX, v26 - v17);
      v34 = -0.5;
      v36 = v39;
    }

    if (v28 > v19)
    {
      v40 = v33 + v19 * v34;
      v54.origin.x = rect;
      v54.origin.y = v24;
      v54.size.width = v26;
      v54.size.height = v28;
      MinY = CGRectGetMinY(v54);
      v35 = sub_1004C3240(v40, MinY, v28 - v19);
    }

    [enclosingScrollView adjustedContentInset];
    v43 = v36 - v42;
    v45 = v35 - v44;
  }

  else
  {
    v43 = CGPointZero.x;
    v45 = CGPointZero.y;
  }

  v46 = v43;
  v47 = v45;
  result.y = v47;
  result.x = v46;
  return result;
}

- (void)setViewScale:(double)scale andScrollViewFrame:(CGRect)frame maintainPosition:(BOOL)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if (animatedCopy)
  {
    if (enclosingScrollView)
    {
      [enclosingScrollView frame];
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      if (!CGRectEqualToRect(v33, v35))
      {
        [enclosingScrollView setFrame:{x, y, width, height}];
      }
    }

    if (positionCopy)
    {
      [(CRLCanvasLayer *)self unscaledContentCenter];
      v16 = v15;
      v18 = v17;
    }

    else
    {
      v16 = CGPointZero.x;
      v18 = CGPointZero.y;
    }

    [(CRLCanvasLayer *)self contentInset];
    [(CRLCanvasLayer *)self animateToViewScale:0 contentCenter:scale contentInset:v16 duration:v18 completionBlock:v20, v21, v22, v23, 0.2];
  }

  else
  {
    if (enclosingScrollView && ([enclosingScrollView frame], v36.origin.x = x, v36.origin.y = y, v36.size.width = width, v36.size.height = height, !CGRectEqualToRect(v34, v36)))
    {
      [enclosingScrollView setFrame:{x, y, width, height}];
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    [(CRLCanvasLayer *)self unscaledContentCenter];
    v25 = v24;
    v27 = v26;
    mViewScale = self->mViewScale;
    if (mViewScale != scale)
    {
      [(CRLCanvasLayer *)self p_setViewScale:scale];
    }

    [(CRLCanvasLayer *)self fixFrameAndScrollView];
    if (positionCopy)
    {
      [(CRLCanvasLayer *)self contentOffsetForUnscaledContentCenter:v25, v27];
      [enclosingScrollView setContentOffset:0 animated:?];
    }

    if (mViewScale != scale)
    {
      WeakRetained = objc_loadWeakRetained(&self->mController);
      [WeakRetained i_viewScaleDidChange];
    }

    if (v19)
    {
      v30 = objc_loadWeakRetained(&self->mController);
      [v30 i_viewScrollDidChange];
    }
  }
}

- (void)animateToViewScale:(double)scale contentCenter:(CGPoint)center contentInset:(UIEdgeInsets)inset duration:(double)duration completionBlock:(id)block
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  y = center.y;
  x = center.x;
  blockCopy = block;
  v17 = +[CRLCanvasLayer zoomAnimationDefaultCAAnimation];
  [v17 setDuration:duration];
  [(CRLCanvasLayer *)self animateToViewScale:v17 contentCenter:blockCopy contentInset:scale animation:x completionBlock:y, top, left, bottom, right];
}

- (void)animateToViewScale:(double)scale contentCenter:(CGPoint)center contentInset:(UIEdgeInsets)inset animation:(id)animation completionBlock:(id)block
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  y = center.y;
  x = center.x;
  animationCopy = animation;
  blockCopy = block;
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if (scale <= 0.0 || self->mViewScale == scale && ([(CRLCanvasLayer *)self contentInset], left == v50) && top == v47 && right == v49 && bottom == v48 && ([(CRLCanvasLayer *)self unscaledContentCenter], sub_10011ED38(x, y, v51, v52)) && !self->mViewScaleAnimationCount)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, self->mViewScaleAnimationCount == 0);
    }
  }

  else
  {
    mViewScaleAnimationCount = self->mViewScaleAnimationCount;
    self->mViewScaleAnimationCount = mViewScaleAnimationCount + 1;
    if (!mViewScaleAnimationCount)
    {
      WeakRetained = objc_loadWeakRetained(&self->mController);
      [WeakRetained i_viewWillBeginZooming];
    }

    v18 = objc_loadWeakRetained(&self->mController);
    scaleCopy = scale;
    [v18 i_viewDidZoomToViewScale:0 notify:scale];

    isLayoutDisabled = [(CRLCanvasLayer *)self isLayoutDisabled];
    [(CRLCanvasLayer *)self setDisableLayout:1];
    v21 = animationCopy;
    if (!animationCopy)
    {
      v21 = +[CRLCanvasLayer zoomAnimationDefaultCAAnimation];
    }

    animationCopy = v21;
    [v21 duration];
    v81 = v22;
    v88 = *&CGAffineTransformIdentity.c;
    v89 = *&CGAffineTransformIdentity.a;
    *&v119.a = *&CGAffineTransformIdentity.a;
    *&v119.c = v88;
    v87 = *&CGAffineTransformIdentity.tx;
    *&v119.tx = v87;
    [(CRLCanvasLayer *)self bounds];
    v24 = v23;
    v26 = v25;
    v83 = v28;
    v84 = v27;
    v29 = CGPointZero.x;
    v90 = CGPointZero.x;
    v91 = CGPointZero.y;
    v85 = left;
    v86 = x;
    v82 = top;
    if (enclosingScrollView)
    {
      v30 = sub_10011F31C(CGPointZero.x, CGPointZero.y, v23);
      v79 = v31;
      v80 = v30;
      [enclosingScrollView frame];
      [(CRLCanvasLayer *)self p_fixedScaledBoundsForScrollViewSize:v32 viewScale:v33 contentInset:scaleCopy, top, left, bottom, right];
      v35 = v34;
      [(CRLCanvasLayer *)self p_scrollViewContentOffsetForUnscaledContentCenter:x viewScale:y contentInset:scaleCopy, top, left, bottom, right];
      v37 = v36;
      v39 = v38;
      v92 = sub_10011F31C(CGPointZero.x, v91, v35);
      v41 = v40;
      [enclosingScrollView contentOffset];
      v29 = sub_10011F31C(v80, v79, v42);
      v44 = v43;
      v45 = sub_10011F31C(v92, v41, v37);
      v90 = v37;
      v91 = v39;
    }

    else
    {
      v46 = CGPointZero.y;
      v45 = CGPointZero.x;
      v44 = v46;
    }

    *&v117.m11 = v89;
    *&v117.m13 = v88;
    *&v117.m21 = v87;
    CGAffineTransformTranslate(&v119, &v117, v45 - v29, v46 - v44);
    mViewScale = self->mViewScale;
    memset(&v118, 0, sizeof(v118));
    CGAffineTransformMakeScale(&v118, scaleCopy / mViewScale, scaleCopy / mViewScale);
    [(CRLCanvasLayer *)self anchorPoint];
    v55 = v54;
    v57 = v56;
    v120.origin.x = v24;
    v120.origin.y = v26;
    v120.size.width = v84;
    v120.size.height = v83;
    MinX = CGRectGetMinX(v120);
    v121.origin.x = v24;
    v121.origin.y = v26;
    v121.size.width = v84;
    v121.size.height = v83;
    v59 = MinX + v55 * CGRectGetWidth(v121);
    v122.origin.x = v24;
    v122.origin.y = v26;
    v122.size.width = v84;
    v122.size.height = v83;
    MinY = CGRectGetMinY(v122);
    v123.origin.x = v24;
    v123.origin.y = v26;
    v123.size.width = v84;
    v123.size.height = v83;
    Height = CGRectGetHeight(v123);
    *&t1.m11 = *&v118.a;
    *&t1.m13 = *&v118.c;
    *&t1.m21 = *&v118.tx;
    sub_100139EB4(&t1, &v117, v59, MinY + v57 * Height);
    *&v118.c = *&v117.m13;
    *&v118.tx = *&v117.m21;
    *&v118.a = *&v117.m11;
    *&t1.m11 = *&v117.m11;
    *&t1.m13 = *&v117.m13;
    *&t1.m21 = *&v117.m21;
    *&t2.m11 = *&v119.a;
    *&t2.m13 = *&v119.c;
    *&t2.m21 = *&v119.tx;
    CGAffineTransformConcat(&v117, &t1, &t2);
    *&v119.a = *&v117.m11;
    *&v119.c = *&v117.m13;
    *&v119.tx = *&v117.m21;
    memset(&v117, 0, sizeof(v117));
    *&t1.m11 = *&v119.a;
    *&t1.m13 = *&v119.c;
    *&t1.m21 = *&v119.tx;
    CATransform3DMakeAffineTransform(&v117, &t1);
    v117.m33 = v117.m11;
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v115 = v117;
    v114[2] = sub_10014ED4C;
    v114[3] = &unk_1018402E8;
    v114[4] = self;
    v116 = isLayoutDisabled;
    v62 = objc_retainBlock(v114);
    objc_initWeak(&location, self);
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_10014EDBC;
    v110[3] = &unk_101840310;
    objc_copyWeak(v112, &location);
    v111 = blockCopy;
    v112[1] = *&scaleCopy;
    v112[2] = *&v82;
    v112[3] = *&v85;
    v112[4] = *&bottom;
    v112[5] = *&right;
    v112[6] = *&v90;
    v112[7] = *&v91;
    v112[8] = *&v86;
    v112[9] = *&y;
    v63 = objc_retainBlock(v110);
    [(CRLCanvasLayer *)self transform];
    t2 = v117;
    if (CATransform3DEqualToTransform(&t1, &t2))
    {
      (v62[2])(v62);
      (v63[2])(v63);
    }

    else
    {
      v64 = CACurrentMediaTime();
      *&t1.m11 = v89;
      *&t1.m13 = v88;
      *&t1.m21 = v87;
      mAnimateToViewScaleActiveDisplayLink = self->mAnimateToViewScaleActiveDisplayLink;
      if (mAnimateToViewScaleActiveDisplayLink)
      {
        [(CRLDisplayLink *)mAnimateToViewScaleActiveDisplayLink setPaused:1];
        v66 = *&self->mAnimateToViewScaleCurrentTransform.c;
        *&t1.m11 = *&self->mAnimateToViewScaleCurrentTransform.a;
        *&t1.m13 = v66;
        *&t1.m21 = *&self->mAnimateToViewScaleCurrentTransform.tx;
      }

      v96 = enclosingScrollView;
      v67 = [CRLDisplayLink alloc];
      v101[0] = _NSConcreteStackBlock;
      v101[1] = 3221225472;
      v101[2] = sub_10014EF94;
      v101[3] = &unk_101840338;
      v103[1] = v81;
      objc_copyWeak(v103, &location);
      v103[2] = *&v64;
      v68 = animationCopy;
      v102 = v68;
      v104 = v119;
      v105 = *&t1.m11;
      v106 = *&t1.m13;
      v107 = *&t1.m21;
      v69 = [(CRLDisplayLink *)v67 initWithHandler:v101];
      objc_storeStrong(&self->mAnimateToViewScaleActiveDisplayLink, v69);
      objc_initWeak(&t2, v69);
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_10014F098;
      v98[3] = &unk_101840360;
      objc_copyWeak(&v100, &t2);
      v98[4] = self;
      v99 = v63;
      v70 = objc_retainBlock(v98);
      [(CRLDisplayLink *)v69 setPaused:0];
      v71 = objc_loadWeakRetained(&self->mController);
      [v71 beginAnimations:&stru_1018BCA28];

      v72 = objc_loadWeakRetained(&self->mController);
      i_currentAnimation = [v72 i_currentAnimation];
      [i_currentAnimation setDuration:*&v81];

      v74 = objc_loadWeakRetained(&self->mController);
      i_currentAnimation2 = [v74 i_currentAnimation];
      [i_currentAnimation2 setAnimation:v68 forLayer:self forKey:@"transform"];

      v76 = objc_loadWeakRetained(&self->mController);
      i_currentAnimation3 = [v76 i_currentAnimation];
      [i_currentAnimation3 setCompletionBlock:v70];

      (v62[2])(v62);
      v78 = objc_loadWeakRetained(&self->mController);
      [v78 commitAnimations];

      objc_destroyWeak(&v100);
      objc_destroyWeak(&t2);

      objc_destroyWeak(v103);
      enclosingScrollView = v96;
    }

    objc_destroyWeak(v112);
    objc_destroyWeak(&location);
  }
}

- (id)beginAnimatingViewScaleExternally
{
  v3 = [(CRLTraceableResource *)self->mExternalViewScaleAnimationResource willAcquireResourceWithIntent:@"AnimateViewScale" timeout:10 parent:0 context:0];
  ++self->mViewScaleAnimationCount;
  [(CRLTraceableResource *)self->mExternalViewScaleAnimationResource didAcquireResourceWithToken:v3];

  return v3;
}

- (void)endAnimatingViewScaleExternallyWithToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    mViewScaleAnimationCount = self->mViewScaleAnimationCount;
    if (mViewScaleAnimationCount)
    {
      self->mViewScaleAnimationCount = mViewScaleAnimationCount - 1;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131E2B8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131E2CC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131E360();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLCanvasLayer endAnimatingViewScaleExternallyWithToken:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayer.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:778 isFatal:0 description:"Trying to end animating view scale without a matching call to begin."];
    }

    [(CRLTraceableResource *)self->mExternalViewScaleAnimationResource didRelinquishResourceWithToken:tokenCopy];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E388();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E39C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E44C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasLayer endAnimatingViewScaleExternallyWithToken:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:770 isFatal:0 description:"invalid nil value for '%{public}s'", "token"];
  }
}

- (void)setScrollViewFrameMaintainingApparentScrollPosition:(CGRect)position animated:(BOOL)animated
{
  animatedCopy = animated;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if (enclosingScrollView)
  {
    [enclosingScrollView frame];
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (!CGRectEqualToRect(v25, v26))
    {
      canvasView2 = [(CRLCanvasLayer *)self canvasView];
      [enclosingScrollView bounds];
      [canvasView2 convertPoint:enclosingScrollView fromView:{sub_100120414(v12, v13, v14, v15)}];
      v17 = v16;
      v19 = v18;

      v20 = sub_10011F340(v17, v19, 1.0 / self->mViewScale);
      v22 = v21;
      [enclosingScrollView setFrame:{x, y, width, height}];
      [(CRLCanvasLayer *)self contentOffsetForUnscaledContentCenter:v20, v22];
      [enclosingScrollView setContentOffset:animatedCopy animated:?];
    }
  }

  [(CRLCanvasLayer *)self fixFrameAndScrollView];
}

- (void)p_setViewScale:(double)scale
{
  [(CRLCanvasLayer *)self willChangeValueForKey:@"viewScale"];
  self->mViewScale = scale;
  [(CRLCanvasLayer *)self didChangeValueForKey:@"viewScale"];
  mViewScale = self->mViewScale;
  WeakRetained = objc_loadWeakRetained(&self->mController);
  canvas = [WeakRetained canvas];
  [canvas setViewScale:mViewScale];

  v8 = self->mViewScale;
  mCanvasBackgroundLayer = self->mCanvasBackgroundLayer;

  [(CRLCanvasBackgroundLayer *)mCanvasBackgroundLayer setViewScale:v8];
}

- (void)p_setViewScale:(double)scale preservingScrollOffset:(BOOL)offset
{
  mViewScale = self->mViewScale;
  if (scale > 0.0 && mViewScale != scale)
  {
    if (offset && (-[CRLCanvasLayer canvasView](self, "canvasView", mViewScale), v8 = objc_claimAutoreleasedReturnValue(), [v8 enclosingScrollView], v24 = objc_claimAutoreleasedReturnValue(), v8, v24))
    {
      [v24 contentOffset];
      v10 = v9;
      v12 = v11;
      [v24 contentSize];
      v13 = 0;
      x = v10 / v14;
      y = v12 / v16;
    }

    else
    {
      v24 = 0;
      x = CGPointZero.x;
      y = CGPointZero.y;
      v13 = 1;
    }

    [(CRLCanvasLayer *)self p_setViewScale:scale];
    WeakRetained = objc_loadWeakRetained(&self->mController);
    shouldCanvasScrollingSizeGrowToFitBoardContent = [WeakRetained shouldCanvasScrollingSizeGrowToFitBoardContent];

    if (shouldCanvasScrollingSizeGrowToFitBoardContent)
    {
      v20 = objc_loadWeakRetained(&self->mController);
      [v20 i_canvasDidUpdateVisibleBounds];
    }

    [(CRLCanvasLayer *)self p_setEnclosingScrollViewZoomParameters];
    [(CRLCanvasLayer *)self fixFrameAndScrollView];
    if ((v13 & 1) == 0)
    {
      [v24 contentSize];
      [v24 setContentOffset:0 animated:{sub_100122154(x * v21, y * v22)}];
    }

    v23 = objc_loadWeakRetained(&self->mController);
    [v23 i_viewScaleDidChange];
  }
}

- (void)p_setEnclosingScrollViewZoomParameters
{
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if (enclosingScrollView)
  {
    [enclosingScrollView setMinimumZoomScale:1.0];
    [enclosingScrollView setMaximumZoomScale:1.0];
    [enclosingScrollView setZoomScale:1.0];
  }
}

- (CGRect)p_fixedScaledBoundsForScrollViewSize:(CGSize)size viewScale:(double)scale contentInset:(UIEdgeInsets)inset
{
  left = inset.left;
  top = inset.top;
  p_mUnscaledSize = &self->mUnscaledSize;
  if (self->mUnscaledSize.width == CGSizeZero.width && self->mUnscaledSize.height == CGSizeZero.height)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    r2 = inset.right;
    r2_8 = inset.bottom;
    v10 = sub_10011ECB4();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    WeakRetained = objc_loadWeakRetained(&self->mController);
    canvas = [WeakRetained canvas];
    isAnchoredAtRight = [canvas isAnchoredAtRight];

    r2_16 = left;
    r2_24 = top;
    if (isAnchoredAtRight)
    {
      CGAffineTransformMakeScale(v116, -1.0, 1.0);
      v118.origin.x = v10;
      v118.origin.y = v12;
      v118.size.width = v14;
      v118.size.height = v16;
      v119 = CGRectApplyAffineTransform(v118, v116);
      v10 = v119.origin.x;
      v12 = v119.origin.y;
      v14 = v119.size.width;
      v16 = v119.size.height;
    }

    v20 = objc_loadWeakRetained(&self->mController);
    [v20 growUnscaledCanvasLayerRect:v10 withViewScale:{v12, v14, v16, scale}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v106 = v14;
    v107 = v10;
    v105 = v16;
    if (!sub_10011EF14(v22, v24, v26, v28, v10, v12, v14, v16))
    {
      v29 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131E474();
      }

      v30 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v97 = p_mUnscaledSize->width;
        v98 = p_mUnscaledSize->height;
        v99 = v30;
        v117.width = v97;
        v117.height = v98;
        v100 = NSStringFromCGSize(v117);
        v123.origin.x = v22;
        v123.origin.y = v24;
        v123.size.width = v26;
        v123.size.height = v28;
        v101 = NSStringFromCGRect(v123);
        *v116 = 67110402;
        *&v116[4] = v29;
        *&v116[8] = 2082;
        *&v116[10] = "[CRLCanvasLayer p_fixedScaledBoundsForScrollViewSize:viewScale:contentInset:]";
        *&v116[18] = 2082;
        *&v116[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayer.m";
        *&v116[28] = 1024;
        *&v116[30] = 891;
        *&v116[34] = 2112;
        *&v116[36] = v100;
        *&v116[44] = 2112;
        *&v116[46] = v101;
        _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected canvas layer not to shrink in -growUnscaledCanvasLayerRect:, but jumped from %@ to %@, ignoring provided rect.", v116, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131E49C();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v31);
      }

      v32 = [NSString stringWithUTF8String:"[CRLCanvasLayer p_fixedScaledBoundsForScrollViewSize:viewScale:contentInset:]"];
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayer.m"];
      v34 = NSStringFromCGSize(*p_mUnscaledSize);
      v120.origin.x = v22;
      v120.origin.y = v24;
      v120.size.width = v26;
      v120.size.height = v28;
      v35 = NSStringFromCGRect(v120);
      [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:891 isFatal:0 description:"expected canvas layer not to shrink in -growUnscaledCanvasLayerRect:, but jumped from %@ to %@, ignoring provided rect.", v34, v35];

      v26 = v106;
      v22 = v107;
      v24 = v12;
      v28 = v16;
    }

    v36 = r2_16 + sub_10011FFD8(v22, v24, v26, v28, scale);
    v38 = r2_24 + v37;
    v39 = r2_16 + r2;
    v41 = v40 - (r2_16 + r2);
    v42 = r2_24 + r2_8;
    v44 = v43 - (r2_24 + r2_8);
    canvasView = [(CRLCanvasLayer *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];

    if (enclosingScrollView)
    {
      v47 = objc_loadWeakRetained(&self->mController);
      shouldResizeCanvasToScrollView = [v47 shouldResizeCanvasToScrollView];

      if (shouldResizeCanvasToScrollView)
      {
        v103 = v44;
        v104 = v41;
        r2a = v36;
        r2_8a = v38;
        v49 = objc_loadWeakRetained(&self->mController);
        canvas2 = [v49 canvas];
        [canvas2 contentsScale];
        v102 = v51;

        v52 = sub_10011ECB4();
        v54 = v53;
        v56 = v55;
        [enclosingScrollView scrollableAreaContentInsets];
        v59 = v54 - (v57 + v58);
        v62 = v56 - (v60 + v61);
        v63 = sub_10011FFD8(v107, v12, v106, v105, scale);
        v115 = v64;
        v65 = r2_16 + v63;
        v67 = v66 - v39;
        v69 = v68 - v42;
        v70 = v59;
        v71 = sub_10011F31C(v59, v62, v66 - v39);
        if (v71 <= 0.0)
        {
          v70 = v67;
          v78 = r2_24;
          v79 = v103;
        }

        else
        {
          v73 = v71;
          v74 = v72;
          controller = [(CRLCanvasLayer *)self controller];
          canvas3 = [controller canvas];
          isAnchoredAtRight2 = [canvas3 isAnchoredAtRight];

          if (isAnchoredAtRight2)
          {
            v65 = v65 - v73;
          }

          v78 = r2_24;
          if ([(CRLCanvasLayer *)self horizontallyCenteredInScrollView])
          {
            v65 = sub_100122128(v65 + v73 * -0.5, v102);
          }

          v79 = v103;
          v72 = v74;
        }

        v84 = v78 + v115;
        if (v72 <= 0.0)
        {
          v62 = v69;
          v86 = r2_8a;
        }

        else
        {
          v85 = v72;
          v86 = r2_8a;
          if ([(CRLCanvasLayer *)self verticallyCenteredInScrollView])
          {
            v84 = sub_100122128(v84 + v85 * -0.5, v102);
          }
        }

        v125.size.width = v104;
        v121.origin.x = v65;
        v121.origin.y = v84;
        v121.size.width = v70;
        v121.size.height = v62;
        v125.origin.x = r2a;
        v125.origin.y = v86;
        v125.size.height = v79;
        v122 = CGRectUnion(v121, v125);
        v36 = v122.origin.x;
        v38 = v122.origin.y;
        v41 = v122.size.width;
        v44 = v122.size.height;
      }
    }

    v87 = objc_loadWeakRetained(&self->mController);
    canvas4 = [v87 canvas];
    [canvas4 contentsScale];
    x = sub_1001221E8(v36, v38, v41, v44, v89);
    y = v90;
    width = v91;
    height = v92;
  }

  v93 = x;
  v94 = y;
  v95 = width;
  v96 = height;
  result.size.height = v96;
  result.size.width = v95;
  result.origin.y = v94;
  result.origin.x = v93;
  return result;
}

- (void)p_fixFrameAndScrollView
{
  controller = [(CRLCanvasLayer *)self controller];
  [controller contentOffset];
  v5 = v4;
  v7 = v6;

  WeakRetained = objc_loadWeakRetained(&self->mController);
  [WeakRetained sizeOfScrollViewEnclosingCanvas];
  v10 = v9;
  v12 = v11;
  mViewScale = self->mViewScale;
  [(CRLCanvasLayer *)self contentInset];
  [(CRLCanvasLayer *)self p_fixedScaledBoundsForScrollViewSize:v10 viewScale:v12 contentInset:mViewScale, v14, v15, v16, v17];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  canvasView = [(CRLCanvasLayer *)self canvasView];
  [canvasView bounds];
  v77.origin.x = v26;
  v77.origin.y = v27;
  v77.size.width = v28;
  v77.size.height = v29;
  v76.origin.x = v19;
  v76.origin.y = v21;
  v76.size.width = v23;
  v76.size.height = v25;
  if (!CGRectEqualToRect(v76, v77) || (v30 = objc_loadWeakRetained(&self->mController), v31 = [v30 currentlyScrolling], v30, (v31 & 1) == 0))
  {
    [canvasView setBounds:{v19, v21, v23, v25}];
    v32 = sub_10011ECB4();
    [(CRLCanvasLayer *)self setPosition:sub_100120414(v32, v33, v34, v35)];
    canvasView2 = [(CRLCanvasLayer *)self canvasView];
    enclosingScrollView = [canvasView2 enclosingScrollView];

    controller2 = [(CRLCanvasLayer *)self controller];
    i_shouldAttemptToPreserveContentOffsetAfterFixFrame = [controller2 i_shouldAttemptToPreserveContentOffsetAfterFixFrame];

    if (i_shouldAttemptToPreserveContentOffsetAfterFixFrame)
    {
      controller3 = [(CRLCanvasLayer *)self controller];
      canvas = [controller3 canvas];
      isAnchoredAtRight = [canvas isAnchoredAtRight];

      controller4 = [(CRLCanvasLayer *)self controller];
      v44 = controller4;
      if (isAnchoredAtRight)
      {
        [controller4 contentOffset];
        v7 = v45;

        [enclosingScrollView scrollableAreaBounds];
        v47 = v46;
        v49 = v48;
        [enclosingScrollView adjustedContentInset];
        v52 = v47 - (v50 + v51);
        v55 = v49 - (v53 + v54);
        [(CRLCanvasLayer *)self viewScale];
        v57 = sub_10011F340(v52, v55, 1.0 / v56);
        [(CRLCanvasLayer *)self contentInset];
        v59 = -v58;
        [(CRLCanvasLayer *)self viewScale];
        v61 = v59 / v60 - v57;
      }

      else
      {
        shouldCanvasScrollingSizeGrowToFitBoardContent = [controller4 shouldCanvasScrollingSizeGrowToFitBoardContent];

        if (shouldCanvasScrollingSizeGrowToFitBoardContent)
        {
          v61 = v5;
        }

        else
        {
          [enclosingScrollView contentSize];
          v64 = v63;
          [enclosingScrollView scrollableAreaBounds];
          v66 = v64 - v65;
          contentView = [enclosingScrollView contentView];
          [canvasView convertPoint:contentView fromView:{v66, 0.0}];
          v69 = v68;

          [enclosingScrollView adjustedContentInset];
          v71 = v69 + v70;
          [(CRLCanvasLayer *)self viewScale];
          v61 = v71 / v72;
        }
      }

      if (v5 > v61)
      {
        v5 = v61;
      }

      controller5 = [(CRLCanvasLayer *)self controller];
      [controller5 setContentOffset:@"CRLCanvasLayerFixFrameInteractionSource" source:0 scrollOptions:{v5, v7}];
    }

    if (enclosingScrollView)
    {
      [enclosingScrollView setZoomScale:1.0];
      [enclosingScrollView setContentSize:{v23, v25}];
    }
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  bottom = self->mContentInset.bottom;
  right = self->mContentInset.right;
  if ([(CRLCanvasLayer *)self shouldExtendBeyondSafeArea])
  {
    canvasView = [(CRLCanvasLayer *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];

    [enclosingScrollView adjustedContentInset];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [enclosingScrollView safeAreaInsets];
    top = top - fmax(v17 - v10, 0.0);
    left = left - fmax(v18 - v12, 0.0);
    bottom = bottom - fmax(v19 - v14, 0.0);
    right = right - fmax(v20 - v16, 0.0);
  }

  v21 = top;
  v22 = left;
  v23 = bottom;
  v24 = right;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)p_scrollViewSafeAreaInsetsDidChange:(id)change
{
  object = [change object];
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  if (object == enclosingScrollView)
  {
    shouldExtendBeyondSafeArea = [(CRLCanvasLayer *)self shouldExtendBeyondSafeArea];

    if (shouldExtendBeyondSafeArea)
    {

      [(CRLCanvasLayer *)self fixFrameAndScrollView];
    }
  }

  else
  {
  }
}

- (void)p_scrollViewContentInsetDidChange:(id)change
{
  object = [change object];
  canvasView = [(CRLCanvasLayer *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  if (object == enclosingScrollView && [(CRLCanvasLayer *)self shouldExtendBeyondSafeArea])
  {
    controller = [(CRLCanvasLayer *)self controller];
    animatingViewScale = [controller animatingViewScale];

    if ((animatingViewScale & 1) == 0)
    {

      [(CRLCanvasLayer *)self fixFrameAndScrollView];
    }
  }

  else
  {
  }
}

- (void)updateCanvasEdgeLayersIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);
  scalesWithCanvas = [WeakRetained scalesWithCanvas];

  mLeftEdgeLayer = self->mLeftEdgeLayer;
  if (scalesWithCanvas)
  {
    if (mLeftEdgeLayer)
    {
      [(CALayer *)mLeftEdgeLayer removeFromSuperlayer];
      v6 = self->mLeftEdgeLayer;
      self->mLeftEdgeLayer = 0;
    }

    mRightEdgeLayer = self->mRightEdgeLayer;
    if (mRightEdgeLayer)
    {
      [(CALayer *)mRightEdgeLayer removeFromSuperlayer];
      v8 = self->mRightEdgeLayer;
      self->mRightEdgeLayer = 0;
    }

    mTopEdgeLayer = self->mTopEdgeLayer;
    if (mTopEdgeLayer)
    {
      [(CALayer *)mTopEdgeLayer removeFromSuperlayer];
      v10 = self->mTopEdgeLayer;
      self->mTopEdgeLayer = 0;
    }

    mBottomEdgeLayer = self->mBottomEdgeLayer;
    if (mBottomEdgeLayer)
    {
      [(CALayer *)mBottomEdgeLayer removeFromSuperlayer];
      v12 = self->mBottomEdgeLayer;
      self->mBottomEdgeLayer = 0;
    }

    y = CGPointZero.y;
    v14 = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);
    [v14 setAnchorPoint:{CGPointZero.x, y}];

    v15 = objc_loadWeakRetained(&self->mController);
    canvasView = [v15 canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    [enclosingScrollView scrollableAreaContentInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = -v23;
    v27 = -v25;
    [(CRLCanvasLayer *)self bounds];
    v29 = v28 - v21;
    v31 = v30 - v19;
    v33 = v32 - (v27 - v21);
    v35 = v34 - (v26 - v19);
    v36 = sub_100120534(v29, v31, v33, v35);
    v38 = v37;
    v39 = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);
    [v39 setPosition:{v36, v38}];

    v73 = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);
    [v73 setBounds:{v29, v31, v33, v35}];
  }

  else
  {
    if (!mLeftEdgeLayer)
    {
      v40 = objc_alloc_init(CRLNoDefaultImplicitActionLayer);
      v41 = self->mLeftEdgeLayer;
      self->mLeftEdgeLayer = &v40->super;

      [(CRLCanvasLayer *)self addSublayer:self->mLeftEdgeLayer];
    }

    if (!self->mRightEdgeLayer)
    {
      v42 = objc_alloc_init(CRLNoDefaultImplicitActionLayer);
      v43 = self->mRightEdgeLayer;
      self->mRightEdgeLayer = &v42->super;

      [(CRLCanvasLayer *)self addSublayer:self->mRightEdgeLayer];
    }

    if (!self->mTopEdgeLayer)
    {
      v44 = objc_alloc_init(CRLNoDefaultImplicitActionLayer);
      v45 = self->mTopEdgeLayer;
      self->mTopEdgeLayer = &v44->super;

      [(CRLCanvasLayer *)self addSublayer:self->mTopEdgeLayer];
    }

    if (!self->mBottomEdgeLayer)
    {
      v46 = objc_alloc_init(CRLNoDefaultImplicitActionLayer);
      v47 = self->mBottomEdgeLayer;
      self->mBottomEdgeLayer = &v46->super;

      [(CRLCanvasLayer *)self addSublayer:self->mBottomEdgeLayer];
    }

    [(CRLCanvasLayer *)self bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = objc_loadWeakRetained(&self->mController);
    canvasEdgeBackgroundColor = [v56 canvasEdgeBackgroundColor];

    [(CALayer *)self->mLeftEdgeLayer setBackgroundColor:canvasEdgeBackgroundColor];
    v75.origin.x = v49;
    v75.origin.y = v51;
    v75.size.width = v53;
    v75.size.height = v55;
    v58 = CGRectGetMinX(v75) + -5000.0;
    v76.origin.x = v49;
    v76.origin.y = v51;
    v76.size.width = v53;
    v76.size.height = v55;
    v59 = CGRectGetMinY(v76) + -5000.0;
    v77.origin.x = v49;
    v77.origin.y = v51;
    v77.size.width = v53;
    v77.size.height = v55;
    CGRectGetHeight(v77);
    [(CALayer *)self->mLeftEdgeLayer setFrame:v58, v59];
    [(CALayer *)self->mRightEdgeLayer setBackgroundColor:canvasEdgeBackgroundColor];
    v78.origin.x = v49;
    v78.origin.y = v51;
    v78.size.width = v53;
    v78.size.height = v55;
    MaxX = CGRectGetMaxX(v78);
    v79.origin.x = v49;
    v79.origin.y = v51;
    v79.size.width = v53;
    v79.size.height = v55;
    v61 = CGRectGetMinY(v79) + -5000.0;
    v80.origin.x = v49;
    v80.origin.y = v51;
    v80.size.width = v53;
    v80.size.height = v55;
    [(CALayer *)self->mRightEdgeLayer setFrame:MaxX, v61, 5000.0, CGRectGetHeight(v80) + 10000.0];
    [(CALayer *)self->mTopEdgeLayer setBackgroundColor:canvasEdgeBackgroundColor];
    v81.origin.x = v49;
    v81.origin.y = v51;
    v81.size.width = v53;
    v81.size.height = v55;
    v72 = CGRectGetMinX(v81) + -5000.0;
    v82.origin.x = v49;
    v82.origin.y = v51;
    v82.size.width = v53;
    v82.size.height = v55;
    v62 = CGRectGetMinY(v82) + -5000.0;
    v63 = objc_loadWeakRetained(&self->mController);
    canvasView2 = [v63 canvasView];
    enclosingScrollView2 = [canvasView2 enclosingScrollView];
    [enclosingScrollView2 scrollableAreaContentInsets];
    v67 = v62 - v66;
    v83.origin.x = v49;
    v83.origin.y = v51;
    v83.size.width = v53;
    v83.size.height = v55;
    [(CALayer *)self->mTopEdgeLayer setFrame:v72, v67, CGRectGetWidth(v83) + 10000.0, 5000.0];

    [(CALayer *)self->mBottomEdgeLayer setBackgroundColor:canvasEdgeBackgroundColor];
    v84.origin.x = v49;
    v84.origin.y = v51;
    v84.size.width = v53;
    v84.size.height = v55;
    v68 = CGRectGetMinX(v84) + -5000.0;
    v85.origin.x = v49;
    v85.origin.y = v51;
    v85.size.width = v53;
    v85.size.height = v55;
    MaxY = CGRectGetMaxY(v85);
    v86.origin.x = v49;
    v86.origin.y = v51;
    v86.size.width = v53;
    v86.size.height = v55;
    Width = CGRectGetWidth(v86);
    v71 = self->mBottomEdgeLayer;

    [(CALayer *)v71 setFrame:v68, MaxY, Width + 10000.0, 5000.0];
  }
}

- (CRLInteractiveCanvasController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->mController);

  return WeakRetained;
}

- (CGSize)unscaledSize
{
  width = self->mUnscaledSize.width;
  height = self->mUnscaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_TtC8Freeform24CRLCanvasBackgroundLayer)associatedBackgroundLayer
{
  WeakRetained = objc_loadWeakRetained(&self->mAssociatedBackgroundLayer);

  return WeakRetained;
}

@end