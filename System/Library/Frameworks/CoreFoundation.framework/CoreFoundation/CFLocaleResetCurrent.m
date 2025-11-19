@interface CFLocaleResetCurrent
@end

@implementation CFLocaleResetCurrent

void ____CFLocaleResetCurrent_block_invoke()
{
  +[NSLocale _resetCurrent];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFLocaleCurrentLocaleDidChangeNotification-4", 0, 0, 1u);
  CFNotificationCenterPostNotification(LocalCenter, @"kCFLocaleCurrentLocaleDidChangeNotification-2", 0, 0, 1u);

  CFNotificationCenterPostNotification(LocalCenter, @"kCFLocaleCurrentLocaleDidChangeNotification", 0, 0, 1u);
}

@end