@interface MFHideMyEmailHeaderView
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFHideMyEmailHeaderView)initWithFrame:(CGRect)frame address:(id)address;
- (void)copy:(id)copy;
- (void)didTriggerEditGesture:(id)gesture;
- (void)infoButtonPressed:(id)pressed;
- (void)setBounds:(CGRect)bounds;
@end

@implementation MFHideMyEmailHeaderView

- (MFHideMyEmailHeaderView)initWithFrame:(CGRect)frame address:(id)address
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  addressCopy = address;
  v38.receiver = self;
  v38.super_class = MFHideMyEmailHeaderView;
  height = [(MFHideMyEmailHeaderView *)&v38 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(MFHideMyEmailHeaderView *)height setAddress:addressCopy];
    [(MFHideMyEmailHeaderView *)v11 setAxis:0];
    [(MFHideMyEmailHeaderView *)v11 setAlignment:3];
    [(MFHideMyEmailHeaderView *)v11 setDistribution:0];
    [(MFHideMyEmailHeaderView *)v11 setSpacing:8.0];
    [(MFHideMyEmailHeaderView *)v11 setLayoutMarginsRelativeArrangement:1];
    [(MFHideMyEmailHeaderView *)v11 setDirectionalLayoutMargins:0.0, 0.0, 0.0, 16.0];
    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    [subtitleCellConfiguration setTextToSecondaryTextVerticalPadding:4.0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = [mainBundle localizedStringForKey:@"HIDE_MY_EMAIL_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    [subtitleCellConfiguration setText:v14];

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    textProperties = [subtitleCellConfiguration textProperties];
    [textProperties setFont:v15];

    textProperties2 = [subtitleCellConfiguration textProperties];
    [textProperties2 setNumberOfLines:0];

    textProperties3 = [subtitleCellConfiguration textProperties];
    [textProperties3 setAdjustsFontForContentSizeCategory:1];

    [subtitleCellConfiguration setSecondaryText:addressCopy];
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties setFont:v19];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setColor:systemBlueColor];

    secondaryTextProperties3 = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties3 setNumberOfLines:0];

    secondaryTextProperties4 = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties4 setAdjustsFontForContentSizeCategory:1];

    [subtitleCellConfiguration directionalLayoutMargins];
    [subtitleCellConfiguration setDirectionalLayoutMargins:?];
    v25 = [objc_alloc(MEMORY[0x1E69DCC30]) initWithConfiguration:subtitleCellConfiguration];
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
    widthAnchor = [(UIButton *)v11->_infoButton widthAnchor];
    heightAnchor = [(UIButton *)v11->_infoButton heightAnchor];
    v33 = [widthAnchor constraintEqualToAnchor:heightAnchor constant:1.0];
    [v33 setActive:1];

    v34 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v11];
    [(MFHideMyEmailHeaderView *)v11 setEditInteraction:v34];

    editInteraction = [(MFHideMyEmailHeaderView *)v11 editInteraction];
    [(MFHideMyEmailHeaderView *)v11 addInteraction:editInteraction];

    v36 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v11 action:sel_didTriggerEditGesture_];
    [v36 setAllowedTouchTypes:&unk_1F3D16790];
    [(MFHideMyEmailHeaderView *)v11 addGestureRecognizer:v36];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIListContentView *)self->_contentView frame:fits.width];
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MFHideMyEmailHeaderView *)self bounds];
  if (width != v8)
  {
    [(MFHideMyEmailHeaderView *)self invalidateIntrinsicContentSize];
  }

  v9.receiver = self;
  v9.super_class = MFHideMyEmailHeaderView;
  [(MFHideMyEmailHeaderView *)&v9 setBounds:x, y, width, height];
}

- (void)infoButtonPressed:(id)pressed
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = +[MFPreferencesURL hideMyEmailURL];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (void)copy:(id)copy
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  address = [(MFHideMyEmailHeaderView *)self address];
  [generalPasteboard setString:address];
}

- (void)didTriggerEditGesture:(id)gesture
{
  [gesture locationInView:self];
  v5 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:0 sourcePoint:?];
  editInteraction = [(MFHideMyEmailHeaderView *)self editInteraction];
  [editInteraction presentEditMenuWithConfiguration:v5];
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  view = [interaction view];
  [view frame];
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