@interface MAGAngelLeadingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithCoder:(id)coder;
- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithFrame:(CGRect)frame;
@end

@implementation MAGAngelLeadingView

- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithCoder:(id)coder
{
  v5 = self + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize;
  *v5 = MAGAngelContentState.hash(into:)(19.0, 19.0);
  *(v5 + 1) = v6;
  v7 = self + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize;
  *v7 = MAGAngelContentState.hash(into:)(37.7, 37.7);
  *(v7 + 1) = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MAGAngelLeadingView();
  coderCopy = coder;
  v10 = [(MAGAngelLeadingView *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = &OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize;
  if (mode != 4)
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

- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end