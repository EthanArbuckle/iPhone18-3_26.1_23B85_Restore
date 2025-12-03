@interface MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)elements;
@end

@implementation MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 layoutSubviews];
  v3 = sub_1001DB1E4();
  [v2 bounds];
  [v3 setFrame:?];
}

- (NSArray)accessibilityElements
{
  sub_10002849C(&qword_1009701B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B10D0;
  selfCopy = self;
  v5 = sub_1001DB1E4();
  v6 = *&v5[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];

  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v6;

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
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
  v7.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  [(MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell *)&v7 setAccessibilityElements:v5.super.isa];
}

@end