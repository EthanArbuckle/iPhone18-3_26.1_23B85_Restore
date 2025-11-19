@interface PlaybackContinuityActivityDelegate
- (_TtC8Podcasts34PlaybackContinuityActivityDelegate)init;
- (uint64_t)userActivityWasContinued:;
- (void)userActivity:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5;
- (void)userActivityWillSave:(id)a3;
@end

@implementation PlaybackContinuityActivityDelegate

- (void)userActivityWillSave:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100269C14(v4);
}

- (void)userActivity:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10026C2C4(v10);
}

- (_TtC8Podcasts34PlaybackContinuityActivityDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)userActivityWasContinued:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.userActivity.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity was continued", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

@end