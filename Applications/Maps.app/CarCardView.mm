@interface CarCardView
- ($FEAE32A1819615878361D0F810751286)_cornerMask;
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout;
- (BOOL)_canAnchorBecomeFocused;
- (BOOL)_shouldEmbedBackgroundInMaskingView:(id)view;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceivePress:(id)press;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CarCardStyleProviding)styleProvider;
- (CarCardView)initWithContent:(id)content;
- (CarCardView)initWithFrame:(CGRect)frame;
- (CarCardViewDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (UIViewController)parentViewController;
- (double)_calculateCornerRadiusForCornerMask:(id *)mask;
- (id)_dynamicBlurView;
- (id)_styleProviderOrSelf;
- (unint64_t)accessoryType;
- (void)_applyCornerMask;
- (void)_chevronButtonTapped:(id)tapped;
- (void)_closeButtonTapped:(id)tapped;
- (void)_customAccessoryTapped:(id)tapped;
- (void)_customButtonTapped:(id)tapped;
- (void)_handleTapOnAccessory:(id)accessory;
- (void)_refreshAccessories;
- (void)_refreshBackgroundView;
- (void)_setFocusable:(BOOL)focusable;
- (void)_setHighlighted:(BOOL)highlighted;
- (void)_setLayout:(id)layout;
- (void)_setNeedsRefreshAccessories;
- (void)_updateContainerViewSuperviewIfNeeded;
- (void)_updateFocusRing;
- (void)_updateHuggingCompressionPriorities;
- (void)_updateInterfaceStyleRelatedViews;
- (void)_updateShadow;
- (void)_updateTransitioning;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)handlePress:(id)press;
- (void)layoutSubviews;
- (void)setAccessoryImage:(id)image;
- (void)setAccessoryType:(unint64_t)type;
- (void)setBackgroundView:(id)view;
- (void)setContent:(id)content;
- (void)setLayout:(id)layout;
- (void)setParentViewController:(id)controller;
- (void)setPrimaryAccessory:(id)accessory;
- (void)setSecondaryAccessory:(id)accessory;
- (void)setSelectionHandler:(id)handler;
- (void)setStyleProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)setTitleNumberOfLines:(int64_t)lines;
- (void)setTransitioning:(BOOL)transitioning;
- (void)traitCollectionDidChange:(id)change;
- (void)updateHeaderWithTitle:(id)title primaryAccessory:(id)accessory secondaryAccessory:(id)secondaryAccessory leadingImage:(id)image handler:(id)handler;
@end

@implementation CarCardView

- (CarCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateFocusRing
{
  window = [(CarCardView *)self window];

  if (window)
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
        layer = [(CarCardView *)self layer];
        [layer addSublayer:self->_focusShapeLayer];
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
          layer2 = [(CarCardView *)self layer];
          [layer2 cornerRadius];
          [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:v11 + -3.0];
        }

        v12 = +[UIColor _carSystemFocusColor];
        selfCopy = [(CarCardView *)self backgroundView];
        v14 = selfCopy;
        if (!selfCopy)
        {
          selfCopy = self;
        }

        traitCollection = [selfCopy traitCollection];
        v16 = [v12 resolvedColorWithTraitCollection:traitCollection];

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
  primaryAxis = [(CarCardLayout *)self->_layout primaryAxis];
  if (primaryAxis == 1)
  {
    *&v4 = 751.0;
  }

  else
  {
    *&v4 = 999.0;
  }

  if (primaryAxis == 1)
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
  window = [(CarCardView *)self window];

  if (window)
  {
    styleProvider = [(CarCardView *)self styleProvider];
    v5 = objc_opt_respondsToSelector();
    layout = [(CarCardView *)self layout];
    traitCollection = [(CarCardView *)self traitCollection];
    [traitCollection displayScale];
    v9 = v8;
    traitCollection2 = [(CarCardView *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];
    if (v5)
    {
      selfCopy = styleProvider;
    }

    else
    {
      selfCopy = self;
    }

    v13 = [(CarCardView *)selfCopy backgroundViewForCarCardLayout:layout scale:userInterfaceStyle userInterfaceStyle:v9];

    [(CarCardView *)self setBackgroundView:v13];
  }

  else
  {

    [(CarCardView *)self _updateContainerViewSuperviewIfNeeded];
  }
}

- (void)_updateContainerViewSuperviewIfNeeded
{
  maskingView = [(CarCardView *)self maskingView];
  v4 = self->_backgroundView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = [(UIView *)v4 contentView];
    v6 = contentView;
    if (contentView)
    {
      v7 = contentView;

      maskingView = v7;
    }
  }

  superview = [(UIView *)self->_containerView superview];

  if (superview != maskingView)
  {
    [maskingView addSubview:self->_containerView];
    v9 = objc_alloc_init(NSMutableArray);
    LODWORD(v10) = 1148846080;
    v11 = [(UIView *)self->_containerView _maps_constraintsEqualToEdgesOfView:maskingView priority:v10];
    allConstraints = [v11 allConstraints];
    [v9 addObjectsFromArray:allConstraints];

    leadingAnchor = [(UIView *)self->_accessoryContainerView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v20[0] = v15;
    trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_accessoryContainerView trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v20[1] = v18;
    v19 = [NSArray arrayWithObjects:v20 count:2];
    [v9 addObjectsFromArray:v19];

    [NSLayoutConstraint activateConstraints:v9];
  }
}

- (void)_refreshAccessories
{
  self->_needsRefreshAccessories = 0;
  title = [(CarCardView *)self title];
  primaryAccessory = [(CarCardView *)self primaryAccessory];
  secondaryAccessory = [(CarCardView *)self secondaryAccessory];
  accessoryImage = [(CarCardView *)self accessoryImage];
  content = [(CarCardView *)self content];
  v8 = &OBJC_PROTOCOL___CarCardHeaderHosting;
  v9 = v8;
  if (!content || !v8)
  {

LABEL_8:
    selfCopy = self;
    [(NSLayoutConstraint *)selfCopy->_constraintAccessoryBarPosition setActive:0];
    constraintAccessoryBarPosition = selfCopy->_constraintAccessoryBarPosition;
    selfCopy->_constraintAccessoryBarPosition = 0;

    goto LABEL_9;
  }

  v10 = objc_getAssociatedObject(content, off_10192EF78);
  if (!v10)
  {
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [content conformsToProtocol:v9]);
    objc_setAssociatedObject(content, off_10192EF78, v10, 1);
  }

  bOOLValue = [v10 BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_8;
  }

  selfCopy = [(CarCardView *)self content];
  accessoryBar = [(CarCardView *)self accessoryBar];
  [accessoryBar removeFromSuperview];

  [(CarCardView *)self setAccessoryBar:0];
  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:0];
  accessoryContainerView = [(CarCardView *)self accessoryContainerView];
  bottomAnchor = [accessoryContainerView bottomAnchor];
  containerView = [(CarCardView *)self containerView];
  [containerView topAnchor];
  v16 = accessoryImage;
  v17 = title;
  v18 = secondaryAccessory;
  v20 = v19 = primaryAccessory;
  v21 = [bottomAnchor constraintEqualToAnchor:v20];
  v22 = self->_constraintAccessoryBarPosition;
  self->_constraintAccessoryBarPosition = v21;

  primaryAccessory = v19;
  secondaryAccessory = v18;
  title = v17;
  accessoryImage = v16;

  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:1];
LABEL_9:
  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1009B55A0;
  v27[3] = &unk_101630F18;
  objc_copyWeak(&v30, &location);
  v24 = primaryAccessory;
  v28 = v24;
  v25 = secondaryAccessory;
  v29 = v25;
  [(CarCardView *)selfCopy updateHeaderWithTitle:title primaryAccessory:v24 secondaryAccessory:v25 leadingImage:accessoryImage handler:v27];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- ($FEAE32A1819615878361D0F810751286)_cornerMask
{
  styleProvider = [(CarCardView *)self styleProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _styleProviderOrSelf = [(CarCardView *)self _styleProviderOrSelf];
    layout = [(CarCardView *)self layout];
    if (_styleProviderOrSelf)
    {
      [_styleProviderOrSelf cornerMaskForCarCardLayout:layout];
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
    _styleProviderOrSelf = [(CarCardView *)self layout];
    [(CarCardView *)self cornerMaskForCarCardLayout:_styleProviderOrSelf];
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CarCardView;
  [(CarCardView *)&v5 didMoveToWindow];
  window = [(CarCardView *)self window];

  if (window)
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
  window = [(CarCardView *)self window];

  if (window)
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
    layer = [v7 layer];
    [layer setCornerRadius:v6];

    layer2 = [(CarCardView *)self layer];
    [layer2 setCornerRadius:v6];

    v10 = obj[0];
    maskingView = [(CarCardView *)self maskingView];
    layer3 = [maskingView layer];
    [layer3 setCornerCurve:v10];

    maskingView2 = [(CarCardView *)self maskingView];
    layer4 = [maskingView2 layer];
    [layer4 setMasksToBounds:1];

    v15 = v43;
    maskingView3 = [(CarCardView *)self maskingView];
    layer5 = [maskingView3 layer];
    [layer5 setMaskedCorners:v15];

    if ([(CarCardView *)self _shouldEmbedBackgroundInMaskingView:self->_backgroundView])
    {
      maskingView4 = [(CarCardView *)self maskingView];
      layer6 = [maskingView4 layer];
      [layer6 setShadowPathIsBounds:1];

      layer7 = [(CarCardView *)self layer];
      [layer7 setShadowPathIsBounds:1];

      v21 = 0.0;
    }

    else
    {
      backgroundView = [(CarCardView *)self backgroundView];

      if (backgroundView)
      {
        v23 = v43;
        backgroundView2 = [(CarCardView *)self backgroundView];
        layer8 = [backgroundView2 layer];
        [layer8 setMaskedCorners:v23];

        v26 = obj[0];
        backgroundView3 = [(CarCardView *)self backgroundView];
        layer9 = [backgroundView3 layer];
        [layer9 setCornerCurve:v26];

        v29 = *(&v43 + 1);
        backgroundView4 = [(CarCardView *)self backgroundView];
        layer10 = [backgroundView4 layer];
        [layer10 setCornerRadius:v29];

        backgroundView5 = [(CarCardView *)self backgroundView];
        layer11 = [backgroundView5 layer];
        [layer11 setMasksToBounds:1];
      }

      maskingView5 = [(CarCardView *)self maskingView];
      layer12 = [maskingView5 layer];
      [layer12 setShadowPathIsBounds:0];

      layer13 = [(CarCardView *)self layer];
      [layer13 setShadowPathIsBounds:0];

      v21 = *(&v43 + 1) + *(&v43 + 1);
      if (LOBYTE(obj[1]))
      {
        v21 = 0.0;
      }
    }

    [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:v21];
    v37 = obj[0];
    layer14 = [(CarCardView *)self layer];
    [layer14 setCornerCurve:v37];

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
    window = [(CarCardView *)self window];
    _car_hybridInstrumentClusterPresentationType = [window _car_hybridInstrumentClusterPresentationType];

    if (_car_hybridInstrumentClusterPresentationType)
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
    _styleProviderOrSelf = [(CarCardView *)self _styleProviderOrSelf];
    if (objc_opt_respondsToSelector())
    {
      dynamicBlurViewContextForCarCardBackground = [_styleProviderOrSelf dynamicBlurViewContextForCarCardBackground];
    }

    else
    {
      dynamicBlurViewContextForCarCardBackground = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      dynamicBlurViewDelegateForCarCardBackground = [_styleProviderOrSelf dynamicBlurViewDelegateForCarCardBackground];
    }

    else
    {
      dynamicBlurViewDelegateForCarCardBackground = 0;
    }

    v7 = [[CarDynamicBlurView alloc] initWithBlurViewContext:dynamicBlurViewContextForCarCardBackground delegate:dynamicBlurViewDelegateForCarCardBackground];
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
    maskingView = [(CarCardView *)self maskingView];
    layer = [maskingView layer];
    [layer setCornerRadius:v4];

    backgroundView = [(CarCardView *)self backgroundView];
    LOBYTE(layer) = [(CarCardView *)self _shouldEmbedBackgroundInMaskingView:backgroundView];

    if ((layer & 1) == 0)
    {
      backgroundView2 = [(CarCardView *)self backgroundView];
      layer2 = [backgroundView2 layer];
      [layer2 setCornerRadius:v4];
    }

    layer3 = [(CarCardView *)self layer];
    [layer3 setCornerRadius:v4];
  }

  [(CarCardView *)self _updateFocusRing];
}

- (void)_updateTransitioning
{
  styleProvider = [(CarCardView *)self styleProvider];

  if (styleProvider)
  {
    containerView = [(CarCardView *)self containerView];
    [containerView setAlpha:1.0];

    styleProvider2 = [(CarCardView *)self styleProvider];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    styleProvider3 = [(CarCardView *)self styleProvider];
    [styleProvider3 setTransitioning:{-[CarCardView isTransitioning](self, "isTransitioning")}];
  }

  else
  {
    transitioning = self->_transitioning;
    containerView2 = [(CarCardView *)self containerView];
    styleProvider3 = containerView2;
    if (transitioning)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [containerView2 setAlpha:v9];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    self->_transitioning = transitioning;
    [(CarCardView *)self _updateTransitioning];
  }
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout
{
  retstr->var0 = [(CarCardView *)self roundedCorners]& 0xF;
  retstr->var1 = 28.0;
  result = kCACornerCurveContinuous;
  *&retstr->var3 = 0;
  retstr->var4 = 0;
  retstr->var2 = result;
  return result;
}

- (BOOL)_shouldEmbedBackgroundInMaskingView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [viewCopy wantsCornerMasking] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (double)_calculateCornerRadiusForCornerMask:(id *)mask
{
  var1 = mask->var1;
  if (mask->var3)
  {
    [(CarCardView *)self bounds];
    Width = CGRectGetWidth(v12);
    [(CarCardView *)self bounds];
    Height = CGRectGetHeight(v13);
    var4 = mask->var4;
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

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v14 = viewCopy;
    [(UIView *)backgroundView removeFromSuperview];
    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_backgroundView, view);
    [(CarCardView *)self _updateShadow];
    [(CarCardView *)self _updateContainerViewSuperviewIfNeeded];
    v7 = [(CarCardView *)self _shouldEmbedBackgroundInMaskingView:self->_backgroundView];
    maskingView = [(CarCardView *)self maskingView];
    v9 = maskingView;
    if (v7)
    {
      [maskingView setHidden:0];

      maskingView2 = [(CarCardView *)self maskingView];
      [maskingView2 insertSubview:self->_backgroundView atIndex:0];

      v11 = self->_backgroundView;
      maskingView3 = [(CarCardView *)self maskingView];
      v13 = [(UIView *)v11 _maps_constraintsForCenteringInView:maskingView3];
      [NSLayoutConstraint activateConstraints:v13];
    }

    else
    {
      [maskingView setHidden:1];

      [(CarCardView *)self insertSubview:self->_backgroundView atIndex:0];
      maskingView3 = [(UIView *)self->_backgroundView _maps_constraintsForCenteringInView:self];
      [NSLayoutConstraint activateConstraints:maskingView3];
    }

    [(CarCardView *)self _applyCornerMask];
    viewCopy = v14;
  }
}

- (void)setStyleProvider:(id)provider
{
  obj = provider;
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

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarCardView;
  changeCopy = change;
  [(CarCardView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CarCardView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CarCardView *)self _updateInterfaceStyleRelatedViews];
  }
}

- (void)_handleTapOnAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy type] == 1 || objc_msgSend(accessoryCopy, "type") == 2)
  {
    [(CarCardView *)self _closeButtonTapped:0];
  }

  else if ([accessoryCopy type] == 4 || objc_msgSend(accessoryCopy, "type") == 3)
  {
    handler = [accessoryCopy handler];

    if (handler)
    {
      handler2 = [accessoryCopy handler];
      handler2[2]();
    }
  }
}

- (void)updateHeaderWithTitle:(id)title primaryAccessory:(id)accessory secondaryAccessory:(id)secondaryAccessory leadingImage:(id)image handler:(id)handler
{
  titleCopy = title;
  accessoryCopy = accessory;
  secondaryAccessoryCopy = secondaryAccessory;
  imageCopy = image;
  handlerCopy = handler;
  [(NSLayoutConstraint *)self->_constraintAccessoryBarPosition setActive:0];
  title = [(CarCardView *)self title];
  if (title)
  {

    goto LABEL_3;
  }

  if (accessoryCopy && [accessoryCopy type])
  {
LABEL_3:
    accessoryBar = [(CarCardView *)self accessoryBar];
    if (!accessoryBar)
    {
      parentViewController = [(CarCardView *)self parentViewController];

      if (!parentViewController)
      {
LABEL_7:
        accessoryBar2 = [(CarCardView *)self accessoryBar];
        [accessoryBar2 updateWithTitle:titleCopy primaryAccessory:accessoryCopy secondaryAccessory:secondaryAccessoryCopy leadingImage:imageCopy];

        accessoryContainerView = [(CarCardView *)self accessoryContainerView];
        topAnchor = [accessoryContainerView topAnchor];
        goto LABEL_11;
      }

      v19 = [_TtC4Maps19CarCardAccessoryBar alloc];
      parentViewController2 = [(CarCardView *)self parentViewController];
      v21 = [(CarCardAccessoryBar *)v19 initWithParentViewController:parentViewController2 accessoryTapHandler:handlerCopy];
      [(CarCardView *)self setAccessoryBar:v21];

      accessoryBar3 = [(CarCardView *)self accessoryBar];
      [accessoryBar3 setTranslatesAutoresizingMaskIntoConstraints:0];

      accessoryContainerView2 = [(CarCardView *)self accessoryContainerView];
      accessoryBar4 = [(CarCardView *)self accessoryBar];
      [accessoryContainerView2 addSubview:accessoryBar4];

      accessoryBar = [(CarCardView *)self accessoryBar];
      accessoryContainerView3 = [(CarCardView *)self accessoryContainerView];
      LODWORD(v26) = 1148846080;
      v27 = [accessoryBar _maps_constraintsEqualToEdgesOfView:accessoryContainerView3 priority:v26];
      [v27 allConstraints];
      v29 = v28 = handlerCopy;
      [NSLayoutConstraint activateConstraints:v29];

      handlerCopy = v28;
    }

    goto LABEL_7;
  }

  accessoryContainerView = [(CarCardView *)self accessoryContainerView];
  topAnchor = [accessoryContainerView bottomAnchor];
LABEL_11:
  v33 = topAnchor;
  containerView = [(CarCardView *)self containerView];
  topAnchor2 = [containerView topAnchor];
  v36 = [v33 constraintEqualToAnchor:topAnchor2];
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

- (void)_chevronButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [tappedCopy setSelected:{objc_msgSend(tappedCopy, "isSelected") ^ 1}];
  delegate = [(CarCardView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CarCardView *)self delegate];
    [delegate2 carCardView:self chevronButtonSelected:tappedCopy];
  }
}

- (void)_customAccessoryTapped:(id)tapped
{
  if (tapped)
  {
    tappedCopy = tapped;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will call custom button handler.", v6, 2u);
    }

    handler = [tappedCopy handler];

    handler[2](handler);
  }
}

- (void)_customButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  primaryButtonView = [(CarCardView *)self primaryButtonView];

  if (primaryButtonView == tappedCopy)
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

- (void)_closeButtonTapped:(id)tapped
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will close the current context.", v8, 2u);
  }

  delegate = [(CarCardView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CarCardView *)self delegate];
    [delegate2 carCardViewCloseButtonTapped:self];
  }
}

- (void)setAccessoryImage:(id)image
{
  imageCopy = image;
  if (self->_accessoryImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_accessoryImage, image);
    [(CarCardView *)self _setNeedsRefreshAccessories];
    imageCopy = v6;
  }
}

- (void)setAccessoryType:(unint64_t)type
{
  v4 = [[CarCardAccessory alloc] initWithType:type];
  [(CarCardView *)self setPrimaryAccessory:v4];
}

- (unint64_t)accessoryType
{
  primaryAccessory = [(CarCardView *)self primaryAccessory];
  type = [primaryAccessory type];

  return type;
}

- (void)setSecondaryAccessory:(id)accessory
{
  accessoryCopy = accessory;
  secondaryAccessory = self->_secondaryAccessory;
  v10 = accessoryCopy;
  v7 = secondaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryAccessory, accessory);
      [(CarCardView *)self _setNeedsRefreshAccessories];
      v8 = v10;
    }
  }
}

- (void)setPrimaryAccessory:(id)accessory
{
  accessoryCopy = accessory;
  primaryAccessory = self->_primaryAccessory;
  v10 = accessoryCopy;
  v7 = primaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryAccessory, accessory);
      [(CarCardView *)self _setNeedsRefreshAccessories];
      v8 = v10;
    }
  }
}

- (void)setTitleNumberOfLines:(int64_t)lines
{
  if (self->_titleNumberOfLines != lines)
  {
    self->_titleNumberOfLines = lines;
    [(CarCardView *)self _setNeedsRefreshAccessories];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_title, title);
    [(CarCardView *)self _setNeedsRefreshAccessories];
    titleCopy = v6;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceivePress:(id)press
{
  responder = [press responder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = responder;
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
    accessoryBar = [(CarCardView *)self accessoryBar];
    if (accessoryBar)
    {
      v10 = accessoryBar;
      accessoryBar2 = [(CarCardView *)self accessoryBar];
      [accessoryBar2 frame];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  [touchCopy locationInView:self];
  v7 = v6;
  v9 = v8;
  [(CarCardView *)self selectionTriggerHeight];
  v11 = v10 <= 0.0 || v9 <= v10;
  if (v11 && ([touchCopy view], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) == 0))
  {
    accessoryBar = [(CarCardView *)self accessoryBar];
    if (accessoryBar)
    {
      v17 = accessoryBar;
      accessoryBar2 = [(CarCardView *)self accessoryBar];
      [accessoryBar2 frame];
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

- (void)_setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    if (highlighted)
    {
      v4 = 0.800000012;
    }

    else
    {
      v4 = 1.0;
    }

    backgroundView = [(CarCardView *)self backgroundView];
    [backgroundView setAlpha:v4];
  }
}

- (void)handlePress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    selfCopy2 = self;
    v6 = 1;
LABEL_3:
    [(CarCardView *)selfCopy2 _setHighlighted:v6];
    goto LABEL_4;
  }

  if ([pressCopy state] != 3)
  {
    if ([pressCopy state] == 2)
    {
      goto LABEL_4;
    }

    selfCopy2 = self;
    v6 = 0;
    goto LABEL_3;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009B5FF0;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [UIView animateWithDuration:v9 animations:0.25];
  selectionHandler = [(CarCardView *)self selectionHandler];

  if (selectionHandler)
  {
    selectionHandler2 = [(CarCardView *)self selectionHandler];
    [pressCopy locationInView:self];
    selectionHandler2[2](selectionHandler2);
  }

LABEL_4:
}

- (void)_setFocusable:(BOOL)focusable
{
  if (self->_focusable != focusable)
  {
    self->_focusable = focusable;
    if (focusable)
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  [(CarCardView *)self _updateFocusRing:context];
  isEffectivelyFocused = [(CarCardView *)self isEffectivelyFocused];
  delegate = [(CarCardView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CarCardView *)self delegate];
    [delegate2 carCardView:self didChangeFocus:isEffectivelyFocused];
  }

  content = [(CarCardView *)self content];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    content2 = [(CarCardView *)self content];
    [content2 cardDidUpdateFocus:isEffectivelyFocused];
  }
}

- (BOOL)_canAnchorBecomeFocused
{
  v3 = +[CarDisplayController sharedInstance];
  chromeViewController = [v3 chromeViewController];
  if (([chromeViewController isAutohidingContentHiddenForCurrentContext] & 1) != 0 || !self->_focusable)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(CarCardView *)self isHidden]^ 1;
  }

  return v5;
}

- (void)setSelectionHandler:(id)handler
{
  v4 = [handler copy];
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

    accessoryBar = [(CarCardView *)self accessoryBar];

    if (accessoryBar)
    {
      accessoryBar2 = [(CarCardView *)self accessoryBar];
      focusOrderSubItems = [accessoryBar2 focusOrderSubItems];
      [v4 addObjectsFromArray:focusOrderSubItems];
    }

    content = [(CarCardView *)self content];
    focusOrderSubItems2 = [content focusOrderSubItems];
    [v4 addObjectsFromArray:focusOrderSubItems2];

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
    preferredFocusEnvironments = [NSArray arrayWithObjects:&focusAnchor count:1];
  }

  else
  {
    content = [(CarCardView *)self content];

    if (!content)
    {
LABEL_2:
      preferredFocusEnvironments = &__NSArray0__struct;
      goto LABEL_7;
    }

    content2 = [(CarCardView *)self content];
    preferredFocusEnvironments = [content2 preferredFocusEnvironments];
  }

LABEL_7:

  return preferredFocusEnvironments;
}

- (void)_setLayout:(id)layout
{
  layoutCopy = layout;
  objc_storeStrong(&self->_layout, layout);
  [(CarCardView *)self _updateHuggingCompressionPriorities];
  v5 = sub_100083670([(CarCardLayout *)self->_layout pinnedEdges]);
  if (self->_roundedCorners != v5)
  {
    self->_roundedCorners = v5;
    [(CarCardView *)self _applyCornerMask];
  }
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  styleProvider = [(CarCardView *)self styleProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    styleProvider2 = [(CarCardView *)self styleProvider];
    v8 = [styleProvider2 validateCarCardLayout:layoutCopy];

    layoutCopy = v8;
  }

  v9 = self->_layout;
  v10 = layoutCopy;
  edgePosition = [(CarCardLayout *)v9 edgePosition];
  if (edgePosition != [v10 edgePosition] || (v12 = -[CarCardLayout cornerPosition](v9, "cornerPosition"), v12 != objc_msgSend(v10, "cornerPosition")) || (v13 = -[CarCardLayout primaryAxis](v9, "primaryAxis"), v13 != objc_msgSend(v10, "primaryAxis")) || (v14 = -[CarCardLayout pinnedEdges](v9, "pinnedEdges"), v14 != objc_msgSend(v10, "pinnedEdges")) || (v15 = -[CarCardLayout primaryAxisFillMode](v9, "primaryAxisFillMode"), v15 != objc_msgSend(v10, "primaryAxisFillMode")) || (-[CarCardLayout primaryAxisFillModePriority](v9, "primaryAxisFillModePriority"), v17 = v16, objc_msgSend(v10, "primaryAxisFillModePriority"), v17 != v18) || (v19 = -[CarCardLayout secondaryAxisFillMode](v9, "secondaryAxisFillMode"), v19 != objc_msgSend(v10, "secondaryAxisFillMode")) || (-[CarCardLayout secondaryAxisFillModePriority](v9, "secondaryAxisFillModePriority"), v21 = v20, objc_msgSend(v10, "secondaryAxisFillModePriority"), v21 != v22) || (v23 = -[CarCardLayout flipForRightHandDrive](v9, "flipForRightHandDrive"), v23 != objc_msgSend(v10, "flipForRightHandDrive")) || (v24 = -[CarCardLayout edgesAffectingMapInsets](v9, "edgesAffectingMapInsets"), v24 != objc_msgSend(v10, "edgesAffectingMapInsets")) || (v25 = -[CarCardLayout horizontallyCenterMapInsets](v9, "horizontallyCenterMapInsets"), v25 != objc_msgSend(v10, "horizontallyCenterMapInsets")) || (-[CarCardLayout margins](v9, "margins"), v30 = v29, v32 = v31, v34 = v33, v36 = v35, objc_msgSend(v10, "margins"), v32 != v40) || v30 != v37 || v36 != v39)
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

- (void)setContent:(id)content
{
  contentCopy = content;
  if (self->_content != contentCopy)
  {
    content = [(CarCardView *)self content];
    objc_storeStrong(&self->_content, content);
    if (content)
    {
      if ([content isViewLoaded])
      {
        view = [content view];
        superview = [view superview];
        containerView = [(CarCardView *)self containerView];

        if (superview == containerView)
        {
          view2 = [content view];
          [view2 removeFromSuperview];
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_styleProvider);

    if (WeakRetained == content)
    {
      [(CarCardView *)self setStyleProvider:0];
    }

    if (contentCopy)
    {
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1009B6A50;
      v15 = &unk_101661A90;
      selfCopy = self;
      v17 = contentCopy;
      [UIView performWithoutAnimation:&v12];
    }

    [(CarCardView *)self _setNeedsRefreshAccessories:v12];
  }
}

- (void)setParentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  obj = controllerCopy;
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

- (CarCardView)initWithContent:(id)content
{
  contentCopy = content;
  v5 = [(CarCardView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(CarCardView *)v5 setContent:contentCopy];
  }

  return v6;
}

- (CarCardView)initWithFrame:(CGRect)frame
{
  v60.receiver = self;
  v60.super_class = CarCardView;
  v3 = [(CarCardView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    cornerPosition = [(CarCardLayout *)v11 cornerPosition];
    if (v12)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v11 cornerPosition]== 1 || [(CarCardLayout *)v11 edgePosition]== 2)
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
      v15 = cornerPosition == 4 || [(CarCardLayout *)v11 cornerPosition]== 8 || [(CarCardLayout *)v11 edgePosition]== 4;
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
    heightAnchor = [(CarCardView *)v4 heightAnchor];
    v27 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
    minimumHeightConstraint = v4->_minimumHeightConstraint;
    v4->_minimumHeightConstraint = v27;

    [(NSLayoutConstraint *)v4->_minimumHeightConstraint setActive:1];
    topAnchor = [(CarCardFocusAnchor *)v4->_focusAnchor topAnchor];
    topAnchor2 = [(CarCardView *)v4 topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v61[0] = v51;
    leftAnchor = [(CarCardFocusAnchor *)v4->_focusAnchor leftAnchor];
    leftAnchor2 = [(CarCardView *)v4 leftAnchor];
    v48 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v61[1] = v48;
    rightAnchor = [(CarCardFocusAnchor *)v4->_focusAnchor rightAnchor];
    rightAnchor2 = [(CarCardView *)v4 rightAnchor];
    v45 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v61[2] = v45;
    heightAnchor2 = [(CarCardFocusAnchor *)v4->_focusAnchor heightAnchor];
    v43 = [heightAnchor2 constraintEqualToConstant:1.0];
    v61[3] = v43;
    topAnchor3 = [v55 topAnchor];
    topAnchor4 = [(CarCardView *)v4 topAnchor];
    v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v61[4] = v40;
    leftAnchor3 = [v55 leftAnchor];
    leftAnchor4 = [(CarCardView *)v4 leftAnchor];
    v30 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v61[5] = v30;
    bottomAnchor = [v55 bottomAnchor];
    bottomAnchor2 = [(CarCardView *)v4 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v61[6] = v33;
    rightAnchor3 = [v55 rightAnchor];
    rightAnchor4 = [(CarCardView *)v4 rightAnchor];
    v36 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
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