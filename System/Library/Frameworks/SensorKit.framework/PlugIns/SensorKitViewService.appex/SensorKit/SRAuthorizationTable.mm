@interface SRAuthorizationTable
+ (void)initialize;
- (void)cancelPrompt;
- (void)completePrompt;
- (void)dealloc;
- (void)openPrivacy;
- (void)prepareContentView;
- (void)showAuthFlowPerCategory;
- (void)showMigrationReceipt;
- (void)showSensorKitPrivacyPage;
- (void)viewDidLoad;
@end

@implementation SRAuthorizationTable

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100015F40 = os_log_create("com.apple.SensorKit", "AuthorizationTable");
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SRAuthorizationTable;
  [(SRAuthorizationTable *)&v7 viewDidLoad];
  [(SRAuthorizationTable *)self prepareContentView];
  v3 = +[OBBoldTrayButton boldButton];
  if ([(SRAuthorizationTable *)self migrationMode])
  {
    v4 = 87;
  }

  else
  {
    v4 = 72;
  }

  [v3 setTitle:+[NSString srui_localizedStringForCode:](NSString forState:{"srui_localizedStringForCode:", v4), 0}];
  migrationMode = [(SRAuthorizationTable *)self migrationMode];
  v6 = &selRef_showMigrationReceipt;
  if (!migrationMode)
  {
    v6 = &selRef_showAuthFlowPerCategory;
  }

  [v3 addTarget:self action:*v6 forControlEvents:64];
  [-[SRAuthorizationTable buttonTray](self "buttonTray")];
  [-[SRAuthorizationTable navigationItem](self "navigationItem")];
}

- (void)dealloc
{
  [(SRAuthorizationTable *)self setAppBundle:0];
  [(SRAuthorizationTable *)self setServices:0];
  [(SRAuthorizationTable *)self setAuthStore:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationTable;
  [(SRAuthorizationTable *)&v3 dealloc];
}

- (void)prepareContentView
{
  v3 = objc_alloc_init(UILabel);
  [(UIButton *)v3 setTextAlignment:4];
  [(UIButton *)v3 setLineBreakMode:0];
  [(UIButton *)v3 setNumberOfLines:0];
  if ([(SRAuthorizationTable *)self migrationMode])
  {
    selfCopy2 = self;
    v5 = [NSString srui_localizedStringForCode:89];
  }

  else
  {
    v41 = 0;
    v6 = [NSString stringWithValidatedFormat:[NSString srui_localizedStringForCode:74] validFormatSpecifiers:@"%@" error:&v41, [(NSBundle *)[(SRAuthorizationTable *)self appBundle] sk_studyName]];
    if (!v6)
    {
      v7 = qword_100015F40;
      if (os_log_type_enabled(qword_100015F40, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v44 = v41;
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
      }
    }

    v5 = [NSString stringWithValidatedFormat:[NSString srui_localizedStringForCode:73] validFormatSpecifiers:@"%@" error:&v41, v6];
    if (!v5)
    {
      v8 = qword_100015F40;
      if (os_log_type_enabled(qword_100015F40, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v44 = v41;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
      }
    }

    selfCopy2 = self;
  }

  [(UIButton *)v3 setText:v5];
  [(UIButton *)v3 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
  v9 = +[NSMutableArray array];
  v33 = v3;
  [v9 addObject:v3];
  v10 = +[NSMutableArray array];
  v11 = selfCopy2;
  if ([(SRAuthorizationTable *)selfCopy2 migrationMode])
  {
    v12 = 0;
    v36 = UIAccessibilityTraitLink;
  }

  else
  {
    v12 = [UIButton buttonWithType:1];
    [(UILabel *)[(UIButton *)v12 titleLabel] setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    [(UILabel *)[(UIButton *)v12 titleLabel] setTextAlignment:4];
    [(UIButton *)v12 setTitle:[NSString forState:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 0];
    [(UIButton *)v12 addTarget:selfCopy2 action:"showSensorKitPrivacyPage" forControlEvents:64];
    v36 = UIAccessibilityTraitLink;
    [(UIButton *)v12 setAccessibilityTraits:?];
    [(UILabel *)[(UIButton *)v12 titleLabel] setLineBreakMode:0];
    [(UILabel *)[(UIButton *)v12 titleLabel] setNumberOfLines:0];
    [(UIButton *)v12 setContentHorizontalAlignment:4];
    [(UIButton *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addObject:v12];
    [v10 addObject:{objc_msgSend(-[UIButton topAnchor](v12, "topAnchor"), "constraintEqualToAnchor:", -[UILabel topAnchor](-[UIButton titleLabel](v12, "titleLabel"), "topAnchor"))}];
    [v10 addObject:{objc_msgSend(-[UIButton bottomAnchor](v12, "bottomAnchor"), "constraintEqualToAnchor:", -[UILabel bottomAnchor](-[UIButton titleLabel](v12, "titleLabel"), "bottomAnchor"))}];
  }

  v13 = [UIFont fontWithDescriptor:[[UIFontDescriptor preferredFontDescriptorWithTextStyle:?] size:"fontDescriptorWithSymbolicTraits:", 2], 0.0];
  v14 = objc_opt_new();
  [v14 setTextAlignment:4];
  [v14 setLineBreakMode:0];
  [v14 setNumberOfLines:0];
  [v14 setText:{-[NSBundle srui_localizedResearchPurpose](-[SRAuthorizationTable appBundle](v11, "appBundle"), "srui_localizedResearchPurpose")}];
  obj = v13;
  [v14 setFont:v13];
  [v9 addObject:v14];
  v15 = objc_alloc_init(UILabel);
  [v15 setTextAlignment:4];
  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:0];
  [v15 setText:{-[NSBundle sk_usageDescription](-[SRAuthorizationTable appBundle](v11, "appBundle"), "sk_usageDescription")}];
  [v15 setFont:{+[UIFont preferredFontForTextStyle:](UIFont, "preferredFontForTextStyle:", UIFontTextStyleBody)}];
  [v9 addObject:v15];
  v16 = [UIButton buttonWithType:1];
  [(UILabel *)[(UIButton *)v16 titleLabel] setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
  [(UIButton *)v16 setTitle:[NSString forState:"stringWithFormat:" stringWithFormat:[(NSBundle *)[(SRAuthorizationTable *)v11 appBundle] srui_localizedPrivacyPolicyLinkTitle]], 0];
  [(UIButton *)v16 addTarget:v11 action:"openPrivacy" forControlEvents:64];
  [(UIButton *)v16 setAccessibilityTraits:v36];
  [(UILabel *)[(UIButton *)v16 titleLabel] setLineBreakMode:0];
  [(UILabel *)[(UIButton *)v16 titleLabel] setNumberOfLines:0];
  [(UILabel *)[(UIButton *)v16 titleLabel] setTextAlignment:4];
  if (+[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [+[UIView appearance](UIView "appearance")]) == 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  [(UIButton *)v16 setContentHorizontalAlignment:v17];
  [v9 addObject:v16];
  [v10 addObject:{objc_msgSend(-[UIButton topAnchor](v16, "topAnchor"), "constraintEqualToAnchor:", -[UILabel topAnchor](-[UIButton titleLabel](v16, "titleLabel"), "topAnchor"))}];
  [v10 addObject:{objc_msgSend(-[UIButton bottomAnchor](v16, "bottomAnchor"), "constraintEqualToAnchor:", -[UILabel bottomAnchor](-[UIButton titleLabel](v16, "titleLabel"), "bottomAnchor"))}];
  v18 = 0;
  if (![(SRAuthorizationTable *)v11 migrationMode])
  {
    v18 = objc_alloc_init(UILabel);
    [v18 setTextAlignment:4];
    [v18 setLineBreakMode:0];
    [v18 setNumberOfLines:0];
    [v18 setText:{+[NSString srui_localizedStringForCode:](NSString, "srui_localizedStringForCode:", 78)}];
    [v18 setFont:obj];
    [v9 addObject:v18];
  }

  v19 = [[UIStackView alloc] initWithArrangedSubviews:v9];
  [v19 setAxis:1];
  migrationMode = [(SRAuthorizationTable *)v11 migrationMode];
  v21 = v33;
  if ((migrationMode & 1) == 0)
  {
    [v19 setCustomSpacing:v33 afterView:6.0];
    v21 = v12;
  }

  [v19 setCustomSpacing:v21 afterView:37.0];
  [v19 setCustomSpacing:v14 afterView:6.0];
  [v19 setCustomSpacing:v15 afterView:6.0];
  [v19 setCustomSpacing:v16 afterView:22.0];
  if (v18)
  {
    [v19 setCustomSpacing:v18 afterView:16.0];
  }

  v30 = v18;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addObject:{objc_msgSend(objc_msgSend(v19, "topAnchor"), "constraintEqualToAnchor:", objc_msgSend(objc_msgSend(-[SRAuthorizationTable contentView](v11, "contentView"), "layoutMarginsGuide"), "topAnchor"))}];
  [v10 addObject:{objc_msgSend(objc_msgSend(v19, "leadingAnchor"), "constraintEqualToAnchor:", objc_msgSend(objc_msgSend(-[SRAuthorizationTable contentView](v11, "contentView"), "layoutMarginsGuide"), "leadingAnchor"))}];
  [v10 addObject:{objc_msgSend(objc_msgSend(v19, "trailingAnchor"), "constraintEqualToAnchor:", objc_msgSend(objc_msgSend(-[SRAuthorizationTable contentView](v11, "contentView"), "layoutMarginsGuide"), "trailingAnchor"))}];
  v31 = v10;
  [v10 addObject:{objc_msgSend(objc_msgSend(v19, "bottomAnchor"), "constraintEqualToAnchor:", objc_msgSend(objc_msgSend(-[SRAuthorizationTable contentView](v11, "contentView"), "layoutMarginsGuide"), "bottomAnchor"))}];
  v32 = v11;
  if (![(SRAuthorizationTable *)v11 migrationMode])
  {
    v22 = +[UIImage skui_bulletImage];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obja = [(SRAuthorizationTable *)v11 services];
    v23 = [(NSArray *)obja countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v37 + 1) + 8 * i);
          v28 = objc_autoreleasePoolPush();
          v29 = [[SRBulletedListItem alloc] initWithTitle:[[SRAuthorizationGroup authorizationGroupWithServiceName:?]] description:0 image:v22 textStyle:UIFontTextStyleBody];
          [v19 addArrangedSubview:v29];
          [v19 setCustomSpacing:objc_msgSend(objc_msgSend(v19 afterView:{"arrangedSubviews"), "lastObject"), 16.0}];

          objc_autoreleasePoolPop(v28);
        }

        v24 = [(NSArray *)obja countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v24);
    }
  }

  [-[SRAuthorizationTable contentView](v32 "contentView")];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)openPrivacy
{
  sk_privacyURL = [(NSBundle *)[(SRAuthorizationTable *)self appBundle] sk_privacyURL];
  if (sk_privacyURL)
  {
    v4 = sk_privacyURL;
    delegate = [(SRAuthorizationTable *)self delegate];

    [(SRAuthorizationTableDelegate *)delegate authorizationTable:self openURL:v4];
  }
}

- (void)showAuthFlowPerCategory
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006F54;
  v5[3] = &unk_100010538;
  objc_copyWeak(&v6, &location);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100006F80;
  v3[3] = &unk_100010538;
  objc_copyWeak(&v4, &location);
  [-[SRAuthorizationTable navigationController](self "navigationController")];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)showMigrationReceipt
{
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000726C;
  v14[3] = &unk_100010538;
  objc_copyWeak(&v15, &location);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007298;
  v12[3] = &unk_100010538;
  objc_copyWeak(&v13, &location);
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)[(SRAuthorizationTable *)self services] count]];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v4 = [(SRAuthorizationTable *)self services:0];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v17 count:16];
  if (v5)
  {
    v6 = *v9;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v4);
      }

      [(NSMutableArray *)v3 addObject:&__kCFBooleanTrue];
      if (!--v5)
      {
        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v17 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  v7 = [[SRAuthorizationConfirmationViewController alloc] initWithTitle:[NSString srui_localizedStringForCode:48]];
  [(SRAuthorizationConfirmationViewController *)v7 setAppBundle:[(SRAuthorizationTable *)self appBundle]];
  [(SRAuthorizationConfirmationViewController *)v7 setServices:[(SRAuthorizationTable *)self services]];
  [(SRAuthorizationConfirmationViewController *)v7 setAuthState:v3];
  [(SRAuthorizationConfirmationViewController *)v7 setCompletionHandler:v14];
  [(SRAuthorizationConfirmationViewController *)v7 setCancelHandler:v12];
  [(SRAuthorizationConfirmationViewController *)v7 setAuthStore:[(SRAuthorizationTable *)self authStore]];
  [-[SRAuthorizationTable navigationController](self "navigationController")];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)cancelPrompt
{
  delegate = [(SRAuthorizationTable *)self delegate];
  [(SRAuthorizationTableDelegate *)delegate authorizationTable:self foundIssueWithApp:[NSError errorWithDomain:SRErrorDomain code:8196 userInfo:0]];

  [(SRAuthorizationTableDelegate *)delegate authorizationTableCompletedPromptSuccessfully:self];
}

- (void)completePrompt
{
  delegate = [(SRAuthorizationTable *)self delegate];

  [(SRAuthorizationTableDelegate *)delegate authorizationTableCompletedPromptSuccessfully:self];
}

- (void)showSensorKitPrivacyPage
{
  v3 = +[OBPrivacyPresenter srui_presenterForPrivacySplash];
  [v3 setPresentingViewController:self];

  [v3 present];
}

@end