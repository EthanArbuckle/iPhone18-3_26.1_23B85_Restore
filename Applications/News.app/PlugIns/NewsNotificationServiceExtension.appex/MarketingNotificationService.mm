@interface MarketingNotificationService
- (BOOL)supportsHandling:(id)a3;
- (void)didReceive:(id)a3 withContentHandler:(id)a4;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation MarketingNotificationService

- (BOOL)supportsHandling:(id)a3
{
  v4 = objc_opt_self();

  return [v4 shouldHandleServiceExtensionNotificationRequest:a3];
}

- (void)didReceive:(id)a3 withContentHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;

  sub_100016F58(v7, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)serviceExtensionTimeWillExpire
{

  sub_100016C34();
}

@end