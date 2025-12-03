@interface IOSCardsOverlay
- (ChromeOverlayHosting)host;
- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)insets;
- (void)_refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style;
- (void)didMoveToParentViewController:(id)controller;
- (void)reset;
- (void)setChromeHidden:(BOOL)hidden;
- (void)setControllerStack:(id)stack animated:(BOOL)animated completion:(id)completion;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
@end

@implementation IOSCardsOverlay

- (void)_refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained)
  {
    v44 = objc_loadWeakRetained(&self->_host);
    overlayContentView = [v44 overlayContentView];
    viewportLayoutGuide = [v44 viewportLayoutGuide];
    topAnchor = [viewportLayoutGuide topAnchor];
    topAnchor2 = [overlayContentView topAnchor];
    v27 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    viewportLayoutGuide2 = [v44 viewportLayoutGuide];
    leadingAnchor = [viewportLayoutGuide2 leadingAnchor];
    leadingAnchor2 = [overlayContentView leadingAnchor];
    v5 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v43 = overlayContentView;
    bottomAnchor = [overlayContentView bottomAnchor];
    viewportLayoutGuide3 = [v44 viewportLayoutGuide];
    bottomAnchor2 = [viewportLayoutGuide3 bottomAnchor];
    v8 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    trailingAnchor = [overlayContentView trailingAnchor];
    viewportLayoutGuide4 = [v44 viewportLayoutGuide];
    trailingAnchor2 = [viewportLayoutGuide4 trailingAnchor];
    v12 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v13 = [MapsEdgeConstraints edgeConstraintsWithTop:v27 leading:v5 bottom:v8 trailing:v12];
    overlayViewportConstraints = self->_overlayViewportConstraints;
    self->_overlayViewportConstraints = v13;

    allConstraints = [(MapsEdgeConstraints *)self->_overlayViewportConstraints allConstraints];
    [v44 setViewportConstraints:allConstraints forOverlay:self];

    [v44 setViewportConstraintsEnabled:0 forOverlay:self];
    mapInsetsLayoutGuide = [v44 mapInsetsLayoutGuide];
    topAnchor3 = [mapInsetsLayoutGuide topAnchor];
    topAnchor4 = [v43 topAnchor];
    v28 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    mapInsetsLayoutGuide2 = [v44 mapInsetsLayoutGuide];
    leadingAnchor3 = [mapInsetsLayoutGuide2 leadingAnchor];
    leadingAnchor4 = [v43 leadingAnchor];
    v16 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    bottomAnchor3 = [v43 bottomAnchor];
    mapInsetsLayoutGuide3 = [v44 mapInsetsLayoutGuide];
    bottomAnchor4 = [mapInsetsLayoutGuide3 bottomAnchor];
    v19 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
    trailingAnchor3 = [v43 trailingAnchor];
    mapInsetsLayoutGuide4 = [v44 mapInsetsLayoutGuide];
    trailingAnchor4 = [mapInsetsLayoutGuide4 trailingAnchor];
    v23 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
    v24 = [MapsEdgeConstraints edgeConstraintsWithTop:v28 leading:v16 bottom:v19 trailing:v23];
    overlayMapInsetsConstraints = self->_overlayMapInsetsConstraints;
    self->_overlayMapInsetsConstraints = v24;

    allConstraints2 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints allConstraints];
    [v44 setMapInsetsConstraints:allConstraints2 forOverlay:self];

    [v44 setMapInsetsConstraintsEnabled:0 forOverlay:self];
  }
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_hidden != hidden)
  {
    v9 = v4;
    v10 = v5;
    self->_hidden = hidden;
    v6 = 0.2;
    if (!animated)
    {
      v6 = 0.0;
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FC8344;
    v7[3] = &unk_101661AE0;
    v7[4] = self;
    hiddenCopy = hidden;
    [UIView animateWithDuration:v7 animations:v6];
  }
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_host);

    if (v6)
    {
      overlayViewportConstraints = self->_overlayViewportConstraints;
      self->_overlayViewportConstraints = 0;

      overlayMapInsetsConstraints = self->_overlayMapInsetsConstraints;
      self->_overlayMapInsetsConstraints = 0;
    }

    objc_storeWeak(&self->_host, obj);
    v5 = obj;
    if (obj)
    {
      overlayContentView = [obj overlayContentView];
      v10 = sub_10000FA08(overlayContentView);
      v11 = _UISolariumEnabled();
      v12 = v10 == 5;
      v13 = v10 == 5;
      if (v12)
      {
        v14 = v11 ^ 1u;
      }

      else
      {
        v14 = 0;
      }

      [(ContainerViewController *)self setStackOnOppositeSide:v14];
      [(ContainerViewController *)self macSetEnableExtendedPresentationStyles:v13];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [NSString stringWithFormat:@"%@.OverlayVC", v16];
      view = [(IOSCardsOverlay *)self view];
      [view setAccessibilityIdentifier:v17];

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [NSString stringWithFormat:@"%@.OverlayVC.OverlayView", v20];
      overlayView = [(OverlayContainerViewController *)self overlayView];
      [overlayView setAccessibilityIdentifier:v21];

      [(IOSCardsOverlay *)self _refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle];
      v5 = obj;
    }
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = IOSCardsOverlay;
  [(ContainerViewController *)&v3 reset];
  [(ContainerViewController *)self updateMapEdgeInsets];
}

- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  viewIfLoaded = [(IOSCardsOverlay *)self viewIfLoaded];
  if (!viewIfLoaded)
  {
    goto LABEL_20;
  }

  v9 = viewIfLoaded;
  view = [(IOSCardsOverlay *)self view];
  superview = [view superview];
  if (!superview)
  {
    goto LABEL_19;
  }

  v12 = superview;
  chromeContext = [(ContainerViewController *)self chromeContext];
  if (!chromeContext)
  {
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v14 = chromeContext;
  currentViewController = [(ContainerViewController *)self currentViewController];
  if (!currentViewController)
  {

    goto LABEL_18;
  }

  v16 = currentViewController;
  currentViewController2 = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController2 cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (!containeeLayout)
  {
LABEL_20:
    host = [(IOSCardsOverlay *)self host];
    [host setViewportConstraintsEnabled:0 forOverlay:self];

    host2 = [(IOSCardsOverlay *)self host];
    [host2 setMapInsetsConstraintsEnabled:0 forOverlay:self];
LABEL_21:

    return;
  }

  topConstraint = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints topConstraint];
  [topConstraint constant];
  v22 = v21;
  leadingConstraint = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints leadingConstraint];
  [leadingConstraint constant];
  v25 = v24;
  bottomConstraint = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints bottomConstraint];
  [bottomConstraint constant];
  v45 = v27;
  trailingConstraint = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints trailingConstraint];
  [trailingConstraint constant];
  v30 = v29;

  view2 = [(IOSCardsOverlay *)self view];
  effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v33 = right;
  }

  else
  {
    v33 = left;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    right = left;
  }

  topConstraint2 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints topConstraint];
  [topConstraint2 setConstant:top];
  topConstraint3 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints topConstraint];
  [topConstraint3 setConstant:top];

  leadingConstraint2 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints leadingConstraint];
  [leadingConstraint2 setConstant:v33];
  leadingConstraint3 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints leadingConstraint];
  [leadingConstraint3 setConstant:v33];

  bottomConstraint2 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints bottomConstraint];
  [bottomConstraint2 setConstant:bottom];
  bottomConstraint3 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints bottomConstraint];
  [bottomConstraint3 setConstant:bottom];

  trailingConstraint2 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints trailingConstraint];
  [trailingConstraint2 setConstant:right];
  trailingConstraint3 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints trailingConstraint];
  [trailingConstraint3 setConstant:right];

  host3 = [(IOSCardsOverlay *)self host];
  [host3 setViewportConstraintsEnabled:-[ContainerViewController chromeHidden](self forOverlay:{"chromeHidden") ^ 1, self}];

  host4 = [(IOSCardsOverlay *)self host];
  [host4 setMapInsetsConstraintsEnabled:-[ContainerViewController chromeHidden](self forOverlay:{"chromeHidden") ^ 1, self}];

  if (![(ContainerViewController *)self chromeHidden]&& (v33 != v25 || top != v22 || right != v30 || bottom != *&v45))
  {
    host2 = [(IOSCardsOverlay *)self host];
    [host2 overlayDidUpdateExistingMapInsetConstraints:self];
    goto LABEL_21;
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = IOSCardsOverlay;
  [(PassThroughViewController *)&v4 didMoveToParentViewController:controller];
  [(ContainerViewController *)self updateMapEdgeInsets];
}

- (void)setControllerStack:(id)stack animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  stackCopy = stack;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FC8AF4;
  v12[3] = &unk_101661108;
  objc_copyWeak(&v14, &location);
  v10 = completionCopy;
  v13 = v10;
  v11.receiver = self;
  v11.super_class = IOSCardsOverlay;
  [(ContainerViewController *)&v11 setControllerStack:stackCopy animated:animatedCopy completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)setChromeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  chromeHidden = [(ContainerViewController *)self chromeHidden];
  v8.receiver = self;
  v8.super_class = IOSCardsOverlay;
  [(ContainerViewController *)&v8 setChromeHidden:hiddenCopy];
  if (chromeHidden != hiddenCopy)
  {
    host = [(IOSCardsOverlay *)self host];
    [host setViewportConstraintsEnabled:hiddenCopy ^ 1 forOverlay:self];

    host2 = [(IOSCardsOverlay *)self host];
    [host2 setMapInsetsConstraintsEnabled:hiddenCopy ^ 1 forOverlay:self];
  }
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style
{
  v4.receiver = self;
  v4.super_class = IOSCardsOverlay;
  [(OverlayContainerViewController *)&v4 containerStyleManagerConfigureLayoutForStyle:style];
  [(IOSCardsOverlay *)self _refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle];
}

@end