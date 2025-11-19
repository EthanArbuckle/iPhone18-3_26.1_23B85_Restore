@interface FMItemImageCreationOperation
- (_TtC6FindMy28FMItemImageCreationOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMItemImageCreationOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMItemImageCreationOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation__isFinished) = a3;
  v5 = String._bridgeToObjectiveC()();
  [(FMItemImageCreationOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_10018F76C();
}

- (void)start
{
  v2 = self;
  sub_10018F8C0();
}

- (_TtC6FindMy28FMItemImageCreationOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end