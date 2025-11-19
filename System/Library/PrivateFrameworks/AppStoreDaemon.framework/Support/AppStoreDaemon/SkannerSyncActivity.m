@interface SkannerSyncActivity
- (NSString)descriptiveName;
- (_TtC9appstored19SkannerSyncActivity)init;
- (uint64_t)run;
@end

@implementation SkannerSyncActivity

- (NSString)descriptiveName
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC9appstored19SkannerSyncActivity)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9appstored19SkannerSyncActivity_deadline) = 0;
  v4 = (self + OBJC_IVAR____TtC9appstored19SkannerSyncActivity_descriptiveName);
  *v4 = 0xD000000000000013;
  v4[1] = 0x8000000100452300;
  *(self + OBJC_IVAR____TtC9appstored19SkannerSyncActivity_isEnabled) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ActivityClass *)&v6 init];
}

- (uint64_t)run
{
  v0 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.skanner.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Run sync activity", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v10 = StaticString.description.getter();
  v12 = v11;
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  sub_1003204A0(v13, v14);

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v10;
  v16[5] = v12;
  sub_10019F02C(0, 0, v2, &unk_1004385D8, v16);
}

@end