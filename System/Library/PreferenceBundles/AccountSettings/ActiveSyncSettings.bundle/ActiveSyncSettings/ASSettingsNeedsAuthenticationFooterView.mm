@interface ASSettingsNeedsAuthenticationFooterView
- (ASSettingsNeedsAuthenticationFooterView)initWithSpecifier:(id)specifier;
- (double)_heightForMessageConstrainedToWidth:(double)width;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation ASSettingsNeedsAuthenticationFooterView

- (ASSettingsNeedsAuthenticationFooterView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = ASSettingsNeedsAuthenticationFooterView;
  v5 = [(ASSettingsNeedsAuthenticationFooterView *)&v20 init];
  if (v5)
  {
    v6 = [specifierCopy propertyForKey:@"EASNameForAccountToAuthenticate"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ACCOUNT_NOT_AUTHENTICATED" value:&stru_30C98 table:@"ASAccountSetup"];

    v9 = [NSString stringWithFormat:v8, v6];
    verificationMessage = v5->_verificationMessage;
    v5->_verificationMessage = v9;

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    verificationMessageLabel = v5->_verificationMessageLabel;
    v5->_verificationMessageLabel = v11;

    [(UILabel *)v5->_verificationMessageLabel setText:v5->_verificationMessage];
    v13 = v5->_verificationMessageLabel;
    v14 = +[UIColor clearColor];
    [(UILabel *)v13 setBackgroundColor:v14];

    [(UILabel *)v5->_verificationMessageLabel setNumberOfLines:0];
    v15 = v5->_verificationMessageLabel;
    v16 = +[UIColor grayColor];
    [(UILabel *)v15 setTextColor:v16];

    v17 = v5->_verificationMessageLabel;
    _font = [(ASSettingsNeedsAuthenticationFooterView *)v5 _font];
    [(UILabel *)v17 setFont:_font];

    [(ASSettingsNeedsAuthenticationFooterView *)v5 addSubview:v5->_verificationMessageLabel];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ASSettingsNeedsAuthenticationFooterView;
  [(ASSettingsNeedsAuthenticationFooterView *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ASSettingsNeedsAuthenticationFooterView;
  [(ASSettingsNeedsAuthenticationFooterView *)&v7 layoutSubviews];
  [(ASSettingsNeedsAuthenticationFooterView *)self frame];
  v4 = v3 + -28.0;
  [(ASSettingsNeedsAuthenticationFooterView *)self frame];
  [(ASSettingsNeedsAuthenticationFooterView *)self _heightForMessageConstrainedToWidth:v5 + -28.0];
  [(UILabel *)self->_verificationMessageLabel setFrame:14.0, 0.0, v4, v6];
}

- (double)_heightForMessageConstrainedToWidth:(double)width
{
  verificationMessage = self->_verificationMessage;
  v10 = NSFontAttributeName;
  _font = [(ASSettingsNeedsAuthenticationFooterView *)self _font];
  v11 = _font;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(NSString *)verificationMessage boundingRectWithSize:1 options:v6 attributes:0 context:width, 1.79769313e308];
  v8 = v7;

  return v8;
}

@end