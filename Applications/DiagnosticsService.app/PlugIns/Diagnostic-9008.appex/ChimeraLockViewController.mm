@interface ChimeraLockViewController
- (ChimeraLockViewController)initWithComponent:(id)component status:(id)status;
- (StartPreflightNavigationCoordinator)coordinator;
- (void)_continueTapped;
@end

@implementation ChimeraLockViewController

- (ChimeraLockViewController)initWithComponent:(id)component status:(id)status
{
  statusCopy = status;
  componentCopy = component;
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];
  v10 = @"iphone.slash";
  if (userInterfaceIdiom == 1)
  {
    v10 = @"ipad.gen2.slash";
  }

  v11 = v10;

  v12 = [CRDeviceMap getComponentTypeWithSPC:componentCopy];
  v13 = [CRLocalization localizedStringWithFormat:@"UNABLE_CONFIGURE_%@" component:v12];
  if ([statusCopy isEqualToString:@"LOST"])
  {
    v14 = @"ACTIVATION_LOST_DETAIL_TEXT";
LABEL_7:
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:v14 value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];

    v24.receiver = self;
    v24.super_class = ChimeraLockViewController;
    v17 = [(OBBoldSubtitleController *)&v24 initWithTitle:v13 subtitle:0 detailText:v16 symbolName:v11];
    if (v17)
    {
      v18 = +[OBBoldTrayButton boldButton];
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"CONTINUE_BUTTON_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
      [v18 setTitle:v20 forState:0];

      [v18 addTarget:v17 action:"_continueTapped" forControlEvents:64];
      buttonTray = [(ChimeraLockViewController *)v17 buttonTray];
      [buttonTray addButton:v18];
    }

    self = v17;
    selfCopy = self;
    goto LABEL_13;
  }

  if ([statusCopy isEqualToString:@"DENIED"])
  {
    v14 = @"CHIMERA_LOCK_DETAIL_TEXT";
    goto LABEL_7;
  }

  v16 = handleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10000D6E8(v16);
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (void)_continueTapped
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ChimeraLockViewController _continueTapped]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  coordinator = [(ChimeraLockViewController *)self coordinator];
  [coordinator moveToNextViewController];
}

- (StartPreflightNavigationCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end