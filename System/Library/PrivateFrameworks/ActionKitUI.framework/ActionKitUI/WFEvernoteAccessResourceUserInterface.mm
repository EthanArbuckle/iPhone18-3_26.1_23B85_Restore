@interface WFEvernoteAccessResourceUserInterface
- (WFEvernoteAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (void)authorizeWithCompletionHandler:(id)handler;
@end

@implementation WFEvernoteAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_23E354628(selfCopy, v4);
  _Block_release(v4);
}

- (WFEvernoteAccessResourceUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  return sub_23E354C98(typeCopy, attribution);
}

@end