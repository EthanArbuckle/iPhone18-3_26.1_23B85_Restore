@interface ATLockdownMessageLink
- (ATLockdownMessageLink)initWithSocket:(id)socket;
- (BOOL)isWifiConnection;
@end

@implementation ATLockdownMessageLink

- (BOOL)isWifiConnection
{
  socket = [(ATConcreteMessageLink *)self socket];
  isWifi = [socket isWifi];

  return isWifi;
}

- (ATLockdownMessageLink)initWithSocket:(id)socket
{
  v6.receiver = self;
  v6.super_class = ATLockdownMessageLink;
  v3 = [(ATConcreteMessageLink *)&v6 initWithSocket:socket];
  v4 = v3;
  if (v3)
  {
    [(ATConcreteMessageLink *)v3 setEndpointType:0];
  }

  return v4;
}

@end