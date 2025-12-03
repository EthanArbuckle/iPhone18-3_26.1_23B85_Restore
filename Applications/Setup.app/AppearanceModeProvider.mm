@interface AppearanceModeProvider
- (_TtC5Setup22AppearanceModeProvider)init;
- (_TtC5Setup22AppearanceModeProvider)initWithDisplayZoomExecutor:(id)executor;
@end

@implementation AppearanceModeProvider

- (_TtC5Setup22AppearanceModeProvider)initWithDisplayZoomExecutor:(id)executor
{
  v5 = OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService;
  v6 = objc_allocWithZone(SBSHomeScreenService);
  executorCopy = executor;
  *(&self->super.isa + v5) = [v6 init];
  *(&self->super.isa + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor) = executorCopy;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AppearanceModeProvider();
  return [(AppearanceModeProvider *)&v9 init];
}

- (_TtC5Setup22AppearanceModeProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end