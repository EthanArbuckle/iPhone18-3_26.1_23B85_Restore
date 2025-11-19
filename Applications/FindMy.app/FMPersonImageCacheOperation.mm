@interface FMPersonImageCacheOperation
- (_TtC6FindMy27FMPersonImageCacheOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMPersonImageCacheOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMPersonImageCacheOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation__isFinished) = a3;
  v5 = String._bridgeToObjectiveC()();
  [(FMPersonImageCacheOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_10042EC78();
}

- (void)start
{
  v2 = self;
  sub_10042EDCC();
}

- (_TtC6FindMy27FMPersonImageCacheOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end