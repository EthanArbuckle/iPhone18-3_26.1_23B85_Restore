@interface SearchFindMySession
- (_TtC4Maps19SearchFindMySession)init;
@end

@implementation SearchFindMySession

- (_TtC4Maps19SearchFindMySession)init
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps19SearchFindMySession_session) = 0;
  MySession = type metadata accessor for SearchFindMySession();
  v12.receiver = self;
  v12.super_class = MySession;
  v7 = [(SearchFindMySession *)&v12 init];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v10 = v7;
  sub_10020AAE4(0, 0, v5, &unk_1011FF6D8, v9);

  return v10;
}

@end