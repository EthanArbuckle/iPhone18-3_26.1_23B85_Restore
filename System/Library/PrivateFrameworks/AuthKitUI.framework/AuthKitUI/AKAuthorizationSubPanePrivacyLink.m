@interface AKAuthorizationSubPanePrivacyLink
- (AKAuthorizationSubPanePrivacyLink)initWithPrivacyLinkType:(unint64_t)a3;
- (id)_createPrivacyLinkWithType:(unint64_t)a3;
- (void)addToConstraints:(id)a3 context:(id)a4;
- (void)addToStackView:(id)a3 context:(id)a4;
@end

@implementation AKAuthorizationSubPanePrivacyLink

- (AKAuthorizationSubPanePrivacyLink)initWithPrivacyLinkType:(unint64_t)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v5 = [(AKAuthorizationSubPanePrivacyLink *)self _createPrivacyLinkWithType:a3];
  v10 = 0;
  v7.receiver = self;
  v7.super_class = AKAuthorizationSubPanePrivacyLink;
  v10 = [(AKAuthorizationSubPane *)&v7 initWithViewController:?];
  objc_storeStrong(&v10, v10);
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (void)addToStackView:(id)a3 context:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = AKAuthorizationSubPanePrivacyLink;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)a3 context:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19.receiver = v22;
  v19.super_class = AKAuthorizationSubPanePrivacyLink;
  [(AKAuthorizationSubPane *)&v19 addToConstraints:location[0] context:v20];
  +[AKAuthorizationSubPaneMetrics privacyLinkMarginInset];
  v18 = v4;
  v6 = location[0];
  v17 = [(AKAuthorizationSubPane *)v22 view];
  v16 = [(UIView *)v17 leadingAnchor];
  v15 = [v20 stackView];
  v14 = [v15 leadingAnchor];
  v13 = [(NSLayoutXAxisAnchor *)v16 constraintEqualToAnchor:v18 constant:?];
  v23[0] = v13;
  v12 = [(AKAuthorizationSubPane *)v22 view];
  v11 = [(UIView *)v12 trailingAnchor];
  v10 = [v20 stackView];
  v9 = [v10 trailingAnchor];
  v8 = [(NSLayoutXAxisAnchor *)v11 constraintEqualToAnchor:-v18 constant:?];
  v23[1] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v6 addObjectsFromArray:?];
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
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_createPrivacyLinkWithType:(unint64_t)a3
{
  v10[3] = self;
  v10[2] = a2;
  v10[1] = a3;
  v10[0] = 0;
  v9[8] = 0;
  *v9 = a3 == 1;
  if (a3 == 1)
  {
    objc_storeStrong(&v9[1], _AKOBPrivacySignInWithMAIDIdentifier);
  }

  else
  {
    objc_storeStrong(&v9[1], _AKOBPrivacySignInWithAppleIdentifier);
  }

  obj = [MEMORY[0x277D37670] linkWithBundleIdentifier:*&v9[1]];
  v7 = [obj view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v9[0])
  {
    [obj setDisplayIcon:{0, v3}];
  }

  else
  {
    v6 = [MEMORY[0x277CF0228] sharedManager];
    [obj setDisplayLargeIcon:{objc_msgSend(v6, "isLisbonAvailable") == 0}];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(v10, obj);
  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v9[1], 0);
  objc_storeStrong(v10, 0);

  return v5;
}

@end