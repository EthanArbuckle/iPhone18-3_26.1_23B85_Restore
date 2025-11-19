@interface _SFSettingsAlertStepper
+ (id)stepperForBrowsingAssistant;
- (_SFSettingsAlertStepper)initWithFrame:(CGRect)a3;
- (id)_button:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initUsingResetButton:(BOOL)a3 usingTopSeparator:(BOOL)a4;
- (void)setEnabled:(BOOL)a3 forButton:(int64_t)a4;
- (void)setImage:(id)a3 forButton:(int64_t)a4;
- (void)setText:(id)a3 forButton:(int64_t)a4;
@end

@implementation _SFSettingsAlertStepper

- (_SFSettingsAlertStepper)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v2 = [[a1 alloc] initUsingResetButton:0 usingTopSeparator:0];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8]];
  v4 = [v2[63] imageView];
  [v4 setPreferredSymbolConfiguration:v3];

  v5 = [v2[62] imageView];
  [v5 setPreferredSymbolConfiguration:v3];

  [v2 setDefaultBackgroundMode:0];

  return v2;
}

- (id)initUsingResetButton:(BOOL)a3 usingTopSeparator:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v80[7] = *MEMORY[0x1E69E9840];
  v77.receiver = self;
  v77.super_class = _SFSettingsAlertStepper;
  v6 = [(_SFSettingsAlertControl *)&v77 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 5;
    }

    [(_SFSettingsAlertControl *)v6 setDefaultBackgroundMode:v8];
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(_SFSettingsAlertStepper *)v7 setTintColor:v9];

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
    v70 = v5;
    if (v5)
    {
      v16 = v11[2](v11, sel__resetTapped_, 6);
      v17 = v10[64];
      v10[64] = v16;

      [v10[64] setAccessibilityIdentifier:@"Reset"];
    }

    v72 = v11;
    v18 = [v10[62] widthAnchor];
    v19 = [v10[63] widthAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    LODWORD(v21) = 1144733696;
    [v20 setPriority:v21];
    _SFOnePixel();
    v23 = v22;
    LODWORD(v18) = [MEMORY[0x1E69C8880] isBrowsingAssistantEnabled];
    v58 = MEMORY[0x1E696ACD8];
    v67 = [v10[63] leadingAnchor];
    v65 = [v10 leadingAnchor];
    v63 = [v67 constraintEqualToAnchor:v65];
    v80[0] = v63;
    v61 = [v10[63] topAnchor];
    v60 = [v10 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v80[1] = v59;
    v24 = [v10[63] bottomAnchor];
    v57 = v24;
    v25 = [v10 bottomAnchor];
    v56 = v25;
    if (v18)
    {
      v26 = -0.0;
    }

    else
    {
      v26 = -v23;
    }

    v55 = [v24 constraintEqualToAnchor:v25 constant:v26];
    v80[2] = v55;
    v54 = [v10[62] topAnchor];
    v27 = [v10 topAnchor];
    v28 = [v54 constraintEqualToAnchor:v27];
    v80[3] = v28;
    v29 = [v10[62] bottomAnchor];
    v30 = [v10 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v26];
    v80[4] = v31;
    v32 = [v10[62] trailingAnchor];
    v33 = [v10 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v80[5] = v34;
    v80[6] = v20;
    v74 = v20;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:7];
    [v58 activateConstraints:v35];

    if (v70)
    {
      v36 = [v10[64] widthAnchor];
      v37 = [v10[62] widthAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];

      [v74 priority];
      *&v40 = v39 + -1.0;
      [v38 setPriority:v40];
      v66 = MEMORY[0x1E696ACD8];
      v71 = [v10[64] leadingAnchor];
      v41 = [v10[63] trailingAnchor];
      v42 = [v71 constraintEqualToAnchor:v41];
      v79[0] = v42;
      v69 = [v10[64] topAnchor];
      v68 = [v10 topAnchor];
      v64 = [v69 constraintEqualToAnchor:v68];
      v79[1] = v64;
      v62 = [v10[64] bottomAnchor];
      v43 = [v10 bottomAnchor];
      _SFOnePixel();
      v45 = [v62 constraintEqualToAnchor:v43 constant:-v44];
      v79[2] = v45;
      v46 = [v10[62] leadingAnchor];
      v47 = [v10[64] trailingAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];
      v79[3] = v48;
      v79[4] = v38;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
      [v66 activateConstraints:v49];

      v50 = v71;
    }

    else
    {
      v51 = MEMORY[0x1E696ACD8];
      v38 = [v10[62] leadingAnchor];
      v50 = [v10[63] trailingAnchor];
      v41 = [v38 constraintEqualToAnchor:v50];
      v78 = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
      [v51 activateConstraints:v42];
    }

    v52 = v10;
    v7 = v73;
  }

  return v7;
}

- (void)setImage:(id)a3 forButton:(int64_t)a4
{
  v6 = a3;
  v7 = [(_SFSettingsAlertStepper *)self _button:a4];
  [v7 setImage:v6];
}

- (void)setText:(id)a3 forButton:(int64_t)a4
{
  v6 = a3;
  v7 = [(_SFSettingsAlertStepper *)self _button:a4];
  [v7 setText:v6];
}

- (void)setEnabled:(BOOL)a3 forButton:(int64_t)a4
{
  v4 = a3;
  v5 = [(_SFSettingsAlertStepper *)self _button:a4];
  [v5 setEnabled:v4];
}

- (id)_button:(int64_t)a3
{
  if (a3 <= 2)
  {
    a2 = *(&self->super.super.super.super.super.isa + *off_1E84943F8[a3]);
  }

  return a2;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = _SFSettingsAlertStepper;
  v5 = [(_SFSettingsAlertStepper *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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