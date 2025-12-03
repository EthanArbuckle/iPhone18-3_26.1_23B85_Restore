@interface _SFSettingsAlertStepper
+ (id)stepperForBrowsingAssistant;
- (_SFSettingsAlertStepper)initWithFrame:(CGRect)frame;
- (id)_button:(int64_t)_button;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initUsingResetButton:(BOOL)button usingTopSeparator:(BOOL)separator;
- (void)setEnabled:(BOOL)enabled forButton:(int64_t)button;
- (void)setImage:(id)image forButton:(int64_t)button;
- (void)setText:(id)text forButton:(int64_t)button;
@end

@implementation _SFSettingsAlertStepper

- (_SFSettingsAlertStepper)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(_SFSettingsAlertStepper *)self initUsingResetButton:1 usingTopSeparator:0];
  v8 = v7;
  if (v7)
  {
    [(_SFSettingsAlertStepper *)v7 setFrame:x, y, width, height];
    v9 = v8;
  }

  return v8;
}

+ (id)stepperForBrowsingAssistant
{
  v2 = [[self alloc] initUsingResetButton:0 usingTopSeparator:0];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8]];
  imageView = [v2[63] imageView];
  [imageView setPreferredSymbolConfiguration:v3];

  imageView2 = [v2[62] imageView];
  [imageView2 setPreferredSymbolConfiguration:v3];

  [v2 setDefaultBackgroundMode:0];

  return v2;
}

- (id)initUsingResetButton:(BOOL)button usingTopSeparator:(BOOL)separator
{
  separatorCopy = separator;
  buttonCopy = button;
  v80[7] = *MEMORY[0x1E69E9840];
  v77.receiver = self;
  v77.super_class = _SFSettingsAlertStepper;
  v6 = [(_SFSettingsAlertControl *)&v77 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    if (separatorCopy)
    {
      v8 = 3;
    }

    else
    {
      v8 = 5;
    }

    [(_SFSettingsAlertControl *)v6 setDefaultBackgroundMode:v8];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(_SFSettingsAlertStepper *)v7 setTintColor:labelColor];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___SFSettingsAlertStepper_initUsingResetButton_usingTopSeparator___block_invoke;
    aBlock[3] = &unk_1E84943D8;
    v73 = v7;
    v10 = v7;
    v76 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11[2](v11, sel__decrementTapped_, 6);
    v13 = v10[63];
    v10[63] = v12;

    [v10[63] setAccessibilityIdentifier:@"Decrement"];
    v14 = v11[2](v11, sel__incrementTapped_, 0);
    v15 = v10[62];
    v10[62] = v14;

    [v10[62] setAccessibilityIdentifier:@"Increment"];
    v70 = buttonCopy;
    if (buttonCopy)
    {
      v16 = v11[2](v11, sel__resetTapped_, 6);
      v17 = v10[64];
      v10[64] = v16;

      [v10[64] setAccessibilityIdentifier:@"Reset"];
    }

    v72 = v11;
    widthAnchor = [v10[62] widthAnchor];
    widthAnchor2 = [v10[63] widthAnchor];
    v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

    LODWORD(v21) = 1144733696;
    [v20 setPriority:v21];
    _SFOnePixel();
    v23 = v22;
    LODWORD(widthAnchor) = [MEMORY[0x1E69C8880] isBrowsingAssistantEnabled];
    v58 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v10[63] leadingAnchor];
    leadingAnchor2 = [v10 leadingAnchor];
    v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v80[0] = v63;
    topAnchor = [v10[63] topAnchor];
    topAnchor2 = [v10 topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v80[1] = v59;
    bottomAnchor = [v10[63] bottomAnchor];
    v57 = bottomAnchor;
    bottomAnchor2 = [v10 bottomAnchor];
    v56 = bottomAnchor2;
    if (widthAnchor)
    {
      v26 = -0.0;
    }

    else
    {
      v26 = -v23;
    }

    v55 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v26];
    v80[2] = v55;
    topAnchor3 = [v10[62] topAnchor];
    topAnchor4 = [v10 topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v80[3] = v28;
    bottomAnchor3 = [v10[62] bottomAnchor];
    bottomAnchor4 = [v10 bottomAnchor];
    v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v26];
    v80[4] = v31;
    trailingAnchor = [v10[62] trailingAnchor];
    trailingAnchor2 = [v10 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v80[5] = v34;
    v80[6] = v20;
    v74 = v20;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:7];
    [v58 activateConstraints:v35];

    if (v70)
    {
      widthAnchor3 = [v10[64] widthAnchor];
      widthAnchor4 = [v10[62] widthAnchor];
      leadingAnchor5 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];

      [v74 priority];
      *&v40 = v39 + -1.0;
      [leadingAnchor5 setPriority:v40];
      v66 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [v10[64] leadingAnchor];
      trailingAnchor3 = [v10[63] trailingAnchor];
      v42 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
      v79[0] = v42;
      topAnchor5 = [v10[64] topAnchor];
      topAnchor6 = [v10 topAnchor];
      v64 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v79[1] = v64;
      bottomAnchor5 = [v10[64] bottomAnchor];
      bottomAnchor6 = [v10 bottomAnchor];
      _SFOnePixel();
      v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v44];
      v79[2] = v45;
      leadingAnchor4 = [v10[62] leadingAnchor];
      trailingAnchor4 = [v10[64] trailingAnchor];
      v48 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4];
      v79[3] = v48;
      v79[4] = leadingAnchor5;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
      [v66 activateConstraints:v49];

      trailingAnchor5 = leadingAnchor3;
    }

    else
    {
      v51 = MEMORY[0x1E696ACD8];
      leadingAnchor5 = [v10[62] leadingAnchor];
      trailingAnchor5 = [v10[63] trailingAnchor];
      trailingAnchor3 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5];
      v78 = trailingAnchor3;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
      [v51 activateConstraints:v42];
    }

    v52 = v10;
    v7 = v73;
  }

  return v7;
}

- (void)setImage:(id)image forButton:(int64_t)button
{
  imageCopy = image;
  v7 = [(_SFSettingsAlertStepper *)self _button:button];
  [v7 setImage:imageCopy];
}

- (void)setText:(id)text forButton:(int64_t)button
{
  textCopy = text;
  v7 = [(_SFSettingsAlertStepper *)self _button:button];
  [v7 setText:textCopy];
}

- (void)setEnabled:(BOOL)enabled forButton:(int64_t)button
{
  enabledCopy = enabled;
  v5 = [(_SFSettingsAlertStepper *)self _button:button];
  [v5 setEnabled:enabledCopy];
}

- (id)_button:(int64_t)_button
{
  if (_button <= 2)
  {
    a2 = *(&self->super.super.super.super.super.isa + *off_1E84943F8[_button]);
  }

  return a2;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _SFSettingsAlertStepper;
  v5 = [(_SFSettingsAlertStepper *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end