@interface InvalidatePortHelper
@end

@implementation InvalidatePortHelper

void ___lock_InvalidatePortHelper_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (!strcmp("com.apple.backboard.hid.services", v1))
    {
      v2 = @"kBKSHIDServerDiedNotification";
    }

    else
    {
      if (strcmp("com.apple.backboard.display.services", v1))
      {
        return;
      }

      v2 = @"kBKSDisplayServerDiedNotification";
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, v2, 0, 0, 1u);
  }
}

@end