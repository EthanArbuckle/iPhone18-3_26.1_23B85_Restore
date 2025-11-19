@interface GizmoSyncManager
- (_TtC9StocksApp16GizmoSyncManager)init;
- (void)dealloc;
- (void)session:(id)a3 activationDidCompleteWithState:(int64_t)a4 error:(id)a5;
- (void)session:(id)a3 didReceiveMessage:(id)a4;
- (void)sessionDidBecomeInactive:;
- (void)sessionDidDeactivate:(id)a3;
@end

@implementation GizmoSyncManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA78 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v5, v4, qword_100051C10, 0);

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA80 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v6, v4, qword_100051C18, 0);

  v7.receiver = v4;
  v7.super_class = ObjectType;
  [(GizmoSyncManager *)&v7 dealloc];
}

- (_TtC9StocksApp16GizmoSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002A9EC(v4);
}

- (void)session:(id)a3 activationDidCompleteWithState:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_10002AAE4(a4, a5);
}

- (void)session:(id)a3 didReceiveMessage:(id)a4
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10002ADA8(v6);
}

- (void)sessionDidBecomeInactive:
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000296E4(v0, qword_100051C20);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "session did become inactive", v2, 2u);
  }
}

@end