@interface NSNotification(AVTAvatarStoreNotification)
- (id)_avtui_changedRecordIdentifiers;
@end

@implementation NSNotification(AVTAvatarStoreNotification)

- (id)_avtui_changedRecordIdentifiers
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"changedRecordIDs"];

  return v2;
}

@end