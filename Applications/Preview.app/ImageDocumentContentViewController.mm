@interface ImageDocumentContentViewController
- (BOOL)isEditing;
- (_TtC7Preview34ImageDocumentContentViewController)init;
- (void)setEditing:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ImageDocumentContentViewController

- (BOOL)isEditing
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ImageDocumentContentViewController();
  v3 = [(ImageDocumentContentViewController *)&v5 isEditing];

  return v3;
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for ImageDocumentContentViewController();
  v5 = self;
  [(ImageDocumentContentViewController *)&v6 setEditing:v3];
  sub_100062344();
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_100062AD0();
}

- (void)viewWillDisappear:(BOOL)a3
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
  v7.super_class = type metadata accessor for ImageDocumentContentViewController();
  v5 = self;
  [(ImageDocumentContentViewController *)&v7 viewWillDisappear:v3];
  swift_beginAccess();
  sub_1000685C0(&v6, 0);
  swift_endAccess();
}

- (_TtC7Preview34ImageDocumentContentViewController)init
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