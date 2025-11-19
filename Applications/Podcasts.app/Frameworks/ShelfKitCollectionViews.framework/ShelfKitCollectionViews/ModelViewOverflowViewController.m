@interface ModelViewOverflowViewController
- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ModelViewOverflowViewController

- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithCoder:(id)a3
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_282F74();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_28363C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ModelViewOverflowViewController();
  v4 = v5.receiver;
  [(ModelViewOverflowViewController *)&v5 viewWillDisappear:v3];
  [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2839C4(a3);
}

- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end