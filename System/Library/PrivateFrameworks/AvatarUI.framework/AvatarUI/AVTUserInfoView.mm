@interface AVTUserInfoView
- (NSDirectionalEdgeInsets)textInsets;
- (NSString)text;
- (void)_configure;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContainerBackgroundColor:(id)color;
- (void)setText:(id)text;
- (void)updateConstraints;
@end

@implementation AVTUserInfoView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = AVTUserInfoView;
  [(AVTUserInfoView *)&v7 didMoveToWindow];
  window = [(AVTUserInfoView *)self window];

  if (!window)
  {
    window2 = [(AVTUserInfoView *)self window];

    if (window2)
    {
      return;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
    goto LABEL_8;
  }

  userInfoEffectView = [(AVTUserInfoView *)self userInfoEffectView];

  if (!userInfoEffectView)
  {
    [(AVTUserInfoView *)self _configure];
  }

  if (![(AVTUserInfoView *)self isRegisteredForCategorySizeChange])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
LABEL_8:

    [(AVTUserInfoView *)self setIsRegisteredForCategorySizeChange:window != 0];
  }
}

- (void)setContainerBackgroundColor:(id)color
{
  if (self->_containerBackgroundColor != color)
  {
    self->_containerBackgroundColor = color;
    userInfoEffectView = self->_userInfoEffectView;
    colorCopy = color;
    contentView = [(UIVisualEffectView *)userInfoEffectView contentView];
    [contentView setBackgroundColor:colorCopy];
  }
}

- (void)_configure
{
  *&self->_textInsets.top = xmmword_1BB4165E0;
  *&self->_textInsets.bottom = xmmword_1BB4165E0;
  v18 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v18];
  contentView = [(UIVisualEffectView *)v3 contentView];
  containerBackgroundColor = [(AVTUserInfoView *)self containerBackgroundColor];
  if (containerBackgroundColor)
  {
    [contentView setBackgroundColor:containerBackgroundColor];
  }

  else
  {
    v6 = +[AVTUIColorRepository appBackgroundColor];
    [contentView setBackgroundColor:v6];
  }

  contentView2 = [(UIVisualEffectView *)v3 contentView];
  [contentView2 setAlpha:0.649999976];

  [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(UIVisualEffectView *)v3 layer];
  [layer setMasksToBounds:1];

  userInfoEffectView = self->_userInfoEffectView;
  self->_userInfoEffectView = v3;
  v10 = v3;

  v11 = objc_alloc(MEMORY[0x1E69DCC10]);
  v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = +[AVTUIColorRepository userInfoLabelColor];
  [(UILabel *)v12 setTextColor:v13];

  [(UILabel *)v12 setTextAlignment:1];
  [(UILabel *)v12 setNumberOfLines:2];
  [(UILabel *)v12 setAdjustsFontSizeToFitWidth:0];
  [(UILabel *)v12 setBaselineAdjustment:1];
  v14 = +[AVTUIFontRepository userInfoLabelFont];
  [(UILabel *)v12 setFont:v14];

  userInfoLabel = self->_userInfoLabel;
  self->_userInfoLabel = v12;
  v16 = v12;

  [(AVTUserInfoView *)self addSubview:v10];
  contentView3 = [(UIVisualEffectView *)v10 contentView];

  [contentView3 addSubview:v16];
  [(AVTUserInfoView *)self setUserInteractionEnabled:0];
  [(AVTUserInfoView *)self setNeedsUpdateConstraints];
}

- (NSString)text
{
  userInfoLabel = [(AVTUserInfoView *)self userInfoLabel];
  text = [userInfoLabel text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  userInfoLabel = [(AVTUserInfoView *)self userInfoLabel];
  [userInfoLabel setText:textCopy];

  [(AVTUserInfoView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v38[10] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AVTUserInfoView;
  [(AVTUserInfoView *)&v37 updateConstraints];
  window = [(AVTUserInfoView *)self window];

  if (window)
  {
    activeConstraints = [(AVTUserInfoView *)self activeConstraints];
    if (activeConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:activeConstraints];
    }

    [(AVTUserInfoView *)self centerYAnchor];
    v36 = v24 = activeConstraints;
    centerYAnchor = [(UIVisualEffectView *)self->_userInfoEffectView centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:centerYAnchor];
    v38[0] = v34;
    centerXAnchor = [(AVTUserInfoView *)self centerXAnchor];
    centerXAnchor2 = [(UIVisualEffectView *)self->_userInfoEffectView centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[1] = v31;
    leadingAnchor = [(AVTUserInfoView *)self leadingAnchor];
    leadingAnchor2 = [(UIVisualEffectView *)self->_userInfoEffectView leadingAnchor];
    v28 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2];
    v38[2] = v28;
    trailingAnchor = [(AVTUserInfoView *)self trailingAnchor];
    trailingAnchor2 = [(UIVisualEffectView *)self->_userInfoEffectView trailingAnchor];
    v25 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v38[3] = v25;
    topAnchor = [(AVTUserInfoView *)self topAnchor];
    topAnchor2 = [(UIVisualEffectView *)self->_userInfoEffectView topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[4] = v21;
    bottomAnchor = [(AVTUserInfoView *)self bottomAnchor];
    bottomAnchor2 = [(UIVisualEffectView *)self->_userInfoEffectView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[5] = v18;
    topAnchor3 = [(UIVisualEffectView *)self->_userInfoEffectView topAnchor];
    topAnchor4 = [(UILabel *)self->_userInfoLabel topAnchor];
    v15 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-self->_textInsets.top];
    v38[6] = v15;
    bottomAnchor3 = [(UIVisualEffectView *)self->_userInfoEffectView bottomAnchor];
    bottomAnchor4 = [(UILabel *)self->_userInfoLabel bottomAnchor];
    v6 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:self->_textInsets.bottom];
    v38[7] = v6;
    leadingAnchor3 = [(UIVisualEffectView *)self->_userInfoEffectView leadingAnchor];
    leadingAnchor4 = [(UILabel *)self->_userInfoLabel leadingAnchor];
    v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-self->_textInsets.leading];
    v38[8] = v9;
    trailingAnchor3 = [(UIVisualEffectView *)self->_userInfoEffectView trailingAnchor];
    trailingAnchor4 = [(UILabel *)self->_userInfoLabel trailingAnchor];
    v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:self->_textInsets.trailing];
    v38[9] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:10];

    [MEMORY[0x1E696ACD8] activateConstraints:v13];
    [(AVTUserInfoView *)self setActiveConstraints:v13];
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AVTUserInfoView;
  [(AVTUserInfoView *)&v7 layoutSubviews];
  userInfoEffectView = [(AVTUserInfoView *)self userInfoEffectView];
  [userInfoEffectView bounds];
  v4 = CGRectGetHeight(v8) * 0.5;
  userInfoEffectView2 = [(AVTUserInfoView *)self userInfoEffectView];
  layer = [userInfoEffectView2 layer];
  [layer setCornerRadius:v4];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  v5 = +[AVTUIFontRepository userInfoLabelFont];
  userInfoLabel = [(AVTUserInfoView *)self userInfoLabel];
  [userInfoLabel setFont:v5];
}

- (NSDirectionalEdgeInsets)textInsets
{
  top = self->_textInsets.top;
  leading = self->_textInsets.leading;
  bottom = self->_textInsets.bottom;
  trailing = self->_textInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end