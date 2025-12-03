@interface DocumentViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (UIDocument)document;
- (UINavigationItem)navigationItem;
- (_TtC7Preview22DocumentViewController)initWithCoder:(id)coder;
- (_TtC7Preview22DocumentViewController)initWithDocument:(id)document;
- (_TtC7Preview22DocumentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)navigationItemDidUpdate;
- (void)newFromPasteboard:(id)pasteboard;
- (void)setDocument:(id)document;
- (void)viewDidAppear:(BOOL)appear;
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
  document = [(DocumentViewController *)&v5 document];

  return document;
}

- (void)setDocument:(id)document
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
  documentCopy = document;
  selfCopy = self;
  document = [(DocumentViewController *)&v10 document];
  v9.receiver = selfCopy;
  v9.super_class = v5;
  [(DocumentViewController *)&v9 setDocument:documentCopy];
  sub_10006CCBC(document);
}

- (_TtC7Preview22DocumentViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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
    navigationItem = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = type metadata accessor for DocumentViewController(0);
    navigationItem = [(DocumentViewController *)&v7 navigationItem];
    v3 = 0;
  }

  v5 = v3;

  return navigationItem;
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
  selfCopy = self;
  [(DocumentViewController *)&v4 navigationItemDidUpdate];
  sub_100070050();
  sub_10006F2C4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for DocumentViewController(0);
  selfCopy = self;
  [(DocumentViewController *)&v8 viewDidAppear:appearCopy];
  v6 = OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction;
  if (*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction))
  {

    sub_100072094(v7);

    *(&selfCopy->super.super.super.super.isa + v6) = 0;
  }

  else
  {
  }
}

- (_TtC7Preview22DocumentViewController)initWithDocument:(id)document
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

- (_TtC7Preview22DocumentViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  v9 = sub_1000735A8(action, v11);

  sub_100007710(v11, &qword_100206500);

  return v9 & 1;
}

- (void)newFromPasteboard:(id)pasteboard
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (pasteboard)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_10007A04C(v7);

  sub_100007710(v7, &qword_100206500);
}

@end