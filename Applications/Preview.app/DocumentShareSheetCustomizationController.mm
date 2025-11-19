@interface DocumentShareSheetCustomizationController
- (BOOL)_customizationAvailableForActivityViewController:(id)a3;
- (_TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69341DocumentShareSheetCustomizationController)init;
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (id)customActionViewControllerForActivityViewController:(id)a3;
@end

@implementation DocumentShareSheetCustomizationController

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000085D8(0, &qword_1002093B8);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)_customizationAvailableForActivityViewController:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (id)customActionViewControllerForActivityViewController:(id)a3
{
  v4 = type metadata accessor for ExportSettingsView();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ExportSheetViewModel(0);
  sub_10006BBB8(&qword_100208130, type metadata accessor for ExportSheetViewModel);
  v8 = self;

  Bindable<A>.init(wrappedValue:)();
  v6[*(v4 + 20)] = 1;
  v9 = &v6[*(v4 + 24)];
  *v9 = sub_10006BF68;
  v9[1] = v7;
  v10 = objc_allocWithZone(sub_100005804(&qword_1002093B0));
  v11 = UIHostingController.init(rootView:)();

  return v11;
}

- (_TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69341DocumentShareSheetCustomizationController)init
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