@interface TransitRouteTableViewCell
- (BOOL)_isShieldListViewOverlappingWithBadge;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)_indexedContentSubviewOrNullArray;
- (TransitRouteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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
- (void)setShowDisclosureButton:(BOOL)a3;
@end

@implementation TransitRouteTableViewCell

- (NSArray)_indexedContentSubviewOrNullArray
{
  v3 = [(TransitArtworkListView *)self->_shieldListView window];
  if (v3)
  {
    shieldListView = self->_shieldListView;
  }

  else
  {
    shieldListView = +[NSNull null];
  }

  v17 = shieldListView;
  v18[0] = shieldListView;
  v5 = [(_MKUILabel *)self->super._primaryLabel window];
  if (v5)
  {
    primaryLabel = self->super._primaryLabel;
  }

  else
  {
    primaryLabel = +[NSNull null];
  }

  v18[1] = primaryLabel;
  v7 = [(_MKUILabel *)self->super._secondaryLabel window];
  if (v7)
  {
    secondaryLabel = self->super._secondaryLabel;
  }

  else
  {
    secondaryLabel = +[NSNull null];
  }

  v18[2] = secondaryLabel;
  v9 = [(RouteTableViewCell *)self disclosureButton];
  v10 = [v9 window];
  if (v10)
  {
    [(RouteTableViewCell *)self disclosureButton];
  }

  else
  {
    +[NSNull null];
  }
  v11 = ;
  v18[3] = v11;
  v12 = [(_MKUILabel *)self->_badgeLabel window];
  if (v12)
  {
    badgeLabel = self->_badgeLabel;
  }

  else
  {
    badgeLabel = +[NSNull null];
  }

  v18[4] = badgeLabel;
  v14 = [NSArray arrayWithObjects:v18 count:5];
  if (!v12)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  return v14;
}

- (id)_buttonConstraintsController
{
  UIRoundToViewScale();
  v4 = v3;
  v5 = [RouteTableViewCellButtonConstraintsController alloc];
  v6 = [(TransitArtworkListView *)self->_shieldListView trailingAnchor];
  v7 = [(TransitRouteTableViewCell *)self contentView];
  v8 = [v7 trailingAnchor];
  v9 = [(TransitRouteTableViewCell *)self contentView];
  v10 = [v9 topAnchor];
  v11 = [(RouteTableViewCellButtonConstraintsController *)v5 initWithLeadingAnchor:v6 trailingAnchor:v8 firstBaselineAnchor:v10 leadingDistance:4.0 firstBaselineDistance:v4];

  return v11;
}

- (void)setShowDisclosureButton:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = TransitRouteTableViewCell;
  [(RouteTableViewCell *)&v8 setShowDisclosureButton:?];
  if (v3)
  {
    v5 = [(RouteTableViewCell *)self disclosureButton];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"More Routes Prompt" value:@"localized string not found" table:0];
    [v5 setTitle:v7 forState:0];

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

    v9 = [(TransitRouteTableViewCell *)self _badgeLabelFont];
    [(_MKUILabel *)self->_badgeLabel setFont:v9];

    badgeLabel = self->_badgeLabel;
  }

  v10 = [(_MKUILabel *)badgeLabel superview];

  if (!v10)
  {
    v11 = [(TransitRouteTableViewCell *)self contentView];
    [v11 addSubview:self->_badgeLabel];

    if (!self->_badgeLabelTrailingConstraint)
    {
      v12 = [(TransitRouteTableViewCell *)self trailingAnchor];
      v13 = [(_MKUILabel *)self->_badgeLabel trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      badgeLabelTrailingConstraint = self->_badgeLabelTrailingConstraint;
      self->_badgeLabelTrailingConstraint = v14;
    }

    if (!self->_topShieldViewToBadgeLabelConstraint)
    {
      v16 = [(_MKUILabel *)self->_badgeLabel firstBaselineAnchor];
      v17 = [(TransitArtworkListView *)self->_shieldListView topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      topShieldViewToBadgeLabelConstraint = self->_topShieldViewToBadgeLabelConstraint;
      self->_topShieldViewToBadgeLabelConstraint = v18;
    }

    if (!self->_secondaryLabelBaselineAlignWithBadgeConstraint)
    {
      v20 = [(_MKUILabel *)self->super._secondaryLabel lastBaselineAnchor];
      v21 = [(_MKUILabel *)self->_badgeLabel firstBaselineAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      secondaryLabelBaselineAlignWithBadgeConstraint = self->_secondaryLabelBaselineAlignWithBadgeConstraint;
      self->_secondaryLabelBaselineAlignWithBadgeConstraint = v22;
    }

    if (!self->_secondaryLabelTrailingToBadgeLeadingConstraint)
    {
      v24 = [(_MKUILabel *)self->_badgeLabel leadingAnchor];
      v25 = [(_MKUILabel *)self->super._secondaryLabel trailingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:16.0];
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
  v3 = [(RouteTableViewCell *)self route];
  v4 = [v3 transitRouteBadge];
  v8 = NSFontAttributeName;
  v5 = [(TransitRouteTableViewCell *)self _badgeLabelFont];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:v4 defaultAttributes:v6];

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
  v5 = [(RouteTableViewCell *)self route];
  if (v5)
  {
    v3 = [(RouteTableViewCell *)self route];
    v4 = [v3 routePlanningArtworks];
    [(TransitArtworkListView *)self->_shieldListView setArtworkData:v4];

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
  v3 = [(RouteTableViewCell *)self route];

  if (v3)
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
  v3 = [(RouteTableViewCell *)self disclosureButton];
  v4 = [v3 titleLabel];
  v5 = [v4 font];
  [v5 _scaledValueForValue:24.0];

  UIRoundToViewScale();
  v7 = v6;
  v8 = [(RouteTableViewCell *)self buttonConstraintsController];
  [v8 setFirstBaselineDistance:v7];

  if ([(TransitRouteTableViewCell *)self _shouldHaveFullLengthTopSeparator])
  {
    v9 = self;
    v10 = [(TransitRouteTableViewCell *)v9 window];
    v11 = [v10 screen];
    if (v11)
    {
      v12 = [(TransitRouteTableViewCell *)v9 window];

      v13 = [v12 screen];
      [v13 nativeScale];
    }

    else
    {
      v12 = +[UIScreen mainScreen];

      [v12 nativeScale];
    }
  }

  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_topToShieldListViewConstraint setConstant:?];
  v14 = [(_MKUILabel *)self->_badgeLabel font];
  [v14 capHeight];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(TransitRouteTableViewCell *)self layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = TransitRouteTableViewCell;
  *&v10 = a4;
  *&v11 = a5;
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
    v13 = [(TransitRouteTableViewCell *)self _tableView];
    [v13 separatorInset];
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
  v3 = [(_MKUILabel *)self->_badgeLabel superview];

  if (!v3)
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
  v3 = [(TransitRouteTableViewCell *)self contentView];
  [v3 layoutIfNeeded];

  v4 = [(RouteTableViewCell *)self disclosureButton];
  [v4 frame];
  v6 = v5;
  v7 = [(RouteTableViewCell *)self disclosureButton];
  [v7 frame];
  v9 = v8 + v6;
  [(TransitRouteTableViewCell *)self frame];
  v11 = v9 - v10;

  v12 = [(RouteTableViewCell *)self disclosureButton];
  [v12 setTouchInsets:{0.0, 0.0, v11, 0.0}];

  [(TransitRouteTableViewCell *)self contentHorizontalMargins];
  [(RouteTableViewCell *)self setSeparatorInset:?];
  if (!self->_inRecursiveLayout && [(TransitRouteTableViewCell *)self canSpanFullWidth]&& [(TransitArtworkListView *)self->_shieldListView numberOfLines]>= 2)
  {
    [(TransitArtworkListView *)self->_shieldListView singleLineWidth];
    v14 = v13;
    v15 = [(TransitRouteTableViewCell *)self accessoryView];
    v16 = v15;
    if (v15)
    {
      [v15 frame];
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

  v19 = [(_MKUILabel *)self->_badgeLabel superview];

  if (v19)
  {
    v20 = [(TransitRouteTableViewCell *)self _isShieldListViewOverlappingWithBadge];
    if (v20)
    {
      v21 = &OBJC_IVAR___TransitRouteTableViewCell__topShieldViewToBadgeLabelConstraint;
    }

    else
    {
      v21 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelBaselineAlignWithBadgeConstraint;
    }

    if (v20)
    {
      v22 = &OBJC_IVAR___RouteTableViewCell__secondaryLabelToContentViewConstraint;
    }

    else
    {
      v22 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelTrailingToBadgeLeadingConstraint;
    }

    if (v20)
    {
      v23 = &OBJC_IVAR___TransitRouteTableViewCell__secondaryLabelBaselineAlignWithBadgeConstraint;
    }

    else
    {
      v23 = &OBJC_IVAR___TransitRouteTableViewCell__topShieldViewToBadgeLabelConstraint;
    }

    if (v20)
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
  v3 = [(RouteTableViewCell *)&v19 _autolayoutConstraints];
  v4 = [(_MKUILabel *)self->super._primaryLabel trailingAnchor];
  v5 = [(TransitRouteTableViewCell *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintLessThanOrEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(TransitArtworkListView *)self->_shieldListView topAnchor];
  v9 = [(TransitRouteTableViewCell *)self contentView];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:0.0];
  topToShieldListViewConstraint = self->_topToShieldListViewConstraint;
  self->_topToShieldListViewConstraint = v11;

  LODWORD(v13) = 1148829696;
  [(NSLayoutConstraint *)self->_topToShieldListViewConstraint setPriority:v13];
  v20[0] = self->_topToShieldListViewConstraint;
  v14 = [(TransitArtworkListView *)self->_shieldListView leadingAnchor];
  v15 = [(_MKUILabel *)self->super._primaryLabel leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v20[1] = v16;
  v17 = [NSArray arrayWithObjects:v20 count:2];
  [v3 addObjectsFromArray:v17];

  [(TransitRouteTableViewCell *)self _updateConstraintValues];

  return v3;
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
  v5 = [(TransitRouteTableViewCell *)self contentView];
  [v5 addSubview:self->_shieldListView];
}

- (TransitRouteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = TransitRouteTableViewCell;
  v4 = [(RouteTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_leftPadding = 0.0;
    v6 = v4;
  }

  return v5;
}

@end