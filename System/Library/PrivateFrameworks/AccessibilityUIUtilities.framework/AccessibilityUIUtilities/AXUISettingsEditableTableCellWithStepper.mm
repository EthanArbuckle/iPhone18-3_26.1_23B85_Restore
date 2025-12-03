@interface AXUISettingsEditableTableCellWithStepper
- (AXUISettingsEditableTableCellWithStepper)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AXUISettingsEditableTableCellWithStepperDelegate)delegate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_axStepperMaximumValue;
- (double)_axStepperMinimumValue;
- (double)_axStepperStepValue;
- (double)_axStepperValue;
- (id)_axStepperStringValue;
- (id)_axStepperUnitString;
- (int64_t)_axStepperKeyboardType;
- (void)_axStepperSetValue:(double)value;
- (void)_stepperChanged:(id)changed;
- (void)_textFieldChanged:(id)changed;
- (void)_updateAccessibilityLabelForTextField;
- (void)_updateSecondsLabel;
- (void)_updateSecondsLabelForDelegate:(id)delegate;
- (void)didMoveToSuperview;
- (void)initializeView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setDelegate:(id)delegate;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateWithValue:(double)value shouldUpdateTextField:(BOOL)field;
@end

@implementation AXUISettingsEditableTableCellWithStepper

- (AXUISettingsEditableTableCellWithStepper)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXUISettingsEditableTableCellWithStepper;
  v4 = [(AXUISettingsEditableTextCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    *(&v4->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57E0]) = 1;
    *(&v4->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57E8]) = 1;
    [(AXUISettingsEditableTableCellWithStepper *)v4 initializeView];
  }

  return v5;
}

- (void)initializeView
{
  v31.receiver = self;
  v31.super_class = AXUISettingsEditableTableCellWithStepper;
  [(AXUISettingsEditableTextCell *)&v31 initializeView];
  specifier = [(PSTableCell *)self specifier];
  v4 = *MEMORY[0x1E69C58C8];
  v5 = [specifier propertyForKey:*MEMORY[0x1E69C58C8]];
  if (v5)
  {
    specifier2 = [(PSTableCell *)self specifier];
    v7 = [specifier2 propertyForKey:v4];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField setKeyboardType:8];

  nameTextField2 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField2 setReturnKeyType:9];

  nameTextField3 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField3 addTarget:self action:sel__textFieldChanged_ forControlEvents:0x20000];

  nameTextField4 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField4 setEnabled:bOOLValue];

  systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
  nameTextField5 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField5 setBackgroundColor:systemLightGrayColor];

  nameTextField6 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField6 setBorderStyle:3];

  stepper = self->_stepper;
  if (!stepper)
  {
    v17 = objc_alloc(MEMORY[0x1E69DCFB0]);
    v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v19 = self->_stepper;
    self->_stepper = v18;

    [(UIStepper *)self->_stepper setUserInteractionEnabled:1];
    [(UIStepper *)self->_stepper addTarget:self action:sel__stepperChanged_ forControlEvents:4096];
    [(UIStepper *)self->_stepper accessibilitySetIdentification:@"AXStepper"];
    contentView = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
    [contentView addSubview:self->_stepper];

    stepper = self->_stepper;
  }

  [(UIStepper *)stepper setEnabled:bOOLValue];
  secondsLabel = self->_secondsLabel;
  if (!secondsLabel)
  {
    detailTextLabel = [(AXUISettingsEditableTableCellWithStepper *)self detailTextLabel];
    v23 = self->_secondsLabel;
    self->_secondsLabel = detailTextLabel;

    if (!self->_secondsLabel)
    {
      v24 = objc_opt_new();
      v25 = self->_secondsLabel;
      self->_secondsLabel = v24;

      contentView2 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
      [contentView2 addSubview:self->_secondsLabel];
    }

    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)self->_secondsLabel setFont:v27];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_secondsLabel setBackgroundColor:clearColor];

    appearance = [MEMORY[0x1E69C5710] appearance];
    textColor = [appearance textColor];
    [(UILabel *)self->_secondsLabel setTextColor:textColor];

    [(UILabel *)self->_secondsLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_secondsLabel setIsAccessibilityElement:0];
    secondsLabel = self->_secondsLabel;
  }

  [(UILabel *)secondsLabel setEnabled:bOOLValue];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = AXUISettingsEditableTableCellWithStepper;
  [(AXUISettingsEditableTextCell *)&v12 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = *MEMORY[0x1E69C58C8];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x1E69C58C8]];
  if (v6)
  {
    v7 = [specifierCopy propertyForKey:v5];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField setEnabled:bOOLValue];

  [(UIStepper *)self->_stepper setEnabled:bOOLValue];
  [(UILabel *)self->_secondsLabel setEnabled:bOOLValue];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
  target = [specifierCopy target];
  v11 = [specifierCopy propertyForKey:@"testingUseNoPreferencesDelegate"];
  -[AXUISettingsEditableTableCellWithStepper setTestingUseNoPreferencesDelegate:](self, "setTestingUseNoPreferencesDelegate:", [v11 BOOLValue]);

  [(AXUISettingsEditableTableCellWithStepper *)self setDelegate:target];
}

- (void)prepareForReuse
{
  v12.receiver = self;
  v12.super_class = AXUISettingsEditableTableCellWithStepper;
  [(AXUISettingsEditableTextCell *)&v12 prepareForReuse];
  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField setKeyboardType:8];

  nameTextField2 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField2 setReturnKeyType:9];

  systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
  nameTextField3 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField3 setBackgroundColor:systemLightGrayColor];

  nameTextField4 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField4 setBorderStyle:3];

  [(UIStepper *)self->_stepper setUserInteractionEnabled:1];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_secondsLabel setFont:v8];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_secondsLabel setBackgroundColor:clearColor];

  appearance = [MEMORY[0x1E69C5710] appearance];
  textColor = [appearance textColor];
  [(UILabel *)self->_secondsLabel setTextColor:textColor];

  [(UILabel *)self->_secondsLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_secondsLabel setIsAccessibilityElement:0];
  objc_storeWeak(&self->_delegate, 0);
}

- (double)_axStepperMaximumValue
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    [delegate maximumValueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    specifier = [(PSTableCell *)self specifier];
    [v5 maximumValueForSpecifier:specifier];
    v7 = v9;
  }

  return v7;
}

- (double)_axStepperMinimumValue
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    [delegate minimumValueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    specifier = [(PSTableCell *)self specifier];
    [v5 minimumValueForSpecifier:specifier];
    v7 = v9;
  }

  return v7;
}

- (int64_t)_axStepperKeyboardType
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  delegate2 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    v6 = [delegate keyboardTypeForStepperCell:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return 8;
    }

    delegate2 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
    specifier = [(PSTableCell *)self specifier];
    v6 = [delegate2 keyboardTypeForSpecifier:specifier];
  }

  return v6;
}

- (id)_axStepperUnitString
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  delegate2 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    v6 = [delegate unitsStringForStepperCell:self];
LABEL_5:

    goto LABEL_7;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
    specifier = [(PSTableCell *)self specifier];
    v6 = [delegate2 unitsStringForSpecifier:specifier];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (double)_axStepperValue
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    [delegate valueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    specifier = [(PSTableCell *)self specifier];
    [v5 valueForSpecifier:specifier];
    v7 = v9;
  }

  return v7;
}

- (double)_axStepperStepValue
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    [delegate stepValueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    specifier = [(PSTableCell *)self specifier];
    [v5 stepValueForSpecifier:specifier];
    v7 = v9;
  }

  return v7;
}

- (void)_axStepperSetValue:(double)value
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  if (testingUseNoPreferencesDelegate)
  {
    [delegate stepperCell:self setValue:value];
  }

  else
  {
    specifier = [(PSTableCell *)self specifier];
    [delegate specifier:specifier setValue:value];
  }
}

- (id)_axStepperStringValue
{
  testingUseNoPreferencesDelegate = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = delegate;
  if (testingUseNoPreferencesDelegate)
  {
    v6 = [delegate stringValueForStepperCell:self];
  }

  else
  {
    specifier = [(PSTableCell *)self specifier];
    v6 = [v5 stringValueForSpecifier:specifier];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  _axStepperKeyboardType = [(AXUISettingsEditableTableCellWithStepper *)self _axStepperKeyboardType];
  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField setKeyboardType:_axStepperKeyboardType];

  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperMinimumValue];
  [(UIStepper *)self->_stepper setMinimumValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperMaximumValue];
  [(UIStepper *)self->_stepper setMaximumValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperValue];
  [(UIStepper *)self->_stepper setValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperStepValue];
  [(UIStepper *)self->_stepper setStepValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabelForDelegate:delegateCopy];
}

- (void)_updateAccessibilityLabelForTextField
{
  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  text = [(UILabel *)self->_secondsLabel text];
  [nameTextField setAccessibilityLabel:text];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  decimalSeparator = [v4 decimalSeparator];
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v7 = [decimalDigitCharacterSet mutableCopy];

  v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:decimalSeparator];
  [v7 formUnionWithCharacterSet:v8];

  if ([text length])
  {
    v9 = [text stringByTrimmingCharactersInSet:v7];
    v10 = [v9 length];

    if (v10)
    {
      [(AXUISettingsEditableTableCellWithStepper *)self _axStepperValue];
LABEL_6:
      v16 = v11;
      goto LABEL_8;
    }
  }

  v12 = [v4 numberFromString:text];
  [v12 doubleValue];
  v14 = v13;

  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperMinimumValue];
  v16 = v15;
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperMaximumValue];
  if (v14 < v16)
  {
    goto LABEL_8;
  }

  if (v14 > v11)
  {
    goto LABEL_6;
  }

  v16 = v14;
LABEL_8:
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperSetValue:v16];
  _axStepperStringValue = [(AXUISettingsEditableTableCellWithStepper *)self _axStepperStringValue];
  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField setText:_axStepperStringValue];

  [(UIStepper *)self->_stepper setValue:v16];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabel];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
}

- (void)_stepperChanged:(id)changed
{
  [(UIStepper *)self->_stepper value];

  [(AXUISettingsEditableTableCellWithStepper *)self updateWithValue:1 shouldUpdateTextField:?];
}

- (void)_textFieldChanged:(id)changed
{
  text = [changed text];
  [text doubleValue];
  v6 = v5;

  [(AXUISettingsEditableTableCellWithStepper *)self updateWithValue:0 shouldUpdateTextField:v6];
}

- (void)updateWithValue:(double)value shouldUpdateTextField:(BOOL)field
{
  fieldCopy = field;
  stepper = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [stepper maximumValue];
  valueCopy = v8;

  if (valueCopy > value)
  {
    valueCopy = value;
  }

  stepper2 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [stepper2 minimumValue];
  v12 = v11;

  if (valueCopy >= v12)
  {
    v12 = valueCopy;
  }

  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperSetValue:v12];
  stepper3 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [stepper3 setValue:v12];

  if (fieldCopy)
  {
    [(AXUISettingsEditableTextCell *)self updateText];
    if ([(AXUISettingsEditableTableCellWithStepper *)self shouldResizeTextFieldOnUpdate])
    {
      nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
      [nameTextField frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      nameTextField2 = [(AXUISettingsEditableTextCell *)self nameTextField];
      [nameTextField2 sizeThatFits:{200.0, 100.0}];
      v23 = v22;

      [nameTextField setFrame:{v16, v18, v23, v20}];
    }

    [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabel];

    [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
  }
}

- (void)_updateSecondsLabel
{
  delegate = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabelForDelegate:delegate];
}

- (void)_updateSecondsLabelForDelegate:(id)delegate
{
  text = [(UILabel *)self->_secondsLabel text];
  v5 = [text copy];

  _axStepperUnitString = [(AXUISettingsEditableTableCellWithStepper *)self _axStepperUnitString];
  if (_axStepperUnitString)
  {
    [(UILabel *)self->_secondsLabel setText:_axStepperUnitString];
  }

  else
  {
    nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
    text2 = [nameTextField text];

    v9 = [MEMORY[0x1E696AE88] localizedScannerWithString:text2];
    v16 = 0.0;
    [v9 scanDouble:&v16];
    v10 = MEMORY[0x1E696AEC0];
    if (fabs(v16 + -1.0) >= 0.001)
    {
      v11 = @"DELAY_SECONDS_PLURAL";
    }

    else
    {
      v11 = @"DELAY_SECONDS_SINGULAR";
    }

    v12 = AXUILocalizedStringForKey(v11);
    v13 = [v10 stringWithFormat:v12, *&v16];
    [(UILabel *)self->_secondsLabel setText:v13];
  }

  text3 = [(UILabel *)self->_secondsLabel text];
  v15 = [v5 isEqualToString:text3];

  if ((v15 & 1) == 0)
  {
    [(AXUISettingsEditableTableCellWithStepper *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  superview = [(AXUISettingsEditableTableCellWithStepper *)self superview];

  if (superview)
  {
    [(AXUISettingsEditableTextCell *)self updateText];

    [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (AXPreferredContentSizeCategoryIsAccessibilityCategory())
  {
    nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
    [nameTextField sizeThatFits:{200.0, 3.40282347e38}];
    v8 = v7;
    [(UILabel *)self->_secondsLabel sizeThatFits:200.0, 3.40282347e38];
    v10 = v8 + v9;
    [(AXUISettingsEditableTableCellWithStepper *)self layoutMargins];
    v12 = v10 + v11 + 5.0;
    [(AXUISettingsEditableTableCellWithStepper *)self layoutMargins];
    v14 = v13 + v12;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AXUISettingsEditableTableCellWithStepper;
    [(AXUISettingsEditableTableCellWithStepper *)&v19 sizeThatFits:width, height];
    width = v15;
    v14 = v16;
  }

  v17 = width;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = AXUISettingsEditableTableCellWithStepper;
  [(AXUISettingsEditableTextCell *)&v42 layoutSubviews];
  nameTextField = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField sizeToFit];
  [(UILabel *)self->_secondsLabel sizeToFit];
  [nameTextField frame];
  v5 = v4;
  v7 = v6;
  nameTextField2 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [nameTextField2 sizeThatFits:{200.0, 100.0}];
  v10 = v9;

  IsAccessibilityCategory = AXPreferredContentSizeCategoryIsAccessibilityCategory();
  contentView = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
  [contentView frame];
  v14 = v13;
  v15 = v7;
  if (IsAccessibilityCategory)
  {
    [(UILabel *)self->_secondsLabel frame];
    v15 = v7 + 5.0 + v16;
  }

  v17 = v14 - v15;

  v18 = v17 * 0.5;
  appearance = [MEMORY[0x1E69C5710] appearance];
  textColor = [appearance textColor];
  [(UILabel *)self->_secondsLabel setTextColor:textColor];

  v21 = MEMORY[0x1E69DDA98];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    [(AXUISettingsEditableTableCellWithStepper *)self bounds];
    v5 = v22 - v10 + -20.0;
    v43.origin.x = v5;
    v43.origin.y = v18;
    v43.size.width = v10;
    v43.size.height = v7;
    v23 = CGRectGetMinX(v43) + -20.0;
    [(UILabel *)self->_secondsLabel frame];
    v25 = v23 - v24;
  }

  else
  {
    v44.origin.x = v5;
    v44.origin.y = v18;
    v44.size.width = v10;
    v44.size.height = v7;
    v25 = CGRectGetMaxX(v44) + 20.0;
  }

  [(UILabel *)self->_secondsLabel frame];
  v27 = v26;
  [nameTextField setFrame:{v5, v18, v10, v7}];
  secondsLabel = self->_secondsLabel;
  v45.origin.x = v25;
  v45.origin.y = v18;
  v45.size.width = v27;
  v45.size.height = v7;
  v46 = CGRectIntegral(v45);
  [(UILabel *)secondsLabel setFrame:v46.origin.x, v46.origin.y, v46.size.width, v46.size.height];
  [(UIStepper *)self->_stepper sizeToFit];
  [(UIStepper *)self->_stepper frame];
  v30 = v29;
  v32 = v31;
  v33 = 10.0;
  if (![*v21 userInterfaceLayoutDirection])
  {
    contentView2 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
    [contentView2 bounds];
    MaxX = CGRectGetMaxX(v47);
    [(UIStepper *)self->_stepper frame];
    v33 = MaxX - (v36 + 10.0);
  }

  if (AXPreferredContentSizeCategoryIsAccessibilityCategory())
  {
    [(UILabel *)self->_secondsLabel frame];
    [nameTextField frame];
    CGRectGetMaxY(v48);
    [nameTextField frame];
    [(UILabel *)self->_secondsLabel setFrame:?];
  }

  contentView3 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
  [contentView3 frame];
  v39 = v38;
  [(UIStepper *)self->_stepper frame];
  v41 = (v39 - v40) * 0.5;

  [(UIStepper *)self->_stepper setFrame:v33, v41, v30, v32];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
}

- (AXUISettingsEditableTableCellWithStepperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end