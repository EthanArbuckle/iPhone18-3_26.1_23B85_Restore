@interface MarqueeView
- (BOOL)_contentFits;
- (CAGradientLayer)gradientLayer;
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MarqueeView)initWithFrame:(CGRect)a3;
- (MarqueeViewDelegate)delegate;
- (NSArray)coordinatedMarqueeViews;
- (UIEdgeInsets)fadeEdgeInsets;
- (UIView)animationReferenceView;
- (double)_duration;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_applyMarqueeFade;
- (void)_createMarqueeAnimationIfNeeded;
- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)a3 beginTime:(double)a4;
- (void)_tearDownMarqueeAnimation;
- (void)addCoordinatedMarqueeView:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)resetMarqueePosition;
- (void)sceneDidEnterBackgroundNotification:(id)a3;
- (void)sceneWillEnterForegroundNotification:(id)a3;
- (void)setAnimationDirection:(int64_t)a3;
- (void)setAnimationReferenceView:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentGap:(double)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMarqueeDelay:(double)a3;
- (void)setMarqueeEnabled:(BOOL)a3 withOptions:(int64_t)a4;
- (void)setMarqueeScrollRate:(double)a3;
- (void)setViewForContentSize:(id)a3;
@end

@implementation MarqueeView

- (MarqueeView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = MarqueeView;
  v3 = [(MarqueeView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_marqueeDelay = 3.0;
    v3->_marqueeScrollRate = 30.0;
    v5 = *&UIEdgeInsetsZero.bottom;
    *&v3->_fadeEdgeInsets.top = *&UIEdgeInsetsZero.top;
    *&v3->_fadeEdgeInsets.bottom = v5;
    v6 = +[NSPointerArray weakObjectsPointerArray];
    coordinatedMarqueeViews = v4->_coordinatedMarqueeViews;
    v4->_coordinatedMarqueeViews = v6;

    [(MarqueeView *)v4 setClipsToBounds:1];
    v8 = [_MarqueeContentView alloc];
    [(MarqueeView *)v4 bounds];
    v9 = [(_MarqueeContentView *)v8 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = &v9->super;

    [(MarqueeView *)v4 addSubview:v4->_contentView];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v4 selector:"sceneDidEnterBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v4 selector:"sceneWillEnterForegroundNotification:" name:UISceneWillEnterForegroundNotification object:0];
  }

  return v4;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MarqueeView;
  [(MarqueeView *)&v4 didMoveToWindow];
  v3 = [(MarqueeView *)self window];

  if (v3)
  {
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
  }

  else
  {
    [(MarqueeView *)self _tearDownMarqueeAnimation];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = MarqueeView;
  [(MarqueeView *)&v28 layoutSubviews];
  if ([(MarqueeView *)self animationDirection])
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(UIView *)self->_contentView setSemanticContentAttribute:v3];
  [(MarqueeView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MarqueeView *)self effectiveUserInterfaceLayoutDirection];
  v13 = [(UIView *)self->_contentView layer];
  animationDirection = self->_animationDirection;
  v15 = self->_contentSize.width + self->_contentGap;
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  Width = CGRectGetWidth(v29);
  if (v15 >= Width)
  {
    Width = v15;
  }

  if (animationDirection == 1)
  {
    Width = -Width;
  }

  CATransform3DMakeTranslation(&v27, Width, 0.0, 0.0);
  [v13 setInstanceTransform:&v27];
  [v13 setInstanceCount:2];
  UIRectCenteredYInRectScale();
  x = v30.origin.x;
  v18 = v30.size.width;
  height = v30.size.height;
  y = v30.origin.y;
  v20 = CGRectGetWidth(v30);
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  if (v20 < CGRectGetWidth(v31) - self->_fadeEdgeInsets.left)
  {
    v32.size.height = v11;
    v32.origin.x = v5;
    v32.origin.y = v7;
    v32.size.width = v9;
    v18 = v18 + CGRectGetWidth(v32) - (self->_contentSize.width + self->_fadeEdgeInsets.left);
  }

  if (v12 == 1)
  {
    v33.size.height = v11;
    v33.origin.x = v5;
    v33.origin.y = v7;
    v33.size.width = v9;
    MaxX = CGRectGetMaxX(v33);
    v34.origin.x = x;
    v22 = y;
    v34.origin.y = y;
    v34.size.width = v18;
    v34.size.height = height;
    v23 = MaxX - CGRectGetMinX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = v18;
    v35.size.height = height;
    x = v23 - CGRectGetWidth(v35);
  }

  else
  {
    v22 = y;
  }

  [(UIView *)self->_contentView setFrame:x, v22, v18, height, 0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fadeEdgeInsets.top, *&UIEdgeInsetsZero.top), vceqq_f64(*&self->_fadeEdgeInsets.bottom, *&UIEdgeInsetsZero.bottom)))))
  {
    v24 = [(MarqueeView *)self gradientLayer];

    if (v24)
    {
      v25 = [(MarqueeView *)self gradientLayer];
      [v25 removeFromSuperlayer];
    }
  }

  else
  {
    [(MarqueeView *)self _applyMarqueeFade];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MarqueeView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MarqueeView;
  [(MarqueeView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(MarqueeView *)self _tearDownMarqueeAnimation];
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
    [(MarqueeView *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MarqueeView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MarqueeView;
  [(MarqueeView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(MarqueeView *)self _tearDownMarqueeAnimation];
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = MarqueeView;
  [(MarqueeView *)&v4 invalidateIntrinsicContentSize];
  viewForContentSize = self->_viewForContentSize;
  if (viewForContentSize)
  {
    [(UIView *)viewForContentSize sizeThatFits:UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height];
    [(MarqueeView *)self setContentSize:?];
  }
}

- (CGSize)intrinsicContentSize
{
  viewForContentSize = self->_viewForContentSize;
  if (viewForContentSize)
  {
    [(UIView *)viewForContentSize sizeThatFits:UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height];
  }

  else
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
  }

  v6 = width + self->_fadeEdgeInsets.left + self->_fadeEdgeInsets.right;
  result.height = height;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MarqueeView *)self intrinsicContentSize];
  v7 = fmin(v5, width);
  if (width > 0.0)
  {
    v5 = v7;
  }

  v8 = fmin(v6, height);
  if (height > 0.0)
  {
    v6 = v8;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(UIView *)self->_contentView subviews];
  v3 = [v2 firstObject];
  v4 = [v3 viewForFirstBaselineLayout];

  return v4;
}

- (id)viewForLastBaselineLayout
{
  v2 = [(UIView *)self->_contentView subviews];
  v3 = [v2 lastObject];
  v4 = [v3 viewForLastBaselineLayout];

  return v4;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 valueForKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
  v7 = [v6 isEqual:self->_currentAnimationID];

  if (v7)
  {
    [(MarqueeView *)self _tearDownMarqueeAnimation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 marqueeViewDidEndMarqueeIteration:self finished:v4];
    }

    if (v4)
    {
      options = self->_options;
      if ((options & 2) != 0)
      {
        self->_options = options & 0xFFFFFFFFFFFFFFFDLL;
      }

      [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
    }
  }
}

- (void)setContentGap:(double)a3
{
  if (self->_contentGap != a3)
  {
    self->_contentGap = a3;
    [(MarqueeView *)self _tearDownMarqueeAnimation];
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MarqueeView *)self setNeedsLayout];
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    self->_contentSize = a3;
    [(MarqueeView *)self _tearDownMarqueeAnimation];
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MarqueeView *)self setNeedsLayout];
  }
}

- (void)setMarqueeDelay:(double)a3
{
  if (self->_marqueeDelay != a3)
  {
    self->_marqueeDelay = a3;
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setAnimationReferenceView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_animationReferenceView, obj);
    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
    v5 = obj;
  }
}

- (void)setMarqueeEnabled:(BOOL)a3 withOptions:(int64_t)a4
{
  v4 = a4;
  if (self->_options != a4)
  {
    self->_options = a4;
    p_marqueeEnabled = &self->_marqueeEnabled;
    if (self->_marqueeEnabled == a3)
    {
LABEL_13:
      [(MarqueeView *)self _createMarqueeAnimationIfNeeded:v15];
      return;
    }

LABEL_5:
    *p_marqueeEnabled = a3;
    v7 = [(UIView *)self->_contentView layer];
    v8 = v7;
    if ((v4 & 1) == 0 || ([v7 animationForKey:@"_MPUMarqueeViewLayerAnimationKey"], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && ((v10 = v9, objc_msgSend(v8, "presentationLayer"), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0) ? (v16 = 0u, v17 = 0u, v15 = 0u, v13 = 0.0) : (objc_msgSend(v11, "affineTransform"), v13 = *&v17), v14 = fabs(v13), v12, v10, v14 < 2.22044605e-16))
    {
      [(MarqueeView *)self _tearDownMarqueeAnimation:v15];
    }

    goto LABEL_13;
  }

  p_marqueeEnabled = &self->_marqueeEnabled;
  if (self->_marqueeEnabled != a3)
  {
    goto LABEL_5;
  }
}

- (void)setMarqueeScrollRate:(double)a3
{
  if (self->_marqueeScrollRate != a3)
  {
    self->_marqueeScrollRate = a3;
    [(MarqueeView *)self _tearDownMarqueeAnimation];

    [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setViewForContentSize:(id)a3
{
  v9 = a3;
  v6 = [(UIView *)v9 superview];
  v7 = [(MarqueeView *)self contentView];

  if (v6 != v7)
  {
    [(MarqueeView *)a2 setViewForContentSize:?];
  }

  v8 = v9;
  if (self->_viewForContentSize != v9)
  {
    objc_storeStrong(&self->_viewForContentSize, a3);
    [(MarqueeView *)self invalidateIntrinsicContentSize];
    v8 = v9;
  }
}

- (void)setAnimationDirection:(int64_t)a3
{
  if (self->_animationDirection != a3)
  {
    self->_animationDirection = a3;
    [(MarqueeView *)self setNeedsLayout];
  }
}

- (void)addCoordinatedMarqueeView:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v5 addCoordinatedMarqueeView:v7];

    v6 = v5;
  }

  else
  {
    objc_storeWeak(v7 + 4, self);
    [(NSPointerArray *)self->_coordinatedMarqueeViews addPointer:v7];
    v6 = v7;
  }
}

- (NSArray)coordinatedMarqueeViews
{
  [(NSPointerArray *)self->_coordinatedMarqueeViews compact];
  coordinatedMarqueeViews = self->_coordinatedMarqueeViews;

  return [(NSPointerArray *)coordinatedMarqueeViews allObjects];
}

- (void)resetMarqueePosition
{
  [(MarqueeView *)self _tearDownMarqueeAnimation];

  [(MarqueeView *)self _createMarqueeAnimationIfNeeded];
}

- (void)_applyMarqueeFade
{
  if ([(MarqueeView *)self _contentFits])
  {
    v21 = [(MarqueeView *)self gradientLayer];
    [v21 removeFromSuperlayer];
  }

  else
  {
    v3 = +[CATransaction disableActions];
    [CATransaction setDisableActions:1];
    v4 = [(MarqueeView *)self layer];
    v5 = [(MarqueeView *)self gradientLayer];
    if (!v5)
    {
      v5 = +[CAGradientLayer layer];
      v6 = +[UIColor whiteColor];
      v7 = [v6 CGColor];

      v8 = +[UIColor clearColor];
      v9 = [v8 CGColor];

      v23[0] = v7;
      v23[1] = v9;
      v23[2] = v9;
      v23[3] = v7;
      v10 = [NSArray arrayWithObjects:v23 count:4];
      [v5 setColors:v10];

      [v5 setCompositingFilter:kCAFilterDestOut];
      [v4 addSublayer:v5];
    }

    [(MarqueeView *)self bounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v15 = CGRectGetWidth(v25);
    v22[0] = &off_1005D7760;
    p_fadeEdgeInsets = &self->_fadeEdgeInsets;
    v17 = [NSNumber numberWithDouble:self->_fadeEdgeInsets.left / v15];
    v22[1] = v17;
    v18 = [NSNumber numberWithDouble:(v15 - p_fadeEdgeInsets->right) / v15];
    v22[2] = v18;
    v22[3] = &off_1005D7770;
    v19 = [NSArray arrayWithObjects:v22 count:4];
    [v5 setLocations:v19];

    [v5 setBounds:{x, y, width, height}];
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidX = CGRectGetMidX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    [v5 setPosition:{MidX, CGRectGetMidY(v27)}];
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    [v5 setStartPoint:{0.0, CGRectGetMidY(v28)}];
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    [v5 setEndPoint:{1.0, CGRectGetMidY(v29)}];
    [CATransaction setDisableActions:v3];
  }
}

- (void)_createMarqueeAnimationIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v23 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v23 _createMarqueeAnimationIfNeeded];
  }

  else
  {
    v4 = [(MarqueeView *)self superview];

    if (v4 && self->_marqueeEnabled)
    {
      [(MarqueeView *)self _duration];
      v6 = v5;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = self->_coordinatedMarqueeViews;
      v8 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v28 + 1) + 8 * i) _duration];
            if (v6 < v12)
            {
              v6 = v12;
            }
          }

          v9 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v9);
      }

      v13 = [(UIView *)self->_contentView layer];
      v14 = [v13 animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
      v15 = v14;
      if (v14)
      {
        [v14 beginTime];
      }

      else
      {
        v16 = CACurrentMediaTime();
      }

      v17 = v16;
      [(MarqueeView *)self _createMarqueeAnimationIfNeededWithMaximumDuration:v6 beginTime:v16];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = self->_coordinatedMarqueeViews;
      v19 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v24 + 1) + 8 * j) _createMarqueeAnimationIfNeededWithMaximumDuration:v6 beginTime:v17];
          }

          v20 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v20);
      }
    }
  }
}

- (BOOL)_contentFits
{
  v3 = [(MarqueeView *)self traitCollection];
  [v3 displayScale];

  [(MarqueeView *)self effectiveUserInterfaceLayoutDirection];
  [(MarqueeView *)self bounds];
  CGRectGetWidth(v8);
  UIRoundToScale();
  v5 = v4;
  UIRoundToScale();
  return v5 <= v6;
}

- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)a3 beginTime:(double)a4
{
  v7 = [(UIView *)self->_contentView layer];
  v8 = [v7 animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
  if (!v8 && ![(MarqueeView *)self _contentFits])
  {
    v9 = objc_alloc_init(NSUUID);
    currentAnimationID = self->_currentAnimationID;
    self->_currentAnimationID = v9;

    WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);
    [WeakRetained bounds];
    v12 = CGRectGetWidth(v27) - self->_fadeEdgeInsets.left - self->_fadeEdgeInsets.right - self->_contentSize.width;

    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    v14 = -self->_contentSize.width - self->_contentGap - v12;
    v15 = [(MarqueeView *)self animationDirection];
    v16 = -v14;
    if (v15 != 1)
    {
      v16 = v14;
    }

    v17 = [NSNumber numberWithDouble:v16];
    [(MarqueeView *)self _duration];
    v19 = v18;
    v26[0] = &off_1005D7760;
    v26[1] = &off_1005D7760;
    v26[2] = v17;
    v26[3] = v17;
    v20 = [NSArray arrayWithObjects:v26 count:4];
    [v13 setValues:v20];

    v25[0] = &off_1005D7760;
    v21 = [NSNumber numberWithDouble:self->_marqueeDelay / a3];
    v25[1] = v21;
    v22 = [NSNumber numberWithDouble:v19 / a3];
    v25[2] = v22;
    v25[3] = &off_1005D7770;
    v23 = [NSArray arrayWithObjects:v25 count:4];
    [v13 setKeyTimes:v23];

    [v13 setDuration:a3];
    [v13 setBeginTime:a4];
    v24 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v13 setTimingFunction:v24];

    [v13 setDelegate:self];
    [v13 setValue:self->_currentAnimationID forKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
    [v13 setFrameInterval:0.016];
    [v7 addAnimation:v13 forKey:@"_MPUMarqueeViewLayerAnimationKey"];
  }
}

- (void)_tearDownMarqueeAnimation
{
  v2 = [(UIView *)self->_contentView layer];
  [v2 removeAnimationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
}

- (double)_duration
{
  marqueeDelay = 0.0;
  if ((self->_options & 2) == 0)
  {
    marqueeDelay = self->_marqueeDelay;
  }

  return marqueeDelay + 1.0 / self->_marqueeScrollRate * (self->_contentSize.width + self->_contentGap);
}

- (CAGradientLayer)gradientLayer
{
  v2 = [(MarqueeView *)self layer];
  v3 = [v2 sublayers];
  v4 = [v3 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sceneDidEnterBackgroundNotification:(id)a3
{
  v7 = [a3 object];
  v4 = [(MarqueeView *)self window];
  v5 = [v4 windowScene];
  if (v7 == v5)
  {
    v6 = [(MarqueeView *)self isMarqueeEnabled];

    if (v6)
    {
      [(MarqueeView *)self setDisabledMarqueeForSceneBackground:1];

      [(MarqueeView *)self setMarqueeEnabled:0];
    }
  }

  else
  {
  }
}

- (void)sceneWillEnterForegroundNotification:(id)a3
{
  v7 = [a3 object];
  v4 = [(MarqueeView *)self window];
  v5 = [v4 windowScene];
  if (v7 == v5)
  {
    v6 = [(MarqueeView *)self disabledMarqueeForSceneBackground];

    if (v6)
    {
      [(MarqueeView *)self setDisabledMarqueeForSceneBackground:0];

      [(MarqueeView *)self setMarqueeEnabled:1];
    }
  }

  else
  {
  }
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIView)animationReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  return WeakRetained;
}

- (UIEdgeInsets)fadeEdgeInsets
{
  top = self->_fadeEdgeInsets.top;
  left = self->_fadeEdgeInsets.left;
  bottom = self->_fadeEdgeInsets.bottom;
  right = self->_fadeEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MarqueeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setViewForContentSize:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MarqueeView.m" lineNumber:260 description:@"viewForContentSize must be a subview of MPUMarqueeView's contentView."];
}

@end