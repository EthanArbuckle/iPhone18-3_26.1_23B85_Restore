@interface SearchTabViewController
+ (id)searchControllersForDifferentSectionsUsingRecentsController:(id)controller with:(id)with and:(id)and in:(id)in hostingNavigationController:(id)navigationController;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing;
- (_TtC11MobilePhone23SearchTabViewController)initWithCoder:(id)coder;
- (_TtC11MobilePhone23SearchTabViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11MobilePhone23SearchTabViewController)initWithSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)handleShowDetailsURLForUniqueID:(id)d;
- (void)searchControllerBeginDragging;
- (void)startSearchingForText:(id)text;
- (void)viewDidAppear:(BOOL)appear;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SearchTabViewController

- (_TtC11MobilePhone23SearchTabViewController)initWithSearchController:(id)controller
{
  v4 = &self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText];
  *v4 = 0;
  *(v4 + 1) = 0;
  self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation] = 0;
  *&self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_searchController] = controller;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchTabViewController();
  controllerCopy = controller;
  return [(SearchTabViewController *)&v7 initWithNibName:0 bundle:0];
}

- (_TtC11MobilePhone23SearchTabViewController)initWithCoder:(id)coder
{
  v3 = &self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText];
  *v3 = 0;
  *(v3 + 1) = 0;
  self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)searchControllersForDifferentSectionsUsingRecentsController:(id)controller with:(id)with and:(id)and in:(id)in hostingNavigationController:(id)navigationController
{
  swift_getObjectType();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  andCopy = and;
  inCopy = in;
  navigationControllerCopy = navigationController;
  v16 = specialized static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(controllerCopy, with, inCopy, navigationControllerCopy);

  swift_unknownObjectRelease();
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  return v17.super.isa;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  SearchTabViewController.viewDidAppear(_:)(appear);
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)searchControllerBeginDragging
{
  selfCopy = self;
  navigationItem = [(SearchTabViewController *)selfCopy navigationItem];
  searchController = [navigationItem searchController];

  if (searchController)
  {
    searchBar = [searchController searchBar];

    [searchBar resignFirstResponder];
  }
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setShowsSearchResultsController:1];
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.donateEventSearchedCallHistory()();
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  SearchTabViewController.didPresentSearchController(_:)(controllerCopy);
}

- (void)startSearchingForText:(id)text
{
  if (text)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  SearchTabViewController.startSearching(for:)(v8);
}

- (void)handleShowDetailsURLForUniqueID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  SearchTabViewController.handleShowDetailsURL(for:)(v8);
}

- (_TtC11MobilePhone23SearchTabViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end