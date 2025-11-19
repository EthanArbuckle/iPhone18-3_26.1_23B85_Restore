@interface NavigationProgressCapturingTask
- (_TtC4Maps31NavigationProgressCapturingTask)init;
- (void)navigationRouteInterrupter:(id)a3 finishedInteruptingEntryWithIdentifier:(id)a4;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 willEndWithReason:(unint64_t)a4;
@end

@implementation NavigationProgressCapturingTask

- (void)navigationRouteInterrupter:(id)a3 finishedInteruptingEntryWithIdentifier:(id)a4
{
  v6 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a4)
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
  v11 = self;
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

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_100517BCC(a3);
}

- (void)navigationService:(id)a3 willEndWithReason:(unint64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_10051858C(a3, a4);
}

@end