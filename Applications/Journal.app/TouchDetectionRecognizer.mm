@interface TouchDetectionRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (_TtC7Journal24TouchDetectionRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation TouchDetectionRecognizer

- (_TtC7Journal24TouchDetectionRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_100422C0C(v6, action);
}

- (void)reset
{
  v2 = self + OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type;
  *v2 = 0;
  v2[8] = 1;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = sub_100422E24(recognizerCopy);

  return self & 1;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_1000065A8(0, &qword_100AE40B8);
  sub_10042309C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = sub_100603EEC(v5);

  if (v6)
  {
    type = [v6 type];
  }

  else
  {
    type = 0;
  }

  v8 = selfCopy + OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type;
  *v8 = type;
  v8[8] = v6 == 0;
  [(TouchDetectionRecognizer *)selfCopy setState:3];
}

@end