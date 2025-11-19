@interface MAGAngelLeadingView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithCoder:(id)a3;
- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithFrame:(CGRect)a3;
@end

@implementation MAGAngelLeadingView

- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithCoder:(id)a3
{
  v5 = self + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize;
  *v5 = MAGAngelContentState.hash(into:)(19.0, 19.0);
  *(v5 + 1) = v6;
  v7 = self + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize;
  *v7 = MAGAngelContentState.hash(into:)(37.7, 37.7);
  *(v7 + 1) = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MAGAngelLeadingView();
  v9 = a3;
  v10 = [(MAGAngelLeadingView *)&v12 initWithCoder:v9];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = &OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize;
  if (a4 != 4)
  {
    v4 = &OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize;
  }

  v5 = (self + *v4);
  v6 = *v5;
  v7 = v5[1];
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end