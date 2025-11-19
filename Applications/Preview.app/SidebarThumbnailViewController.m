@interface SidebarThumbnailViewController
- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithCoder:(id)a3;
- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SidebarThumbnailViewController

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for SidebarThumbnailViewController();
  v3 = self;
  [(SidebarThumbnailViewController *)&v7 viewDidLoad];
  v4 = [(SidebarThumbnailViewController *)v3 view:v7.receiver];
  if (v4)
  {
    v5 = v4;
    v6 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController_paperDocumentThumbnailView);
    [v4 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
    [v5 addSubview:v6];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v7;
  }

  v8 = OBJC_IVAR____TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController_paperDocumentThumbnailView;
  v9 = objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView());
  v10 = a4;
  *(&self->super.super.super.isa + v8) = [v9 initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SidebarThumbnailViewController();
  v12 = [(SidebarThumbnailViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController_paperDocumentThumbnailView;
  v6 = objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView());
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SidebarThumbnailViewController();
  v8 = [(SidebarThumbnailViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end