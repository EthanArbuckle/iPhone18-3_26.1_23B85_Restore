@interface LookAroundChromeOverlay
- (ChromeOverlayHosting)host;
- (LookAroundChromeOverlay)init;
- (LookAroundChromeOverlayDelegate)delegate;
- (void)_installInContentView:(id)view;
- (void)_invalidateConstraints;
- (void)_updateAlpha;
- (void)_updateConstraintsIfNeeded;
- (void)_updateLayout;
- (void)enterLookAroundForMapItem:(id)item isMarkedLocation:(BOOL)location lookAroundView:(id)view;
- (void)enterLookAroundPIP:(id)p;
- (void)setAlpha:(double)alpha;
- (void)setContainerStyle:(unint64_t)style;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
@end

@implementation LookAroundChromeOverlay

- (LookAroundChromeOverlay)init
{
  v3.receiver = self;
  v3.super_class = LookAroundChromeOverlay;
  result = [(LookAroundChromeOverlay *)&v3 init];
  if (result)
  {
    result->_overlayAlpha = 1.0;
  }

  return result;
}

- (void)_updateLayout
{
  containerStyle = self->_containerStyle;
  if (_UISolariumEnabled())
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    if (_UISolariumEnabled())
    {
      v7 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
      v4 = 0x5Cu >> containerStyle;
      if (v7)
      {
        LOBYTE(v4) = 1;
      }
    }

    else
    {
      LOBYTE(v4) = userInterfaceIdiom != 5;
    }
  }

  v8 = v4 & 1;
  if (self->_hasLeadingEdgeLayout != v8)
  {
    self->_hasLeadingEdgeLayout = v8;
    [(LookAroundChromeOverlay *)self _invalidateConstraints];
  }

  [(LookAroundChromeOverlay *)self _updateConstraintsIfNeeded];
}

- (void)_invalidateConstraints
{
  if (self->_constraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    constraints = self->_constraints;
    self->_constraints = 0;
  }
}

- (void)_updateConstraintsIfNeeded
{
  if (!self->_constraints)
  {
    WeakRetained = objc_loadWeakRetained(&self->_host);
    v4 = [WeakRetained layoutGuideForOverlay:self];

    if (v4)
    {
      if (self->_hasLeadingEdgeLayout || sub_10000FA08(self->_lookAroundController) == 5 && _UISolariumEnabled())
      {
        view = [(LookAroundChromeOverlay *)self view];
        leadingAnchor = [view leadingAnchor];
        leadingAnchor2 = [v4 leadingAnchor];
        v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v17 = v7;
        v8 = &v17;
      }

      else
      {
        view = [(LookAroundChromeOverlay *)self view];
        leadingAnchor = [view trailingAnchor];
        leadingAnchor2 = [v4 trailingAnchor];
        v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v16 = v7;
        v8 = &v16;
      }

      view2 = [(LookAroundChromeOverlay *)self view];
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [v4 bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v8[1] = v12;
      v13 = [NSArray arrayWithObjects:v8 count:2];
      constraints = self->_constraints;
      self->_constraints = v13;

      [NSLayoutConstraint activateConstraints:self->_constraints];
    }
  }
}

- (void)_updateAlpha
{
  overlayAlpha = 0.0;
  if (!self->_overlayHidden)
  {
    overlayAlpha = self->_overlayAlpha;
  }

  view = [(LookAroundChromeOverlay *)self view];
  [view setAlpha:overlayAlpha];
}

- (LookAroundChromeOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)enterLookAroundPIP:(id)p
{
  pCopy = p;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained enterLookAroundPIP:pCopy];
}

- (void)enterLookAroundForMapItem:(id)item isMarkedLocation:(BOOL)location lookAroundView:(id)view
{
  locationCopy = location;
  viewCopy = view;
  itemCopy = item;
  [GEOAPPortal captureLookAroundUserAction:6060 onTarget:201 eventValue:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained enterLookAroundForMapItem:itemCopy isMarkedLocation:locationCopy lookAroundView:viewCopy];
}

- (void)setAlpha:(double)alpha
{
  if (self->_overlayAlpha != alpha)
  {
    self->_overlayAlpha = alpha;
    [(LookAroundChromeOverlay *)self _updateAlpha];
  }
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_overlayHidden != hidden)
  {
    animatedCopy = animated;
    self->_overlayHidden = hidden;
    view = [(LookAroundChromeOverlay *)self view];
    v8 = objc_alloc_init(GroupAnimation);
    [(GroupAnimation *)v8 setAnimated:animatedCopy];
    [(GroupAnimation *)v8 setDuration:0.3];
    [(GroupAnimation *)v8 setOptions:4];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10056F15C;
    v16[3] = &unk_101660CE8;
    v16[4] = self;
    hiddenCopy = hidden;
    v9 = view;
    v17 = v9;
    [(GroupAnimation *)v8 addPreparation:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10056F184;
    v15[3] = &unk_101661B18;
    v15[4] = self;
    [(GroupAnimation *)v8 addAnimations:v15];
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10056F18C;
    v11[3] = &unk_10165FC50;
    objc_copyWeak(&v13, &location);
    v10 = v9;
    v12 = v10;
    [(GroupAnimation *)v8 addCompletion:v11];
    [(GroupAnimation *)v8 runWithCurrentOptions];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)setContainerStyle:(unint64_t)style
{
  if (self->_containerStyle != style)
  {
    self->_containerStyle = style;
    [(LookAroundButtonContainerViewController *)self->_lookAroundController setContainerStyle:?];

    [(LookAroundChromeOverlay *)self _updateLayout];
  }
}

- (void)_installInContentView:(id)view
{
  viewCopy = view;
  view = [(LookAroundChromeOverlay *)self view];
  superview = [view superview];

  if (superview != viewCopy)
  {
    view2 = [(LookAroundChromeOverlay *)self view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(LookAroundChromeOverlay *)self view];
    [viewCopy addSubview:view3];

    [(LookAroundChromeOverlay *)self _updateLayout];
  }
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v5 = obj;
  if (WeakRetained != obj)
  {
    lookAroundController = self->_lookAroundController;
    if (lookAroundController)
    {
      parentViewController = [(LookAroundButtonContainerViewController *)lookAroundController parentViewController];

      if (parentViewController)
      {
        [(LookAroundButtonContainerViewController *)self->_lookAroundController willMoveToParentViewController:0];
        if ([(LookAroundButtonContainerViewController *)self->_lookAroundController isViewLoaded])
        {
          view = [(LookAroundButtonContainerViewController *)self->_lookAroundController view];
          [view removeFromSuperview];
        }

        [(LookAroundButtonContainerViewController *)self->_lookAroundController removeFromParentViewController];
        [(LookAroundChromeOverlay *)self _invalidateConstraints];
      }
    }

    objc_storeWeak(&self->_host, obj);
    v5 = obj;
    if (obj)
    {
      if (!self->_lookAroundController)
      {
        v9 = objc_alloc_init(LookAroundButtonContainerViewController);
        v10 = self->_lookAroundController;
        self->_lookAroundController = v9;

        [(LookAroundButtonContainerViewController *)self->_lookAroundController setDelegate:self];
      }

      containingViewController = [obj containingViewController];
      [(LookAroundButtonContainerViewController *)self->_lookAroundController willMoveToParentViewController:containingViewController];
      overlayContentView = [obj overlayContentView];
      [(LookAroundChromeOverlay *)self _installInContentView:overlayContentView];

      [(LookAroundButtonContainerViewController *)self->_lookAroundController didMoveToParentViewController:containingViewController];
      v5 = obj;
    }
  }
}

@end