@interface MAGAngelTrailingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithCoder:(id)coder;
- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithFrame:(CGRect)frame;
@end

@implementation MAGAngelTrailingView

- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithCoder:(id)coder
{
  v5 = self + OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize;
  *v5 = MAGAngelContentState.hash(into:)(19.0, 19.0);
  *(v5 + 1) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MAGAngelTrailingView();
  coderCopy = coder;
  v8 = [(MAGAngelTrailingView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize);
  v5 = *&self->compressedElementSize[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end