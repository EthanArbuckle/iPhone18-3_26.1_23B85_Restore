@interface MediaIntentHandler
- (_TtC5Music18MediaIntentHandler)init;
- (void)confirmPlayMedia:(id)media completion:(id)completion;
- (void)handlePlayMedia:(id)media completion:(id)completion;
@end

@implementation MediaIntentHandler

- (void)handlePlayMedia:(id)media completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  mediaCopy = media;
  selfCopy = self;
  sub_10054BD40(mediaCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmPlayMedia:(id)media completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  mediaCopy = media;
  selfCopy = self;
  sub_10054C5B8(mediaCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC5Music18MediaIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaIntentHandler();
  return [(MediaIntentHandler *)&v3 init];
}

@end