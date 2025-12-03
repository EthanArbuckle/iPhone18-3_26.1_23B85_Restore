@interface CNStarkContactAddressPropertyCell
- (CNStarkContactAddressPropertyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)constantConstraints;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)performDefaultAction;
- (void)setSeparatorStyle:(int64_t)style;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CNStarkContactAddressPropertyCell

- (void)performDefaultAction
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  contact = [propertyItem contact];

  targetForDirections = [MEMORY[0x1E6996BF8] targetForDirections];
  v6 = [targetForDirections actionsForContact:contact discoveringEnvironment:0];
  v7 = [v6 allObjects:0];
  firstObject = [v7 firstObject];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CNStarkContactAddressPropertyCell_performDefaultAction__block_invoke;
  v13[3] = &unk_1E74E58A8;
  v13[4] = self;
  v9 = [firstObject _cn_firstObjectPassingTest:v13];
  v10 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  dashboardEndpoint = [(objc_class *)getFBSOpenApplicationServiceClass_50258() dashboardEndpoint];
  [v10 setConnectionEndpoint:dashboardEndpoint];

  v12 = [v9 performActionWithContext:v10 shouldCurateIfPerformed:0];
}

uint64_t __57__CNStarkContactAddressPropertyCell_performDefaultAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 propertyItem];
  v5 = [v4 labeledValue];
  v6 = [v5 identifier];
  v7 = [v3 contactProperty];

  v8 = [v7 identifier];
  v9 = [v6 isEqualToString:v8];

  return v9;
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = CNStarkContactAddressPropertyCell;
  [(CNStarkContactAddressPropertyCell *)&v3 setSeparatorStyle:1];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = CNStarkContactAddressPropertyCell;
  [(CNStarkContactAddressPropertyCell *)&v13 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  if (nextFocusedView == self)
  {
    v9 = 1;
  }

  else
  {
    previouslyFocusedView = [contextCopy previouslyFocusedView];
    v9 = previouslyFocusedView == self;
  }

  nextFocusedView2 = [contextCopy nextFocusedView];

  if (v9)
  {
    v11 = nextFocusedView2 == self;
    actionView = [(CNStarkContactAddressPropertyCell *)self actionView];
    [actionView updateForFocusedState:v11];
  }
}

- (id)constantConstraints
{
  v48[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v47[0] = @"label";
  labelLabel = [(CNPropertySimpleCell *)self labelLabel];
  v48[0] = labelLabel;
  v47[1] = @"actionView";
  actionView = [(CNStarkContactAddressPropertyCell *)self actionView];
  v48[1] = actionView;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  labelView = [(CNPropertySimpleCell *)self labelView];
  firstBaselineAnchor = [labelView firstBaselineAnchor];
  contentView = [(CNStarkContactAddressPropertyCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  +[CNStarkContactPropertyCell labelViewFirstBaselineAnchorConstraintConstant];
  v10 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(CNStarkContactAddressPropertyCell *)self setLabelViewFirstBaselineAnchorConstraint:v10];

  valueView = [(CNPropertySimpleCell *)self valueView];
  firstBaselineAnchor2 = [valueView firstBaselineAnchor];
  labelView2 = [(CNPropertySimpleCell *)self labelView];
  firstBaselineAnchor3 = [labelView2 firstBaselineAnchor];
  +[CNStarkContactPropertyCell valueLabelFirstBaselineAnchorConstraintConstant];
  v15 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
  [(CNStarkContactAddressPropertyCell *)self setValueViewFirstBaselineAnchorConstraint:v15];

  valueView2 = [(CNPropertySimpleCell *)self valueView];
  lastBaselineAnchor = [valueView2 lastBaselineAnchor];
  contentView2 = [(CNStarkContactAddressPropertyCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  +[CNStarkContactPropertyCell contentViewBottomAnchorConstraintConstant];
  v21 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [(CNStarkContactAddressPropertyCell *)self setContentViewBottomAnchorConstraint:v21];

  labelViewFirstBaselineAnchorConstraint = [(CNStarkContactAddressPropertyCell *)self labelViewFirstBaselineAnchorConstraint];
  v46[0] = labelViewFirstBaselineAnchorConstraint;
  valueViewFirstBaselineAnchorConstraint = [(CNStarkContactAddressPropertyCell *)self valueViewFirstBaselineAnchorConstraint];
  v46[1] = valueViewFirstBaselineAnchorConstraint;
  contentViewBottomAnchorConstraint = [(CNStarkContactAddressPropertyCell *)self contentViewBottomAnchorConstraint];
  v46[2] = contentViewBottomAnchorConstraint;
  valueView3 = [(CNPropertySimpleCell *)self valueView];
  leadingAnchor = [valueView3 leadingAnchor];
  labelView3 = [(CNPropertySimpleCell *)self labelView];
  leadingAnchor2 = [labelView3 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[3] = v23;
  valueView4 = [(CNPropertySimpleCell *)self valueView];
  trailingAnchor = [valueView4 trailingAnchor];
  labelView4 = [(CNPropertySimpleCell *)self labelView];
  trailingAnchor2 = [labelView4 trailingAnchor];
  v28 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v46[4] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [array addObjectsFromArray:v29];

  v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(60)-[actionView(==36)]-(12)-[label]-(>=12)-|" options:0 metrics:0 views:v45];
  [array addObjectsFromArray:v30];

  actionView2 = [(CNStarkContactAddressPropertyCell *)self actionView];
  topAnchor2 = [actionView2 topAnchor];
  contentView3 = [(CNStarkContactAddressPropertyCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor3 = [safeAreaLayoutGuide3 topAnchor];
  v36 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:4.0];
  [array addObject:v36];

  return array;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (([stateCopy isHighlighted] & 1) != 0 || (objc_msgSend(stateCopy, "isFocused") & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
  {
    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    _carSystemFocusColor = [MEMORY[0x1E69DC888] _carSystemFocusColor];
    [listCellConfiguration setBackgroundColor:_carSystemFocusColor];

    [listCellConfiguration setCornerRadius:14.0];
  }

  else
  {
    listCellConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  }

  [(CNStarkContactAddressPropertyCell *)self setBackgroundConfiguration:listCellConfiguration];
}

- (CNStarkContactAddressPropertyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = CNStarkContactAddressPropertyCell;
  v4 = [(CNPropertyPostalAddressCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    labelLabel = [(CNPropertySimpleCell *)v4 labelLabel];
    [labelLabel setTextAlignment:4];

    valueLabel = [(CNPropertySimpleCell *)v5 valueLabel];
    [valueLabel setTextAlignment:4];

    labelView = [(CNPropertySimpleCell *)v5 labelView];
    [labelView setContentHuggingPriority:0 forAxis:0.0];

    v9 = [CNStarkActionView propertyTransportButtonWithDelegate:v5];
    actionView = v5->_actionView;
    v5->_actionView = v9;

    [(CNStarkActionView *)v5->_actionView setPrefersSmallImageScale:1];
    [(CNStarkActionView *)v5->_actionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNStarkActionView *)v5->_actionView setActionType:*MEMORY[0x1E695C160]];
    [(CNStarkActionView *)v5->_actionView setEnabled:0];
    contentView = [(CNStarkContactAddressPropertyCell *)v5 contentView];
    [contentView addSubview:v5->_actionView];

    [(CNStarkContactAddressPropertyCell *)v5 setAccessibilityIdentifier:@"CNStarkContactAddressPropertyCell"];
    v12 = v5;
  }

  return v5;
}

@end