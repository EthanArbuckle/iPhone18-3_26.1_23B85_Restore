@interface CACCarSessionStatusObserver
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CACCarSessionStatusObserver

- (void)sessionDidConnect:(id)connect
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kCACRepostEnabledStatusNotification" object:0];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kCACRepostEnabledStatusNotification" object:0];
}

@end