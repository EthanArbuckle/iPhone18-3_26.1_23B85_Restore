@interface ArtworkCheckmarkProgressOverlay
- (_TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ArtworkCheckmarkProgressOverlay

- (_TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_progressStyle) = 2;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_checkmarkInset) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_progress) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_playing) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_293A8;
  *(v5 + 24) = v4;
  v8[4] = sub_293C0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_19D688;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end