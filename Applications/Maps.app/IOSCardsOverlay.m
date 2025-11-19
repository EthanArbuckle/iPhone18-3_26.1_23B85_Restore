@interface IOSCardsOverlay
- (ChromeOverlayHosting)host;
- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)a3;
- (void)_refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)reset;
- (void)setChromeHidden:(BOOL)a3;
- (void)setControllerStack:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
@end

@implementation IOSCardsOverlay

- (void)_refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained)
  {
    v44 = objc_loadWeakRetained(&self->_host);
    v4 = [v44 overlayContentView];
    v41 = [v44 viewportLayoutGuide];
    v39 = [v41 topAnchor];
    v37 = [v4 topAnchor];
    v27 = [v39 constraintGreaterThanOrEqualToAnchor:v37];
    v35 = [v44 viewportLayoutGuide];
    v33 = [v35 leadingAnchor];
    v31 = [v4 leadingAnchor];
    v5 = [v33 constraintGreaterThanOrEqualToAnchor:v31];
    v43 = v4;
    v29 = [v4 bottomAnchor];
    v6 = [v44 viewportLayoutGuide];
    v7 = [v6 bottomAnchor];
    v8 = [v29 constraintGreaterThanOrEqualToAnchor:v7];
    v9 = [v4 trailingAnchor];
    v10 = [v44 viewportLayoutGuide];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11];
    v13 = [MapsEdgeConstraints edgeConstraintsWithTop:v27 leading:v5 bottom:v8 trailing:v12];
    overlayViewportConstraints = self->_overlayViewportConstraints;
    self->_overlayViewportConstraints = v13;

    v15 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints allConstraints];
    [v44 setViewportConstraints:v15 forOverlay:self];

    [v44 setViewportConstraintsEnabled:0 forOverlay:self];
    v42 = [v44 mapInsetsLayoutGuide];
    v40 = [v42 topAnchor];
    v38 = [v43 topAnchor];
    v28 = [v40 constraintGreaterThanOrEqualToAnchor:v38];
    v36 = [v44 mapInsetsLayoutGuide];
    v34 = [v36 leadingAnchor];
    v32 = [v43 leadingAnchor];
    v16 = [v34 constraintGreaterThanOrEqualToAnchor:v32];
    v30 = [v43 bottomAnchor];
    v17 = [v44 mapInsetsLayoutGuide];
    v18 = [v17 bottomAnchor];
    v19 = [v30 constraintGreaterThanOrEqualToAnchor:v18];
    v20 = [v43 trailingAnchor];
    v21 = [v44 mapInsetsLayoutGuide];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintGreaterThanOrEqualToAnchor:v22];
    v24 = [MapsEdgeConstraints edgeConstraintsWithTop:v28 leading:v16 bottom:v19 trailing:v23];
    overlayMapInsetsConstraints = self->_overlayMapInsetsConstraints;
    self->_overlayMapInsetsConstraints = v24;

    v26 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints allConstraints];
    [v44 setMapInsetsConstraints:v26 forOverlay:self];

    [v44 setMapInsetsConstraintsEnabled:0 forOverlay:self];
  }
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_hidden != a3)
  {
    v9 = v4;
    v10 = v5;
    self->_hidden = a3;
    v6 = 0.2;
    if (!a4)
    {
      v6 = 0.0;
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FC8344;
    v7[3] = &unk_101661AE0;
    v7[4] = self;
    v8 = a3;
    [UIView animateWithDuration:v7 animations:v6];
  }
}

- (void)setHost:(id)a3
{
  obj = a3;
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
      v9 = [obj overlayContentView];
      v10 = sub_10000FA08(v9);
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
      v18 = [(IOSCardsOverlay *)self view];
      [v18 setAccessibilityIdentifier:v17];

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [NSString stringWithFormat:@"%@.OverlayVC.OverlayView", v20];
      v22 = [(OverlayContainerViewController *)self overlayView];
      [v22 setAccessibilityIdentifier:v21];

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

- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(IOSCardsOverlay *)self viewIfLoaded];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = [(IOSCardsOverlay *)self view];
  v11 = [v10 superview];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [(ContainerViewController *)self chromeContext];
  if (!v13)
  {
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [(ContainerViewController *)self currentViewController];
  if (!v15)
  {

    goto LABEL_18;
  }

  v16 = v15;
  v17 = [(ContainerViewController *)self currentViewController];
  v18 = [v17 cardPresentationController];
  v19 = [v18 containeeLayout];

  if (!v19)
  {
LABEL_20:
    v44 = [(IOSCardsOverlay *)self host];
    [v44 setViewportConstraintsEnabled:0 forOverlay:self];

    v46 = [(IOSCardsOverlay *)self host];
    [v46 setMapInsetsConstraintsEnabled:0 forOverlay:self];
LABEL_21:

    return;
  }

  v20 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints topConstraint];
  [v20 constant];
  v22 = v21;
  v23 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints leadingConstraint];
  [v23 constant];
  v25 = v24;
  v26 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints bottomConstraint];
  [v26 constant];
  v45 = v27;
  v28 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints trailingConstraint];
  [v28 constant];
  v30 = v29;

  v31 = [(IOSCardsOverlay *)self view];
  v32 = [v31 effectiveUserInterfaceLayoutDirection];

  if (v32 == 1)
  {
    v33 = right;
  }

  else
  {
    v33 = left;
  }

  if (v32 == 1)
  {
    right = left;
  }

  v34 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints topConstraint];
  [v34 setConstant:top];
  v35 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints topConstraint];
  [v35 setConstant:top];

  v36 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints leadingConstraint];
  [v36 setConstant:v33];
  v37 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints leadingConstraint];
  [v37 setConstant:v33];

  v38 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints bottomConstraint];
  [v38 setConstant:bottom];
  v39 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints bottomConstraint];
  [v39 setConstant:bottom];

  v40 = [(MapsEdgeConstraints *)self->_overlayViewportConstraints trailingConstraint];
  [v40 setConstant:right];
  v41 = [(MapsEdgeConstraints *)self->_overlayMapInsetsConstraints trailingConstraint];
  [v41 setConstant:right];

  v42 = [(IOSCardsOverlay *)self host];
  [v42 setViewportConstraintsEnabled:-[ContainerViewController chromeHidden](self forOverlay:{"chromeHidden") ^ 1, self}];

  v43 = [(IOSCardsOverlay *)self host];
  [v43 setMapInsetsConstraintsEnabled:-[ContainerViewController chromeHidden](self forOverlay:{"chromeHidden") ^ 1, self}];

  if (![(ContainerViewController *)self chromeHidden]&& (v33 != v25 || top != v22 || right != v30 || bottom != *&v45))
  {
    v46 = [(IOSCardsOverlay *)self host];
    [v46 overlayDidUpdateExistingMapInsetConstraints:self];
    goto LABEL_21;
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = IOSCardsOverlay;
  [(PassThroughViewController *)&v4 didMoveToParentViewController:a3];
  [(ContainerViewController *)self updateMapEdgeInsets];
}

- (void)setControllerStack:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FC8AF4;
  v12[3] = &unk_101661108;
  objc_copyWeak(&v14, &location);
  v10 = v9;
  v13 = v10;
  v11.receiver = self;
  v11.super_class = IOSCardsOverlay;
  [(ContainerViewController *)&v11 setControllerStack:v8 animated:v6 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)setChromeHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(ContainerViewController *)self chromeHidden];
  v8.receiver = self;
  v8.super_class = IOSCardsOverlay;
  [(ContainerViewController *)&v8 setChromeHidden:v3];
  if (v5 != v3)
  {
    v6 = [(IOSCardsOverlay *)self host];
    [v6 setViewportConstraintsEnabled:v3 ^ 1 forOverlay:self];

    v7 = [(IOSCardsOverlay *)self host];
    [v7 setMapInsetsConstraintsEnabled:v3 ^ 1 forOverlay:self];
  }
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = IOSCardsOverlay;
  [(OverlayContainerViewController *)&v4 containerStyleManagerConfigureLayoutForStyle:a3];
  [(IOSCardsOverlay *)self _refreshViewportAndMapInsetConstraintsForCurrentLayoutStyle];
}

@end