@interface HitTestUIView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithCoder:(id)coder;
- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithFrame:(CGRect)frame;
@end

@implementation HitTestUIView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) == 1)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
    if (v7)
    {
      eventCopy = event;
      selfCopy = self;
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
    v11 = [(HitTestUIView *)&v14 pointInside:event withEvent:x, y];
  }

  return v11 & 1;
}

- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
  v9 = type metadata accessor for HitTestUIView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(HitTestUIView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_isPointInside);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HitTestUIView();
  coderCopy = coder;
  v6 = [(HitTestUIView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end