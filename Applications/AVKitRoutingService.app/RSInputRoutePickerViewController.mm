@interface RSInputRoutePickerViewController
+ (id)createWithClientIdentifier:(id)a3;
- (_TtC19AVKitRoutingService32RSInputRoutePickerViewController)init;
@end

@implementation RSInputRoutePickerViewController

+ (id)createWithClientIdentifier:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = _s19AVKitRoutingService32RSInputRoutePickerViewControllerC6create16clientIdentifierSo06UIViewH0CSS_tFZ_0(v3, v4);

  return v5;
}

- (_TtC19AVKitRoutingService32RSInputRoutePickerViewController)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for RSInputRoutePickerViewController();
  v3 = [(RSInputRoutePickerViewController *)&v5 init];

  return v3;
}

@end