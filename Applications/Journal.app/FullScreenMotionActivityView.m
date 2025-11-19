@interface FullScreenMotionActivityView
- (_TtC7Journal28FullScreenMotionActivityView)initWithFrame:(CGRect)a3;
@end

@implementation FullScreenMotionActivityView

- (_TtC7Journal28FullScreenMotionActivityView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityView;
  type metadata accessor for MotionActivityGridView();
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityAsset) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FullScreenMotionActivityView();
  return [(FullScreenMotionActivityView *)&v10 initWithFrame:x, y, width, height];
}

@end