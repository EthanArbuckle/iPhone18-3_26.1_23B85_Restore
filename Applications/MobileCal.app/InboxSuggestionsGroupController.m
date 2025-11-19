@interface InboxSuggestionsGroupController
- (id)filteredNotificationsFromArray:(id)a3;
- (id)titleForHeader;
@end

@implementation InboxSuggestionsGroupController

- (id)titleForHeader
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Siri Suggestions" value:&stru_1002133B8 table:0];

  return v3;
}

- (id)filteredNotificationsFromArray:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&stru_100211E28];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

@end