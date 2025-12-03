@interface TapGestureRecognizer
- (_TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)ignoreTouch:(id)touch forEvent:(id)event;
@end

@implementation TapGestureRecognizer

- (void)ignoreTouch:(id)touch forEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapGestureRecognizer();
  touchCopy = touch;
  eventCopy = event;
  v8 = v11.receiver;
  [(TapGestureRecognizer *)&v11 ignoreTouch:touchCopy forEvent:eventCopy];
  v9 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
  if (v9)
  {

    v9(v10);
    sub_17654(v9);
  }
}

- (_TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_E7E94(v6, action);
}

@end