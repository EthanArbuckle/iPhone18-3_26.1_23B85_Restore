@interface ContextMenuPreviewViewController
- (_TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ContextMenuPreviewViewController

- (void)loadView
{
  v2 = self;
  sub_22D31C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContextMenuPreviewViewController();
  [(ContextMenuPreviewViewController *)&v4 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_22D9F4();
}

- (_TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end