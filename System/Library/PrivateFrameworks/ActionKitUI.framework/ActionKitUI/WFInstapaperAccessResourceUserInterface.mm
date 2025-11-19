@interface WFInstapaperAccessResourceUserInterface
- (WFInstapaperAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (void)authorizeWithCompletionHandler:(id)a3;
@end

@implementation WFInstapaperAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_23E34AC80(sub_23E34DE60, v5);
}

- (WFInstapaperAccessResourceUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_23E34B2D0(v5, a4);
}

@end