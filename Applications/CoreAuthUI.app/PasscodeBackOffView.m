@interface PasscodeBackOffView
- (PasscodeBackOffView)init;
- (PasscodeBackOffView)initWithFrame:(CGRect)a3;
- (PasscodeBackOffViewDelegate)delegate;
- (id)_textColor;
- (void)_setup;
- (void)_updateColors;
- (void)buttonAction:(id)a3;
@end

@implementation PasscodeBackOffView

- (PasscodeBackOffView)init
{
  v5.receiver = self;
  v5.super_class = PasscodeBackOffView;
  v2 = [(PasscodeBackOffView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PasscodeBackOffView *)v2 _setup];
  }

  return v3;
}

- (PasscodeBackOffView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PasscodeBackOffView;
  v3 = [(PasscodeBackOffView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PasscodeBackOffView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  [(UILabel *)self->_titleLabel setFont:v5];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(PasscodeBackOffView *)self addSubview:self->_titleLabel];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(UILabel *)self->_titleLabel topAnchor];
  v7 = [(PasscodeBackOffView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:100.0];
  [v8 setActive:1];

  v9 = [(UILabel *)self->_titleLabel leadingAnchor];
  v10 = [(PasscodeBackOffView *)self leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:20.0];
  [v11 setActive:1];

  v12 = [(UILabel *)self->_titleLabel trailingAnchor];
  v13 = [(PasscodeBackOffView *)self trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-20.0];
  [v14 setActive:1];

  v15 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v15;

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_subtitleLabel setFont:v17];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(PasscodeBackOffView *)self addSubview:self->_subtitleLabel];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(UILabel *)self->_subtitleLabel topAnchor];
  v19 = [(UILabel *)self->_titleLabel bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:50.0];
  [v20 setActive:1];

  v21 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v22 = [(PasscodeBackOffView *)self leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:20.0];
  [v23 setActive:1];

  v24 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v25 = [(PasscodeBackOffView *)self trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-20.0];
  [v26 setActive:1];

  v27 = [UIButton buttonWithType:1];
  button = self->_button;
  self->_button = v27;

  [(UIButton *)self->_button addTarget:self action:"buttonAction:" forControlEvents:1];
  v29 = self->_button;
  v30 = [NSBundle bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"CANCEL" value:&stru_1000992A0 table:@"MobileUI"];
  [(UIButton *)v29 setTitle:v31 forState:0];

  v32 = self->_button;
  v33 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UIButton *)v32 _setFont:v33];

  [(PasscodeBackOffView *)self addSubview:self->_button];
  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [(UIButton *)self->_button rightAnchor];
  v35 = [(PasscodeBackOffView *)self rightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-65.0];
  [v36 setActive:1];

  v37 = [(UIButton *)self->_button bottomAnchor];
  v38 = [(PasscodeBackOffView *)self bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-45.0];
  [v39 setActive:1];

  [(PasscodeBackOffView *)self _updateColors];
}

- (void)buttonAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeBackOffViewCanceled:self];
}

- (void)_updateColors
{
  v3 = [(PasscodeBackOffView *)self _textColor];
  [(UILabel *)self->_titleLabel setTextColor:v3];

  v4 = [(PasscodeBackOffView *)self _textColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v4];

  button = self->_button;
  v6 = [(PasscodeBackOffView *)self _textColor];
  [(UIButton *)button setTitleColor:v6 forState:0];
}

- (id)_textColor
{
  if (self->_hasWhiteBackground)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v2 = ;

  return v2;
}

- (PasscodeBackOffViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end