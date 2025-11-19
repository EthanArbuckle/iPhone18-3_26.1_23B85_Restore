@interface WFAccountAccessResourceUserInterface
- (WFAccountAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (void)authorizeWithAccountClassName:(id)a3 completionHandler:(id)a4;
@end

@implementation WFAccountAccessResourceUserInterface

- (void)authorizeWithAccountClassName:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_23E3AA9D0();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_23E34E894(v6, v8, v9, v5);
  _Block_release(v5);
}

- (WFAccountAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_23E3501E4(v5, a4);
}

@end