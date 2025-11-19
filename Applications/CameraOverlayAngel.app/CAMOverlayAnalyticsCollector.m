@interface CAMOverlayAnalyticsCollector
- (CAMOverlayAnalyticsCollector)init;
- (void)cancelPresentation;
- (void)countChangeTo:(id)a3;
- (void)countClientWithPid:(int64_t)a3;
- (void)countDisconnection;
- (void)countDismissWithReason:(int64_t)a3;
- (void)countFullPressInPresentation;
- (void)countPresentationWithReason:(int64_t)a3 control:(id)a4;
- (void)observeContactRecognitionDelta:(double)a3;
- (void)registerConnectionWithName:(id)a3 pid:(int64_t)a4;
- (void)unregisterConnectionWithPID:(int64_t)a3;
@end

@implementation CAMOverlayAnalyticsCollector

- (void)registerConnectionWithName:(id)a3 pid:(int64_t)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  sub_100022904(v6, v8, a4);
}

- (void)unregisterConnectionWithPID:(int64_t)a3
{
  v4 = self;
  sub_100022D14(a3);
}

- (void)countClientWithPid:(int64_t)a3
{
  v4 = self;
  sub_1000230D4(a3);
}

- (void)countPresentationWithReason:(int64_t)a3 control:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_10002487C(a3, v6);
}

- (void)countFullPressInPresentation
{
  v2 = self;
  sub_100021AFC();
}

- (void)cancelPresentation
{
  v2 = self;
  sub_100021618();
}

- (void)countChangeTo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002537C(v4);
}

- (void)countDismissWithReason:(int64_t)a3
{
  v4 = self;
  sub_100020B60(a3);
}

- (void)countDisconnection
{
  v2 = self;
  sub_100025BE4();
}

- (void)observeContactRecognitionDelta:(double)a3
{
  v4 = self;
  sub_100026498(a3);
}

- (CAMOverlayAnalyticsCollector)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CAMOverlayAnalyticsCollector_clientEvent;
  v5 = type metadata accessor for ClientAnalyticsEvent(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR___CAMOverlayAnalyticsCollector_presentationEvent;
  v7 = type metadata accessor for PresentationAnalyticsEvent(0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.isa + OBJC_IVAR___CAMOverlayAnalyticsCollector_connectionsByPID) = &_swiftEmptyDictionarySingleton;
  *(&self->super.isa + OBJC_IVAR___CAMOverlayAnalyticsCollector_disconnectTimer) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CAMOverlayAnalyticsCollector *)&v9 init];
}

@end