@interface WorkoutLocationAnnotationView
- (_TtC16MomentsUIService29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC16MomentsUIService29WorkoutLocationAnnotationView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation WorkoutLocationAnnotationView

- (_TtC16MomentsUIService29WorkoutLocationAnnotationView)initWithCoder:(id)coder
{
  type metadata accessor for WorkoutLocationAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  WorkoutLocationAnnotationView.draw(_:)(x, y, width, height);
}

- (_TtC16MomentsUIService29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end