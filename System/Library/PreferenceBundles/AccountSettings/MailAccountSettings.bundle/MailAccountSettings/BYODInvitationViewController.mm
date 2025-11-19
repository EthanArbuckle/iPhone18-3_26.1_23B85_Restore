@interface BYODInvitationViewController
+ (id)log;
- (BYODInvitationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 acAccount:(id)a6 domainName:(id)a7;
- (void)_acceptButtonTapped:(id)a3;
- (void)_declineLinkTapped:(id)a3;
- (void)_showErrorAlert;
@end

@implementation BYODInvitationViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4EC40;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6570 != -1)
  {
    dispatch_once(&qword_D6570, block);
  }

  v2 = qword_D6568;

  return v2;
}

- (BYODInvitationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 acAccount:(id)a6 domainName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v14 iconType];
  if (v17)
  {
    if (v17 != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    v18 = [v14 image];
    v30.receiver = self;
    v30.super_class = BYODInvitationViewController;
    v19 = [(BYODInvitationViewController *)&v30 initWithTitle:v12 detailText:v13 icon:v18];
  }

  else
  {
    v18 = [v14 symbolName];
    v29.receiver = self;
    v29.super_class = BYODInvitationViewController;
    v19 = [(BYODInvitationViewController *)&v29 initWithTitle:v12 detailText:v13 symbolName:v18];
  }

  self = v19;

LABEL_6:
  if (self)
  {
    objc_storeStrong(&self->_domainName, a7);
    objc_storeStrong(&self->_loggedInICloudAccount, a6);
    v20 = +[OBBoldTrayButton boldButton];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"BYOD_INVITE_ACCEPT_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v20 setTitle:v22 forState:0];

    [v20 addTarget:self action:"_acceptButtonTapped:" forControlEvents:64];
    v23 = [(BYODInvitationViewController *)self buttonTray];
    [v23 addButton:v20];

    v24 = +[OBLinkTrayButton linkButton];
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"BYOD_INVITE_DECLINE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v24 setTitle:v26 forState:0];

    [v24 addTarget:self action:"_declineLinkTapped:" forControlEvents:64];
    v27 = [(BYODInvitationViewController *)self buttonTray];
    [v27 addButton:v24];
  }

  return self;
}

- (void)_acceptButtonTapped:(id)a3
{
  v4 = a3;
  v5 = +[BYODInvitationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ACAccount *)self->_loggedInICloudAccount normalizedDSID];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "member %@ accepted invite", buf, 0xCu);
  }

  v7 = [BYODAcceptInviteRequest alloc];
  loggedInICloudAccount = self->_loggedInICloudAccount;
  v9 = [(ACAccount *)loggedInICloudAccount accountStore];
  v10 = [(BYODAcceptInviteRequest *)v7 initWithAccount:loggedInICloudAccount accountStore:v9 domain:self->_domainName];

  objc_initWeak(buf, self);
  v11 = v4;
  [v11 showsBusyIndicator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4F23C;
  v13[3] = &unk_B95E8;
  objc_copyWeak(&v15, buf);
  v12 = v11;
  v14 = v12;
  [(BYODAcceptInviteRequest *)v10 performRequestWithCallback:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_declineLinkTapped:(id)a3
{
  v4 = +[BYODInvitationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ACAccount *)self->_loggedInICloudAccount normalizedDSID];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "member %@ declined invite", buf, 0xCu);
  }

  v6 = [BYODDeclineInviteRequest alloc];
  loggedInICloudAccount = self->_loggedInICloudAccount;
  v8 = [(ACAccount *)loggedInICloudAccount accountStore];
  v9 = [(BYODDeclineInviteRequest *)v6 initWithAccount:loggedInICloudAccount accountStore:v8 domain:self->_domainName];

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4F7C8;
  v10[3] = &unk_B91F0;
  objc_copyWeak(&v11, buf);
  [(BYODDeclineInviteRequest *)v9 performRequestWithCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_showErrorAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v5 addAction:v8];
  v12 = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

@end