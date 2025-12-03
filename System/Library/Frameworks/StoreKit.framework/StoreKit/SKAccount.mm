@interface SKAccount
+ (void)currentAccountTypeWithCompletionHandler:(id)handler;
@end

@implementation SKAccount

+ (void)currentAccountTypeWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_1B251DDF8(&unk_1B2578240, v5);
}

@end