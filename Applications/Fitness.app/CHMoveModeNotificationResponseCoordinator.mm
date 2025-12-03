@interface CHMoveModeNotificationResponseCoordinator
+ (BOOL)shouldHandleNotificationCategoryIdentifier:(id)identifier;
+ (void)handleNotificationResponse:(id)response presentingNavigationController:(id)controller healthStore:(id)store formattingManager:(id)manager;
@end

@implementation CHMoveModeNotificationResponseCoordinator

+ (BOOL)shouldHandleNotificationCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[FCNotificationRequestConstants moveModeNotificationCategory];
  if ([identifierCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[FCNotificationRequestConstants moveModeChangeModeNotificationCategory];
    if ([identifierCopy isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[FCNotificationRequestConstants moveModeChangeGoalsNotificationCategory];
      v5 = [identifierCopy isEqualToString:v7];
    }
  }

  return v5;
}

+ (void)handleNotificationResponse:(id)response presentingNavigationController:(id)controller healthStore:(id)store formattingManager:(id)manager
{
  responseCopy = response;
  controllerCopy = controller;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013AE3C;
  v15[3] = &unk_10083C7A8;
  v16 = responseCopy;
  storeCopy = store;
  managerCopy = manager;
  v19 = controllerCopy;
  v11 = controllerCopy;
  v12 = managerCopy;
  v13 = storeCopy;
  v14 = responseCopy;
  [v11 dismissViewControllerAnimated:0 completion:v15];
}

@end