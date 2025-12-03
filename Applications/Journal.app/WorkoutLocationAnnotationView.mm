@interface WorkoutLocationAnnotationView
- (_TtC7Journal29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC7Journal29WorkoutLocationAnnotationView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation WorkoutLocationAnnotationView

- (_TtC7Journal29WorkoutLocationAnnotationView)initWithCoder:(id)coder
{
  swift_getObjectType();
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
  sub_1002A8444(x, y, width, height);
}

- (_TtC7Journal29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end