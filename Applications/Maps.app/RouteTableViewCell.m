@interface RouteTableViewCell
+ (double)estimatedHeight;
- (NSLayoutAnchor)_anchorFromWhichToPositionPrimaryLabelFirstBaseline;
- (RouteTableViewCell)init;
- (RouteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (RouteTableViewCellButtonConstraintsController)_buttonConstraintsController;
- (RouteTableViewCellDelegate)delegate;
- (id)_autolayoutConstraints;
- (id)_disclosureButton;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_createSubviews;
- (void)_disclosureButtonTapped:(id)a3;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3;
- (void)_updateCellLabels;
- (void)_updateConstraintValues;
- (void)_updateFonts;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setRoute:(id)a3;
- (void)setSeparatorInset:(UIEdgeInsets)a3;
- (void)setShowDisclosureButton:(BOOL)a3;
- (void)setUseRoutePreviewDescription:(BOOL)a3;
- (void)set_maps_shouldHaveFullLengthBottomSeparator:(BOOL)a3;
@end

@implementation RouteTableViewCell

- (RouteTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_disclosureButtonTapped:(id)a3
{
  v4 = [(RouteTableViewCell *)self delegate];
  [v4 disclosureButtonTappedInCell:self];
}

- (RouteTableViewCellButtonConstraintsController)_buttonConstraintsController
{
  v3 = [RouteTableViewCellButtonConstraintsController alloc];
  v4 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
  v5 = [(RouteTableViewCell *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v8 = [(RouteTableViewCellButtonConstraintsController *)v3 initWithLeadingAnchor:v4 trailingAnchor:v6 firstBaselineAnchor:v7 leadingDistance:8.0 firstBaselineDistance:0.0];

  return v8;
}

- (id)_disclosureButton
{
  v3 = [MapsLargerHitTargetButton buttonWithType:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"WalkingDrivingRoute_ButtonTitle" value:@"localized string not found" table:0];

  [v3 setTitle:v5 forState:0];
  v6 = [(RouteTableViewCell *)self _disclosureButtonFont];
  v7 = [v3 titleLabel];
  [v7 setFont:v6];

  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  if (IsRightToLeft)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = -10.0;
  }

  if (IsRightToLeft)
  {
    v10 = -10.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v3 setTouchInsets:{0.0, v9, -36.0, v10}];

  return v3;
}

- (void)setShowDisclosureButton:(BOOL)a3
{
  if (self->_showDisclosureButton != a3)
  {
    v17 = v8;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    v11 = a3;
    self->_showDisclosureButton = a3;
    disclosureButton = self->_disclosureButton;
    if (a3)
    {
      if (!disclosureButton)
      {
        v14 = [(RouteTableViewCell *)self _disclosureButton];
        v15 = self->_disclosureButton;
        self->_disclosureButton = v14;

        [(MapsLargerHitTargetButton *)self->_disclosureButton addTarget:self action:"_disclosureButtonTapped:" forControlEvents:64];
        [(RouteTableViewCellButtonConstraintsController *)self->_buttonConstraintsController setButton:self->_disclosureButton];
      }

      v16 = [(RouteTableViewCell *)self contentView:v8];
      [v16 addSubview:self->_disclosureButton];
    }

    else
    {
      [(MapsLargerHitTargetButton *)disclosureButton removeFromSuperview];
    }

    [(RouteTableViewCellButtonConstraintsController *)self->_buttonConstraintsController setButtonVisible:v11, v17, v18, v19, v20, v21, v22];

    [(RouteTableViewCell *)self _mapkit_setNeedsLayout];
  }
}

- (void)setSeparatorInset:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v4 setSeparatorInset:a3.top, a3.left, a3.bottom, a3.right];
  [(RouteTableViewCell *)self _updateConstraintValues];
}

- (void)set_maps_shouldHaveFullLengthBottomSeparator:(BOOL)a3
{
  if (self->__maps_shouldHaveFullLengthBottomSeparator != a3)
  {
    self->__maps_shouldHaveFullLengthBottomSeparator = a3;
    [(RouteTableViewCell *)self _setShouldHaveFullLengthBottomSeparator:?];
  }
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3
{
  maps_shouldHaveFullLengthBottomSeparator = self->__maps_shouldHaveFullLengthBottomSeparator;
  v4.receiver = self;
  v4.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v4 _setShouldHaveFullLengthBottomSeparator:maps_shouldHaveFullLengthBottomSeparator];
}

- (void)setUseRoutePreviewDescription:(BOOL)a3
{
  if (self->_useRoutePreviewDescription != a3)
  {
    self->_useRoutePreviewDescription = a3;
    [(RouteTableViewCell *)self _updateCellLabels];
  }
}

- (void)_updateCellLabels
{
  v3 = [(RouteTableViewCell *)self route];

  if (v3)
  {
    v4 = [(RouteTableViewCell *)self useRoutePreviewDescription];
    v5 = [(RouteTableViewCell *)self route];
    v6 = v5;
    if (v4)
    {
      [v5 previewDurationString];
    }

    else
    {
      [v5 pickingDurationString];
    }
    v7 = ;

    v8 = [(RouteTableViewCell *)self route];
    v9 = [v8 planningDescriptionString];

    if (v7)
    {
      v20 = NSFontAttributeName;
      v10 = [(_MKUILabel *)self->_primaryLabel font];
      v21 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSAttributedString _mapkit_attributedStringForComposedString:v7 defaultAttributes:v11];
      [(_MKUILabel *)self->_primaryLabel setAttributedText:v12];

      if (v9)
      {
LABEL_7:
        v18 = NSFontAttributeName;
        v13 = [(_MKUILabel *)self->_secondaryLabel font];
        v19 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v15 = [NSAttributedString _mapkit_attributedStringForComposedString:v9 defaultAttributes:v14];
        [(_MKUILabel *)self->_secondaryLabel setAttributedText:v15];

LABEL_10:
        return;
      }
    }

    else
    {
      v16 = [(RouteTableViewCell *)self route];
      v17 = [v16 clientPickingDuration];
      [(_MKUILabel *)self->_primaryLabel setText:v17];

      if (v9)
      {
        goto LABEL_7;
      }
    }

    v13 = [(RouteTableViewCell *)self route];
    v14 = [v13 clientPickingDescription];
    [(_MKUILabel *)self->_secondaryLabel setText:v14];
    goto LABEL_10;
  }
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_route, a3);
    [(RouteTableViewCell *)self _updateCellLabels];
    v5 = v6;
  }
}

- (void)_updateFonts
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  [(_MKUILabel *)self->_primaryLabel setFont:v3];

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
  [(_MKUILabel *)self->_secondaryLabel setFont:v4];

  v6 = [(RouteTableViewCell *)self _disclosureButtonFont];
  v5 = [(MapsLargerHitTargetButton *)self->_disclosureButton titleLabel];
  [v5 setFont:v6];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  [(RouteTableViewCell *)self _updateFonts];
  [(RouteTableViewCell *)self _updateConstraintValues];

  [(RouteTableViewCell *)self _updateCellLabels];
}

- (NSLayoutAnchor)_anchorFromWhichToPositionPrimaryLabelFirstBaseline
{
  v2 = [(RouteTableViewCell *)self contentView];
  v3 = [v2 topAnchor];

  return v3;
}

- (void)_updateConstraintValues
{
  v3 = [(_MKUILabel *)self->_primaryLabel font];
  [(RouteTableViewCell *)self _distanceToPositionPrimaryLabelFirstBaseline];
  [v3 _scaledValueForValue:?];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_primaryToTopViewConstraint setConstant:?];

  v4 = [(_MKUILabel *)self->_secondaryLabel font];
  [v4 _scaledValueForValue:18.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_secondaryToPrimaryConstraint setConstant:?];

  v5 = self;
  v6 = [(RouteTableViewCell *)v5 window];
  v7 = [v6 screen];
  if (v7)
  {
    v8 = [(RouteTableViewCell *)v5 window];
    v9 = [v8 screen];
    [v9 nativeScale];
  }

  else
  {
    v8 = +[UIScreen mainScreen];
    [v8 nativeScale];
  }

  UIRoundToViewScale();
  secondaryLabelToBottomConstraint = v5->_secondaryLabelToBottomConstraint;

  [(NSLayoutConstraint *)secondaryLabelToBottomConstraint setConstant:?];
}

- (id)_autolayoutConstraints
{
  v42.receiver = self;
  v42.super_class = RouteTableViewCell;
  v3 = [(RoutePickingCell *)&v42 _autolayoutConstraints];
  v4 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v5 = [(RouteTableViewCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];
  leftPaddingConstraint = self->_leftPaddingConstraint;
  self->_leftPaddingConstraint = v8;

  [v3 addObject:self->_leftPaddingConstraint];
  v10 = [(RouteTableViewCell *)self contentView];
  v11 = [v10 safeAreaLayoutGuide];
  v12 = [v11 trailingAnchor];
  v13 = [(_MKUILabel *)self->_secondaryLabel trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  secondaryLabelToContentViewConstraint = self->_secondaryLabelToContentViewConstraint;
  self->_secondaryLabelToContentViewConstraint = v14;

  [v3 addObject:self->_secondaryLabelToContentViewConstraint];
  v16 = [(_MKUILabel *)self->_secondaryLabel leadingAnchor];
  v17 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v3 addObject:v18];

  v19 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v20 = [(RouteTableViewCell *)self _anchorFromWhichToPositionPrimaryLabelFirstBaseline];
  v21 = [v19 constraintEqualToAnchor:v20];
  primaryToTopViewConstraint = self->_primaryToTopViewConstraint;
  self->_primaryToTopViewConstraint = v21;

  v23 = [(_MKUILabel *)self->_secondaryLabel firstBaselineAnchor];
  v24 = [(_MKUILabel *)self->_primaryLabel lastBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  secondaryToPrimaryConstraint = self->_secondaryToPrimaryConstraint;
  self->_secondaryToPrimaryConstraint = v25;

  v27 = [(RouteTableViewCell *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [(_MKUILabel *)self->_secondaryLabel lastBaselineAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  secondaryLabelToBottomConstraint = self->_secondaryLabelToBottomConstraint;
  self->_secondaryLabelToBottomConstraint = v30;

  v32 = self->_secondaryToPrimaryConstraint;
  v43[0] = self->_primaryToTopViewConstraint;
  v43[1] = v32;
  v43[2] = self->_secondaryLabelToBottomConstraint;
  v33 = [(_MKUILabel *)self->_primaryLabel lastBaselineAnchor];
  v34 = [(RouteTableViewCell *)self contentView];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintLessThanOrEqualToAnchor:v35 constant:-18.0];
  v43[3] = v36;
  v37 = [NSArray arrayWithObjects:v43 count:4];
  [v3 addObjectsFromArray:v37];

  v38 = [(RouteTableViewCell *)self _buttonConstraintsController];
  buttonConstraintsController = self->_buttonConstraintsController;
  self->_buttonConstraintsController = v38;

  v40 = [(RouteTableViewCellButtonConstraintsController *)self->_buttonConstraintsController initialConstraints];
  [v3 addObjectsFromArray:v40];

  [(RouteTableViewCell *)self _updateConstraintValues];

  return v3;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v3 didMoveToWindow];
  [(RouteTableViewCell *)self _updateConstraintValues];
}

- (void)_createSubviews
{
  v12.receiver = self;
  v12.super_class = RouteTableViewCell;
  [(RoutePickingCell *)&v12 _createSubviews];
  v3 = objc_alloc_init(_MKUILabel);
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v3;

  v5 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  [(_MKUILabel *)self->_primaryLabel setFont:v5];

  [(_MKUILabel *)self->_primaryLabel setNumberOfLines:0];
  [(_MKUILabel *)self->_primaryLabel setTextAlignment:4];
  [(_MKUILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(RouteTableViewCell *)self contentView];
  [v6 addSubview:self->_primaryLabel];

  v7 = objc_alloc_init(_MKUILabel);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v7;

  v9 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
  [(_MKUILabel *)self->_secondaryLabel setFont:v9];

  [(_MKUILabel *)self->_secondaryLabel setNumberOfLines:0];
  v10 = +[UIColor systemGrayColor];
  [(_MKUILabel *)self->_secondaryLabel setTextColor:v10];

  [(_MKUILabel *)self->_secondaryLabel setTextAlignment:4];
  [(_MKUILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(RouteTableViewCell *)self contentView];
  [v11 addSubview:self->_secondaryLabel];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v4 dealloc];
}

- (RouteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = RouteTableViewCell;
  v4 = [(RoutePickingCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = MNLocaleDidChangeNotification();
    [v6 addObserver:v4 selector:"_localeDidChange:" name:v7 object:0];

    v8 = v4;
  }

  return v4;
}

- (RouteTableViewCell)init
{
  v3 = [objc_opt_class() reuseIdentifier];
  v4 = [(RouteTableViewCell *)self initWithStyle:0 reuseIdentifier:v3];

  return v4;
}

+ (double)estimatedHeight
{
  v2 = +[UIScreen mainScreen];
  [v2 nativeScale];
  v4 = v3;

  result = -1.0 / v4 + 62.0;
  if (v4 == 0.0)
  {
    return 61.5;
  }

  return result;
}

@end