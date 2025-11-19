@interface MediaIntentHandler
- (_TtC5Music18MediaIntentHandler)init;
- (void)confirmPlayMedia:(id)a3 completion:(id)a4;
- (void)handlePlayMedia:(id)a3 completion:(id)a4;
@end

@implementation MediaIntentHandler

- (void)handlePlayMedia:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10054BD40(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmPlayMedia:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10054C5B8(v7, v6);
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