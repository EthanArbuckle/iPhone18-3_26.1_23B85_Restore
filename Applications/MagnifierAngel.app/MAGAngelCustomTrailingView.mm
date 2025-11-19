@interface MAGAngelCustomTrailingView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC14MagnifierAngel26MAGAngelCustomTrailingView)init;
- (_TtC14MagnifierAngel26MAGAngelCustomTrailingView)initWithCoder:(id)a3;
- (_TtC14MagnifierAngel26MAGAngelCustomTrailingView)initWithFrame:(CGRect)a3;
@end

@implementation MAGAngelCustomTrailingView

- (_TtC14MagnifierAngel26MAGAngelCustomTrailingView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel26MAGAngelCustomTrailingView_compressedWidth) = 0x4043000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel26MAGAngelCustomTrailingView_compressedHeight) = 0x4010000000000000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MAGAngelCustomTrailingView();
  return [(MAGAngelCustomTrailingView *)&v3 initWithFrame:0.0, 0.0, 38.0, 4.0];
}

- (_TtC14MagnifierAngel26MAGAngelCustomTrailingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel26MAGAngelCustomTrailingView_compressedWidth) = 0x4043000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel26MAGAngelCustomTrailingView_compressedHeight) = 0x4010000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MAGAngelCustomTrailingView();
  v4 = a3;
  v5 = [(MAGAngelCustomTrailingView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = 19.0;
  v5 = 4.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC14MagnifierAngel26MAGAngelCustomTrailingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end