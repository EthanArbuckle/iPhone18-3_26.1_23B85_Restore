@interface FixedSizeView
- (CGSize)intrinsicContentSize;
- (_TtC16MusicApplication13FixedSizeView)initWithCoder:(id)a3;
- (_TtC16MusicApplication13FixedSizeView)initWithFrame:(CGRect)a3;
@end

@implementation FixedSizeView

- (_TtC16MusicApplication13FixedSizeView)initWithCoder:(id)a3
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication13FixedSizeView_size);
  v3 = *&self->size[OBJC_IVAR____TtC16MusicApplication13FixedSizeView_size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC16MusicApplication13FixedSizeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end