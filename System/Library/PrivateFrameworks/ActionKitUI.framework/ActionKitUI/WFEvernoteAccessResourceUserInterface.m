@interface WFEvernoteAccessResourceUserInterface
- (WFEvernoteAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (void)authorizeWithCompletionHandler:(id)a3;
@end

@implementation WFEvernoteAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_23E354628(v5, v4);
  _Block_release(v4);
}

- (WFEvernoteAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_23E354C98(v5, a4);
}

@end