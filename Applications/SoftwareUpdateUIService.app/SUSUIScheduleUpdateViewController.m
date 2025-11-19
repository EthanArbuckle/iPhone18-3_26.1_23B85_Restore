@interface SUSUIScheduleUpdateViewController
+ (id)majorOSVersionStringForBuildVersion:(id)a3;
- (SUSUIScheduleUpdateViewController)initWithDescriptor:(id)a3;
- (id)buildSUSettingsAction:(unint64_t)a3;
- (id)updateIcon;
- (void)cancellationDialogRemindMeLaterButtonTapped:(id)a3;
- (void)handleCancelButtonTapped:(id)a3;
- (void)handleUpdateNowButtonTapped:(id)a3;
- (void)handleUpdateTonightButtonTapped:(id)a3;
- (void)performUpdateNow;
- (void)performUpdateTonight;
- (void)remoteLaggardsUIHostingControllerWillCancelOperation:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation SUSUIScheduleUpdateViewController

- (SUSUIScheduleUpdateViewController)initWithDescriptor:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v29->_descriptor, location[0]);
  v13 = v29;
  v23 = +[NSBundle mainBundle];
  v22 = [NSBundle localizedStringForKey:v23 value:"localizedStringForKey:value:table:" table:@"SCHEDULE_UPDATE_SCREEN_TITLE"];
  v21 = [location[0] productSystemName];
  v20 = [location[0] productVersion];
  v19 = [SUSUIScheduleUpdateViewController majorOSVersionStringForBuildVersion:?];
  v18 = [NSString stringWithFormat:v22, v21, v19];
  v17 = +[NSBundle mainBundle];
  v16 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SCHEDULE_UPDATE_DESCRIPTION"];
  v15 = [NSBundle localizedStringForKey:v17 value:"localizedStringForKey:value:table:" table:?];
  v14 = [(SUSUIScheduleUpdateViewController *)v29 updateIcon];
  v29 = 0;
  v27.receiver = v13;
  v27.super_class = SUSUIScheduleUpdateViewController;
  v24 = [(SUSUIScheduleUpdateViewController *)&v27 initWithTitle:v18 detailText:v15 icon:?];
  v29 = v24;
  objc_storeStrong(&v29, v24);

  if (v24)
  {
    v26 = +[OBBoldTrayButton boldButton];
    v5 = v26;
    v7 = +[NSBundle mainBundle];
    v6 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:@"SCHEDULE_UPDATE_UPDATE_NOW_BUTTON"];
    [v5 setTitle:? forState:?];

    [v26 addTarget:v29 action:"handleUpdateNowButtonTapped:" forControlEvents:?];
    v8 = [(SUSUIScheduleUpdateViewController *)v29 buttonTray];
    [v8 addButton:v26];

    v25 = +[OBLinkTrayButton linkButton];
    v9 = v25;
    v11 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v11 localizedStringForKey:@"SCHEDULE_UPDATE_UPDATE_TONIGHT_BUTTON" value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
    [v9 setTitle:? forState:?];

    [v25 addTarget:v29 action:"handleUpdateTonightButtonTapped:" forControlEvents:64];
    v12 = [(SUSUIScheduleUpdateViewController *)v29 buttonTray];
    [v12 addButton:v25];

    [(SUSUIScheduleUpdateViewController *)v29 becomeFirstResponder];
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  v4 = v29;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v29, 0);
  return v4;
}

- (void)handleUpdateNowButtonTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v6, "[SUSUIScheduleUpdateViewController handleUpdateNowButtonTapped:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Tapped on the update now button", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIScheduleUpdateViewController *)v5 performUpdateNow];
  objc_storeStrong(location, 0);
}

- (void)handleUpdateTonightButtonTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v6, "[SUSUIScheduleUpdateViewController handleUpdateTonightButtonTapped:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Tapped on the update tonight button", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIScheduleUpdateViewController *)v5 performUpdateTonight];
  objc_storeStrong(location, 0);
}

- (void)handleCancelButtonTapped:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v5, "[SUSUIScheduleUpdateViewController handleCancelButtonTapped:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Tapped on the cancel button", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)cancellationDialogRemindMeLaterButtonTapped:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (id)updateIcon
{
  v4 = [(SUDescriptor *)self->_descriptor documentation];
  v5 = [v4 iconImage];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v11 = [(SUDescriptor *)self->_descriptor documentation];
    v10 = 1;
    v9 = [v11 iconImage];
    v8 = 1;
    v2 = v9;
  }

  else
  {
    v7 = [UIImage systemImageNamed:@"gear" withConfiguration:0];
    v6 = 1;
    v2 = v7;
  }

  v13 = v2;
  if (v6)
  {
  }

  if (v8)
  {
  }

  if (v10)
  {
  }

  return v13;
}

+ (id)majorOSVersionStringForBuildVersion:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  if (location[0])
  {
    v7 = [location[0] componentsSeparatedByString:@"."];
    v3 = [v7 firstObject];
    v4 = v8;
    v8 = v3;
  }

  v6 = v8;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)performUpdateNow
{
  v8[2] = self;
  v8[1] = a2;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100006A18;
  v7 = &unk_1000185A8;
  v8[0] = self;
  [(SUSUIScheduleUpdateViewController *)self dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(v8, 0);
}

- (void)performUpdateTonight
{
  v10 = self;
  v9[1] = a2;
  v9[0] = SUSUILogLaggardsUI();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    v6 = [(SUSUIScheduleUpdateViewController *)v10 buildSUSettingsAction:1];
    v7 = v6;
    sub_100006BC8(v11, "[SUSUIScheduleUpdateViewController performUpdateTonight]", v7);
    _os_log_impl(&_mh_execute_header, log, type, "%s: Opening the Software Update Settings pane with URL: %@", v11, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v9, 0);
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [(SUSUIScheduleUpdateViewController *)v10 buildSUSettingsAction:2];
  [v3 openSensitiveURL:? withOptions:?];

  [(SUSUIScheduleUpdateViewController *)v10 dismissViewControllerAnimated:1 completion:0];
}

- (id)buildSUSettingsAction:(unint64_t)a3
{
  location[3] = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  if (a3 == 1)
  {
    objc_storeStrong(location, @"SUSUIUpdateNowAction");
  }

  else
  {
    if (a3 != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(location, @"SUSUIUpdateTonightAction");
  }

  v5 = [NSString stringWithFormat:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK&PerformAction=%@", location[0]];
  v7 = [NSURL URLWithString:?];

LABEL_7:
  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)remoteLaggardsUIHostingControllerWillCancelOperation:(id)a3 withCompletionBlock:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v9 = +[NSBundle mainBundle];
  v8 = [NSBundle localizedStringForKey:v9 value:"localizedStringForKey:value:table:" table:@"SCHEDULE_UPDATE_CANCELLATION_TITLE"];
  v7 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SCHEDULE_UPDATE_CANCELLATION_DESCRIPTION"];
  v5 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:?];
  v28 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v8 preferredStyle:?];

  v11 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v11 localizedStringForKey:@"SCHEDULE_UPDATE_CANCELLATION_UPDATE_BUTTON" value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
  v21[1] = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_100007394;
  v25 = &unk_100018A18;
  v26 = v29;
  v27 = [UIAlertAction actionWithTitle:"actionWithTitle:style:handler:" style:v10 handler:?];

  [(UIAlertController *)v28 addAction:v27];
  v12 = v28;
  v15 = +[NSBundle mainBundle];
  v14 = [(NSBundle *)v15 localizedStringForKey:@"SCHEDULE_UPDATE_CANCELLATION_UPDATE_REMIND_ME" value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100007400;
  v19 = &unk_100018A40;
  v20 = v31;
  v21[0] = v29;
  v13 = [UIAlertAction actionWithTitle:v14 style:0 handler:?];
  [(UIAlertController *)v12 addAction:?];

  [(UIAlertController *)v28 setPreferredAction:v27];
  [(SUSUIScheduleUpdateViewController *)v31 presentViewController:v28 animated:1 completion:0];
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

@end