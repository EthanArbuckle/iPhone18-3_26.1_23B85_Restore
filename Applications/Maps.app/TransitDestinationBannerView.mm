@interface TransitDestinationBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (TransitDestinationBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
- (void)setExpanded:(BOOL)expanded;
- (void)setShowsControls:(BOOL)controls;
- (void)updateFromBannerItem;
@end

@implementation TransitDestinationBannerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cachedHeight = self->_cachedHeight;
  if (cachedHeight == -1.0 || self->_calculatedWidth != fits.width)
  {
    if ([(MapsBannerView *)self aperturePresentation])
    {
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(TransitDestinationBannerView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
      [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
      MaxY = CGRectGetMaxY(v25);
      contentView = [(MapsBannerView *)self contentView];
      [contentView _maps_compressedSizeForWidth:0 withBlock:width];
      v11 = v10 + 17.0 + MaxY;
    }

    else
    {
      [(TransitDestinationBannerView *)self _maps_compressedSizeForWidth:0 withBlock:width];
      v11 = v12;
    }

    if (v11 <= height)
    {
      self->_cachedHeight = v11;
      self->_calculatedWidth = width;
      cachedHeight = self->_cachedHeight;
    }

    else
    {
      v13 = sub_100032C3C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        item = [(MapsBannerView *)self item];
        v23.width = width;
        v23.height = height;
        v15 = NSStringFromCGSize(v23);
        v17 = 138412802;
        v18 = item;
        v19 = 2112;
        v20 = v15;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Banner: %@ wasn't able to draw correctly in the provided space: %@ desired height: %f", &v17, 0x20u);
      }

      cachedHeight = height;
    }
  }

  v16 = width;
  result.height = cachedHeight;
  result.width = v16;
  return result;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  self->_expanded = expanded;
  leadingView = [(TransitDestinationBannerView *)self leadingView];
  v6 = leadingView;
  if (expandedCopy)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (expandedCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [leadingView setAlpha:v7];

  trailingView = [(TransitDestinationBannerView *)self trailingView];
  [trailingView setAlpha:v7];

  minimalView = [(TransitDestinationBannerView *)self minimalView];
  [minimalView setAlpha:v7];

  detachedMinimalView = [(TransitDestinationBannerView *)self detachedMinimalView];
  [detachedMinimalView setAlpha:v7];

  contentView = [(MapsBannerView *)self contentView];
  [contentView setAlpha:v8];

  topConstraint = self->_topConstraint;

  [(NSLayoutConstraint *)topConstraint setActive:expandedCopy];
}

- (void)setShowsControls:(BOOL)controls
{
  controlsCopy = controls;
  aperturePresentation = [(MapsBannerView *)self aperturePresentation];
  if (self->_showsControls != (aperturePresentation & controlsCopy))
  {
    self->_showsControls = aperturePresentation & controlsCopy;
    [(UIView *)self->_controlsView setHidden:aperturePresentation & controlsCopy ^ 1];
    self->_cachedHeight = -1.0;
  }
}

- (void)updateFromBannerItem
{
  item = [(MapsBannerView *)self item];
  title = [item title];
  primaryLabel = [(TransitDestinationBannerView *)self primaryLabel];
  [primaryLabel setText:title];

  self->_cachedHeight = -1.0;
}

- (TransitDestinationBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v101.receiver = self;
  v101.super_class = TransitDestinationBannerView;
  v6 = [(MapsBannerView *)&v101 initWithTarget:target item:item aperturePresentation:?];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(TransitDestinationBannerView *)v6 setAccessibilityIdentifier:v8];

    if (presentationCopy)
    {
      v96 = presentationCopy;
      v9 = [EmptyApertureView alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      height = [(EmptyApertureView *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
      trailingView = v6->_trailingView;
      v6->_trailingView = height;

      [(EmptyApertureView *)v6->_trailingView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TransitDestinationBannerView *)v6 addSubview:v6->_trailingView];
      v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      leadingImageView = v6->_leadingImageView;
      v6->_leadingImageView = v15;

      [(UIImageView *)v6->_leadingImageView setAccessibilityIdentifier:@"LeadingImageView"];
      v17 = [UIImage systemImageNamed:@"tram.fill"];
      [(UIImageView *)v6->_leadingImageView setImage:v17];

      v18 = +[MapsTheme apertureKeyColor];
      [(UIImageView *)v6->_leadingImageView setTintColor:v18];

      [(UIImageView *)v6->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)v6->_leadingImageView setContentMode:1];
      v19 = [[TransitApertureElementWrapperView alloc] initWithWrappedView:v6->_leadingImageView isDetached:0];
      leadingView = v6->_leadingView;
      v6->_leadingView = v19;

      [(TransitApertureElementWrapperView *)v6->_leadingView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TransitDestinationBannerView *)v6 addSubview:v6->_leadingView];
      widthAnchor = [(TransitApertureElementWrapperView *)v6->_leadingView widthAnchor];
      v92 = [widthAnchor constraintEqualToConstant:20.0];
      v104[0] = v92;
      heightAnchor = [(TransitApertureElementWrapperView *)v6->_leadingView heightAnchor];
      v89 = [heightAnchor constraintEqualToConstant:20.0];
      v104[1] = v89;
      leadingAnchor = [(TransitApertureElementWrapperView *)v6->_leadingView leadingAnchor];
      sBUISA_systemApertureLeadingConcentricContentLayoutGuide = [(TransitDestinationBannerView *)v6 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
      leadingAnchor2 = [sBUISA_systemApertureLeadingConcentricContentLayoutGuide leadingAnchor];
      [(MapsBannerView *)v6 bannerAccessoryViewLeadingInset];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      v104[2] = v24;
      trailingAnchor = [(EmptyApertureView *)v6->_trailingView trailingAnchor];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [(TransitDestinationBannerView *)v6 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      trailingAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide trailingAnchor];
      v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v104[3] = v28;
      v29 = [NSArray arrayWithObjects:v104 count:4];

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v97 objects:v103 count:16];
      if (v31)
      {
        v33 = v31;
        v34 = *v98;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v98 != v34)
            {
              objc_enumerationMutation(v30);
            }

            LODWORD(v32) = 1144750080;
            [*(*(&v97 + 1) + 8 * i) setPriority:v32];
          }

          v33 = [v30 countByEnumeratingWithState:&v97 objects:v103 count:16];
        }

        while (v33);
      }

      [NSLayoutConstraint activateConstraints:v30];
      v36 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      minimalImageView = v6->_minimalImageView;
      v6->_minimalImageView = v36;

      [(UIImageView *)v6->_minimalImageView setAccessibilityIdentifier:@"MinimalImageView"];
      v38 = [UIImage systemImageNamed:@"tram.fill"];
      [(UIImageView *)v6->_minimalImageView setImage:v38];

      v39 = +[MapsTheme apertureKeyColor];
      [(UIImageView *)v6->_minimalImageView setTintColor:v39];

      [(UIImageView *)v6->_minimalImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)v6->_minimalImageView setContentMode:1];
      v40 = [[TransitApertureElementWrapperView alloc] initWithWrappedView:v6->_minimalImageView isDetached:0];
      minimalView = v6->_minimalView;
      v6->_minimalView = v40;

      [(TransitApertureElementWrapperView *)v6->_minimalView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TransitDestinationBannerView *)v6 addSubview:v6->_minimalView];
      v42 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      detachedMinimalImageView = v6->_detachedMinimalImageView;
      v6->_detachedMinimalImageView = v42;

      [(UIImageView *)v6->_detachedMinimalImageView setAccessibilityIdentifier:@"DetachedMinimalImageView"];
      v44 = [UIImage systemImageNamed:@"tram.fill"];
      [(UIImageView *)v6->_detachedMinimalImageView setImage:v44];

      v45 = +[MapsTheme apertureKeyColor];
      [(UIImageView *)v6->_detachedMinimalImageView setTintColor:v45];

      [(UIImageView *)v6->_detachedMinimalImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)v6->_detachedMinimalImageView setContentMode:1];
      v46 = [[TransitApertureElementWrapperView alloc] initWithWrappedView:v6->_detachedMinimalImageView isDetached:1];
      detachedMinimalView = v6->_detachedMinimalView;
      v6->_detachedMinimalView = v46;

      [(TransitApertureElementWrapperView *)v6->_detachedMinimalView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TransitDestinationBannerView *)v6 addSubview:v6->_detachedMinimalView];

      presentationCopy = v96;
    }

    v48 = [UILabel alloc];
    v49 = CGRectZero.origin.y;
    v50 = CGRectZero.size.width;
    v51 = CGRectZero.size.height;
    v52 = [v48 initWithFrame:{CGRectZero.origin.x, v49, v50, v51}];
    primaryLabel = v6->_primaryLabel;
    v6->_primaryLabel = v52;

    [(UILabel *)v6->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
    [(UILabel *)v6->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = +[UIColor labelColor];
    v55 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v56 = [v54 resolvedColorWithTraitCollection:v55];
    [(UILabel *)v6->_primaryLabel setTextColor:v56];

    [(UILabel *)v6->_primaryLabel setNumberOfLines:3];
    v57 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightBold];
    [(UILabel *)v6->_primaryLabel setFont:v57];

    v58 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, v49, v50, v51}];
    primaryImageView = v6->_primaryImageView;
    v6->_primaryImageView = v58;

    [(UIImageView *)v6->_primaryImageView setAccessibilityIdentifier:@"PrimaryImageView"];
    v95 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightBold];
    v93 = [UIImageSymbolConfiguration configurationWithFont:?];
    v60 = [UIImage systemImageNamed:@"tram.fill" withConfiguration:?];
    [(UIImageView *)v6->_primaryImageView setImage:v60];

    v61 = +[UIColor labelColor];
    v62 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v63 = [v61 resolvedColorWithTraitCollection:v62];
    [(UIImageView *)v6->_primaryImageView setTintColor:v63];

    [(UIImageView *)v6->_primaryImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_primaryImageView setContentMode:4];
    if (presentationCopy)
    {
      v64 = +[NSBundle mainBundle];
      v65 = [v64 localizedStringForKey:@"[Nav Banner] End Route" value:@"localized string not found" table:0];
      v66 = [UIAction actionWithTitle:v65 image:0 identifier:0 handler:&stru_10165DBB8];

      [v66 setAttributes:{objc_msgSend(v66, "attributes") | 2}];
      v67 = +[UIButtonConfiguration sbui_systemApertureTextButtonConfiguration];
      v68 = +[UIColor systemRedColor];
      [v67 setBaseBackgroundColor:v68];

      v69 = +[UIColor systemRedColor];
      [v67 setBaseForegroundColor:v69];

      v70 = [SBUISystemApertureButton buttonWithConfiguration:v67 primaryAction:v66];
      [(UIView *)v70 setAccessibilityIdentifier:@"EndButton"];
      [(UIView *)v70 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v70 setHidden:1];
      controlsView = v6->_controlsView;
      v6->_controlsView = v70;
      v91 = v70;

      v72 = v6->_controlsView;
      _tightBoundingBoxLayoutGuide = [(UILabel *)v6->_primaryLabel _tightBoundingBoxLayoutGuide];
      topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
      sBUISA_systemApertureObstructedAreaLayoutGuide = [(TransitDestinationBannerView *)v6 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v77 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      topConstraint = v6->_topConstraint;
      v6->_topConstraint = v77;

      v79 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      LODWORD(v80) = 1144750080;
      [(NSLayoutConstraint *)v6->_topConstraint setPriority:v80];
    }

    else
    {
      v72 = 0;
      v79 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    heightAnchor2 = [(UIImageView *)v6->_primaryImageView heightAnchor];
    v82 = [heightAnchor2 constraintEqualToConstant:36.0];
    v102[0] = v82;
    widthAnchor2 = [(UIImageView *)v6->_primaryImageView widthAnchor];
    v84 = [widthAnchor2 constraintEqualToConstant:36.0];
    v102[1] = v84;
    v85 = [v79[286] arrayWithObjects:v102 count:2];
    [NSLayoutConstraint activateConstraints:v85];

    v86 = [[MapsBannerContent alloc] initWithHeaderView:0 iconView:v6->_primaryImageView leadingTopView:v6->_primaryLabel trailingTopView:0 bottomView:0 footerView:v72];
    contentView = [(MapsBannerView *)v6 contentView];
    [contentView setContent:v86];

    [(TransitDestinationBannerView *)v6 updateFromBannerItem];
    v6->_cachedHeight = -1.0;
    v6->_calculatedWidth = -1.0;
  }

  return v6;
}

@end