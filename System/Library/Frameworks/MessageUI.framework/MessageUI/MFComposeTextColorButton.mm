@interface MFComposeTextColorButton
+ (MFComposeTextColorButton)buttonWithColor:(id)color;
- (void)layoutSubviews;
- (void)setColor:(id)color;
@end

@implementation MFComposeTextColorButton

+ (MFComposeTextColorButton)buttonWithColor:(id)color
{
  v52[8] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v3 = [MFComposeTextColorButton buttonWithType:0];
  [v3 setColor:colorCopy];
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v51 setBackgroundColor:systemBackgroundColor];

  layer = [v51 layer];
  [layer setMasksToBounds:1];

  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v51 setUserInteractionEnabled:0];
  [v3 addSubview:v51];
  [v3 setColorRingView:v51];
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
  [v14 setBackgroundColor:colorCopy];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  cGColor = [separatorColor CGColor];
  layer2 = [v14 layer];
  [layer2 setBorderColor:cGColor];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v20 = v19;
  layer3 = [v14 layer];
  [layer3 setBorderWidth:1.0 / v20];

  layer4 = [v14 layer];
  [layer4 setMasksToBounds:1];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setUserInteractionEnabled:0];
  [v3 addSubview:v14];
  [v3 setColorView:v14];
  v23 = MEMORY[0x1E696ACD8];
  widthAnchor = [v51 widthAnchor];
  widthAnchor2 = [v3 widthAnchor];
  v42 = [widthAnchor constraintEqualToAnchor:0.81 multiplier:?];
  v52[0] = v42;
  heightAnchor = [v51 heightAnchor];
  heightAnchor2 = [v3 heightAnchor];
  v40 = [heightAnchor constraintEqualToAnchor:0.81 multiplier:?];
  v52[1] = v40;
  centerXAnchor = [v51 centerXAnchor];
  centerXAnchor2 = [v3 centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:?];
  v52[2] = v38;
  centerYAnchor = [v51 centerYAnchor];
  centerYAnchor2 = [v3 centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:?];
  v52[3] = v36;
  widthAnchor3 = [v14 widthAnchor];
  widthAnchor4 = [v3 widthAnchor];
  v34 = [widthAnchor3 constraintEqualToAnchor:0.65 multiplier:?];
  v52[4] = v34;
  heightAnchor3 = [v14 heightAnchor];
  heightAnchor4 = [v3 heightAnchor];
  v32 = [heightAnchor3 constraintEqualToAnchor:0.65 multiplier:?];
  v52[5] = v32;
  centerXAnchor3 = [v14 centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v52[6] = v26;
  centerYAnchor3 = [v14 centerYAnchor];
  centerYAnchor4 = [v3 centerYAnchor];
  v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v52[7] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:8];
  [v23 activateConstraints:v30];

  return v3;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_color, color);
    colorView = [(MFComposeTextColorButton *)self colorView];
    [colorView setBackgroundColor:v7];

    colorCopy = v7;
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = MFComposeTextColorButton;
  [(MFComposeTextColorButton *)&v16 layoutSubviews];
  [(MFComposeTextColorButton *)self bounds];
  v4 = v3 * 0.5;
  layer = [(MFComposeTextColorButton *)self layer];
  [layer setCornerRadius:v4];

  colorView = [(MFComposeTextColorButton *)self colorView];
  [colorView frame];
  v8 = v7;
  colorView2 = [(MFComposeTextColorButton *)self colorView];
  layer2 = [colorView2 layer];
  [layer2 setCornerRadius:v8 * 0.5];

  colorRingView = [(MFComposeTextColorButton *)self colorRingView];
  [colorRingView frame];
  v13 = v12;
  colorRingView2 = [(MFComposeTextColorButton *)self colorRingView];
  layer3 = [colorRingView2 layer];
  [layer3 setCornerRadius:v13 * 0.5];
}

@end