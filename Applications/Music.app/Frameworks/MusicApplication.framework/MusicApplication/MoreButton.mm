@interface MoreButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton)initWithCoder:(id)a3;
- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton)initWithFrame:(CGRect)a3;
@end

@implementation MoreButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = (self + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton_hitArea);
  if (self->hitArea[OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton_hitArea + 24])
  {
    [(MoreButton *)self bounds];
  }

  else
  {
    v13 = v7[2];
    v12 = v7[3];
    v15 = *v7;
    v14 = v7[1];
    v16 = self;
    v8 = v15;
    v9 = v14;
    v10 = v13;
    v11 = v12;
  }

  v19.x = x;
  v19.y = y;
  v17 = CGRectContainsPoint(*&v8, v19);

  return v17;
}

- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton_hitArea;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end