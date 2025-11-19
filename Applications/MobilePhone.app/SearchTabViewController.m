@interface SearchTabViewController
+ (id)searchControllersForDifferentSectionsUsingRecentsController:(id)a3 with:(id)a4 and:(id)a5 in:(id)a6 hostingNavigationController:(id)a7;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4;
- (_TtC11MobilePhone23SearchTabViewController)initWithCoder:(id)a3;
- (_TtC11MobilePhone23SearchTabViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11MobilePhone23SearchTabViewController)initWithSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)handleShowDetailsURLForUniqueID:(id)a3;
- (void)searchControllerBeginDragging;
- (void)startSearchingForText:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SearchTabViewController

- (_TtC11MobilePhone23SearchTabViewController)initWithSearchController:(id)a3
{
  v4 = &self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText];
  *v4 = 0;
  *(v4 + 1) = 0;
  self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation] = 0;
  *&self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_searchController] = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchTabViewController();
  v5 = a3;
  return [(SearchTabViewController *)&v7 initWithNibName:0 bundle:0];
}

- (_TtC11MobilePhone23SearchTabViewController)initWithCoder:(id)a3
{
  v3 = &self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText];
  *v3 = 0;
  *(v3 + 1) = 0;
  self->MPSearchViewController_opaque[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)searchControllersForDifferentSectionsUsingRecentsController:(id)a3 with:(id)a4 and:(id)a5 in:(id)a6 hostingNavigationController:(id)a7
{
  swift_getObjectType();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = specialized static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(v12, a4, v14, v15);

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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  SearchTabViewController.viewDidAppear(_:)(a3);
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4
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
  v5 = self;
  v2 = [(SearchTabViewController *)v5 navigationItem];
  v3 = [v2 searchController];

  if (v3)
  {
    v4 = [v3 searchBar];

    [v4 resignFirstResponder];
  }
}

- (void)willPresentSearchController:(id)a3
{
  v3 = a3;
  [v3 setShowsSearchResultsController:1];
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.donateEventSearchedCallHistory()();
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  SearchTabViewController.didPresentSearchController(_:)(v4);
}

- (void)startSearchingForText:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  SearchTabViewController.startSearching(for:)(v8);
}

- (void)handleShowDetailsURLForUniqueID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  SearchTabViewController.handleShowDetailsURL(for:)(v8);
}

- (_TtC11MobilePhone23SearchTabViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end