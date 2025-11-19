@interface ArtworkProgressBarOverlay
- (_TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateProgressViewOpacity;
@end

@implementation ArtworkProgressBarOverlay

- (_TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressStyle) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progress) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_playing) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2BDE0();
}

- (void)updateProgressViewOpacity
{
  v2 = self;
  sub_2C054();
}

- (_TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end