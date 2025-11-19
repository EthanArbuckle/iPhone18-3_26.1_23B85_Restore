@interface WFTumblrAccessResourceUserInterface
- (WFTumblrAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (void)authorizeWithCompletionHandler:(id)a3;
@end

@implementation WFTumblrAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_23E36D3A0(sub_23E34DE60, v5);
}

- (WFTumblrAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_23E36D9A4(v5, a4);
}

@end