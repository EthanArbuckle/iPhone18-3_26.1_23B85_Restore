@interface MediumAdLockupWithAlignedRegionBackgroundView
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation MediumAdLockupWithAlignedRegionBackgroundView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v2 = v4.receiver;
  [(MediumAdLockupWithAlignedRegionBackgroundView *)&v4 layoutSubviews];
  v3 = sub_10015C92C();
  [v2 bounds];
  [v3 setFrame:?];

  [v2 bounds];
  sub_10075FC8C();
  sub_10015CA54();
}

- (NSArray)accessibilityElements
{
  sub_10000A5D4(&unk_1009434B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100783DD0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_1007701AC().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    sub_1007701BC();
    v4 = self;
    v5.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v6 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  [(MediumAdLockupWithAlignedRegionBackgroundView *)&v7 setAccessibilityElements:v5.super.isa];
}

@end