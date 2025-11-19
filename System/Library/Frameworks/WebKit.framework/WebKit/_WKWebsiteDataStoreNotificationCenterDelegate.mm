@interface _WKWebsiteDataStoreNotificationCenterDelegate
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation _WKWebsiteDataStoreNotificationCenterDelegate

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  [WKWebsiteDataStore handleNotificationResponse:a4];
  v6 = *(a5 + 2);

  v6(a5);
}

@end