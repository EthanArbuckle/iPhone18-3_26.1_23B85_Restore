@interface AccountLinkButtonView
- (AccountLinkButtonView)initWithSpecifier:(id)a3;
- (void)_goToAccountURL;
- (void)layoutSubviews;
@end

@implementation AccountLinkButtonView

- (AccountLinkButtonView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AccountLinkButtonView;
  v5 = [(AccountLinkButtonView *)&v14 init];
  if (v5)
  {
    v6 = [[AccountLinkButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    linkButton = v5->_linkButton;
    v5->_linkButton = v6;

    [(AccountLinkButton *)v5->_linkButton addTarget:v5 action:"_goToAccountURL" forControlEvents:64];
    [(AccountLinkButtonView *)v5 addSubview:v5->_linkButton];
    v8 = [v4 propertyForKey:@"accountLinkButtonTitle"];
    v9 = [v4 propertyForKey:@"accountLinkButtonURL"];
    v10 = [v4 propertyForKey:@"accountLinkButtonViewHeight"];
    [(AccountLinkButton *)v5->_linkButton setTitle:v8 forState:0];
    objc_storeStrong(&v5->_helpURL, v9);
    if (v10)
    {
      [v10 floatValue];
    }

    else
    {
      v11 = 1125515264;
    }

    LODWORD(v5->_height) = v11;
    v12 = v5;
  }

  return v5;
}

- (void)_goToAccountURL
{
  if (self->_helpURL)
  {
    v3 = +[UIApplication sharedApplication];
    [v3 openURL:self->_helpURL options:&__NSDictionary0__struct completionHandler:0];
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = AccountLinkButtonView;
  [(AccountLinkButtonView *)&v16 layoutSubviews];
  [(AccountLinkButton *)self->_linkButton sizeToFit];
  [(AccountLinkButtonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AccountLinkButton *)self->_linkButton frame];
  v18 = CGRectInset(v17, -3.0, -3.0);
  width = v18.size.width;
  height = v18.size.height;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v13 = CGRectGetMidX(v18) - width * 0.5;
  v14 = roundf(v13);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v15 = CGRectGetMidY(v19) - height * 0.5;
  [(AccountLinkButton *)self->_linkButton setFrame:v14, roundf(v15), width, height];
}

@end