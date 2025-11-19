@interface TouchDetectionRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
- (_TtC7Journal24TouchDetectionRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TouchDetectionRecognizer

- (_TtC7Journal24TouchDetectionRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_100422C0C(v6, a4);
}

- (void)reset
{
  v2 = self + OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type;
  *v2 = 0;
  v2[8] = 1;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100422E24(v4);

  return self & 1;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_1000065A8(0, &qword_100AE40B8);
  sub_10042309C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v6 = sub_100603EEC(v5);

  if (v6)
  {
    v7 = [v6 type];
  }

  else
  {
    v7 = 0;
  }

  v8 = v9 + OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type;
  *v8 = v7;
  v8[8] = v6 == 0;
  [(TouchDetectionRecognizer *)v9 setState:3];
}

@end