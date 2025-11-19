@interface UIViewController
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation UIViewController

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  NSLog(@"[AppStoreDaemon] This should never be called.");
  v4[2](v4, 1);
}

@end