@interface OverlayContainerViewController
- (NSArray)_topBannerViewHorizontalConstraints;
- (UIView)passThroughView;
- (double)_topEdgePadding;
- (double)topEdgeInset;
- (double)topLabelEdgeInset;
- (id)_topBannerViewConstraints;
- (void)applyTransitionWithProgress:(double)a3;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3;
- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5 completion:(id)a6;
- (void)setTopContentSizeStyle:(unint64_t)a3;
- (void)setupConstraints;
- (void)updateContainerStyleDependentConstraints;
- (void)updateEdgeInsets:(UIEdgeInsets)a3 immediately:(BOOL)a4;
- (void)updateInnerLayoutGuideConstraints;
- (void)updateTopBannerViewWithTopBannerItems:(id)a3;
- (void)updateViewsForCustomDismissalTransition;
- (void)updateViewsForCustomPresentationTransition;
- (void)viewControllerWantsTopBannerItemsUpdate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
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
  v4 = [(OverlayContainerViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(OverlayContainerViewController *)self view];
  [v13 setAccessibilityIdentifier:@"OverlayContainerView"];

  v14 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  topContentView = self->_topContentView;
  self->_topContentView = v14;

  [(UIView *)self->_topContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = +[UIColor clearColor];
  [(UIView *)self->_topContentView setBackgroundColor:v16];

  [(UIView *)self->_topContentView setClipsToBounds:1];
  v17 = [(OverlayContainerViewController *)self view];
  v18 = self->_topContentView;
  v19 = [(ContainerViewController *)self containerView];
  [v17 insertSubview:v18 belowSubview:v19];

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

  v26 = [(OverlayContainerViewController *)self view];
  [v26 insertSubview:self->_overlayView belowSubview:self->_topContentView];

  v27 = objc_alloc_init(UILayoutGuide);
  overlayLayoutGuide = self->_overlayLayoutGuide;
  self->_overlayLayoutGuide = v27;

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = [NSString stringWithFormat:@"%@.overlayLayoutGuide", v30];
  [(UILayoutGuide *)self->_overlayLayoutGuide setIdentifier:v31];

  v32 = [(OverlayContainerViewController *)self view];
  [v32 addLayoutGuide:self->_overlayLayoutGuide];

  v33 = self->_overlayLayoutGuide;
  v34 = [(OverlayContainerViewController *)self view];
  LODWORD(v35) = 1148846080;
  v36 = [(UILayoutGuide *)v33 _maps_constraintsEqualToEdgesOfView:v34 priority:v35];
  overlayLayoutGuideConstraints = self->_overlayLayoutGuideConstraints;
  self->_overlayLayoutGuideConstraints = v36;

  v38 = [(MapsEdgeConstraints *)self->_overlayLayoutGuideConstraints allConstraints];
  [NSLayoutConstraint activateConstraints:v38];

  LODWORD(v39) = 1148846080;
  v40 = [(UIView *)self->_overlayView _maps_constraintsEqualToEdgesOfLayoutGuide:self->_overlayLayoutGuide priority:v39];
  v41 = [v40 allConstraints];
  [NSLayoutConstraint activateConstraints:v41];

  v42 = objc_alloc_init(UILayoutGuide);
  innerLayoutGuide = self->_innerLayoutGuide;
  self->_innerLayoutGuide = v42;

  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v46 = [NSString stringWithFormat:@"%@.innerLayoutGuide", v45];
  [(UILayoutGuide *)self->_innerLayoutGuide setIdentifier:v46];

  v47 = [(OverlayContainerViewController *)self view];
  [v47 addLayoutGuide:self->_innerLayoutGuide];

  LODWORD(v48) = 1148846080;
  v49 = [(UILayoutGuide *)self->_innerLayoutGuide _maps_constraintsEqualToEdgesOfLayoutGuide:self->_overlayLayoutGuide priority:v48];
  innerLayoutGuideConstraints = self->_innerLayoutGuideConstraints;
  self->_innerLayoutGuideConstraints = v49;

  [(OverlayContainerViewController *)self updateInnerLayoutGuideConstraints];
  v51 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints allConstraints];
  [NSLayoutConstraint activateConstraints:v51];

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
    v6 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints topConstraint];
    [v6 setConstant:v4];

    v7 = [(MapsEdgeConstraints *)*p_innerLayoutGuideConstraints leadingConstraint];
    [v7 setConstant:v3];

    v8 = [(MapsEdgeConstraints *)*p_innerLayoutGuideConstraints bottomConstraint];
    [v8 setConstant:v3];
  }

  else
  {
    [(OverlayContainerViewController *)self _topEdgePadding];
    v10 = v9;
    p_innerLayoutGuideConstraints = &self->_innerLayoutGuideConstraints;
    v11 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints topConstraint];
    [v11 setConstant:v10];

    v12 = sub_100019A44();
    v13 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints leadingConstraint];
    [v13 setConstant:v12];

    [(ContainerViewController *)self bottomEdgePadding];
    v15 = v14;
    v16 = [(MapsEdgeConstraints *)self->_innerLayoutGuideConstraints bottomConstraint];
    [v16 setConstant:v15];

    [(ContainerViewController *)self edgePadding];
    v3 = v17;
  }

  v18 = [(MapsEdgeConstraints *)*p_innerLayoutGuideConstraints trailingConstraint];
  [v18 setConstant:v3];
}

- (double)topEdgeInset
{
  [(NSLayoutConstraint *)self->_overlayToTopInsetConstraint constant];
  v4 = v3;
  if ([(ContainerViewController *)self containerStyle]== 1)
  {
    v5 = [(OverlayContainerViewController *)self topContentView];
    [v5 frame];
    MaxY = CGRectGetMaxY(v13);
    [(ContainerViewController *)self statusBarHeight];
    if (MaxY <= v7)
    {
      [(ContainerViewController *)self statusBarHeight];
      v9 = v11;
    }

    else
    {
      v8 = [(OverlayContainerViewController *)self topContentView];
      [v8 frame];
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
  v3 = [(TopBannerView *)self->_topBannerView superview];

  if (v3)
  {
    [(OverlayContainerViewController *)self _topBannerMaxHeight];
    v5 = v4;
    v6 = [(OverlayContainerViewController *)self topBannerView];
    [v6 setMaximumHeight:v5];

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
  v3 = [(OverlayContainerViewController *)self topContentView];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    v5 = [(ContainerViewController *)self containerStyle];
    if (v5 >= 8 || (v6 = 0.0, ((0xE3u >> v5) & 1) == 0))
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
      v7 = [(ContainerViewController *)self containerView];
      v8 = [v7 trailingAnchor];

      v9 = [(OverlayContainerViewController *)self view];
    }

    else
    {
      v10 = [(ContainerViewController *)self containerView];
      v8 = [v10 leadingAnchor];

      v9 = [(ContainerViewController *)self containerView];
    }

    v11 = v9;
    v12 = [v9 trailingAnchor];

    v13 = [(OverlayContainerViewController *)self overlayView];
    v14 = [v13 superview];

    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = [(ContainerViewController *)self containerStyle];
    v16 = 0.0;
    if (v15 <= 7 && ((1 << v15) & 0xE3) != 0)
    {
      if (_UISolariumEnabled())
      {
        v16 = sub_100019A44();
      }
    }

    v17 = [(OverlayContainerViewController *)self topContentView];
    v18 = [v17 leadingAnchor];
    v19 = [v18 constraintEqualToAnchor:v8 constant:v16];
    v29 = v19;
    v20 = [NSArray arrayWithObjects:&v29 count:1];
    v21 = [NSMutableArray arrayWithArray:v20];

    topContentSizeStyle = self->_topContentSizeStyle;
    if (topContentSizeStyle == 1)
    {
      v23 = [(OverlayContainerViewController *)self topContentView];
      v24 = [v23 trailingAnchor];
      v25 = [v12 constraintGreaterThanOrEqualToAnchor:v24 constant:v16];
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

      v23 = [(OverlayContainerViewController *)self topContentView];
      v24 = [v23 trailingAnchor];
      v25 = [v12 constraintEqualToAnchor:v24 constant:v16];
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
    v5 = [(UIView *)self->_topContentView topAnchor];
    v6 = [(ContainerViewController *)self chromeViewController];
    v7 = [v6 viewportLayoutGuide];
    v8 = [v7 topAnchor];
    v9 = [v5 constraintEqualToAnchor:v8];
    topContentConstraint = self->_topContentConstraint;
    self->_topContentConstraint = v9;

    v11 = [(UIView *)self->_topContentView heightAnchor];
    v12 = [v11 constraintEqualToConstant:0.0];

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
  v14 = [(OverlayContainerViewController *)self topBannerView];
  v3 = [v14 leadingAnchor];
  v4 = [(OverlayContainerViewController *)self overlayView];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:sub_100019A44()];
  v15[0] = v6;
  v7 = [(OverlayContainerViewController *)self topBannerView];
  v8 = [v7 trailingAnchor];
  v9 = [(OverlayContainerViewController *)self overlayView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-sub_100019A44()];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];

  return v12;
}

- (id)_topBannerViewConstraints
{
  if (self->_topBannerView)
  {
    v3 = +[NSMutableArray array];
    v4 = [(OverlayContainerViewController *)self _topBannerViewHorizontalConstraints];
    [v3 addObjectsFromArray:v4];

    v5 = [(OverlayContainerViewController *)self topBannerView];
    v6 = [v5 topAnchor];
    v7 = [(UILayoutGuide *)self->_innerLayoutGuide topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v3 addObject:v8];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateTopBannerViewWithTopBannerItems:(id)a3
{
  v18 = a3;
  v4 = [(TopBannerView *)self->_topBannerView items];
  if (v4 != v18)
  {
    v5 = [(TopBannerView *)self->_topBannerView items];
    v6 = [v18 isEqualToArray:v5];

    v7 = v18;
    if (v6)
    {
      goto LABEL_12;
    }

    v8 = [v18 count];
    topBannerView = self->_topBannerView;
    if (v8)
    {
      if (!topBannerView)
      {
        v10 = [(CardView *)[TopBannerView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
        v11 = self->_topBannerView;
        self->_topBannerView = v10;

        v12 = [(ContainerViewController *)self blurGroupName];
        [(CardView *)self->_topBannerView setBlurGroupName:v12];

        [(TopBannerView *)self->_topBannerView setTranslatesAutoresizingMaskIntoConstraints:0];
        topBannerView = self->_topBannerView;
      }

      [(TopBannerView *)topBannerView setItems:v18];
      v13 = [(TopBannerView *)self->_topBannerView superview];

      if (!v13)
      {
        v14 = [(OverlayContainerViewController *)self overlayView];
        v15 = [(OverlayContainerViewController *)self topBannerView];
        [v14 addSubview:v15];

        v16 = [(OverlayContainerViewController *)self _topBannerViewConstraints];
        [NSLayoutConstraint activateConstraints:v16];
      }
    }

    else
    {
      v17 = [(TopBannerView *)topBannerView superview];

      v7 = v18;
      if (!v17)
      {
        goto LABEL_12;
      }

      [(TopBannerView *)self->_topBannerView setItems:0];
      [(TopBannerView *)self->_topBannerView removeFromSuperview];
    }

    v4 = [(OverlayContainerViewController *)self view];
    [v4 setNeedsLayout];
  }

  v7 = v18;
LABEL_12:
}

- (void)viewControllerWantsTopBannerItemsUpdate:(id)a3
{
  v7 = a3;
  v4 = [(ContainerViewController *)self currentViewController];

  v5 = v7;
  if (v4 == v7)
  {
    v6 = [v7 topBannerItems];
    [(OverlayContainerViewController *)self updateTopBannerViewWithTopBannerItems:v6];

    v5 = v7;
  }
}

- (void)updateEdgeInsets:(UIEdgeInsets)a3 immediately:(BOOL)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9.receiver = self;
  v9.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v9 updateEdgeInsets:a4 immediately:?];
  [(MapsEdgeConstraints *)self->_overlayLayoutGuideConstraints setConstantsFromEdgeInsets:top, left, bottom, right];
}

- (void)setTopContentSizeStyle:(unint64_t)a3
{
  if (self->_topContentSizeStyle != a3)
  {
    self->_topContentSizeStyle = a3;
    [(OverlayContainerViewController *)self updateContainerStyleDependentConstraints];
  }
}

- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v12.receiver = self;
  v12.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v12 presentController:v10 animated:v8 useDefaultContaineeLayout:v7 completion:a6];
  if (objc_opt_respondsToSelector())
  {
    v11 = v10;
    [v11 setBannerContainer:self];
    [(OverlayContainerViewController *)self viewControllerWantsTopBannerItemsUpdate:v11];
  }

  else
  {
    [(OverlayContainerViewController *)self updateTopBannerViewWithTopBannerItems:0];
  }
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v11 containerStyleManagerConfigureLayoutForStyle:a3];
  [(OverlayContainerViewController *)self updateContainerStyleDependentConstraints];
  v4 = [(OverlayContainerViewController *)self topContentView];
  v5 = [v4 isHidden];

  if ((v5 & 1) == 0)
  {
    if (_UISolariumEnabled())
    {
      v6 = [(OverlayContainerViewController *)self topContentView];
      +[MapsTheme cardCornerRadius];
      [v6 _setContinuousCornerRadius:?];
    }

    else
    {
      v7 = [(ContainerViewController *)self containerStyle];
      if (v7 <= 7 && ((1 << v7) & 0xE3) != 0)
      {
        v6 = [(OverlayContainerViewController *)self topContentView];
        v8 = [v6 layer];
        v9 = v8;
        v10 = 0.0;
      }

      else
      {
        v6 = [(OverlayContainerViewController *)self topContentView];
        v8 = [v6 layer];
        v9 = v8;
        v10 = 10.0;
      }

      [v8 setCornerRadius:v10];
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

- (void)applyTransitionWithProgress:(double)a3
{
  v39.receiver = self;
  v39.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v39 applyTransitionWithProgress:?];
  v5 = [(OverlayContainerViewController *)self overlayView];
  [v5 setAlpha:a3];

  v6 = [(OverlayContainerViewController *)self topContentView];
  [v6 frame];
  MaxY = CGRectGetMaxY(v41);
  v8 = 1.0 - a3;
  CGAffineTransformMakeTranslation(&v38, 0.0, -(v8 * MaxY));
  v9 = [(OverlayContainerViewController *)self topContentView];
  v37 = v38;
  [v9 setTransform:&v37];

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
      v13 = [(OverlayContainerViewController *)self view];
      v14 = [v13 effectiveUserInterfaceLayoutDirection] == 1;

      v15 = [(ContainerViewController *)self stackOnOppositeSide];
      v16 = [(ContainerViewController *)self containerView];
      [v16 frame];
      if (v14 == v15)
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
      v16 = [(ContainerViewController *)self containerView];
      [v16 frame];
      v22 = CGRectGetHeight(v42) * v8;
      v23 = 0.0;
    }

    CGAffineTransformMakeTranslation(&v37, v23, v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = [(ContainerViewController *)self visibleCardViews];
  v25 = [v24 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v31 + 1) + 8 * i);
        t1 = v37;
        [v29 setTransform:&t1];
      }

      v26 = [v24 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v26);
  }

  v30 = *&v37.c;
  *&p_modeTransitiontransform->a = *&v37.a;
  *&p_modeTransitiontransform->c = v30;
  *&p_modeTransitiontransform->tx = *&v37.tx;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v5 viewWillDisappear:a3];
  topContentConstraint = self->_topContentConstraint;
  self->_topContentConstraint = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OverlayContainerViewController;
  [(ContainerViewController *)&v4 viewDidAppear:a3];
  [(OverlayContainerViewController *)self setupConstraints];
}

- (UIView)passThroughView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 passThroughView];

  return v3;
}

- (void)updateViewsForCustomDismissalTransition
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(OverlayContainerViewController *)self view];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8) setAlpha:1.0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(ContainerViewController *)self chromeViewController];
  [v9 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  v10 = [(ContainerViewController *)self chromeViewController];
  [v10 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

  v11 = [(ContainerViewController *)self chromeViewController];
  [v11 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (void)updateViewsForCustomPresentationTransition
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(OverlayContainerViewController *)self view];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8) setAlpha:0.0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(ContainerViewController *)self chromeViewController];
  [v9 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  v10 = [(ContainerViewController *)self chromeViewController];
  [v10 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

  v11 = [(ContainerViewController *)self chromeViewController];
  [v11 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

@end