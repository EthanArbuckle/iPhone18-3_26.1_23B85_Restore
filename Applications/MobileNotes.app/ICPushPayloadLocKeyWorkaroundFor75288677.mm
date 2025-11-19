@interface ICPushPayloadLocKeyWorkaroundFor75288677
- (ICPushPayloadLocKeyWorkaroundFor75288677)init;
@end

@implementation ICPushPayloadLocKeyWorkaroundFor75288677

- (ICPushPayloadLocKeyWorkaroundFor75288677)init
{
  v14.receiver = self;
  v14.super_class = ICPushPayloadLocKeyWorkaroundFor75288677;
  v2 = [(ICPushPayloadLocKeyWorkaroundFor75288677 *)&v14 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"MENTION_NOTIFICATION_TITLE" value:@"You were mentioned" table:@"Localizable"];

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"MENTION_NOTIFICATION_TITLE_WITH_SENDER" value:@"%1$@ mentioned you" table:@"Localizable"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"MENTION_NOTIFICATION_TITLE_ALL" value:@"Somebody mentioned everyone" table:@"Localizable"];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"MENTION_NOTIFICATION_TITLE_ALL_WITH_SENDER" value:@"%1$@ mentioned everyone" table:@"Localizable"];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"MENTION_NOTIFICATION_SNIPPET" value:@"In “%1$@” – %2$@" table:@"Localizable"];
  }

  return v2;
}

@end