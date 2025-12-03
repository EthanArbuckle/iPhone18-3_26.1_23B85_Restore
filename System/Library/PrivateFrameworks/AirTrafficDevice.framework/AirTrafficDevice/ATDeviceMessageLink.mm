@interface ATDeviceMessageLink
+ (id)deviceMessageLink;
- (ATDeviceMessageLink)initWithSocket:(id)socket;
@end

@implementation ATDeviceMessageLink

- (ATDeviceMessageLink)initWithSocket:(id)socket
{
  v6.receiver = self;
  v6.super_class = ATDeviceMessageLink;
  v3 = [(ATConcreteMessageLink *)&v6 initWithSocket:socket];
  if (v3)
  {
    v4 = +[ATDeviceSettings sharedInstance];
    -[ATConcreteMessageLink setEndpointType:](v3, "setEndpointType:", [v4 isDeviceLinkClient] ^ 1);
  }

  return v3;
}

+ (id)deviceMessageLink
{
  v2 = objc_alloc_init(ATDeviceMessageLink);

  return v2;
}

@end