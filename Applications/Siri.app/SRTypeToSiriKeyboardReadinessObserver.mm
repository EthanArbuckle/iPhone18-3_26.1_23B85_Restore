@interface SRTypeToSiriKeyboardReadinessObserver
- (SRTypeToSiriKeyboardReadinessObserver)init;
- (SRTypeToSiriKeyboardReadinessObserver)initWithDelegate:(id)delegate;
- (void)keyboardCanRespondToUserInputWithNotification:(id)notification;
- (void)start;
- (void)stop;
@end

@implementation SRTypeToSiriKeyboardReadinessObserver

- (SRTypeToSiriKeyboardReadinessObserver)initWithDelegate:(id)delegate
{
  v4 = OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter;
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  *(&self->super.isa + v4) = [v5 defaultCenter];
  *(&self->super.isa + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_isListening) = 0;
  *(&self->super.isa + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TypeToSiriKeyboardReadinessObserver();
  v6 = [(SRTypeToSiriKeyboardReadinessObserver *)&v8 init];
  swift_unknownObjectRelease();
  return v6;
}

- (void)start
{
  selfCopy = self;
  sub_100094918();
}

- (void)stop
{
  selfCopy = self;
  sub_100094F90();
}

- (void)keyboardCanRespondToUserInputWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100095214();

  (*(v5 + 8))(v7, v4);
}

- (SRTypeToSiriKeyboardReadinessObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end