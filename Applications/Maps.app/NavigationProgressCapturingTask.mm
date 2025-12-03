@interface NavigationProgressCapturingTask
- (_TtC4Maps31NavigationProgressCapturingTask)init;
- (void)navigationRouteInterrupter:(id)interrupter finishedInteruptingEntryWithIdentifier:(id)identifier;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service willEndWithReason:(unint64_t)reason;
@end

@implementation NavigationProgressCapturingTask

- (void)navigationRouteInterrupter:(id)interrupter finishedInteruptingEntryWithIdentifier:(id)identifier
{
  v6 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100518C4C(v8);
  swift_unknownObjectRelease();

  sub_100024F64(v8, &unk_101918E50);
}

- (_TtC4Maps31NavigationProgressCapturingTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  selfCopy = self;
  sub_100517BCC(service);
}

- (void)navigationService:(id)service willEndWithReason:(unint64_t)reason
{
  serviceCopy = service;
  selfCopy = self;
  sub_10051858C(service, reason);
}

@end