@interface GoogleNeedsAuthenticationFooterView
- (GoogleNeedsAuthenticationFooterView)initWithSpecifier:(id)a3;
- (double)_heightForMessageConstrainedToWidth:(double)a3;
- (void)layoutSubviews;
@end

@implementation GoogleNeedsAuthenticationFooterView

- (GoogleNeedsAuthenticationFooterView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = GoogleNeedsAuthenticationFooterView;
  v5 = [(GoogleNeedsAuthenticationFooterView *)&v20 init];
  if (v5)
  {
    v6 = [v4 propertyForKey:@"GoogleNameForAccountToAuthenticate"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ACCOUNT_NOT_AUTHENTICATED %@" value:&stru_B9FC8 table:@"AccountPreferences"];
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
    v16 = +[UIColor labelColor];
    [(UILabel *)v15 setTextColor:v16];

    v17 = v5->_verificationMessageLabel;
    v18 = [(GoogleNeedsAuthenticationFooterView *)v5 _font];
    [(UILabel *)v17 setFont:v18];

    [(GoogleNeedsAuthenticationFooterView *)v5 addSubview:v5->_verificationMessageLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = GoogleNeedsAuthenticationFooterView;
  [(GoogleNeedsAuthenticationFooterView *)&v7 layoutSubviews];
  [(GoogleNeedsAuthenticationFooterView *)self frame];
  v4 = v3 + -28.0;
  [(GoogleNeedsAuthenticationFooterView *)self frame];
  [(GoogleNeedsAuthenticationFooterView *)self _heightForMessageConstrainedToWidth:v5 + -28.0];
  [(UILabel *)self->_verificationMessageLabel setFrame:14.0, 0.0, v4, v6];
}

- (double)_heightForMessageConstrainedToWidth:(double)a3
{
  verificationMessage = self->_verificationMessage;
  v10 = NSFontAttributeName;
  v5 = [(GoogleNeedsAuthenticationFooterView *)self _font];
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(NSString *)verificationMessage boundingRectWithSize:1 options:v6 attributes:0 context:a3, 1.79769313e308];
  v8 = v7;

  return v8;
}

@end