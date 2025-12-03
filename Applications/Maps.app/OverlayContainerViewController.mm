@interface OverlayContainerViewController
- (NSArray)_topBannerViewHorizontalConstraints;
- (UIView)passThroughView;
- (double)_topEdgePadding;
- (double)topEdgeInset;
- (double)topLabelEdgeInset;
- (id)_topBannerViewConstraints;
- (void)applyTransitionWithProgress:(double)progress;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style;
- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout completion:(id)completion;
- (void)setTopContentSizeStyle:(unint64_t)style;
- (void)setupConstraints;
- (void)updateContainerStyleDependentConstraints;
- (void)updateEdgeInsets:(UIEdgeInsets)insets immediately:(BOOL)immediately;
- (void)updateInnerLayoutGuideConstraints;
- (void)updateTopBannerViewWithTopBannerItems:(id)items;
- (void)updateViewsForCustomDismissalTransition;
- (void)updateViewsForCustomPresentationTransition;
- (void)viewControllerWantsTopBannerItemsUpdate:(id)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OverlayContainerViewController

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v53 viewDidLoad];
  v3 = *&CGAffineTransformIdentity.c;
  *&self->_modeTransitiontransform.a = *&CGAffineTransformIdentity.a;
  *&self->_modeTransitiontransform.c = v3;
  *&self->_modeTransitiontransform.tx = *&CGAffineTransformIdentity.tx;
  view = [(OverlayContainerViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view2 = [(OverlayContainerViewController *)self view];
  [view2 setAccessibilityIdentifier:@"OverlayContainerView"];

  v14 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  topContentView = self->_topContentView;
  self->_topContentView = v14;

  [(UIView *)self->_topContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = +[UIColor clearColor];
  [(UIView *)self->_topContentView setBackgroundColor:v16];

  [(UIView *)self->_topContentView setClipsToBounds:1];
  view3 = [(OverlayContainerViewController *)self view];
  v18 = self->_topContentView;
  containerView = [(ContainerViewController *)self containerView];
  [view3 insertSubview:v18 belowSubview:containerView];

  v20 = [[PassThroughView alloc] initWithFrame:v6, v8, v10, v12];
  [(PassThroughView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = +[UIColor clearColor];
  [(PassThroughView *)v20 setBackgroundColor:v21];

  [(PassThroughView *)v20 setDelegate:self];
  overlayView = self->_overlayView;
  self->_overlayView = v20;
  v52 = v20;

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = [NSString stringWithFormat:@"%@.OverlayView", v24];
  [(UIView *)self->_overlayView setAccessibilityIdentifier:v25];

  view4 = [(OverlayContainerViewController *)self view];
  [view4 insertSubview:self->_overlayView belowSubview:self->_topContentView];

  v27 = objc_alloc_init(UILayoutGuide);
  overlayLayoutGuide = self->_overlayLayoutGuide;
  self->_overlayLayoutGuide = v27;

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = [NSString stringWithFormat:@"%@.overlayLayoutGuide", v30];
  [(UILayoutGuide *)self->_overlayLayoutGuide setIdentifier:v31];

  view5 = [(OverlayContainerViewController *)self view];
  [view5 addLayoutGuide:self->_overlayLayoutGuide];

  v33 = self->_overlayLayoutGuide;
  view6 = [(OverlayContainerViewController *)self view];
  LODWORD(v35) = 1148846080;
  v36 = [(UILayoutGuide *)v33 _maps_constraintsEqualToEdgesOfView:view6 priority:v35];
  overlayLayoutGuideConstraints = self->_overlayLayoutGuideConstraints;
  self->_overlayLayoutGuideConstraints = v36;

  allConstraints = [(MapsEdgeConstraints *)self->_overlayLayoutGuideConstraints allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  LODWORD(v39) = 1148846080;
  v40 = [(UIView *)self->_overlayView _maps_constraintsEqualToEdgesOfLayoutGuide:self->_overlayLayoutGuide priority:v39];
  allConstraints2 = [v40 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints2];

  v42 = objc_alloc_init(UILayoutGuide);
  innerLayoutGuide = self->_innerLayoutGuide;
  self->_innerLayoutGuide = v42;

  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v46 = [NSString stringWithFormat:@"%@.innerLayoutGuide", v45];
  [(UILayoutGuide *)self->_innerLayoutGuide setIdentifier:v46];

  view7 = [(OverlayContainerViewController *)self view];
  [view7 addLayoutGuide:self->_innerLayoutGuide];

  LODWORD(v48) = 1148846080;
  v49 = [(UILayoutGuide *)self->_innerLayoutGuide _maps_constraintsEqualToEdgesOfLayoutGuide:self->_overlayLayoutGuide priority:v48];
  innerLayoutGuideConstraints = self->_innerLayoutGuideConstraints;
  self->_innerLayoutGuideConstraints = v49;

  [(OverlayContainerViewController *)self updateInnerLayoutGuideConstraints];
  allConstraints3 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints3];

  self->_usesFadingLabels = GEOConfigGetBOOL();
  self->_usesVariableBlur = GEOConfigGetBOOL();
}

- (void)updateInnerLayoutGuideConstraints
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = sub_100019A44();
    if (_UISolariumEnabled())
    {
      v4 = 0.0;
    }

    else
    {
      v4 = v3;
    }

    p_innerLayoutGuideConstraints = &self->_innerLayoutGuideConstraints;
    topConstraint = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints topConstraint];
    [topConstraint setConstant:v4];

    leadingConstraint = [(MapsEdgeConstraints *)*p_innerLayoutGuideConstraints leadingConstraint];
    [leadingConstraint setConstant:v3];

    bottomConstraint = [(MapsEdgeConstraints *)*p_innerLayoutGuideConstraints bottomConstraint];
    [bottomConstraint setConstant:v3];
  }

  else
  {
    [(OverlayContainerViewController *)self _topEdgePadding];
    v10 = v9;
    p_innerLayoutGuideConstraints = &self->_innerLayoutGuideConstraints;
    topConstraint2 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints topConstraint];
    [topConstraint2 setConstant:v10];

    v12 = sub_100019A44();
    leadingConstraint2 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints leadingConstraint];
    [leadingConstraint2 setConstant:v12];

    [(ContainerViewController *)self bottomEdgePadding];
    v15 = v14;
    bottomConstraint2 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints bottomConstraint];
    [bottomConstraint2 setConstant:v15];

    [(ContainerViewController *)self edgePadding];
    v3 = v17;
  }

  trailingConstraint = [(MapsEdgeConstraints *)*p_innerLayoutGuideConstraints trailingConstraint];
  [trailingConstraint setConstant:v3];
}

- (double)topEdgeInset
{
  [(NSLayoutConstraint *)self->_overlayToTopInsetConstraint constant];
  v4 = v3;
  if ([(ContainerViewController *)self containerStyle]== 1)
  {
    topContentView = [(OverlayContainerViewController *)self topContentView];
    [topContentView frame];
    MaxY = CGRectGetMaxY(v13);
    [(ContainerViewController *)self statusBarHeight];
    if (MaxY <= v7)
    {
      [(ContainerViewController *)self statusBarHeight];
      v9 = v11;
    }

    else
    {
      topContentView2 = [(OverlayContainerViewController *)self topContentView];
      [topContentView2 frame];
      v9 = CGRectGetMaxY(v14);
    }
  }

  else
  {
    [(ContainerViewController *)self statusBarHeight];
    v9 = v10;
  }

  return v9 - v4;
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v12 viewDidLayoutSubviews];
  superview = [(TopBannerView *)self->_topBannerView superview];

  if (superview)
  {
    [(OverlayContainerViewController *)self _topBannerMaxHeight];
    v5 = v4;
    topBannerView = [(OverlayContainerViewController *)self topBannerView];
    [topBannerView setMaximumHeight:v5];

    [(TopBannerView *)self->_topBannerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
    v8 = v7;
    [(ContainerViewController *)self edgePadding];
    v10 = -(v8 + v9);
  }

  else
  {
    v10 = 0.0;
  }

  [(NSLayoutConstraint *)self->_overlayToTopInsetConstraint constant];
  if (v10 != v11)
  {
    [(NSLayoutConstraint *)self->_overlayToTopInsetConstraint setConstant:v10];
    [(ContainerViewController *)self updateMapEdgeInsets];
  }

  [(OverlayContainerViewController *)self updateInnerLayoutGuideConstraints];
}

- (void)updateContainerStyleDependentConstraints
{
  topContentView = [(OverlayContainerViewController *)self topContentView];
  isHidden = [topContentView isHidden];

  if ((isHidden & 1) == 0)
  {
    containerStyle = [(ContainerViewController *)self containerStyle];
    if (containerStyle >= 8 || (v6 = 0.0, ((0xE3u >> containerStyle) & 1) == 0))
    {
      [(ContainerViewController *)self edgePadding];
    }

    [(NSLayoutConstraint *)self->_topContentConstraint setConstant:v6];
    if ([(NSArray *)self->_topContentHorizontalConstraints count])
    {
      [NSLayoutConstraint deactivateConstraints:self->_topContentHorizontalConstraints];
    }

    if ([(ContainerViewController *)self containerStyle]== 6 || [(ContainerViewController *)self containerStyle]== 4)
    {
      containerView = [(ContainerViewController *)self containerView];
      trailingAnchor = [containerView trailingAnchor];

      view = [(OverlayContainerViewController *)self view];
    }

    else
    {
      containerView2 = [(ContainerViewController *)self containerView];
      trailingAnchor = [containerView2 leadingAnchor];

      view = [(ContainerViewController *)self containerView];
    }

    v11 = view;
    trailingAnchor2 = [view trailingAnchor];

    overlayView = [(OverlayContainerViewController *)self overlayView];
    superview = [overlayView superview];

    if (!superview)
    {
      goto LABEL_22;
    }

    containerStyle2 = [(ContainerViewController *)self containerStyle];
    v16 = 0.0;
    if (containerStyle2 <= 7 && ((1 << containerStyle2) & 0xE3) != 0)
    {
      if (_UISolariumEnabled())
      {
        v16 = sub_100019A44();
      }
    }

    topContentView2 = [(OverlayContainerViewController *)self topContentView];
    leadingAnchor = [topContentView2 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:v16];
    v29 = v19;
    v20 = [NSArray arrayWithObjects:&v29 count:1];
    v21 = [NSMutableArray arrayWithArray:v20];

    topContentSizeStyle = self->_topContentSizeStyle;
    if (topContentSizeStyle == 1)
    {
      topContentView3 = [(OverlayContainerViewController *)self topContentView];
      trailingAnchor3 = [topContentView3 trailingAnchor];
      v25 = [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:v16];
    }

    else
    {
      if (topContentSizeStyle)
      {
LABEL_21:
        topContentHorizontalConstraints = self->_topContentHorizontalConstraints;
        self->_topContentHorizontalConstraints = v21;
        v28 = v21;

        [NSLayoutConstraint activateConstraints:self->_topContentHorizontalConstraints];
LABEL_22:

        return;
      }

      topContentView3 = [(OverlayContainerViewController *)self topContentView];
      trailingAnchor3 = [topContentView3 trailingAnchor];
      v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v16];
    }

    v26 = v25;
    [(NSArray *)v21 addObject:v25];

    goto LABEL_21;
  }
}

- (double)topLabelEdgeInset
{
  if (self->_usesVariableBlur && !self->_usesFadingLabels)
  {
    return 0.0;
  }

  [(ContainerViewController *)self statusBarHeight];
  return result;
}

- (void)setupConstraints
{
  if (!self->_topContentConstraint)
  {
    topContentView = self->_topContentView;
    v4 = *&CGAffineTransformIdentity.c;
    v15[0] = *&CGAffineTransformIdentity.a;
    v15[1] = v4;
    v15[2] = *&CGAffineTransformIdentity.tx;
    [(UIView *)topContentView setTransform:v15];
    topAnchor = [(UIView *)self->_topContentView topAnchor];
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    viewportLayoutGuide = [chromeViewController viewportLayoutGuide];
    topAnchor2 = [viewportLayoutGuide topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    topContentConstraint = self->_topContentConstraint;
    self->_topContentConstraint = v9;

    heightAnchor = [(UIView *)self->_topContentView heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:0.0];

    LODWORD(v13) = 1.0;
    [v12 setPriority:v13];
    v16[0] = self->_topContentConstraint;
    v16[1] = v12;
    v14 = [NSArray arrayWithObjects:v16 count:2];
    [NSLayoutConstraint activateConstraints:v14];

    [(OverlayContainerViewController *)self updateContainerStyleDependentConstraints];
  }
}

- (NSArray)_topBannerViewHorizontalConstraints
{
  topBannerView = [(OverlayContainerViewController *)self topBannerView];
  leadingAnchor = [topBannerView leadingAnchor];
  overlayView = [(OverlayContainerViewController *)self overlayView];
  leadingAnchor2 = [overlayView leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_100019A44()];
  v15[0] = v6;
  topBannerView2 = [(OverlayContainerViewController *)self topBannerView];
  trailingAnchor = [topBannerView2 trailingAnchor];
  overlayView2 = [(OverlayContainerViewController *)self overlayView];
  trailingAnchor2 = [overlayView2 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-sub_100019A44()];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  return v12;
}

- (id)_topBannerViewConstraints
{
  if (self->_topBannerView)
  {
    v3 = +[NSMutableArray array];
    _topBannerViewHorizontalConstraints = [(OverlayContainerViewController *)self _topBannerViewHorizontalConstraints];
    [v3 addObjectsFromArray:_topBannerViewHorizontalConstraints];

    topBannerView = [(OverlayContainerViewController *)self topBannerView];
    topAnchor = [topBannerView topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_innerLayoutGuide topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v3 addObject:v8];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateTopBannerViewWithTopBannerItems:(id)items
{
  itemsCopy = items;
  items = [(TopBannerView *)self->_topBannerView items];
  if (items != itemsCopy)
  {
    items2 = [(TopBannerView *)self->_topBannerView items];
    v6 = [itemsCopy isEqualToArray:items2];

    v7 = itemsCopy;
    if (v6)
    {
      goto LABEL_12;
    }

    v8 = [itemsCopy count];
    topBannerView = self->_topBannerView;
    if (v8)
    {
      if (!topBannerView)
      {
        v10 = [(CardView *)[TopBannerView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
        v11 = self->_topBannerView;
        self->_topBannerView = v10;

        blurGroupName = [(ContainerViewController *)self blurGroupName];
        [(CardView *)self->_topBannerView setBlurGroupName:blurGroupName];

        [(TopBannerView *)self->_topBannerView setTranslatesAutoresizingMaskIntoConstraints:0];
        topBannerView = self->_topBannerView;
      }

      [(TopBannerView *)topBannerView setItems:itemsCopy];
      superview = [(TopBannerView *)self->_topBannerView superview];

      if (!superview)
      {
        overlayView = [(OverlayContainerViewController *)self overlayView];
        topBannerView = [(OverlayContainerViewController *)self topBannerView];
        [overlayView addSubview:topBannerView];

        _topBannerViewConstraints = [(OverlayContainerViewController *)self _topBannerViewConstraints];
        [NSLayoutConstraint activateConstraints:_topBannerViewConstraints];
      }
    }

    else
    {
      superview2 = [(TopBannerView *)topBannerView superview];

      v7 = itemsCopy;
      if (!superview2)
      {
        goto LABEL_12;
      }

      [(TopBannerView *)self->_topBannerView setItems:0];
      [(TopBannerView *)self->_topBannerView removeFromSuperview];
    }

    items = [(OverlayContainerViewController *)self view];
    [items setNeedsLayout];
  }

  v7 = itemsCopy;
LABEL_12:
}

- (void)viewControllerWantsTopBannerItemsUpdate:(id)update
{
  updateCopy = update;
  currentViewController = [(ContainerViewController *)self currentViewController];

  v5 = updateCopy;
  if (currentViewController == updateCopy)
  {
    topBannerItems = [updateCopy topBannerItems];
    [(OverlayContainerViewController *)self updateTopBannerViewWithTopBannerItems:topBannerItems];

    v5 = updateCopy;
  }
}

- (void)updateEdgeInsets:(UIEdgeInsets)insets immediately:(BOOL)immediately
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v9.receiver = self;
  v9.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v9 updateEdgeInsets:immediately immediately:?];
  [(MapsEdgeConstraints *)self->_overlayLayoutGuideConstraints setConstantsFromEdgeInsets:top, left, bottom, right];
}

- (void)setTopContentSizeStyle:(unint64_t)style
{
  if (self->_topContentSizeStyle != style)
  {
    self->_topContentSizeStyle = style;
    [(OverlayContainerViewController *)self updateContainerStyleDependentConstraints];
  }
}

- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout completion:(id)completion
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v12 presentController:controllerCopy animated:animatedCopy useDefaultContaineeLayout:layoutCopy completion:completion];
  if (objc_opt_respondsToSelector())
  {
    v11 = controllerCopy;
    [v11 setBannerContainer:self];
    [(OverlayContainerViewController *)self viewControllerWantsTopBannerItemsUpdate:v11];
  }

  else
  {
    [(OverlayContainerViewController *)self updateTopBannerViewWithTopBannerItems:0];
  }
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style
{
  v11.receiver = self;
  v11.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v11 containerStyleManagerConfigureLayoutForStyle:style];
  [(OverlayContainerViewController *)self updateContainerStyleDependentConstraints];
  topContentView = [(OverlayContainerViewController *)self topContentView];
  isHidden = [topContentView isHidden];

  if ((isHidden & 1) == 0)
  {
    if (_UISolariumEnabled())
    {
      topContentView2 = [(OverlayContainerViewController *)self topContentView];
      +[MapsTheme cardCornerRadius];
      [topContentView2 _setContinuousCornerRadius:?];
    }

    else
    {
      containerStyle = [(ContainerViewController *)self containerStyle];
      if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0)
      {
        topContentView2 = [(OverlayContainerViewController *)self topContentView];
        layer = [topContentView2 layer];
        v9 = layer;
        v10 = 0.0;
      }

      else
      {
        topContentView2 = [(OverlayContainerViewController *)self topContentView];
        layer = [topContentView2 layer];
        v9 = layer;
        v10 = 10.0;
      }

      [layer setCornerRadius:v10];
    }
  }
}

- (double)_topEdgePadding
{
  if (_UISolariumEnabled())
  {
    v3 = 6.0;
    if (sub_10000FA08(self) != 1)
    {
      v4 = +[UIDevice currentDevice];
      v3 = 0.0;
      if ([v4 orientation] - 1 >= 2)
      {
        v3 = sub_100019A44();
      }
    }

    return v3;
  }

  else
  {

    [(ContainerViewController *)self edgePadding];
  }

  return result;
}

- (void)applyTransitionWithProgress:(double)progress
{
  v39.receiver = self;
  v39.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v39 applyTransitionWithProgress:?];
  overlayView = [(OverlayContainerViewController *)self overlayView];
  [overlayView setAlpha:progress];

  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView frame];
  MaxY = CGRectGetMaxY(v41);
  v8 = 1.0 - progress;
  CGAffineTransformMakeTranslation(&v38, 0.0, -(v8 * MaxY));
  topContentView2 = [(OverlayContainerViewController *)self topContentView];
  v37 = v38;
  [topContentView2 setTransform:&v37];

  v10 = *&CGAffineTransformIdentity.c;
  *&v37.a = *&CGAffineTransformIdentity.a;
  *&v37.c = v10;
  *&v37.tx = *&CGAffineTransformIdentity.tx;
  p_modeTransitiontransform = &self->_modeTransitiontransform;
  v12 = *&self->_modeTransitiontransform.c;
  *&t1.a = *&self->_modeTransitiontransform.a;
  *&t1.c = v12;
  *&t1.tx = *&self->_modeTransitiontransform.tx;
  *&t2.a = *&v37.a;
  *&t2.c = v10;
  *&t2.tx = *&v37.tx;
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    if ([(ContainerViewController *)self containerStyle]== 6)
    {
      view = [(OverlayContainerViewController *)self view];
      v14 = [view effectiveUserInterfaceLayoutDirection] == 1;

      stackOnOppositeSide = [(ContainerViewController *)self stackOnOppositeSide];
      containerView = [(ContainerViewController *)self containerView];
      [containerView frame];
      if (v14 == stackOnOppositeSide)
      {
        v8 = -v8;
        MaxX = CGRectGetMaxX(*&v17);
      }

      else
      {
        MaxX = CGRectGetMinX(*&v17);
      }

      v23 = MaxX * v8;
      v22 = 0.0;
    }

    else
    {
      containerView = [(ContainerViewController *)self containerView];
      [containerView frame];
      v22 = CGRectGetHeight(v42) * v8;
      v23 = 0.0;
    }

    CGAffineTransformMakeTranslation(&v37, v23, v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  visibleCardViews = [(ContainerViewController *)self visibleCardViews];
  v25 = [visibleCardViews countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(visibleCardViews);
        }

        v29 = *(*(&v31 + 1) + 8 * i);
        t1 = v37;
        [v29 setTransform:&t1];
      }

      v26 = [visibleCardViews countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v26);
  }

  v30 = *&v37.c;
  *&p_modeTransitiontransform->a = *&v37.a;
  *&p_modeTransitiontransform->c = v30;
  *&p_modeTransitiontransform->tx = *&v37.tx;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v5 viewWillDisappear:disappear];
  topContentConstraint = self->_topContentConstraint;
  self->_topContentConstraint = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v4 viewDidAppear:appear];
  [(OverlayContainerViewController *)self setupConstraints];
}

- (UIView)passThroughView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  return passThroughView;
}

- (void)updateViewsForCustomDismissalTransition
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  view = [(OverlayContainerViewController *)self view];
  subviews = [view subviews];

  v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v12 + 1) + 8 * v8) setAlpha:1.0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

  chromeViewController3 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController3 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (void)updateViewsForCustomPresentationTransition
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  view = [(OverlayContainerViewController *)self view];
  subviews = [view subviews];

  v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v12 + 1) + 8 * v8) setAlpha:0.0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

  chromeViewController3 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController3 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

@end