@interface MFComposeTextColorButton
+ (MFComposeTextColorButton)buttonWithColor:(id)a3;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
@end

@implementation MFComposeTextColorButton

+ (MFComposeTextColorButton)buttonWithColor:(id)a3
{
  v52[8] = *MEMORY[0x1E69E9840];
  v50 = a3;
  v3 = [MFComposeTextColorButton buttonWithType:0];
  [v3 setColor:v50];
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:@"format-color-wheel" inBundle:v5 compatibleWithTraitCollection:0];
  [v3 setBackgroundImage:v6 forState:0];

  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69ADBA8]];
  v7 = objc_alloc(MEMORY[0x1E69DD250]);
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v51 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
  v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v51 setBackgroundColor:v12];

  v13 = [v51 layer];
  [v13 setMasksToBounds:1];

  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v51 setUserInteractionEnabled:0];
  [v3 addSubview:v51];
  [v3 setColorRingView:v51];
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
  [v14 setBackgroundColor:v50];
  v15 = [MEMORY[0x1E69DC888] separatorColor];
  v16 = [v15 CGColor];
  v17 = [v14 layer];
  [v17 setBorderColor:v16];

  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = v19;
  v21 = [v14 layer];
  [v21 setBorderWidth:1.0 / v20];

  v22 = [v14 layer];
  [v22 setMasksToBounds:1];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setUserInteractionEnabled:0];
  [v3 addSubview:v14];
  [v3 setColorView:v14];
  v23 = MEMORY[0x1E696ACD8];
  v49 = [v51 widthAnchor];
  v43 = [v3 widthAnchor];
  v42 = [v49 constraintEqualToAnchor:0.81 multiplier:?];
  v52[0] = v42;
  v48 = [v51 heightAnchor];
  v41 = [v3 heightAnchor];
  v40 = [v48 constraintEqualToAnchor:0.81 multiplier:?];
  v52[1] = v40;
  v47 = [v51 centerXAnchor];
  v39 = [v3 centerXAnchor];
  v38 = [v47 constraintEqualToAnchor:?];
  v52[2] = v38;
  v46 = [v51 centerYAnchor];
  v37 = [v3 centerYAnchor];
  v36 = [v46 constraintEqualToAnchor:?];
  v52[3] = v36;
  v45 = [v14 widthAnchor];
  v35 = [v3 widthAnchor];
  v34 = [v45 constraintEqualToAnchor:0.65 multiplier:?];
  v52[4] = v34;
  v44 = [v14 heightAnchor];
  v33 = [v3 heightAnchor];
  v32 = [v44 constraintEqualToAnchor:0.65 multiplier:?];
  v52[5] = v32;
  v24 = [v14 centerXAnchor];
  v25 = [v3 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v52[6] = v26;
  v27 = [v14 centerYAnchor];
  v28 = [v3 centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v52[7] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:8];
  [v23 activateConstraints:v30];

  return v3;
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_color, a3);
    v6 = [(MFComposeTextColorButton *)self colorView];
    [v6 setBackgroundColor:v7];

    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = MFComposeTextColorButton;
  [(MFComposeTextColorButton *)&v16 layoutSubviews];
  [(MFComposeTextColorButton *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(MFComposeTextColorButton *)self layer];
  [v5 setCornerRadius:v4];

  v6 = [(MFComposeTextColorButton *)self colorView];
  [v6 frame];
  v8 = v7;
  v9 = [(MFComposeTextColorButton *)self colorView];
  v10 = [v9 layer];
  [v10 setCornerRadius:v8 * 0.5];

  v11 = [(MFComposeTextColorButton *)self colorRingView];
  [v11 frame];
  v13 = v12;
  v14 = [(MFComposeTextColorButton *)self colorRingView];
  v15 = [v14 layer];
  [v15 setCornerRadius:v13 * 0.5];
}

@end