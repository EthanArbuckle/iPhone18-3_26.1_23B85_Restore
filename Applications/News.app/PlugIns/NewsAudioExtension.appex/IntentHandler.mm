@interface IntentHandler
- (_TtC18NewsAudioExtension13IntentHandler)init;
- (id)handlerForIntent:(id)intent;
- (void)confirmPlayMedia:(id)media completion:(id)completion;
- (void)handlePlayMedia:(id)media completion:(id)completion;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_1000011E8(intentCopy, v8);

  sub_100001EC4(v8, v8[3]);
  v6 = sub_100002004();
  sub_100001F08(v8);

  return v6;
}

- (void)confirmPlayMedia:(id)media completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  mediaCopy = media;
  selfCopy = self;
  sub_100001BBC(mediaCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handlePlayMedia:(id)media completion:(id)completion
{
  v4 = _Block_copy(completion);
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