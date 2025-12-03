@interface MediumAdLockupWithScreenshotsBackgroundView
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)elements;
@end

@implementation MediumAdLockupWithScreenshotsBackgroundView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v2 = v4.receiver;
  [(MediumAdLockupWithScreenshotsBackgroundView *)&v4 layoutSubviews];
  sub_1001B459C();
  sub_1001B4264();
  v3 = *&v2[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (NSArray)accessibilityElements
{
  sub_10002849C(&qword_1009701B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B10D0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  [(MediumAdLockupWithScreenshotsBackgroundView *)&v7 setAccessibilityElements:v5.super.isa];
}

@end