@interface NotificationObserver
+ (void)handleNFCNotification:(id)notification;
- (void)handleNFCNotification:(id)notification;
- (void)timezoneChanged;
@end

@implementation NotificationObserver

- (void)timezoneChanged
{
  selfCopy = self;
  sub_10017F8F4();
}

- (void)handleNFCNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100180034(notificationCopy);
}

+ (void)handleNFCNotification:(id)notification
{
  swift_getObjCClassMetadata();
  notificationCopy = notification;
  sub_100180338(notificationCopy);
}

@end