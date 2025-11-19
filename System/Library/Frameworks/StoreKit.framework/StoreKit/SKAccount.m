@interface SKAccount
+ (void)currentAccountTypeWithCompletionHandler:(id)a3;
@end

@implementation SKAccount

+ (void)currentAccountTypeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1B251DDF8(&unk_1B2578240, v5);
}

@end