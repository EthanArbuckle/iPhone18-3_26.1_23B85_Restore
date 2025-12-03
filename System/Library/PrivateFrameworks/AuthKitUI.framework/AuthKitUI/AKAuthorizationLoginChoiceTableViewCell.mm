@interface AKAuthorizationLoginChoiceTableViewCell
- (AKAuthorizationLoginChoiceTableViewCell)initWithLoginChoice:(id)choice reuseIdentifier:(id)identifier;
- (UIImage)iconImage;
- (void)_setupContent;
- (void)_setupSharedIconImageView;
- (void)_setupSubViewLayout;
- (void)_setupSubViews;
- (void)layoutSubviews;
- (void)setIconImage:(id)image;
- (void)setLoginChoice:(id)choice;
@end

@implementation AKAuthorizationLoginChoiceTableViewCell

- (AKAuthorizationLoginChoiceTableViewCell)initWithLoginChoice:(id)choice reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v9 = 0;
  objc_storeStrong(&v9, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationLoginChoiceTableViewCell;
  selfCopy = [(AKAuthorizationScopeDetailTableViewCell *)&v8 initWithStyle:2 reuseIdentifier:v9];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy setLoginChoice:location[0]];
    [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy _setupSubViews];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_setupSubViews
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  scopeImageView = [(AKAuthorizationScopeDetailTableViewCell *)self scopeImageView];
  [(UIImageView *)scopeImageView setBackgroundColor:clearColor];
  MEMORY[0x277D82BD8](scopeImageView);
  [(AKAuthorizationLoginChoiceTableViewCell *)self _setupSharedIconImageView];
  [(AKAuthorizationLoginChoiceTableViewCell *)self _setupSubViewLayout];
}

- (void)_setupSharedIconImageView
{
  selfCopy = self;
  v14[1] = a2;
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  sharedIconImageView = selfCopy->_sharedIconImageView;
  selfCopy->_sharedIconImageView = v2;
  v6 = +[AKAuthorizationAppearance sharedAccountIconBackgroundColor];
  [(UIImageView *)selfCopy->_sharedIconImageView setBackgroundColor:?];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UIImageView *)selfCopy->_sharedIconImageView setTintColor:?];
  [(UIImageView *)selfCopy->_sharedIconImageView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](whiteColor).n128_f64[0]];
  [(UIImageView *)selfCopy->_sharedIconImageView setContentMode:4];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = systemBackgroundColor;
  cGColor = [systemBackgroundColor CGColor];
  layer = [(UIImageView *)selfCopy->_sharedIconImageView layer];
  [layer setBorderColor:cGColor];
  MEMORY[0x277D82BD8](layer);
  layer2 = [(UIImageView *)selfCopy->_sharedIconImageView layer];
  [layer2 setBorderWidth:1.0];
  MEMORY[0x277D82BD8](layer2);
  v14[0] = [MEMORY[0x277D755D0] configurationWithPointSize:9.0];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.fill" withConfiguration:v14[0]];
  [(UIImageView *)selfCopy->_sharedIconImageView setImage:?];
  *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  [(UIImageView *)selfCopy->_sharedIconImageView setHidden:1, v5];
  contentView = [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy contentView];
  [contentView addSubview:selfCopy->_sharedIconImageView];
  MEMORY[0x277D82BD8](contentView);
  objc_storeStrong(v14, 0);
}

- (void)_setupSubViewLayout
{
  v21[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19[1] = a2;
  v19[0] = [MEMORY[0x277CBEB18] array];
  v5 = v19[0];
  centerXAnchor = [(UIImageView *)selfCopy->_sharedIconImageView centerXAnchor];
  scopeImageView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  trailingAnchor = [(UIImageView *)scopeImageView trailingAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconPadding];
  v15 = [centerXAnchor constraintEqualToAnchor:trailingAnchor constant:-v2];
  v21[0] = v15;
  centerYAnchor = [(UIImageView *)selfCopy->_sharedIconImageView centerYAnchor];
  scopeImageView2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  bottomAnchor = [(UIImageView *)scopeImageView2 bottomAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconPadding];
  v11 = [centerYAnchor constraintEqualToAnchor:bottomAnchor constant:-v3];
  v21[1] = v11;
  heightAnchor = [(UIImageView *)selfCopy->_sharedIconImageView heightAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconSize];
  v9 = [heightAnchor constraintEqualToConstant:?];
  v21[2] = v9;
  widthAnchor = [(UIImageView *)selfCopy->_sharedIconImageView widthAnchor];
  +[AKAuthorizationSubPaneMetrics sharedAccountIconSize];
  v7 = [widthAnchor constraintEqualToConstant:?];
  v21[3] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v5 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](scopeImageView2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](scopeImageView);
  *&v4 = MEMORY[0x277D82BD8](centerXAnchor).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v19[0], v4}];
  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = AKAuthorizationLoginChoiceTableViewCell;
  [(AKAuthorizationScopeDetailTableViewCell *)&v11 layoutSubviews];
  scopeImageView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  [(UIImageView *)scopeImageView bounds];
  v3 = CGRectGetHeight(v14) / 2.0;
  scopeImageView2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  layer = [(UIImageView *)scopeImageView2 layer];
  [layer setCornerRadius:v3];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](scopeImageView2);
  *&v2 = MEMORY[0x277D82BD8](scopeImageView).n128_u64[0];
  sharedIconImageView = [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy sharedIconImageView];
  [(UIImageView *)sharedIconImageView bounds];
  v7 = CGRectGetHeight(v15) / 2.0;
  sharedIconImageView2 = [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy sharedIconImageView];
  layer2 = [(UIImageView *)sharedIconImageView2 layer];
  [layer2 setCornerRadius:v7];
  MEMORY[0x277D82BD8](layer2);
  MEMORY[0x277D82BD8](sharedIconImageView2);
  MEMORY[0x277D82BD8](sharedIconImageView);
}

- (void)setLoginChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v3 = [location[0] copy];
  loginChoice = selfCopy->_loginChoice;
  selfCopy->_loginChoice = v3;
  *&v5 = MEMORY[0x277D82BD8](loginChoice).n128_u64[0];
  [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy _setupContent];
  objc_storeStrong(location, 0);
}

- (UIImage)iconImage
{
  imageView = [(AKAuthorizationLoginChoiceTableViewCell *)self imageView];
  image = [imageView image];
  MEMORY[0x277D82BD8](imageView);

  return image;
}

- (void)setIconImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  loginChoice = [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy loginChoice];
  isAppleIDAuthorization = [(AKAuthorizationLoginChoice *)loginChoice isAppleIDAuthorization];
  *&v3 = MEMORY[0x277D82BD8](loginChoice).n128_u64[0];
  if (!isAppleIDAuthorization)
  {
    imageView = [(AKAuthorizationLoginChoiceTableViewCell *)selfCopy imageView];
    [imageView setImage:location[0]];
    MEMORY[0x277D82BD8](imageView);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupContent
{
  mainLabel = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabel];
  loginChoice = [(AKAuthorizationLoginChoiceTableViewCell *)self loginChoice];
  user = [(AKAuthorizationLoginChoice *)loginChoice user];
  [(UILabel *)mainLabel setText:?];
  MEMORY[0x277D82BD8](user);
  MEMORY[0x277D82BD8](loginChoice);
  [(AKAuthorizationLoginChoiceTableViewCell *)self setAccessoryType:0, MEMORY[0x277D82BD8](mainLabel).n128_f64[0]];
  loginChoice2 = [(AKAuthorizationLoginChoiceTableViewCell *)self loginChoice];
  shouldCreateAppleID = [(AKAuthorizationLoginChoice *)loginChoice2 shouldCreateAppleID];
  *&v2 = MEMORY[0x277D82BD8](loginChoice2).n128_u64[0];
  if (shouldCreateAppleID)
  {
    mainDetailLabel = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v19 localizedStringForKey:@"AUTHORIZE_CREATE_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
    [(UILabel *)mainDetailLabel setText:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v3 = MEMORY[0x277D82BD8](mainDetailLabel).n128_u64[0];
  }

  else
  {
    loginChoice3 = [(AKAuthorizationLoginChoiceTableViewCell *)self loginChoice];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *&v4 = MEMORY[0x277D82BD8](loginChoice3).n128_u64[0];
    if (isKindOfClass)
    {
      mainDetailLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v14 localizedStringForKey:@"AUTHORIZE_SHARED_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      [(UILabel *)mainDetailLabel2 setText:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      v3 = MEMORY[0x277D82BD8](mainDetailLabel2).n128_u64[0];
    }

    else
    {
      mainDetailLabel3 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v11 localizedStringForKey:@"AUTHORIZE_EXISTING_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      [(UILabel *)mainDetailLabel3 setText:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v3 = MEMORY[0x277D82BD8](mainDetailLabel3).n128_u64[0];
    }
  }

  [AKAuthorizationPaneMetrics cellIconSize:*&v3];
  v9 = [v7 iconWithName:@"blackLogo" size:{v5, v6}];
  automaskedImage = [v9 automaskedImage];
  [(AKAuthorizationScopeDetailTableViewCell *)self setScopeImage:?];
  MEMORY[0x277D82BD8](automaskedImage);
  [(AKAuthorizationScopeDetailTableViewCell *)self _setSeparatorIndentToMainLabel];
}

@end