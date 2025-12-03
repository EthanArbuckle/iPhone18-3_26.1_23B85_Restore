@interface DuplicateSheet.Coordinator
- (_TtCV7Preview14DuplicateSheet11Coordinator)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
@end

@implementation DuplicateSheet.Coordinator

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_100080078(v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvs();
}

- (_TtCV7Preview14DuplicateSheet11Coordinator)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end