@interface LegacyArtworkCheckmarkProgressOverlay
- (_TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LegacyArtworkCheckmarkProgressOverlay

- (_TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_progressStyle) = 2;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_checkmarkInset) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_progress) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_playing) = 0;
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
  *(v5 + 16) = sub_26C04C;
  *(v5 + 24) = v4;
  v8[4] = sub_293C0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_19D688;
  v8[3] = &block_descriptor_57;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end