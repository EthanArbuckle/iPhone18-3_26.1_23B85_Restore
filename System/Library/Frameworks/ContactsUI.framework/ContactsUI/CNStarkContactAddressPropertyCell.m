@interface CNStarkContactAddressPropertyCell
- (CNStarkContactAddressPropertyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)constantConstraints;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)performDefaultAction;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CNStarkContactAddressPropertyCell

- (void)performDefaultAction
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 contact];

  v5 = [MEMORY[0x1E6996BF8] targetForDirections];
  v6 = [v5 actionsForContact:v4 discoveringEnvironment:0];
  v7 = [v6 allObjects:0];
  v8 = [v7 firstObject];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CNStarkContactAddressPropertyCell_performDefaultAction__block_invoke;
  v13[3] = &unk_1E74E58A8;
  v13[4] = self;
  v9 = [v8 _cn_firstObjectPassingTest:v13];
  v10 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v11 = [(objc_class *)getFBSOpenApplicationServiceClass_50258() dashboardEndpoint];
  [v10 setConnectionEndpoint:v11];

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

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = CNStarkContactAddressPropertyCell;
  [(CNStarkContactAddressPropertyCell *)&v3 setSeparatorStyle:1];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNStarkContactAddressPropertyCell;
  [(CNStarkContactAddressPropertyCell *)&v13 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  if (v7 == self)
  {
    v9 = 1;
  }

  else
  {
    v8 = [v6 previouslyFocusedView];
    v9 = v8 == self;
  }

  v10 = [v6 nextFocusedView];

  if (v9)
  {
    v11 = v10 == self;
    v12 = [(CNStarkContactAddressPropertyCell *)self actionView];
    [v12 updateForFocusedState:v11];
  }
}

- (id)constantConstraints
{
  v48[2] = *MEMORY[0x1E69E9840];
  v44 = [MEMORY[0x1E695DF70] array];
  v47[0] = @"label";
  v3 = [(CNPropertySimpleCell *)self labelLabel];
  v48[0] = v3;
  v47[1] = @"actionView";
  v4 = [(CNStarkContactAddressPropertyCell *)self actionView];
  v48[1] = v4;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  v5 = [(CNPropertySimpleCell *)self labelView];
  v6 = [v5 firstBaselineAnchor];
  v7 = [(CNStarkContactAddressPropertyCell *)self contentView];
  v8 = [v7 safeAreaLayoutGuide];
  v9 = [v8 topAnchor];
  +[CNStarkContactPropertyCell labelViewFirstBaselineAnchorConstraintConstant];
  v10 = [v6 constraintEqualToAnchor:v9 constant:?];
  [(CNStarkContactAddressPropertyCell *)self setLabelViewFirstBaselineAnchorConstraint:v10];

  v11 = [(CNPropertySimpleCell *)self valueView];
  v12 = [v11 firstBaselineAnchor];
  v13 = [(CNPropertySimpleCell *)self labelView];
  v14 = [v13 firstBaselineAnchor];
  +[CNStarkContactPropertyCell valueLabelFirstBaselineAnchorConstraintConstant];
  v15 = [v12 constraintEqualToAnchor:v14 constant:?];
  [(CNStarkContactAddressPropertyCell *)self setValueViewFirstBaselineAnchorConstraint:v15];

  v16 = [(CNPropertySimpleCell *)self valueView];
  v17 = [v16 lastBaselineAnchor];
  v18 = [(CNStarkContactAddressPropertyCell *)self contentView];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 bottomAnchor];
  +[CNStarkContactPropertyCell contentViewBottomAnchorConstraintConstant];
  v21 = [v17 constraintEqualToAnchor:v20 constant:?];
  [(CNStarkContactAddressPropertyCell *)self setContentViewBottomAnchorConstraint:v21];

  v43 = [(CNStarkContactAddressPropertyCell *)self labelViewFirstBaselineAnchorConstraint];
  v46[0] = v43;
  v42 = [(CNStarkContactAddressPropertyCell *)self valueViewFirstBaselineAnchorConstraint];
  v46[1] = v42;
  v41 = [(CNStarkContactAddressPropertyCell *)self contentViewBottomAnchorConstraint];
  v46[2] = v41;
  v40 = [(CNPropertySimpleCell *)self valueView];
  v38 = [v40 leadingAnchor];
  v39 = [(CNPropertySimpleCell *)self labelView];
  v22 = [v39 leadingAnchor];
  v23 = [v38 constraintEqualToAnchor:v22];
  v46[3] = v23;
  v24 = [(CNPropertySimpleCell *)self valueView];
  v25 = [v24 trailingAnchor];
  v26 = [(CNPropertySimpleCell *)self labelView];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintLessThanOrEqualToAnchor:v27];
  v46[4] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [v44 addObjectsFromArray:v29];

  v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(60)-[actionView(==36)]-(12)-[label]-(>=12)-|" options:0 metrics:0 views:v45];
  [v44 addObjectsFromArray:v30];

  v31 = [(CNStarkContactAddressPropertyCell *)self actionView];
  v32 = [v31 topAnchor];
  v33 = [(CNStarkContactAddressPropertyCell *)self contentView];
  v34 = [v33 safeAreaLayoutGuide];
  v35 = [v34 topAnchor];
  v36 = [v32 constraintEqualToAnchor:v35 constant:4.0];
  [v44 addObject:v36];

  return v44;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v6 = a3;
  if (([v6 isHighlighted] & 1) != 0 || (objc_msgSend(v6, "isFocused") & 1) != 0 || objc_msgSend(v6, "isSelected"))
  {
    v4 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v5 = [MEMORY[0x1E69DC888] _carSystemFocusColor];
    [v4 setBackgroundColor:v5];

    [v4 setCornerRadius:14.0];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  }

  [(CNStarkContactAddressPropertyCell *)self setBackgroundConfiguration:v4];
}

- (CNStarkContactAddressPropertyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = CNStarkContactAddressPropertyCell;
  v4 = [(CNPropertyPostalAddressCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CNPropertySimpleCell *)v4 labelLabel];
    [v6 setTextAlignment:4];

    v7 = [(CNPropertySimpleCell *)v5 valueLabel];
    [v7 setTextAlignment:4];

    v8 = [(CNPropertySimpleCell *)v5 labelView];
    [v8 setContentHuggingPriority:0 forAxis:0.0];

    v9 = [CNStarkActionView propertyTransportButtonWithDelegate:v5];
    actionView = v5->_actionView;
    v5->_actionView = v9;

    [(CNStarkActionView *)v5->_actionView setPrefersSmallImageScale:1];
    [(CNStarkActionView *)v5->_actionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNStarkActionView *)v5->_actionView setActionType:*MEMORY[0x1E695C160]];
    [(CNStarkActionView *)v5->_actionView setEnabled:0];
    v11 = [(CNStarkContactAddressPropertyCell *)v5 contentView];
    [v11 addSubview:v5->_actionView];

    [(CNStarkContactAddressPropertyCell *)v5 setAccessibilityIdentifier:@"CNStarkContactAddressPropertyCell"];
    v12 = v5;
  }

  return v5;
}

@end