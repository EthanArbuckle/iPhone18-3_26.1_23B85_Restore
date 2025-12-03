@interface FullScreenWorkoutView
- (_TtC7Journal21FullScreenWorkoutView)initWithFrame:(CGRect)frame;
@end

@implementation FullScreenWorkoutView

- (_TtC7Journal21FullScreenWorkoutView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutActivityView;
  type metadata accessor for WorkoutActivityGridView();
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutAsset) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FullScreenWorkoutView();
  return [(FullScreenWorkoutView *)&v10 initWithFrame:x, y, width, height];
}

@end