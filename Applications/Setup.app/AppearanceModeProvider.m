@interface AppearanceModeProvider
- (_TtC5Setup22AppearanceModeProvider)init;
- (_TtC5Setup22AppearanceModeProvider)initWithDisplayZoomExecutor:(id)a3;
@end

@implementation AppearanceModeProvider

- (_TtC5Setup22AppearanceModeProvider)initWithDisplayZoomExecutor:(id)a3
{
  v5 = OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService;
  v6 = objc_allocWithZone(SBSHomeScreenService);
  v7 = a3;
  *(&self->super.isa + v5) = [v6 init];
  *(&self->super.isa + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor) = v7;
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