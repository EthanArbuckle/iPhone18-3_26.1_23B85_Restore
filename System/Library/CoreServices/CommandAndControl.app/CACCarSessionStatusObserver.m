@interface CACCarSessionStatusObserver
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CACCarSessionStatusObserver

- (void)sessionDidConnect:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kCACRepostEnabledStatusNotification" object:0];
}

- (void)sessionDidDisconnect:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kCACRepostEnabledStatusNotification" object:0];
}

@end