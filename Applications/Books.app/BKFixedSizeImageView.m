@interface BKFixedSizeImageView
- (CGSize)intrinsicContentSize;
- (_TtC5Books20BKFixedSizeImageView)initWithCoder:(id)a3;
- (_TtC5Books20BKFixedSizeImageView)initWithFrame:(CGRect)a3;
- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)a3;
- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation BKFixedSizeImageView

- (_TtC5Books20BKFixedSizeImageView)initWithCoder:(id)a3
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books20BKFixedSizeImageView_fixedSize);
  v3 = *&self->fixedSize[OBJC_IVAR____TtC5Books20BKFixedSizeImageView_fixedSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Books20BKFixedSizeImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end