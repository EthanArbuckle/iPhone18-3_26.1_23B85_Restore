@interface JSNetwork
- (BOOL)isConnected;
@end

@implementation JSNetwork

- (BOOL)isConnected
{
  v2 = self;
  v3 = sub_100054F3C();

  return v3 & 1;
}

@end