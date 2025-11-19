@interface DocumentViewController
- (UIDocument)document;
- (_TtC7SwiftUI22DocumentViewController)initWithCoder:(id)a3;
- (_TtC7SwiftUI22DocumentViewController)initWithDocument:(id)a3;
- (_TtC7SwiftUI22DocumentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)documentDidOpen;
- (void)loadView;
- (void)navigationItemDidUpdate;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)setDocument:(id)a3;
@end

@implementation DocumentViewController

- (_TtC7SwiftUI22DocumentViewController)initWithCoder:(id)a3
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
  v2 = [(UIDocumentViewController *)&v4 document];

  return v2;
}

- (void)setDocument:(id)a3
{
  v5 = type metadata accessor for DocumentViewController(0);
  v10.receiver = self;
  v10.super_class = v5;
  v6 = a3;
  v7 = self;
  v8 = [(UIDocumentViewController *)&v10 document];
  v9.receiver = v7;
  v9.super_class = v5;
  [(UIDocumentViewController *)&v9 setDocument:v6];
  DocumentViewController.document.didset(v8);
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DocumentViewController(0);
  v2 = v4.receiver;
  v3 = [(UIDocumentViewController *)&v4 loadView];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))(v3);
}

- (void)documentDidOpen
{
  v2 = self;
  DocumentViewController.presentDocument()();
}

- (void)navigationItemDidUpdate
{
  v2 = self;
  DocumentViewController.navigationItemDidUpdate()();
}

- (_TtC7SwiftUI22DocumentViewController)initWithDocument:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI22DocumentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  specialized DocumentViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)(a5);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  DocumentViewController.presentationControllerWillDismiss(_:)(v4);
}

@end