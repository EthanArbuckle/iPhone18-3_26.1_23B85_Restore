@interface MFHideMyEmailHeaderView
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MFHideMyEmailHeaderView)initWithFrame:(CGRect)a3 address:(id)a4;
- (void)copy:(id)a3;
- (void)didTriggerEditGesture:(id)a3;
- (void)infoButtonPressed:(id)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation MFHideMyEmailHeaderView

- (MFHideMyEmailHeaderView)initWithFrame:(CGRect)a3 address:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v38.receiver = self;
  v38.super_class = MFHideMyEmailHeaderView;
  v10 = [(MFHideMyEmailHeaderView *)&v38 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(MFHideMyEmailHeaderView *)v10 setAddress:v9];
    [(MFHideMyEmailHeaderView *)v11 setAxis:0];
    [(MFHideMyEmailHeaderView *)v11 setAlignment:3];
    [(MFHideMyEmailHeaderView *)v11 setDistribution:0];
    [(MFHideMyEmailHeaderView *)v11 setSpacing:8.0];
    [(MFHideMyEmailHeaderView *)v11 setLayoutMarginsRelativeArrangement:1];
    [(MFHideMyEmailHeaderView *)v11 setDirectionalLayoutMargins:0.0, 0.0, 0.0, 16.0];
    v12 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    [v12 setTextToSecondaryTextVerticalPadding:4.0];
    v13 = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = [v13 localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    [v12 setText:v14];

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v16 = [v12 textProperties];
    [v16 setFont:v15];

    v17 = [v12 textProperties];
    [v17 setNumberOfLines:0];

    v18 = [v12 textProperties];
    [v18 setAdjustsFontForContentSizeCategory:1];

    [v12 setSecondaryText:v9];
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v20 = [v12 secondaryTextProperties];
    [v20 setFont:v19];

    v21 = [MEMORY[0x1E69DC888] systemBlueColor];
    v22 = [v12 secondaryTextProperties];
    [v22 setColor:v21];

    v23 = [v12 secondaryTextProperties];
    [v23 setNumberOfLines:0];

    v24 = [v12 secondaryTextProperties];
    [v24 setAdjustsFontForContentSizeCategory:1];

    [v12 directionalLayoutMargins];
    [v12 setDirectionalLayoutMargins:?];
    v25 = [objc_alloc(MEMORY[0x1E69DCC30]) initWithConfiguration:v12];
    contentView = v11->_contentView;
    v11->_contentView = v25;

    [(UIListContentView *)v11->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFHideMyEmailHeaderView *)v11 addArrangedSubview:v11->_contentView];
    v27 = MEMORY[0x1E69DC738];
    v28 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"info.circle" forView:22];
    v29 = [v27 systemButtonWithImage:v28 target:v11 action:sel_infoButtonPressed_];
    infoButton = v11->_infoButton;
    v11->_infoButton = v29;

    [(UIButton *)v11->_infoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFHideMyEmailHeaderView *)v11 addArrangedSubview:v11->_infoButton];
    v31 = [(UIButton *)v11->_infoButton widthAnchor];
    v32 = [(UIButton *)v11->_infoButton heightAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:1.0];
    [v33 setActive:1];

    v34 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v11];
    [(MFHideMyEmailHeaderView *)v11 setEditInteraction:v34];

    v35 = [(MFHideMyEmailHeaderView *)v11 editInteraction];
    [(MFHideMyEmailHeaderView *)v11 addInteraction:v35];

    v36 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v11 action:sel_didTriggerEditGesture_];
    [v36 setAllowedTouchTypes:&unk_1F3D16790];
    [(MFHideMyEmailHeaderView *)v11 addGestureRecognizer:v36];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIListContentView *)self->_contentView frame:a3.width];
  v5 = v4 + 14.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(MFHideMyEmailHeaderView *)self bounds];

  [(MFHideMyEmailHeaderView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MFHideMyEmailHeaderView *)self bounds];
  if (width != v8)
  {
    [(MFHideMyEmailHeaderView *)self invalidateIntrinsicContentSize];
  }

  v9.receiver = self;
  v9.super_class = MFHideMyEmailHeaderView;
  [(MFHideMyEmailHeaderView *)&v9 setBounds:x, y, width, height];
}

- (void)infoButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = +[MFPreferencesURL hideMyEmailURL];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)copy:(id)a3
{
  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v4 = [(MFHideMyEmailHeaderView *)self address];
  [v5 setString:v4];
}

- (void)didTriggerEditGesture:(id)a3
{
  [a3 locationInView:self];
  v5 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:0 sourcePoint:?];
  v4 = [(MFHideMyEmailHeaderView *)self editInteraction];
  [v4 presentEditMenuWithConfiguration:v5];
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v4 = [a3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end