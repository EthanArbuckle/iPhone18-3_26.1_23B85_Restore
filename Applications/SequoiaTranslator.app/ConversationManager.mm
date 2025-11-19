@interface ConversationManager
- (void)_accessbilityEvaluateTurnData:(id)a3 languageCode:(id)a4;
- (void)handleAudioInterruptionWithNotification:(id)a3;
- (void)handleResignWithNotification:(id)a3;
- (void)handleRouteChangeWithNotification:(id)a3;
- (void)languageDetectionResult:(id)a3;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)a3;
- (void)translationDidFinishWithError:(id)a3;
- (void)translatorDidTranslate:(id)a3;
@end

@implementation ConversationManager

- (void)handleRouteChangeWithNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000A4A1C();
  (*(v4 + 8))(v6, v3);
}

- (void)handleAudioInterruptionWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100098FDC();

  (*(v5 + 8))(v7, v4);
}

- (void)handleResignWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = self;
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
  v2 = self;
  sub_1000A0E74();
}

- (void)languageDetectionResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A12EC(v4);
}

- (void)speechRecognitionResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A1D68(v4);
}

- (void)translatorDidTranslate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A24DC(v4);
}

- (void)translationDidFinishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1000A2C8C(a3);
}

- (void)_accessbilityEvaluateTurnData:(id)a3 languageCode:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_1000A538C(v5, v7, v8, v10);
}

@end