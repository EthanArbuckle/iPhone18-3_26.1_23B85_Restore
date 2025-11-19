@interface CellularPlanUserNotificationDelegate
- (void)publishUserNotificationWithBundleIdentifier:(id)a3 requestIdentifier:(id)a4 title:(id)a5 body:(id)a6 subtitle:(id)a7 actionUrl:(id)a8 destinations:(unint64_t)a9;
- (void)publishUserNotificationWithBundleIdentifier:(id)a3 title:(id)a4 body:(id)a5 csn:(id)a6;
- (void)removeNotificationWithBundleIdentifier:(id)a3 requestIdentifier:(id)a4;
@end

@implementation CellularPlanUserNotificationDelegate

- (void)publishUserNotificationWithBundleIdentifier:(id)a3 title:(id)a4 body:(id)a5 csn:(id)a6
{
  v22 = a4;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_new();
  v13 = [NSString localizedUserNotificationStringForKey:v22 arguments:0];
  [v12 setTitle:v13];

  v14 = [NSString localizedUserNotificationStringForKey:v10 arguments:0];

  [v12 setBody:v14];
  v15 = +[UNNotificationSound defaultSound];
  [v12 setSound:v15];

  [v12 setInterruptionLevel:2];
  v16 = [UNNotificationIcon iconNamed:@"CellularIcon"];
  [v12 setIcon:v16];

  v17 = [NSMutableString stringWithString:@"bridge:root=CELLULAR_ID"];
  if (v9)
  {
    v18 = [NSString stringWithFormat:@"&csn=%@", v9];
    [v17 appendString:v18];
  }

  v19 = [NSURL URLWithString:v17];
  [v12 setDefaultActionURL:v19];

  v20 = [UNNotificationRequest requestWithIdentifier:v22 content:v12 trigger:0];
  v21 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:v11];

  [v21 addNotificationRequest:v20 withCompletionHandler:0];
}

- (void)publishUserNotificationWithBundleIdentifier:(id)a3 requestIdentifier:(id)a4 title:(id)a5 body:(id)a6 subtitle:(id)a7 actionUrl:(id)a8 destinations:(unint64_t)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v28 = objc_opt_new();
  v20 = [NSString localizedUserNotificationStringForKey:v17 arguments:0];

  [v28 setTitle:v20];
  v21 = [NSString localizedUserNotificationStringForKey:v16 arguments:0];

  [v28 setBody:v21];
  v22 = [NSString localizedUserNotificationStringForKey:v15 arguments:0];

  [v28 setFooter:v22];
  v23 = +[UNNotificationSound defaultSound];
  [v28 setSound:v23];

  v24 = [NSURL URLWithString:v14];

  [v28 setDefaultActionURL:v24];
  v25 = [UNNotificationIcon iconNamed:@"CellularIcon"];
  [v28 setIcon:v25];

  v26 = [UNNotificationRequest requestWithIdentifier:v18 content:v28 trigger:0 destinations:a9];

  v27 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:v19];
  [v27 addNotificationRequest:v26 withCompletionHandler:0];
}

- (void)removeNotificationWithBundleIdentifier:(id)a3 requestIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:v6];

  v11 = v5;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 removePendingNotificationRequestsWithIdentifiers:v8];

  v10 = v5;
  v9 = [NSArray arrayWithObjects:&v10 count:1];

  [v7 removeDeliveredNotificationsWithIdentifiers:v9];
}

@end