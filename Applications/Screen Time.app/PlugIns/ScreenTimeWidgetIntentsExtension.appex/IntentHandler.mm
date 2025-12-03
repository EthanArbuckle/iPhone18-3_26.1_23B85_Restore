@interface IntentHandler
- (_TtC32ScreenTimeWidgetIntentsExtension13IntentHandler)init;
- (id)defaultUserForSelectUser:(id)user;
- (void)provideUserOptionsCollectionForSelectUser:(id)user withCompletion:(id)completion;
@end

@implementation IntentHandler

- (void)provideUserOptionsCollectionForSelectUser:(id)user withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  userCopy = user;
  selfCopy = self;
  sub_1000018A0(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)defaultUserForSelectUser:(id)user
{
  v3 = sub_1000020A8();

  return v3;
}

- (_TtC32ScreenTimeWidgetIntentsExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

@end