@interface WFInstapaperAccessResourceUserInterface
- (WFInstapaperAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (void)authorizeWithCompletionHandler:(id)handler;
@end

@implementation WFInstapaperAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_23E34AC80(sub_23E34DE60, v5);
}

- (WFInstapaperAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  return sub_23E34B2D0(typeCopy, attribution);
}

@end