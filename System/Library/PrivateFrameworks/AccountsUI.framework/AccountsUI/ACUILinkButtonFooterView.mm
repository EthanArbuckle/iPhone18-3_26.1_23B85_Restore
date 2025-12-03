@interface ACUILinkButtonFooterView
- (ACUILinkButtonFooterView)initWithButton:(id)button;
- (ACUILinkButtonFooterView)initWithSpecifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation ACUILinkButtonFooterView

- (ACUILinkButtonFooterView)initWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v3 = selfCopy;
  selfCopy = 0;
  v16.receiver = v3;
  v16.super_class = ACUILinkButtonFooterView;
  v15 = [(ACUILinkButtonFooterView *)&v16 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  if (v15)
  {
    v4 = [location[0] propertyForKey:@"ACUILinkButtonHolder"];
    linkButton = selfCopy->_linkButton;
    selfCopy->_linkButton = v4;
    MEMORY[0x277D82BD8](linkButton);
    v13 = [location[0] propertyForKey:*MEMORY[0x277D3FF40]];
    integerValue = [v13 integerValue];
    selfCopy->_desiredTextAlignment = integerValue;
    MEMORY[0x277D82BD8](v13);
    v14 = selfCopy;
    [(ACUILinkButton *)selfCopy->_linkButton bounds];
    [(ACUILinkButtonFooterView *)v14 setFrame:v7, v8, v9, v10];
    [(ACUILinkButtonFooterView *)selfCopy addSubview:selfCopy->_linkButton];
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (ACUILinkButtonFooterView)initWithButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = ACUILinkButtonFooterView;
  v11 = [(ACUILinkButtonFooterView *)&v12 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    objc_storeStrong(&selfCopy->_linkButton, location[0]);
    v10 = selfCopy;
    [(ACUILinkButton *)selfCopy->_linkButton bounds];
    [(ACUILinkButtonFooterView *)v10 setFrame:v4, v5, v6, v7];
    [(ACUILinkButtonFooterView *)selfCopy addSubview:selfCopy->_linkButton];
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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