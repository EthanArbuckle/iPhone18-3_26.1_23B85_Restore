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
  sub_100356580();
  sub_100356248();
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (NSArray)accessibilityElements
{
  sub_10000A5D4(&unk_1009434B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100783DD0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_1007701AC().super.isa;

  return v6.super.isa;
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
  v7.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  [(MediumAdLockupWithScreenshotsBackgroundView *)&v7 setAccessibilityElements:v5.super.isa];
}

@end