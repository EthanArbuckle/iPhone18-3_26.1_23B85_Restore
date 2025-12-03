@interface UnknownAssetView
- (_TtC7Journal16UnknownAssetView)initWithCoder:(id)coder;
- (_TtC7Journal16UnknownAssetView)initWithFrame:(CGRect)frame;
@end

@implementation UnknownAssetView

- (_TtC7Journal16UnknownAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UnknownAssetView();
  height = [(JournalAssetView *)&v9 initWithFrame:x, y, width, height];
  [(UnknownAssetView *)height setContentMode:2];
  [(UnknownAssetView *)height setClipsToBounds:1];
  sub_1001D6A7C();

  return height;
}

- (_TtC7Journal16UnknownAssetView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end