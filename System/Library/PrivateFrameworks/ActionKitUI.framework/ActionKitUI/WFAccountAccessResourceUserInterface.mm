@interface WFAccountAccessResourceUserInterface
- (WFAccountAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (void)authorizeWithAccountClassName:(id)name completionHandler:(id)handler;
@end

@implementation WFAccountAccessResourceUserInterface

- (void)authorizeWithAccountClassName:(id)name completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_23E3AA9D0();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_23E34E894(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (WFAccountAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  return sub_23E3501E4(typeCopy, attribution);
}

@end