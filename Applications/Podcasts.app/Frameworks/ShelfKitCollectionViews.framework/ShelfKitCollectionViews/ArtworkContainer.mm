@interface ArtworkContainer
- (UIView)accessibilityPlayButton;
- (_TtC23ShelfKitCollectionViews16ArtworkContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ArtworkContainer

- (UIView)accessibilityPlayButton
{
  v2 = self;
  sub_2A940();
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton);
  v4 = v3;

  return v3;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2AAF8();
}

- (_TtC23ShelfKitCollectionViews16ArtworkContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end