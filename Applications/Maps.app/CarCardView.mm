@interface CarCardView
- ($FEAE32A1819615878361D0F810751286)_cornerMask;
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3;
- (BOOL)_canAnchorBecomeFocused;
- (BOOL)_shouldEmbedBackgroundInMaskingView:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceivePress:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CarCardStyleProviding)styleProvider;
- (CarCardView)initWithContent:(id)a3;
- (CarCardView)initWithFrame:(CGRect)a3;
- (CarCardViewDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (UIViewController)parentViewController;
- (double)_calculateCornerRadiusForCornerMask:(id *)a3;
- (id)_dynamicBlurView;
- (id)_styleProviderOrSelf;
- (unint64_t)accessoryType;
- (void)_applyCornerMask;
- (void)_chevronButtonTapped:(id)a3;
- (void)_closeButtonTapped:(id)a3;
- (void)_customAccessoryTapped:(id)a3;
- (void)_customButtonTapped:(id)a3;
- (void)_handleTapOnAccessory:(id)a3;
- (void)_refreshAccessories;
- (void)_refreshBackgroundView;
- (void)_setFocusable:(BOOL)a3;
- (void)_setHighlighted:(BOOL)a3;
- (void)_setLayout:(id)a3;
- (void)_setNeedsRefreshAccessories;
- (void)_updateContainerViewSuperviewIfNeeded;
- (void)_updateFocusRing;
- (void)_updateHuggingCompressionPriorities;
- (void)_updateInterfaceStyleRelatedViews;
- (void)_updateShadow;
- (void)_updateTransitioning;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handlePress:(id)a3;
- (void)layoutSubviews;
- (void)setAccessoryImage:(id)a3;
- (void)setAccessoryType:(unint64_t)a3;
- (void)setBackgroundView:(id)a3;
- (void)setContent:(id)a3;
- (void)setLayout:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setPrimaryAccessory:(id)a3;
- (void)setSecondaryAccessory:(id)a3;
- (void)setSelectionHandler:(id)a3;
- (void)setStyleProvider:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleNumberOfLines:(int64_t)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateHeaderWithTitle:(id)a3 primaryAccessory:(id)a4 secondaryAccessory:(id)a5 leadingImage:(id)a6 handler:(id)a7;
@end

@implementation CarCardView

- (CarCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateFocusRing
{
  v3 = [(CarCardView *)self window];

  if (v3)
  {
    if (self->_focusable)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      if (!self->_focusShapeLayer)
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        [(CarCardView *)self _cornerMask];
        v4 = +[CAShapeLayer layer];
        focusShapeLayer = self->_focusShapeLayer;
        self->_focusShapeLayer = v4;

        [(CAShapeLayer *)self->_focusShapeLayer setNeedsDisplayOnBoundsChange:1];
        [(CAShapeLayer *)self->_focusShapeLayer setBorderWidth:3.0];
        v6 = +[UIColor clearColor];
        -[CAShapeLayer setBackgroundColor:](self->_focusShapeLayer, "setBackgroundColor:", [v6 CGColor]);

        [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:*(&v32 + 1) + 3.0];
        [(CAShapeLayer *)self->_focusShapeLayer setCornerCurve:v33];
        v7 = [(CarCardView *)self layer];
        [v7 addSublayer:self->_focusShapeLayer];
      }

      [(CAShapeLayer *)self->_focusShapeLayer setHidden:[(CarCardView *)self isEffectivelyFocused]^ 1];
      if (([(CAShapeLayer *)self->_focusShapeLayer isHidden]& 1) == 0)
      {
        if (self->_lastAppliedCornerMask.automaticallyRoundCorners)
        {
          v29 = *&self->_lastAppliedCornerMask.maskedCorners;
          v30 = self->_lastAppliedCornerMask.cornerCurve;
          v31 = *&self->_lastAppliedCornerMask.automaticallyRoundCorners;
          [(CarCardView *)self _calculateCornerRadiusForCornerMask:&v29];
          [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:v8 + -3.0, v29];
        }

        else
        {
          v10 = [(CarCardView *)self layer];
          [v10 cornerRadius];
          [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:v11 + -3.0];
        }

        v12 = +[UIColor _carSystemFocusColor];
        v13 = [(CarCardView *)self backgroundView];
        v14 = v13;
        if (!v13)
        {
          v13 = self;
        }

        v15 = [v13 traitCollection];
        v16 = [v12 resolvedColorWithTraitCollection:v15];

        -[CAShapeLayer setBorderColor:](self->_focusShapeLayer, "setBorderColor:", [v16 CGColor]);
        [(CarCardView *)self bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        UIEdgeInsetsMakeWithEdges();
        [(CAShapeLayer *)self->_focusShapeLayer setFrame:v28 + v18, v25 + v20, v22 - (v28 + v26), v24 - (v25 + v27)];
      }

      +[CATransaction commit];
    }

    else
    {
      [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
      v9 = self->_focusShapeLayer;
      self->_focusShapeLayer = 0;
    }
  }
}

- (void)_updateHuggingCompressionPriorities
{
  v3 = [(CarCardLayout *)self->_layout primaryAxis];
  if (v3 == 1)
  {
    *&v4 = 751.0;
  }

  else
  {
    *&v4 = 999.0;
  }

  if (v3 == 1)
  {
    v5 = 999.0;
  }

  else
  {
    v5 = 751.0;
  }

  [(CarCardView *)self setContentHuggingPriority:0 forAxis:v4];
  *&v6 = v5;

  [(CarCardView *)self setContentHuggingPriority:1 forAxis:v6];
}

- (void)_refreshBackgroundView
{
  v3 = [(CarCardView *)self window];

  if (v3)
  {
    v4 = [(CarCardView *)self styleProvider];
    v5 = objc_opt_respondsToSelector();
    v6 = [(CarCardView *)self layout];
    v7 = [(CarCardView *)self traitCollection];
    [v7 displayScale];
    v9 = v8;
    v10 = [(CarCardView *)self traitCollection];
    v11 = [v10 userInterfaceStyle];
    if (v5)
    {
      v12 = v4;
    }

    else
    {
      v12 = self;
    }

    v13 = [(CarCardView *)v12 backgroundViewForCarCardLayout:v6 scale:v11 userInterfaceStyle:v9];

    [(CarCardView *)self setBackgroundView:v13];
  }

  else
  {

    [(CarCardView *)self _updateContainerViewSuperviewIfNeeded];
  }
}

- (void)_updateContainerViewSuperviewIfNeeded
{
  v3 = [(CarCardView *)self maskingView];
  v4 = self->_backgroundView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIView *)v4 contentView];
    v6 = v5;
    if (v5)
    {
      v7 = v5;

      v3 = v7;
    }
  }

  v8 = [(UIView *)self->_containerView superview];

  if (v8 != v3)
  {
    [v3 addSubview:self->_containerView];
    v9 = objc_alloc_init(NSMutableArray);
    LODWORD(v10) = 1148846080;
    v11 = [(UIView *)self->_containerView _maps_constraintsEqualToEdgesOfView:v3 priority:v10];
    v12 = [v11 allConstraints];
    [v9 addObjectsFromArray:v12];

    v13 = [(UIView *)self->_accessoryContainerView leadingAnchor];
    v14 = [(UIView *)self->_containerView leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v20[0] = v15;
    v16 = [(UIView *)self->_containerView trailingAnchor];
    v17 = [(UIView *)self->_accessoryContainerView trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v20[1] = v18;
    v19 = [NSArray arrayWithObjects:v20 count:2];
    [v9 addObjectsFromArray:v19];

    [NSLayoutConstraint activateConstraints:v9];
  }
}

- (void)_refreshAccessories
{
  self->_needsRefreshAccessories = 0;
  v3 = [(CarCardView *)self title];
  v4 = [(CarCardView *)self primaryAccessory];
  v5 = [(CarCardView *)self secondaryAccessory];
  v6 = [(CarCardView *)self accessoryImage];
  v7 = [(CarCardView *)self content];
  v8 = &OBJC_PROTOCOL___CarCardHeaderHosting;
  v9 = v8;
  if (!v7 || !v8)
  {

LABEL_8:
    v12 = self;
    [(NSLayoutConstraint *)v12->_constraintAccessoryBarPosition setActive:0];
    constraintAccessoryBarPosition = v12->_constraintAccessoryBarPosition;
    v12->_constraintAccessoryBarPosition = 0;

    goto LABEL_9;
  }

  v10 = objc_getAssociatedObject(v7, off_10192EF78);
  if (!v10)
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 conformsToProtocol:v9]);
    objc_setAssociatedObject(v7, off_10192EF78, v10, 1);
  }

  v11 = [v10 BOOLValue];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [(CarCardView *)self content];
  v13 = [(CarCardView *)self accessoryBar];
  [v13 removeFromSuperview];

  [(CarCardView *)self setAccessoryBar:0];
  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:0];
  v26 = [(CarCardView *)self accessoryContainerView];
  v14 = [v26 bottomAnchor];
  v15 = [(CarCardView *)self containerView];
  [v15 topAnchor];
  v16 = v6;
  v17 = v3;
  v18 = v5;
  v20 = v19 = v4;
  v21 = [v14 constraintEqualToAnchor:v20];
  v22 = self->_constraintAccessoryBarPosition;
  self->_constraintAccessoryBarPosition = v21;

  v4 = v19;
  v5 = v18;
  v3 = v17;
  v6 = v16;

  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:1];
LABEL_9:
  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1009B55A0;
  v27[3] = &unk_101630F18;
  objc_copyWeak(&v30, &location);
  v24 = v4;
  v28 = v24;
  v25 = v5;
  v29 = v25;
  [(CarCardView *)v12 updateHeaderWithTitle:v3 primaryAccessory:v24 secondaryAccessory:v25 leadingImage:v6 handler:v27];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- ($FEAE32A1819615878361D0F810751286)_cornerMask
{
  v5 = [(CarCardView *)self styleProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(CarCardView *)self _styleProviderOrSelf];
    v7 = [(CarCardView *)self layout];
    if (v9)
    {
      [v9 cornerMaskForCarCardLayout:v7];
    }

    else
    {
      retstr->var4 = 0;
      *&retstr->var0 = 0u;
      *&retstr->var2 = 0u;
    }
  }

  else
  {
    v9 = [(CarCardView *)self layout];
    [(CarCardView *)self cornerMaskForCarCardLayout:v9];
  }

  return result;
}

- (void)_updateInterfaceStyleRelatedViews
{
  [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
  focusShapeLayer = self->_focusShapeLayer;
  self->_focusShapeLayer = 0;

  [(CarCardView *)self _updateFocusRing];
  [(CarCardView *)self _updateShadow];

  [(CarCardView *)self _refreshBackgroundView];
}

- (id)_styleProviderOrSelf
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v2 = WeakRetained;
  }

  v5 = v2;

  return v2;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CarCardView;
  [(CarCardView *)&v5 didMoveToWindow];
  v3 = [(CarCardView *)self window];

  if (v3)
  {
    [(CarCardView *)self _applyCornerMask];
    [(CarCardView *)self _refreshAccessories];
    [(CarCardView *)self _updateInterfaceStyleRelatedViews];
  }

  else
  {
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;
  }
}

- (void)_applyCornerMask
{
  v3 = [(CarCardView *)self window];

  if (v3)
  {
    v43 = 0u;
    memset(obj, 0, sizeof(obj));
    [(CarCardView *)self _cornerMask];
    v40 = 0u;
    v4 = 0;
    v41 = v4;
    v42 = *&obj[1];
    if (self)
    {
      [(CarCardView *)self _calculateCornerRadiusForCornerMask:&v40];
      v6 = v5;
    }

    else
    {

      v6 = 0.0;
    }

    v7 = [(CarCardView *)self maskingView:v40];
    v8 = [v7 layer];
    [v8 setCornerRadius:v6];

    v9 = [(CarCardView *)self layer];
    [v9 setCornerRadius:v6];

    v10 = obj[0];
    v11 = [(CarCardView *)self maskingView];
    v12 = [v11 layer];
    [v12 setCornerCurve:v10];

    v13 = [(CarCardView *)self maskingView];
    v14 = [v13 layer];
    [v14 setMasksToBounds:1];

    v15 = v43;
    v16 = [(CarCardView *)self maskingView];
    v17 = [v16 layer];
    [v17 setMaskedCorners:v15];

    if ([(CarCardView *)self _shouldEmbedBackgroundInMaskingView:self->_backgroundView])
    {
      v18 = [(CarCardView *)self maskingView];
      v19 = [v18 layer];
      [v19 setShadowPathIsBounds:1];

      v20 = [(CarCardView *)self layer];
      [v20 setShadowPathIsBounds:1];

      v21 = 0.0;
    }

    else
    {
      v22 = [(CarCardView *)self backgroundView];

      if (v22)
      {
        v23 = v43;
        v24 = [(CarCardView *)self backgroundView];
        v25 = [v24 layer];
        [v25 setMaskedCorners:v23];

        v26 = obj[0];
        v27 = [(CarCardView *)self backgroundView];
        v28 = [v27 layer];
        [v28 setCornerCurve:v26];

        v29 = *(&v43 + 1);
        v30 = [(CarCardView *)self backgroundView];
        v31 = [v30 layer];
        [v31 setCornerRadius:v29];

        v32 = [(CarCardView *)self backgroundView];
        v33 = [v32 layer];
        [v33 setMasksToBounds:1];
      }

      v34 = [(CarCardView *)self maskingView];
      v35 = [v34 layer];
      [v35 setShadowPathIsBounds:0];

      v36 = [(CarCardView *)self layer];
      [v36 setShadowPathIsBounds:0];

      v21 = *(&v43 + 1) + *(&v43 + 1);
      if (LOBYTE(obj[1]))
      {
        v21 = 0.0;
      }
    }

    [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:v21];
    v37 = obj[0];
    v38 = [(CarCardView *)self layer];
    [v38 setCornerCurve:v37];

    p_lastAppliedCornerMask = &self->_lastAppliedCornerMask;
    *&p_lastAppliedCornerMask->maskedCorners = v43;
    objc_storeStrong(&p_lastAppliedCornerMask->cornerCurve, obj[0]);
    *&p_lastAppliedCornerMask->automaticallyRoundCorners = *&obj[1];
  }
}

- (CarCardStyleProviding)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);

  return WeakRetained;
}

- (void)_updateShadow
{
  if ([(CarCardView *)self _shouldEmbedBackgroundInMaskingView:self->_backgroundView])
  {
    v3 = [(CarCardView *)self window];
    v4 = [v3 _car_hybridInstrumentClusterPresentationType];

    if (v4)
    {
      [(CarCardView *)self _cornerMask];
      [(CarCardView *)self _mapsCar_updateShadowWithCornerRadius:0.0];
    }

    else
    {

      [(CarCardView *)self _mapsCar_updateShadow];
    }
  }

  else
  {

    [(CarCardView *)self _mapsCar_clearShadow];
  }
}

- (id)_dynamicBlurView
{
  dynamicBlurView = self->_dynamicBlurView;
  if (!dynamicBlurView)
  {
    v4 = [(CarCardView *)self _styleProviderOrSelf];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 dynamicBlurViewContextForCarCardBackground];
    }

    else
    {
      v5 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 dynamicBlurViewDelegateForCarCardBackground];
    }

    else
    {
      v6 = 0;
    }

    v7 = [[CarDynamicBlurView alloc] initWithBlurViewContext:v5 delegate:v6];
    v8 = self->_dynamicBlurView;
    self->_dynamicBlurView = v7;

    [(CarDynamicBlurView *)self->_dynamicBlurView setAccessibilityLabel:@"card.backgroundBlurView"];
    [(CarDynamicBlurView *)self->_dynamicBlurView registerAdditionalDelegate:self];

    dynamicBlurView = self->_dynamicBlurView;
  }

  return dynamicBlurView;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CarCardView;
  [(CarCardView *)&v14 layoutSubviews];
  if (self->_needsRefreshAccessories)
  {
    [(CarCardView *)self _refreshAccessories];
  }

  if (self->_lastAppliedCornerMask.automaticallyRoundCorners)
  {
    v11 = *&self->_lastAppliedCornerMask.maskedCorners;
    v12 = self->_lastAppliedCornerMask.cornerCurve;
    v13 = *&self->_lastAppliedCornerMask.automaticallyRoundCorners;
    [(CarCardView *)self _calculateCornerRadiusForCornerMask:&v11];
    v4 = v3;
    v5 = [(CarCardView *)self maskingView];
    v6 = [v5 layer];
    [v6 setCornerRadius:v4];

    v7 = [(CarCardView *)self backgroundView];
    LOBYTE(v6) = [(CarCardView *)self _shouldEmbedBackgroundInMaskingView:v7];

    if ((v6 & 1) == 0)
    {
      v8 = [(CarCardView *)self backgroundView];
      v9 = [v8 layer];
      [v9 setCornerRadius:v4];
    }

    v10 = [(CarCardView *)self layer];
    [v10 setCornerRadius:v4];
  }

  [(CarCardView *)self _updateFocusRing];
}

- (void)_updateTransitioning
{
  v3 = [(CarCardView *)self styleProvider];

  if (v3)
  {
    v4 = [(CarCardView *)self containerView];
    [v4 setAlpha:1.0];

    v5 = [(CarCardView *)self styleProvider];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v10 = [(CarCardView *)self styleProvider];
    [v10 setTransitioning:{-[CarCardView isTransitioning](self, "isTransitioning")}];
  }

  else
  {
    transitioning = self->_transitioning;
    v8 = [(CarCardView *)self containerView];
    v10 = v8;
    if (transitioning)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    self->_transitioning = a3;
    [(CarCardView *)self _updateTransitioning];
  }
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3
{
  retstr->var0 = [(CarCardView *)self roundedCorners]& 0xF;
  retstr->var1 = 28.0;
  result = kCACornerCurveContinuous;
  *&retstr->var3 = 0;
  retstr->var4 = 0;
  retstr->var2 = result;
  return result;
}

- (BOOL)_shouldEmbedBackgroundInMaskingView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 wantsCornerMasking] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (double)_calculateCornerRadiusForCornerMask:(id *)a3
{
  var1 = a3->var1;
  if (a3->var3)
  {
    [(CarCardView *)self bounds];
    Width = CGRectGetWidth(v12);
    [(CarCardView *)self bounds];
    Height = CGRectGetHeight(v13);
    var4 = a3->var4;
    if (var4)
    {
      if (var4 == 1)
      {
        if (Width >= Height)
        {
          [(CarCardView *)self bounds];
          v9 = CGRectGetHeight(v15);
        }

        else
        {
          [(CarCardView *)self bounds];
          v9 = CGRectGetWidth(v14);
        }

        var1 = v9 * 0.5;
      }
    }

    else if (fmin(Width, Height) >= 110.0)
    {
      var1 = 28.0;
    }

    else
    {
      var1 = 24.0;
    }
  }

  v10 = fmin(var1, self->_maximumAutomaticCornerRadius);

  return v10;
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v14 = v5;
    [(UIView *)backgroundView removeFromSuperview];
    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_backgroundView, a3);
    [(CarCardView *)self _updateShadow];
    [(CarCardView *)self _updateContainerViewSuperviewIfNeeded];
    v7 = [(CarCardView *)self _shouldEmbedBackgroundInMaskingView:self->_backgroundView];
    v8 = [(CarCardView *)self maskingView];
    v9 = v8;
    if (v7)
    {
      [v8 setHidden:0];

      v10 = [(CarCardView *)self maskingView];
      [v10 insertSubview:self->_backgroundView atIndex:0];

      v11 = self->_backgroundView;
      v12 = [(CarCardView *)self maskingView];
      v13 = [(UIView *)v11 _maps_constraintsForCenteringInView:v12];
      [NSLayoutConstraint activateConstraints:v13];
    }

    else
    {
      [v8 setHidden:1];

      [(CarCardView *)self insertSubview:self->_backgroundView atIndex:0];
      v12 = [(UIView *)self->_backgroundView _maps_constraintsForCenteringInView:self];
      [NSLayoutConstraint activateConstraints:v12];
    }

    [(CarCardView *)self _applyCornerMask];
    v5 = v14;
  }
}

- (void)setStyleProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_styleProvider, obj);
    dynamicBlurView = self->_dynamicBlurView;
    self->_dynamicBlurView = 0;

    [(CarCardView *)self _applyCornerMask];
    [(CarCardView *)self _refreshBackgroundView];
    [(CarCardView *)self _updateTransitioning];
    v5 = obj;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarCardView;
  v4 = a3;
  [(CarCardView *)&v8 traitCollectionDidChange:v4];
  v5 = [(CarCardView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CarCardView *)self _updateInterfaceStyleRelatedViews];
  }
}

- (void)_handleTapOnAccessory:(id)a3
{
  v6 = a3;
  if ([v6 type] == 1 || objc_msgSend(v6, "type") == 2)
  {
    [(CarCardView *)self _closeButtonTapped:0];
  }

  else if ([v6 type] == 4 || objc_msgSend(v6, "type") == 3)
  {
    v4 = [v6 handler];

    if (v4)
    {
      v5 = [v6 handler];
      v5[2]();
    }
  }
}

- (void)updateHeaderWithTitle:(id)a3 primaryAccessory:(id)a4 secondaryAccessory:(id)a5 leadingImage:(id)a6 handler:(id)a7
{
  v38 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:0];
  v16 = [(CarCardView *)self title];
  if (v16)
  {

    goto LABEL_3;
  }

  if (v12 && [v12 type])
  {
LABEL_3:
    v17 = [(CarCardView *)self accessoryBar];
    if (!v17)
    {
      v18 = [(CarCardView *)self parentViewController];

      if (!v18)
      {
LABEL_7:
        v30 = [(CarCardView *)self accessoryBar];
        [v30 updateWithTitle:v38 primaryAccessory:v12 secondaryAccessory:v13 leadingImage:v14];

        v31 = [(CarCardView *)self accessoryContainerView];
        v32 = [v31 topAnchor];
        goto LABEL_11;
      }

      v19 = [_TtC4Maps19CarCardAccessoryBar alloc];
      v20 = [(CarCardView *)self parentViewController];
      v21 = [(CarCardAccessoryBar *)v19 initWithParentViewController:v20 accessoryTapHandler:v15];
      [(CarCardView *)self setAccessoryBar:v21];

      v22 = [(CarCardView *)self accessoryBar];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [(CarCardView *)self accessoryContainerView];
      v24 = [(CarCardView *)self accessoryBar];
      [v23 addSubview:v24];

      v17 = [(CarCardView *)self accessoryBar];
      v25 = [(CarCardView *)self accessoryContainerView];
      LODWORD(v26) = 1148846080;
      v27 = [v17 _maps_constraintsEqualToEdgesOfView:v25 priority:v26];
      [v27 allConstraints];
      v29 = v28 = v15;
      [NSLayoutConstraint activateConstraints:v29];

      v15 = v28;
    }

    goto LABEL_7;
  }

  v31 = [(CarCardView *)self accessoryContainerView];
  v32 = [v31 bottomAnchor];
LABEL_11:
  v33 = v32;
  v34 = [(CarCardView *)self containerView];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  constraintAccessoryBarPosition = self->_constraintAccessoryBarPosition;
  self->_constraintAccessoryBarPosition = v36;

  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:1];
}

- (void)_setNeedsRefreshAccessories
{
  if (!self->_needsRefreshAccessories)
  {
    self->_needsRefreshAccessories = 1;
    [(CarCardView *)self setNeedsLayout];
  }
}

- (void)_chevronButtonTapped:(id)a3
{
  v7 = a3;
  [v7 setSelected:{objc_msgSend(v7, "isSelected") ^ 1}];
  v4 = [(CarCardView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CarCardView *)self delegate];
    [v6 carCardView:self chevronButtonSelected:v7];
  }
}

- (void)_customAccessoryTapped:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will call custom button handler.", v6, 2u);
    }

    v5 = [v3 handler];

    v5[2](v5);
  }
}

- (void)_customButtonTapped:(id)a3
{
  v4 = a3;
  v6 = [(CarCardView *)self primaryButtonView];

  if (v6 == v4)
  {
    [(CarCardView *)self primaryAccessory];
  }

  else
  {
    [(CarCardView *)self secondaryAccessory];
  }
  v5 = ;
  [(CarCardView *)self _customAccessoryTapped:v5];
}

- (void)_closeButtonTapped:(id)a3
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will close the current context.", v8, 2u);
  }

  v5 = [(CarCardView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CarCardView *)self delegate];
    [v7 carCardViewCloseButtonTapped:self];
  }
}

- (void)setAccessoryImage:(id)a3
{
  v5 = a3;
  if (self->_accessoryImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryImage, a3);
    [(CarCardView *)self _setNeedsRefreshAccessories];
    v5 = v6;
  }
}

- (void)setAccessoryType:(unint64_t)a3
{
  v4 = [[CarCardAccessory alloc] initWithType:a3];
  [(CarCardView *)self setPrimaryAccessory:v4];
}

- (unint64_t)accessoryType
{
  v2 = [(CarCardView *)self primaryAccessory];
  v3 = [v2 type];

  return v3;
}

- (void)setSecondaryAccessory:(id)a3
{
  v5 = a3;
  secondaryAccessory = self->_secondaryAccessory;
  v10 = v5;
  v7 = secondaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryAccessory, a3);
      [(CarCardView *)self _setNeedsRefreshAccessories];
      v8 = v10;
    }
  }
}

- (void)setPrimaryAccessory:(id)a3
{
  v5 = a3;
  primaryAccessory = self->_primaryAccessory;
  v10 = v5;
  v7 = primaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryAccessory, a3);
      [(CarCardView *)self _setNeedsRefreshAccessories];
      v8 = v10;
    }
  }
}

- (void)setTitleNumberOfLines:(int64_t)a3
{
  if (self->_titleNumberOfLines != a3)
  {
    self->_titleNumberOfLines = a3;
    [(CarCardView *)self _setNeedsRefreshAccessories];
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->_title != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_title, a3);
    [(CarCardView *)self _setNeedsRefreshAccessories];
    v5 = v6;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceivePress:(id)a4
{
  v5 = [a4 responder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v7 == self->_focusAnchor)
  {
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [(CarCardView *)self accessoryBar];
    if (v9)
    {
      v10 = v9;
      v11 = [(CarCardView *)self accessoryBar];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(CarCardFocusAnchor *)v7 frame];
      [(CarCardFocusAnchor *)v7 convertRect:self toView:?];
      v27.origin.x = v20;
      v27.origin.y = v21;
      v27.size.width = v22;
      v27.size.height = v23;
      v26.origin.x = v13;
      v26.origin.y = v15;
      v26.size.width = v17;
      v26.size.height = v19;
      v24 = CGRectContainsRect(v26, v27);

      v8 = !v24;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_7:
  v8 = 0;
LABEL_11:

  return v8 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  [(CarCardView *)self selectionTriggerHeight];
  v11 = v10 <= 0.0 || v9 <= v10;
  if (v11 && ([v5 view], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) == 0))
  {
    v16 = [(CarCardView *)self accessoryBar];
    if (v16)
    {
      v17 = v16;
      v18 = [(CarCardView *)self accessoryBar];
      [v18 frame];
      v20.x = v7;
      v20.y = v9;
      v19 = CGRectContainsPoint(v21, v20);

      v14 = !v19;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (void)_setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    if (a3)
    {
      v4 = 0.800000012;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = [(CarCardView *)self backgroundView];
    [v5 setAlpha:v4];
  }
}

- (void)handlePress:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = self;
    v6 = 1;
LABEL_3:
    [(CarCardView *)v5 _setHighlighted:v6];
    goto LABEL_4;
  }

  if ([v4 state] != 3)
  {
    if ([v4 state] == 2)
    {
      goto LABEL_4;
    }

    v5 = self;
    v6 = 0;
    goto LABEL_3;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009B5FF0;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [UIView animateWithDuration:v9 animations:0.25];
  v7 = [(CarCardView *)self selectionHandler];

  if (v7)
  {
    v8 = [(CarCardView *)self selectionHandler];
    [v4 locationInView:self];
    v8[2](v8);
  }

LABEL_4:
}

- (void)_setFocusable:(BOOL)a3
{
  if (self->_focusable != a3)
  {
    self->_focusable = a3;
    if (a3)
    {
      v4 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handlePress:"];
      buttonRecognizer = self->_buttonRecognizer;
      self->_buttonRecognizer = v4;

      [(UILongPressGestureRecognizer *)self->_buttonRecognizer setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_buttonRecognizer setMinimumPressDuration:0.0];
      [(UILongPressGestureRecognizer *)self->_buttonRecognizer setAllowedPressTypes:&off_1016ED250];
      [(CarCardView *)self addGestureRecognizer:self->_buttonRecognizer];
      v6 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handlePress:"];
      tapRecognizer = self->_tapRecognizer;
      self->_tapRecognizer = v6;

      [(UILongPressGestureRecognizer *)self->_tapRecognizer setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_tapRecognizer setMinimumPressDuration:0.0];
      [(UILongPressGestureRecognizer *)self->_tapRecognizer setAllowedTouchTypes:&off_1016ED268];
      v8 = self->_tapRecognizer;

      [(CarCardView *)self addGestureRecognizer:v8];
    }

    else
    {
      [(CarCardView *)self removeGestureRecognizer:self->_buttonRecognizer];
      v9 = self->_tapRecognizer;

      [(CarCardView *)self removeGestureRecognizer:v9];
    }
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  [(CarCardView *)self _updateFocusRing:a3];
  v5 = [(CarCardView *)self isEffectivelyFocused];
  v6 = [(CarCardView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CarCardView *)self delegate];
    [v8 carCardView:self didChangeFocus:v5];
  }

  v9 = [(CarCardView *)self content];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CarCardView *)self content];
    [v11 cardDidUpdateFocus:v5];
  }
}

- (BOOL)_canAnchorBecomeFocused
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 chromeViewController];
  if (([v4 isAutohidingContentHiddenForCurrentContext] & 1) != 0 || !self->_focusable)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(CarCardView *)self isHidden]^ 1;
  }

  return v5;
}

- (void)setSelectionHandler:(id)a3
{
  v4 = [a3 copy];
  selectionHandler = self->_selectionHandler;
  self->_selectionHandler = v4;

  v6 = self->_selectionHandler != 0;

  [(CarCardView *)self _setFocusable:v6];
}

- (NSArray)focusOrderSubItems
{
  if (([(CarCardView *)self isHidden]& 1) != 0)
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v4 = +[NSMutableArray array];
    if ([(CarCardFocusAnchor *)self->_focusAnchor canBecomeFocused])
    {
      [v4 addObject:self->_focusAnchor];
    }

    v5 = [(CarCardView *)self accessoryBar];

    if (v5)
    {
      v6 = [(CarCardView *)self accessoryBar];
      v7 = [v6 focusOrderSubItems];
      [v4 addObjectsFromArray:v7];
    }

    v8 = [(CarCardView *)self content];
    v9 = [v8 focusOrderSubItems];
    [v4 addObjectsFromArray:v9];

    v3 = [v4 copy];
  }

  return v3;
}

- (NSArray)preferredFocusEnvironments
{
  if (([(CarCardView *)self isHidden]& 1) != 0)
  {
    goto LABEL_2;
  }

  if ([(CarCardFocusAnchor *)self->_focusAnchor canBecomeFocused])
  {
    focusAnchor = self->_focusAnchor;
    v3 = [NSArray arrayWithObjects:&focusAnchor count:1];
  }

  else
  {
    v4 = [(CarCardView *)self content];

    if (!v4)
    {
LABEL_2:
      v3 = &__NSArray0__struct;
      goto LABEL_7;
    }

    v5 = [(CarCardView *)self content];
    v3 = [v5 preferredFocusEnvironments];
  }

LABEL_7:

  return v3;
}

- (void)_setLayout:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_layout, a3);
  [(CarCardView *)self _updateHuggingCompressionPriorities];
  v5 = sub_100083670([(CarCardLayout *)self->_layout pinnedEdges]);
  if (self->_roundedCorners != v5)
  {
    self->_roundedCorners = v5;
    [(CarCardView *)self _applyCornerMask];
  }
}

- (void)setLayout:(id)a3
{
  v4 = a3;
  v5 = [(CarCardView *)self styleProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CarCardView *)self styleProvider];
    v8 = [v7 validateCarCardLayout:v4];

    v4 = v8;
  }

  v9 = self->_layout;
  v10 = v4;
  v11 = [(CarCardLayout *)v9 edgePosition];
  if (v11 != [v10 edgePosition] || (v12 = -[CarCardLayout cornerPosition](v9, "cornerPosition"), v12 != objc_msgSend(v10, "cornerPosition")) || (v13 = -[CarCardLayout primaryAxis](v9, "primaryAxis"), v13 != objc_msgSend(v10, "primaryAxis")) || (v14 = -[CarCardLayout pinnedEdges](v9, "pinnedEdges"), v14 != objc_msgSend(v10, "pinnedEdges")) || (v15 = -[CarCardLayout primaryAxisFillMode](v9, "primaryAxisFillMode"), v15 != objc_msgSend(v10, "primaryAxisFillMode")) || (-[CarCardLayout primaryAxisFillModePriority](v9, "primaryAxisFillModePriority"), v17 = v16, objc_msgSend(v10, "primaryAxisFillModePriority"), v17 != v18) || (v19 = -[CarCardLayout secondaryAxisFillMode](v9, "secondaryAxisFillMode"), v19 != objc_msgSend(v10, "secondaryAxisFillMode")) || (-[CarCardLayout secondaryAxisFillModePriority](v9, "secondaryAxisFillModePriority"), v21 = v20, objc_msgSend(v10, "secondaryAxisFillModePriority"), v21 != v22) || (v23 = -[CarCardLayout flipForRightHandDrive](v9, "flipForRightHandDrive"), v23 != objc_msgSend(v10, "flipForRightHandDrive")) || (v24 = -[CarCardLayout edgesAffectingMapInsets](v9, "edgesAffectingMapInsets"), v24 != objc_msgSend(v10, "edgesAffectingMapInsets")) || (v25 = -[CarCardLayout horizontallyCenterMapInsets](v9, "horizontallyCenterMapInsets"), v25 != objc_msgSend(v10, "horizontallyCenterMapInsets")) || (-[CarCardLayout margins](v9, "margins"), v30 = v29, v32 = v31, v34 = v33, v36 = v35, objc_msgSend(v10, "margins"), v32 != v40) || v30 != v37 || v36 != v39)
  {

LABEL_15:
    [(CarCardView *)self _setLayout:v10];
    goto LABEL_16;
  }

  v41 = v38;

  if (v34 != v41)
  {
    goto LABEL_15;
  }

LABEL_16:
  [(CarCardView *)self _cornerMask];
  v28 = v42 == self->_lastAppliedCornerMask.maskedCorners && self->_lastAppliedCornerMask.cornerRadius == 0.0 && self->_lastAppliedCornerMask.cornerCurve == 0 && !self->_lastAppliedCornerMask.automaticallyRoundCorners;
  if (!v28 || self->_lastAppliedCornerMask.automaticCornerRadiusBehaviour)
  {
    [(CarCardView *)self _applyCornerMask];
  }
}

- (void)setContent:(id)a3
{
  v5 = a3;
  if (self->_content != v5)
  {
    v6 = [(CarCardView *)self content];
    objc_storeStrong(&self->_content, a3);
    if (v6)
    {
      if ([v6 isViewLoaded])
      {
        v7 = [v6 view];
        v8 = [v7 superview];
        v9 = [(CarCardView *)self containerView];

        if (v8 == v9)
        {
          v10 = [v6 view];
          [v10 removeFromSuperview];
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_styleProvider);

    if (WeakRetained == v6)
    {
      [(CarCardView *)self setStyleProvider:0];
    }

    if (v5)
    {
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1009B6A50;
      v15 = &unk_101661A90;
      v16 = self;
      v17 = v5;
      [UIView performWithoutAnimation:&v12];
    }

    [(CarCardView *)self _setNeedsRefreshAccessories:v12];
  }
}

- (void)setParentViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  obj = v4;
  v6 = WeakRetained;
  if (obj | v6)
  {
    v7 = [obj isEqual:v6];

    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_parentViewController, obj);
      [(CarCardView *)self _setNeedsRefreshAccessories];
    }
  }
}

- (CarCardView)initWithContent:(id)a3
{
  v4 = a3;
  v5 = [(CarCardView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(CarCardView *)v5 setContent:v4];
  }

  return v6;
}

- (CarCardView)initWithFrame:(CGRect)a3
{
  v60.receiver = self;
  v60.super_class = CarCardView;
  v3 = [(CarCardView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarCardView *)v3 setClipsToBounds:0];
    [(CarCardView *)v4 setAccessibilityIdentifier:@"CarCardView"];
    title = v4->_title;
    v4->_title = 0;

    v6 = [[CarCardAccessory alloc] initWithType:0];
    primaryAccessory = v4->_primaryAccessory;
    v4->_primaryAccessory = v6;

    v8 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v8 setEdgePosition:0];
    [(CarCardLayout *)v8 setCornerPosition:4];
    [(CarCardLayout *)v8 setPrimaryAxis:1];
    [(CarCardLayout *)v8 setPinnedEdges:0];
    [(CarCardLayout *)v8 setPrimaryAxisFillMode:3];
    LODWORD(v9) = 1148846080;
    [(CarCardLayout *)v8 setPrimaryAxisFillModePriority:v9];
    [(CarCardLayout *)v8 setSecondaryAxisFillMode:2];
    LODWORD(v10) = 1148846080;
    [(CarCardLayout *)v8 setSecondaryAxisFillModePriority:v10];
    [(CarCardLayout *)v8 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v8 setFlipForRightHandDrive:1];
    v11 = v8;
    v12 = [(CarCardLayout *)v11 primaryAxis]== 1;
    v13 = [(CarCardLayout *)v11 cornerPosition];
    if (v12)
    {
      if (v13 == 4 || [(CarCardLayout *)v11 cornerPosition]== 1 || [(CarCardLayout *)v11 edgePosition]== 2)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      if ([(CarCardLayout *)v11 cornerPosition]== 8 || [(CarCardLayout *)v11 cornerPosition]== 2 || [(CarCardLayout *)v11 edgePosition]== 8)
      {
        v14 |= 2uLL;
      }

      if ([(CarCardLayout *)v11 edgePosition]== 1)
      {
        v14 |= 4uLL;
      }

      v15 = v14 | ([(CarCardLayout *)v11 edgePosition]== 4);
    }

    else
    {
      v15 = v13 == 4 || [(CarCardLayout *)v11 cornerPosition]== 8 || [(CarCardLayout *)v11 edgePosition]== 4;
      if ([(CarCardLayout *)v11 cornerPosition]== 1 || [(CarCardLayout *)v11 cornerPosition]== 2 || [(CarCardLayout *)v11 edgePosition]== 1)
      {
        v15 |= 4uLL;
      }

      if ([(CarCardLayout *)v11 edgePosition]== 2)
      {
        v15 |= 8uLL;
      }

      if ([(CarCardLayout *)v11 edgePosition]== 8)
      {
        v15 |= 2uLL;
      }
    }

    [(CarCardLayout *)v11 setEdgesAffectingMapInsets:v15];
    [(CarCardLayout *)v11 setHorizontallyCenterMapInsets:0];
    layout = v4->_layout;
    v4->_layout = v11;

    v4->_roundedCorners = sub_100083670([(CarCardLayout *)v4->_layout pinnedEdges]);
    v4->_maximumAutomaticCornerRadius = 1.79769313e308;
    v17 = [[CarCardFocusAnchor alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    focusAnchor = v4->_focusAnchor;
    v4->_focusAnchor = v17;

    [(CarCardFocusAnchor *)v4->_focusAnchor setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_initWeak(&location, v4);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1009B764C;
    v57[3] = &unk_1016334B8;
    objc_copyWeak(&v58, &location);
    [(CarCardFocusAnchor *)v4->_focusAnchor setCanBecomeFocusedHandler:v57];
    [(CarCardView *)v4 addSubview:v4->_focusAnchor];
    v19 = [UIView alloc];
    [(CarCardView *)v4 bounds];
    v20 = [v19 initWithFrame:?];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v20 setAccessibilityLabel:@"card.maskingView"];
    [(CarCardView *)v4 addSubview:v20];
    [(CarCardView *)v4 setMaskingView:v20];
    v55 = v20;
    v21 = [UIView alloc];
    [(CarCardView *)v4 bounds];
    v22 = [v21 initWithFrame:?];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 setAccessibilityLabel:@"card.containerView"];
    [(CarCardView *)v4 setContainerView:v22];
    v54 = v22;
    v23 = [UIView alloc];
    [(CarCardView *)v4 bounds];
    v56 = [v23 initWithFrame:?];
    [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v56 setAccessibilityLabel:@"card.accessoryContainerView"];
    LODWORD(v24) = 1148846080;
    [v56 setContentHuggingPriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [v56 setContentCompressionResistancePriority:1 forAxis:v25];
    [v54 addSubview:v56];
    [(CarCardView *)v4 setAccessoryContainerView:v56];
    v26 = [(CarCardView *)v4 heightAnchor];
    v27 = [v26 constraintGreaterThanOrEqualToConstant:0.0];
    minimumHeightConstraint = v4->_minimumHeightConstraint;
    v4->_minimumHeightConstraint = v27;

    [(NSLayoutConstraint *)v4->_minimumHeightConstraint setActive:1];
    v53 = [(CarCardFocusAnchor *)v4->_focusAnchor topAnchor];
    v52 = [(CarCardView *)v4 topAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v61[0] = v51;
    v50 = [(CarCardFocusAnchor *)v4->_focusAnchor leftAnchor];
    v49 = [(CarCardView *)v4 leftAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v61[1] = v48;
    v47 = [(CarCardFocusAnchor *)v4->_focusAnchor rightAnchor];
    v46 = [(CarCardView *)v4 rightAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v61[2] = v45;
    v44 = [(CarCardFocusAnchor *)v4->_focusAnchor heightAnchor];
    v43 = [v44 constraintEqualToConstant:1.0];
    v61[3] = v43;
    v42 = [v55 topAnchor];
    v41 = [(CarCardView *)v4 topAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v61[4] = v40;
    v39 = [v55 leftAnchor];
    v29 = [(CarCardView *)v4 leftAnchor];
    v30 = [v39 constraintEqualToAnchor:v29];
    v61[5] = v30;
    v31 = [v55 bottomAnchor];
    v32 = [(CarCardView *)v4 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v61[6] = v33;
    v34 = [v55 rightAnchor];
    v35 = [(CarCardView *)v4 rightAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v61[7] = v36;
    v37 = [NSArray arrayWithObjects:v61 count:8];
    [NSLayoutConstraint activateConstraints:v37];

    [(CarCardView *)v4 _updateHuggingCompressionPriorities];
    [(CarCardView *)v4 _refreshBackgroundView];
    [(CarCardView *)v4 _setNeedsRefreshAccessories];

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  return v4;
}

@end