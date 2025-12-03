@interface CNStarkContactPropertyCell
+ (double)contentViewBottomAnchorConstraintConstant;
+ (double)labelViewFirstBaselineAnchorConstraintConstant;
+ (double)minimumContentHeight;
+ (double)valueLabelFirstBaselineAnchorConstraintConstant;
- (CNStarkContactPropertyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)contentInsets;
- (id)constantConstraints;
- (id)variableConstraints;
- (int64_t)transportTypeForActionType:(id)type;
- (void)_cnui_applyContactStyle;
- (void)actionViewTapped:(id)tapped;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)performActionForMessage;
- (void)performDefaultAction;
- (void)setSeparatorStyle:(int64_t)style;
- (void)updateTransportButtons;
@end

@implementation CNStarkContactPropertyCell

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)performActionForMessage
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  contact = [propertyItem contact];

  targetForTextWithMessages = [MEMORY[0x1E6996BF8] targetForTextWithMessages];
  v6 = [targetForTextWithMessages actionsForContact:contact discoveringEnvironment:0];
  v7 = [v6 allObjects:0];
  firstObject = [v7 firstObject];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__CNStarkContactPropertyCell_performActionForMessage__block_invoke;
  v13[3] = &unk_1E74E58A8;
  v13[4] = self;
  v9 = [firstObject _cn_firstObjectPassingTest:v13];
  v10 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  dashboardEndpoint = [(objc_class *)getFBSOpenApplicationServiceClass_51640() dashboardEndpoint];
  [v10 setConnectionEndpoint:dashboardEndpoint];

  v12 = [v9 performActionWithContext:v10 shouldCurateIfPerformed:0];
}

uint64_t __53__CNStarkContactPropertyCell_performActionForMessage__block_invoke(uint64_t a1, void *a2)
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

- (int64_t)transportTypeForActionType:(id)type
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C178];
  v10[0] = *MEMORY[0x1E695C150];
  v10[1] = v3;
  v11[0] = &unk_1F0D4B778;
  v11[1] = &unk_1F0D4B790;
  v4 = MEMORY[0x1E695DF20];
  typeCopy = type;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v6 objectForKeyedSubscript:typeCopy];

  integerValue = [v7 integerValue];
  return integerValue;
}

- (void)actionViewTapped:(id)tapped
{
  actionType = [tapped actionType];
  v5 = [(CNStarkContactPropertyCell *)self transportTypeForActionType:actionType];

  if (v5)
  {
    if (v5 == 2)
    {

      [(CNStarkContactPropertyCell *)self performActionForMessage];
    }

    else
    {
      delegate = [(CNPropertyCell *)self delegate];
      propertyItem = [(CNPropertyCell *)self propertyItem];
      [delegate propertyCell:self performActionForItem:propertyItem withTransportType:v5];
    }
  }
}

- (void)updateTransportButtons
{
  if (![(CNPropertySimpleTransportCell *)self allowsActions])
  {
    return;
  }

  propertyItem = [(CNPropertyCell *)self propertyItem];
  allowsPhone = [propertyItem allowsPhone];

  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  allowsIMessage = [propertyItem2 allowsIMessage];

  if (!allowsPhone)
  {
    if (!allowsIMessage)
    {
      actionView1 = [(CNStarkContactPropertyCell *)self actionView1];
      [actionView1 setActionType:0];

      actionView2 = [(CNStarkContactPropertyCell *)self actionView2];
      v11 = actionView2;
      v12 = 0;
      goto LABEL_9;
    }

    v9 = *MEMORY[0x1E695C178];
    actionView2 = [(CNStarkContactPropertyCell *)self actionView1];
LABEL_7:
    v11 = actionView2;
    v12 = v9;
LABEL_9:
    [actionView2 setActionType:v12];

    goto LABEL_10;
  }

  v7 = *MEMORY[0x1E695C150];
  actionView12 = [(CNStarkContactPropertyCell *)self actionView1];
  [actionView12 setActionType:v7];

  if (allowsIMessage)
  {
    v9 = *MEMORY[0x1E695C178];
    actionView2 = [(CNStarkContactPropertyCell *)self actionView2];
    goto LABEL_7;
  }

LABEL_10:
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__CNStarkContactPropertyCell_updateTransportButtons__block_invoke;
  v20[3] = &unk_1E74E5880;
  v20[4] = self;
  v20[5] = &v21;
  v14 = _Block_copy(v20);
  actionView13 = [(CNStarkContactPropertyCell *)self actionView1];
  v14[2](v14, actionView13);

  actionView22 = [(CNStarkContactPropertyCell *)self actionView2];
  v14[2](v14, actionView22);

  if (*(v22 + 24) == 1)
  {
    actionView14 = [(CNStarkContactPropertyCell *)self actionView1];
    v18 = allowsPhone & allowsIMessage;
    [actionView14 setEnabled:v18];

    actionView23 = [(CNStarkContactPropertyCell *)self actionView2];
    [actionView23 setEnabled:v18];

    [(CNStarkContactPropertyCell *)self setAllowsFocus:v18 ^ 1];
    [(CNStarkContactPropertyCell *)self setNeedsUpdateConstraints];
  }

  _Block_object_dispose(&v21, 8);
}

void __52__CNStarkContactPropertyCell_updateTransportButtons__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 actionType];
  if (v3)
  {
    v4 = v3;
    v5 = [v9 superview];

    if (!v5)
    {
      v8 = [*(a1 + 32) contentView];
      [v8 addSubview:v9];

      goto LABEL_8;
    }
  }

  v6 = [v9 actionType];
  if (v6)
  {

    goto LABEL_9;
  }

  v7 = [v9 superview];

  if (v7)
  {
    [v9 removeFromSuperview];
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_9:
}

- (void)performDefaultAction
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  property = [propertyItem property];
  v5 = [property isEqualToString:*MEMORY[0x1E695C208]];

  if (v5)
  {

    [(CNStarkContactPropertyCell *)self performActionForMessage];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNStarkContactPropertyCell;
    [(CNPropertyCell *)&v6 performDefaultAction];
  }
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = CNStarkContactPropertyCell;
  [(CNStarkContactPropertyCell *)&v3 setSeparatorStyle:1];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = CNStarkContactPropertyCell;
  [(CNStarkContactPropertyCell *)&v14 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
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
    actionView1 = [(CNStarkContactPropertyCell *)self actionView1];
    [actionView1 updateForFocusedState:v11];

    actionView2 = [(CNStarkContactPropertyCell *)self actionView2];
    [actionView2 updateForFocusedState:v11];
  }
}

- (id)variableConstraints
{
  v33[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v32[0] = @"label";
  labelLabel = [(CNPropertySimpleCell *)self labelLabel];
  v33[0] = labelLabel;
  v32[1] = @"value";
  valueLabel = [(CNPropertySimpleCell *)self valueLabel];
  v33[1] = valueLabel;
  v32[2] = @"actionView1";
  actionView1 = [(CNStarkContactPropertyCell *)self actionView1];
  v33[2] = actionView1;
  v32[3] = @"actionView2";
  actionView2 = [(CNStarkContactPropertyCell *)self actionView2];
  v33[3] = actionView2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];

  actionView22 = [(CNStarkContactPropertyCell *)self actionView2];
  superview = [actionView22 superview];

  if (superview)
  {
    v11 = @"H:|-(12)-[actionView2(==36)]-(12)-[actionView1(==36)]-(12)-[label]-(>=12)-|";
  }

  else
  {
    actionView12 = [(CNStarkContactPropertyCell *)self actionView1];
    superview2 = [actionView12 superview];

    if (!superview2)
    {
      goto LABEL_6;
    }

    v11 = @"H:|-(60)-[actionView1(==36)]-(12)-[label]-(>=12)-|";
  }

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v11 options:0 metrics:0 views:v8];
  [array addObjectsFromArray:v14];

LABEL_6:
  actionView13 = [(CNStarkContactPropertyCell *)self actionView1];
  superview3 = [actionView13 superview];

  if (superview3)
  {
    actionView14 = [(CNStarkContactPropertyCell *)self actionView1];
    centerYAnchor = [actionView14 centerYAnchor];
    contentView = [(CNStarkContactPropertyCell *)self contentView];
    safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v22];
  }

  actionView23 = [(CNStarkContactPropertyCell *)self actionView2];
  superview4 = [actionView23 superview];

  if (superview4)
  {
    actionView24 = [(CNStarkContactPropertyCell *)self actionView2];
    centerYAnchor3 = [actionView24 centerYAnchor];
    contentView2 = [(CNStarkContactPropertyCell *)self contentView];
    safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
    centerYAnchor4 = [safeAreaLayoutGuide2 centerYAnchor];
    v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v30];
  }

  return array;
}

- (id)constantConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  labelView = [(CNPropertySimpleCell *)self labelView];
  firstBaselineAnchor = [labelView firstBaselineAnchor];
  contentView = [(CNStarkContactPropertyCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  [objc_opt_class() labelViewFirstBaselineAnchorConstraintConstant];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(CNStarkContactPropertyCell *)self setLabelViewFirstBaselineAnchorConstraint:v8];

  valueView = [(CNPropertySimpleCell *)self valueView];
  firstBaselineAnchor2 = [valueView firstBaselineAnchor];
  labelView2 = [(CNPropertySimpleCell *)self labelView];
  firstBaselineAnchor3 = [labelView2 firstBaselineAnchor];
  [objc_opt_class() valueLabelFirstBaselineAnchorConstraintConstant];
  v13 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
  [(CNStarkContactPropertyCell *)self setValueViewFirstBaselineAnchorConstraint:v13];

  valueView2 = [(CNPropertySimpleCell *)self valueView];
  firstBaselineAnchor4 = [valueView2 firstBaselineAnchor];
  contentView2 = [(CNStarkContactPropertyCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  [objc_opt_class() contentViewBottomAnchorConstraintConstant];
  v19 = [firstBaselineAnchor4 constraintEqualToAnchor:bottomAnchor constant:?];
  [(CNStarkContactPropertyCell *)self setContentViewBottomAnchorConstraint:v19];

  labelViewFirstBaselineAnchorConstraint = [(CNStarkContactPropertyCell *)self labelViewFirstBaselineAnchorConstraint];
  v30[0] = labelViewFirstBaselineAnchorConstraint;
  valueViewFirstBaselineAnchorConstraint = [(CNStarkContactPropertyCell *)self valueViewFirstBaselineAnchorConstraint];
  v30[1] = valueViewFirstBaselineAnchorConstraint;
  valueView3 = [(CNPropertySimpleCell *)self valueView];
  leadingAnchor = [valueView3 leadingAnchor];
  labelView3 = [(CNPropertySimpleCell *)self labelView];
  leadingAnchor2 = [labelView3 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[2] = v26;
  contentViewBottomAnchorConstraint = [(CNStarkContactPropertyCell *)self contentViewBottomAnchorConstraint];
  v30[3] = contentViewBottomAnchorConstraint;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  return v28;
}

- (void)_cnui_applyContactStyle
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  valueLabel = [(CNPropertySimpleCell *)self valueLabel];
  [valueLabel setFont:v3];

  v5 = +[CNUIColorRepository carPlayTableViewCellBackgroundColor];
  [(CNStarkContactPropertyCell *)self setBackgroundColor:v5];
}

- (CNStarkContactPropertyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = CNStarkContactPropertyCell;
  v4 = [(CNPropertyPhoneNumberCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNStarkContactPropertyCell *)v4 setAllowsFocus:1];
    labelLabel = [(CNPropertySimpleCell *)v5 labelLabel];
    [labelLabel setTextAlignment:4];

    valueLabel = [(CNPropertySimpleCell *)v5 valueLabel];
    [valueLabel setTextAlignment:4];

    labelView = [(CNPropertySimpleCell *)v5 labelView];
    [labelView setContentHuggingPriority:0 forAxis:0.0];

    v9 = [CNStarkActionView propertyTransportButtonWithDelegate:v5];
    actionView1 = v5->_actionView1;
    v5->_actionView1 = v9;

    [(CNStarkActionView *)v5->_actionView1 setPrefersSmallImageScale:1];
    [(CNStarkActionView *)v5->_actionView1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [CNStarkActionView propertyTransportButtonWithDelegate:v5];
    actionView2 = v5->_actionView2;
    v5->_actionView2 = v11;

    [(CNStarkActionView *)v5->_actionView2 setPrefersSmallImageScale:1];
    [(CNStarkActionView *)v5->_actionView2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNStarkContactPropertyCell *)v5 setAccessibilityIdentifier:@"CNStarkContactPropertyCell"];
    v13 = v5;
  }

  return v5;
}

+ (double)contentViewBottomAnchorConstraintConstant
{
  v2 = +[CNUIFontRepository carPlayTableViewCellSubtitleFont];
  [v2 _scaledValueForValue:-8.0];
  v4 = ceil(v3);

  return v4;
}

+ (double)valueLabelFirstBaselineAnchorConstraintConstant
{
  v2 = +[CNUIFontRepository carPlayTableViewCellTitleFont];
  [v2 _scaledValueForValue:18.0];
  v4 = ceil(v3);

  return v4;
}

+ (double)labelViewFirstBaselineAnchorConstraintConstant
{
  v2 = +[CNUIFontRepository carPlayTableViewCellTitleFont];
  [v2 _scaledValueForValue:18.0];
  v4 = ceil(v3);

  return v4;
}

+ (double)minimumContentHeight
{
  [self labelViewFirstBaselineAnchorConstraintConstant];
  v4 = v3;
  [self valueLabelFirstBaselineAnchorConstraintConstant];
  v6 = v4 + v5;
  [self contentViewBottomAnchorConstraintConstant];
  return v6 - v7;
}

@end