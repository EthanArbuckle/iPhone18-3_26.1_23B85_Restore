@interface CarStatusBannerOverlay
- (CarStatusBannerDelegate)delegate;
- (CarStatusBannerOverlay)initWithChromeViewController:(id)controller;
- (ChromeOverlayHosting)host;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_tappedLabel;
- (void)dealloc;
- (void)reloadAnimated:(BOOL)animated;
- (void)setContentView:(id)view layoutGuide:(id)guide;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
@end

@implementation CarStatusBannerOverlay

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (CarStatusBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarStatusBannerLabel *)self->_titleLabel isEnabled])
  {
    titleLabel = self->_titleLabel;
    v3 = [NSArray arrayWithObjects:&titleLabel count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarStatusBannerLabel *)self->_titleLabel isEnabled])
  {
    titleLabel = self->_titleLabel;
    v3 = [NSArray arrayWithObjects:&titleLabel count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)_tappedLabel
{
  delegate = [(CarStatusBannerOverlay *)self delegate];
  [delegate carStatusBannerDidTapBanner];
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (!self->_titleLabel)
  {
    return;
  }

  hiddenCopy = hidden;
  if (!animated)
  {
    goto LABEL_12;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_11:

LABEL_12:
      v13 = 0;
      goto LABEL_14;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarStatusBannerOverlay *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_10:

    *buf = 138543362;
    v21 = selfCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Reduce motion enabled, running status view update without animation", buf, 0xCu);

    goto LABEL_11;
  }

  v13 = 1;
LABEL_14:
  if ([(CarStatusBannerLabel *)self->_titleLabel isHidden]!= hiddenCopy)
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = @"show";
      if (hiddenCopy)
      {
        v15 = @"hide";
      }

      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will %@ status view", buf, 0xCu);
    }

    v16 = 0.0;
    if (v13)
    {
      v17 = +[UIView _maps_shouldAdoptImplicitAnimationParameters];
      v16 = 0.1;
      if (v17)
      {
        v16 = 0.0;
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100621E7C;
    v18[3] = &unk_101661AE0;
    v18[4] = self;
    v19 = hiddenCopy;
    [UIView animateWithDuration:4 delay:v18 options:0 animations:v16 completion:0.0];
  }
}

- (void)reloadAnimated:(BOOL)animated
{
  if (self->_titleLabel)
  {
    [(CarStatusBannerOverlay *)self _reloadContent];
    host = [(CarStatusBannerOverlay *)self host];
    [host setCollisionConstraintsEnabled:-[CarStatusBannerOverlay isHidden](self forOverlay:{"isHidden"), self}];
  }

  else
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will not reload status views, overlay not active", buf, 2u);
    }
  }
}

- (void)setContentView:(id)view layoutGuide:(id)guide
{
  viewCopy = view;
  guideCopy = guide;
  superview = [(CarStatusBannerLabel *)self->_titleLabel superview];
  if (superview != viewCopy)
  {
    [(CarStatusBannerLabel *)self->_titleLabel removeFromSuperview];
    titleLabel = self->_titleLabel;
    self->_titleLabel = 0;

    if (viewCopy)
    {
      v49 = superview;
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Will create new status views container view", buf, 2u);
      }

      v11 = objc_alloc_init(UIView);
      containerView = self->_containerView;
      self->_containerView = v11;

      [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_containerView setUserInteractionEnabled:1];
      [(UIView *)self->_containerView setAlpha:0.0];
      [viewCopy addSubview:self->_containerView];
      v13 = [CarStatusBannerLabel alloc];
      WeakRetained = objc_loadWeakRetained(&self->_chromeVC);
      v15 = [(CarStatusBannerLabel *)v13 initWithChromeViewController:WeakRetained];
      v16 = self->_titleLabel;
      self->_titleLabel = v15;

      [(CarStatusBannerLabel *)self->_titleLabel setHidden:1];
      [(CarStatusBannerLabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarStatusBannerLabel *)self->_titleLabel addTarget:self action:"_tappedLabel" forControlEvents:64];
      [(CarStatusBannerLabel *)self->_titleLabel setUserInteractionEnabled:1];
      [viewCopy addSubview:self->_titleLabel];
      heightAnchor = [(UIView *)self->_containerView heightAnchor];
      v18 = [heightAnchor constraintEqualToConstant:0.0];
      heightConstraint = self->_heightConstraint;
      self->_heightConstraint = v18;

      v20 = objc_loadWeakRetained(&self->_chromeVC);
      sceneType = [v20 sceneType];

      v51 = viewCopy;
      if (sceneType == 1)
      {
        _maps_leftRHDAnchor = [guideCopy _maps_leftRHDAnchor];
        _maps_leftRHDAnchor2 = [(UIView *)self->_containerView _maps_leftRHDAnchor];
        LODWORD(v24) = 1148846080;
        v25 = [_maps_leftRHDAnchor _maps_constraintWithRHDAnchor:_maps_leftRHDAnchor2 relation:0 constant:-8.0 priority:v24];
        v26 = 24;
      }

      else
      {
        leadingAnchor = [guideCopy leadingAnchor];
        leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
        v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        leadingConstraint = self->_leadingConstraint;
        self->_leadingConstraint = v29;

        _maps_leftRHDAnchor = [(UIView *)self->_containerView trailingAnchor];
        _maps_leftRHDAnchor2 = [guideCopy trailingAnchor];
        v25 = [_maps_leftRHDAnchor constraintEqualToAnchor:_maps_leftRHDAnchor2];
        v26 = 32;
      }

      v31 = *(&self->super.isa + v26);
      *(&self->super.isa + v26) = v25;

      topAnchor = [(UIView *)self->_containerView topAnchor];
      topAnchor2 = [guideCopy topAnchor];
      v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.5];
      v53[0] = v46;
      bottomAnchor = [(UIView *)self->_containerView bottomAnchor];
      bottomAnchor2 = [guideCopy bottomAnchor];
      v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.5];
      v32 = self->_heightConstraint;
      v53[1] = v43;
      v53[2] = v32;
      leadingAnchor3 = [(CarStatusBannerLabel *)self->_titleLabel leadingAnchor];
      [(UIView *)self->_containerView leadingAnchor];
      v33 = v50 = guideCopy;
      v34 = [leadingAnchor3 constraintEqualToAnchor:v33];
      v53[3] = v34;
      trailingAnchor = [(CarStatusBannerLabel *)self->_titleLabel trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
      v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v53[4] = v37;
      centerYAnchor = [(CarStatusBannerLabel *)self->_titleLabel centerYAnchor];
      centerYAnchor2 = [(UIView *)self->_containerView centerYAnchor];
      v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v53[5] = v40;
      v41 = [NSArray arrayWithObjects:v53 count:6];
      [NSLayoutConstraint activateConstraints:v41];

      guideCopy = v50;
      [(NSLayoutConstraint *)self->_leadingConstraint setActive:1];
      [(NSLayoutConstraint *)self->_trailingConstraint setActive:1];
      [(CarStatusBannerOverlay *)self reloadAnimated:0];
      viewCopy = v51;
      superview = v49;
    }
  }
}

- (void)setHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != hostCopy)
  {
    objc_storeWeak(&self->_host, hostCopy);
    if (hostCopy)
    {
      overlayContentView = [hostCopy overlayContentView];
      v7 = [hostCopy layoutGuideForOverlay:self];
      [(CarStatusBannerOverlay *)self setContentView:overlayContentView layoutGuide:v7];

      if (!self->_titleLabel)
      {
        v8 = sub_100006E1C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set up constraints for status stackView as it was nil at the time.", v9, 2u);
        }
      }
    }

    else
    {
      [(CarStatusBannerOverlay *)self setContentView:0 layoutGuide:0];
    }
  }
}

- (void)dealloc
{
  [(CarStatusBannerOverlay *)self setContentView:0 layoutGuide:0];
  v3.receiver = self;
  v3.super_class = CarStatusBannerOverlay;
  [(CarStatusBannerOverlay *)&v3 dealloc];
}

- (CarStatusBannerOverlay)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CarStatusBannerOverlay;
  v5 = [(CarStatusBannerOverlay *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chromeVC, controllerCopy);
  }

  return v6;
}

@end