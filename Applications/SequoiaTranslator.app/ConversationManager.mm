@interface ConversationManager
- (void)_accessbilityEvaluateTurnData:(id)data languageCode:(id)code;
- (void)handleAudioInterruptionWithNotification:(id)notification;
- (void)handleResignWithNotification:(id)notification;
- (void)handleRouteChangeWithNotification:(id)notification;
- (void)languageDetectionResult:(id)result;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)result;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation ConversationManager

- (void)handleRouteChangeWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000A4A1C();
  (*(v4 + 8))(v6, v3);
}

- (void)handleAudioInterruptionWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100098FDC();

  (*(v5 + 8))(v7, v4);
}

- (void)handleResignWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  if (v9[40] == 2)
  {
    sub_1000968EC(v9);
    sub_10009BAC0(0, 0, 0);

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1000968EC(v9);
  }
}

- (void)speechActivityDetected
{
  selfCopy = self;
  sub_1000A0E74();
}

- (void)languageDetectionResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_1000A12EC(resultCopy);
}

- (void)speechRecognitionResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_1000A1D68(resultCopy);
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  selfCopy = self;
  sub_1000A24DC(translateCopy);
}

- (void)translationDidFinishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1000A2C8C(error);
}

- (void)_accessbilityEvaluateTurnData:(id)data languageCode:(id)code
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_1000A538C(v5, v7, v8, v10);
}

@end