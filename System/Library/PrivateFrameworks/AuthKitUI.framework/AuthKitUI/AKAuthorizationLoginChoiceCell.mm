@interface AKAuthorizationLoginChoiceCell
- (AKAuthorizationLoginChoiceCell)initWithLoginChoice:(id)choice reuseIdentifier:(id)identifier;
- (BOOL)_isSharedAccountLoginChoice;
- (UIImage)iconImage;
- (void)_setupContent;
- (void)_setupFormat;
- (void)layoutSubviews;
- (void)setIconImage:(id)image;
- (void)setLoginChoice:(id)choice;
@end

@implementation AKAuthorizationLoginChoiceCell

- (AKAuthorizationLoginChoiceCell)initWithLoginChoice:(id)choice reuseIdentifier:(id)identifier
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
  v8.super_class = AKAuthorizationLoginChoiceCell;
  selfCopy = [(AKAuthorizationLoginChoiceCell *)&v8 initWithStyle:3 reuseIdentifier:v9];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKAuthorizationLoginChoiceCell *)selfCopy _setupFormat];
    [(AKAuthorizationLoginChoiceCell *)selfCopy setLoginChoice:location[0]];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
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
  [(AKAuthorizationLoginChoiceCell *)selfCopy _setupContent];
  objc_storeStrong(location, 0);
}

- (UIImage)iconImage
{
  imageView = [(AKAuthorizationLoginChoiceCell *)self imageView];
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
  loginChoice = [(AKAuthorizationLoginChoiceCell *)selfCopy loginChoice];
  isAppleIDAuthorization = [(AKAuthorizationLoginChoice *)loginChoice isAppleIDAuthorization];
  *&v3 = MEMORY[0x277D82BD8](loginChoice).n128_u64[0];
  if (!isAppleIDAuthorization)
  {
    imageView = [(AKAuthorizationLoginChoiceCell *)selfCopy imageView];
    [imageView setImage:location[0]];
    MEMORY[0x277D82BD8](imageView);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupFormat
{
  v2 = +[AKAuthorizationAppearance scopeRowBackgroundColor];
  [(AKAuthorizationLoginChoiceCell *)self setBackgroundColor:?];
  [(AKAuthorizationLoginChoiceCell *)self setSelectionStyle:MEMORY[0x277D82BD8](v2).n128_f64[0]];
  v4 = +[AKAuthorizationAppearance scopeTitleTextColor];
  textLabel = [(AKAuthorizationLoginChoiceCell *)self textLabel];
  [textLabel setTextColor:v4];
  MEMORY[0x277D82BD8](textLabel);
  v6 = +[AKAuthorizationAppearance scopeTitleFont];
  textLabel2 = [(AKAuthorizationLoginChoiceCell *)self textLabel];
  [textLabel2 setFont:v6];
  MEMORY[0x277D82BD8](textLabel2);
  v8 = +[AKAuthorizationAppearance scopeSubtitleTextColor];
  detailTextLabel = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v8];
  MEMORY[0x277D82BD8](detailTextLabel);
  v10 = +[AKAuthorizationAppearance scopeSubtitleFont];
  detailTextLabel2 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
  [detailTextLabel2 setFont:v10];
  MEMORY[0x277D82BD8](detailTextLabel2);
  detailTextLabel3 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];
  MEMORY[0x277D82BD8](detailTextLabel3);
}

- (void)_setupContent
{
  textLabel = [(AKAuthorizationLoginChoiceCell *)self textLabel];
  loginChoice = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
  user = [(AKAuthorizationLoginChoice *)loginChoice user];
  [textLabel setText:?];
  MEMORY[0x277D82BD8](user);
  MEMORY[0x277D82BD8](loginChoice);
  loginChoice2 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
  isAppleIDAuthorization = [(AKAuthorizationLoginChoice *)loginChoice2 isAppleIDAuthorization];
  *&v2 = MEMORY[0x277D82BD8](loginChoice2).n128_u64[0];
  if (isAppleIDAuthorization)
  {
    loginChoice3 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
    shouldCreateAppleID = [(AKAuthorizationLoginChoice *)loginChoice3 shouldCreateAppleID];
    *&v3 = MEMORY[0x277D82BD8](loginChoice3).n128_u64[0];
    if (shouldCreateAppleID)
    {
      detailTextLabel = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:@"AUTHORIZE_CREATE_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      [detailTextLabel setText:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      [(AKAuthorizationLoginChoiceCell *)self setSelectionStyle:MEMORY[0x277D82BD8](detailTextLabel).n128_f64[0]];
      [(AKAuthorizationLoginChoiceCell *)self setAccessoryType:1];
    }

    imageView = [(AKAuthorizationLoginChoiceCell *)self imageView];
    +[AKAuthorizationPaneMetrics iconSize];
    v14 = [AKIcon iconWithName:@"blackLogo" size:v4, v5];
    automaskedImage = [(AKIcon *)v14 automaskedImage];
    [imageView setImage:?];
    MEMORY[0x277D82BD8](automaskedImage);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](imageView);
  }

  else
  {
    detailTextLabel2 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
    v6 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"PASSWORD_REQUEST_VIEW_SAVED_FROM" value:&stru_28358EF68 table:@"Localizable"];
    loginChoice4 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
    site = [(AKAuthorizationLoginChoice *)loginChoice4 site];
    v7 = [v6 stringWithFormat:v10, site];
    [detailTextLabel2 setText:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](site);
    MEMORY[0x277D82BD8](loginChoice4);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](detailTextLabel2);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = AKAuthorizationLoginChoiceCell;
  [(AKAuthorizationLoginChoiceCell *)&v31 layoutSubviews];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v30 = v2;
  +[AKAuthorizationSubPaneMetrics scopeImageViewTopSpacing];
  CGRectMake_5();
  v29 = v34;
  CGRectGetMaxX(v34);
  contentView = [(AKAuthorizationLoginChoiceCell *)selfCopy contentView];
  [contentView bounds];
  CGRectGetMaxX(v35);
  MEMORY[0x277D82BD8](contentView);
  if ([(AKAuthorizationLoginChoiceCell *)selfCopy effectiveUserInterfaceLayoutDirection]== 1)
  {
    contentView2 = [(AKAuthorizationLoginChoiceCell *)selfCopy contentView];
    [contentView2 bounds];
    v29.origin.x = CGRectGetMaxX(v36) - 16.0 - v30;
    MEMORY[0x277D82BD8](contentView2);
    CGRectGetMinX(v29);
  }

  imageView = [(AKAuthorizationLoginChoiceCell *)selfCopy imageView];
  [imageView setFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
  *&v3 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
  textLabel = [(AKAuthorizationLoginChoiceCell *)selfCopy textLabel];
  textLabel2 = [(AKAuthorizationLoginChoiceCell *)selfCopy textLabel];
  [textLabel2 frame];
  CGRectGetMinY(v37);
  textLabel3 = [(AKAuthorizationLoginChoiceCell *)selfCopy textLabel];
  [textLabel3 frame];
  CGRectGetHeight(v38);
  CGRectMake_5();
  [textLabel setFrame:{v4, v5, v6, v7}];
  MEMORY[0x277D82BD8](textLabel3);
  MEMORY[0x277D82BD8](textLabel2);
  *&v8 = MEMORY[0x277D82BD8](textLabel).n128_u64[0];
  detailTextLabel = [(AKAuthorizationLoginChoiceCell *)selfCopy detailTextLabel];
  detailTextLabel2 = [(AKAuthorizationLoginChoiceCell *)selfCopy detailTextLabel];
  [detailTextLabel2 frame];
  CGRectGetMinY(v39);
  detailTextLabel3 = [(AKAuthorizationLoginChoiceCell *)selfCopy detailTextLabel];
  [detailTextLabel3 frame];
  CGRectGetHeight(v40);
  CGRectMake_5();
  [detailTextLabel setFrame:{v9, v10, v11, v12}];
  MEMORY[0x277D82BD8](detailTextLabel3);
  MEMORY[0x277D82BD8](detailTextLabel2);
  *&v13 = MEMORY[0x277D82BD8](detailTextLabel).n128_u64[0];
  v25 = selfCopy;
  textLabel4 = [(AKAuthorizationLoginChoiceCell *)selfCopy textLabel];
  [textLabel4 frame];
  CGRectGetMinX(v41);
  UIEdgeInsetsMake_4();
  [(AKAuthorizationLoginChoiceCell *)v25 setSeparatorInset:v14, v15, v16, v17];
  MEMORY[0x277D82BD8](textLabel4);
}

- (BOOL)_isSharedAccountLoginChoice
{
  loginChoice = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](loginChoice);
  return isKindOfClass & 1;
}

@end