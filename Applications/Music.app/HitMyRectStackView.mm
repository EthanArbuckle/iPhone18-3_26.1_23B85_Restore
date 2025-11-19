@interface HitMyRectStackView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC11MusicCoreUI18HitMyRectStackView)initWithCoder:(id)a3;
- (_TtC11MusicCoreUI18HitMyRectStackView)initWithFrame:(CGRect)a3;
@end

@implementation HitMyRectStackView

- (_TtC11MusicCoreUI18HitMyRectStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(HitMyRectStackView *)&v10 initWithFrame:x, y, width, height];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = HitMyRectStackView.point(inside:with:)(v4, x, y);

  return v4 & 1;
}

- (_TtC11MusicCoreUI18HitMyRectStackView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HitMyRectStackView *)&v7 initWithCoder:a3];
}

@end