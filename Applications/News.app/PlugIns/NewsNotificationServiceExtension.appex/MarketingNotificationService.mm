@interface MarketingNotificationService
- (BOOL)supportsHandling:(id)handling;
- (void)didReceive:(id)receive withContentHandler:(id)handler;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation MarketingNotificationService

- (BOOL)supportsHandling:(id)handling
{
  v4 = objc_opt_self();

  return [v4 shouldHandleServiceExtensionNotificationRequest:handling];
}

- (void)didReceive:(id)receive withContentHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  receiveCopy = receive;

  sub_100016F58(receiveCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)serviceExtensionTimeWillExpire
{

  sub_100016C34();
}

@end