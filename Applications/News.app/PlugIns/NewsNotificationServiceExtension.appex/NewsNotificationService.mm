@interface NewsNotificationService
- (void)didReceiveNotificationRequest:(id)request withContentHandler:(id)handler;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation NewsNotificationService

- (void)didReceiveNotificationRequest:(id)request withContentHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_100018498(requestCopy, selfCopy, v6);
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