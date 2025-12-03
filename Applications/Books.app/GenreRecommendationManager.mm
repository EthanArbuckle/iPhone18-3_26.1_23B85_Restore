@interface GenreRecommendationManager
- (_TtC5Books26GenreRecommendationManager)init;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
@end

@implementation GenreRecommendationManager

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Books26GenreRecommendationManager_defaults);
  selfCopy = self;
  v5 = sub_1007A2214();
  [v4 removeObjectForKey:v5];

  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock);
  os_unfair_lock_lock((v6 + 28));
  sub_100548570(*(v6 + 16), *(v6 + 24));
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  os_unfair_lock_unlock((v6 + 28));
}

- (_TtC5Books26GenreRecommendationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end