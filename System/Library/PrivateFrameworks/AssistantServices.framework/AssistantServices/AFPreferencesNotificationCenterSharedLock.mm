@interface AFPreferencesNotificationCenterSharedLock
@end

@implementation AFPreferencesNotificationCenterSharedLock

void ___AFPreferencesNotificationCenterSharedLock_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _AFPreferencesNotificationCenterSharedLock_sharedLock;
  _AFPreferencesNotificationCenterSharedLock_sharedLock = v0;
}

@end