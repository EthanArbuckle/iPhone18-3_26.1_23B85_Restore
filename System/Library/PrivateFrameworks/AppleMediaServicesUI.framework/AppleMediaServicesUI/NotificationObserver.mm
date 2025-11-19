@interface NotificationObserver
+ (void)handleNFCNotification:(id)a3;
- (void)handleNFCNotification:(id)a3;
- (void)timezoneChanged;
@end

@implementation NotificationObserver

- (void)timezoneChanged
{
  v2 = self;
  sub_10017F8F4();
}

- (void)handleNFCNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100180034(v4);
}

+ (void)handleNFCNotification:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_100180338(v4);
}

@end