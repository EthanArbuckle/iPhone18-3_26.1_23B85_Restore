@interface DocumentShareSheetViewController
- (_TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DocumentShareSheetViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DocumentShareSheetViewController(0);
  selfCopy = self;
  [(DocumentShareSheetViewController *)&v7 viewWillAppear:appearCopy];
  if (sub_10006A15C())
  {
    sharedApplication = [objc_opt_self() sharedApplication];
    [(DocumentShareSheetViewController *)sharedApplication sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

    selfCopy = sharedApplication;
  }

  else
  {
  }
}

- (_TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
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