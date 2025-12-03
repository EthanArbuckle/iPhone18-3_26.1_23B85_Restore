@interface BKFixedSizeImageView
- (CGSize)intrinsicContentSize;
- (_TtC5Books20BKFixedSizeImageView)initWithCoder:(id)coder;
- (_TtC5Books20BKFixedSizeImageView)initWithFrame:(CGRect)frame;
- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)image;
- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation BKFixedSizeImageView

- (_TtC5Books20BKFixedSizeImageView)initWithCoder:(id)coder
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

- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Books20BKFixedSizeImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Books20BKFixedSizeImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end