@interface SidebarThumbnailViewController
- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithCoder:(id)coder;
- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  selfCopy = self;
  [(SidebarThumbnailViewController *)&v7 viewDidLoad];
  v4 = [(SidebarThumbnailViewController *)selfCopy view:v7.receiver];
  if (v4)
  {
    v5 = v4;
    v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController_paperDocumentThumbnailView);
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

- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v7;
  }

  v8 = OBJC_IVAR____TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController_paperDocumentThumbnailView;
  v9 = objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView());
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  if (name)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SidebarThumbnailViewController();
  v12 = [(SidebarThumbnailViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController)initWithCoder:(id)coder
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
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SidebarThumbnailViewController();
  v8 = [(SidebarThumbnailViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end