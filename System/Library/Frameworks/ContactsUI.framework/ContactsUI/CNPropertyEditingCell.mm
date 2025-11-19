@interface CNPropertyEditingCell
- (CNPropertyEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)effectiveLabelWidth;
- (double)leftValueMargin;
- (id)constantConstraints;
- (id)labelView;
- (id)valueString;
- (id)variableConstraints;
- (void)dealloc;
- (void)labelButtonClicked:(id)a3;
- (void)picker:(id)a3 didDeleteItem:(id)a4;
- (void)picker:(id)a3 didPickItem:(id)a4;
- (void)pickerDidCancel:(id)a3;
- (void)regainFocus;
- (void)setValueTextAttributes:(id)a3;
- (void)updateWithPropertyItem:(id)a3;
@end

@implementation CNPropertyEditingCell

- (void)regainFocus
{
  v2 = [(CNLabeledCell *)self valueView];
  [v2 becomeFirstResponder];
}

- (void)picker:(id)a3 didDeleteItem:(id)a4
{
  v5 = a4;
  v8 = [(CNPropertyCell *)self delegate];
  v6 = [(CNPropertyCell *)self propertyItem];
  v7 = [v6 group];
  [v8 propertyCell:self didDeleteLabel:v5 forGroup:v7];
}

- (void)picker:(id)a3 didPickItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNPropertyCell *)self delegate];
  v9 = [(CNPropertyCell *)self propertyItem];
  [v8 propertyCell:self didUpdateItem:v9 withNewLabel:v6];

  v10 = [(CNPropertyCell *)self presentingDelegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__CNPropertyEditingCell_picker_didPickItem___block_invoke;
  v11[3] = &unk_1E74E6A88;
  v11[4] = self;
  [v10 sender:self dismissViewController:v7 completionHandler:v11];
}

- (void)pickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self presentingDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNPropertyEditingCell_pickerDidCancel___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 sender:self dismissViewController:v4 completionHandler:v6];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v49.receiver = self;
  v49.super_class = CNPropertyEditingCell;
  v4 = [(CNLabeledCell *)&v49 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  LODWORD(v4) = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CNPropertyEditingCell *)self labelButton];
  [(CNPropertyEditingCell *)self effectiveLabelWidth];
  v9 = [v6 constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v8];
  [v5 addObject:v9];

  v10 = [v5 lastObject];
  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];

  v12 = MEMORY[0x1E696ACD8];
  if (v4)
  {
    v13 = [(CNLabeledCell *)self valueView];
    v14 = [(CNPropertyEditingCell *)self contentView];
    v15 = [v12 constraintWithItem:v13 attribute:5 relatedBy:0 toItem:v14 attribute:17 multiplier:1.0 constant:0.0];
    [v5 addObject:v15];

    v16 = MEMORY[0x1E696ACD8];
    v17 = [(CNPropertyEditingCell *)self labelButton];
    v18 = [(CNPropertyEditingCell *)self contentView];
    v19 = [v16 constraintWithItem:v17 attribute:3 relatedBy:0 toItem:v18 attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v19];

    if ([objc_opt_class() wantsChevron])
    {
      v20 = MEMORY[0x1E696ACD8];
      v21 = [(CNLabeledCell *)self chevron];
      v22 = [(CNPropertyEditingCell *)self labelButton];
      v23 = [v20 constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v22 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v23];
    }

    v24 = [(CNPropertyEditingCell *)self labelButton];
    v25 = [v24 titleLabel];
    [(CNPropertyCell *)self labelWidth];
    [v25 setPreferredMaxLayoutWidth:?];

    v26 = [(CNPropertyEditingCell *)self labelButton];
    v27 = [v26 titleLabel];
    LODWORD(v28) = 1148846080;
    [v27 setContentCompressionResistancePriority:1 forAxis:v28];
  }

  else
  {
    v29 = [(CNPropertyEditingCell *)self vseparator];
    v30 = [(CNPropertyEditingCell *)self labelButton];
    v31 = [v12 constraintWithItem:v29 attribute:5 relatedBy:0 toItem:v30 attribute:6 multiplier:1.0 constant:8.0];
    [v5 addObject:v31];

    v32 = MEMORY[0x1E696ACD8];
    v33 = [(CNLabeledCell *)self valueView];
    v34 = [(CNPropertyEditingCell *)self vseparator];
    [(CNPropertyEditingCell *)self leftValueMargin];
    v36 = [v32 constraintWithItem:v33 attribute:5 relatedBy:0 toItem:v34 attribute:6 multiplier:1.0 constant:v35];
    [v5 addObject:v36];

    if ([objc_opt_class() wantsChevron])
    {
      v37 = MEMORY[0x1E696ACD8];
      v38 = [(CNLabeledCell *)self chevron];
      v39 = [(CNPropertyEditingCell *)self contentView];
      v40 = [v37 constraintWithItem:v38 attribute:10 relatedBy:0 toItem:v39 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v40];
    }

    v41 = MEMORY[0x1E696ACD8];
    v42 = _NSDictionaryOfVariableBindings(&cfstr_Labelbutton.isa, self->_labelButton, 0);
    v43 = [v41 constraintsWithVisualFormat:@"V:|[_labelButton]|" options:0 metrics:0 views:v42];
    [v5 addObjectsFromArray:v43];

    v44 = MEMORY[0x1E696ACD8];
    v45 = _NSDictionaryOfVariableBindings(&cfstr_Vseparator.isa, self->_vseparator, 0);
    v46 = [v44 constraintsWithVisualFormat:@"V:|[_vseparator]|" options:0 metrics:0 views:v45];
    [v5 addObjectsFromArray:v46];

    v26 = [(CNLabeledCell *)self valueView];
    LODWORD(v47) = 1144733696;
    [v26 setContentCompressionResistancePriority:0 forAxis:v47];
  }

  return v5;
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v21.receiver = self;
  v21.super_class = CNPropertyEditingCell;
  v4 = [(CNLabeledCell *)&v21 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CNPropertyEditingCell *)self labelButton];
  v8 = [(CNPropertyEditingCell *)self contentView];
  v9 = [v6 constraintWithItem:v7 attribute:5 relatedBy:0 toItem:v8 attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(CNLabeledCell *)self valueView];
  v12 = [(CNPropertyEditingCell *)self contentView];
  v13 = [v10 constraintWithItem:v11 attribute:6 relatedBy:0 toItem:v12 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v13];

  v14 = [v5 lastObject];
  LODWORD(v15) = 1148846080;
  [v14 setPriority:v15];

  if ([objc_opt_class() wantsChevron])
  {
    v16 = MEMORY[0x1E696ACD8];
    v17 = [(CNLabeledCell *)self chevron];
    v18 = [(CNPropertyEditingCell *)self labelView];
    v19 = [v16 constraintWithItem:v17 attribute:6 relatedBy:0 toItem:v18 attribute:6 multiplier:1.0 constant:0.0];
    [v5 addObject:v19];
  }

  return v5;
}

- (double)effectiveLabelWidth
{
  [(CNPropertyCell *)self labelWidth];
  v4 = v3;
  [(UIButton *)self->_labelButton titleEdgeInsets];
  v6 = v4 + v5;
  [(UIButton *)self->_labelButton titleEdgeInsets];
  return v6 + v7;
}

- (double)leftValueMargin
{
  v2 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  result = 16.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (id)valueString
{
  v2 = [(CNPropertyCell *)self propertyItem];
  v3 = [v2 editingStringValue];

  return v3;
}

- (void)setValueTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyCell *)self propertyItem];
  v6 = [v5 isReadonly];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = +[CNUIColorRepository contactStyleDefaultReadOnlyTextColor];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v15.receiver = self;
    v15.super_class = CNPropertyEditingCell;
    [(CNLabeledCell *)&v15 setValueTextAttributes:v7];
  }

  else
  {
    v9 = [(CNPropertyCell *)self propertyItem];
    v10 = [v9 showValueWithLabelStyle];

    if (!v10)
    {
      v13.receiver = self;
      v13.super_class = CNPropertyEditingCell;
      [(CNLabeledCell *)&v13 setValueTextAttributes:v4];
      goto LABEL_7;
    }

    v7 = [v4 mutableCopy];
    v11 = +[CNContactStyle currentStyle];
    v12 = [v11 textColor];
    [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v14.receiver = self;
    v14.super_class = CNPropertyEditingCell;
    [(CNLabeledCell *)&v14 setValueTextAttributes:v7];
  }

LABEL_7:
}

- (void)updateWithPropertyItem:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNPropertyEditingCell;
  [(CNPropertyCell *)&v16 updateWithPropertyItem:v4];
  labelButton = self->_labelButton;
  v6 = [(CNPropertyCell *)self propertyItem];
  v7 = [v6 displayLabel];
  [(UIButton *)labelButton setTitle:v7 forState:0];

  v8 = [(UIButton *)self->_labelButton titleLabel];
  [(CNPropertyCell *)self labelWidth];
  [v8 setPreferredMaxLayoutWidth:?];

  v9 = [(CNPropertyCell *)self propertyItem];
  v10 = [v9 extendedLabels];
  v11 = [v10 count];

  if (v11 >= 2)
  {
    v12 = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
    v13 = [(CNLabeledCell *)self chevron];
    [v13 setImage:v12];
  }

  v14 = [(CNLabeledCell *)self chevron];
  [v14 setHidden:v11 < 2];

  if ([v4 isReadonly])
  {
    v15 = 0;
  }

  else
  {
    v15 = [v4 shouldDisableLabelButton] ^ 1;
  }

  [(UIButton *)self->_labelButton setUserInteractionEnabled:v15];
  -[UIButton setEnabled:](self->_labelButton, "setEnabled:", [v4 shouldDisableLabelButton] ^ 1);
}

- (void)labelButtonClicked:(id)a3
{
  v12 = a3;
  v4 = [(CNPropertyCell *)self propertyItem];
  v5 = [v4 extendedLabels];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = [CNLabelPickerController alloc];
    v8 = [(CNPropertyCell *)self propertyItem];
    v9 = [(CNLabelPickerController *)v7 initForPropertyItem:v8];

    [v9 setDelegate:self];
    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
    v11 = [(CNPropertyCell *)self presentingDelegate];
    [v11 sender:v12 presentViewController:v10];
  }
}

- (id)labelView
{
  labelButton = self->_labelButton;
  if (!labelButton)
  {
    v4 = +[CNPropertyLabelButton propertyLabelButton];
    v5 = self->_labelButton;
    self->_labelButton = v4;

    LODWORD(v6) = 1112014848;
    [(UIButton *)self->_labelButton setContentHuggingPriority:1 forAxis:v6];
    v7 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
    if ([objc_opt_class() wantsChevron])
    {
      v11 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
      [(CNLabeledCell *)self chevronWidth];
      if (v11 == 1)
      {
        v8 = v12;
      }

      else
      {
        v10 = v12;
      }
    }

    [(UIButton *)self->_labelButton setTitleEdgeInsets:v7, v8, v9, v10];
    [(UIButton *)self->_labelButton addTarget:self action:sel_labelButtonClicked_ forControlEvents:64];
    labelButton = self->_labelButton;
  }

  return labelButton;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertyEditingCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertyEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = CNPropertyEditingCell;
  v4 = [(CNPropertyCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [CNRepeatingGradientSeparatorView alloc];
  v6 = [(CNRepeatingGradientSeparatorView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  vseparator = v4->_vseparator;
  v4->_vseparator = v6;

  [(CNRepeatingGradientSeparatorView *)v4->_vseparator setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(CNPropertyEditingCell *)v4 contentView];
  [v8 addSubview:v4->_vseparator];

  return v4;
}

@end