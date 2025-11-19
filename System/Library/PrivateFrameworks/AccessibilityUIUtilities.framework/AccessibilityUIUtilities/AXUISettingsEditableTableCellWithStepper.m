@interface AXUISettingsEditableTableCellWithStepper
- (AXUISettingsEditableTableCellWithStepper)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AXUISettingsEditableTableCellWithStepperDelegate)delegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_axStepperMaximumValue;
- (double)_axStepperMinimumValue;
- (double)_axStepperStepValue;
- (double)_axStepperValue;
- (id)_axStepperStringValue;
- (id)_axStepperUnitString;
- (int64_t)_axStepperKeyboardType;
- (void)_axStepperSetValue:(double)a3;
- (void)_stepperChanged:(id)a3;
- (void)_textFieldChanged:(id)a3;
- (void)_updateAccessibilityLabelForTextField;
- (void)_updateSecondsLabel;
- (void)_updateSecondsLabelForDelegate:(id)a3;
- (void)didMoveToSuperview;
- (void)initializeView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setDelegate:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateWithValue:(double)a3 shouldUpdateTextField:(BOOL)a4;
@end

@implementation AXUISettingsEditableTableCellWithStepper

- (AXUISettingsEditableTableCellWithStepper)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXUISettingsEditableTableCellWithStepper;
  v4 = [(AXUISettingsEditableTextCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(PSTableCell *)self specifier];
  v4 = *MEMORY[0x1E69C58C8];
  v5 = [v3 propertyForKey:*MEMORY[0x1E69C58C8]];
  if (v5)
  {
    v6 = [(PSTableCell *)self specifier];
    v7 = [v6 propertyForKey:v4];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v9 setKeyboardType:8];

  v10 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v10 setReturnKeyType:9];

  v11 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v11 addTarget:self action:sel__textFieldChanged_ forControlEvents:0x20000];

  v12 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v12 setEnabled:v8];

  v13 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  v14 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v14 setBackgroundColor:v13];

  v15 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v15 setBorderStyle:3];

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
    v20 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
    [v20 addSubview:self->_stepper];

    stepper = self->_stepper;
  }

  [(UIStepper *)stepper setEnabled:v8];
  secondsLabel = self->_secondsLabel;
  if (!secondsLabel)
  {
    v22 = [(AXUISettingsEditableTableCellWithStepper *)self detailTextLabel];
    v23 = self->_secondsLabel;
    self->_secondsLabel = v22;

    if (!self->_secondsLabel)
    {
      v24 = objc_opt_new();
      v25 = self->_secondsLabel;
      self->_secondsLabel = v24;

      v26 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
      [v26 addSubview:self->_secondsLabel];
    }

    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)self->_secondsLabel setFont:v27];

    v28 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_secondsLabel setBackgroundColor:v28];

    v29 = [MEMORY[0x1E69C5710] appearance];
    v30 = [v29 textColor];
    [(UILabel *)self->_secondsLabel setTextColor:v30];

    [(UILabel *)self->_secondsLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_secondsLabel setIsAccessibilityElement:0];
    secondsLabel = self->_secondsLabel;
  }

  [(UILabel *)secondsLabel setEnabled:v8];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AXUISettingsEditableTableCellWithStepper;
  [(AXUISettingsEditableTextCell *)&v12 refreshCellContentsWithSpecifier:v4];
  v5 = *MEMORY[0x1E69C58C8];
  v6 = [v4 propertyForKey:*MEMORY[0x1E69C58C8]];
  if (v6)
  {
    v7 = [v4 propertyForKey:v5];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v9 setEnabled:v8];

  [(UIStepper *)self->_stepper setEnabled:v8];
  [(UILabel *)self->_secondsLabel setEnabled:v8];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
  v10 = [v4 target];
  v11 = [v4 propertyForKey:@"testingUseNoPreferencesDelegate"];
  -[AXUISettingsEditableTableCellWithStepper setTestingUseNoPreferencesDelegate:](self, "setTestingUseNoPreferencesDelegate:", [v11 BOOLValue]);

  [(AXUISettingsEditableTableCellWithStepper *)self setDelegate:v10];
}

- (void)prepareForReuse
{
  v12.receiver = self;
  v12.super_class = AXUISettingsEditableTableCellWithStepper;
  [(AXUISettingsEditableTextCell *)&v12 prepareForReuse];
  v3 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v3 setKeyboardType:8];

  v4 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v4 setReturnKeyType:9];

  v5 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  v6 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v6 setBackgroundColor:v5];

  v7 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v7 setBorderStyle:3];

  [(UIStepper *)self->_stepper setUserInteractionEnabled:1];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_secondsLabel setFont:v8];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_secondsLabel setBackgroundColor:v9];

  v10 = [MEMORY[0x1E69C5710] appearance];
  v11 = [v10 textColor];
  [(UILabel *)self->_secondsLabel setTextColor:v11];

  [(UILabel *)self->_secondsLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_secondsLabel setIsAccessibilityElement:0];
  objc_storeWeak(&self->_delegate, 0);
}

- (double)_axStepperMaximumValue
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    [v4 maximumValueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    v8 = [(PSTableCell *)self specifier];
    [v5 maximumValueForSpecifier:v8];
    v7 = v9;
  }

  return v7;
}

- (double)_axStepperMinimumValue
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    [v4 minimumValueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    v8 = [(PSTableCell *)self specifier];
    [v5 minimumValueForSpecifier:v8];
    v7 = v9;
  }

  return v7;
}

- (int64_t)_axStepperKeyboardType
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 keyboardTypeForStepperCell:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return 8;
    }

    v5 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
    v8 = [(PSTableCell *)self specifier];
    v6 = [v5 keyboardTypeForSpecifier:v8];
  }

  return v6;
}

- (id)_axStepperUnitString
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 unitsStringForStepperCell:self];
LABEL_5:

    goto LABEL_7;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
    v8 = [(PSTableCell *)self specifier];
    v6 = [v5 unitsStringForSpecifier:v8];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (double)_axStepperValue
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    [v4 valueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    v8 = [(PSTableCell *)self specifier];
    [v5 valueForSpecifier:v8];
    v7 = v9;
  }

  return v7;
}

- (double)_axStepperStepValue
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    [v4 stepValueForStepperCell:self];
    v7 = v6;
  }

  else
  {
    v8 = [(PSTableCell *)self specifier];
    [v5 stepValueForSpecifier:v8];
    v7 = v9;
  }

  return v7;
}

- (void)_axStepperSetValue:(double)a3
{
  v5 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v7 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  if (v5)
  {
    [v7 stepperCell:self setValue:a3];
  }

  else
  {
    v6 = [(PSTableCell *)self specifier];
    [v7 specifier:v6 setValue:a3];
  }
}

- (id)_axStepperStringValue
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self testingUseNoPreferencesDelegate];
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringValueForStepperCell:self];
  }

  else
  {
    v7 = [(PSTableCell *)self specifier];
    v6 = [v5 stringValueForSpecifier:v7];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_delegate, v6);
  v4 = [(AXUISettingsEditableTableCellWithStepper *)self _axStepperKeyboardType];
  v5 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v5 setKeyboardType:v4];

  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperMinimumValue];
  [(UIStepper *)self->_stepper setMinimumValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperMaximumValue];
  [(UIStepper *)self->_stepper setMaximumValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperValue];
  [(UIStepper *)self->_stepper setValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperStepValue];
  [(UIStepper *)self->_stepper setStepValue:?];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabelForDelegate:v6];
}

- (void)_updateAccessibilityLabelForTextField
{
  v4 = [(AXUISettingsEditableTextCell *)self nameTextField];
  v3 = [(UILabel *)self->_secondsLabel text];
  [v4 setAccessibilityLabel:v3];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v19 = [a3 text];
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v5 = [v4 decimalSeparator];
  v6 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v5];
  [v7 formUnionWithCharacterSet:v8];

  if ([v19 length])
  {
    v9 = [v19 stringByTrimmingCharactersInSet:v7];
    v10 = [v9 length];

    if (v10)
    {
      [(AXUISettingsEditableTableCellWithStepper *)self _axStepperValue];
LABEL_6:
      v16 = v11;
      goto LABEL_8;
    }
  }

  v12 = [v4 numberFromString:v19];
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
  v17 = [(AXUISettingsEditableTableCellWithStepper *)self _axStepperStringValue];
  v18 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v18 setText:v17];

  [(UIStepper *)self->_stepper setValue:v16];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabel];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
}

- (void)_stepperChanged:(id)a3
{
  [(UIStepper *)self->_stepper value];

  [(AXUISettingsEditableTableCellWithStepper *)self updateWithValue:1 shouldUpdateTextField:?];
}

- (void)_textFieldChanged:(id)a3
{
  v4 = [a3 text];
  [v4 doubleValue];
  v6 = v5;

  [(AXUISettingsEditableTableCellWithStepper *)self updateWithValue:0 shouldUpdateTextField:v6];
}

- (void)updateWithValue:(double)a3 shouldUpdateTextField:(BOOL)a4
{
  v4 = a4;
  v7 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [v7 maximumValue];
  v9 = v8;

  if (v9 > a3)
  {
    v9 = a3;
  }

  v10 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [v10 minimumValue];
  v12 = v11;

  if (v9 >= v12)
  {
    v12 = v9;
  }

  [(AXUISettingsEditableTableCellWithStepper *)self _axStepperSetValue:v12];
  v13 = [(AXUISettingsEditableTableCellWithStepper *)self stepper];
  [v13 setValue:v12];

  if (v4)
  {
    [(AXUISettingsEditableTextCell *)self updateText];
    if ([(AXUISettingsEditableTableCellWithStepper *)self shouldResizeTextFieldOnUpdate])
    {
      v14 = [(AXUISettingsEditableTextCell *)self nameTextField];
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(AXUISettingsEditableTextCell *)self nameTextField];
      [v21 sizeThatFits:{200.0, 100.0}];
      v23 = v22;

      [v14 setFrame:{v16, v18, v23, v20}];
    }

    [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabel];

    [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
  }
}

- (void)_updateSecondsLabel
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self delegate];
  [(AXUISettingsEditableTableCellWithStepper *)self _updateSecondsLabelForDelegate:v3];
}

- (void)_updateSecondsLabelForDelegate:(id)a3
{
  v4 = [(UILabel *)self->_secondsLabel text];
  v5 = [v4 copy];

  v6 = [(AXUISettingsEditableTableCellWithStepper *)self _axStepperUnitString];
  if (v6)
  {
    [(UILabel *)self->_secondsLabel setText:v6];
  }

  else
  {
    v7 = [(AXUISettingsEditableTextCell *)self nameTextField];
    v8 = [v7 text];

    v9 = [MEMORY[0x1E696AE88] localizedScannerWithString:v8];
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

  v14 = [(UILabel *)self->_secondsLabel text];
  v15 = [v5 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    [(AXUISettingsEditableTableCellWithStepper *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  v3 = [(AXUISettingsEditableTableCellWithStepper *)self superview];

  if (v3)
  {
    [(AXUISettingsEditableTextCell *)self updateText];

    [(AXUISettingsEditableTableCellWithStepper *)self _updateAccessibilityLabelForTextField];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (AXPreferredContentSizeCategoryIsAccessibilityCategory())
  {
    v6 = [(AXUISettingsEditableTextCell *)self nameTextField];
    [v6 sizeThatFits:{200.0, 3.40282347e38}];
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
  v3 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v3 sizeToFit];
  [(UILabel *)self->_secondsLabel sizeToFit];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v8 = [(AXUISettingsEditableTextCell *)self nameTextField];
  [v8 sizeThatFits:{200.0, 100.0}];
  v10 = v9;

  IsAccessibilityCategory = AXPreferredContentSizeCategoryIsAccessibilityCategory();
  v12 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
  [v12 frame];
  v14 = v13;
  v15 = v7;
  if (IsAccessibilityCategory)
  {
    [(UILabel *)self->_secondsLabel frame];
    v15 = v7 + 5.0 + v16;
  }

  v17 = v14 - v15;

  v18 = v17 * 0.5;
  v19 = [MEMORY[0x1E69C5710] appearance];
  v20 = [v19 textColor];
  [(UILabel *)self->_secondsLabel setTextColor:v20];

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
  [v3 setFrame:{v5, v18, v10, v7}];
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
    v34 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
    [v34 bounds];
    MaxX = CGRectGetMaxX(v47);
    [(UIStepper *)self->_stepper frame];
    v33 = MaxX - (v36 + 10.0);
  }

  if (AXPreferredContentSizeCategoryIsAccessibilityCategory())
  {
    [(UILabel *)self->_secondsLabel frame];
    [v3 frame];
    CGRectGetMaxY(v48);
    [v3 frame];
    [(UILabel *)self->_secondsLabel setFrame:?];
  }

  v37 = [(AXUISettingsEditableTableCellWithStepper *)self contentView];
  [v37 frame];
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