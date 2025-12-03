@interface SUSUIScheduleUpdateViewController
+ (id)majorOSVersionStringForBuildVersion:(id)version;
- (SUSUIScheduleUpdateViewController)initWithDescriptor:(id)descriptor;
- (id)buildSUSettingsAction:(unint64_t)action;
- (id)updateIcon;
- (void)cancellationDialogRemindMeLaterButtonTapped:(id)tapped;
- (void)handleCancelButtonTapped:(id)tapped;
- (void)handleUpdateNowButtonTapped:(id)tapped;
- (void)handleUpdateTonightButtonTapped:(id)tapped;
- (void)performUpdateNow;
- (void)performUpdateTonight;
- (void)remoteLaggardsUIHostingControllerWillCancelOperation:(id)operation withCompletionBlock:(id)block;
@end

@implementation SUSUIScheduleUpdateViewController

- (SUSUIScheduleUpdateViewController)initWithDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  objc_storeStrong(&selfCopy->_descriptor, location[0]);
  v13 = selfCopy;
  v23 = +[NSBundle mainBundle];
  v22 = [NSBundle localizedStringForKey:v23 value:"localizedStringForKey:value:table:" table:@"SCHEDULE_UPDATE_SCREEN_TITLE"];
  productSystemName = [location[0] productSystemName];
  productVersion = [location[0] productVersion];
  v19 = [SUSUIScheduleUpdateViewController majorOSVersionStringForBuildVersion:?];
  v18 = [NSString stringWithFormat:v22, productSystemName, v19];
  v17 = +[NSBundle mainBundle];
  v16 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SCHEDULE_UPDATE_DESCRIPTION"];
  v15 = [NSBundle localizedStringForKey:v17 value:"localizedStringForKey:value:table:" table:?];
  updateIcon = [(SUSUIScheduleUpdateViewController *)selfCopy updateIcon];
  selfCopy = 0;
  v27.receiver = v13;
  v27.super_class = SUSUIScheduleUpdateViewController;
  v24 = [(SUSUIScheduleUpdateViewController *)&v27 initWithTitle:v18 detailText:v15 icon:?];
  selfCopy = v24;
  objc_storeStrong(&selfCopy, v24);

  if (v24)
  {
    v26 = +[OBBoldTrayButton boldButton];
    v5 = v26;
    v7 = +[NSBundle mainBundle];
    v6 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:@"SCHEDULE_UPDATE_UPDATE_NOW_BUTTON"];
    [v5 setTitle:? forState:?];

    [v26 addTarget:selfCopy action:"handleUpdateNowButtonTapped:" forControlEvents:?];
    buttonTray = [(SUSUIScheduleUpdateViewController *)selfCopy buttonTray];
    [buttonTray addButton:v26];

    v25 = +[OBLinkTrayButton linkButton];
    v9 = v25;
    v11 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v11 localizedStringForKey:@"SCHEDULE_UPDATE_UPDATE_TONIGHT_BUTTON" value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
    [v9 setTitle:? forState:?];

    [v25 addTarget:selfCopy action:"handleUpdateTonightButtonTapped:" forControlEvents:64];
    buttonTray2 = [(SUSUIScheduleUpdateViewController *)selfCopy buttonTray];
    [buttonTray2 addButton:v25];

    [(SUSUIScheduleUpdateViewController *)selfCopy becomeFirstResponder];
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)handleUpdateNowButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v6, "[SUSUIScheduleUpdateViewController handleUpdateNowButtonTapped:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Tapped on the update now button", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIScheduleUpdateViewController *)selfCopy performUpdateNow];
  objc_storeStrong(location, 0);
}

- (void)handleUpdateTonightButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v6, "[SUSUIScheduleUpdateViewController handleUpdateTonightButtonTapped:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Tapped on the update tonight button", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIScheduleUpdateViewController *)selfCopy performUpdateTonight];
  objc_storeStrong(location, 0);
}

- (void)handleCancelButtonTapped:(id)tapped
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v5, "[SUSUIScheduleUpdateViewController handleCancelButtonTapped:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Tapped on the cancel button", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)cancellationDialogRemindMeLaterButtonTapped:(id)tapped
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  objc_storeStrong(location, 0);
}

- (id)updateIcon
{
  documentation = [(SUDescriptor *)self->_descriptor documentation];
  iconImage = [documentation iconImage];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (iconImage)
  {
    documentation2 = [(SUDescriptor *)self->_descriptor documentation];
    v10 = 1;
    iconImage2 = [documentation2 iconImage];
    v8 = 1;
    v2 = iconImage2;
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

+ (id)majorOSVersionStringForBuildVersion:(id)version
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v8 = 0;
  if (location[0])
  {
    v7 = [location[0] componentsSeparatedByString:@"."];
    firstObject = [v7 firstObject];
    v4 = v8;
    v8 = firstObject;
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
  selfCopy = self;
  v9[1] = a2;
  v9[0] = SUSUILogLaggardsUI();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    v6 = [(SUSUIScheduleUpdateViewController *)selfCopy buildSUSettingsAction:1];
    v7 = v6;
    sub_100006BC8(v11, "[SUSUIScheduleUpdateViewController performUpdateTonight]", v7);
    _os_log_impl(&_mh_execute_header, log, type, "%s: Opening the Software Update Settings pane with URL: %@", v11, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v9, 0);
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [(SUSUIScheduleUpdateViewController *)selfCopy buildSUSettingsAction:2];
  [v3 openSensitiveURL:? withOptions:?];

  [(SUSUIScheduleUpdateViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (id)buildSUSettingsAction:(unint64_t)action
{
  location[3] = self;
  location[2] = a2;
  location[1] = action;
  location[0] = 0;
  if (action == 1)
  {
    objc_storeStrong(location, @"SUSUIUpdateNowAction");
  }

  else
  {
    if (action != 2)
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

- (void)remoteLaggardsUIHostingControllerWillCancelOperation:(id)operation withCompletionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v29 = 0;
  objc_storeStrong(&v29, block);
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
  v20 = selfCopy;
  v21[0] = v29;
  v13 = [UIAlertAction actionWithTitle:v14 style:0 handler:?];
  [(UIAlertController *)v12 addAction:?];

  [(UIAlertController *)v28 setPreferredAction:v27];
  [(SUSUIScheduleUpdateViewController *)selfCopy presentViewController:v28 animated:1 completion:0];
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

@end