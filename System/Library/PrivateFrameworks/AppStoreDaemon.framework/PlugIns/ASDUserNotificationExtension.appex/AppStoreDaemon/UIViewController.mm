@interface UIViewController
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
@end

@implementation UIViewController

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(@"[AppStoreDaemon] This should never be called.");
  handlerCopy[2](handlerCopy, 1);
}

@end