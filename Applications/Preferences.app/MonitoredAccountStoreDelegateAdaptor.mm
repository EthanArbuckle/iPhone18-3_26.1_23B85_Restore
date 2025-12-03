@interface MonitoredAccountStoreDelegateAdaptor
- (_TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor)init;
- (void)dealloc;
@end

@implementation MonitoredAccountStoreDelegateAdaptor

- (_TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v19 - v6);
  v8 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v19 - v16;
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(self + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsChangeStream, v17, v13);
  (*(v9 + 32))(self + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsStreamContinuation, v12, v8);
  v21.receiver = self;
  v21.super_class = ObjectType;
  return [(MonitoredAccountStoreDelegateAdaptor *)&v21 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, self + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsStreamContinuation, v4);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v8, v4);
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(MonitoredAccountStoreDelegateAdaptor *)&v10 dealloc];
}

@end