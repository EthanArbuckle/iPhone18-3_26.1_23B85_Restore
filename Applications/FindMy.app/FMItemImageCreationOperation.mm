@interface FMItemImageCreationOperation
- (_TtC6FindMy28FMItemImageCreationOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMItemImageCreationOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMItemImageCreationOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation__isFinished) = finished;
  v5 = String._bridgeToObjectiveC()();
  [(FMItemImageCreationOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_10018F76C();
}

- (void)start
{
  selfCopy = self;
  sub_10018F8C0();
}

- (_TtC6FindMy28FMItemImageCreationOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end