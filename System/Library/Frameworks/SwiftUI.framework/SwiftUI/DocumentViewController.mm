@interface DocumentViewController
- (UIDocument)document;
- (_TtC7SwiftUI22DocumentViewController)initWithCoder:(id)coder;
- (_TtC7SwiftUI22DocumentViewController)initWithDocument:(id)document;
- (_TtC7SwiftUI22DocumentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)documentDidOpen;
- (void)loadView;
- (void)navigationItemDidUpdate;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setDocument:(id)document;
@end

@implementation DocumentViewController

- (_TtC7SwiftUI22DocumentViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_lastNavigationItemDescription;
  v5 = type metadata accessor for NavigationItemDescription(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI22DocumentViewController_onDocumentClose);
  *v6 = 0;
  v6[1] = 0;
  v7 = self + OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *v7 = 0u;
  *(v7 + 6) = 1;
  *(v7 + 13) = 0;
  *(v7 + 88) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI22DocumentViewController____lazy_storage___presentationModeLocation) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIDocument)document
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DocumentViewController(0);
  document = [(UIDocumentViewController *)&v4 document];

  return document;
}

- (void)setDocument:(id)document
{
  v5 = type metadata accessor for DocumentViewController(0);
  v10.receiver = self;
  v10.super_class = v5;
  documentCopy = document;
  selfCopy = self;
  document = [(UIDocumentViewController *)&v10 document];
  v9.receiver = selfCopy;
  v9.super_class = v5;
  [(UIDocumentViewController *)&v9 setDocument:documentCopy];
  DocumentViewController.document.didset(document);
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DocumentViewController(0);
  v2 = v4.receiver;
  loadView = [(UIDocumentViewController *)&v4 loadView];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))(loadView);
}

- (void)documentDidOpen
{
  selfCopy = self;
  DocumentViewController.presentDocument()();
}

- (void)navigationItemDidUpdate
{
  selfCopy = self;
  DocumentViewController.navigationItemDidUpdate()();
}

- (_TtC7SwiftUI22DocumentViewController)initWithDocument:(id)document
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI22DocumentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DocumentViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)(coordinator);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  DocumentViewController.presentationControllerWillDismiss(_:)(dismissCopy);
}

@end