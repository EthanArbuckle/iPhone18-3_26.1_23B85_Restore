@interface AKAuthorizationSubPanePrivacyLink
- (AKAuthorizationSubPanePrivacyLink)initWithPrivacyLinkType:(unint64_t)type;
- (id)_createPrivacyLinkWithType:(unint64_t)type;
- (void)addToConstraints:(id)constraints context:(id)context;
- (void)addToStackView:(id)view context:(id)context;
@end

@implementation AKAuthorizationSubPanePrivacyLink

- (AKAuthorizationSubPanePrivacyLink)initWithPrivacyLinkType:(unint64_t)type
{
  selfCopy = self;
  v9 = a2;
  typeCopy = type;
  v5 = [(AKAuthorizationSubPanePrivacyLink *)self _createPrivacyLinkWithType:type];
  selfCopy = 0;
  v7.receiver = self;
  v7.super_class = AKAuthorizationSubPanePrivacyLink;
  selfCopy = [(AKAuthorizationSubPane *)&v7 initWithViewController:?];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)addToStackView:(id)view context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, context);
  v5.receiver = selfCopy;
  v5.super_class = AKAuthorizationSubPanePrivacyLink;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)constraints context:(id)context
{
  v23[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v20 = 0;
  objc_storeStrong(&v20, context);
  v19.receiver = selfCopy;
  v19.super_class = AKAuthorizationSubPanePrivacyLink;
  [(AKAuthorizationSubPane *)&v19 addToConstraints:location[0] context:v20];
  +[AKAuthorizationSubPaneMetrics privacyLinkMarginInset];
  v18 = v4;
  v6 = location[0];
  view = [(AKAuthorizationSubPane *)selfCopy view];
  leadingAnchor = [(UIView *)view leadingAnchor];
  stackView = [v20 stackView];
  leadingAnchor2 = [stackView leadingAnchor];
  v13 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:v18 constant:?];
  v23[0] = v13;
  view2 = [(AKAuthorizationSubPane *)selfCopy view];
  trailingAnchor = [(UIView *)view2 trailingAnchor];
  stackView2 = [v20 stackView];
  trailingAnchor2 = [stackView2 trailingAnchor];
  v8 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-v18 constant:?];
  v23[1] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v6 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](stackView2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](stackView);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_createPrivacyLinkWithType:(unint64_t)type
{
  v10[3] = self;
  v10[2] = a2;
  v10[1] = type;
  v10[0] = 0;
  v9[8] = 0;
  *v9 = type == 1;
  if (type == 1)
  {
    objc_storeStrong(&v9[1], _AKOBPrivacySignInWithMAIDIdentifier);
  }

  else
  {
    objc_storeStrong(&v9[1], _AKOBPrivacySignInWithAppleIdentifier);
  }

  obj = [MEMORY[0x277D37670] linkWithBundleIdentifier:*&v9[1]];
  view = [obj view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  if (v9[0])
  {
    [obj setDisplayIcon:{0, v3}];
  }

  else
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    [obj setDisplayLargeIcon:{objc_msgSend(mEMORY[0x277CF0228], "isLisbonAvailable") == 0}];
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  objc_storeStrong(v10, obj);
  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v9[1], 0);
  objc_storeStrong(v10, 0);

  return v5;
}

@end