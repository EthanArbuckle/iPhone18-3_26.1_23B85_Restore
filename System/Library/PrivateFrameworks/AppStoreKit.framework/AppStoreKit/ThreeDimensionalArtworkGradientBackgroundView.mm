@interface ThreeDimensionalArtworkGradientBackgroundView
- (_TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithCoder:(id)coder;
- (_TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ThreeDimensionalArtworkGradientBackgroundView

- (_TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  v2 = v5.receiver;
  [(ThreeDimensionalArtworkGradientBackgroundView *)&v5 layoutSubviews];
  [v2 bounds];
  [v2 setFrame_];
  v3 = *&v2[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer];
  [v2 bounds];
  [v4 setFrame_];
}

- (_TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end