@interface MAGAngelTrailingView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithCoder:(id)a3;
- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithFrame:(CGRect)a3;
@end

@implementation MAGAngelTrailingView

- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithCoder:(id)a3
{
  v5 = self + OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize;
  *v5 = MAGAngelContentState.hash(into:)(19.0, 19.0);
  *(v5 + 1) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MAGAngelTrailingView();
  v7 = a3;
  v8 = [(MAGAngelTrailingView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize);
  v5 = *&self->compressedElementSize[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end