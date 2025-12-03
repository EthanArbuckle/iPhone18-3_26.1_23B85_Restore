@interface InboxInviteeResponsesGroupController
- (id)filteredNotificationsFromArray:(id)array;
- (id)titleForHeader;
@end

@implementation InboxInviteeResponsesGroupController

- (id)titleForHeader
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Invitee Responses" value:&stru_1002133B8 table:0];

  return v3;
}

- (id)filteredNotificationsFromArray:(id)array
{
  arrayCopy = array;
  v4 = [NSPredicate predicateWithBlock:&stru_100210620];
  v5 = [arrayCopy filteredArrayUsingPredicate:v4];

  return v5;
}

@end