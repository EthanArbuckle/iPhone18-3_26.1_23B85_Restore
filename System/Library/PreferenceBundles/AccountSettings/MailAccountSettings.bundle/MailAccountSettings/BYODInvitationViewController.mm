@interface BYODInvitationViewController
+ (id)log;
- (BYODInvitationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon acAccount:(id)account domainName:(id)name;
- (void)_acceptButtonTapped:(id)tapped;
- (void)_declineLinkTapped:(id)tapped;
- (void)_showErrorAlert;
@end

@implementation BYODInvitationViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4EC40;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6570 != -1)
  {
    dispatch_once(&qword_D6570, block);
  }

  v2 = qword_D6568;

  return v2;
}

- (BYODInvitationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon acAccount:(id)account domainName:(id)name
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  accountCopy = account;
  nameCopy = name;
  iconType = [iconCopy iconType];
  if (iconType)
  {
    if (iconType != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    image = [iconCopy image];
    v30.receiver = self;
    v30.super_class = BYODInvitationViewController;
    v19 = [(BYODInvitationViewController *)&v30 initWithTitle:titleCopy detailText:textCopy icon:image];
  }

  else
  {
    image = [iconCopy symbolName];
    v29.receiver = self;
    v29.super_class = BYODInvitationViewController;
    v19 = [(BYODInvitationViewController *)&v29 initWithTitle:titleCopy detailText:textCopy symbolName:image];
  }

  self = v19;

LABEL_6:
  if (self)
  {
    objc_storeStrong(&self->_domainName, name);
    objc_storeStrong(&self->_loggedInICloudAccount, account);
    v20 = +[OBBoldTrayButton boldButton];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"BYOD_INVITE_ACCEPT_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v20 setTitle:v22 forState:0];

    [v20 addTarget:self action:"_acceptButtonTapped:" forControlEvents:64];
    buttonTray = [(BYODInvitationViewController *)self buttonTray];
    [buttonTray addButton:v20];

    v24 = +[OBLinkTrayButton linkButton];
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"BYOD_INVITE_DECLINE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v24 setTitle:v26 forState:0];

    [v24 addTarget:self action:"_declineLinkTapped:" forControlEvents:64];
    buttonTray2 = [(BYODInvitationViewController *)self buttonTray];
    [buttonTray2 addButton:v24];
  }

  return self;
}

- (void)_acceptButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[BYODInvitationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    normalizedDSID = [(ACAccount *)self->_loggedInICloudAccount normalizedDSID];
    *buf = 138412290;
    v17 = normalizedDSID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "member %@ accepted invite", buf, 0xCu);
  }

  v7 = [BYODAcceptInviteRequest alloc];
  loggedInICloudAccount = self->_loggedInICloudAccount;
  accountStore = [(ACAccount *)loggedInICloudAccount accountStore];
  v10 = [(BYODAcceptInviteRequest *)v7 initWithAccount:loggedInICloudAccount accountStore:accountStore domain:self->_domainName];

  objc_initWeak(buf, self);
  v11 = tappedCopy;
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

- (void)_declineLinkTapped:(id)tapped
{
  v4 = +[BYODInvitationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    normalizedDSID = [(ACAccount *)self->_loggedInICloudAccount normalizedDSID];
    *buf = 138412290;
    v13 = normalizedDSID;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "member %@ declined invite", buf, 0xCu);
  }

  v6 = [BYODDeclineInviteRequest alloc];
  loggedInICloudAccount = self->_loggedInICloudAccount;
  accountStore = [(ACAccount *)loggedInICloudAccount accountStore];
  v9 = [(BYODDeclineInviteRequest *)v6 initWithAccount:loggedInICloudAccount accountStore:accountStore domain:self->_domainName];

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
  selfCopy = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

@end