@interface AudioTraitButton
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (_TtC5Music16AudioTraitButton)initWithCoder:(id)a3;
- (_TtC5Music16AudioTraitButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AudioTraitButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioTraitButton();
  return [(AudioTraitButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1001CBC78(a3);
}

- (CGRect)hitRect
{
  v2 = self;
  v3 = sub_1001CBD68();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (UIViewIgnoresTouchEvents())
  {

    v8 = v7;
  }

  else
  {
    v9 = [(AudioTraitButton *)v8 pointInside:v7 withEvent:x, y];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(AudioTraitButton *)v6 hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (_TtC5Music16AudioTraitButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure) = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize);
  v9 = type metadata accessor for AudioTraitButton();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(AudioTraitButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC5Music16AudioTraitButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AudioTraitButton();
  v5 = a3;
  v6 = [(AudioTraitButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end