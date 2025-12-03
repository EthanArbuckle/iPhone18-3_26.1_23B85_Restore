@interface CanvasLayoutFragment
- (_TtC7Journal20CanvasLayoutFragment)initWithCoder:(id)coder;
- (_TtC7Journal20CanvasLayoutFragment)initWithTextElement:(id)element range:(id)range;
@end

@implementation CanvasLayoutFragment

- (_TtC7Journal20CanvasLayoutFragment)initWithTextElement:(id)element range:(id)range
{
  v6 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customLeadingPadding;
  *v6 = 0;
  v6[8] = 1;
  v7 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customTrailingPadding;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasLayoutFragment();
  return [(CanvasLayoutFragment *)&v9 initWithTextElement:element range:range];
}

- (_TtC7Journal20CanvasLayoutFragment)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customLeadingPadding;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customTrailingPadding;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasLayoutFragment();
  coderCopy = coder;
  v7 = [(CanvasLayoutFragment *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end