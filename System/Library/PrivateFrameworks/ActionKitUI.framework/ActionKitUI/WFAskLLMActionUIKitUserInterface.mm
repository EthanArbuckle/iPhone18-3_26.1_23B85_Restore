@interface WFAskLLMActionUIKitUserInterface
- (WFAskLLMActionUIKitUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)showWithResponse:(id)response modelName:(id)name completionHandler:(id)handler;
@end

@implementation WFAskLLMActionUIKitUserInterface

- (void)showWithResponse:(id)response modelName:(id)name completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_23E3AA9D0();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  responseCopy = response;
  selfCopy = self;
  sub_23E36BAFC(response, v8, v10, sub_23E3505E4, v11);
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_23E36C78C(sub_23E35C8C0, v5);
}

- (WFAskLLMActionUIKitUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  return sub_23E36CDCC(typeCopy, attribution);
}

@end