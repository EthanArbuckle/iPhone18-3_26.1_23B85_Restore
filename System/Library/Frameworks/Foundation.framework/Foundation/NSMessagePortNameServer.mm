@interface NSMessagePortNameServer
+ (id)sharedInstance;
- (NSPort)portForName:(NSString *)name;
- (NSPort)portForName:(NSString *)name host:(NSString *)host;
@end

@implementation NSMessagePortNameServer

+ (id)sharedInstance
{
  result = sharedInstance___NSMessagePortNameServerShared;
  if (!sharedInstance___NSMessagePortNameServerShared)
  {
    result = [objc_allocWithZone(self) init];
    sharedInstance___NSMessagePortNameServerShared = result;
  }

  return result;
}

- (NSPort)portForName:(NSString *)name
{
  v3 = [objc_allocWithZone(NSMessagePort) initWithRemoteName:name];

  return v3;
}

- (NSPort)portForName:(NSString *)name host:(NSString *)host
{
  if (host && ![&stru_1EEEFDF90 isEqual:host])
  {
    return 0;
  }

  return [(NSMessagePortNameServer *)self portForName:name];
}

@end