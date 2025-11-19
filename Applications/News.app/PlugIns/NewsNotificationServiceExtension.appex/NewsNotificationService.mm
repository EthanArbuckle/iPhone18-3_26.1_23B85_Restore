@interface NewsNotificationService
- (void)didReceiveNotificationRequest:(id)a3 withContentHandler:(id)a4;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation NewsNotificationService

- (void)didReceiveNotificationRequest:(id)a3 withContentHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100018498(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)serviceExtensionTimeWillExpire
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC32NewsNotificationServiceExtension23NewsNotificationService_activeService);
  if (v2)
  {
    [v2 serviceExtensionTimeWillExpire];
  }
}

@end