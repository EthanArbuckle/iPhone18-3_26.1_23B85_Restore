@interface IntentHandler
- (_TtC18NewsAudioExtension13IntentHandler)init;
- (id)handlerForIntent:(id)a3;
- (void)confirmPlayMedia:(id)a3 completion:(id)a4;
- (void)handlePlayMedia:(id)a3 completion:(id)a4;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000011E8(v4, v8);

  sub_100001EC4(v8, v8[3]);
  v6 = sub_100002004();
  sub_100001F08(v8);

  return v6;
}

- (void)confirmPlayMedia:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100001BBC(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handlePlayMedia:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:5 userActivity:0];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (_TtC18NewsAudioExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(IntentHandler *)&v3 init];
}

@end