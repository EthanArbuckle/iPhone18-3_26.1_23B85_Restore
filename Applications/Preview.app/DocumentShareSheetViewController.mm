@interface DocumentShareSheetViewController
- (_TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DocumentShareSheetViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DocumentShareSheetViewController(0);
  v5 = self;
  [(DocumentShareSheetViewController *)&v7 viewWillAppear:v3];
  if (sub_10006A15C())
  {
    v6 = [objc_opt_self() sharedApplication];
    [(DocumentShareSheetViewController *)v6 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

    v5 = v6;
  }

  else
  {
  }
}

- (_TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
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