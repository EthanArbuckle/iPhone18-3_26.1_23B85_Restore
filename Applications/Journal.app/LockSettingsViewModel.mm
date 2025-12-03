@interface LockSettingsViewModel
- (_TtC7Journal21LockSettingsViewModel)init;
- (void)environment:(id)environment stateDidChangeFromOldState:(id)state;
- (void)systemProtectionDidChange:(id)change;
@end

@implementation LockSettingsViewModel

- (_TtC7Journal21LockSettingsViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemProtectionDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  v9[1] = self;
  sub_10051721C();
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)environment:(id)environment stateDidChangeFromOldState:(id)state
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  selfCopy = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = selfCopy;
  sub_1003E9628(0, 0, v7, &unk_10096CB60, v11);
}

@end