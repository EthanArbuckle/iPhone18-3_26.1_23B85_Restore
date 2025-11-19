@interface FMHelpFriendView
- (_TtC6FindMy16FMHelpFriendView)initWithFrame:(CGRect)a3;
- (void)handleLinkTap;
@end

@implementation FMHelpFriendView

- (_TtC6FindMy16FMHelpFriendView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleLinkTap
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000BD1D4(v2);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMHelpFriendView: Cannot go to icloud.com", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMHelpFriendView: User tapped help a friend", v14, 2u);
    }

    v15 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    sub_10015391C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10010E644();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 openURL:v18 options:isa completionHandler:0];

    (*(v4 + 8))(v6, v3);
  }
}

@end