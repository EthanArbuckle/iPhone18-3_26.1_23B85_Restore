@interface FMETAOperation
- (_TtC6FindMy14FMETAOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMETAOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMETAOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC6FindMy14FMETAOperation__isFinished) = finished;
  v5 = String._bridgeToObjectiveC()();
  [(FMETAOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_10042528C();
}

- (void)start
{
  v3 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for FMETAOperation();
  v19.receiver = self;
  v19.super_class = v6;
  selfCopy = self;
  [(FMETAOperation *)&v19 start];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v10 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC6FindMy14FMETAOperation_request);
  v9 = *&selfCopy->request[OBJC_IVAR____TtC6FindMy14FMETAOperation_request];
  v11 = *&selfCopy->request[OBJC_IVAR____TtC6FindMy14FMETAOperation_request + 8];
  v12 = *&selfCopy->request[OBJC_IVAR____TtC6FindMy14FMETAOperation_request + 16];
  v13 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC6FindMy14FMETAOperation_completion);
  v14 = *&selfCopy->request[OBJC_IVAR____TtC6FindMy14FMETAOperation_completion];
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v12;
  v15[8] = v13;
  v15[9] = v14;
  v15[10] = selfCopy;
  v16 = selfCopy;

  v17 = v11;
  v18 = v12;

  sub_10041D3F4(0, 0, v5, &unk_1005612D8, v15);

  sub_100012DF0(v5, &unk_1006BEF30);
}

- (_TtC6FindMy14FMETAOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end