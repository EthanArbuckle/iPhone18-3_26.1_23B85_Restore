@interface ATLockdownMessageLink
- (ATLockdownMessageLink)initWithSocket:(id)a3;
- (BOOL)isWifiConnection;
@end

@implementation ATLockdownMessageLink

- (BOOL)isWifiConnection
{
  v2 = [(ATConcreteMessageLink *)self socket];
  v3 = [v2 isWifi];

  return v3;
}

- (ATLockdownMessageLink)initWithSocket:(id)a3
{
  v6.receiver = self;
  v6.super_class = ATLockdownMessageLink;
  v3 = [(ATConcreteMessageLink *)&v6 initWithSocket:a3];
  v4 = v3;
  if (v3)
  {
    [(ATConcreteMessageLink *)v3 setEndpointType:0];
  }

  return v4;
}

@end