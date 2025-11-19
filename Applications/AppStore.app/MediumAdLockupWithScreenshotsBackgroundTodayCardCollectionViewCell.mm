@interface MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 layoutSubviews];
  v3 = sub_100344F64();
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  v2 = v3.receiver;
  [(BaseTodayCardCollectionViewCell *)&v3 prepareForReuse];
}

- (NSArray)accessibilityElements
{
  sub_10002849C(&qword_1009701B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B10D0;
  v4 = self;
  v5 = sub_100344F64();
  v6 = *&v5[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView];

  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v6;

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  [(MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell *)&v7 setAccessibilityElements:v5.super.isa];
}

@end