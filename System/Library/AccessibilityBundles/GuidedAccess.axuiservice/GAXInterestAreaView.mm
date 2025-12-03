@interface GAXInterestAreaView
- (BOOL)_shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)index;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)buttonBeingDraggedInitialCenter;
- (CGPoint)centerForBackgroundOfInterestAreaClippedView:(id)view;
- (CGRect)_constrainedFrameForInsetFrame:(CGRect)frame forInterestAreaPathAtIndex:(unint64_t)index;
- (CGRect)accessibilityFrame;
- (CGRect)contentsBounds;
- (CGRect)savedFrame;
- (GAXInterestAreaViewDataSource)dataSource;
- (GAXInterestAreaViewDelegate)delegate;
- (UIColor)backgroundStripesPatternColor;
- (double)_scaleFactorForSpecialControls;
- (double)contentsCornerRadius;
- (id)_interestAreaPathAtIndex:(unint64_t)index;
- (id)_specialControlButtonAtLocation:(CGPoint)location passingTest:(id)test;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)interestAreaFingerPathView:(id)view interestAreaPathAtIndex:(unint64_t)index;
- (int64_t)accessibilityContainerType;
- (unint64_t)_numberOfInterestAreaPaths;
- (unint64_t)accessibilityTraits;
- (unint64_t)numberOfInterestAreaPathsForInterestAreaFingerPathView:(id)view;
- (void)_commonInit;
- (void)_ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet;
- (void)_enumerateInterestAreaPathsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)_enumerateSpecialControlPropertiesForInterestAreaPath:(id)path visibleKnobPositions:(unint64_t)positions hasCloseButton:(BOOL)button usingBlock:(id)block;
- (void)_enumerateSpecialControlsUsingBlock:(id)block;
- (void)_getClippedViewPropertiesForInterestAreaPathAtIndex:(unint64_t)index frame:(CGRect *)frame constrainedFrame:(CGRect *)constrainedFrame adjustedClippingPath:(id *)path;
- (void)_handlePan:(id)pan;
- (void)_handleTap:(id)tap;
- (void)_insertClippedViewForInterestAreaPathAtIndex:(unint64_t)index;
- (void)_resetAllSpecialControls;
- (void)adjustOutOfBoundsDrawingToCoverView:(id)view edgeInsets:(UIEdgeInsets)insets;
- (void)dealloc;
- (void)deleteDynamicInterestAreaPathAtIndices:(id)indices;
- (void)deleteInterestAreaPathsAtIndices:(id)indices;
- (void)didMoveToWindow;
- (void)insertDynamicInterestAreaPathAtIndex:(unint64_t)index;
- (void)insertInterestAreaPathAtIndex:(unint64_t)index;
- (void)layoutSubviews;
- (void)reloadAllInterestAreaPaths;
- (void)reloadDynamicInterestAreaPathAtIndex:(unint64_t)index;
- (void)reloadFrameOfInterestAreaPathAtIndex:(unint64_t)index;
- (void)reloadInterestAreaPathAtIndex:(unint64_t)index;
- (void)setBackgroundPatternScaleFactor:(double)factor;
- (void)setBackgroundShouldCoverEverything:(BOOL)everything animated:(BOOL)animated;
- (void)setBackgroundStyle:(int)style animated:(BOOL)animated;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsBounds:(CGRect)bounds;
- (void)setContentsCornerRadius:(double)radius;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setSpecialControlsVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setStyleProvider:(id)provider;
- (void)willMoveToWindow:(id)window;
@end

@implementation GAXInterestAreaView

- (void)_commonInit
{
  v22.receiver = self;
  v22.super_class = GAXInterestAreaView;
  [(GAXEventStealerView *)&v22 _commonInit];
  [(GAXInterestAreaView *)self setUserInteractionEnabled:1];
  [(GAXInterestAreaView *)self setMultipleTouchEnabled:0];
  [(GAXEventStealerView *)self setShouldStealAllEvents:0];
  [(GAXInterestAreaView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [[UIView alloc] initWithFrame:{v3, v5, v7, v9}];
  layer = [v11 layer];
  [layer setMasksToBounds:1];

  v13 = [UIView alloc];
  [v11 bounds];
  v14 = [v13 initWithFrame:?];
  [v14 setAutoresizingMask:18];
  layer2 = [v14 layer];
  [layer2 setAllowsGroupOpacity:1];

  [v11 addSubview:v14];
  [(GAXInterestAreaView *)self setBackgroundContainerView:v14];
  [(GAXInterestAreaView *)self addSubview:v11];
  [(GAXInterestAreaView *)self setContentsView:v11];
  v16 = [[GAXInterestAreaFingerPathView alloc] initWithFrame:v4, v6, v8, v10];
  [(GAXInterestAreaFingerPathView *)v16 setAutoresizingMask:18];
  [(GAXInterestAreaFingerPathView *)v16 setDataSource:self];
  [(GAXInterestAreaFingerPathView *)v16 setHidden:1];
  [(GAXInterestAreaView *)self addSubview:v16];
  [(GAXInterestAreaView *)self setFingerPathView:v16];
  v17 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_handlePan:"];
  [v17 setDelegate:self];
  [v17 setDelaysTouchesBegan:1];
  [(GAXInterestAreaView *)self addGestureRecognizer:v17];
  v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTap:"];
  [v18 setDelegate:self];
  [v18 setDelaysTouchesBegan:1];
  [(GAXInterestAreaView *)self addGestureRecognizer:v18];
  v19 = objc_opt_new();
  [(GAXInterestAreaView *)self setCloseButtons:v19];
  v20 = objc_opt_new();
  [(GAXInterestAreaView *)self setResizingKnobButtons:v20];
  backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
  [backgroundContainerView setAlpha:0.0];

  [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:0x7FFFFFFFFFFFFFFFLL];
  [(GAXInterestAreaView *)self setBackgroundPatternScaleFactor:1.0];
}

- (void)dealloc
{
  fingerPathView = [(GAXInterestAreaView *)self fingerPathView];
  [fingerPathView setDataSource:0];

  clippedViews = [(GAXInterestAreaView *)self clippedViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [clippedViews countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(clippedViews);
        }

        [*(*(&v21 + 1) + 8 * i) setDelegate:0];
      }

      v6 = [clippedViews countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  backgroundViewCoveringEverything = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
  [backgroundViewCoveringEverything setDelegate:0];

  gestureRecognizers = [(GAXInterestAreaView *)self gestureRecognizers];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [gestureRecognizers countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        [v15 setDelegate:0];
        [v15 removeTarget:self action:0];
      }

      v12 = [gestureRecognizers countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v16.receiver = self;
  v16.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v16 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(GAXInterestAreaView *)self setNeedsLayout];
    v5 = obj;
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(GAXInterestAreaView *)self reloadAllInterestAreaPaths];
    v5 = obj;
  }
}

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v12 = providerCopy;
    objc_storeStrong(&self->_styleProvider, provider);
    if (!v12)
    {
LABEL_9:
      fingerPathView = [(GAXInterestAreaView *)self fingerPathView];
      [fingerPathView setStyleProvider:v12];

      providerCopy = v12;
      goto LABEL_10;
    }

    [(GAXInterestAreaView *)self _refreshBackgroundStripesPatternColor];
    backgroundStyle = [(GAXInterestAreaView *)self backgroundStyle];
    if (backgroundStyle == 2)
    {
      [(GAXStyleProvider *)v12 interestAreaViewBackgroundStripePatternAlpha];
      v8 = v9;
    }

    else
    {
      if (backgroundStyle != 1)
      {
LABEL_8:
        [(GAXInterestAreaView *)self reloadAllInterestAreaPaths];
        goto LABEL_9;
      }

      [(GAXStyleProvider *)v12 interestAreaViewBackgroundStripePatternAlpha];
      v8 = v7 * 0.5;
    }

    backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
    [backgroundContainerView setAlpha:v8];

    goto LABEL_8;
  }

LABEL_10:
}

- (CGRect)contentsBounds
{
  contentsView = [(GAXInterestAreaView *)self contentsView];
  [contentsView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContentsBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  contentsView = [(GAXInterestAreaView *)self contentsView];
  [contentsView setFrame:{x, y, width, height}];
}

- (double)contentsCornerRadius
{
  contentsView = [(GAXInterestAreaView *)self contentsView];
  layer = [contentsView layer];
  [layer cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setContentsCornerRadius:(double)radius
{
  contentsView = [(GAXInterestAreaView *)self contentsView];
  layer = [contentsView layer];
  [layer setCornerRadius:radius];
}

- (void)setBackgroundPatternScaleFactor:(double)factor
{
  if (self->_backgroundPatternScaleFactor != factor)
  {
    self->_backgroundPatternScaleFactor = factor;
    clippedViews = [(GAXInterestAreaView *)self clippedViews];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [clippedViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(clippedViews);
          }

          [*(*(&v11 + 1) + 8 * i) setBackgroundPatternScaleFactor:factor];
        }

        v7 = [clippedViews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    backgroundViewCoveringEverything = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
    [backgroundViewCoveringEverything setBackgroundPatternScaleFactor:factor];
  }
}

- (UIColor)backgroundStripesPatternColor
{
  backgroundStripesPatternColor = self->_backgroundStripesPatternColor;
  if (!backgroundStripesPatternColor)
  {
    styleProvider = [(GAXInterestAreaView *)self styleProvider];
    window = [(GAXInterestAreaView *)self window];
    screen = [window screen];

    if (styleProvider && screen)
    {
      interestAreaViewBackgroundColor = [styleProvider interestAreaViewBackgroundColor];
      interestAreaViewBackgroundHatchingTexture = [styleProvider interestAreaViewBackgroundHatchingTexture];
      [styleProvider interestAreaViewBackgroundHatchingTextureAlpha];
      v10 = v9;
      [interestAreaViewBackgroundHatchingTexture size];
      v12 = v11;
      v14 = v13;
      [screen scale];
      v16 = v15;
      [interestAreaViewBackgroundHatchingTexture size];
      UIGraphicsBeginImageContextWithOptions(v23, 1, v16);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSetFillColorWithColor(CurrentContext, [interestAreaViewBackgroundColor CGColor]);
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = v12;
      v24.size.height = v14;
      CGContextFillRect(CurrentContext, v24);
      [interestAreaViewBackgroundHatchingTexture drawAtPoint:0 blendMode:CGPointZero.x alpha:{CGPointZero.y, v10}];
      v18 = UIGraphicsGetImageFromCurrentImageContext();
      v19 = [[UIColor alloc] initWithPatternImage:v18];
      v20 = self->_backgroundStripesPatternColor;
      self->_backgroundStripesPatternColor = v19;

      UIGraphicsEndImageContext();
    }

    backgroundStripesPatternColor = self->_backgroundStripesPatternColor;
  }

  return backgroundStripesPatternColor;
}

- (void)setBackgroundStyle:(int)style animated:(BOOL)animated
{
  if (self->_backgroundStyle != style)
  {
    v30 = v7;
    v31 = v6;
    v32 = v4;
    v33 = v5;
    animatedCopy = animated;
    self->_backgroundStyle = style;
    styleProvider = [(GAXInterestAreaView *)self styleProvider];
    backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
    v13 = backgroundContainerView;
    if (style)
    {
      [styleProvider interestAreaViewBackgroundStripePatternAlpha];
      if (style == 1)
      {
        v15 = v14 * 0.5;
      }

      else
      {
        v15 = v14;
      }

      if (animatedCopy)
      {
        [v13 setHidden:0];
        [styleProvider defaultAnimationDuration];
        v17 = v16;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_EFB4;
        v27[3] = &unk_5D0E0;
        v28 = v13;
        v29 = v15;
        [UIView animateWithDuration:v27 animations:v17];
        v18 = v28;
LABEL_10:

LABEL_14:
        return;
      }

      [v13 setAlpha:v15];
      v21 = v13;
      v22 = 0;
    }

    else
    {
      if (animatedCopy)
      {
        [styleProvider defaultAnimationDuration];
        v20 = v19;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_EFC0;
        v25[3] = &unk_5CD48;
        v26 = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_EFCC;
        v23[3] = &unk_5CC18;
        v24 = v26;
        [UIView animateWithDuration:v25 animations:v23 completion:v20];

        v18 = v26;
        goto LABEL_10;
      }

      [backgroundContainerView setAlpha:0.0];
      v21 = v13;
      v22 = 1;
    }

    [v21 setHidden:v22];
    goto LABEL_14;
  }
}

- (void)setSpecialControlsVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_specialControlsVisible != visible)
  {
    animatedCopy = animated;
    self->_specialControlsVisible = visible;
    if (visible)
    {
      [(GAXInterestAreaView *)self _resetAllSpecialControls];
      if (!animatedCopy)
      {
        return;
      }

      [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:&stru_5D120];
      styleProvider = [(GAXInterestAreaView *)self styleProvider];
      [styleProvider defaultAnimationDuration];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F1B8;
      v9[3] = &unk_5CD48;
      v9[4] = self;
      [UIView animateWithDuration:v9 animations:?];
      goto LABEL_7;
    }

    if (animated)
    {
      styleProvider = [(GAXInterestAreaView *)self styleProvider];
      [styleProvider defaultAnimationDuration];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_F1D4;
      v8[3] = &unk_5CD48;
      v8[4] = self;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F1F0;
      v7[3] = &unk_5CC18;
      v7[4] = self;
      [UIView animateWithDuration:v8 animations:v7 completion:?];
LABEL_7:

      return;
    }

    [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:&stru_5D1A0];
  }
}

- (void)setBackgroundShouldCoverEverything:(BOOL)everything animated:(BOOL)animated
{
  if (self->_backgroundShouldCoverEverything != everything)
  {
    animatedCopy = animated;
    everythingCopy = everything;
    self->_backgroundShouldCoverEverything = everything;
    backgroundViewCoveringEverything = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
    styleProvider = [(GAXInterestAreaView *)self styleProvider];
    if (everythingCopy)
    {
      if (!backgroundViewCoveringEverything)
      {
        backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
        [backgroundContainerView bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        backgroundViewCoveringEverything = [[GAXInterestAreaClippedView alloc] initWithFrame:v10, v12, v14, v16];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setAutoresizingMask:18];
        [(GAXInterestAreaView *)self bounds];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setBackgroundSize:v18, v19];
        backgroundStripesPatternColor = [(GAXInterestAreaView *)self backgroundStripesPatternColor];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setBackgroundColor:backgroundStripesPatternColor];

        [(GAXInterestAreaView *)self backgroundPatternScaleFactor];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setBackgroundPatternScaleFactor:?];
        v21 = [UIBezierPath bezierPathWithRect:v11, v13, v15, v17];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setClippingPath:v21];

        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setDelegate:self];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setAlpha:0.0];
        [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setHidden:1];
        [backgroundContainerView addSubview:backgroundViewCoveringEverything];
        [(GAXInterestAreaView *)self setBackgroundViewCoveringEverything:backgroundViewCoveringEverything];
      }

      [(GAXInterestAreaClippedView *)backgroundViewCoveringEverything setHidden:0];
      v22 = 0.0;
      if (animatedCopy)
      {
        [styleProvider defaultAnimationDuration];
        v22 = v23;
      }

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_F640;
      v42[3] = &unk_5CED0;
      v24 = backgroundViewCoveringEverything;
      v43 = v24;
      selfCopy = self;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_F694;
      v41[3] = &unk_5CC18;
      v41[4] = self;
      [UIView animateWithDuration:v42 animations:v41 completion:v22];
      clippedViews = v43;
    }

    else
    {
      clippedViews = [(GAXInterestAreaView *)self clippedViews];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = [clippedViews countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v38;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(clippedViews);
            }

            [*(*(&v37 + 1) + 8 * i) setHidden:0];
          }

          v27 = [clippedViews countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v27);
      }

      [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:&stru_5D200];
      v30 = 0.0;
      if (animatedCopy)
      {
        [styleProvider defaultAnimationDuration];
        v30 = v31;
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_F7B8;
      v34[3] = &unk_5CED0;
      v35 = backgroundViewCoveringEverything;
      selfCopy2 = self;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_F80C;
      v32[3] = &unk_5CC18;
      v24 = v35;
      v33 = v24;
      [UIView animateWithDuration:v34 animations:v32 completion:v30];
    }
  }
}

- (void)adjustOutOfBoundsDrawingToCoverView:(id)view edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  viewCopy = view;
  v29 = viewCopy;
  if (viewCopy)
  {
    [viewCopy bounds];
    [v29 convertRect:self toView:{left + v10, top + v11, v12 - (left + right), v13 - (top + bottom)}];
    x = v14;
    y = v16;
    width = v18;
    height = v20;
    [v29 center];
    [v29 convertPoint:self toView:{(left - right) * 0.5 + v22, (top - bottom) * 0.5 + v23}];
    MidX = v24;
    MidY = v26;
  }

  else
  {
    [(GAXInterestAreaView *)self bounds];
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    MidX = CGRectGetMidX(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MidY = CGRectGetMidY(v32);
  }

  fingerPathView = [(GAXInterestAreaView *)self fingerPathView];
  [fingerPathView setBounds:{x, y, width, height}];
  [fingerPathView setCenter:{MidX, MidY}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v3 layoutSubviews];
  [(GAXInterestAreaView *)self _resetAllSpecialControls];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(GAXInterestAreaView *)self _ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(GAXInterestAreaView *)self _ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet];
}

- (void)insertInterestAreaPathAtIndex:(unint64_t)index
{
  v5 = [(GAXInterestAreaView *)self _interestAreaPathAtIndex:?];
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    [(GAXInterestAreaView *)self _insertClippedViewForInterestAreaPathAtIndex:index];
    [(GAXInterestAreaView *)self setNeedsLayout];
    buttonBeingDragged = [(GAXInterestAreaView *)self buttonBeingDragged];
    v7 = buttonBeingDragged;
    if (buttonBeingDragged)
    {
      associatedInterestAreaPathIndex = [buttonBeingDragged associatedInterestAreaPathIndex];
      if (associatedInterestAreaPathIndex >= index)
      {
        [v7 setAssociatedInterestAreaPathIndex:associatedInterestAreaPathIndex + 1];
      }
    }

    indexOfInterestAreaPathBeingDragged = [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
    if (indexOfInterestAreaPathBeingDragged != 0x7FFFFFFFFFFFFFFFLL && indexOfInterestAreaPathBeingDragged >= index)
    {
      [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:indexOfInterestAreaPathBeingDragged + 1];
    }
  }

  _objc_release_x1();
}

- (void)reloadFrameOfInterestAreaPathAtIndex:(unint64_t)index
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v10 = size;
  [(GAXInterestAreaView *)self _getClippedViewPropertiesForInterestAreaPathAtIndex:index frame:0 constrainedFrame:&origin adjustedClippingPath:0];
  clippedViews = [(GAXInterestAreaView *)self clippedViews];
  v7 = [clippedViews objectAtIndex:index];

  backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
  [(GAXInterestAreaView *)self convertRect:backgroundContainerView toView:origin, v10];
  [v7 setFrame:?];

  [(GAXInterestAreaView *)self setNeedsLayout];
}

- (void)reloadInterestAreaPathAtIndex:(unint64_t)index
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v14 = size;
  v11 = origin;
  v12 = size;
  v10 = 0;
  [(GAXInterestAreaView *)self _getClippedViewPropertiesForInterestAreaPathAtIndex:index frame:&origin constrainedFrame:&v11 adjustedClippingPath:&v10];
  v6 = v10;
  backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
  clippedViews = [(GAXInterestAreaView *)self clippedViews];
  v9 = [clippedViews objectAtIndex:index];

  [(GAXInterestAreaView *)self convertRect:backgroundContainerView toView:origin, v14];
  [v9 setFrame:?];
  [v9 setClippingPath:v6];

  [(GAXInterestAreaView *)self convertRect:backgroundContainerView toView:v11, v12];
  [v9 setFrame:?];
}

- (void)deleteInterestAreaPathsAtIndices:(id)indices
{
  indicesCopy = indices;
  selfCopy = self;
  styleProvider = [(GAXInterestAreaView *)self styleProvider];
  v5 = [UIView alloc];
  [(GAXInterestAreaView *)selfCopy bounds];
  v39 = [v5 initWithFrame:?];
  layer = [v39 layer];
  [layer setAllowsGroupOpacity:1];

  v7 = [UIView alloc];
  [(GAXInterestAreaView *)selfCopy contentsBounds];
  v36 = [v7 initWithFrame:?];
  layer2 = [v36 layer];
  [layer2 setMasksToBounds:1];
  [(GAXInterestAreaView *)selfCopy contentsCornerRadius];
  [layer2 setCornerRadius:?];
  [v39 addSubview:v36];
  v8 = [UIView alloc];
  [v36 bounds];
  v9 = [v8 initWithFrame:?];
  [v9 setAutoresizingMask:18];
  layer3 = [v9 layer];
  [layer3 setAllowsGroupOpacity:1];

  backgroundStyle = [(GAXInterestAreaView *)selfCopy backgroundStyle];
  if (backgroundStyle == 1)
  {
    [styleProvider interestAreaViewBackgroundStripePatternAlpha];
    v12 = v13 * 0.5;
  }

  else
  {
    v12 = 0.0;
    if (backgroundStyle == 2)
    {
      [styleProvider interestAreaViewBackgroundStripePatternAlpha];
    }
  }

  [v9 setAlpha:v12];
  [v36 addSubview:v9];
  [(GAXInterestAreaView *)selfCopy clippedViews];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10330;
  v33 = v54[3] = &unk_5D248;
  v55 = v33;
  v32 = v9;
  v56 = v32;
  [indicesCopy enumerateIndexesUsingBlock:v54];
  [v33 removeObjectsAtIndexes:indicesCopy];
  closeButtons = [(GAXInterestAreaView *)selfCopy closeButtons];
  resizingKnobButtons = [(GAXInterestAreaView *)selfCopy resizingKnobButtons];
  v14 = &closeButtons;
  v15 = 1;
  do
  {
    v38 = v15;
    v16 = *v14;
    v17 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v51;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          superview = [v23 superview];
          if (superview)
          {
            v25 = [indicesCopy containsIndex:{objc_msgSend(v23, "associatedInterestAreaPathIndex")}];

            if (v25)
            {
              [v23 removeFromSuperview];
              [v39 addSubview:v23];
              [v17 addIndex:v20];
            }
          }

          ++v20;
        }

        v19 = [v18 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v19);
    }

    [v18 removeObjectsAtIndexes:v17];
    v15 = 0;
    v14 = &resizingKnobButtons;
  }

  while ((v38 & 1) != 0);
  [(GAXInterestAreaView *)selfCopy insertSubview:v39 atIndex:0];
  [styleProvider defaultAnimationDuration];
  v27 = v26;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10390;
  v48[3] = &unk_5CD48;
  v49 = v39;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1039C;
  v46[3] = &unk_5CC18;
  v28 = v49;
  v47 = v28;
  [UIView animateWithDuration:v48 animations:v46 completion:v27];
  [(GAXInterestAreaView *)selfCopy setNeedsLayout];
  buttonBeingDragged = [(GAXInterestAreaView *)selfCopy buttonBeingDragged];
  v30 = buttonBeingDragged;
  if (buttonBeingDragged)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    associatedInterestAreaPathIndex = [buttonBeingDragged associatedInterestAreaPathIndex];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_103AC;
    v41[3] = &unk_5D270;
    v41[4] = &v42;
    [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v41];
    [v30 setAssociatedInterestAreaPathIndex:v43[3]];
    _Block_object_dispose(&v42, 8);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  associatedInterestAreaPathIndex = [(GAXInterestAreaView *)selfCopy indexOfInterestAreaPathBeingDragged];
  if (v43[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_103CC;
    v40[3] = &unk_5D270;
    v40[4] = &v42;
    [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v40];
    [(GAXInterestAreaView *)selfCopy setIndexOfInterestAreaPathBeingDragged:v43[3]];
  }

  _Block_object_dispose(&v42, 8);

  for (j = 8; j != -8; j -= 8)
  {
  }
}

- (void)insertDynamicInterestAreaPathAtIndex:(unint64_t)index
{
  fingerPathView = [(GAXInterestAreaView *)self fingerPathView];
  [fingerPathView reloadAllInterestAreaPaths];
  [fingerPathView setHidden:0];
}

- (void)reloadDynamicInterestAreaPathAtIndex:(unint64_t)index
{
  fingerPathView = [(GAXInterestAreaView *)self fingerPathView];
  [fingerPathView reloadAllInterestAreaPaths];
}

- (void)deleteDynamicInterestAreaPathAtIndices:(id)indices
{
  fingerPathView = [(GAXInterestAreaView *)self fingerPathView];
  [fingerPathView reloadAllInterestAreaPaths];
  if (![(GAXInterestAreaView *)self numberOfInterestAreaPathsForInterestAreaFingerPathView:fingerPathView])
  {
    [fingerPathView setHidden:1];
  }
}

- (void)reloadAllInterestAreaPaths
{
  clippedViews = [(GAXInterestAreaView *)self clippedViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [clippedViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(clippedViews);
        }

        [*(*(&v11 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [clippedViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [clippedViews removeAllObjects];
  _numberOfInterestAreaPaths = [(GAXInterestAreaView *)self _numberOfInterestAreaPaths];
  if (_numberOfInterestAreaPaths)
  {
    v9 = _numberOfInterestAreaPaths;
    for (i = 0; i != v9; ++i)
    {
      [(GAXInterestAreaView *)self insertInterestAreaPathAtIndex:i];
    }
  }

  [(GAXInterestAreaView *)self setNeedsLayout];
}

- (BOOL)isAccessibilityElement
{
  delegate = [(GAXInterestAreaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate interestAreaViewIsAccessibilityElement:self];
  }

  else
  {
    v4 = 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate canInteractWithInterestAreaView:self] & 1) == 0)
  {
    v4 = 1;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = -1.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (int64_t)accessibilityContainerType
{
  delegate = [(GAXInterestAreaView *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([delegate canInteractWithInterestAreaView:self])
  {
    accessibilityContainerType = &dword_4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXInterestAreaView;
    accessibilityContainerType = [(GAXInterestAreaView *)&v6 accessibilityContainerType];
  }

  return accessibilityContainerType;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaView;
  accessibilityTraits = [(GAXInterestAreaView *)&v6 accessibilityTraits];
  delegate = [(GAXInterestAreaView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate canInteractWithInterestAreaView:self] & 1) == 0)
  {
    accessibilityTraits |= UIAccessibilityTraitNotEnabled;
  }

  return accessibilityTraits;
}

- (id)accessibilityValue
{
  dataSource = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    dataSource2 = [(GAXInterestAreaView *)self dataSource];
    v5 = [dataSource2 numberOfInterestAreaPathsForInterestAreaView:self];
  }

  else
  {
    v5 = 0;
  }

  v6 = GAXLocString(@"AX_INTEREST_AREA_COUNT");
  v7 = [NSString localizedStringWithFormat:v6, v5];

  return v7;
}

- (id)accessibilityHint
{
  delegate = [(GAXInterestAreaView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate canInteractWithInterestAreaView:self])
  {
    v4 = GAXLocString(@"HELP_INTEREST_AREA");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  contentsView = [(GAXInterestAreaView *)self contentsView];
  [contentsView accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  [(GAXInterestAreaView *)self frame];
  [(GAXInterestAreaView *)self setSavedFrame:?];
  v5.receiver = self;
  v5.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v5 willMoveToWindow:windowCopy];
}

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v14 didMoveToWindow];
  [(GAXInterestAreaView *)self savedFrame];
  [(GAXInterestAreaView *)self setFrame:?];
  [(GAXInterestAreaView *)self setSavedFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GAXInterestAreaView *)self _refreshBackgroundStripesPatternColor];
  backgroundStripesPatternColor = [(GAXInterestAreaView *)self backgroundStripesPatternColor];
  if (backgroundStripesPatternColor)
  {
    clippedViews = [(GAXInterestAreaView *)self clippedViews];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [clippedViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(clippedViews);
          }

          [*(*(&v10 + 1) + 8 * v8) setBackgroundColor:backgroundStripesPatternColor];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [clippedViews countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    backgroundViewCoveringEverything = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
    [backgroundViewCoveringEverything setBackgroundColor:backgroundStripesPatternColor];
  }
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if (state - 1 <= 1)
  {
    delegate = [(GAXInterestAreaView *)self delegate];
    buttonBeingDragged = [(GAXInterestAreaView *)self buttonBeingDragged];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    indexOfInterestAreaPathBeingDragged = [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
    if (buttonBeingDragged)
    {
LABEL_3:
      [panCopy translationInView:self];
      v9 = v8;
      v11 = v10;
      [(GAXInterestAreaView *)self buttonBeingDraggedInitialCenter];
      v13 = v9 + v12;
      v15 = v11 + v14;
      v29 = v13;
      v30 = v15;
      if (objc_opt_respondsToSelector())
      {
        [delegate interestAreaView:self resizingKnobAtPosition:objc_msgSend(buttonBeingDragged wasMovedToPoint:"knobPosition") forInterestAreaPathAtIndex:objc_msgSend(buttonBeingDragged constrainedResizingKnobCenter:{"associatedInterestAreaPathIndex"), &v29, v13, v15}];
        v13 = v29;
        v15 = v30;
      }

      [buttonBeingDragged gax_setCenter:1 alignWithGrid:{v13, v15}];

LABEL_6:
      _Block_object_dispose(&v32, 8);
LABEL_23:

      goto LABEL_24;
    }

    if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [panCopy locationInView:self];
      v19 = v18;
      v21 = v20;
      v22 = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:?];
      buttonBeingDragged = v22;
      if (v22)
      {
        [v22 setHighlighted:1];
        [(GAXInterestAreaView *)self setButtonBeingDragged:buttonBeingDragged];
        [buttonBeingDragged center];
        [(GAXInterestAreaView *)self setButtonBeingDraggedInitialCenter:?];
        if (objc_opt_respondsToSelector())
        {
          [delegate interestAreaView:self willBeginMovingResizingKnobAtPosition:objc_msgSend(buttonBeingDragged forInterestAreaPathAtIndex:{"knobPosition"), objc_msgSend(buttonBeingDragged, "associatedInterestAreaPathIndex")}];
        }

        goto LABEL_3;
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10FA0;
      v31[3] = &unk_5D298;
      v31[5] = v19;
      v31[6] = v21;
      v31[4] = &v32;
      [(GAXInterestAreaView *)self _enumerateInterestAreaPathsWithOptions:2 usingBlock:v31];
      v26 = v33;
      if (v33[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:?];
        v27 = objc_opt_respondsToSelector();
        v26 = v33;
        if (v27)
        {
          [delegate interestAreaView:self willBeginMovingInterestAreaPathAtIndex:v33[3]];
          v26 = v33;
        }
      }

      if (v26[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [panCopy setEnabled:0];
        if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_6;
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = v33[3];
      [panCopy translationInView:self];
      [delegate interestAreaView:self interestAreaPathAtIndex:v28 wasMovedWithTranslation:?];
    }

    goto LABEL_6;
  }

  if (state - 3 <= 1)
  {
    if (state == &dword_4 && ([panCopy isEnabled] & 1) == 0)
    {
      [panCopy setEnabled:1];
    }

    buttonBeingDragged2 = [(GAXInterestAreaView *)self buttonBeingDragged];
    delegate = buttonBeingDragged2;
    if (buttonBeingDragged2)
    {
      [buttonBeingDragged2 setHighlighted:0];
      delegate2 = [(GAXInterestAreaView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate2 interestAreaView:self didFinishMovingResizingKnobAtPosition:objc_msgSend(delegate forInterestAreaPathAtIndex:{"knobPosition"), objc_msgSend(delegate, "associatedInterestAreaPathIndex")}];
      }

      [(GAXInterestAreaView *)self setButtonBeingDragged:0];
      [(GAXInterestAreaView *)self setButtonBeingDraggedInitialCenter:CGPointZero.x, CGPointZero.y];
      -[GAXInterestAreaView reloadInterestAreaPathAtIndex:](self, "reloadInterestAreaPathAtIndex:", [delegate associatedInterestAreaPathIndex]);

      [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
    }

    else
    {
      indexOfInterestAreaPathBeingDragged2 = [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
      if (indexOfInterestAreaPathBeingDragged2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = indexOfInterestAreaPathBeingDragged2;
        [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:0x7FFFFFFFFFFFFFFFLL];
        delegate3 = [(GAXInterestAreaView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate3 interestAreaView:self didFinishMovingInterestAreaPathAtIndex:v24];
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  v4 = [tapCopy state] == &dword_0 + 3;
  v5 = tapCopy;
  if (v4)
  {
    [tapCopy locationInView:self];
    v6 = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:&stru_5D2D8 passingTest:?];
    [tapCopy locationInView:self];
    [v6 convertPoint:self fromView:?];
    if ([v6 pointInside:0 withEvent:?])
    {
      delegate = [(GAXInterestAreaView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate interestAreaView:self didActivateCloseButtonForInterestAreaPathAtIndex:{objc_msgSend(v6, "associatedInterestAreaPathIndex")}];
      }
    }

    v5 = tapCopy;
  }
}

- (void)_getClippedViewPropertiesForInterestAreaPathAtIndex:(unint64_t)index frame:(CGRect *)frame constrainedFrame:(CGRect *)constrainedFrame adjustedClippingPath:(id *)path
{
  v11 = [(GAXInterestAreaView *)self _interestAreaPathAtIndex:?];
  [v11 bounds];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (frame)
  {
    frame->origin.x = v12;
    frame->origin.y = v13;
    frame->size.width = v14;
    frame->size.height = v15;
  }

  if (constrainedFrame)
  {
    [(GAXInterestAreaView *)self _constrainedFrameForInsetFrame:index forInterestAreaPathAtIndex:v12, v13, v14, v15];
    constrainedFrame->origin.x = v20;
    constrainedFrame->origin.y = v21;
    constrainedFrame->size.width = v22;
    constrainedFrame->size.height = v23;
  }

  if (path)
  {
    v24 = [v11 copy];
    *path = v24;
    v28.origin.x = v16;
    v28.origin.y = v17;
    v28.size.width = v18;
    v28.size.height = v19;
    v25 = -CGRectGetMinX(v28);
    v29.origin.x = v16;
    v29.origin.y = v17;
    v29.size.width = v18;
    v29.size.height = v19;
    MinY = CGRectGetMinY(v29);
    CGAffineTransformMakeTranslation(&v27, v25, -MinY);
    [v24 applyTransform:&v27];
  }
}

- (void)_insertClippedViewForInterestAreaPathAtIndex:(unint64_t)index
{
  backgroundContainerView = [(GAXInterestAreaView *)self backgroundContainerView];
  clippedViews = [(GAXInterestAreaView *)self clippedViews];
  if (!clippedViews)
  {
    clippedViews = objc_opt_new();
    [(GAXInterestAreaView *)self setClippedViews:clippedViews];
  }

  v7 = [clippedViews count];
  if (v7 < index)
  {
    _AXAssert();
    goto LABEL_12;
  }

  if (clippedViews && backgroundContainerView)
  {
    v8 = v7;
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v21 = size;
    v18 = origin;
    v19 = size;
    v17 = 0;
    [(GAXInterestAreaView *)self _getClippedViewPropertiesForInterestAreaPathAtIndex:index frame:&origin constrainedFrame:&v18 adjustedClippingPath:&v17];
    v10 = v17;
    v11 = [GAXInterestAreaClippedView alloc];
    [(GAXInterestAreaView *)self convertRect:backgroundContainerView toView:origin, v21];
    v12 = [(GAXInterestAreaClippedView *)v11 initWithFrame:?];
    [(GAXInterestAreaView *)self bounds];
    [(GAXInterestAreaClippedView *)v12 setBackgroundSize:v13, v14];
    backgroundStripesPatternColor = [(GAXInterestAreaView *)self backgroundStripesPatternColor];
    [(GAXInterestAreaClippedView *)v12 setBackgroundColor:backgroundStripesPatternColor];

    [(GAXInterestAreaView *)self backgroundPatternScaleFactor];
    [(GAXInterestAreaClippedView *)v12 setBackgroundPatternScaleFactor:?];
    [(GAXInterestAreaClippedView *)v12 setClippingPath:v10];

    [(GAXInterestAreaClippedView *)v12 setDelegate:self];
    [(GAXInterestAreaView *)self convertRect:backgroundContainerView toView:v18, v19];
    [(GAXInterestAreaClippedView *)v12 setFrame:?];
    if (v8 <= index)
    {
      backgroundViewCoveringEverything = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
      if (!backgroundViewCoveringEverything)
      {
        [backgroundContainerView addSubview:v12];
        goto LABEL_11;
      }
    }

    else
    {
      backgroundViewCoveringEverything = [clippedViews objectAtIndex:index];
    }

    [backgroundContainerView insertSubview:v12 belowSubview:backgroundViewCoveringEverything];
LABEL_11:

    [clippedViews insertObject:v12 atIndex:index];
  }

LABEL_12:
}

- (CGRect)_constrainedFrameForInsetFrame:(CGRect)frame forInterestAreaPathAtIndex:(unint64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(GAXInterestAreaView *)self _shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:?])
  {
    [(GAXInterestAreaView *)self contentsBounds];
    v11 = v10;
    v41 = v12;
    v42 = v10;
    v13 = v12;
    v15 = v14;
    v40 = v14;
    v17 = v16;
    rect = v16;
    v18 = [(GAXInterestAreaView *)self _interestAreaPathAtIndex:index];
    [v18 bounds];
    v47 = width;
    v48 = height;
    v20 = v19;
    v22 = v21;
    v45 = x;
    v46 = y;
    v24 = v23;
    v26 = v25;
    v50.origin.x = v11;
    v50.origin.y = v13;
    v50.size.width = v15;
    v50.size.height = v17;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v20;
    v51.origin.y = v22;
    v51.size.width = v24;
    v51.size.height = v26;
    v28 = MinX - CGRectGetMinX(v51);
    if (v28 < 0.0)
    {
      v28 = 0.0;
    }

    v44 = v28;
    v52.origin.x = v20;
    v52.origin.y = v22;
    v52.size.width = v24;
    v52.size.height = v26;
    MaxX = CGRectGetMaxX(v52);
    v53.origin.x = v42;
    v53.origin.y = v41;
    v53.size.width = v40;
    v53.size.height = rect;
    v30 = MaxX - CGRectGetMaxX(v53);
    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v43 = v30;
    v54.origin.x = v42;
    v54.origin.y = v41;
    v54.size.width = v40;
    v54.size.height = rect;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v20;
    v55.origin.y = v22;
    v55.size.width = v24;
    v55.size.height = v26;
    v32 = MinY - CGRectGetMinY(v55);
    if (v32 >= 0.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0.0;
    }

    v56.origin.x = v20;
    v56.origin.y = v22;
    v56.size.width = v24;
    v56.size.height = v26;
    MaxY = CGRectGetMaxY(v56);
    v57.origin.x = v42;
    v57.origin.y = v41;
    v57.size.width = v40;
    v57.size.height = rect;
    v35 = MaxY - CGRectGetMaxY(v57);
    if (v35 < 0.0)
    {
      v35 = 0.0;
    }

    x = v45 + v44;
    y = v46 + v33;
    width = v47 - (v44 + v43);
    height = v48 - (v33 + v35);
  }

  v36 = x;
  v37 = y;
  v38 = width;
  v39 = height;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)_resetAllSpecialControls
{
  closeButtons = [(GAXInterestAreaView *)self closeButtons];
  resizingKnobButtons = [(GAXInterestAreaView *)self resizingKnobButtons];
  areSpecialControlsVisible = [(GAXInterestAreaView *)self areSpecialControlsVisible];
  [(GAXInterestAreaView *)self buttonBeingDragged];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_11AB4;
  v47[3] = &unk_5D300;
  v6 = v49 = areSpecialControlsVisible;
  v48 = v6;
  [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:v47];
  if (areSpecialControlsVisible)
  {
    delegate = [(GAXInterestAreaView *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      styleProvider = [(GAXInterestAreaView *)self styleProvider];
      backgroundShouldCoverEverything = [(GAXInterestAreaView *)self backgroundShouldCoverEverything];
      v43[0] = 0;
      v43[1] = v43;
      v43[3] = &unk_545BF;
      if (backgroundShouldCoverEverything)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v43[2] = 0x5010000000;
      v11 = *&CGAffineTransformIdentity.c;
      v44 = *&CGAffineTransformIdentity.a;
      v45 = v11;
      v46 = *&CGAffineTransformIdentity.tx;
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v42 = 0;
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v40[3] = [closeButtons count];
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v39[3] = 0;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x2020000000;
      v38[3] = [resizingKnobButtons count];
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2020000000;
      v37[3] = 0;
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x3032000000;
      v35[3] = sub_11B14;
      v35[4] = sub_11B24;
      v36 = 0;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x3032000000;
      v33[3] = sub_11B14;
      v33[4] = sub_11B24;
      v34 = 0;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_11B2C;
      v18[3] = &unk_5D328;
      v19 = v6;
      v24 = v37;
      v25 = v38;
      v20 = resizingKnobButtons;
      v26 = v33;
      v12 = styleProvider;
      v21 = v12;
      v27 = v39;
      v28 = v40;
      v29 = v35;
      v30 = v41;
      v22 = closeButtons;
      selfCopy = self;
      v31 = v43;
      v32 = v10;
      v13 = objc_retainBlock(v18);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_11EEC;
      v15[3] = &unk_5D378;
      v15[4] = self;
      v16 = delegate;
      v14 = v13;
      v17 = v14;
      [(GAXInterestAreaView *)self _enumerateInterestAreaPathsUsingBlock:v15];

      _Block_object_dispose(v33, 8);
      _Block_object_dispose(v35, 8);

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(v38, 8);
      _Block_object_dispose(v39, 8);
      _Block_object_dispose(v40, 8);
      _Block_object_dispose(v41, 8);
      _Block_object_dispose(v43, 8);
    }
  }
}

- (void)_enumerateSpecialControlsUsingBlock:(id)block
{
  blockCopy = block;
  closeButtons = [(GAXInterestAreaView *)self closeButtons];
  resizingKnobButtons = [(GAXInterestAreaView *)self resizingKnobButtons];
  v6 = 0;
  v7 = 0;
  v8 = &closeButtons;
  v23 = resizingKnobButtons;
  v20 = 0;
  do
  {
    v9 = *v8;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = *v17;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v13), v6, &v20);
        if (v20)
        {
          break;
        }

        ++v6;
        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v14 = v7 | v20;
    v7 = 1;
    v8 = &v23;
  }

  while ((v14 & 1) == 0);
  for (i = 8; i != -8; i -= 8)
  {
  }
}

- (void)_enumerateSpecialControlPropertiesForInterestAreaPath:(id)path visibleKnobPositions:(unint64_t)positions hasCloseButton:(BOOL)button usingBlock:(id)block
{
  buttonCopy = button;
  positionsCopy = positions;
  pathCopy = path;
  blockCopy = block;
  if (positionsCopy)
  {
    [pathCopy topLeftPointOnPath];
    blockCopy[2](blockCopy, 1, buttonCopy);
    if ((positionsCopy & 2) == 0)
    {
LABEL_3:
      if ((positionsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((positionsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [pathCopy topRightPointOnPath];
  blockCopy[2](blockCopy, 2, 0);
  if ((positionsCopy & 4) == 0)
  {
LABEL_4:
    if ((positionsCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [pathCopy bottomRightPointOnPath];
  blockCopy[2](blockCopy, 4, 0);
  if ((positionsCopy & 8) != 0)
  {
LABEL_5:
    [pathCopy bottomLeftPointOnPath];
    blockCopy[2](blockCopy, 8, 0);
  }

LABEL_6:
}

- (id)_specialControlButtonAtLocation:(CGPoint)location passingTest:(id)test
{
  y = location.y;
  x = location.x;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_11B14;
  v25 = sub_11B24;
  v26 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1246C;
  v14 = &unk_5D3C0;
  selfCopy = self;
  testCopy = test;
  v19 = x;
  v20 = y;
  v16 = testCopy;
  v17 = &v21;
  v18 = v27;
  [(GAXInterestAreaView *)selfCopy _enumerateSpecialControlsUsingBlock:&v11];
  v8 = v22[5];
  [v8 convertPoint:self fromView:{x, y, v11, v12, v13, v14, selfCopy}];
  if ([v8 pointInside:0 withEvent:?])
  {
    v9 = v22[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v27, 8);

  return v9;
}

- (unint64_t)_numberOfInterestAreaPaths
{
  dataSource = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource numberOfInterestAreaPathsForInterestAreaView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_interestAreaPathAtIndex:(unint64_t)index
{
  dataSource = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [dataSource interestAreaView:self interestAreaPathAtIndex:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumerateInterestAreaPathsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  dataSource = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v14 = 0;
    v8 = [dataSource numberOfInterestAreaPathsForInterestAreaView:self];
    if (v8)
    {
      v9 = v8;
      v10 = v8 - 1;
      v11 = 1;
      do
      {
        if ((optionsCopy & 2) != 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11 - 1;
        }

        v13 = [dataSource interestAreaView:self interestAreaPathAtIndex:v12];
        blockCopy[2](blockCopy, v13, v12, &v14);

        if (v11 >= v9)
        {
          break;
        }

        ++v11;
        --v10;
      }

      while ((v14 & 1) == 0);
    }
  }
}

- (double)_scaleFactorForSpecialControls
{
  delegate = [(GAXInterestAreaView *)self delegate];
  v4 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate scaleForSpecialControlsInInterestAreaView:self];
    if (v5 != 0.0)
    {
      v4 = v5;
    }
  }

  return v4;
}

- (BOOL)_shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)index
{
  delegate = [(GAXInterestAreaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate interestAreaView:self shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet
{
  backgroundViewCoveringEverything = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
  [backgroundViewCoveringEverything backgroundSize];
  if (v4 == CGSizeZero.width && v3 == CGSizeZero.height)
  {
    [(GAXInterestAreaView *)self bounds];
    [backgroundViewCoveringEverything setBackgroundSize:{v6, v7}];
  }
}

- (unint64_t)numberOfInterestAreaPathsForInterestAreaFingerPathView:(id)view
{
  dataSource = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [dataSource numberOfDynamicInterestAreaPathsForInterestAreaView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)interestAreaFingerPathView:(id)view interestAreaPathAtIndex:(unint64_t)index
{
  dataSource = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v7 = [dataSource interestAreaView:self dynamicInterestAreaPathAtIndex:index];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)centerForBackgroundOfInterestAreaClippedView:(id)view
{
  viewCopy = view;
  [(GAXInterestAreaView *)self center];
  [(GAXInterestAreaView *)self convertPoint:viewCopy toView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    [touchCopy locationInView:self];
    buttonBeingDragged = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:&stru_5D3E0 passingTest:?];
    if (!buttonBeingDragged)
    {
      *(v18 + 24) = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  buttonBeingDragged = [(GAXInterestAreaView *)self buttonBeingDragged];
  if (buttonBeingDragged)
  {
    goto LABEL_9;
  }

  if ([(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [touchCopy locationInView:self];
    v10 = v9;
    v12 = v11;
    v13 = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:?];

    if (!v13)
    {
      *(v18 + 24) = 0;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_12BA4;
      v16[3] = &unk_5D298;
      v16[5] = v10;
      v16[6] = v12;
      v16[4] = &v17;
      [(GAXInterestAreaView *)self _enumerateInterestAreaPathsUsingBlock:v16];
    }
  }

LABEL_10:
  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (GAXInterestAreaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GAXInterestAreaViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGPoint)buttonBeingDraggedInitialCenter
{
  x = self->_buttonBeingDraggedInitialCenter.x;
  y = self->_buttonBeingDraggedInitialCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)savedFrame
{
  x = self->_savedFrame.origin.x;
  y = self->_savedFrame.origin.y;
  width = self->_savedFrame.size.width;
  height = self->_savedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end