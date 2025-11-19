@interface LinkManager
- (_TtC15GroupActivities11LinkManager)init;
- (void)dealloc;
@end

@implementation LinkManager

- (void)dealloc
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x238);
  v3 = self;

  v4.receiver = v3;
  v4.super_class = type metadata accessor for LinkManager(0);
  [(LinkManager *)&v4 dealloc];
}

- (_TtC15GroupActivities11LinkManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end