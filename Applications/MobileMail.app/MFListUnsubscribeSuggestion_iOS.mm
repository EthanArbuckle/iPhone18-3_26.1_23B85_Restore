@interface MFListUnsubscribeSuggestion_iOS
+ (id)log;
- (id)_createConfirmationViewController;
- (id)suggestionDismissAction;
- (id)suggestionImageSGView;
- (id)suggestionPrimaryAction;
- (void)_showErrorAlert:(id)alert;
- (void)ignore;
- (void)unsubscribe;
@end

@implementation MFListUnsubscribeSuggestion_iOS

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1378;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD510 != -1)
  {
    dispatch_once(&qword_1006DD510, block);
  }

  v2 = qword_1006DD508;

  return v2;
}

- (id)suggestionPrimaryAction
{
  suggestionPrimaryActionString = [objc_opt_class() suggestionPrimaryActionString];
  if ([(MFListUnsubscribeSuggestion_iOS *)self shouldShowICloudUnsubscribe])
  {
    suggestionPrimaryActionStringICloud = [objc_opt_class() suggestionPrimaryActionStringICloud];

    suggestionPrimaryActionString = suggestionPrimaryActionStringICloud;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D14F4;
  v7[3] = &unk_100654250;
  v7[4] = self;
  v5 = [SGSuggestionAction actionWithTitle:suggestionPrimaryActionString handler:v7];

  return v5;
}

- (id)suggestionDismissAction
{
  suggestionDismissActionTitle = [objc_opt_class() suggestionDismissActionTitle];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D166C;
  v6[3] = &unk_100654250;
  v6[4] = self;
  v4 = [SGSuggestionAction actionWithTitle:suggestionDismissActionTitle handler:v6];

  return v4;
}

- (id)suggestionImageSGView
{
  v2 = objc_alloc_init(UIImageView);
  v3 = +[NSBundle mui_MailUIBundle];
  v4 = [UIImage imageNamed:MUICustomImageGlyphNameUnsubscribe inBundle:v3];
  [v2 setImage:v4];

  [v2 setContentMode:1];
  v5 = +[UIColor mailInteractiveColor];
  [v2 setTintColor:v5];

  return v2;
}

- (id)_createConfirmationViewController
{
  listUnsubscribeCommand = [(MFListUnsubscribeSuggestion_iOS *)self listUnsubscribeCommand];
  v4 = [MFListUnsubscribeMessageGenerator_iOS senderForCommand:listUnsubscribeCommand];

  unsubscribeTitleAlertString = [objc_opt_class() unsubscribeTitleAlertString];
  unsubscribeMessageAlertString = [(MFListUnsubscribeSuggestion_iOS *)self unsubscribeMessageAlertString];
  v7 = [NSString stringWithFormat:unsubscribeMessageAlertString, v4];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ALERT_UNSUBSCRIBE_CONFIRM" value:&stru_100662A88 table:@"Main"];

  if ([(MFListUnsubscribeSuggestion_iOS *)self shouldShowICloudUnsubscribe])
  {
    unsubscribeTitleAlertStringICloud = [objc_opt_class() unsubscribeTitleAlertStringICloud];

    v11 = _EFLocalizedStringFromTable();

    v9 = v11;
  }

  else
  {
    unsubscribeTitleAlertStringICloud = unsubscribeTitleAlertString;
  }

  v12 = [UIAlertController alertControllerWithTitle:unsubscribeTitleAlertStringICloud message:v7 preferredStyle:1];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D1ACC;
  v18[3] = &unk_100650FD0;
  objc_copyWeak(&v19, &location);
  v16 = [UIAlertAction actionWithTitle:v9 style:0 handler:v18];
  [v12 addAction:v15];
  [v12 addAction:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v12;
}

- (void)unsubscribe
{
  contentRepresentation = [(MFListUnsubscribeSuggestion_iOS *)self contentRepresentation];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D1BCC;
  v5[3] = &unk_10064D028;
  v5[4] = self;
  v4 = [contentRepresentation performUnsubscribeAction:1 completion:v5];
}

- (void)ignore
{
  contentRepresentation = [(MFListUnsubscribeSuggestion_iOS *)self contentRepresentation];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D1FF0;
  v6[3] = &unk_10064D028;
  v6[4] = self;
  v4 = [contentRepresentation performUnsubscribeAction:0 completion:v6];

  v5.receiver = self;
  v5.super_class = MFListUnsubscribeSuggestion_iOS;
  [(MFListUnsubscribeSuggestion_iOS *)&v5 ignore];
}

- (void)_showErrorAlert:(id)alert
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D2168;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

@end