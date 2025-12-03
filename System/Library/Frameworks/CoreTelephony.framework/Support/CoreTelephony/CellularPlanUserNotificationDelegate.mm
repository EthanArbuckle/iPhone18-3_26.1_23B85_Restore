@interface CellularPlanUserNotificationDelegate
- (void)publishUserNotificationWithBundleIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier title:(id)title body:(id)body subtitle:(id)subtitle actionUrl:(id)url destinations:(unint64_t)destinations;
- (void)publishUserNotificationWithBundleIdentifier:(id)identifier title:(id)title body:(id)body csn:(id)csn;
- (void)removeNotificationWithBundleIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
@end

@implementation CellularPlanUserNotificationDelegate

- (void)publishUserNotificationWithBundleIdentifier:(id)identifier title:(id)title body:(id)body csn:(id)csn
{
  titleCopy = title;
  csnCopy = csn;
  bodyCopy = body;
  identifierCopy = identifier;
  v12 = objc_opt_new();
  v13 = [NSString localizedUserNotificationStringForKey:titleCopy arguments:0];
  [v12 setTitle:v13];

  v14 = [NSString localizedUserNotificationStringForKey:bodyCopy arguments:0];

  [v12 setBody:v14];
  v15 = +[UNNotificationSound defaultSound];
  [v12 setSound:v15];

  [v12 setInterruptionLevel:2];
  v16 = [UNNotificationIcon iconNamed:@"CellularIcon"];
  [v12 setIcon:v16];

  v17 = [NSMutableString stringWithString:@"bridge:root=CELLULAR_ID"];
  if (csnCopy)
  {
    csnCopy = [NSString stringWithFormat:@"&csn=%@", csnCopy];
    [v17 appendString:csnCopy];
  }

  v19 = [NSURL URLWithString:v17];
  [v12 setDefaultActionURL:v19];

  v20 = [UNNotificationRequest requestWithIdentifier:titleCopy content:v12 trigger:0];
  v21 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:identifierCopy];

  [v21 addNotificationRequest:v20 withCompletionHandler:0];
}

- (void)publishUserNotificationWithBundleIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier title:(id)title body:(id)body subtitle:(id)subtitle actionUrl:(id)url destinations:(unint64_t)destinations
{
  urlCopy = url;
  subtitleCopy = subtitle;
  bodyCopy = body;
  titleCopy = title;
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  v28 = objc_opt_new();
  v20 = [NSString localizedUserNotificationStringForKey:titleCopy arguments:0];

  [v28 setTitle:v20];
  v21 = [NSString localizedUserNotificationStringForKey:bodyCopy arguments:0];

  [v28 setBody:v21];
  v22 = [NSString localizedUserNotificationStringForKey:subtitleCopy arguments:0];

  [v28 setFooter:v22];
  v23 = +[UNNotificationSound defaultSound];
  [v28 setSound:v23];

  v24 = [NSURL URLWithString:urlCopy];

  [v28 setDefaultActionURL:v24];
  v25 = [UNNotificationIcon iconNamed:@"CellularIcon"];
  [v28 setIcon:v25];

  v26 = [UNNotificationRequest requestWithIdentifier:requestIdentifierCopy content:v28 trigger:0 destinations:destinations];

  v27 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:identifierCopy];
  [v27 addNotificationRequest:v26 withCompletionHandler:0];
}

- (void)removeNotificationWithBundleIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  v7 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:identifierCopy];

  v11 = requestIdentifierCopy;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 removePendingNotificationRequestsWithIdentifiers:v8];

  v10 = requestIdentifierCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];

  [v7 removeDeliveredNotificationsWithIdentifiers:v9];
}

@end