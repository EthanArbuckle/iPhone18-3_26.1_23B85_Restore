@interface WKWebsiteDataStoreBSActionHandler
@end

@implementation WKWebsiteDataStoreBSActionHandler

uint64_t __65___WKWebsiteDataStoreBSActionHandler_handleNotificationResponse___block_invoke(uint64_t a1)
{
  v2 = (*(*(+[_WKWebsiteDataStoreBSActionHandler shared]+ 8) + 16))();
  v3 = *(a1 + 32);

  return [v2 _handleWebPushAction:v3];
}

@end