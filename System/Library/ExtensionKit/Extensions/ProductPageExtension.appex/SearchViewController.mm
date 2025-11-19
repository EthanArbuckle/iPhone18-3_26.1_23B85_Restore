@interface SearchViewController
- (_TtC20ProductPageExtension20SearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)didDismissSearchController:(id)a3;
- (void)presentSearchController:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SearchViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10026EC4C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10026F2F8(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(SearchViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10026F50C(v6, a4);

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10026F63C(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(SearchViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] viewWillTransitionToSize:a4 withTransitionCoordinator:{width, height, v8.receiver, v8.super_class}];

  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SearchViewController();
  v2 = v4.receiver;
  [(SearchViewController *)&v4 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] searchBar];
  [v2 pageMarginInsets];
  [v3 setLayoutMargins:?];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10026FA54();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002758B0();
}

- (void)presentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100270BCC(v4);
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100270D2C(v4);
}

- (void)didDismissSearchController:(id)a3
{
  v3 = self;
  sub_100602B64(0);
}

- (void)willPresentSearchController:(id)a3
{
  v3 = self;
  sub_1000E0404();
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002710EC(v4);
}

- (_TtC20ProductPageExtension20SearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end