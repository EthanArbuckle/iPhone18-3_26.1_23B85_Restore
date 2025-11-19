@interface CanvasLayoutFragment
- (_TtC7Journal20CanvasLayoutFragment)initWithCoder:(id)a3;
- (_TtC7Journal20CanvasLayoutFragment)initWithTextElement:(id)a3 range:(id)a4;
@end

@implementation CanvasLayoutFragment

- (_TtC7Journal20CanvasLayoutFragment)initWithTextElement:(id)a3 range:(id)a4
{
  v6 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customLeadingPadding;
  *v6 = 0;
  v6[8] = 1;
  v7 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customTrailingPadding;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasLayoutFragment();
  return [(CanvasLayoutFragment *)&v9 initWithTextElement:a3 range:a4];
}

- (_TtC7Journal20CanvasLayoutFragment)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customLeadingPadding;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC7Journal20CanvasLayoutFragment_customTrailingPadding;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasLayoutFragment();
  v6 = a3;
  v7 = [(CanvasLayoutFragment *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end