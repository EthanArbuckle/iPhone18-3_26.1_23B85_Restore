@interface StewieStateMonitorDelegateAdaptor
- (_TtC11SettingsApp33StewieStateMonitorDelegateAdaptor)init;
- (void)dealloc;
- (void)stateChanged:(id)changed;
@end

@implementation StewieStateMonitorDelegateAdaptor

- (_TtC11SettingsApp33StewieStateMonitorDelegateAdaptor)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_1001600C8, &qword_100117718);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v19 - v6);
  v8 = sub_10004DED0(&qword_1001600C0, &qword_100117710);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_10004DED0(&unk_1001600D0, &unk_100117720);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v19 - v16;
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(self + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStream, v17, v13);
  (*(v9 + 32))(self + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStreamContinuation, v12, v8);
  v21.receiver = self;
  v21.super_class = ObjectType;
  return [(StewieStateMonitorDelegateAdaptor *)&v21 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&qword_1001600C0, &qword_100117710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, self + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStreamContinuation, v4);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v8, v4);
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(StewieStateMonitorDelegateAdaptor *)&v10 dealloc];
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1000D8A24(changedCopy);
}

@end