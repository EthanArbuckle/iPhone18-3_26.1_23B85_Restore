@interface CNStarkContactPropertyCell
+ (double)contentViewBottomAnchorConstraintConstant;
+ (double)labelViewFirstBaselineAnchorConstraintConstant;
+ (double)minimumContentHeight;
+ (double)valueLabelFirstBaselineAnchorConstraintConstant;
- (CNStarkContactPropertyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)contentInsets;
- (id)constantConstraints;
- (id)variableConstraints;
- (int64_t)transportTypeForActionType:(id)a3;
- (void)_cnui_applyContactStyle;
- (void)actionViewTapped:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)performActionForMessage;
- (void)performDefaultAction;
- (void)setSeparatorStyle:(int64_t)a3;
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
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 contact];

  v5 = [MEMORY[0x1E6996BF8] targetForTextWithMessages];
  v6 = [v5 actionsForContact:v4 discoveringEnvironment:0];
  v7 = [v6 allObjects:0];
  v8 = [v7 firstObject];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__CNStarkContactPropertyCell_performActionForMessage__block_invoke;
  v13[3] = &unk_1E74E58A8;
  v13[4] = self;
  v9 = [v8 _cn_firstObjectPassingTest:v13];
  v10 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v11 = [(objc_class *)getFBSOpenApplicationServiceClass_51640() dashboardEndpoint];
  [v10 setConnectionEndpoint:v11];

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

- (int64_t)transportTypeForActionType:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C178];
  v10[0] = *MEMORY[0x1E695C150];
  v10[1] = v3;
  v11[0] = &unk_1F0D4B778;
  v11[1] = &unk_1F0D4B790;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 integerValue];
  return v8;
}

- (void)actionViewTapped:(id)a3
{
  v4 = [a3 actionType];
  v5 = [(CNStarkContactPropertyCell *)self transportTypeForActionType:v4];

  if (v5)
  {
    if (v5 == 2)
    {

      [(CNStarkContactPropertyCell *)self performActionForMessage];
    }

    else
    {
      v7 = [(CNPropertyCell *)self delegate];
      v6 = [(CNPropertyCell *)self propertyItem];
      [v7 propertyCell:self performActionForItem:v6 withTransportType:v5];
    }
  }
}

- (void)updateTransportButtons
{
  if (![(CNPropertySimpleTransportCell *)self allowsActions])
  {
    return;
  }

  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 allowsPhone];

  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v5 allowsIMessage];

  if (!v4)
  {
    if (!v6)
    {
      v13 = [(CNStarkContactPropertyCell *)self actionView1];
      [v13 setActionType:0];

      v10 = [(CNStarkContactPropertyCell *)self actionView2];
      v11 = v10;
      v12 = 0;
      goto LABEL_9;
    }

    v9 = *MEMORY[0x1E695C178];
    v10 = [(CNStarkContactPropertyCell *)self actionView1];
LABEL_7:
    v11 = v10;
    v12 = v9;
LABEL_9:
    [v10 setActionType:v12];

    goto LABEL_10;
  }

  v7 = *MEMORY[0x1E695C150];
  v8 = [(CNStarkContactPropertyCell *)self actionView1];
  [v8 setActionType:v7];

  if (v6)
  {
    v9 = *MEMORY[0x1E695C178];
    v10 = [(CNStarkContactPropertyCell *)self actionView2];
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
  v15 = [(CNStarkContactPropertyCell *)self actionView1];
  v14[2](v14, v15);

  v16 = [(CNStarkContactPropertyCell *)self actionView2];
  v14[2](v14, v16);

  if (*(v22 + 24) == 1)
  {
    v17 = [(CNStarkContactPropertyCell *)self actionView1];
    v18 = v4 & v6;
    [v17 setEnabled:v18];

    v19 = [(CNStarkContactPropertyCell *)self actionView2];
    [v19 setEnabled:v18];

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
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 property];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695C208]];

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

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = CNStarkContactPropertyCell;
  [(CNStarkContactPropertyCell *)&v3 setSeparatorStyle:1];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CNStarkContactPropertyCell;
  [(CNStarkContactPropertyCell *)&v14 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
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
    v12 = [(CNStarkContactPropertyCell *)self actionView1];
    [v12 updateForFocusedState:v11];

    v13 = [(CNStarkContactPropertyCell *)self actionView2];
    [v13 updateForFocusedState:v11];
  }
}

- (id)variableConstraints
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v32[0] = @"label";
  v4 = [(CNPropertySimpleCell *)self labelLabel];
  v33[0] = v4;
  v32[1] = @"value";
  v5 = [(CNPropertySimpleCell *)self valueLabel];
  v33[1] = v5;
  v32[2] = @"actionView1";
  v6 = [(CNStarkContactPropertyCell *)self actionView1];
  v33[2] = v6;
  v32[3] = @"actionView2";
  v7 = [(CNStarkContactPropertyCell *)self actionView2];
  v33[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];

  v9 = [(CNStarkContactPropertyCell *)self actionView2];
  v10 = [v9 superview];

  if (v10)
  {
    v11 = @"H:|-(12)-[actionView2(==36)]-(12)-[actionView1(==36)]-(12)-[label]-(>=12)-|";
  }

  else
  {
    v12 = [(CNStarkContactPropertyCell *)self actionView1];
    v13 = [v12 superview];

    if (!v13)
    {
      goto LABEL_6;
    }

    v11 = @"H:|-(60)-[actionView1(==36)]-(12)-[label]-(>=12)-|";
  }

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v11 options:0 metrics:0 views:v8];
  [v3 addObjectsFromArray:v14];

LABEL_6:
  v15 = [(CNStarkContactPropertyCell *)self actionView1];
  v16 = [v15 superview];

  if (v16)
  {
    v17 = [(CNStarkContactPropertyCell *)self actionView1];
    v18 = [v17 centerYAnchor];
    v19 = [(CNStarkContactPropertyCell *)self contentView];
    v20 = [v19 safeAreaLayoutGuide];
    v21 = [v20 centerYAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];
    [v3 addObject:v22];
  }

  v23 = [(CNStarkContactPropertyCell *)self actionView2];
  v24 = [v23 superview];

  if (v24)
  {
    v25 = [(CNStarkContactPropertyCell *)self actionView2];
    v26 = [v25 centerYAnchor];
    v27 = [(CNStarkContactPropertyCell *)self contentView];
    v28 = [v27 safeAreaLayoutGuide];
    v29 = [v28 centerYAnchor];
    v30 = [v26 constraintEqualToAnchor:v29];
    [v3 addObject:v30];
  }

  return v3;
}

- (id)constantConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNPropertySimpleCell *)self labelView];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(CNStarkContactPropertyCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 topAnchor];
  [objc_opt_class() labelViewFirstBaselineAnchorConstraintConstant];
  v8 = [v4 constraintEqualToAnchor:v7 constant:?];
  [(CNStarkContactPropertyCell *)self setLabelViewFirstBaselineAnchorConstraint:v8];

  v9 = [(CNPropertySimpleCell *)self valueView];
  v10 = [v9 firstBaselineAnchor];
  v11 = [(CNPropertySimpleCell *)self labelView];
  v12 = [v11 firstBaselineAnchor];
  [objc_opt_class() valueLabelFirstBaselineAnchorConstraintConstant];
  v13 = [v10 constraintEqualToAnchor:v12 constant:?];
  [(CNStarkContactPropertyCell *)self setValueViewFirstBaselineAnchorConstraint:v13];

  v14 = [(CNPropertySimpleCell *)self valueView];
  v15 = [v14 firstBaselineAnchor];
  v16 = [(CNStarkContactPropertyCell *)self contentView];
  v17 = [v16 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];
  [objc_opt_class() contentViewBottomAnchorConstraintConstant];
  v19 = [v15 constraintEqualToAnchor:v18 constant:?];
  [(CNStarkContactPropertyCell *)self setContentViewBottomAnchorConstraint:v19];

  v20 = [(CNStarkContactPropertyCell *)self labelViewFirstBaselineAnchorConstraint];
  v30[0] = v20;
  v21 = [(CNStarkContactPropertyCell *)self valueViewFirstBaselineAnchorConstraint];
  v30[1] = v21;
  v22 = [(CNPropertySimpleCell *)self valueView];
  v23 = [v22 leadingAnchor];
  v24 = [(CNPropertySimpleCell *)self labelView];
  v25 = [v24 leadingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v30[2] = v26;
  v27 = [(CNStarkContactPropertyCell *)self contentViewBottomAnchorConstraint];
  v30[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  return v28;
}

- (void)_cnui_applyContactStyle
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v4 = [(CNPropertySimpleCell *)self valueLabel];
  [v4 setFont:v3];

  v5 = +[CNUIColorRepository carPlayTableViewCellBackgroundColor];
  [(CNStarkContactPropertyCell *)self setBackgroundColor:v5];
}

- (CNStarkContactPropertyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = CNStarkContactPropertyCell;
  v4 = [(CNPropertyPhoneNumberCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNStarkContactPropertyCell *)v4 setAllowsFocus:1];
    v6 = [(CNPropertySimpleCell *)v5 labelLabel];
    [v6 setTextAlignment:4];

    v7 = [(CNPropertySimpleCell *)v5 valueLabel];
    [v7 setTextAlignment:4];

    v8 = [(CNPropertySimpleCell *)v5 labelView];
    [v8 setContentHuggingPriority:0 forAxis:0.0];

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
  [a1 labelViewFirstBaselineAnchorConstraintConstant];
  v4 = v3;
  [a1 valueLabelFirstBaselineAnchorConstraintConstant];
  v6 = v4 + v5;
  [a1 contentViewBottomAnchorConstraintConstant];
  return v6 - v7;
}

@end