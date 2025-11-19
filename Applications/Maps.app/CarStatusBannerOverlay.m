@interface CarStatusBannerOverlay
- (CarStatusBannerDelegate)delegate;
- (CarStatusBannerOverlay)initWithChromeViewController:(id)a3;
- (ChromeOverlayHosting)host;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_tappedLabel;
- (void)dealloc;
- (void)reloadAnimated:(BOOL)a3;
- (void)setContentView:(id)a3 layoutGuide:(id)a4;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
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
  v2 = [(CarStatusBannerOverlay *)self delegate];
  [v2 carStatusBannerDidTapBanner];
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (!self->_titleLabel)
  {
    return;
  }

  v4 = a3;
  if (!a4)
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

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarStatusBannerOverlay *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Reduce motion enabled, running status view update without animation", buf, 0xCu);

    goto LABEL_11;
  }

  v13 = 1;
LABEL_14:
  if ([(CarStatusBannerLabel *)self->_titleLabel isHidden]!= v4)
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = @"show";
      if (v4)
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
    v19 = v4;
    [UIView animateWithDuration:4 delay:v18 options:0 animations:v16 completion:0.0];
  }
}

- (void)reloadAnimated:(BOOL)a3
{
  if (self->_titleLabel)
  {
    [(CarStatusBannerOverlay *)self _reloadContent];
    v5 = [(CarStatusBannerOverlay *)self host];
    [v5 setCollisionConstraintsEnabled:-[CarStatusBannerOverlay isHidden](self forOverlay:{"isHidden"), self}];
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

- (void)setContentView:(id)a3 layoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarStatusBannerLabel *)self->_titleLabel superview];
  if (v8 != v6)
  {
    [(CarStatusBannerLabel *)self->_titleLabel removeFromSuperview];
    titleLabel = self->_titleLabel;
    self->_titleLabel = 0;

    if (v6)
    {
      v49 = v8;
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
      [v6 addSubview:self->_containerView];
      v13 = [CarStatusBannerLabel alloc];
      WeakRetained = objc_loadWeakRetained(&self->_chromeVC);
      v15 = [(CarStatusBannerLabel *)v13 initWithChromeViewController:WeakRetained];
      v16 = self->_titleLabel;
      self->_titleLabel = v15;

      [(CarStatusBannerLabel *)self->_titleLabel setHidden:1];
      [(CarStatusBannerLabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarStatusBannerLabel *)self->_titleLabel addTarget:self action:"_tappedLabel" forControlEvents:64];
      [(CarStatusBannerLabel *)self->_titleLabel setUserInteractionEnabled:1];
      [v6 addSubview:self->_titleLabel];
      v17 = [(UIView *)self->_containerView heightAnchor];
      v18 = [v17 constraintEqualToConstant:0.0];
      heightConstraint = self->_heightConstraint;
      self->_heightConstraint = v18;

      v20 = objc_loadWeakRetained(&self->_chromeVC);
      v21 = [v20 sceneType];

      v51 = v6;
      if (v21 == 1)
      {
        v22 = [v7 _maps_leftRHDAnchor];
        v23 = [(UIView *)self->_containerView _maps_leftRHDAnchor];
        LODWORD(v24) = 1148846080;
        v25 = [v22 _maps_constraintWithRHDAnchor:v23 relation:0 constant:-8.0 priority:v24];
        v26 = 24;
      }

      else
      {
        v27 = [v7 leadingAnchor];
        v28 = [(UIView *)self->_containerView leadingAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];
        leadingConstraint = self->_leadingConstraint;
        self->_leadingConstraint = v29;

        v22 = [(UIView *)self->_containerView trailingAnchor];
        v23 = [v7 trailingAnchor];
        v25 = [v22 constraintEqualToAnchor:v23];
        v26 = 32;
      }

      v31 = *(&self->super.isa + v26);
      *(&self->super.isa + v26) = v25;

      v48 = [(UIView *)self->_containerView topAnchor];
      v47 = [v7 topAnchor];
      v46 = [v48 constraintEqualToAnchor:v47 constant:2.5];
      v53[0] = v46;
      v45 = [(UIView *)self->_containerView bottomAnchor];
      v44 = [v7 bottomAnchor];
      v43 = [v45 constraintEqualToAnchor:v44 constant:-2.5];
      v32 = self->_heightConstraint;
      v53[1] = v43;
      v53[2] = v32;
      v42 = [(CarStatusBannerLabel *)self->_titleLabel leadingAnchor];
      [(UIView *)self->_containerView leadingAnchor];
      v33 = v50 = v7;
      v34 = [v42 constraintEqualToAnchor:v33];
      v53[3] = v34;
      v35 = [(CarStatusBannerLabel *)self->_titleLabel trailingAnchor];
      v36 = [(UIView *)self->_containerView trailingAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      v53[4] = v37;
      v38 = [(CarStatusBannerLabel *)self->_titleLabel centerYAnchor];
      v39 = [(UIView *)self->_containerView centerYAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];
      v53[5] = v40;
      v41 = [NSArray arrayWithObjects:v53 count:6];
      [NSLayoutConstraint activateConstraints:v41];

      v7 = v50;
      [(NSLayoutConstraint *)self->_leadingConstraint setActive:1];
      [(NSLayoutConstraint *)self->_trailingConstraint setActive:1];
      [(CarStatusBannerOverlay *)self reloadAnimated:0];
      v6 = v51;
      v8 = v49;
    }
  }
}

- (void)setHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_host, v4);
    if (v4)
    {
      v6 = [v4 overlayContentView];
      v7 = [v4 layoutGuideForOverlay:self];
      [(CarStatusBannerOverlay *)self setContentView:v6 layoutGuide:v7];

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

- (CarStatusBannerOverlay)initWithChromeViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarStatusBannerOverlay;
  v5 = [(CarStatusBannerOverlay *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chromeVC, v4);
  }

  return v6;
}

@end