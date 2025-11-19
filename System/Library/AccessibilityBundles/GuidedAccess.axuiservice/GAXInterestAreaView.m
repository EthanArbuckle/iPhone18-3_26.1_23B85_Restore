@interface GAXInterestAreaView
- (BOOL)_shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)buttonBeingDraggedInitialCenter;
- (CGPoint)centerForBackgroundOfInterestAreaClippedView:(id)a3;
- (CGRect)_constrainedFrameForInsetFrame:(CGRect)a3 forInterestAreaPathAtIndex:(unint64_t)a4;
- (CGRect)accessibilityFrame;
- (CGRect)contentsBounds;
- (CGRect)savedFrame;
- (GAXInterestAreaViewDataSource)dataSource;
- (GAXInterestAreaViewDelegate)delegate;
- (UIColor)backgroundStripesPatternColor;
- (double)_scaleFactorForSpecialControls;
- (double)contentsCornerRadius;
- (id)_interestAreaPathAtIndex:(unint64_t)a3;
- (id)_specialControlButtonAtLocation:(CGPoint)a3 passingTest:(id)a4;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)interestAreaFingerPathView:(id)a3 interestAreaPathAtIndex:(unint64_t)a4;
- (int64_t)accessibilityContainerType;
- (unint64_t)_numberOfInterestAreaPaths;
- (unint64_t)accessibilityTraits;
- (unint64_t)numberOfInterestAreaPathsForInterestAreaFingerPathView:(id)a3;
- (void)_commonInit;
- (void)_ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet;
- (void)_enumerateInterestAreaPathsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)_enumerateSpecialControlPropertiesForInterestAreaPath:(id)a3 visibleKnobPositions:(unint64_t)a4 hasCloseButton:(BOOL)a5 usingBlock:(id)a6;
- (void)_enumerateSpecialControlsUsingBlock:(id)a3;
- (void)_getClippedViewPropertiesForInterestAreaPathAtIndex:(unint64_t)a3 frame:(CGRect *)a4 constrainedFrame:(CGRect *)a5 adjustedClippingPath:(id *)a6;
- (void)_handlePan:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_insertClippedViewForInterestAreaPathAtIndex:(unint64_t)a3;
- (void)_resetAllSpecialControls;
- (void)adjustOutOfBoundsDrawingToCoverView:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (void)dealloc;
- (void)deleteDynamicInterestAreaPathAtIndices:(id)a3;
- (void)deleteInterestAreaPathsAtIndices:(id)a3;
- (void)didMoveToWindow;
- (void)insertDynamicInterestAreaPathAtIndex:(unint64_t)a3;
- (void)insertInterestAreaPathAtIndex:(unint64_t)a3;
- (void)layoutSubviews;
- (void)reloadAllInterestAreaPaths;
- (void)reloadDynamicInterestAreaPathAtIndex:(unint64_t)a3;
- (void)reloadFrameOfInterestAreaPathAtIndex:(unint64_t)a3;
- (void)reloadInterestAreaPathAtIndex:(unint64_t)a3;
- (void)setBackgroundPatternScaleFactor:(double)a3;
- (void)setBackgroundShouldCoverEverything:(BOOL)a3 animated:(BOOL)a4;
- (void)setBackgroundStyle:(int)a3 animated:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentsBounds:(CGRect)a3;
- (void)setContentsCornerRadius:(double)a3;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSpecialControlsVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setStyleProvider:(id)a3;
- (void)willMoveToWindow:(id)a3;
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
  v12 = [v11 layer];
  [v12 setMasksToBounds:1];

  v13 = [UIView alloc];
  [v11 bounds];
  v14 = [v13 initWithFrame:?];
  [v14 setAutoresizingMask:18];
  v15 = [v14 layer];
  [v15 setAllowsGroupOpacity:1];

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
  v21 = [(GAXInterestAreaView *)self backgroundContainerView];
  [v21 setAlpha:0.0];

  [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:0x7FFFFFFFFFFFFFFFLL];
  [(GAXInterestAreaView *)self setBackgroundPatternScaleFactor:1.0];
}

- (void)dealloc
{
  v3 = [(GAXInterestAreaView *)self fingerPathView];
  [v3 setDataSource:0];

  v4 = [(GAXInterestAreaView *)self clippedViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) setDelegate:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v9 = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
  [v9 setDelegate:0];

  v10 = [(GAXInterestAreaView *)self gestureRecognizers];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        [v15 setDelegate:0];
        [v15 removeTarget:self action:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v16.receiver = self;
  v16.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v16 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(GAXInterestAreaView *)self setNeedsLayout];
    v5 = obj;
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(GAXInterestAreaView *)self reloadAllInterestAreaPaths];
    v5 = obj;
  }
}

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    if (!v12)
    {
LABEL_9:
      v11 = [(GAXInterestAreaView *)self fingerPathView];
      [v11 setStyleProvider:v12];

      v5 = v12;
      goto LABEL_10;
    }

    [(GAXInterestAreaView *)self _refreshBackgroundStripesPatternColor];
    v6 = [(GAXInterestAreaView *)self backgroundStyle];
    if (v6 == 2)
    {
      [(GAXStyleProvider *)v12 interestAreaViewBackgroundStripePatternAlpha];
      v8 = v9;
    }

    else
    {
      if (v6 != 1)
      {
LABEL_8:
        [(GAXInterestAreaView *)self reloadAllInterestAreaPaths];
        goto LABEL_9;
      }

      [(GAXStyleProvider *)v12 interestAreaViewBackgroundStripePatternAlpha];
      v8 = v7 * 0.5;
    }

    v10 = [(GAXInterestAreaView *)self backgroundContainerView];
    [v10 setAlpha:v8];

    goto LABEL_8;
  }

LABEL_10:
}

- (CGRect)contentsBounds
{
  v2 = [(GAXInterestAreaView *)self contentsView];
  [v2 frame];
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

- (void)setContentsBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(GAXInterestAreaView *)self contentsView];
  [v7 setFrame:{x, y, width, height}];
}

- (double)contentsCornerRadius
{
  v2 = [(GAXInterestAreaView *)self contentsView];
  v3 = [v2 layer];
  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setContentsCornerRadius:(double)a3
{
  v5 = [(GAXInterestAreaView *)self contentsView];
  v4 = [v5 layer];
  [v4 setCornerRadius:a3];
}

- (void)setBackgroundPatternScaleFactor:(double)a3
{
  if (self->_backgroundPatternScaleFactor != a3)
  {
    self->_backgroundPatternScaleFactor = a3;
    v5 = [(GAXInterestAreaView *)self clippedViews];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * i) setBackgroundPatternScaleFactor:a3];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    v10 = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
    [v10 setBackgroundPatternScaleFactor:a3];
  }
}

- (UIColor)backgroundStripesPatternColor
{
  backgroundStripesPatternColor = self->_backgroundStripesPatternColor;
  if (!backgroundStripesPatternColor)
  {
    v4 = [(GAXInterestAreaView *)self styleProvider];
    v5 = [(GAXInterestAreaView *)self window];
    v6 = [v5 screen];

    if (v4 && v6)
    {
      v7 = [v4 interestAreaViewBackgroundColor];
      v8 = [v4 interestAreaViewBackgroundHatchingTexture];
      [v4 interestAreaViewBackgroundHatchingTextureAlpha];
      v10 = v9;
      [v8 size];
      v12 = v11;
      v14 = v13;
      [v6 scale];
      v16 = v15;
      [v8 size];
      UIGraphicsBeginImageContextWithOptions(v23, 1, v16);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSetFillColorWithColor(CurrentContext, [v7 CGColor]);
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = v12;
      v24.size.height = v14;
      CGContextFillRect(CurrentContext, v24);
      [v8 drawAtPoint:0 blendMode:CGPointZero.x alpha:{CGPointZero.y, v10}];
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

- (void)setBackgroundStyle:(int)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    v30 = v7;
    v31 = v6;
    v32 = v4;
    v33 = v5;
    v8 = a4;
    self->_backgroundStyle = a3;
    v11 = [(GAXInterestAreaView *)self styleProvider];
    v12 = [(GAXInterestAreaView *)self backgroundContainerView];
    v13 = v12;
    if (a3)
    {
      [v11 interestAreaViewBackgroundStripePatternAlpha];
      if (a3 == 1)
      {
        v15 = v14 * 0.5;
      }

      else
      {
        v15 = v14;
      }

      if (v8)
      {
        [v13 setHidden:0];
        [v11 defaultAnimationDuration];
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
      if (v8)
      {
        [v11 defaultAnimationDuration];
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

      [v12 setAlpha:0.0];
      v21 = v13;
      v22 = 1;
    }

    [v21 setHidden:v22];
    goto LABEL_14;
  }
}

- (void)setSpecialControlsVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_specialControlsVisible != a3)
  {
    v4 = a4;
    self->_specialControlsVisible = a3;
    if (a3)
    {
      [(GAXInterestAreaView *)self _resetAllSpecialControls];
      if (!v4)
      {
        return;
      }

      [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:&stru_5D120];
      v6 = [(GAXInterestAreaView *)self styleProvider];
      [v6 defaultAnimationDuration];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F1B8;
      v9[3] = &unk_5CD48;
      v9[4] = self;
      [UIView animateWithDuration:v9 animations:?];
      goto LABEL_7;
    }

    if (a4)
    {
      v6 = [(GAXInterestAreaView *)self styleProvider];
      [v6 defaultAnimationDuration];
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

- (void)setBackgroundShouldCoverEverything:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_backgroundShouldCoverEverything != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_backgroundShouldCoverEverything = a3;
    v7 = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
    v8 = [(GAXInterestAreaView *)self styleProvider];
    if (v5)
    {
      if (!v7)
      {
        v9 = [(GAXInterestAreaView *)self backgroundContainerView];
        [v9 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v7 = [[GAXInterestAreaClippedView alloc] initWithFrame:v10, v12, v14, v16];
        [(GAXInterestAreaClippedView *)v7 setAutoresizingMask:18];
        [(GAXInterestAreaView *)self bounds];
        [(GAXInterestAreaClippedView *)v7 setBackgroundSize:v18, v19];
        v20 = [(GAXInterestAreaView *)self backgroundStripesPatternColor];
        [(GAXInterestAreaClippedView *)v7 setBackgroundColor:v20];

        [(GAXInterestAreaView *)self backgroundPatternScaleFactor];
        [(GAXInterestAreaClippedView *)v7 setBackgroundPatternScaleFactor:?];
        v21 = [UIBezierPath bezierPathWithRect:v11, v13, v15, v17];
        [(GAXInterestAreaClippedView *)v7 setClippingPath:v21];

        [(GAXInterestAreaClippedView *)v7 setDelegate:self];
        [(GAXInterestAreaClippedView *)v7 setAlpha:0.0];
        [(GAXInterestAreaClippedView *)v7 setHidden:1];
        [v9 addSubview:v7];
        [(GAXInterestAreaView *)self setBackgroundViewCoveringEverything:v7];
      }

      [(GAXInterestAreaClippedView *)v7 setHidden:0];
      v22 = 0.0;
      if (v4)
      {
        [v8 defaultAnimationDuration];
        v22 = v23;
      }

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_F640;
      v42[3] = &unk_5CED0;
      v24 = v7;
      v43 = v24;
      v44 = self;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_F694;
      v41[3] = &unk_5CC18;
      v41[4] = self;
      [UIView animateWithDuration:v42 animations:v41 completion:v22];
      v25 = v43;
    }

    else
    {
      v25 = [(GAXInterestAreaView *)self clippedViews];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
              objc_enumerationMutation(v25);
            }

            [*(*(&v37 + 1) + 8 * i) setHidden:0];
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v27);
      }

      [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:&stru_5D200];
      v30 = 0.0;
      if (v4)
      {
        [v8 defaultAnimationDuration];
        v30 = v31;
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_F7B8;
      v34[3] = &unk_5CED0;
      v35 = v7;
      v36 = self;
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

- (void)adjustOutOfBoundsDrawingToCoverView:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v29 = v9;
  if (v9)
  {
    [v9 bounds];
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

  v28 = [(GAXInterestAreaView *)self fingerPathView];
  [v28 setBounds:{x, y, width, height}];
  [v28 setCenter:{MidX, MidY}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v3 layoutSubviews];
  [(GAXInterestAreaView *)self _resetAllSpecialControls];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(GAXInterestAreaView *)self _ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(GAXInterestAreaView *)self _ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet];
}

- (void)insertInterestAreaPathAtIndex:(unint64_t)a3
{
  v5 = [(GAXInterestAreaView *)self _interestAreaPathAtIndex:?];
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    [(GAXInterestAreaView *)self _insertClippedViewForInterestAreaPathAtIndex:a3];
    [(GAXInterestAreaView *)self setNeedsLayout];
    v6 = [(GAXInterestAreaView *)self buttonBeingDragged];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 associatedInterestAreaPathIndex];
      if (v8 >= a3)
      {
        [v7 setAssociatedInterestAreaPathIndex:v8 + 1];
      }
    }

    v9 = [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v9 >= a3)
    {
      [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:v9 + 1];
    }
  }

  _objc_release_x1();
}

- (void)reloadFrameOfInterestAreaPathAtIndex:(unint64_t)a3
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v10 = size;
  [(GAXInterestAreaView *)self _getClippedViewPropertiesForInterestAreaPathAtIndex:a3 frame:0 constrainedFrame:&origin adjustedClippingPath:0];
  v6 = [(GAXInterestAreaView *)self clippedViews];
  v7 = [v6 objectAtIndex:a3];

  v8 = [(GAXInterestAreaView *)self backgroundContainerView];
  [(GAXInterestAreaView *)self convertRect:v8 toView:origin, v10];
  [v7 setFrame:?];

  [(GAXInterestAreaView *)self setNeedsLayout];
}

- (void)reloadInterestAreaPathAtIndex:(unint64_t)a3
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v14 = size;
  v11 = origin;
  v12 = size;
  v10 = 0;
  [(GAXInterestAreaView *)self _getClippedViewPropertiesForInterestAreaPathAtIndex:a3 frame:&origin constrainedFrame:&v11 adjustedClippingPath:&v10];
  v6 = v10;
  v7 = [(GAXInterestAreaView *)self backgroundContainerView];
  v8 = [(GAXInterestAreaView *)self clippedViews];
  v9 = [v8 objectAtIndex:a3];

  [(GAXInterestAreaView *)self convertRect:v7 toView:origin, v14];
  [v9 setFrame:?];
  [v9 setClippingPath:v6];

  [(GAXInterestAreaView *)self convertRect:v7 toView:v11, v12];
  [v9 setFrame:?];
}

- (void)deleteInterestAreaPathsAtIndices:(id)a3
{
  v4 = a3;
  v37 = self;
  v35 = [(GAXInterestAreaView *)self styleProvider];
  v5 = [UIView alloc];
  [(GAXInterestAreaView *)v37 bounds];
  v39 = [v5 initWithFrame:?];
  v6 = [v39 layer];
  [v6 setAllowsGroupOpacity:1];

  v7 = [UIView alloc];
  [(GAXInterestAreaView *)v37 contentsBounds];
  v36 = [v7 initWithFrame:?];
  v34 = [v36 layer];
  [v34 setMasksToBounds:1];
  [(GAXInterestAreaView *)v37 contentsCornerRadius];
  [v34 setCornerRadius:?];
  [v39 addSubview:v36];
  v8 = [UIView alloc];
  [v36 bounds];
  v9 = [v8 initWithFrame:?];
  [v9 setAutoresizingMask:18];
  v10 = [v9 layer];
  [v10 setAllowsGroupOpacity:1];

  v11 = [(GAXInterestAreaView *)v37 backgroundStyle];
  if (v11 == 1)
  {
    [v35 interestAreaViewBackgroundStripePatternAlpha];
    v12 = v13 * 0.5;
  }

  else
  {
    v12 = 0.0;
    if (v11 == 2)
    {
      [v35 interestAreaViewBackgroundStripePatternAlpha];
    }
  }

  [v9 setAlpha:v12];
  [v36 addSubview:v9];
  [(GAXInterestAreaView *)v37 clippedViews];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10330;
  v33 = v54[3] = &unk_5D248;
  v55 = v33;
  v32 = v9;
  v56 = v32;
  [v4 enumerateIndexesUsingBlock:v54];
  [v33 removeObjectsAtIndexes:v4];
  v58 = [(GAXInterestAreaView *)v37 closeButtons];
  v59 = [(GAXInterestAreaView *)v37 resizingKnobButtons];
  v14 = &v58;
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
          v24 = [v23 superview];
          if (v24)
          {
            v25 = [v4 containsIndex:{objc_msgSend(v23, "associatedInterestAreaPathIndex")}];

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
    v14 = &v59;
  }

  while ((v38 & 1) != 0);
  [(GAXInterestAreaView *)v37 insertSubview:v39 atIndex:0];
  [v35 defaultAnimationDuration];
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
  [(GAXInterestAreaView *)v37 setNeedsLayout];
  v29 = [(GAXInterestAreaView *)v37 buttonBeingDragged];
  v30 = v29;
  if (v29)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = [v29 associatedInterestAreaPathIndex];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_103AC;
    v41[3] = &unk_5D270;
    v41[4] = &v42;
    [v4 enumerateIndexesWithOptions:2 usingBlock:v41];
    [v30 setAssociatedInterestAreaPathIndex:v43[3]];
    _Block_object_dispose(&v42, 8);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = [(GAXInterestAreaView *)v37 indexOfInterestAreaPathBeingDragged];
  if (v43[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_103CC;
    v40[3] = &unk_5D270;
    v40[4] = &v42;
    [v4 enumerateIndexesWithOptions:2 usingBlock:v40];
    [(GAXInterestAreaView *)v37 setIndexOfInterestAreaPathBeingDragged:v43[3]];
  }

  _Block_object_dispose(&v42, 8);

  for (j = 8; j != -8; j -= 8)
  {
  }
}

- (void)insertDynamicInterestAreaPathAtIndex:(unint64_t)a3
{
  v3 = [(GAXInterestAreaView *)self fingerPathView];
  [v3 reloadAllInterestAreaPaths];
  [v3 setHidden:0];
}

- (void)reloadDynamicInterestAreaPathAtIndex:(unint64_t)a3
{
  v3 = [(GAXInterestAreaView *)self fingerPathView];
  [v3 reloadAllInterestAreaPaths];
}

- (void)deleteDynamicInterestAreaPathAtIndices:(id)a3
{
  v4 = [(GAXInterestAreaView *)self fingerPathView];
  [v4 reloadAllInterestAreaPaths];
  if (![(GAXInterestAreaView *)self numberOfInterestAreaPathsForInterestAreaFingerPathView:v4])
  {
    [v4 setHidden:1];
  }
}

- (void)reloadAllInterestAreaPaths
{
  v3 = [(GAXInterestAreaView *)self clippedViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [v3 removeAllObjects];
  v8 = [(GAXInterestAreaView *)self _numberOfInterestAreaPaths];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      [(GAXInterestAreaView *)self insertInterestAreaPathAtIndex:i];
    }
  }

  [(GAXInterestAreaView *)self setNeedsLayout];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(GAXInterestAreaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 interestAreaViewIsAccessibilityElement:self];
  }

  else
  {
    v4 = 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 canInteractWithInterestAreaView:self] & 1) == 0)
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
  v3 = [(GAXInterestAreaView *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 canInteractWithInterestAreaView:self])
  {
    v4 = &dword_4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXInterestAreaView;
    v4 = [(GAXInterestAreaView *)&v6 accessibilityContainerType];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaView;
  v3 = [(GAXInterestAreaView *)&v6 accessibilityTraits];
  v4 = [(GAXInterestAreaView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 canInteractWithInterestAreaView:self] & 1) == 0)
  {
    v3 |= UIAccessibilityTraitNotEnabled;
  }

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(GAXInterestAreaView *)self dataSource];
    v5 = [v4 numberOfInterestAreaPathsForInterestAreaView:self];
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
  v3 = [(GAXInterestAreaView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 canInteractWithInterestAreaView:self])
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
  v2 = [(GAXInterestAreaView *)self contentsView];
  [v2 accessibilityFrame];
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

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  [(GAXInterestAreaView *)self frame];
  [(GAXInterestAreaView *)self setSavedFrame:?];
  v5.receiver = self;
  v5.super_class = GAXInterestAreaView;
  [(GAXInterestAreaView *)&v5 willMoveToWindow:v4];
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
  v3 = [(GAXInterestAreaView *)self backgroundStripesPatternColor];
  if (v3)
  {
    v4 = [(GAXInterestAreaView *)self clippedViews];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8) setBackgroundColor:v3];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
    [v9 setBackgroundColor:v3];
  }
}

- (void)_handlePan:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 - 1 <= 1)
  {
    v6 = [(GAXInterestAreaView *)self delegate];
    v7 = [(GAXInterestAreaView *)self buttonBeingDragged];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
    if (v7)
    {
LABEL_3:
      [v4 translationInView:self];
      v9 = v8;
      v11 = v10;
      [(GAXInterestAreaView *)self buttonBeingDraggedInitialCenter];
      v13 = v9 + v12;
      v15 = v11 + v14;
      v29 = v13;
      v30 = v15;
      if (objc_opt_respondsToSelector())
      {
        [v6 interestAreaView:self resizingKnobAtPosition:objc_msgSend(v7 wasMovedToPoint:"knobPosition") forInterestAreaPathAtIndex:objc_msgSend(v7 constrainedResizingKnobCenter:{"associatedInterestAreaPathIndex"), &v29, v13, v15}];
        v13 = v29;
        v15 = v30;
      }

      [v7 gax_setCenter:1 alignWithGrid:{v13, v15}];

LABEL_6:
      _Block_object_dispose(&v32, 8);
LABEL_23:

      goto LABEL_24;
    }

    if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 locationInView:self];
      v19 = v18;
      v21 = v20;
      v22 = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:?];
      v7 = v22;
      if (v22)
      {
        [v22 setHighlighted:1];
        [(GAXInterestAreaView *)self setButtonBeingDragged:v7];
        [v7 center];
        [(GAXInterestAreaView *)self setButtonBeingDraggedInitialCenter:?];
        if (objc_opt_respondsToSelector())
        {
          [v6 interestAreaView:self willBeginMovingResizingKnobAtPosition:objc_msgSend(v7 forInterestAreaPathAtIndex:{"knobPosition"), objc_msgSend(v7, "associatedInterestAreaPathIndex")}];
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
          [v6 interestAreaView:self willBeginMovingInterestAreaPathAtIndex:v33[3]];
          v26 = v33;
        }
      }

      if (v26[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 setEnabled:0];
        if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_6;
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = v33[3];
      [v4 translationInView:self];
      [v6 interestAreaView:self interestAreaPathAtIndex:v28 wasMovedWithTranslation:?];
    }

    goto LABEL_6;
  }

  if (v5 - 3 <= 1)
  {
    if (v5 == &dword_4 && ([v4 isEnabled] & 1) == 0)
    {
      [v4 setEnabled:1];
    }

    v16 = [(GAXInterestAreaView *)self buttonBeingDragged];
    v6 = v16;
    if (v16)
    {
      [v16 setHighlighted:0];
      v17 = [(GAXInterestAreaView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v17 interestAreaView:self didFinishMovingResizingKnobAtPosition:objc_msgSend(v6 forInterestAreaPathAtIndex:{"knobPosition"), objc_msgSend(v6, "associatedInterestAreaPathIndex")}];
      }

      [(GAXInterestAreaView *)self setButtonBeingDragged:0];
      [(GAXInterestAreaView *)self setButtonBeingDraggedInitialCenter:CGPointZero.x, CGPointZero.y];
      -[GAXInterestAreaView reloadInterestAreaPathAtIndex:](self, "reloadInterestAreaPathAtIndex:", [v6 associatedInterestAreaPathIndex]);

      [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
    }

    else
    {
      v23 = [(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v23;
        [(GAXInterestAreaView *)self setIndexOfInterestAreaPathBeingDragged:0x7FFFFFFFFFFFFFFFLL];
        v25 = [(GAXInterestAreaView *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v25 interestAreaView:self didFinishMovingInterestAreaPathAtIndex:v24];
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_handleTap:(id)a3
{
  v8 = a3;
  v4 = [v8 state] == &dword_0 + 3;
  v5 = v8;
  if (v4)
  {
    [v8 locationInView:self];
    v6 = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:&stru_5D2D8 passingTest:?];
    [v8 locationInView:self];
    [v6 convertPoint:self fromView:?];
    if ([v6 pointInside:0 withEvent:?])
    {
      v7 = [(GAXInterestAreaView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 interestAreaView:self didActivateCloseButtonForInterestAreaPathAtIndex:{objc_msgSend(v6, "associatedInterestAreaPathIndex")}];
      }
    }

    v5 = v8;
  }
}

- (void)_getClippedViewPropertiesForInterestAreaPathAtIndex:(unint64_t)a3 frame:(CGRect *)a4 constrainedFrame:(CGRect *)a5 adjustedClippingPath:(id *)a6
{
  v11 = [(GAXInterestAreaView *)self _interestAreaPathAtIndex:?];
  [v11 bounds];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (a4)
  {
    a4->origin.x = v12;
    a4->origin.y = v13;
    a4->size.width = v14;
    a4->size.height = v15;
  }

  if (a5)
  {
    [(GAXInterestAreaView *)self _constrainedFrameForInsetFrame:a3 forInterestAreaPathAtIndex:v12, v13, v14, v15];
    a5->origin.x = v20;
    a5->origin.y = v21;
    a5->size.width = v22;
    a5->size.height = v23;
  }

  if (a6)
  {
    v24 = [v11 copy];
    *a6 = v24;
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

- (void)_insertClippedViewForInterestAreaPathAtIndex:(unint64_t)a3
{
  v5 = [(GAXInterestAreaView *)self backgroundContainerView];
  v6 = [(GAXInterestAreaView *)self clippedViews];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(GAXInterestAreaView *)self setClippedViews:v6];
  }

  v7 = [v6 count];
  if (v7 < a3)
  {
    _AXAssert();
    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v8 = v7;
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v21 = size;
    v18 = origin;
    v19 = size;
    v17 = 0;
    [(GAXInterestAreaView *)self _getClippedViewPropertiesForInterestAreaPathAtIndex:a3 frame:&origin constrainedFrame:&v18 adjustedClippingPath:&v17];
    v10 = v17;
    v11 = [GAXInterestAreaClippedView alloc];
    [(GAXInterestAreaView *)self convertRect:v5 toView:origin, v21];
    v12 = [(GAXInterestAreaClippedView *)v11 initWithFrame:?];
    [(GAXInterestAreaView *)self bounds];
    [(GAXInterestAreaClippedView *)v12 setBackgroundSize:v13, v14];
    v15 = [(GAXInterestAreaView *)self backgroundStripesPatternColor];
    [(GAXInterestAreaClippedView *)v12 setBackgroundColor:v15];

    [(GAXInterestAreaView *)self backgroundPatternScaleFactor];
    [(GAXInterestAreaClippedView *)v12 setBackgroundPatternScaleFactor:?];
    [(GAXInterestAreaClippedView *)v12 setClippingPath:v10];

    [(GAXInterestAreaClippedView *)v12 setDelegate:self];
    [(GAXInterestAreaView *)self convertRect:v5 toView:v18, v19];
    [(GAXInterestAreaClippedView *)v12 setFrame:?];
    if (v8 <= a3)
    {
      v16 = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
      if (!v16)
      {
        [v5 addSubview:v12];
        goto LABEL_11;
      }
    }

    else
    {
      v16 = [v6 objectAtIndex:a3];
    }

    [v5 insertSubview:v12 belowSubview:v16];
LABEL_11:

    [v6 insertObject:v12 atIndex:a3];
  }

LABEL_12:
}

- (CGRect)_constrainedFrameForInsetFrame:(CGRect)a3 forInterestAreaPathAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v18 = [(GAXInterestAreaView *)self _interestAreaPathAtIndex:a4];
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
  v3 = [(GAXInterestAreaView *)self closeButtons];
  v4 = [(GAXInterestAreaView *)self resizingKnobButtons];
  v5 = [(GAXInterestAreaView *)self areSpecialControlsVisible];
  [(GAXInterestAreaView *)self buttonBeingDragged];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_11AB4;
  v47[3] = &unk_5D300;
  v6 = v49 = v5;
  v48 = v6;
  [(GAXInterestAreaView *)self _enumerateSpecialControlsUsingBlock:v47];
  if (v5)
  {
    v7 = [(GAXInterestAreaView *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v8 = [(GAXInterestAreaView *)self styleProvider];
      v9 = [(GAXInterestAreaView *)self backgroundShouldCoverEverything];
      v43[0] = 0;
      v43[1] = v43;
      v43[3] = &unk_545BF;
      if (v9)
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
      v40[3] = [v3 count];
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v39[3] = 0;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x2020000000;
      v38[3] = [v4 count];
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
      v20 = v4;
      v26 = v33;
      v12 = v8;
      v21 = v12;
      v27 = v39;
      v28 = v40;
      v29 = v35;
      v30 = v41;
      v22 = v3;
      v23 = self;
      v31 = v43;
      v32 = v10;
      v13 = objc_retainBlock(v18);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_11EEC;
      v15[3] = &unk_5D378;
      v15[4] = self;
      v16 = v7;
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

- (void)_enumerateSpecialControlsUsingBlock:(id)a3
{
  v4 = a3;
  v22 = [(GAXInterestAreaView *)self closeButtons];
  v5 = [(GAXInterestAreaView *)self resizingKnobButtons];
  v6 = 0;
  v7 = 0;
  v8 = &v22;
  v23 = v5;
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

        v4[2](v4, *(*(&v16 + 1) + 8 * v13), v6, &v20);
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

- (void)_enumerateSpecialControlPropertiesForInterestAreaPath:(id)a3 visibleKnobPositions:(unint64_t)a4 hasCloseButton:(BOOL)a5 usingBlock:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v9 = a6;
  if (v8)
  {
    [v10 topLeftPointOnPath];
    v9[2](v9, 1, v7);
    if ((v8 & 2) == 0)
    {
LABEL_3:
      if ((v8 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v10 topRightPointOnPath];
  v9[2](v9, 2, 0);
  if ((v8 & 4) == 0)
  {
LABEL_4:
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v10 bottomRightPointOnPath];
  v9[2](v9, 4, 0);
  if ((v8 & 8) != 0)
  {
LABEL_5:
    [v10 bottomLeftPointOnPath];
    v9[2](v9, 8, 0);
  }

LABEL_6:
}

- (id)_specialControlButtonAtLocation:(CGPoint)a3 passingTest:(id)a4
{
  y = a3.y;
  x = a3.x;
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
  v15 = self;
  v7 = a4;
  v19 = x;
  v20 = y;
  v16 = v7;
  v17 = &v21;
  v18 = v27;
  [(GAXInterestAreaView *)v15 _enumerateSpecialControlsUsingBlock:&v11];
  v8 = v22[5];
  [v8 convertPoint:self fromView:{x, y, v11, v12, v13, v14, v15}];
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
  v3 = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 numberOfInterestAreaPathsForInterestAreaView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_interestAreaPathAtIndex:(unint64_t)a3
{
  v5 = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 interestAreaView:self interestAreaPathAtIndex:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumerateInterestAreaPathsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v14 = 0;
    v8 = [v7 numberOfInterestAreaPathsForInterestAreaView:self];
    if (v8)
    {
      v9 = v8;
      v10 = v8 - 1;
      v11 = 1;
      do
      {
        if ((v4 & 2) != 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11 - 1;
        }

        v13 = [v7 interestAreaView:self interestAreaPathAtIndex:v12];
        v6[2](v6, v13, v12, &v14);

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
  v3 = [(GAXInterestAreaView *)self delegate];
  v4 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 scaleForSpecialControlsInInterestAreaView:self];
    if (v5 != 0.0)
    {
      v4 = v5;
    }
  }

  return v4;
}

- (BOOL)_shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)a3
{
  v5 = [(GAXInterestAreaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 interestAreaView:self shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_ensureBackgroundSizeOfBackgroundViewCoveringEverythingIsSet
{
  v8 = [(GAXInterestAreaView *)self backgroundViewCoveringEverything];
  [v8 backgroundSize];
  if (v4 == CGSizeZero.width && v3 == CGSizeZero.height)
  {
    [(GAXInterestAreaView *)self bounds];
    [v8 setBackgroundSize:{v6, v7}];
  }
}

- (unint64_t)numberOfInterestAreaPathsForInterestAreaFingerPathView:(id)a3
{
  v4 = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 numberOfDynamicInterestAreaPathsForInterestAreaView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)interestAreaFingerPathView:(id)a3 interestAreaPathAtIndex:(unint64_t)a4
{
  v6 = [(GAXInterestAreaView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 interestAreaView:self dynamicInterestAreaPathAtIndex:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)centerForBackgroundOfInterestAreaClippedView:(id)a3
{
  v4 = a3;
  [(GAXInterestAreaView *)self center];
  [(GAXInterestAreaView *)self convertPoint:v4 toView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    [v7 locationInView:self];
    v8 = [(GAXInterestAreaView *)self _specialControlButtonAtLocation:&stru_5D3E0 passingTest:?];
    if (!v8)
    {
      *(v18 + 24) = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = [(GAXInterestAreaView *)self buttonBeingDragged];
  if (v8)
  {
    goto LABEL_9;
  }

  if ([(GAXInterestAreaView *)self indexOfInterestAreaPathBeingDragged]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 locationInView:self];
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