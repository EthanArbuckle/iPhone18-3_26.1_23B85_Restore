@interface LTSceneDelegate
- (_TtC19LiveTranscriptionUI15LTSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation LTSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001A568(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

- (_TtC19LiveTranscriptionUI15LTSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_systemLanguageChanged) = sub_100019BC4;
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_featureEnabledChanged) = sub_100019E48;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LTSceneDelegate();
  return [(LTSceneDelegate *)&v3 init];
}

@end