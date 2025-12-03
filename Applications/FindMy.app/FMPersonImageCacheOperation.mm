@interface FMPersonImageCacheOperation
- (_TtC6FindMy27FMPersonImageCacheOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMPersonImageCacheOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMPersonImageCacheOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation__isFinished) = finished;
  v5 = String._bridgeToObjectiveC()();
  [(FMPersonImageCacheOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_10042EC78();
}

- (void)start
{
  selfCopy = self;
  sub_10042EDCC();
}

- (_TtC6FindMy27FMPersonImageCacheOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end