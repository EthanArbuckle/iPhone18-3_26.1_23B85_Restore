@interface NavManeuverSignView
- (BOOL)hasManeuverArtwork;
- (BOOL)hasShieldImage;
- (BOOL)hasShieldInfo;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (double)shieldCompressionRatio;
- (id)debugDescription;
- (void)_setNeedsUpdateShield;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateLabelText;
- (void)_updateShieldView;
- (void)clearContent;
- (void)configureForArrivalWithSignID:(id)d titles:(id)titles details:(id)details maneuverType:(int)type;
- (void)configureForProceedToRouteWithSignID:(id)d displayString:(id)string;
- (void)navSignLabel:(id)label didSelectAlternate:(unint64_t)alternate;
- (void)refreshSign;
- (void)setFlipMajorAndMinorTextInLabels:(BOOL)labels;
- (void)setManeuverGuidanceInfo:(id)info hasArrived:(BOOL)arrived;
- (void)setShieldSize:(int64_t)size;
- (void)setSuppressShieldView:(BOOL)view;
- (void)updateTheme;
@end

@implementation NavManeuverSignView

- (void)navSignLabel:(id)label didSelectAlternate:(unint64_t)alternate
{
  labelCopy = label;
  majorLabel = [(NavSignView *)self majorLabel];

  if (majorLabel == labelCopy || ([(NavSignView *)self minorLabel], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == labelCopy))
  {
    analyticsDelegate = [(NavSignView *)self analyticsDelegate];
    maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    signID = [maneuverGuidanceInfo signID];
    [analyticsDelegate navSignView:self didSelectAlternate:alternate forPrimaryString:majorLabel == labelCopy inSign:signID];
  }
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = NavManeuverSignView;
  v3 = [(NavManeuverSignView *)&v7 debugDescription];
  maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  v5 = [NSString stringWithFormat:@"%@\nManeuver: [%@]", v3, maneuverGuidanceInfo];

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(NavManeuverSignView *)self _updateShieldView];
  [(NavManeuverSignView *)self setNeedsLayout];
  [(NavManeuverSignView *)self layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = NavManeuverSignView;
  *&v10 = priority;
  *&v11 = fittingPriority;
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

    maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    shieldInfo = [maneuverGuidanceInfo shieldInfo];
    v11 = [shieldInfo shieldImageWithSize:-[NavManeuverSignView shieldSize](self scale:"shieldSize") idiom:{0, v5}];

    v8 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v11 image], 0, v5);
    shieldView = [(NavManeuverSignView *)self shieldView];
    [shieldView setImage:v8];

    shieldView2 = [(NavManeuverSignView *)self shieldView];
    [shieldView2 sizeToFit];

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

- (void)setFlipMajorAndMinorTextInLabels:(BOOL)labels
{
  if (self->_flipMajorAndMinorTextInLabels != labels)
  {
    self->_flipMajorAndMinorTextInLabels = labels;
    [(NavManeuverSignView *)self setNeedsLayout];
  }
}

- (double)shieldCompressionRatio
{
  shieldView = [(NavManeuverSignView *)self shieldView];
  [shieldView bounds];
  Width = CGRectGetWidth(v10);

  shieldView2 = [(NavManeuverSignView *)self shieldView];
  image = [shieldView2 image];
  [image size];
  v8 = v7;

  result = Width / v8;
  if (v8 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)setSuppressShieldView:(BOOL)view
{
  if (self->_suppressShieldView != view)
  {
    self->_suppressShieldView = view;
    if ([(NavManeuverSignView *)self hasShieldInfo])
    {
      if ([(NavManeuverSignView *)self hasShieldImage])
      {

        [(NavManeuverSignView *)self setNeedsLayout];
      }
    }
  }
}

- (void)setShieldSize:(int64_t)size
{
  if (self->_shieldSize != size)
  {
    self->_shieldSize = size;
    [(NavManeuverSignView *)self _setNeedsUpdateShield];
  }
}

- (BOOL)hasShieldImage
{
  shieldView = [(NavManeuverSignView *)self shieldView];
  image = [shieldView image];
  v4 = image != 0;

  return v4;
}

- (BOOL)hasShieldInfo
{
  maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  shieldInfo = [maneuverGuidanceInfo shieldInfo];
  v4 = shieldInfo != 0;

  return v4;
}

- (BOOL)hasManeuverArtwork
{
  maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  maneuverArtwork = [maneuverGuidanceInfo maneuverArtwork];
  v4 = maneuverArtwork != 0;

  return v4;
}

- (void)configureForArrivalWithSignID:(id)d titles:(id)titles details:(id)details maneuverType:(int)type
{
  v6 = *&type;
  titlesCopy = titles;
  detailsCopy = details;
  dCopy = d;
  [(NavManeuverSignView *)self clearContent];
  if (![titlesCopy count])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Arrived [Driving/Walking Navigation]" value:@"localized string not found" table:0];
    mkServerFormattedString = [v14 mkServerFormattedString];
    v20 = mkServerFormattedString;
    v16 = [NSArray arrayWithObjects:&v20 count:1];

    titlesCopy = v16;
  }

  v17 = [NavSignManeuverGuidanceInfo alloc];
  v18 = [GuidanceManeuverArtwork artworkWithManeuver:v6];
  v19 = [(NavSignManeuverGuidanceInfo *)v17 initWithSignID:dCopy maneuverArtwork:v18 majorTextAlternatives:titlesCopy minorTextAlternatives:detailsCopy shieldInfo:0];

  [(NavManeuverSignView *)self setManeuverGuidanceInfo:v19 hasArrived:1];
}

- (void)configureForProceedToRouteWithSignID:(id)d displayString:(id)string
{
  stringCopy = string;
  dCopy = d;
  [(NavManeuverSignView *)self clearContent];
  if ([stringCopy length])
  {
    mkServerFormattedString = [stringCopy mkServerFormattedString];
  }

  else
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Proceed to the route [Driving/Walking Navigation]" value:@"localized string not found" table:0];
    mkServerFormattedString = [v10 mkServerFormattedString];
  }

  v11 = [NavSignManeuverGuidanceInfo alloc];
  v12 = [GuidanceManeuverArtwork artworkWithManeuver:17];
  v15 = mkServerFormattedString;
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  v14 = [(NavSignManeuverGuidanceInfo *)v11 initWithSignID:dCopy maneuverArtwork:v12 majorTextAlternatives:v13 minorTextAlternatives:0 shieldInfo:0];

  [(NavManeuverSignView *)self setManeuverGuidanceInfo:v14];
}

- (void)setManeuverGuidanceInfo:(id)info hasArrived:(BOOL)arrived
{
  arrivedCopy = arrived;
  infoCopy = info;
  if (self->_maneuverGuidanceInfo != infoCopy)
  {
    v13 = infoCopy;
    objc_storeStrong(&self->_maneuverGuidanceInfo, info);
    maneuverArtwork = [(NavSignManeuverGuidanceInfo *)v13 maneuverArtwork];
    isStartRouteManeuver = [maneuverArtwork isStartRouteManeuver];

    if (isStartRouteManeuver)
    {
      v10 = 1;
    }

    else if (arrivedCopy && (-[NavSignManeuverGuidanceInfo maneuverArtwork](v13, "maneuverArtwork"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isArriveManeuver], v11, (v12 & 1) != 0))
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    self->_maneuverSignType = v10;
    [(NavManeuverSignView *)self refreshSign];
    infoCopy = v13;
  }
}

- (void)_updateLabelText
{
  if ([(NavManeuverSignView *)self flipMajorAndMinorTextInLabels]&& ![(NavManeuverSignView *)self maneuverSignType])
  {
    maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    minorTextAlternatives = [maneuverGuidanceInfo minorTextAlternatives];
    majorLabel = [(NavSignView *)self majorLabel];
    [majorLabel setTextAlternatives:minorTextAlternatives];

    maneuverGuidanceInfo2 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    majorTextAlternatives = [maneuverGuidanceInfo2 majorTextAlternatives];
    goto LABEL_7;
  }

  if (-[NavManeuverSignView maneuverSignType](self, "maneuverSignType") != 1 || (-[NavManeuverSignView maneuverGuidanceInfo](self, "maneuverGuidanceInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 majorTextAlternatives], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5))
  {
    maneuverGuidanceInfo3 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    majorTextAlternatives2 = [maneuverGuidanceInfo3 majorTextAlternatives];
    majorLabel2 = [(NavSignView *)self majorLabel];
    [majorLabel2 setTextAlternatives:majorTextAlternatives2];

    maneuverGuidanceInfo2 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
    majorTextAlternatives = [maneuverGuidanceInfo2 minorTextAlternatives];
LABEL_7:
    v13 = majorTextAlternatives;
    minorLabel = [(NavSignView *)self minorLabel];
    [minorLabel setTextAlternatives:v13];

    goto LABEL_8;
  }

  maneuverGuidanceInfo4 = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  minorTextAlternatives2 = [maneuverGuidanceInfo4 minorTextAlternatives];
  majorLabel3 = [(NavSignView *)self majorLabel];
  [majorLabel3 setTextAlternatives:minorTextAlternatives2];

  maneuverGuidanceInfo2 = [(NavSignView *)self minorLabel];
  [maneuverGuidanceInfo2 setTextAlternatives:0];
LABEL_8:
}

- (void)_updateConstraints
{
  v77.receiver = self;
  v77.super_class = NavManeuverSignView;
  [(NavSignView *)&v77 _updateConstraints];
  hasManeuverArtwork = [(NavManeuverSignView *)self hasManeuverArtwork];
  if ([(NavManeuverSignView *)self hasShieldImage]&& ![(NavManeuverSignView *)self suppressShieldView])
  {
    signLayoutDelegate = [(NavSignView *)self signLayoutDelegate];
    v6 = [signLayoutDelegate forceHideShieldViewForSign:self] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  maneuverView = [(NavManeuverSignView *)self maneuverView];
  [maneuverView setHidden:hasManeuverArtwork ^ 1];

  if (v6)
  {
    maneuverView = [(NavManeuverSignView *)self shieldView];
    layer = [maneuverView layer];
    animationKeys = [layer animationKeys];
    v9 = animationKeys != 0;
  }

  else
  {
    v9 = 1;
  }

  shieldView = [(NavManeuverSignView *)self shieldView];
  [shieldView setHidden:v9];

  if (v6)
  {
  }

  if ([(NavManeuverSignView *)self animatingToHideManeuverView])
  {
    maneuverView2 = [(NavManeuverSignView *)self maneuverView];
    [maneuverView2 setHidden:0];
  }

  signLayoutDelegate2 = [(NavSignView *)self signLayoutDelegate];
  v13 = signLayoutDelegate2;
  if (signLayoutDelegate2)
  {
    [signLayoutDelegate2 maneuverViewArrowMetricsForSign:self];
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  maneuverView3 = [(NavManeuverSignView *)self maneuverView];
  memcpy(__dst, __src, sizeof(__dst));
  [maneuverView3 setArrowMetrics:__dst];

  signLayoutDelegate3 = [(NavSignView *)self signLayoutDelegate];
  v16 = signLayoutDelegate3;
  if (signLayoutDelegate3)
  {
    [signLayoutDelegate3 maneuverViewJunctionArrowMetricsForSign:self];
  }

  else
  {
    memset(v74, 0, sizeof(v74));
  }

  v17 = [(NavManeuverSignView *)self maneuverView:v74[0]];
  memcpy(__dst, v74, sizeof(__dst));
  [v17 setJunctionArrowMetrics:__dst];

  signLayoutDelegate4 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate4 maneuverViewSizeForSign:self];
  v20 = v19;
  v22 = v21;

  maneuverViewMinWidthConstraint = [(NavManeuverSignView *)self maneuverViewMinWidthConstraint];
  [maneuverViewMinWidthConstraint setConstant:v20];

  maneuverViewHeightConstraint = [(NavManeuverSignView *)self maneuverViewHeightConstraint];
  [maneuverViewHeightConstraint setConstant:v22];

  signLayoutDelegate5 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate5 contentSideMarginForSign:self];
  v27 = v26;

  maneuverView4 = [(NavManeuverSignView *)self maneuverView];
  [maneuverView4 frame];
  Width = CGRectGetWidth(v80);

  if (hasManeuverArtwork)
  {
    v30 = v27;
  }

  else
  {
    v30 = -Width;
  }

  maneuverViewLeadingMarginConstraint = [(NavManeuverSignView *)self maneuverViewLeadingMarginConstraint];
  [maneuverViewLeadingMarginConstraint setConstant:v30];

  maneuverViewMinLeadingMarginConstraint = [(NavManeuverSignView *)self maneuverViewMinLeadingMarginConstraint];
  [maneuverViewMinLeadingMarginConstraint setConstant:v27];

  trailingToShieldViewTrailingConstraint = [(NavManeuverSignView *)self trailingToShieldViewTrailingConstraint];
  [trailingToShieldViewTrailingConstraint setConstant:v27];

  signLayoutDelegate6 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate6 maneuverViewTopMarginForSign:self];
  v36 = round(v35);

  maneuverViewTopToTopConstraint = [(NavManeuverSignView *)self maneuverViewTopToTopConstraint];
  [maneuverViewTopToTopConstraint setConstant:v36];

  signLayoutDelegate7 = [(NavSignView *)self signLayoutDelegate];
  hasMinorText = 1;
  [signLayoutDelegate7 navSignView:self textLeadingMarginForMajorText:1];
  v41 = v40;

  maneuverViewTrailingMarginConstraint = [(NavManeuverSignView *)self maneuverViewTrailingMarginConstraint];
  [maneuverViewTrailingMarginConstraint setConstant:v41];

  signLayoutDelegate8 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate8 navSignView:self textTrailingMarginForMajorText:1];
  v45 = v44;

  shieldViewTrailingMajorLabelConstraint = [(NavManeuverSignView *)self shieldViewTrailingMajorLabelConstraint];
  [shieldViewTrailingMajorLabelConstraint setConstant:v45];

  minorLabel = [(NavSignView *)self minorLabel];
  font = [minorLabel font];
  [font _scaledValueForValue:1 useLanguageAwareScaling:2.0];
  v50 = v49;

  sheildViewBottomToMinorLabelTopConstraint = [(NavManeuverSignView *)self sheildViewBottomToMinorLabelTopConstraint];
  [sheildViewBottomToMinorLabelTopConstraint setConstant:v50];

  signLayoutDelegate9 = [(NavSignView *)self signLayoutDelegate];
  [signLayoutDelegate9 shieldViewTopMarginForSign:self];
  v54 = round(v53);

  shieldViewTopToTopConstraint = [(NavManeuverSignView *)self shieldViewTopToTopConstraint];
  [shieldViewTopToTopConstraint setConstant:v54];

  v56 = objc_alloc_init(LayoutConstraintActivationHelper);
  if (![(NavSignView *)self hasMajorText])
  {
    hasMinorText = [(NavSignView *)self hasMinorText];
  }

  maneuverViewLeadingLayoutGuideConstraints = [(NavManeuverSignView *)self maneuverViewLeadingLayoutGuideConstraints];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:maneuverViewLeadingLayoutGuideConstraints activate:hasManeuverArtwork];

  maneuverViewTrailingLayoutGuideConstraints = [(NavManeuverSignView *)self maneuverViewTrailingLayoutGuideConstraints];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:maneuverViewTrailingLayoutGuideConstraints activate:hasManeuverArtwork & hasMinorText];

  maneuverViewMinLeadingMarginConstraint2 = [(NavManeuverSignView *)self maneuverViewMinLeadingMarginConstraint];
  v79[0] = maneuverViewMinLeadingMarginConstraint2;
  maneuverViewMinWidthConstraint2 = [(NavManeuverSignView *)self maneuverViewMinWidthConstraint];
  v79[1] = maneuverViewMinWidthConstraint2;
  maneuverViewHeightConstraint2 = [(NavManeuverSignView *)self maneuverViewHeightConstraint];
  v79[2] = maneuverViewHeightConstraint2;
  v62 = [NSArray arrayWithObjects:v79 count:3];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraints:v62 activate:hasManeuverArtwork];

  signLayoutDelegate10 = [(NavSignView *)self signLayoutDelegate];
  v64 = [signLayoutDelegate10 maneuverViewPositionForSign:self];

  maneuverViewCenterYConstraint = [(NavManeuverSignView *)self maneuverViewCenterYConstraint];
  v66 = v64 != 1 && hasManeuverArtwork;
  v67 = v64 == 1 && hasManeuverArtwork;
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraint:maneuverViewCenterYConstraint activate:v66];

  maneuverViewTopToTopConstraint2 = [(NavManeuverSignView *)self maneuverViewTopToTopConstraint];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraint:maneuverViewTopToTopConstraint2 activate:v67];

  maneuverViewTrailingMarginConstraint2 = [(NavManeuverSignView *)self maneuverViewTrailingMarginConstraint];
  [(LayoutConstraintActivationHelper *)v56 scheduleConstraint:maneuverViewTrailingMarginConstraint2 activate:hasManeuverArtwork & hasMinorText];

  shieldViewTopToTopConstraint2 = [(NavManeuverSignView *)self shieldViewTopToTopConstraint];
  v78[0] = shieldViewTopToTopConstraint2;
  shieldViewTrailingMajorLabelConstraint2 = [(NavManeuverSignView *)self shieldViewTrailingMajorLabelConstraint];
  v78[1] = shieldViewTrailingMajorLabelConstraint2;
  sheildViewBottomToMinorLabelTopConstraint2 = [(NavManeuverSignView *)self sheildViewBottomToMinorLabelTopConstraint];
  v78[2] = sheildViewBottomToMinorLabelTopConstraint2;
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

  maneuverView = [(NavManeuverSignView *)self maneuverView];
  leadingAnchor = [maneuverView leadingAnchor];
  leadingAnchor2 = [(NavManeuverSignView *)self leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  maneuverViewLeadingMarginConstraint = self->_maneuverViewLeadingMarginConstraint;
  self->_maneuverViewLeadingMarginConstraint = v13;

  LODWORD(v15) = 1148829696;
  [(NSLayoutConstraint *)self->_maneuverViewLeadingMarginConstraint setPriority:v15];
  maneuverViewLeadingMarginConstraint = [(NavManeuverSignView *)self maneuverViewLeadingMarginConstraint];
  [v4 addObject:maneuverViewLeadingMarginConstraint];

  trailingAnchor = [(NavManeuverSignView *)self trailingAnchor];
  shieldView = [(NavManeuverSignView *)self shieldView];
  trailingAnchor2 = [shieldView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  trailingToShieldViewTrailingConstraint = self->_trailingToShieldViewTrailingConstraint;
  self->_trailingToShieldViewTrailingConstraint = v20;

  trailingToShieldViewTrailingConstraint = [(NavManeuverSignView *)self trailingToShieldViewTrailingConstraint];
  v106 = v4;
  [v4 addObject:trailingToShieldViewTrailingConstraint];

  [NSLayoutConstraint activateConstraints:v4];
  v23 = v3;
  leadingAnchor3 = [v3 leadingAnchor];
  leadingAnchor4 = [(NavManeuverSignView *)self leadingAnchor];
  v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v111[0] = v99;
  trailingAnchor3 = [v3 trailingAnchor];
  maneuverView2 = [(NavManeuverSignView *)self maneuverView];
  leadingAnchor5 = [maneuverView2 leadingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  v111[1] = v24;
  v105 = v3;
  topAnchor = [v3 topAnchor];
  maneuverView3 = [(NavManeuverSignView *)self maneuverView];
  topAnchor2 = [maneuverView3 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v111[2] = v28;
  heightAnchor = [v23 heightAnchor];
  maneuverView4 = [(NavManeuverSignView *)self maneuverView];
  heightAnchor2 = [maneuverView4 heightAnchor];
  v32 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v111[3] = v32;
  v33 = [NSArray arrayWithObjects:v111 count:4];
  maneuverViewLeadingLayoutGuideConstraints = self->_maneuverViewLeadingLayoutGuideConstraints;
  self->_maneuverViewLeadingLayoutGuideConstraints = v33;

  leadingAnchor6 = [v108 leadingAnchor];
  maneuverView5 = [(NavManeuverSignView *)self maneuverView];
  trailingAnchor4 = [maneuverView5 trailingAnchor];
  v98 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
  v110[0] = v98;
  trailingAnchor5 = [v108 trailingAnchor];
  majorLabel = [(NavSignView *)self majorLabel];
  leadingAnchor7 = [majorLabel leadingAnchor];
  v35 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7];
  v110[1] = v35;
  topAnchor3 = [v108 topAnchor];
  maneuverView6 = [(NavManeuverSignView *)self maneuverView];
  topAnchor4 = [maneuverView6 topAnchor];
  v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v110[2] = v39;
  heightAnchor3 = [v108 heightAnchor];
  maneuverView7 = [(NavManeuverSignView *)self maneuverView];
  heightAnchor4 = [maneuverView7 heightAnchor];
  v43 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v110[3] = v43;
  v44 = [NSArray arrayWithObjects:v110 count:4];
  maneuverViewTrailingLayoutGuideConstraints = self->_maneuverViewTrailingLayoutGuideConstraints;
  self->_maneuverViewTrailingLayoutGuideConstraints = v44;

  maneuverView8 = [(NavManeuverSignView *)self maneuverView];
  leadingAnchor8 = [maneuverView8 leadingAnchor];
  leadingAnchor9 = [(NavManeuverSignView *)self leadingAnchor];
  v49 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:leadingAnchor9];
  maneuverViewMinLeadingMarginConstraint = self->_maneuverViewMinLeadingMarginConstraint;
  self->_maneuverViewMinLeadingMarginConstraint = v49;

  maneuverView9 = [(NavManeuverSignView *)self maneuverView];
  widthAnchor = [maneuverView9 widthAnchor];
  v53 = [widthAnchor constraintGreaterThanOrEqualToConstant:0.0];
  maneuverViewMinWidthConstraint = self->_maneuverViewMinWidthConstraint;
  self->_maneuverViewMinWidthConstraint = v53;

  maneuverView10 = [(NavManeuverSignView *)self maneuverView];
  heightAnchor5 = [maneuverView10 heightAnchor];
  v57 = [heightAnchor5 constraintEqualToConstant:0.0];
  maneuverViewHeightConstraint = self->_maneuverViewHeightConstraint;
  self->_maneuverViewHeightConstraint = v57;

  maneuverView11 = [(NavManeuverSignView *)self maneuverView];
  centerYAnchor = [maneuverView11 centerYAnchor];
  centerYAnchor2 = [(NavManeuverSignView *)self centerYAnchor];
  v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  maneuverViewCenterYConstraint = self->_maneuverViewCenterYConstraint;
  self->_maneuverViewCenterYConstraint = v62;

  maneuverView12 = [(NavManeuverSignView *)self maneuverView];
  topAnchor5 = [maneuverView12 topAnchor];
  topAnchor6 = [(NavManeuverSignView *)self topAnchor];
  v67 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  maneuverViewTopToTopConstraint = self->_maneuverViewTopToTopConstraint;
  self->_maneuverViewTopToTopConstraint = v67;

  majorLabel2 = [(NavSignView *)self majorLabel];
  leadingAnchor10 = [majorLabel2 leadingAnchor];
  maneuverView13 = [(NavManeuverSignView *)self maneuverView];
  trailingAnchor6 = [maneuverView13 trailingAnchor];
  v73 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor6];
  maneuverViewTrailingMarginConstraint = self->_maneuverViewTrailingMarginConstraint;
  self->_maneuverViewTrailingMarginConstraint = v73;

  shieldView2 = [(NavManeuverSignView *)self shieldView];
  topAnchor7 = [shieldView2 topAnchor];
  topAnchor8 = [(NavManeuverSignView *)self topAnchor];
  v78 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  shieldViewTopToTopConstraint = self->_shieldViewTopToTopConstraint;
  self->_shieldViewTopToTopConstraint = v78;

  shieldView3 = [(NavManeuverSignView *)self shieldView];
  leadingAnchor11 = [shieldView3 leadingAnchor];
  majorLabel3 = [(NavSignView *)self majorLabel];
  trailingAnchor7 = [majorLabel3 trailingAnchor];
  v84 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor7];
  shieldViewTrailingMajorLabelConstraint = self->_shieldViewTrailingMajorLabelConstraint;
  self->_shieldViewTrailingMajorLabelConstraint = v84;

  minorLabel = [(NavSignView *)self minorLabel];
  topAnchor9 = [minorLabel topAnchor];
  shieldView4 = [(NavManeuverSignView *)self shieldView];
  bottomAnchor = [shieldView4 bottomAnchor];
  v90 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor];
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
  height = [(GuidanceManeuverView *)v5 initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
  maneuverView = self->_maneuverView;
  self->_maneuverView = height;

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
  majorLabel = [(NavSignView *)self majorLabel];
  [majorLabel contentCompressionResistancePriorityForAxis:0];
  v18 = v17;

  *&v19 = v18 + -1.0;
  [(UIImageView *)self->_shieldView setContentCompressionResistancePriority:0 forAxis:v19];
  [(UIImageView *)self->_shieldView setAccessibilityIdentifier:@"ShieldView"];
  [(NavManeuverSignView *)self addSubview:self->_shieldView];
}

- (void)refreshSign
{
  signLayoutDelegate = [(NavSignView *)self signLayoutDelegate];
  v4 = signLayoutDelegate;
  if (signLayoutDelegate)
  {
    [signLayoutDelegate maneuverViewArrowMetricsForSign:self];
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  maneuverView = [(NavManeuverSignView *)self maneuverView];
  memcpy(__dst, __src, sizeof(__dst));
  [maneuverView setArrowMetrics:__dst];

  signLayoutDelegate2 = [(NavSignView *)self signLayoutDelegate];
  v7 = signLayoutDelegate2;
  if (signLayoutDelegate2)
  {
    [signLayoutDelegate2 maneuverViewJunctionArrowMetricsForSign:self];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  maneuverView2 = [(NavManeuverSignView *)self maneuverView];
  memcpy(__dst, v13, sizeof(__dst));
  [maneuverView2 setJunctionArrowMetrics:__dst];

  maneuverGuidanceInfo = [(NavManeuverSignView *)self maneuverGuidanceInfo];
  maneuverArtwork = [maneuverGuidanceInfo maneuverArtwork];
  maneuverView3 = [(NavManeuverSignView *)self maneuverView];
  [maneuverView3 setManeuverArtwork:maneuverArtwork];

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
  theme = [(NavManeuverSignView *)self theme];
  navSignGuidanceManeuverColor = [theme navSignGuidanceManeuverColor];
  maneuverView = [(NavManeuverSignView *)self maneuverView];
  [maneuverView setArrowColor:navSignGuidanceManeuverColor];

  theme2 = [(NavManeuverSignView *)self theme];
  navSignGuidanceManeuverAccentColor = [theme2 navSignGuidanceManeuverAccentColor];
  maneuverView2 = [(NavManeuverSignView *)self maneuverView];
  [maneuverView2 setAccentColor:navSignGuidanceManeuverAccentColor];
}

- (void)clearContent
{
  self->_maneuverSignType = 0;
  [(NavManeuverSignView *)self setManeuverGuidanceInfo:0];
  maneuverView = [(NavManeuverSignView *)self maneuverView];
  [maneuverView setManeuverArtwork:0];

  v4.receiver = self;
  v4.super_class = NavManeuverSignView;
  [(NavSignView *)&v4 clearContent];
}

@end