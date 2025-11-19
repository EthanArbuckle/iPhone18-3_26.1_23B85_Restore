@interface AAUIViewServiceURLHandler
- (BOOL)handleUniversalLinkInUserActivity:(id)a3;
- (id)_buildURLInfoFromActivity:(id)a3;
- (void)_handleMailImportURL:(id)a3;
- (void)_openCustomDomainManageURL;
- (void)_openCustomDomainURL:(id)a3 domainState:(id)a4;
- (void)_openPrivateEmailManageURL;
- (void)_presentCustodianInvitationWithUUID:(id)a3 fallBackURL:(id)a4;
- (void)_presentInheritanceInvitationWithBeneficiaryID:(id)a3 fallBackURL:(id)a4;
@end

@implementation AAUIViewServiceURLHandler

- (id)_buildURLInfoFromActivity:(id)a3
{
  v3 = a3;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 activityType];
    v12 = 136380931;
    v13 = "[AAUIViewServiceURLHandler _buildURLInfoFromActivity:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s handling user activity type: %@", &v12, 0x16u);
  }

  v6 = [v3 activityType];
  v7 = [v6 isEqual:NSUserActivityTypeBrowsingWeb];

  if (v7)
  {
    v8 = [v3 webpageURL];
    if (v8)
    {
      v9 = [[NSURLComponents alloc] initWithURL:v8 resolvingAgainstBaseURL:1];
      if (v9)
      {
        v10 = [AAUniversalLinkHelper infoForComponents:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)handleUniversalLinkInUserActivity:(id)a3
{
  v4 = a3;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001764;
  v21[3] = &unk_100010398;
  v21[4] = self;
  v5 = objc_retainBlock(v21);
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 activityType];
    *buf = 136380931;
    v23 = "[AAUIViewServiceURLHandler handleUniversalLinkInUserActivity:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{private}s handling user activity type: %@", buf, 0x16u);
  }

  v8 = [(AAUIViewServiceURLHandler *)self _buildURLInfoFromActivity:v4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:AAURLKeyFlowType];
    v11 = v10;
    if (!v10)
    {
      v14 = _AAUILogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100005AD8();
      }

      (v5[2])(v5);
      v13 = 0;
      goto LABEL_25;
    }

    if ([v10 isEqualToString:AAURLKeyFlowTypePrivateEmailManage])
    {
      [(AAUIViewServiceURLHandler *)self _openPrivateEmailManageURL];
LABEL_24:
      (v5[2])(v5);
      v13 = 1;
LABEL_25:

      goto LABEL_26;
    }

    if ([v11 isEqualToString:AAURLKeyFlowTypeCustomDomain])
    {
      v15 = [v9 objectForKeyedSubscript:AAURLKeyID];
      v16 = [v9 objectForKeyedSubscript:AAURLKeyCustomDomainState];
      if (v15)
      {
        [(AAUIViewServiceURLHandler *)self _openCustomDomainURL:v15 domainState:v16];
      }

      else
      {
        [(AAUIViewServiceURLHandler *)self _openCustomDomainManageURL];
      }

      goto LABEL_23;
    }

    if ([v11 isEqualToString:AAURLKeyFlowTypeMailImport])
    {
      v15 = [v9 objectForKeyedSubscript:AAURLKeyState];
      [(AAUIViewServiceURLHandler *)self _handleMailImportURL:v15];
LABEL_23:

      goto LABEL_24;
    }

    v17 = [v9 objectForKeyedSubscript:AAURLKeyID];
    if (!v17)
    {
      (v5[2])(v5);
      v13 = 0;
LABEL_33:

      goto LABEL_25;
    }

    v18 = [[NSUUID alloc] initWithUUIDString:v17];
    if ([v11 isEqualToString:AAURLKeyFlowTypeCustodian])
    {
      v19 = [v4 webpageURL];
      [(AAUIViewServiceURLHandler *)self _presentCustodianInvitationWithUUID:v18 fallBackURL:v19];
    }

    else
    {
      if (![v11 isEqualToString:AAURLKeyFlowTypeBeneficiary])
      {
        v13 = 0;
        goto LABEL_32;
      }

      v19 = [v4 webpageURL];
      [(AAUIViewServiceURLHandler *)self _presentInheritanceInvitationWithBeneficiaryID:v18 fallBackURL:v19];
    }

    v13 = 1;
LABEL_32:

    goto LABEL_33;
  }

  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100005B14();
  }

  (v5[2])(v5);
  v13 = 0;
LABEL_26:

  return v13;
}

- (void)_openPrivateEmailManageURL
{
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/PRIVATE_EMAIL_MANAGE"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)_openCustomDomainManageURL
{
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail/BYOD_SETTING_SPECIFIER_ID"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)_openCustomDomainURL:(id)a3 domainState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSURLComponents alloc] initWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail/BYOD_SETTING_SPECIFIER_ID"];
  if (v7)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [[NSURLQueryItem alloc] initWithName:@"domain" value:v5];
    [v8 addObject:v9];

    if (v6)
    {
      v10 = [[NSURLQueryItem alloc] initWithName:@"domainState" value:v6];
      [v8 addObject:v10];
    }

    [v7 setQueryItems:v8];
    v11 = [v7 string];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"?" withString:@"&"];

    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "url string for custom email domain %@", buf, 0xCu);
    }

    v14 = [[NSURL alloc] initWithString:v12];
    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v17 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v18 = &__kCFBooleanTrue;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v15 openSensitiveURL:v14 withOptions:v16];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "malformed custom domain URL provided to NSURLComponents. byodUrlComponent is nil", buf, 2u);
    }
  }
}

- (void)_presentCustodianInvitationWithUUID:(id)a3 fallBackURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AACustodianController);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001BC0;
  v11[3] = &unk_1000103C0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  [v8 displayInvitationUIWithUUID:v9 completion:v11];
}

- (void)_presentInheritanceInvitationWithBeneficiaryID:(id)a3 fallBackURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to present Inheritance Invitation UI...", buf, 2u);
  }

  v9 = objc_alloc_init(AAInheritanceController);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001E38;
  v12[3] = &unk_1000103C0;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  [v9 presentInheritanceInvitationUIWithBeneficiaryID:v10 completion:v12];
}

- (void)_handleMailImportURL:(id)a3
{
  v3 = a3;
  v4 = [[NSURLComponents alloc] initWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail/MAIL_IMPORT"];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [[NSURLQueryItem alloc] initWithName:@"state" value:v3];
    [v6 addObject:v7];

    [v5 setQueryItems:v6];
    v8 = [v5 string];
    v9 = [v8 stringByReplacingOccurrencesOfString:@"?" withString:@"&"];

    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "url string for Unified Settings - mail import %@", &v13, 0xCu);
    }

    v11 = [[NSURL alloc] initWithString:v9];
    v12 = +[LSApplicationWorkspace defaultWorkspace];
    [v12 openSensitiveURL:v11 withOptions:0];
  }

  else
  {
    v6 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail/MAIL_IMPORT"];
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    [v9 openSensitiveURL:v6 withOptions:0];
  }
}

@end