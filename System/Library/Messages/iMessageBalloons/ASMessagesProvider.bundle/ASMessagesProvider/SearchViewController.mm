@interface SearchViewController
- (_TtC18ASMessagesProvider20SearchViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  sub_2AD9E4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2AE090(appear);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(SearchViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
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
  sub_2AE2A4(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2AE3D4(change);
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
  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] viewWillTransitionToSize:coordinator withTransitionCoordinator:{width, height, v8.receiver, v8.super_class}];

  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SearchViewController();
  v2 = v4.receiver;
  [(SearchViewController *)&v4 viewWillLayoutSubviews];
  searchBar = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController] searchBar];
  [v2 pageMarginInsets];
  [searchBar setLayoutMargins:?];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2AE7EC();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_2B4478();
}

- (void)presentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2AF964(controllerCopy);
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2AFAC4(controllerCopy);
}

- (void)didDismissSearchController:(id)controller
{
  selfCopy = self;
  sub_5D6BC4(0);
}

- (void)willPresentSearchController:(id)controller
{
  selfCopy = self;
  sub_6B8034();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2AFE84(controllerCopy);
}

- (_TtC18ASMessagesProvider20SearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end