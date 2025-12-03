@interface WFTumblrAccessResourceUserInterface
- (WFTumblrAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (void)authorizeWithCompletionHandler:(id)handler;
@end

@implementation WFTumblrAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_23E36D3A0(sub_23E34DE60, v5);
}

- (WFTumblrAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  return sub_23E36D9A4(typeCopy, attribution);
}

@end