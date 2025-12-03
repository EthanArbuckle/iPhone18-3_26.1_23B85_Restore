@interface SpeechManager
- (_TtC17SequoiaTranslator13SpeechManager)init;
- (void)handleAudioInterruptionWithNotification:(id)notification;
- (void)languageDetectionResult:(id)result;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)result;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation SpeechManager

- (void)handleAudioInterruptionWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10023CB70();

  (*(v5 + 8))(v7, v4);
}

- (_TtC17SequoiaTranslator13SpeechManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)languageDetectionResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_10023D854(resultCopy, &unk_10038A968, sub_100241224, &unk_10038A980);
}

- (void)speechRecognitionResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_10023D854(resultCopy, &unk_10038A918, sub_1002411DC, &unk_10038A930);
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  selfCopy = self;
  sub_10023D854(translateCopy, &unk_10038A8C8, sub_1002411D4, &unk_10038A8E0);
}

- (void)translationDidFinishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_10023F5D8(error);
}

- (void)speechActivityDetected
{
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2890);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Speech activity detected", v2, 2u);
  }
}

@end