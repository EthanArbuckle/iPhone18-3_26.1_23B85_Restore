@interface CAMOverlayAnalyticsCollector
- (CAMOverlayAnalyticsCollector)init;
- (void)cancelPresentation;
- (void)countChangeTo:(id)to;
- (void)countClientWithPid:(int64_t)pid;
- (void)countDisconnection;
- (void)countDismissWithReason:(int64_t)reason;
- (void)countFullPressInPresentation;
- (void)countPresentationWithReason:(int64_t)reason control:(id)control;
- (void)observeContactRecognitionDelta:(double)delta;
- (void)registerConnectionWithName:(id)name pid:(int64_t)pid;
- (void)unregisterConnectionWithPID:(int64_t)d;
@end

@implementation CAMOverlayAnalyticsCollector

- (void)registerConnectionWithName:(id)name pid:(int64_t)pid
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  sub_100022904(v6, v8, pid);
}

- (void)unregisterConnectionWithPID:(int64_t)d
{
  selfCopy = self;
  sub_100022D14(d);
}

- (void)countClientWithPid:(int64_t)pid
{
  selfCopy = self;
  sub_1000230D4(pid);
}

- (void)countPresentationWithReason:(int64_t)reason control:(id)control
{
  controlCopy = control;
  selfCopy = self;
  sub_10002487C(reason, controlCopy);
}

- (void)countFullPressInPresentation
{
  selfCopy = self;
  sub_100021AFC();
}

- (void)cancelPresentation
{
  selfCopy = self;
  sub_100021618();
}

- (void)countChangeTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_10002537C(toCopy);
}

- (void)countDismissWithReason:(int64_t)reason
{
  selfCopy = self;
  sub_100020B60(reason);
}

- (void)countDisconnection
{
  selfCopy = self;
  sub_100025BE4();
}

- (void)observeContactRecognitionDelta:(double)delta
{
  selfCopy = self;
  sub_100026498(delta);
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