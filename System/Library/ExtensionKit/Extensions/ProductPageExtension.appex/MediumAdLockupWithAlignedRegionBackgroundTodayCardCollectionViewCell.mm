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
  v3 = sub_1001AE938();
  [v2 bounds];
  [v3 setFrame:?];
}

- (NSArray)accessibilityElements
{
  sub_10000A5D4(&unk_1009434B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100783DD0;
  selfCopy = self;
  v5 = sub_1001AE938();
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];

  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v6;

  v7.super.isa = sub_1007701AC().super.isa;

  return v7.super.isa;
}

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    sub_1007701BC();
    selfCopy = self;
    v5.super.isa = sub_1007701AC().super.isa;
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