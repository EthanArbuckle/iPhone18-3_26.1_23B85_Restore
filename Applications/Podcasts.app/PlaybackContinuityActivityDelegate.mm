@interface PlaybackContinuityActivityDelegate
- (_TtC8Podcasts34PlaybackContinuityActivityDelegate)init;
- (uint64_t)userActivityWasContinued:;
- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)userActivityWillSave:(id)save;
@end

@implementation PlaybackContinuityActivityDelegate

- (void)userActivityWillSave:(id)save
{
  saveCopy = save;
  selfCopy = self;
  sub_100269C14(saveCopy);
}

- (void)userActivity:(id)activity didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  activityCopy = activity;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  selfCopy = self;
  sub_10026C2C4(outputStreamCopy);
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