@interface IntentHandler
- (_TtC25ScreenTimeWidgetExtension13IntentHandler)init;
- (id)defaultUserForSelectUser:(id)a3;
- (void)provideUserOptionsCollectionForSelectUser:(id)a3 withCompletion:(id)a4;
@end

@implementation IntentHandler

- (void)provideUserOptionsCollectionForSelectUser:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10001B484(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)defaultUserForSelectUser:(id)a3
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