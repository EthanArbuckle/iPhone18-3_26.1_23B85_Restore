@interface PasscodeBackOffView
- (PasscodeBackOffView)init;
- (PasscodeBackOffView)initWithFrame:(CGRect)frame;
- (PasscodeBackOffViewDelegate)delegate;
- (id)_textColor;
- (void)_setup;
- (void)_updateColors;
- (void)buttonAction:(id)action;
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

- (PasscodeBackOffView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PasscodeBackOffView;
  v3 = [(PasscodeBackOffView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(PasscodeBackOffView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:100.0];
  [v8 setActive:1];

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(PasscodeBackOffView *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v11 setActive:1];

  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(PasscodeBackOffView *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
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
  topAnchor3 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:50.0];
  [v20 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor4 = [(PasscodeBackOffView *)self leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  [v23 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor4 = [(PasscodeBackOffView *)self trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
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
  rightAnchor = [(UIButton *)self->_button rightAnchor];
  rightAnchor2 = [(PasscodeBackOffView *)self rightAnchor];
  v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-65.0];
  [v36 setActive:1];

  bottomAnchor2 = [(UIButton *)self->_button bottomAnchor];
  bottomAnchor3 = [(PasscodeBackOffView *)self bottomAnchor];
  v39 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-45.0];
  [v39 setActive:1];

  [(PasscodeBackOffView *)self _updateColors];
}

- (void)buttonAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeBackOffViewCanceled:self];
}

- (void)_updateColors
{
  _textColor = [(PasscodeBackOffView *)self _textColor];
  [(UILabel *)self->_titleLabel setTextColor:_textColor];

  _textColor2 = [(PasscodeBackOffView *)self _textColor];
  [(UILabel *)self->_subtitleLabel setTextColor:_textColor2];

  button = self->_button;
  _textColor3 = [(PasscodeBackOffView *)self _textColor];
  [(UIButton *)button setTitleColor:_textColor3 forState:0];
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