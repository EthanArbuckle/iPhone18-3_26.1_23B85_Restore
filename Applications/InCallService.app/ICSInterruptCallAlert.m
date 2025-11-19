@interface ICSInterruptCallAlert
- (ICSInterruptCallAlert)initWithCallback:(id)a3;
- (void)defaultResponse;
@end

@implementation ICSInterruptCallAlert

- (ICSInterruptCallAlert)initWithCallback:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10021A670(sub_1001B02F0, v4);
}

- (void)defaultResponse
{
  v2 = self;
  sub_10021A86C();
}

@end