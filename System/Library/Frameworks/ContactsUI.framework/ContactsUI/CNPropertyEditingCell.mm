@interface CNPropertyEditingCell
- (CNPropertyEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)effectiveLabelWidth;
- (double)leftValueMargin;
- (id)constantConstraints;
- (id)labelView;
- (id)valueString;
- (id)variableConstraints;
- (void)dealloc;
- (void)labelButtonClicked:(id)clicked;
- (void)picker:(id)picker didDeleteItem:(id)item;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)regainFocus;
- (void)setValueTextAttributes:(id)attributes;
- (void)updateWithPropertyItem:(id)item;
@end

@implementation CNPropertyEditingCell

- (void)regainFocus
{
  valueView = [(CNLabeledCell *)self valueView];
  [valueView becomeFirstResponder];
}

- (void)picker:(id)picker didDeleteItem:(id)item
{
  itemCopy = item;
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  group = [propertyItem group];
  [delegate propertyCell:self didDeleteLabel:itemCopy forGroup:group];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  pickerCopy = picker;
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self didUpdateItem:propertyItem withNewLabel:itemCopy];

  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__CNPropertyEditingCell_picker_didPickItem___block_invoke;
  v11[3] = &unk_1E74E6A88;
  v11[4] = self;
  [presentingDelegate sender:self dismissViewController:pickerCopy completionHandler:v11];
}

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNPropertyEditingCell_pickerDidCancel___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [presentingDelegate sender:self dismissViewController:cancelCopy completionHandler:v6];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v49.receiver = self;
  v49.super_class = CNPropertyEditingCell;
  variableConstraints = [(CNLabeledCell *)&v49 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  LODWORD(variableConstraints) = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v6 = MEMORY[0x1E696ACD8];
  labelButton = [(CNPropertyEditingCell *)self labelButton];
  [(CNPropertyEditingCell *)self effectiveLabelWidth];
  v9 = [v6 constraintWithItem:labelButton attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v8];
  [v5 addObject:v9];

  lastObject = [v5 lastObject];
  LODWORD(v11) = 1148846080;
  [lastObject setPriority:v11];

  v12 = MEMORY[0x1E696ACD8];
  if (variableConstraints)
  {
    valueView = [(CNLabeledCell *)self valueView];
    contentView = [(CNPropertyEditingCell *)self contentView];
    v15 = [v12 constraintWithItem:valueView attribute:5 relatedBy:0 toItem:contentView attribute:17 multiplier:1.0 constant:0.0];
    [v5 addObject:v15];

    v16 = MEMORY[0x1E696ACD8];
    labelButton2 = [(CNPropertyEditingCell *)self labelButton];
    contentView2 = [(CNPropertyEditingCell *)self contentView];
    v19 = [v16 constraintWithItem:labelButton2 attribute:3 relatedBy:0 toItem:contentView2 attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v19];

    if ([objc_opt_class() wantsChevron])
    {
      v20 = MEMORY[0x1E696ACD8];
      chevron = [(CNLabeledCell *)self chevron];
      labelButton3 = [(CNPropertyEditingCell *)self labelButton];
      v23 = [v20 constraintWithItem:chevron attribute:10 relatedBy:0 toItem:labelButton3 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v23];
    }

    labelButton4 = [(CNPropertyEditingCell *)self labelButton];
    titleLabel = [labelButton4 titleLabel];
    [(CNPropertyCell *)self labelWidth];
    [titleLabel setPreferredMaxLayoutWidth:?];

    labelButton5 = [(CNPropertyEditingCell *)self labelButton];
    titleLabel2 = [labelButton5 titleLabel];
    LODWORD(v28) = 1148846080;
    [titleLabel2 setContentCompressionResistancePriority:1 forAxis:v28];
  }

  else
  {
    vseparator = [(CNPropertyEditingCell *)self vseparator];
    labelButton6 = [(CNPropertyEditingCell *)self labelButton];
    v31 = [v12 constraintWithItem:vseparator attribute:5 relatedBy:0 toItem:labelButton6 attribute:6 multiplier:1.0 constant:8.0];
    [v5 addObject:v31];

    v32 = MEMORY[0x1E696ACD8];
    valueView2 = [(CNLabeledCell *)self valueView];
    vseparator2 = [(CNPropertyEditingCell *)self vseparator];
    [(CNPropertyEditingCell *)self leftValueMargin];
    v36 = [v32 constraintWithItem:valueView2 attribute:5 relatedBy:0 toItem:vseparator2 attribute:6 multiplier:1.0 constant:v35];
    [v5 addObject:v36];

    if ([objc_opt_class() wantsChevron])
    {
      v37 = MEMORY[0x1E696ACD8];
      chevron2 = [(CNLabeledCell *)self chevron];
      contentView3 = [(CNPropertyEditingCell *)self contentView];
      v40 = [v37 constraintWithItem:chevron2 attribute:10 relatedBy:0 toItem:contentView3 attribute:10 multiplier:1.0 constant:0.0];
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

    labelButton5 = [(CNLabeledCell *)self valueView];
    LODWORD(v47) = 1144733696;
    [labelButton5 setContentCompressionResistancePriority:0 forAxis:v47];
  }

  return v5;
}

- (id)constantConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v21.receiver = self;
  v21.super_class = CNPropertyEditingCell;
  constantConstraints = [(CNLabeledCell *)&v21 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  v6 = MEMORY[0x1E696ACD8];
  labelButton = [(CNPropertyEditingCell *)self labelButton];
  contentView = [(CNPropertyEditingCell *)self contentView];
  v9 = [v6 constraintWithItem:labelButton attribute:5 relatedBy:0 toItem:contentView attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  valueView = [(CNLabeledCell *)self valueView];
  contentView2 = [(CNPropertyEditingCell *)self contentView];
  v13 = [v10 constraintWithItem:valueView attribute:6 relatedBy:0 toItem:contentView2 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v13];

  lastObject = [v5 lastObject];
  LODWORD(v15) = 1148846080;
  [lastObject setPriority:v15];

  if ([objc_opt_class() wantsChevron])
  {
    v16 = MEMORY[0x1E696ACD8];
    chevron = [(CNLabeledCell *)self chevron];
    labelView = [(CNPropertyEditingCell *)self labelView];
    v19 = [v16 constraintWithItem:chevron attribute:6 relatedBy:0 toItem:labelView attribute:6 multiplier:1.0 constant:0.0];
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
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  result = 16.0;
  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

- (id)valueString
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  editingStringValue = [propertyItem editingStringValue];

  return editingStringValue;
}

- (void)setValueTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  isReadonly = [propertyItem isReadonly];

  if (isReadonly)
  {
    v7 = [attributesCopy mutableCopy];
    v8 = +[CNUIColorRepository contactStyleDefaultReadOnlyTextColor];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v15.receiver = self;
    v15.super_class = CNPropertyEditingCell;
    [(CNLabeledCell *)&v15 setValueTextAttributes:v7];
  }

  else
  {
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    showValueWithLabelStyle = [propertyItem2 showValueWithLabelStyle];

    if (!showValueWithLabelStyle)
    {
      v13.receiver = self;
      v13.super_class = CNPropertyEditingCell;
      [(CNLabeledCell *)&v13 setValueTextAttributes:attributesCopy];
      goto LABEL_7;
    }

    v7 = [attributesCopy mutableCopy];
    v11 = +[CNContactStyle currentStyle];
    textColor = [v11 textColor];
    [v7 setObject:textColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v14.receiver = self;
    v14.super_class = CNPropertyEditingCell;
    [(CNLabeledCell *)&v14 setValueTextAttributes:v7];
  }

LABEL_7:
}

- (void)updateWithPropertyItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = CNPropertyEditingCell;
  [(CNPropertyCell *)&v16 updateWithPropertyItem:itemCopy];
  labelButton = self->_labelButton;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  displayLabel = [propertyItem displayLabel];
  [(UIButton *)labelButton setTitle:displayLabel forState:0];

  titleLabel = [(UIButton *)self->_labelButton titleLabel];
  [(CNPropertyCell *)self labelWidth];
  [titleLabel setPreferredMaxLayoutWidth:?];

  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  extendedLabels = [propertyItem2 extendedLabels];
  v11 = [extendedLabels count];

  if (v11 >= 2)
  {
    cnui_symbolImageForContactCardChevron = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
    chevron = [(CNLabeledCell *)self chevron];
    [chevron setImage:cnui_symbolImageForContactCardChevron];
  }

  chevron2 = [(CNLabeledCell *)self chevron];
  [chevron2 setHidden:v11 < 2];

  if ([itemCopy isReadonly])
  {
    v15 = 0;
  }

  else
  {
    v15 = [itemCopy shouldDisableLabelButton] ^ 1;
  }

  [(UIButton *)self->_labelButton setUserInteractionEnabled:v15];
  -[UIButton setEnabled:](self->_labelButton, "setEnabled:", [itemCopy shouldDisableLabelButton] ^ 1);
}

- (void)labelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  propertyItem = [(CNPropertyCell *)self propertyItem];
  extendedLabels = [propertyItem extendedLabels];
  v6 = [extendedLabels count];

  if (v6 >= 2)
  {
    v7 = [CNLabelPickerController alloc];
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    v9 = [(CNLabelPickerController *)v7 initForPropertyItem:propertyItem2];

    [v9 setDelegate:self];
    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
    presentingDelegate = [(CNPropertyCell *)self presentingDelegate];
    [presentingDelegate sender:clickedCopy presentViewController:v10];
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
      userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
      [(CNLabeledCell *)self chevronWidth];
      if (userInterfaceLayoutDirection == 1)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPropertyEditingCell;
  [(CNContactCell *)&v4 dealloc];
}

- (CNPropertyEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = CNPropertyEditingCell;
  v4 = [(CNPropertyCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = [CNRepeatingGradientSeparatorView alloc];
  v6 = [(CNRepeatingGradientSeparatorView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  vseparator = v4->_vseparator;
  v4->_vseparator = v6;

  [(CNRepeatingGradientSeparatorView *)v4->_vseparator setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CNPropertyEditingCell *)v4 contentView];
  [contentView addSubview:v4->_vseparator];

  return v4;
}

@end