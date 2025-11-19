@interface AKAuthorizationLoginChoiceTableViewCell
- (AKAuthorizationLoginChoiceTableViewCell)initWithLoginChoice:(id)a3 reuseIdentifier:(id)a4;
- (UIImage)iconImage;
- (void)_setupContent;
- (void)_setupSharedIconImageView;
- (void)_setupSubViewLayout;
- (void)_setupSubViews;
- (void)layoutSubviews;
- (void)setIconImage:(id)a3;
- (void)setLoginChoice:(id)a3;
@end

@implementation AKAuthorizationLoginChoiceTableViewCell

- (AKAuthorizationLoginChoiceTableViewCell)initWithLoginChoice:(id)a3 reuseIdentifier:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationLoginChoiceTableViewCell;
  v11 = [(AKAuthorizationScopeDetailTableViewCell *)&v8 initWithStyle:2 reuseIdentifier:v9];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(AKAuthorizationLoginChoiceTableViewCell *)v11 setLoginChoice:location[0]];
    [(AKAuthorizationLoginChoiceTableViewCell *)v11 _setupSubViews];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)_setupSubViews
{
  v3 = [MEMORY[0x277D75348] clearColor];
  v2 = [(AKAuthorizationScopeDetailTableViewCell *)self scopeImageView];
  [(UIImageView *)v2 setBackgroundColor:v3];
  MEMORY[0x277D82BD8](v2);
  [(AKAuthorizationLoginChoiceTableViewCell *)self _setupSharedIconImageView];
  [(AKAuthorizationLoginChoiceTableViewCell *)self _setupSubViewLayout];
}

- (void)_setupSharedIconImageView
{
  v15 = self;
  v14[1] = a2;
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  sharedIconImageView = v15->_sharedIconImageView;
  v15->_sharedIconImageView = v2;
  v6 = +[AKAuthorizationAppearance sharedAccountIconBackgroundColor];
  [(UIImageView *)v15->_sharedIconImageView setBackgroundColor:?];
  v7 = [MEMORY[0x277D75348] whiteColor];
  [(UIImageView *)v15->_sharedIconImageView setTintColor:?];
  [(UIImageView *)v15->_sharedIconImageView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v7).n128_f64[0]];
  [(UIImageView *)v15->_sharedIconImageView setContentMode:4];
  v10 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = v10;
  v8 = [v10 CGColor];
  v9 = [(UIImageView *)v15->_sharedIconImageView layer];
  [v9 setBorderColor:v8];
  MEMORY[0x277D82BD8](v9);
  v11 = [(UIImageView *)v15->_sharedIconImageView layer];
  [v11 setBorderWidth:1.0];
  MEMORY[0x277D82BD8](v11);
  v14[0] = [MEMORY[0x277D755D0] configurationWithPointSize:9.0];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.fill" withConfiguration:v14[0]];
  [(UIImageView *)v15->_sharedIconImageView setImage:?];
  *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  [(UIImageView *)v15->_sharedIconImageView setHidden:1, v5];
  v13 = [(AKAuthorizationLoginChoiceTableViewCell *)v15 contentView];
  [v13 addSubview:v15->_sharedIconImageView];
  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(v14, 0);
}

- (void)_setupSubViewLayout
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20 = self;
  v19[1] = a2;
  v19[0] = [MEMORY[0x277CBEB18] array];
  v5 = v19[0];
  v18 = [(UIImageView *)v20->_sharedIconImageView centerXAnchor];
  v17 = [(AKAuthorizationScopeDetailTableViewCell *)v20 scopeImageView];
  v16 = [(UIImageView *)v17 trailingAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconPadding];
  v15 = [v18 constraintEqualToAnchor:v16 constant:-v2];
  v21[0] = v15;
  v14 = [(UIImageView *)v20->_sharedIconImageView centerYAnchor];
  v13 = [(AKAuthorizationScopeDetailTableViewCell *)v20 scopeImageView];
  v12 = [(UIImageView *)v13 bottomAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconPadding];
  v11 = [v14 constraintEqualToAnchor:v12 constant:-v3];
  v21[1] = v11;
  v10 = [(UIImageView *)v20->_sharedIconImageView heightAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconSize];
  v9 = [v10 constraintEqualToConstant:?];
  v21[2] = v9;
  v8 = [(UIImageView *)v20->_sharedIconImageView widthAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconSize];
  v7 = [v8 constraintEqualToConstant:?];
  v21[3] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v5 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  *&v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v19[0], v4}];
  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v13 = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = AKAuthorizationLoginChoiceTableViewCell;
  [(AKAuthorizationScopeDetailTableViewCell *)&v11 layoutSubviews];
  v6 = [(AKAuthorizationScopeDetailTableViewCell *)v13 scopeImageView];
  [(UIImageView *)v6 bounds];
  v3 = CGRectGetHeight(v14) / 2.0;
  v5 = [(AKAuthorizationScopeDetailTableViewCell *)v13 scopeImageView];
  v4 = [(UIImageView *)v5 layer];
  [v4 setCornerRadius:v3];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v10 = [(AKAuthorizationLoginChoiceTableViewCell *)v13 sharedIconImageView];
  [(UIImageView *)v10 bounds];
  v7 = CGRectGetHeight(v15) / 2.0;
  v9 = [(AKAuthorizationLoginChoiceTableViewCell *)v13 sharedIconImageView];
  v8 = [(UIImageView *)v9 layer];
  [v8 setCornerRadius:v7];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
}

- (void)setLoginChoice:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  loginChoice = v7->_loginChoice;
  v7->_loginChoice = v3;
  *&v5 = MEMORY[0x277D82BD8](loginChoice).n128_u64[0];
  [(AKAuthorizationLoginChoiceTableViewCell *)v7 _setupContent];
  objc_storeStrong(location, 0);
}

- (UIImage)iconImage
{
  v3 = [(AKAuthorizationLoginChoiceTableViewCell *)self imageView];
  v4 = [v3 image];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setIconImage:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKAuthorizationLoginChoiceTableViewCell *)v8 loginChoice];
  v6 = [(AKAuthorizationLoginChoice *)v5 isAppleIDAuthorization];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (!v6)
  {
    v4 = [(AKAuthorizationLoginChoiceTableViewCell *)v8 imageView];
    [v4 setImage:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupContent
{
  v23 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabel];
  v22 = [(AKAuthorizationLoginChoiceTableViewCell *)self loginChoice];
  v21 = [(AKAuthorizationLoginChoice *)v22 user];
  [(UILabel *)v23 setText:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  [(AKAuthorizationLoginChoiceTableViewCell *)self setAccessoryType:0, MEMORY[0x277D82BD8](v23).n128_f64[0]];
  v24 = [(AKAuthorizationLoginChoiceTableViewCell *)self loginChoice];
  v25 = [(AKAuthorizationLoginChoice *)v24 shouldCreateAppleID];
  *&v2 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  if (v25)
  {
    v20 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v19 localizedStringForKey:@"AUTHORIZE_CREATE_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
    [(UILabel *)v20 setText:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  }

  else
  {
    v16 = [(AKAuthorizationLoginChoiceTableViewCell *)self loginChoice];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    if (isKindOfClass)
    {
      v15 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v14 localizedStringForKey:@"AUTHORIZE_SHARED_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      [(UILabel *)v15 setText:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    }

    else
    {
      v12 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v11 localizedStringForKey:@"AUTHORIZE_EXISTING_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      [(UILabel *)v12 setText:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    }
  }

  [AKAuthorizationPaneMetrics cellIconSize:*&v3];
  v9 = [v7 iconWithName:@"blackLogo" size:{v5, v6}];
  v8 = [v9 automaskedImage];
  [(AKAuthorizationScopeDetailTableViewCell *)self setScopeImage:?];
  MEMORY[0x277D82BD8](v8);
  [(AKAuthorizationScopeDetailTableViewCell *)self _setSeparatorIndentToMainLabel];
}

@end