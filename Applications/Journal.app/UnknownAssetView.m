@interface UnknownAssetView
- (_TtC7Journal16UnknownAssetView)initWithCoder:(id)a3;
- (_TtC7Journal16UnknownAssetView)initWithFrame:(CGRect)a3;
@end

@implementation UnknownAssetView

- (_TtC7Journal16UnknownAssetView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UnknownAssetView();
  v7 = [(JournalAssetView *)&v9 initWithFrame:x, y, width, height];
  [(UnknownAssetView *)v7 setContentMode:2];
  [(UnknownAssetView *)v7 setClipsToBounds:1];
  sub_1001D6A7C();

  return v7;
}

- (_TtC7Journal16UnknownAssetView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end