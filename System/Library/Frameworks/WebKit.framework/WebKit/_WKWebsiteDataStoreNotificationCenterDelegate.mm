@interface _WKWebsiteDataStoreNotificationCenterDelegate
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation _WKWebsiteDataStoreNotificationCenterDelegate

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  [WKWebsiteDataStore handleNotificationResponse:response];
  v6 = *(handler + 2);

  v6(handler);
}

@end