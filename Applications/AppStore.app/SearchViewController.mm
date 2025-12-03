@interface SearchViewController
- (_TtC8AppStore20SearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)didDismissSearchController:(id)controller;
- (void)presentSearchController:(id)controller;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SearchViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003FC690();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003FCD3C(appear);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(SearchViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003FCF50(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003FD080(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(SearchViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  [*&v7[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] viewWillTransitionToSize:coordinator withTransitionCoordinator:{width, height, v8.receiver, v8.super_class}];

  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SearchViewController();
  v2 = v4.receiver;
  [(SearchViewController *)&v4 viewWillLayoutSubviews];
  searchBar = [*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] searchBar];
  [v2 pageMarginInsets];
  [searchBar setLayoutMargins:?];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1003FD498();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100403994();
}

- (void)presentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003FE610(controllerCopy);
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003FE770(controllerCopy);
}

- (void)didDismissSearchController:(id)controller
{
  selfCopy = self;
  sub_100160F74(0);
}

- (void)willPresentSearchController:(id)controller
{
  selfCopy = self;
  sub_1006E3FE0();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003FEB30(controllerCopy);
}

- (_TtC8AppStore20SearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end