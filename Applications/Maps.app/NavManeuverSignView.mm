@interface NavManeuverSignView
- (BOOL)hasManeuverArtwork;
- (BOOL)hasShieldImage;
- (BOOL)hasShieldInfo;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (double)shieldCompressionRatio;
- (id)debugDescription;
- (void)_setNeedsUpdateShield;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateLabelText;
- (void)_updateShieldView;
- (void)clearContent;
- (void)configureForArrivalWithSignID:(id)a3 titles:(id)a4 details:(id)a5 maneuverType:(int)a6;
- (void)configureForProceedToRouteWithSignID:(id)a3 displayString:(id)a4;
- (void)navSignLabel:(id)a3 didSelectAlternate:(unint64_t)a4;
- (void)refreshSign;
- (void)setFlipMajorAndMinorTextInLabels:(BOOL)a3;
- (void)setManeuverGuidanceInfo:(id)a3 hasArrived:(BOOL)a4;
- (void)setShieldSize:(int64_t)a3;
- (void)setSuppressShieldView:(BOOL)a3;
- (void)updateTheme;
@end

@implementation NavManeuverSignView

- (void)navSignLabel:(id)a3 didSelectAlternate:(unint64_t)a4
{
  v11 = a3;
  v6 = [(NavSignView *)self majorLabel];

  if (v6 == v11 || ([(NavSignView *)self minorLabel], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v11))
  {
    v8 = [(NavSignView *)self analyticsDelegate];
    v9 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    v10 = [v9 signID];
    [v8 navSignView:self didSelectAlternate:a4 forPrimaryString:v6 == v11 inSign:v10];
  }
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = NavManeuverSignView;
  v3 = [(NavManeuverSignView *)&v7 debugDescription];
  v4 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  v5 = [NSString stringWithFormat:@"%@\nManeuver: [%@]", v3, v4];

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(NavManeuverSignView *)self _updateShieldView];
  [(NavManeuverSignView *)self setNeedsLayout];
  [(NavManeuverSignView *)self layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = NavManeuverSignView;
  *&v10 = a4;
  *&v11 = a5;
  [(NavManeuverSignView *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateShieldView
{
  if (self->_needsUpdateShield)
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    v7 = [v6 shieldInfo];
    v11 = [v7 shieldImageWithSize:-[NavManeuverSignView shieldSize](self scale:"shieldSize") idiom:{0, v5}];

    v8 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v11 image], 0, v5);
    v9 = [(NavManeuverSignView *)self shieldView];
    [v9 setImage:v8];

    v10 = [(NavManeuverSignView *)self shieldView];
    [v10 sizeToFit];

    [(NavManeuverSignView *)self setNeedsLayout];
    self->_needsUpdateShield = 0;
  }
}

- (void)_setNeedsUpdateShield
{
  if (!self->_needsUpdateShield)
  {
    self->_needsUpdateShield = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100865EE4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setFlipMajorAndMinorTextInLabels:(BOOL)a3
{
  if (self->_flipMajorAndMinorTextInLabels != a3)
  {
    self->_flipMajorAndMinorTextInLabels = a3;
    [(NavManeuverSignView *)self setNeedsLayout];
  }
}

- (double)shieldCompressionRatio
{
  v3 = [(NavManeuverSignView *)self shieldView];
  [v3 bounds];
  Width = CGRectGetWidth(v10);

  v5 = [(NavManeuverSignView *)self shieldView];
  v6 = [v5 image];
  [v6 size];
  v8 = v7;

  result = Width / v8;
  if (v8 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)setSuppressShieldView:(BOOL)a3
{
  if (self->_suppressShieldView != a3)
  {
    self->_suppressShieldView = a3;
    if ([(NavManeuverSignView *)self hasShieldInfo])
    {
      if ([(NavManeuverSignView *)self hasShieldImage])
      {

        [(NavManeuverSignView *)self setNeedsLayout];
      }
    }
  }
}

- (void)setShieldSize:(int64_t)a3
{
  if (self->_shieldSize != a3)
  {
    self->_shieldSize = a3;
    [(NavManeuverSignView *)self _setNeedsUpdateShield];
  }
}

- (BOOL)hasShieldImage
{
  v2 = [(NavManeuverSignView *)self shieldView];
  v3 = [v2 image];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasShieldInfo
{
  v2 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  v3 = [v2 shieldInfo];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasManeuverArtwork
{
  v2 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  v3 = [v2 maneuverArtwork];
  v4 = v3 != 0;

  return v4;
}

- (void)configureForArrivalWithSignID:(id)a3 titles:(id)a4 details:(id)a5 maneuverType:(int)a6
{
  v6 = *&a6;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  [(NavManeuverSignView *)self clearContent];
  if (![v10 count])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Arrived [Driving/Walking Navigation]" value:@"localized string not found" table:0];
    v15 = [v14 mkServerFormattedString];
    v20 = v15;
    v16 = [NSArray arrayWithObjects:&v20 count:1];

    v10 = v16;
  }

  v17 = [NavSignManeuverGuidanceInfo alloc];
  v18 = [GuidanceManeuverArtwork artworkWithManeuver:v6];
  v19 = [(NavSignManeuverGuidanceInfo *)v17 initWithSignID:v12 maneuverArtwork:v18 majorTextAlternatives:v10 minorTextAlternatives:v11 shieldInfo:0];

  [(NavManeuverSignView *)self setManeuverGuidanceInfo:v19 hasArrived:1];
}

- (void)configureForProceedToRouteWithSignID:(id)a3 displayString:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NavManeuverSignView *)self clearContent];
  if ([v6 length])
  {
    v8 = [v6 mkServerFormattedString];
  }

  else
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Proceed to the route [Driving/Walking Navigation]" value:@"localized string not found" table:0];
    v8 = [v10 mkServerFormattedString];
  }

  v11 = [NavSignManeuverGuidanceInfo alloc];
  v12 = [GuidanceManeuverArtwork artworkWithManeuver:17];
  v15 = v8;
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  v14 = [(NavSignManeuverGuidanceInfo *)v11 initWithSignID:v7 maneuverArtwork:v12 majorTextAlternatives:v13 minorTextAlternatives:0 shieldInfo:0];

  [(NavManeuverSignView *)self setManeuverGuidanceInfo:v14];
}

- (void)setManeuverGuidanceInfo:(id)a3 hasArrived:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_maneuverGuidanceInfo != v7)
  {
    v13 = v7;
    objc_storeStrong(&self->_maneuverGuidanceInfo, a3);
    v8 = [(NavSignManeuverGuidanceInfo *)v13 maneuverArtwork];
    v9 = [v8 isStartRouteManeuver];

    if (v9)
    {
      v10 = 1;
    }

    else if (v4 && (-[NavSignManeuverGuidanceInfo maneuverArtwork](v13, "maneuverArtwork"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isArriveManeuver], v11, (v12 & 1) != 0))
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    self->_maneuverSignType = v10;
    [(NavManeuverSignView *)self refreshSign];
    v7 = v13;
  }
}

- (void)_updateLabelText
{
  if ([(NavManeuverSignView *)self flipMajorAndMinorTextInLabels]&& ![(NavManeuverSignView *)self maneuverSignType])
  {
    v10 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    v11 = [v10 minorTextAlternatives];
    v12 = [(NavSignView *)self majorLabel];
    [v12 setTextAlternatives:v11];

    v18 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    v9 = [v18 majorTextAlternatives];
    goto LABEL_7;
  }

  if (-[NavManeuverSignView maneuverSignType](self, "maneuverSignType") != 1 || (-[NavManeuverSignView maneuverGuidanceInfo](self, "maneuverGuidanceInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 majorTextAlternatives], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5))
  {
    v6 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    v7 = [v6 majorTextAlternatives];
    v8 = [(NavSignView *)self majorLabel];
    [v8 setTextAlternatives:v7];

    v18 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    v9 = [v18 minorTextAlternatives];
LABEL_7:
    v13 = v9;
    v14 = [(NavSignView *)self minorLabel];
    [v14 setTextAlternatives:v13];

    goto LABEL_8;
  }

  v15 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  v16 = [v15 minorTextAlternatives];
  v17 = [(NavSignView *)self majorLabel];
  [v17 setTextAlternatives:v16];

  v18 = [(NavSignView *)self minorLabel];
  [v18 setTextAlternatives:0];
LABEL_8:
}

- (void)_updateConstraints
{
  v77.receiver = self;
  v77.super_class = NavManeuverSignView;
  [(NavSignView *)&v77 _updateConstraints];
  v5 = [(NavManeuverSignView *)self hasManeuverArtwork];
  if ([(NavManeuverSignView *)self hasShieldImage]&& ![(NavManeuverSignView *)self suppressShieldView])
  {
    v7 = [(NavSignView *)self signLayoutDelegate];
    v6 = [v7 forceHideShieldViewForSign:self] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v8 = [(NavManeuverSignView *)self maneuverView];
  [v8 setHidden:v5 ^ 1];

  if (v6)
  {
    v8 = [(NavManeuverSignView *)self shieldView];
    v2 = [v8 layer];
    v3 = [v2 animationKeys];
    v9 = v3 != 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(NavManeuverSignView *)self shieldView];
  [v10 setHidden:v9];

  if (v6)
  {
  }

  if ([(NavManeuverSignView *)self animatingToHideManeuverView])
  {
    v11 = [(NavManeuverSignView *)self maneuverView];
    [v11 setHidden:0];
  }

  v12 = [(NavSignView *)self signLayoutDelegate];
  v13 = v12;
  if (v12)
  {
    [v12 maneuverViewArrowMetricsForSign:self];
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  v14 = [(NavManeuverSignView *)self maneuverView];
  memcpy(__dst, __src, sizeof(__dst));
  [v14 setArrowMetrics:__dst];

  v15 = [(NavSignView *)self signLayoutDelegate];
  v16 = v15;
  if (v15)
  {
    [v15 maneuverViewJunctionArrowMetricsForSign:self];
  }

  else
  {
    memset(v74, 0, sizeof(v74));
  }

  v17 = [(NavManeuverSignView *)self maneuverView:v74[0]];
  memcpy(__dst, v74, sizeof(__dst));
  [v17 setJunctionArrowMetrics:__dst];

  v18 = [(NavSignView *)self signLayoutDelegate];
  [v18 maneuverViewSizeForSign:self];
  v20 = v19;
  v22 = v21;

  v23 = [(NavManeuverSignView *)self maneuverViewMinWidthConstraint];
  [v23 setConstant:v20];

  v24 = [(NavManeuverSignView *)self maneuverViewHeightConstraint];
  [v24 setConstant:v22];

  v25 = [(NavSignView *)self signLayoutDelegate];
  [v25 contentSideMarginForSign:self];
  v27 = v26;

  v28 = [(NavManeuverSignView *)self maneuverView];
  [v28 frame];
  Width = CGRectGetWidth(v80);

  if (v5)
  {
    v30 = v27;
  }

  else
  {
    v30 = -Width;
  }

  v31 = [(NavManeuverSignView *)self maneuverViewLeadingMarginConstraint];
  [v31 setConstant:v30];

  v32 = [(NavManeuverSignView *)self maneuverViewMinLeadingMarginConstraint];
  [v32 setConstant:v27];

  v33 = [(NavManeuverSignView *)self trailingToShieldViewTrailingConstraint];
  [v33 setConstant:v27];

  v34 = [(NavSignView *)self signLayoutDelegate];
  [v34 maneuverViewTopMarginForSign:self];
  v36 = round(v35);

  v37 = [(NavManeuverSignView *)self maneuverViewTopToTopConstraint];
  [v37 setConstant:v36];

  v38 = [(NavSignView *)self signLayoutDelegate];
  v39 = 1;
  [v38 navSignView:self textLeadingMarginForMajorText:1];
  v41 = v40;

  v42 = [(NavManeuverSignView *)self maneuverViewTrailingMarginConstraint];
  [v42 setConstant:v41];

  v43 = [(NavSignView *)self signLayoutDelegate];
  [v43 navSignView:self textTrailingMarginForMajorText:1];
  v45 = v44;

  v46 = [(NavManeuverSignView *)self shieldViewTrailingMajorLabelConstraint];
  [v46 setConstant:v45];

  v47 = [(NavSignView *)self minorLabel];
  v48 = [v47 font];
  [v48 _scaledValueForValue:1 useLanguageAwareScaling:2.0];
  v50 = v49;

  v51 = [(NavManeuverSignView *)self sheildViewBottomToMinorLabelTopConstraint];
  [v51 setConstant:v50];

  v52 = [(NavSignView *)self signLayoutDelegate];
  [v52 shieldViewTopMarginForSign:self];
  v54 = round(v53);

  v55 = [(NavManeuverSignView *)self shieldViewTopToTopConstraint];
  [v55 setConstant:v54];

  v56 = objc_alloc_init(LayoutConstraintActivationHelper);
  if (![(NavSignView *)self hasMajorText])
  {
    v39 = [(NavSignView *)self hasMinorText];
  }

  v57 = [(NavManeuverSignView *)self maneuverViewLeadingLayoutGuideConstraints];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:v57 activate:v5];

  v58 = [(NavManeuverSignView *)self maneuverViewTrailingLayoutGuideConstraints];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:v58 activate:v5 & v39];

  v59 = [(NavManeuverSignView *)self maneuverViewMinLeadingMarginConstraint];
  v79[0] = v59;
  v60 = [(NavManeuverSignView *)self maneuverViewMinWidthConstraint];
  v79[1] = v60;
  v61 = [(NavManeuverSignView *)self maneuverViewHeightConstraint];
  v79[2] = v61;
  v62 = [NSArray arrayWithObjects:v79 count:3];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:v62 activate:v5];

  v63 = [(NavSignView *)self signLayoutDelegate];
  v64 = [v63 maneuverViewPositionForSign:self];

  v65 = [(NavManeuverSignView *)self maneuverViewCenterYConstraint];
  v66 = v64 != 1 && v5;
  v67 = v64 == 1 && v5;
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraint:v65 activate:v66];

  v68 = [(NavManeuverSignView *)self maneuverViewTopToTopConstraint];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraint:v68 activate:v67];

  v69 = [(NavManeuverSignView *)self maneuverViewTrailingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraint:v69 activate:v5 & v39];

  v70 = [(NavManeuverSignView *)self shieldViewTopToTopConstraint];
  v78[0] = v70;
  v71 = [(NavManeuverSignView *)self shieldViewTrailingMajorLabelConstraint];
  v78[1] = v71;
  v72 = [(NavManeuverSignView *)self sheildViewBottomToMinorLabelTopConstraint];
  v78[2] = v72;
  v73 = [NSArray arrayWithObjects:v78 count:3];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:v73 activate:v6];

  [(LayoutConstraintActivationHelper *)v56 commitPendingConstraints];
}

- (void)_setupConstraints
{
  v109.receiver = self;
  v109.super_class = NavManeuverSignView;
  [(NavSignView *)&v109 _setupConstraints];
  v3 = objc_alloc_init(UILayoutGuide);
  [(NavManeuverSignView *)self addLayoutGuide:?];
  v108 = objc_alloc_init(UILayoutGuide);
  [(NavManeuverSignView *)self addLayoutGuide:v108];
  v4 = +[NSMutableArray array];
  v5 = _NSDictionaryOfVariableBindings(@"_maneuverView, _shieldView", self->_maneuverView, self->_shieldView, 0);
  v6 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_maneuverView]-(>=0)-|" options:0 metrics:0 views:v5];
  [v4 addObjectsFromArray:v6];

  v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[_maneuverView]-(>=0)-|", 0, 0, v5);
  [v4 addObjectsFromArray:v7];

  v107 = v5;
  v8 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(>=0)-[_shieldView]-(>=0)-|", 0, 0, v5);
  [v4 addObjectsFromArray:v8];

  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[_shieldView]-(>=0)-|", 0, 0, v5);
  [v4 addObjectsFromArray:v9];

  v10 = [(NavManeuverSignView *)self maneuverView];
  v11 = [v10 leadingAnchor];
  v12 = [(NavManeuverSignView *)self leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  maneuverViewLeadingMarginConstraint = self->_maneuverViewLeadingMarginConstraint;
  self->_maneuverViewLeadingMarginConstraint = v13;

  LODWORD(v15) = 1148829696;
  [(NSLayoutConstraint *)self->_maneuverViewLeadingMarginConstraint setPriority:v15];
  v16 = [(NavManeuverSignView *)self maneuverViewLeadingMarginConstraint];
  [v4 addObject:v16];

  v17 = [(NavManeuverSignView *)self trailingAnchor];
  v18 = [(NavManeuverSignView *)self shieldView];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  trailingToShieldViewTrailingConstraint = self->_trailingToShieldViewTrailingConstraint;
  self->_trailingToShieldViewTrailingConstraint = v20;

  v22 = [(NavManeuverSignView *)self trailingToShieldViewTrailingConstraint];
  v106 = v4;
  [v4 addObject:v22];

  [NSLayoutConstraint activateConstraints:v4];
  v23 = v3;
  v103 = [v3 leadingAnchor];
  v101 = [(NavManeuverSignView *)self leadingAnchor];
  v99 = [v103 constraintEqualToAnchor:v101];
  v111[0] = v99;
  v95 = [v3 trailingAnchor];
  v97 = [(NavManeuverSignView *)self maneuverView];
  v93 = [v97 leadingAnchor];
  v24 = [v95 constraintEqualToAnchor:v93];
  v111[1] = v24;
  v105 = v3;
  v25 = [v3 topAnchor];
  v26 = [(NavManeuverSignView *)self maneuverView];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  v111[2] = v28;
  v29 = [v23 heightAnchor];
  v30 = [(NavManeuverSignView *)self maneuverView];
  v31 = [v30 heightAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  v111[3] = v32;
  v33 = [NSArray arrayWithObjects:v111 count:4];
  maneuverViewLeadingLayoutGuideConstraints = self->_maneuverViewLeadingLayoutGuideConstraints;
  self->_maneuverViewLeadingLayoutGuideConstraints = v33;

  v102 = [v108 leadingAnchor];
  v104 = [(NavManeuverSignView *)self maneuverView];
  v100 = [v104 trailingAnchor];
  v98 = [v102 constraintEqualToAnchor:v100];
  v110[0] = v98;
  v94 = [v108 trailingAnchor];
  v96 = [(NavSignView *)self majorLabel];
  v92 = [v96 leadingAnchor];
  v35 = [v94 constraintEqualToAnchor:v92];
  v110[1] = v35;
  v36 = [v108 topAnchor];
  v37 = [(NavManeuverSignView *)self maneuverView];
  v38 = [v37 topAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  v110[2] = v39;
  v40 = [v108 heightAnchor];
  v41 = [(NavManeuverSignView *)self maneuverView];
  v42 = [v41 heightAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v110[3] = v43;
  v44 = [NSArray arrayWithObjects:v110 count:4];
  maneuverViewTrailingLayoutGuideConstraints = self->_maneuverViewTrailingLayoutGuideConstraints;
  self->_maneuverViewTrailingLayoutGuideConstraints = v44;

  v46 = [(NavManeuverSignView *)self maneuverView];
  v47 = [v46 leadingAnchor];
  v48 = [(NavManeuverSignView *)self leadingAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48];
  maneuverViewMinLeadingMarginConstraint = self->_maneuverViewMinLeadingMarginConstraint;
  self->_maneuverViewMinLeadingMarginConstraint = v49;

  v51 = [(NavManeuverSignView *)self maneuverView];
  v52 = [v51 widthAnchor];
  v53 = [v52 constraintGreaterThanOrEqualToConstant:0.0];
  maneuverViewMinWidthConstraint = self->_maneuverViewMinWidthConstraint;
  self->_maneuverViewMinWidthConstraint = v53;

  v55 = [(NavManeuverSignView *)self maneuverView];
  v56 = [v55 heightAnchor];
  v57 = [v56 constraintEqualToConstant:0.0];
  maneuverViewHeightConstraint = self->_maneuverViewHeightConstraint;
  self->_maneuverViewHeightConstraint = v57;

  v59 = [(NavManeuverSignView *)self maneuverView];
  v60 = [v59 centerYAnchor];
  v61 = [(NavManeuverSignView *)self centerYAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  maneuverViewCenterYConstraint = self->_maneuverViewCenterYConstraint;
  self->_maneuverViewCenterYConstraint = v62;

  v64 = [(NavManeuverSignView *)self maneuverView];
  v65 = [v64 topAnchor];
  v66 = [(NavManeuverSignView *)self topAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  maneuverViewTopToTopConstraint = self->_maneuverViewTopToTopConstraint;
  self->_maneuverViewTopToTopConstraint = v67;

  v69 = [(NavSignView *)self majorLabel];
  v70 = [v69 leadingAnchor];
  v71 = [(NavManeuverSignView *)self maneuverView];
  v72 = [v71 trailingAnchor];
  v73 = [v70 constraintEqualToAnchor:v72];
  maneuverViewTrailingMarginConstraint = self->_maneuverViewTrailingMarginConstraint;
  self->_maneuverViewTrailingMarginConstraint = v73;

  v75 = [(NavManeuverSignView *)self shieldView];
  v76 = [v75 topAnchor];
  v77 = [(NavManeuverSignView *)self topAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];
  shieldViewTopToTopConstraint = self->_shieldViewTopToTopConstraint;
  self->_shieldViewTopToTopConstraint = v78;

  v80 = [(NavManeuverSignView *)self shieldView];
  v81 = [v80 leadingAnchor];
  v82 = [(NavSignView *)self majorLabel];
  v83 = [v82 trailingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83];
  shieldViewTrailingMajorLabelConstraint = self->_shieldViewTrailingMajorLabelConstraint;
  self->_shieldViewTrailingMajorLabelConstraint = v84;

  v86 = [(NavSignView *)self minorLabel];
  v87 = [v86 topAnchor];
  v88 = [(NavManeuverSignView *)self shieldView];
  v89 = [v88 bottomAnchor];
  v90 = [v87 constraintGreaterThanOrEqualToAnchor:v89];
  sheildViewBottomToMinorLabelTopConstraint = self->_sheildViewBottomToMinorLabelTopConstraint;
  self->_sheildViewBottomToMinorLabelTopConstraint = v90;
}

- (void)_setupSubviews
{
  v20.receiver = self;
  v20.super_class = NavManeuverSignView;
  [(NavSignView *)&v20 _setupSubviews];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(NavManeuverSignView *)self setAccessibilityIdentifier:v4];

  self->_shieldSize = 4;
  v5 = [GuidanceManeuverView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(GuidanceManeuverView *)v5 initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
  maneuverView = self->_maneuverView;
  self->_maneuverView = v9;

  [(GuidanceManeuverView *)self->_maneuverView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GuidanceManeuverView *)self->_maneuverView setOverrideUserInterfaceStyle:2];
  LODWORD(v11) = 1148846080;
  [(GuidanceManeuverView *)self->_maneuverView setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1148829696;
  [(GuidanceManeuverView *)self->_maneuverView setContentHuggingPriority:0 forAxis:v12];
  [(GuidanceManeuverView *)self->_maneuverView setFraming:1];
  [(NavManeuverSignView *)self addSubview:self->_maneuverView];
  v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  shieldView = self->_shieldView;
  self->_shieldView = v13;

  [(UIImageView *)self->_shieldView setAccessibilityIdentifier:@"ShieldView"];
  [(UIImageView *)self->_shieldView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_shieldView setContentMode:1];
  [(UIImageView *)self->_shieldView setOverrideUserInterfaceStyle:2];
  LODWORD(v15) = 1148829696;
  [(UIImageView *)self->_shieldView setContentHuggingPriority:0 forAxis:v15];
  v16 = [(NavSignView *)self majorLabel];
  [v16 contentCompressionResistancePriorityForAxis:0];
  v18 = v17;

  *&v19 = v18 + -1.0;
  [(UIImageView *)self->_shieldView setContentCompressionResistancePriority:0 forAxis:v19];
  [(UIImageView *)self->_shieldView setAccessibilityIdentifier:@"ShieldView"];
  [(NavManeuverSignView *)self addSubview:self->_shieldView];
}

- (void)refreshSign
{
  v3 = [(NavSignView *)self signLayoutDelegate];
  v4 = v3;
  if (v3)
  {
    [v3 maneuverViewArrowMetricsForSign:self];
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  v5 = [(NavManeuverSignView *)self maneuverView];
  memcpy(__dst, __src, sizeof(__dst));
  [v5 setArrowMetrics:__dst];

  v6 = [(NavSignView *)self signLayoutDelegate];
  v7 = v6;
  if (v6)
  {
    [v6 maneuverViewJunctionArrowMetricsForSign:self];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v8 = [(NavManeuverSignView *)self maneuverView];
  memcpy(__dst, v13, sizeof(__dst));
  [v8 setJunctionArrowMetrics:__dst];

  v9 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  v10 = [v9 maneuverArtwork];
  v11 = [(NavManeuverSignView *)self maneuverView];
  [v11 setManeuverArtwork:v10];

  [(NavManeuverSignView *)self _setNeedsUpdateShield];
  v12.receiver = self;
  v12.super_class = NavManeuverSignView;
  [(NavSignView *)&v12 refreshSign];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = NavManeuverSignView;
  [(NavSignView *)&v9 updateTheme];
  v3 = [(NavManeuverSignView *)self theme];
  v4 = [v3 navSignGuidanceManeuverColor];
  v5 = [(NavManeuverSignView *)self maneuverView];
  [v5 setArrowColor:v4];

  v6 = [(NavManeuverSignView *)self theme];
  v7 = [v6 navSignGuidanceManeuverAccentColor];
  v8 = [(NavManeuverSignView *)self maneuverView];
  [v8 setAccentColor:v7];
}

- (void)clearContent
{
  self->_maneuverSignType = 0;
  [(NavManeuverSignView *)self setManeuverGuidanceInfo:0];
  v3 = [(NavManeuverSignView *)self maneuverView];
  [v3 setManeuverArtwork:0];

  v4.receiver = self;
  v4.super_class = NavManeuverSignView;
  [(NavSignView *)&v4 clearContent];
}

@end