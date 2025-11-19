@interface CHMoveModeNotificationResponseCoordinator
+ (BOOL)shouldHandleNotificationCategoryIdentifier:(id)a3;
+ (void)handleNotificationResponse:(id)a3 presentingNavigationController:(id)a4 healthStore:(id)a5 formattingManager:(id)a6;
@end

@implementation CHMoveModeNotificationResponseCoordinator

+ (BOOL)shouldHandleNotificationCategoryIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[FCNotificationRequestConstants moveModeNotificationCategory];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[FCNotificationRequestConstants moveModeChangeModeNotificationCategory];
    if ([v3 isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[FCNotificationRequestConstants moveModeChangeGoalsNotificationCategory];
      v5 = [v3 isEqualToString:v7];
    }
  }

  return v5;
}

+ (void)handleNotificationResponse:(id)a3 presentingNavigationController:(id)a4 healthStore:(id)a5 formattingManager:(id)a6
{
  v9 = a3;
  v10 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013AE3C;
  v15[3] = &unk_10083C7A8;
  v16 = v9;
  v17 = a5;
  v18 = a6;
  v19 = v10;
  v11 = v10;
  v12 = v18;
  v13 = v17;
  v14 = v9;
  [v11 dismissViewControllerAnimated:0 completion:v15];
}

@end