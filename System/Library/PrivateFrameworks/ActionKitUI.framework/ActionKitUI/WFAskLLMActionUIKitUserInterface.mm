@interface WFAskLLMActionUIKitUserInterface
- (WFAskLLMActionUIKitUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)showWithResponse:(id)a3 modelName:(id)a4 completionHandler:(id)a5;
@end

@implementation WFAskLLMActionUIKitUserInterface

- (void)showWithResponse:(id)a3 modelName:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_23E3AA9D0();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_23E36BAFC(a3, v8, v10, sub_23E3505E4, v11);
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_23E36C78C(sub_23E35C8C0, v5);
}

- (WFAskLLMActionUIKitUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_23E36CDCC(v5, a4);
}

@end