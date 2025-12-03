@interface ICSInterruptCallAlert
- (ICSInterruptCallAlert)initWithCallback:(id)callback;
- (void)defaultResponse;
@end

@implementation ICSInterruptCallAlert

- (ICSInterruptCallAlert)initWithCallback:(id)callback
{
  v3 = _Block_copy(callback);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10021A670(sub_1001B02F0, v4);
}

- (void)defaultResponse
{
  selfCopy = self;
  sub_10021A86C();
}

@end