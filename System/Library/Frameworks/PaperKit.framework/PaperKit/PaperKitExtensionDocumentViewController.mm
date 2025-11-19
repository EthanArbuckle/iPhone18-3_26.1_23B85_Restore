@interface PaperKitExtensionDocumentViewController
- (_TtC8PaperKit39PaperKitExtensionDocumentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PaperKitExtensionDocumentViewController

- (void)viewDidLoad
{
  v2 = self;
  PaperKitExtensionDocumentViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  PaperKitExtensionDocumentViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaperKitExtensionDocumentViewController();
  v2 = v3.receiver;
  [(PaperKitExtensionDocumentViewController *)&v3 viewDidLayoutSubviews];
  PaperKitExtensionDocumentViewController.adjustScaleAndInterpageSpacing()();
}

- (_TtC8PaperKit39PaperKitExtensionDocumentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end