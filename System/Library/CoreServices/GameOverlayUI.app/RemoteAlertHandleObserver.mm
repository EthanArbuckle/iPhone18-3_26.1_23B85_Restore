@interface RemoteAlertHandleObserver
- (_TtC13GameOverlayUI25RemoteAlertHandleObserver)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RemoteAlertHandleObserver

- (_TtC13GameOverlayUI25RemoteAlertHandleObserver)init
{
  swift_defaultActor_initialize();
  *self->map = &_swiftEmptyDictionarySingleton;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RemoteAlertHandleObserver();
  return [(RemoteAlertHandleObserver *)&v4 init];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;

  sub_10009C254(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;

  errorCopy = error;
  sub_10009C65C(handleCopy, error);
}

- (void)remoteAlertHandleDidActivate:
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100011F80(v0, qword_100135C88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "RemoteAlertHandle did activate.", v2, 2u);
  }
}

@end