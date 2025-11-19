@interface LargeLockupView
- (UILabel)accessibilityOrdinalLabel;
- (UILabel)accessibilitySecondaryTitleLabel;
- (UILabel)accessibilitySubtitleLabel;
- (UIView)accessibilityArtworkContainer;
- (_TtC23ShelfKitCollectionViews15LargeLockupView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)subtitleTapped;
@end

@implementation LargeLockupView

- (void)subtitleTapped
{
  v2 = self;
  sub_266D2C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_266EC4();
}

- (UILabel)accessibilityOrdinalLabel
{
  v2 = self;
  v3 = sub_2663A8();

  return v3;
}

- (UILabel)accessibilitySecondaryTitleLabel
{
  v2 = self;
  v3 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel, sub_267EC4);

  return v3;
}

- (UILabel)accessibilitySubtitleLabel
{
  v2 = self;
  v3 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel, sub_266538);

  return v3;
}

- (UIView)accessibilityArtworkContainer
{
  v2 = self;
  v3 = sub_2662B0();

  return v3;
}

- (_TtC23ShelfKitCollectionViews15LargeLockupView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end