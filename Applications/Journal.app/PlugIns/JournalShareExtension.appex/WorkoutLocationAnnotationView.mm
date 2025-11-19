@interface WorkoutLocationAnnotationView
- (_TtC21JournalShareExtension29WorkoutLocationAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC21JournalShareExtension29WorkoutLocationAnnotationView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation WorkoutLocationAnnotationView

- (_TtC21JournalShareExtension29WorkoutLocationAnnotationView)initWithCoder:(id)a3
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_100012EB4(x, y, width, height);
}

- (_TtC21JournalShareExtension29WorkoutLocationAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end