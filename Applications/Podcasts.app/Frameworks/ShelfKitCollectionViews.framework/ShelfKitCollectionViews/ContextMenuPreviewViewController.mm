@interface ContextMenuPreviewViewController
- (_TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ContextMenuPreviewViewController

- (void)loadView
{
  selfCopy = self;
  sub_22D31C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContextMenuPreviewViewController();
  [(ContextMenuPreviewViewController *)&v4 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_22D9F4();
}

- (_TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end