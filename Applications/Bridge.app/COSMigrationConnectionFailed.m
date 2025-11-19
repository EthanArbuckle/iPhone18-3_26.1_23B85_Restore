@interface COSMigrationConnectionFailed
- (COSMigrationConnectionFailed)init;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation COSMigrationConnectionFailed

- (COSMigrationConnectionFailed)init
{
  v5.receiver = self;
  v5.super_class = COSMigrationConnectionFailed;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSMigrationConnectionFailed *)v2 setStyle:66];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSMigrationConnectionFailed *)self navigationController];
  [v5 setNavigationBarHidden:1];

  v6.receiver = self;
  v6.super_class = COSMigrationConnectionFailed;
  [(COSMigrationConnectionFailed *)&v6 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSMigrationConnectionFailed *)self navigationController];
  [v5 setNavigationBarHidden:0];

  v6.receiver = self;
  v6.super_class = COSMigrationConnectionFailed;
  [(COSMigrationConnectionFailed *)&v6 viewWillDisappear:v3];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCH_IS_OFF_OR_ALREADY_PAIRED_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MIGRATION_CONNECTION_FAILED_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSMigrationConnectionFailed suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(COSMigrationConnectionFailed *)self dismissViewControllerAnimated:1 completion:0];
}

@end