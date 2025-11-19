@interface HitTestUIView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithCoder:(id)a3;
- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithFrame:(CGRect)a3;
@end

@implementation HitTestUIView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) == 1)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
    if (v7)
    {
      v8 = a4;
      v9 = self;
      v10 = sub_100005630(v7);
      v11 = v7(v10, x, y);

      sub_100005640(v7);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = type metadata accessor for HitTestUIView();
    v11 = [(HitTestUIView *)&v14 pointInside:a4 withEvent:x, y];
  }

  return v11 & 1;
}

- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
  v9 = type metadata accessor for HitTestUIView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(HitTestUIView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HitTestUIView();
  v5 = a3;
  v6 = [(HitTestUIView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end