@interface HitMyRectStackView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC11MusicCoreUI18HitMyRectStackView)initWithCoder:(id)coder;
- (_TtC11MusicCoreUI18HitMyRectStackView)initWithFrame:(CGRect)frame;
@end

@implementation HitMyRectStackView

- (_TtC11MusicCoreUI18HitMyRectStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(HitMyRectStackView *)&v10 initWithFrame:x, y, width, height];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = HitMyRectStackView.point(inside:with:)(eventCopy, x, y);

  return eventCopy & 1;
}

- (_TtC11MusicCoreUI18HitMyRectStackView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HitMyRectStackView *)&v7 initWithCoder:coder];
}

@end