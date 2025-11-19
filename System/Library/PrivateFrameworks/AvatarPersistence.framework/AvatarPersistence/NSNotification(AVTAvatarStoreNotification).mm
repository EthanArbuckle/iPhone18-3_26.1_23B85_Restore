@interface NSNotification(AVTAvatarStoreNotification)
- (id)_avtui_changedRecordIdentifiers;
@end

@implementation NSNotification(AVTAvatarStoreNotification)

- (id)_avtui_changedRecordIdentifiers
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"changedRecordIDs"];

  return v2;
}

@end