@interface TransitRouteTableViewCell
- (BOOL)_isShieldListViewOverlappingWithBadge;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)_indexedContentSubviewOrNullArray;
- (TransitRouteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)contentHorizontalMargins;
- (id)_autolayoutConstraints;
- (id)_buttonConstraintsController;
- (void)_configureRouteBadge;
- (void)_createSubviews;
- (void)_updateCellLabels;
- (void)_updateConstraintValues;
- (void)_updateRouteBadge;
- (void)_updateShieldListView;
- (void)layoutSubviews;
- (void)setShowDisclosureButton:(BOOL)button;
@end

@implementation TransitRouteTableViewCell

- (NSArray)_indexedContentSubviewOrNullArray
{
  window = [(TransitArtworkListView *)self->_shieldListView window];
  if (window)
  {
    shieldListView = self->_shieldListView;
  }

  else
  {
    shieldListView = +[NSNull null];
  }

  v17 = shieldListView;
  v18[0] = shieldListView;
  window2 = [(_MKUILabel *)self->super._primaryLabel window];
  if (window2)
  {
    primaryLabel = self->super._primaryLabel;
  }

  else
  {
    primaryLabel = +[NSNull null];
  }

  v18[1] = primaryLabel;
  window3 = [(_MKUILabel *)self->super._secondaryLabel window];
  if (window3)
  {
    secondaryLabel = self->super._secondaryLabel;
  }

  else
  {
    secondaryLabel = +[NSNull null];
  }

  v18[2] = secondaryLabel;
  disclosureButton = [(RouteTableViewCell *)self disclosureButton];
  window4 = [disclosureButton window];
  if (window4)
  {
    [(RouteTableViewCell *)self disclosureButton];
  }

  else
  {
    +[NSNull null];
  }
  v11 = ;
  v18[3] = v11;
  window5 = [(_MKUILabel *)self->_badgeLabel window];
  if (window5)
  {
    badgeLabel = self->_badgeLabel;
  }

  else
  {
    badgeLabel = +[NSNull null];
  }

  v18[4] = badgeLabel;
  v14 = [NSArray arrayWithObjects:v18 count:5];
  if (!window5)
  {
  }

  if (!window3)
  {
  }

  if (!window2)
  {
  }

  if (!window)
  {
  }

  return v14;
}

- (id)_buttonConstraintsController
{
  UIRoundToViewScale();
  v4 = v3;
  v5 = [RouteTableViewCellButtonConstraintsController alloc];
  trailingAnchor = [(TransitArtworkListView *)self->_shieldListView trailingAnchor];
  contentView = [(TransitRouteTableViewCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  contentView2 = [(TransitRouteTableViewCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  v11 = [(RouteTableViewCellButtonConstraintsController *)v5 initWithLeadingAnchor:trailingAnchor trailingAnchor:trailingAnchor2 firstBaselineAnchor:topAnchor leadingDistance:4.0 firstBaselineDistance:v4];

  return v11;
}

- (void)setShowDisclosureButton:(BOOL)button
{
  buttonCopy = button;
  v8.receiver = self;
  v8.super_class = TransitRouteTableViewCell;
  [(RouteTableViewCell *)&v8 setShowDisclosureButton:?];
  if (buttonCopy)
  {
    disclosureButton = [(RouteTableViewCell *)self disclosureButton];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"More Routes Prompt" value:@"localized string not found" table:0];
    [disclosureButton setTitle:v7 forState:0];

    [(TransitRouteTableViewCell *)self _updateConstraintValues];
  }

  [(TransitRouteTableViewCell *)self _updateRouteBadge];
}

- (void)_configureRouteBadge
{
  badgeLabel = self->_badgeLabel;
  if (!badgeLabel)
  {
    v4 = objc_alloc_init(_MKUILabel);
    v5 = self->_badgeLabel;
    self->_badgeLabel = v4;

    [(_MKUILabel *)self->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(_MKUILabel *)self->_badgeLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(_MKUILabel *)self->_badgeLabel _mapkit_setContentHuggingPriority:0 forAxis:v7];
    v8 = +[UIColor systemGrayColor];
    [(_MKUILabel *)self->_badgeLabel setTextColor:v8];

    _badgeLabelFont = [(TransitRouteTableViewCell *)self _badgeLabelFont];
    [(_MKUILabel *)self->_badgeLabel setFont:_badgeLabelFont];

    badgeLabel = self->_badgeLabel;
  }

  superview = [(_MKUILabel *)badgeLabel superview];

  if (!superview)
  {
    contentView = [(TransitRouteTableViewCell *)self contentView];
    [contentView addSubview:self->_badgeLabel];

    if (!self->_badgeLabelTrailingConstraint)
    {
      trailingAnchor = [(TransitRouteTableViewCell *)self trailingAnchor];
      trailingAnchor2 = [(_MKUILabel *)self->_badgeLabel trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      badgeLabelTrailingConstraint = self->_badgeLabelTrailingConstraint;
      self->_badgeLabelTrailingConstraint = v14;
    }

    if (!self->_topShieldViewToBadgeLabelConstraint)
    {
      firstBaselineAnchor = [(_MKUILabel *)self->_badgeLabel firstBaselineAnchor];
      topAnchor = [(TransitArtworkListView *)self->_shieldListView topAnchor];
      v18 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
      topShieldViewToBadgeLabelConstraint = self->_topShieldViewToBadgeLabelConstraint;
      self->_topShieldViewToBadgeLabelConstraint = v18;
    }

    if (!self->_secondaryLabelBaselineAlignWithBadgeConstraint)
    {
      lastBaselineAnchor = [(_MKUILabel *)self->super._secondaryLabel lastBaselineAnchor];
      firstBaselineAnchor2 = [(_MKUILabel *)self->_badgeLabel firstBaselineAnchor];
      v22 = [lastBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      secondaryLabelBaselineAlignWithBadgeConstraint = self->_secondaryLabelBaselineAlignWithBadgeConstraint;
      self->_secondaryLabelBaselineAlignWithBadgeConstraint = v22;
    }

    if (!self->_secondaryLabelTrailingToBadgeLeadingConstraint)
    {
      leadingAnchor = [(_MKUILabel *)self->_badgeLabel leadingAnchor];
      trailingAnchor3 = [(_MKUILabel *)self->super._secondaryLabel trailingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:16.0];
      secondaryLabelTrailingToBadgeLeadingConstraint = self->_secondaryLabelTrailingToBadgeLeadingConstraint;
      self->_secondaryLabelTrailingToBadgeLeadingConstraint = v26;
    }

    v28 = self->_topShieldViewToBadgeLabelConstraint;
    v30[0] = self->_badgeLabelTrailingConstraint;
    v30[1] = v28;
    v29 = [NSArray arrayWithObjects:v30 count:2];
    [NSLayoutConstraint activateConstraints:v29];
  }
}

- (void)_updateRouteBadge
{
  route = [(RouteTableViewCell *)self route];
  transitRouteBadge = [route transitRouteBadge];
  v8 = NSFontAttributeName;
  _badgeLabelFont = [(TransitRouteTableViewCell *)self _badgeLabelFont];
  v9 = _badgeLabelFont;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:transitRouteBadge defaultAttributes:v6];

  if (-[RouteTableViewCell showDisclosureButton](self, "showDisclosureButton") || ![v7 length])
  {
    [(_MKUILabel *)self->_badgeLabel removeFromSuperview];
  }

  else
  {
    [(TransitRouteTableViewCell *)self _configureRouteBadge];
    [(_MKUILabel *)self->_badgeLabel setAttributedText:v7];
  }
}

- (void)_updateShieldListView
{
  route = [(RouteTableViewCell *)self route];
  if (route)
  {
    route2 = [(RouteTableViewCell *)self route];
    routePlanningArtworks = [route2 routePlanningArtworks];
    [(TransitArtworkListView *)self->_shieldListView setArtworkData:routePlanningArtworks];

    [(TransitRouteTableViewCell *)self _mapkit_setNeedsLayout];
  }

  else
  {
    [(TransitArtworkListView *)self->_shieldListView setArtworkData:0];
  }
}

- (void)_updateCellLabels
{
  v4.receiver = self;
  v4.super_class = TransitRouteTableViewCell;
  [(RouteTableViewCell *)&v4 _updateCellLabels];
  route = [(RouteTableViewCell *)self route];

  if (route)
  {
    [(TransitRouteTableViewCell *)self _updateShieldListView];
    [(TransitRouteTableViewCell *)self _updateRouteBadge];
  }
}

- (void)_updateConstraintValues
{
  v18.receiver = self;
  v18.super_class = TransitRouteTableViewCell;
  [(RouteTableViewCell *)&v18 _updateConstraintValues];
  disclosureButton = [(RouteTableViewCell *)self disclosureButton];
  titleLabel = [disclosureButton titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:24.0];

  UIRoundToViewScale();
  v7 = v6;
  buttonConstraintsController = [(RouteTableViewCell *)self buttonConstraintsController];
  [buttonConstraintsController setFirstBaselineDistance:v7];

  if ([(TransitRouteTableViewCell *)self _shouldHaveFullLengthTopSeparator])
  {
    selfCopy = self;
    window = [(TransitRouteTableViewCell *)selfCopy window];
    screen = [window screen];
    if (screen)
    {
      window2 = [(TransitRouteTableViewCell *)selfCopy window];

      screen2 = [window2 screen];
      [screen2 nativeScale];
    }

    else
    {
      window2 = +[UIScreen mainScreen];

      [window2 nativeScale];
    }
  }

  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_topToShieldListViewConstraint setConstant:?];
  font2 = [(_MKUILabel *)self->_badgeLabel font];
  [font2 capHeight];
  [(NSLayoutConstraint *)self->_topShieldViewToBadgeLabelConstraint setConstant:?];

  [(TransitRouteTableViewCell *)self separatorInset];
  v15 = 16.0;
  if (v16 > 16.0)
  {
    [(TransitRouteTableViewCell *)self separatorInset];
    v15 = v17;
  }

  [(NSLayoutConstraint *)self->_badgeLabelTrailingConstraint setConstant:v15];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(TransitRouteTableViewCell *)self layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = TransitRouteTableViewCell;
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(TransitRouteTableViewCell *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)contentHorizontalMargins
{
  if ([(TransitRouteTableViewCell *)self canSpanFullWidth])
  {
    [(TransitRouteTableViewCell *)self bounds];
    Width = CGRectGetWidth(v26);
    [(CenteredTableViewCell *)self maximumContentWidth];
    v5 = Width - v4;
    [(CenteredTableViewCell *)self minimumHorizontalMargins];
    v7 = v6;
    [(CenteredTableViewCell *)self minimumHorizontalMargins];
    if (v5 <= v8 + v7)
    {
      [(CenteredTableViewCell *)self minimumHorizontalMargins];
      v10 = v18;
      v9 = v19;
      v11 = v20;
      v12 = v21;
    }

    else
    {
      v9 = v5 * 0.5;
      v10 = 0.0;
      v11 = 0.0;
      v12 = v9;
    }
  }

  else
  {
    _tableView = [(TransitRouteTableViewCell *)self _tableView];
    [_tableView separatorInset];
    v10 = v14;
    v9 = v15;
    v11 = v16;
    v12 = v17;
  }

  v22 = v10;
  v23 = v9;
  v24 = v11;
  v25 = v12;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (BOOL)_isShieldListViewOverlappingWithBadge
{
  superview = [(_MKUILabel *)self->_badgeLabel superview];

  if (!superview)
  {
    return 0;
  }

  if ([(TransitArtworkListView *)self->_shieldListView numberOfLines]> 1)
  {
    return 1;
  }

  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(TransitRouteTableViewCell *)self semanticContentAttribute]]== 1)
  {
    [(_MKUILabel *)self->_badgeLabel frame];
    MaxX = CGRectGetMaxX(v11);
    [(TransitArtworkListView *)self->_shieldListView frame];
    v6 = CGRectGetMaxX(v12);
    [(TransitArtworkListView *)self->_shieldListView singleLineWidth];
    v8 = v6 + -16.0 - v7;
  }

  else
  {
    [(TransitArtworkListView *)self->_shieldListView frame];
    MinX = CGRectGetMinX(v13);
    [(TransitArtworkListView *)self->_shieldListView singleLineWidth];
    MaxX = v10 + 16.0 + MinX;
    [(_MKUILabel *)self->_badgeLabel frame];
    v8 = CGRectGetMinX(v14);
  }

  return MaxX > v8;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = TransitRouteTableViewCell;
  [(TransitRouteTableViewCell *)&v25 layoutSubviews];
  contentView = [(TransitRouteTableViewCell *)self contentView];
  [contentView layoutIfNeeded];

  disclosureButton = [(RouteTableViewCell *)self disclosureButton];
  [disclosureButton frame];
  v6 = v5;
  disclosureButton2 = [(RouteTableViewCell *)self disclosureButton];
  [disclosureButton2 frame];
  v9 = v8 + v6;
  [(TransitRouteTableViewCell *)self frame];
  v11 = v9 - v10;

  disclosureButton3 = [(RouteTableViewCell *)self disclosureButton];
  [disclosureButton3 setTouchInsets:{0.0, 0.0, v11, 0.0}];

  [(TransitRouteTableViewCell *)self contentHorizontalMargins];
  [(RouteTableViewCell *)self setSeparatorInset:?];
  if (!self->_inRecursiveLayout && [(TransitRouteTableViewCell *)self canSpanFullWidth]&& [(TransitArtworkListView *)self->_shieldListView numberOfLines]>= 2)
  {
    [(TransitArtworkListView *)self->_shieldListView singleLineWidth];
    v14 = v13;
    accessoryView = [(TransitRouteTableViewCell *)self accessoryView];
    v16 = accessoryView;
    if (accessoryView)
    {
      [accessoryView frame];
      v17 = CGRectGetWidth(v26) + 16.0;
    }

    else
    {
      v17 = 0.0;
    }

    [(CenteredTableViewCell *)self maximumContentWidth];
    if (v18 > v17 + v14)
    {
      [(CenteredTableViewCell *)self maximumContentWidth];
    }

    [(CenteredTableViewCell *)self setMaximumContentWidth:?];
    [(TransitRouteTableViewCell *)self _mapkit_setNeedsLayout];
    self->_inRecursiveLayout = 1;
    [(TransitRouteTableViewCell *)self layoutSubviews];
    self->_inRecursiveLayout = 0;
  }

  superview = [(_MKUILabel *)self->_badgeLabel superview];

  if (superview)
  {
    _isShieldListViewOverlappingWithBadge = [(TransitRouteTableViewCell *)self _isShieldListViewOverlappingWithBadge];
    if (_isShieldListViewOverlappingWithBadge)
    {
      v21 = &OBJC_IVAR___TransitRouteTableViewCell__topShieldViewToBadgeLabelConstraint;
    }

    else
    {
      v21 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelBaselineAlignWithBadgeConstraint;
    }

    if (_isShieldListViewOverlappingWithBadge)
    {
      v22 = &OBJC_IVAR___RouteTableViewCell__secondaryLabelToContentViewConstraint;
    }

    else
    {
      v22 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelTrailingToBadgeLeadingConstraint;
    }

    if (_isShieldListViewOverlappingWithBadge)
    {
      v23 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelBaselineAlignWithBadgeConstraint;
    }

    else
    {
      v23 = &OBJC_IVAR___TransitRouteTableViewCell__topShieldViewToBadgeLabelConstraint;
    }

    if (_isShieldListViewOverlappingWithBadge)
    {
      v24 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelTrailingToBadgeLeadingConstraint;
    }

    else
    {
      v24 = &OBJC_IVAR___RouteTableViewCell__secondaryLabelToContentViewConstraint;
    }

    [*(&self->super.super + *v21) setActive:0];
    [*(&self->super.super + *v22) setActive:0];
    [*(&self->super.super + *v23) setActive:1];
    [*(&self->super.super + *v24) setActive:1];
  }
}

- (id)_autolayoutConstraints
{
  v19.receiver = self;
  v19.super_class = TransitRouteTableViewCell;
  _autolayoutConstraints = [(RouteTableViewCell *)&v19 _autolayoutConstraints];
  trailingAnchor = [(_MKUILabel *)self->super._primaryLabel trailingAnchor];
  contentView = [(TransitRouteTableViewCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  v7 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [_autolayoutConstraints addObject:v7];

  topAnchor = [(TransitArtworkListView *)self->_shieldListView topAnchor];
  contentView2 = [(TransitRouteTableViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  topToShieldListViewConstraint = self->_topToShieldListViewConstraint;
  self->_topToShieldListViewConstraint = v11;

  LODWORD(v13) = 1148829696;
  [(NSLayoutConstraint *)self->_topToShieldListViewConstraint setPriority:v13];
  v20[0] = self->_topToShieldListViewConstraint;
  leadingAnchor = [(TransitArtworkListView *)self->_shieldListView leadingAnchor];
  leadingAnchor2 = [(_MKUILabel *)self->super._primaryLabel leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[1] = v16;
  v17 = [NSArray arrayWithObjects:v20 count:2];
  [_autolayoutConstraints addObjectsFromArray:v17];

  [(TransitRouteTableViewCell *)self _updateConstraintValues];

  return _autolayoutConstraints;
}

- (void)_createSubviews
{
  v6.receiver = self;
  v6.super_class = TransitRouteTableViewCell;
  [(RouteTableViewCell *)&v6 _createSubviews];
  v3 = [[TransitArtworkListView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  shieldListView = self->_shieldListView;
  self->_shieldListView = v3;

  [(TransitArtworkListView *)self->_shieldListView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TransitRouteTableViewCell *)self contentView];
  [contentView addSubview:self->_shieldListView];
}

- (TransitRouteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = TransitRouteTableViewCell;
  v4 = [(RouteTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_leftPadding = 0.0;
    v6 = v4;
  }

  return v5;
}

@end