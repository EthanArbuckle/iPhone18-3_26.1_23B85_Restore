@interface ACUILinkButtonFooterView
- (ACUILinkButtonFooterView)initWithButton:(id)a3;
- (ACUILinkButtonFooterView)initWithSpecifier:(id)a3;
- (void)layoutSubviews;
@end

@implementation ACUILinkButtonFooterView

- (ACUILinkButtonFooterView)initWithSpecifier:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v18;
  v18 = 0;
  v16.receiver = v3;
  v16.super_class = ACUILinkButtonFooterView;
  v15 = [(ACUILinkButtonFooterView *)&v16 init];
  v18 = v15;
  objc_storeStrong(&v18, v15);
  if (v15)
  {
    v4 = [location[0] propertyForKey:@"ACUILinkButtonHolder"];
    linkButton = v18->_linkButton;
    v18->_linkButton = v4;
    MEMORY[0x277D82BD8](linkButton);
    v13 = [location[0] propertyForKey:*MEMORY[0x277D3FF40]];
    v6 = [v13 integerValue];
    v18->_desiredTextAlignment = v6;
    MEMORY[0x277D82BD8](v13);
    v14 = v18;
    [(ACUILinkButton *)v18->_linkButton bounds];
    [(ACUILinkButtonFooterView *)v14 setFrame:v7, v8, v9, v10];
    [(ACUILinkButtonFooterView *)v18 addSubview:v18->_linkButton];
  }

  v12 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v12;
}

- (ACUILinkButtonFooterView)initWithButton:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = ACUILinkButtonFooterView;
  v11 = [(ACUILinkButtonFooterView *)&v12 init];
  v14 = v11;
  objc_storeStrong(&v14, v11);
  if (v11)
  {
    objc_storeStrong(&v14->_linkButton, location[0]);
    v10 = v14;
    [(ACUILinkButton *)v14->_linkButton bounds];
    [(ACUILinkButtonFooterView *)v10 setFrame:v4, v5, v6, v7];
    [(ACUILinkButtonFooterView *)v14 addSubview:v14->_linkButton];
  }

  v9 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (void)layoutSubviews
{
  [(ACUILinkButton *)self->_linkButton frame];
  v11 = v2;
  v12 = v3;
  if (self->_desiredTextAlignment == 1)
  {
    [(ACUILinkButtonFooterView *)self bounds];
    v5 = (v4 - v11) / 2.0;
    v9 = floorf(v5);
    v7 = (v6 - v12) / 2.0;
    v10 = floorf(v7);
  }

  else
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v9 = 12.0;
    }

    else
    {
      [(ACUILinkButtonFooterView *)self bounds];
      v9 = v8 - v11 - 12.0;
    }

    v10 = 12.0;
  }

  [(ACUILinkButton *)self->_linkButton setFrame:v9, v10, v11, v12];
}

@end