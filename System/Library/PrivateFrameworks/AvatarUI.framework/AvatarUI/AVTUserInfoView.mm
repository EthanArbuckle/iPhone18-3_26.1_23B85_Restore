@interface AVTUserInfoView
- (NSDirectionalEdgeInsets)textInsets;
- (NSString)text;
- (void)_configure;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContainerBackgroundColor:(id)a3;
- (void)setText:(id)a3;
- (void)updateConstraints;
@end

@implementation AVTUserInfoView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = AVTUserInfoView;
  [(AVTUserInfoView *)&v7 didMoveToWindow];
  v3 = [(AVTUserInfoView *)self window];

  if (!v3)
  {
    v6 = [(AVTUserInfoView *)self window];

    if (v6)
    {
      return;
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
    goto LABEL_8;
  }

  v4 = [(AVTUserInfoView *)self userInfoEffectView];

  if (!v4)
  {
    [(AVTUserInfoView *)self _configure];
  }

  if (![(AVTUserInfoView *)self isRegisteredForCategorySizeChange])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
LABEL_8:

    [(AVTUserInfoView *)self setIsRegisteredForCategorySizeChange:v3 != 0];
  }
}

- (void)setContainerBackgroundColor:(id)a3
{
  if (self->_containerBackgroundColor != a3)
  {
    self->_containerBackgroundColor = a3;
    userInfoEffectView = self->_userInfoEffectView;
    v5 = a3;
    v6 = [(UIVisualEffectView *)userInfoEffectView contentView];
    [v6 setBackgroundColor:v5];
  }
}

- (void)_configure
{
  *&self->_textInsets.top = xmmword_1BB4165E0;
  *&self->_textInsets.bottom = xmmword_1BB4165E0;
  v18 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v18];
  v4 = [(UIVisualEffectView *)v3 contentView];
  v5 = [(AVTUserInfoView *)self containerBackgroundColor];
  if (v5)
  {
    [v4 setBackgroundColor:v5];
  }

  else
  {
    v6 = +[AVTUIColorRepository appBackgroundColor];
    [v4 setBackgroundColor:v6];
  }

  v7 = [(UIVisualEffectView *)v3 contentView];
  [v7 setAlpha:0.649999976];

  [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(UIVisualEffectView *)v3 layer];
  [v8 setMasksToBounds:1];

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
  v17 = [(UIVisualEffectView *)v10 contentView];

  [v17 addSubview:v16];
  [(AVTUserInfoView *)self setUserInteractionEnabled:0];
  [(AVTUserInfoView *)self setNeedsUpdateConstraints];
}

- (NSString)text
{
  v2 = [(AVTUserInfoView *)self userInfoLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(AVTUserInfoView *)self userInfoLabel];
  [v5 setText:v4];

  [(AVTUserInfoView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v38[10] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AVTUserInfoView;
  [(AVTUserInfoView *)&v37 updateConstraints];
  v3 = [(AVTUserInfoView *)self window];

  if (v3)
  {
    v4 = [(AVTUserInfoView *)self activeConstraints];
    if (v4)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:v4];
    }

    [(AVTUserInfoView *)self centerYAnchor];
    v36 = v24 = v4;
    v35 = [(UIVisualEffectView *)self->_userInfoEffectView centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v38[0] = v34;
    v33 = [(AVTUserInfoView *)self centerXAnchor];
    v32 = [(UIVisualEffectView *)self->_userInfoEffectView centerXAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v38[1] = v31;
    v30 = [(AVTUserInfoView *)self leadingAnchor];
    v29 = [(UIVisualEffectView *)self->_userInfoEffectView leadingAnchor];
    v28 = [v30 constraintLessThanOrEqualToAnchor:v29];
    v38[2] = v28;
    v27 = [(AVTUserInfoView *)self trailingAnchor];
    v26 = [(UIVisualEffectView *)self->_userInfoEffectView trailingAnchor];
    v25 = [v27 constraintGreaterThanOrEqualToAnchor:v26];
    v38[3] = v25;
    v23 = [(AVTUserInfoView *)self topAnchor];
    v22 = [(UIVisualEffectView *)self->_userInfoEffectView topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v38[4] = v21;
    v20 = [(AVTUserInfoView *)self bottomAnchor];
    v19 = [(UIVisualEffectView *)self->_userInfoEffectView bottomAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v38[5] = v18;
    v17 = [(UIVisualEffectView *)self->_userInfoEffectView topAnchor];
    v16 = [(UILabel *)self->_userInfoLabel topAnchor];
    v15 = [v17 constraintEqualToAnchor:v16 constant:-self->_textInsets.top];
    v38[6] = v15;
    v14 = [(UIVisualEffectView *)self->_userInfoEffectView bottomAnchor];
    v5 = [(UILabel *)self->_userInfoLabel bottomAnchor];
    v6 = [v14 constraintEqualToAnchor:v5 constant:self->_textInsets.bottom];
    v38[7] = v6;
    v7 = [(UIVisualEffectView *)self->_userInfoEffectView leadingAnchor];
    v8 = [(UILabel *)self->_userInfoLabel leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-self->_textInsets.leading];
    v38[8] = v9;
    v10 = [(UIVisualEffectView *)self->_userInfoEffectView trailingAnchor];
    v11 = [(UILabel *)self->_userInfoLabel trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:self->_textInsets.trailing];
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
  v3 = [(AVTUserInfoView *)self userInfoEffectView];
  [v3 bounds];
  v4 = CGRectGetHeight(v8) * 0.5;
  v5 = [(AVTUserInfoView *)self userInfoEffectView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v5 = +[AVTUIFontRepository userInfoLabelFont];
  v4 = [(AVTUserInfoView *)self userInfoLabel];
  [v4 setFont:v5];
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