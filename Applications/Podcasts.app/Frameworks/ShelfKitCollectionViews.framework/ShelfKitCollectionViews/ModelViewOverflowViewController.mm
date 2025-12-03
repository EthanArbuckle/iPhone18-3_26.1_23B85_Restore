@interface ModelViewOverflowViewController
- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ModelViewOverflowViewController

- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithCoder:(id)coder
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_282F74();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_28363C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ModelViewOverflowViewController();
  v4 = v5.receiver;
  [(ModelViewOverflowViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2839C4(change);
}

- (_TtC23ShelfKitCollectionViews31ModelViewOverflowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end