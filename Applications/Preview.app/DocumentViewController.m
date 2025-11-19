@interface DocumentViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (UIDocument)document;
- (UINavigationItem)navigationItem;
- (_TtC7Preview22DocumentViewController)initWithCoder:(id)a3;
- (_TtC7Preview22DocumentViewController)initWithDocument:(id)a3;
- (_TtC7Preview22DocumentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)navigationItemDidUpdate;
- (void)newFromPasteboard:(id)a3;
- (void)setDocument:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation DocumentViewController

- (UIDocument)document
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for DocumentViewController(0);
  v3 = [(DocumentViewController *)&v5 document];

  return v3;
}

- (void)setDocument:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = type metadata accessor for DocumentViewController(0);
  v10.receiver = self;
  v10.super_class = v5;
  v6 = a3;
  v7 = self;
  v8 = [(DocumentViewController *)&v10 document];
  v9.receiver = v7;
  v9.super_class = v5;
  [(DocumentViewController *)&v9 setDocument:v6];
  sub_10006CCBC(v8);
}

- (_TtC7Preview22DocumentViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_100079A74();
}

- (UINavigationItem)navigationItem
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem);
  if (v3)
  {
    v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = type metadata accessor for DocumentViewController(0);
    v4 = [(DocumentViewController *)&v7 navigationItem];
    v3 = 0;
  }

  v5 = v3;

  return v4;
}

- (void)navigationItemDidUpdate
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for DocumentViewController(0);
  v3 = self;
  [(DocumentViewController *)&v4 navigationItemDidUpdate];
  sub_100070050();
  sub_10006F2C4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for DocumentViewController(0);
  v5 = self;
  [(DocumentViewController *)&v8 viewDidAppear:v3];
  v6 = OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction;
  if (*(&v5->super.super.super.super.isa + OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction))
  {

    sub_100072094(v7);

    *(&v5->super.super.super.super.isa + v6) = 0;
  }

  else
  {
  }
}

- (_TtC7Preview22DocumentViewController)initWithDocument:(id)a3
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

- (_TtC7Preview22DocumentViewController)initWithNibName:(id)a3 bundle:(id)a4
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = self;
  }

  v9 = sub_1000735A8(a3, v11);

  sub_100007710(v11, &qword_100206500);

  return v9 & 1;
}

- (void)newFromPasteboard:(id)a3
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
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = self;
  }

  sub_10007A04C(v7);

  sub_100007710(v7, &qword_100206500);
}

@end