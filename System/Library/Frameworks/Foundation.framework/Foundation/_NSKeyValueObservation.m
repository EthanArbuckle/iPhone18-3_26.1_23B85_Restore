@interface _NSKeyValueObservation
- (_NSKeyValueObservation)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _NSKeyValueObservation

- (void)dealloc
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = self;
  if (Strong)
  {
    NSKeyValueObservation.Helper.invalidate()();
  }

  swift_unknownObjectWeakAssign();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for NSKeyValueObservation();
  [(_NSKeyValueObservation *)&v5 dealloc];
}

- (void)invalidate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = self;
  if (Strong)
  {
    NSKeyValueObservation.Helper.invalidate()();
  }

  swift_unknownObjectWeakAssign();
}

- (_NSKeyValueObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end