@interface IntentHandler
- (_TtC25ScreenTimeWidgetExtension13IntentHandler)init;
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
  sub_10001B484(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)defaultUserForSelectUser:(id)user
{
  v3 = sub_10001BC8C();

  return v3;
}

- (_TtC25ScreenTimeWidgetExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

@end