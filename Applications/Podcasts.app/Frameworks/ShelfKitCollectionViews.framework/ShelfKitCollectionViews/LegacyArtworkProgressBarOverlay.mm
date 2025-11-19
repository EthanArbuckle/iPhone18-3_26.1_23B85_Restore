@interface LegacyArtworkProgressBarOverlay
- (_TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateProgressViewOpacity;
@end

@implementation LegacyArtworkProgressBarOverlay

- (_TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressStyle) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progress) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_playing) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_26C6C8();
}

- (void)updateProgressViewOpacity
{
  v2 = self;
  sub_26CA10();
}

- (_TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end