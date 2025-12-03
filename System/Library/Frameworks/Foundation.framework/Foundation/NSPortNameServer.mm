@interface NSPortNameServer
+ (NSPortNameServer)systemDefaultPortNameServer;
- (id)_replyPort:(id)port;
@end

@implementation NSPortNameServer

+ (NSPortNameServer)systemDefaultPortNameServer
{
  result = systemDefaultPortNameServer___NSDefaultNameServer;
  if (!systemDefaultPortNameServer___NSDefaultNameServer)
  {
    result = +[NSMachBootstrapServer sharedInstance];
    systemDefaultPortNameServer___NSDefaultNameServer = result;
  }

  return result;
}

- (id)_replyPort:(id)port
{
  if (!port)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 port];
}

@end