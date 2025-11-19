@interface AKAuthorizationLoginChoiceCell
- (AKAuthorizationLoginChoiceCell)initWithLoginChoice:(id)a3 reuseIdentifier:(id)a4;
- (BOOL)_isSharedAccountLoginChoice;
- (UIImage)iconImage;
- (void)_setupContent;
- (void)_setupFormat;
- (void)layoutSubviews;
- (void)setIconImage:(id)a3;
- (void)setLoginChoice:(id)a3;
@end

@implementation AKAuthorizationLoginChoiceCell

- (AKAuthorizationLoginChoiceCell)initWithLoginChoice:(id)a3 reuseIdentifier:(id)a4
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
  v8.super_class = AKAuthorizationLoginChoiceCell;
  v11 = [(AKAuthorizationLoginChoiceCell *)&v8 initWithStyle:3 reuseIdentifier:v9];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(AKAuthorizationLoginChoiceCell *)v11 _setupFormat];
    [(AKAuthorizationLoginChoiceCell *)v11 setLoginChoice:location[0]];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
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
  [(AKAuthorizationLoginChoiceCell *)v7 _setupContent];
  objc_storeStrong(location, 0);
}

- (UIImage)iconImage
{
  v3 = [(AKAuthorizationLoginChoiceCell *)self imageView];
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
  v5 = [(AKAuthorizationLoginChoiceCell *)v8 loginChoice];
  v6 = [(AKAuthorizationLoginChoice *)v5 isAppleIDAuthorization];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (!v6)
  {
    v4 = [(AKAuthorizationLoginChoiceCell *)v8 imageView];
    [v4 setImage:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupFormat
{
  v2 = +[AKAuthorizationAppearance scopeRowBackgroundColor];
  [(AKAuthorizationLoginChoiceCell *)self setBackgroundColor:?];
  [(AKAuthorizationLoginChoiceCell *)self setSelectionStyle:MEMORY[0x277D82BD8](v2).n128_f64[0]];
  v4 = +[AKAuthorizationAppearance scopeTitleTextColor];
  v3 = [(AKAuthorizationLoginChoiceCell *)self textLabel];
  [v3 setTextColor:v4];
  MEMORY[0x277D82BD8](v3);
  v6 = +[AKAuthorizationAppearance scopeTitleFont];
  v5 = [(AKAuthorizationLoginChoiceCell *)self textLabel];
  [v5 setFont:v6];
  MEMORY[0x277D82BD8](v5);
  v8 = +[AKAuthorizationAppearance scopeSubtitleTextColor];
  v7 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
  [v7 setTextColor:v8];
  MEMORY[0x277D82BD8](v7);
  v10 = +[AKAuthorizationAppearance scopeSubtitleFont];
  v9 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
  [v9 setFont:v10];
  MEMORY[0x277D82BD8](v9);
  v11 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
  [v11 setNumberOfLines:0];
  MEMORY[0x277D82BD8](v11);
}

- (void)_setupContent
{
  v23 = [(AKAuthorizationLoginChoiceCell *)self textLabel];
  v22 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
  v21 = [(AKAuthorizationLoginChoice *)v22 user];
  [v23 setText:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v24 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
  v25 = [(AKAuthorizationLoginChoice *)v24 isAppleIDAuthorization];
  *&v2 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  if (v25)
  {
    v19 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
    v20 = [(AKAuthorizationLoginChoice *)v19 shouldCreateAppleID];
    *&v3 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    if (v20)
    {
      v18 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:@"AUTHORIZE_CREATE_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      [v18 setText:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      [(AKAuthorizationLoginChoiceCell *)self setSelectionStyle:MEMORY[0x277D82BD8](v18).n128_f64[0]];
      [(AKAuthorizationLoginChoiceCell *)self setAccessoryType:1];
    }

    v15 = [(AKAuthorizationLoginChoiceCell *)self imageView];
    +[AKAuthorizationPaneMetrics iconSize];
    v14 = [AKIcon iconWithName:@"blackLogo" size:v4, v5];
    v13 = [(AKIcon *)v14 automaskedImage];
    [v15 setImage:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    v12 = [(AKAuthorizationLoginChoiceCell *)self detailTextLabel];
    v6 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"PASSWORD_REQUEST_VIEW_SAVED_FROM" value:&stru_28358EF68 table:@"Localizable"];
    v9 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
    v8 = [(AKAuthorizationLoginChoice *)v9 site];
    v7 = [v6 stringWithFormat:v10, v8];
    [v12 setText:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }
}

- (void)layoutSubviews
{
  v33 = self;
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
  v28 = [(AKAuthorizationLoginChoiceCell *)v33 contentView];
  [v28 bounds];
  CGRectGetMaxX(v35);
  MEMORY[0x277D82BD8](v28);
  if ([(AKAuthorizationLoginChoiceCell *)v33 effectiveUserInterfaceLayoutDirection]== 1)
  {
    v27 = [(AKAuthorizationLoginChoiceCell *)v33 contentView];
    [v27 bounds];
    v29.origin.x = CGRectGetMaxX(v36) - 16.0 - v30;
    MEMORY[0x277D82BD8](v27);
    CGRectGetMinX(v29);
  }

  v18 = [(AKAuthorizationLoginChoiceCell *)v33 imageView];
  [v18 setFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
  *&v3 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v21 = [(AKAuthorizationLoginChoiceCell *)v33 textLabel];
  v20 = [(AKAuthorizationLoginChoiceCell *)v33 textLabel];
  [v20 frame];
  CGRectGetMinY(v37);
  v19 = [(AKAuthorizationLoginChoiceCell *)v33 textLabel];
  [v19 frame];
  CGRectGetHeight(v38);
  CGRectMake_5();
  [v21 setFrame:{v4, v5, v6, v7}];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  *&v8 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v24 = [(AKAuthorizationLoginChoiceCell *)v33 detailTextLabel];
  v23 = [(AKAuthorizationLoginChoiceCell *)v33 detailTextLabel];
  [v23 frame];
  CGRectGetMinY(v39);
  v22 = [(AKAuthorizationLoginChoiceCell *)v33 detailTextLabel];
  [v22 frame];
  CGRectGetHeight(v40);
  CGRectMake_5();
  [v24 setFrame:{v9, v10, v11, v12}];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *&v13 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = v33;
  v26 = [(AKAuthorizationLoginChoiceCell *)v33 textLabel];
  [v26 frame];
  CGRectGetMinX(v41);
  UIEdgeInsetsMake_4();
  [(AKAuthorizationLoginChoiceCell *)v25 setSeparatorInset:v14, v15, v16, v17];
  MEMORY[0x277D82BD8](v26);
}

- (BOOL)_isSharedAccountLoginChoice
{
  v3 = [(AKAuthorizationLoginChoiceCell *)self loginChoice];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v3);
  return isKindOfClass & 1;
}

@end