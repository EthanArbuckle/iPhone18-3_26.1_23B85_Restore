@interface OffGridStateManagerDelegateAdaptor
- (_TtC11SettingsApp34OffGridStateManagerDelegateAdaptor)init;
- (void)dealloc;
- (void)manager:(id)a3 offGridModeUpdated:(int64_t)a4 publishStatus:(int64_t)a5 context:(id)a6;
@end

@implementation OffGridStateManagerDelegateAdaptor

- (_TtC11SettingsApp34OffGridStateManagerDelegateAdaptor)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_10015E9D8, &unk_100115CB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v19 - v6);
  v8 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v19 - v16;
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(self + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStream, v17, v13);
  (*(v9 + 32))(self + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStreamContinuation, v12, v8);
  v21.receiver = self;
  v21.super_class = ObjectType;
  return [(OffGridStateManagerDelegateAdaptor *)&v21 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, self + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStreamContinuation, v4);
  v9 = self;
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v8, v4);
  v10.receiver = v9;
  v10.super_class = ObjectType;
  [(OffGridStateManagerDelegateAdaptor *)&v10 dealloc];
}

- (void)manager:(id)a3 offGridModeUpdated:(int64_t)a4 publishStatus:(int64_t)a5 context:(id)a6
{
  v8 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14[-v11];
  v14[15] = a4 == 2;
  v13 = self;
  sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  AsyncStream.Continuation.yield(_:)();

  (*(v9 + 8))(v12, v8);
}

@end