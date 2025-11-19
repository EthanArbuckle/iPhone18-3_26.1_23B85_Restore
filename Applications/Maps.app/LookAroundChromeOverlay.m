@interface LookAroundChromeOverlay
- (ChromeOverlayHosting)host;
- (LookAroundChromeOverlay)init;
- (LookAroundChromeOverlayDelegate)delegate;
- (void)_installInContentView:(id)a3;
- (void)_invalidateConstraints;
- (void)_updateAlpha;
- (void)_updateConstraintsIfNeeded;
- (void)_updateLayout;
- (void)enterLookAroundForMapItem:(id)a3 isMarkedLocation:(BOOL)a4 lookAroundView:(id)a5;
- (void)enterLookAroundPIP:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setContainerStyle:(unint64_t)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
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
    v6 = [v5 userInterfaceIdiom];

    if (_UISolariumEnabled())
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFBLL) == 1 || containerStyle >= 8;
      v4 = 0x5Cu >> containerStyle;
      if (v7)
      {
        LOBYTE(v4) = 1;
      }
    }

    else
    {
      LOBYTE(v4) = v6 != 5;
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
        v15 = [(LookAroundChromeOverlay *)self view];
        v5 = [v15 leadingAnchor];
        v6 = [v4 leadingAnchor];
        v7 = [v5 constraintEqualToAnchor:v6];
        v17 = v7;
        v8 = &v17;
      }

      else
      {
        v15 = [(LookAroundChromeOverlay *)self view];
        v5 = [v15 trailingAnchor];
        v6 = [v4 trailingAnchor];
        v7 = [v5 constraintEqualToAnchor:v6];
        v16 = v7;
        v8 = &v16;
      }

      v9 = [(LookAroundChromeOverlay *)self view];
      v10 = [v9 bottomAnchor];
      v11 = [v4 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
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

  v3 = [(LookAroundChromeOverlay *)self view];
  [v3 setAlpha:overlayAlpha];
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

- (void)enterLookAroundPIP:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained enterLookAroundPIP:v4];
}

- (void)enterLookAroundForMapItem:(id)a3 isMarkedLocation:(BOOL)a4 lookAroundView:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [GEOAPPortal captureLookAroundUserAction:6060 onTarget:201 eventValue:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained enterLookAroundForMapItem:v9 isMarkedLocation:v5 lookAroundView:v8];
}

- (void)setAlpha:(double)a3
{
  if (self->_overlayAlpha != a3)
  {
    self->_overlayAlpha = a3;
    [(LookAroundChromeOverlay *)self _updateAlpha];
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_overlayHidden != a3)
  {
    v4 = a4;
    self->_overlayHidden = a3;
    v7 = [(LookAroundChromeOverlay *)self view];
    v8 = objc_alloc_init(GroupAnimation);
    [(GroupAnimation *)v8 setAnimated:v4];
    [(GroupAnimation *)v8 setDuration:0.3];
    [(GroupAnimation *)v8 setOptions:4];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10056F15C;
    v16[3] = &unk_101660CE8;
    v16[4] = self;
    v18 = a3;
    v9 = v7;
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

- (void)setContainerStyle:(unint64_t)a3
{
  if (self->_containerStyle != a3)
  {
    self->_containerStyle = a3;
    [(LookAroundButtonContainerViewController *)self->_lookAroundController setContainerStyle:?];

    [(LookAroundChromeOverlay *)self _updateLayout];
  }
}

- (void)_installInContentView:(id)a3
{
  v8 = a3;
  v4 = [(LookAroundChromeOverlay *)self view];
  v5 = [v4 superview];

  if (v5 != v8)
  {
    v6 = [(LookAroundChromeOverlay *)self view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(LookAroundChromeOverlay *)self view];
    [v8 addSubview:v7];

    [(LookAroundChromeOverlay *)self _updateLayout];
  }
}

- (void)setHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v5 = obj;
  if (WeakRetained != obj)
  {
    lookAroundController = self->_lookAroundController;
    if (lookAroundController)
    {
      v7 = [(LookAroundButtonContainerViewController *)lookAroundController parentViewController];

      if (v7)
      {
        [(LookAroundButtonContainerViewController *)self->_lookAroundController willMoveToParentViewController:0];
        if ([(LookAroundButtonContainerViewController *)self->_lookAroundController isViewLoaded])
        {
          v8 = [(LookAroundButtonContainerViewController *)self->_lookAroundController view];
          [v8 removeFromSuperview];
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

      v11 = [obj containingViewController];
      [(LookAroundButtonContainerViewController *)self->_lookAroundController willMoveToParentViewController:v11];
      v12 = [obj overlayContentView];
      [(LookAroundChromeOverlay *)self _installInContentView:v12];

      [(LookAroundButtonContainerViewController *)self->_lookAroundController didMoveToParentViewController:v11];
      v5 = obj;
    }
  }
}

@end