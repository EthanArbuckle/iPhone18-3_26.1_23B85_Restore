@interface ATXContextHeuristicsScheduler
- (ATXContextHeuristicsScheduler)init;
- (void)dealloc;
- (void)start;
@end

@implementation ATXContextHeuristicsScheduler

- (void)start
{
  selfCopy = self;
  ContextHeuristicsScheduler.start()();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_2267CD83C();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ATXContextHeuristicsScheduler *)&v5 dealloc];
}

- (ATXContextHeuristicsScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end