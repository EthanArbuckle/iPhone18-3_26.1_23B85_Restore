@interface TodayCardChinSingleLockupView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityElements;
- (void)handleTap;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)isa;
@end

@implementation TodayCardChinSingleLockupView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100713838();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_100713A24(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10071483C(touchCopy);

  return v9;
}

- (void)handleTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_clickActionHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

- (NSArray)accessibilityElements
{
  sub_10002849C(&qword_1009701B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B10D0;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardChinSingleLockupView *)&v8 setAccessibilityElements:isa];
}

@end