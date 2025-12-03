@interface RouteTableViewCell
+ (double)estimatedHeight;
- (NSLayoutAnchor)_anchorFromWhichToPositionPrimaryLabelFirstBaseline;
- (RouteTableViewCell)init;
- (RouteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (RouteTableViewCellButtonConstraintsController)_buttonConstraintsController;
- (RouteTableViewCellDelegate)delegate;
- (id)_autolayoutConstraints;
- (id)_disclosureButton;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_createSubviews;
- (void)_disclosureButtonTapped:(id)tapped;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)separator;
- (void)_updateCellLabels;
- (void)_updateConstraintValues;
- (void)_updateFonts;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setRoute:(id)route;
- (void)setSeparatorInset:(UIEdgeInsets)inset;
- (void)setShowDisclosureButton:(BOOL)button;
- (void)setUseRoutePreviewDescription:(BOOL)description;
- (void)set_maps_shouldHaveFullLengthBottomSeparator:(BOOL)separator;
@end

@implementation RouteTableViewCell

- (RouteTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_disclosureButtonTapped:(id)tapped
{
  delegate = [(RouteTableViewCell *)self delegate];
  [delegate disclosureButtonTappedInCell:self];
}

- (RouteTableViewCellButtonConstraintsController)_buttonConstraintsController
{
  v3 = [RouteTableViewCellButtonConstraintsController alloc];
  trailingAnchor = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
  contentView = [(RouteTableViewCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  firstBaselineAnchor = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v8 = [(RouteTableViewCellButtonConstraintsController *)v3 initWithLeadingAnchor:trailingAnchor trailingAnchor:trailingAnchor2 firstBaselineAnchor:firstBaselineAnchor leadingDistance:8.0 firstBaselineDistance:0.0];

  return v8;
}

- (id)_disclosureButton
{
  v3 = [MapsLargerHitTargetButton buttonWithType:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"WalkingDrivingRoute_ButtonTitle" value:@"localized string not found" table:0];

  [v3 setTitle:v5 forState:0];
  _disclosureButtonFont = [(RouteTableViewCell *)self _disclosureButtonFont];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:_disclosureButtonFont];

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

- (void)setShowDisclosureButton:(BOOL)button
{
  if (self->_showDisclosureButton != button)
  {
    v17 = v8;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    buttonCopy = button;
    self->_showDisclosureButton = button;
    disclosureButton = self->_disclosureButton;
    if (button)
    {
      if (!disclosureButton)
      {
        _disclosureButton = [(RouteTableViewCell *)self _disclosureButton];
        v15 = self->_disclosureButton;
        self->_disclosureButton = _disclosureButton;

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

    [(RouteTableViewCellButtonConstraintsController *)self->_buttonConstraintsController setButtonVisible:buttonCopy, v17, v18, v19, v20, v21, v22];

    [(RouteTableViewCell *)self _mapkit_setNeedsLayout];
  }
}

- (void)setSeparatorInset:(UIEdgeInsets)inset
{
  v4.receiver = self;
  v4.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v4 setSeparatorInset:inset.top, inset.left, inset.bottom, inset.right];
  [(RouteTableViewCell *)self _updateConstraintValues];
}

- (void)set_maps_shouldHaveFullLengthBottomSeparator:(BOOL)separator
{
  if (self->__maps_shouldHaveFullLengthBottomSeparator != separator)
  {
    self->__maps_shouldHaveFullLengthBottomSeparator = separator;
    [(RouteTableViewCell *)self _setShouldHaveFullLengthBottomSeparator:?];
  }
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)separator
{
  maps_shouldHaveFullLengthBottomSeparator = self->__maps_shouldHaveFullLengthBottomSeparator;
  v4.receiver = self;
  v4.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v4 _setShouldHaveFullLengthBottomSeparator:maps_shouldHaveFullLengthBottomSeparator];
}

- (void)setUseRoutePreviewDescription:(BOOL)description
{
  if (self->_useRoutePreviewDescription != description)
  {
    self->_useRoutePreviewDescription = description;
    [(RouteTableViewCell *)self _updateCellLabels];
  }
}

- (void)_updateCellLabels
{
  route = [(RouteTableViewCell *)self route];

  if (route)
  {
    useRoutePreviewDescription = [(RouteTableViewCell *)self useRoutePreviewDescription];
    route2 = [(RouteTableViewCell *)self route];
    v6 = route2;
    if (useRoutePreviewDescription)
    {
      [route2 previewDurationString];
    }

    else
    {
      [route2 pickingDurationString];
    }
    v7 = ;

    route3 = [(RouteTableViewCell *)self route];
    planningDescriptionString = [route3 planningDescriptionString];

    if (v7)
    {
      v20 = NSFontAttributeName;
      font = [(_MKUILabel *)self->_primaryLabel font];
      v21 = font;
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSAttributedString _mapkit_attributedStringForComposedString:v7 defaultAttributes:v11];
      [(_MKUILabel *)self->_primaryLabel setAttributedText:v12];

      if (planningDescriptionString)
      {
LABEL_7:
        v18 = NSFontAttributeName;
        font2 = [(_MKUILabel *)self->_secondaryLabel font];
        v19 = font2;
        clientPickingDescription = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v15 = [NSAttributedString _mapkit_attributedStringForComposedString:planningDescriptionString defaultAttributes:clientPickingDescription];
        [(_MKUILabel *)self->_secondaryLabel setAttributedText:v15];

LABEL_10:
        return;
      }
    }

    else
    {
      route4 = [(RouteTableViewCell *)self route];
      clientPickingDuration = [route4 clientPickingDuration];
      [(_MKUILabel *)self->_primaryLabel setText:clientPickingDuration];

      if (planningDescriptionString)
      {
        goto LABEL_7;
      }
    }

    font2 = [(RouteTableViewCell *)self route];
    clientPickingDescription = [font2 clientPickingDescription];
    [(_MKUILabel *)self->_secondaryLabel setText:clientPickingDescription];
    goto LABEL_10;
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(RouteTableViewCell *)self _updateCellLabels];
    routeCopy = v6;
  }
}

- (void)_updateFonts
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody addingSymbolicTraits:0];
  [(_MKUILabel *)self->_primaryLabel setFont:v3];

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote addingSymbolicTraits:0];
  [(_MKUILabel *)self->_secondaryLabel setFont:v4];

  _disclosureButtonFont = [(RouteTableViewCell *)self _disclosureButtonFont];
  titleLabel = [(MapsLargerHitTargetButton *)self->_disclosureButton titleLabel];
  [titleLabel setFont:_disclosureButtonFont];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  [(RouteTableViewCell *)self _updateFonts];
  [(RouteTableViewCell *)self _updateConstraintValues];

  [(RouteTableViewCell *)self _updateCellLabels];
}

- (NSLayoutAnchor)_anchorFromWhichToPositionPrimaryLabelFirstBaseline
{
  contentView = [(RouteTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];

  return topAnchor;
}

- (void)_updateConstraintValues
{
  font = [(_MKUILabel *)self->_primaryLabel font];
  [(RouteTableViewCell *)self _distanceToPositionPrimaryLabelFirstBaseline];
  [font _scaledValueForValue:?];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_primaryToTopViewConstraint setConstant:?];

  font2 = [(_MKUILabel *)self->_secondaryLabel font];
  [font2 _scaledValueForValue:18.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_secondaryToPrimaryConstraint setConstant:?];

  selfCopy = self;
  window = [(RouteTableViewCell *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(RouteTableViewCell *)selfCopy window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
  }

  else
  {
    window2 = +[UIScreen mainScreen];
    [window2 nativeScale];
  }

  UIRoundToViewScale();
  secondaryLabelToBottomConstraint = selfCopy->_secondaryLabelToBottomConstraint;

  [(NSLayoutConstraint *)secondaryLabelToBottomConstraint setConstant:?];
}

- (id)_autolayoutConstraints
{
  v42.receiver = self;
  v42.super_class = RouteTableViewCell;
  _autolayoutConstraints = [(RoutePickingCell *)&v42 _autolayoutConstraints];
  leadingAnchor = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  contentView = [(RouteTableViewCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  leftPaddingConstraint = self->_leftPaddingConstraint;
  self->_leftPaddingConstraint = v8;

  [_autolayoutConstraints addObject:self->_leftPaddingConstraint];
  contentView2 = [(RouteTableViewCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(_MKUILabel *)self->_secondaryLabel trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  secondaryLabelToContentViewConstraint = self->_secondaryLabelToContentViewConstraint;
  self->_secondaryLabelToContentViewConstraint = v14;

  [_autolayoutConstraints addObject:self->_secondaryLabelToContentViewConstraint];
  leadingAnchor3 = [(_MKUILabel *)self->_secondaryLabel leadingAnchor];
  leadingAnchor4 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [_autolayoutConstraints addObject:v18];

  firstBaselineAnchor = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  _anchorFromWhichToPositionPrimaryLabelFirstBaseline = [(RouteTableViewCell *)self _anchorFromWhichToPositionPrimaryLabelFirstBaseline];
  v21 = [firstBaselineAnchor constraintEqualToAnchor:_anchorFromWhichToPositionPrimaryLabelFirstBaseline];
  primaryToTopViewConstraint = self->_primaryToTopViewConstraint;
  self->_primaryToTopViewConstraint = v21;

  firstBaselineAnchor2 = [(_MKUILabel *)self->_secondaryLabel firstBaselineAnchor];
  lastBaselineAnchor = [(_MKUILabel *)self->_primaryLabel lastBaselineAnchor];
  v25 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  secondaryToPrimaryConstraint = self->_secondaryToPrimaryConstraint;
  self->_secondaryToPrimaryConstraint = v25;

  contentView3 = [(RouteTableViewCell *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  lastBaselineAnchor2 = [(_MKUILabel *)self->_secondaryLabel lastBaselineAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  secondaryLabelToBottomConstraint = self->_secondaryLabelToBottomConstraint;
  self->_secondaryLabelToBottomConstraint = v30;

  v32 = self->_secondaryToPrimaryConstraint;
  v43[0] = self->_primaryToTopViewConstraint;
  v43[1] = v32;
  v43[2] = self->_secondaryLabelToBottomConstraint;
  lastBaselineAnchor3 = [(_MKUILabel *)self->_primaryLabel lastBaselineAnchor];
  contentView4 = [(RouteTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v36 = [lastBaselineAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-18.0];
  v43[3] = v36;
  v37 = [NSArray arrayWithObjects:v43 count:4];
  [_autolayoutConstraints addObjectsFromArray:v37];

  _buttonConstraintsController = [(RouteTableViewCell *)self _buttonConstraintsController];
  buttonConstraintsController = self->_buttonConstraintsController;
  self->_buttonConstraintsController = _buttonConstraintsController;

  initialConstraints = [(RouteTableViewCellButtonConstraintsController *)self->_buttonConstraintsController initialConstraints];
  [_autolayoutConstraints addObjectsFromArray:initialConstraints];

  [(RouteTableViewCell *)self _updateConstraintValues];

  return _autolayoutConstraints;
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
  contentView = [(RouteTableViewCell *)self contentView];
  [contentView addSubview:self->_primaryLabel];

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
  contentView2 = [(RouteTableViewCell *)self contentView];
  [contentView2 addSubview:self->_secondaryLabel];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RouteTableViewCell;
  [(RouteTableViewCell *)&v4 dealloc];
}

- (RouteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = RouteTableViewCell;
  v4 = [(RoutePickingCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
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
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v4 = [(RouteTableViewCell *)self initWithStyle:0 reuseIdentifier:reuseIdentifier];

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