@interface MPKeypadSearchViewController
- (MPKeypadSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MPKeypadSearchViewController)initWithOnDismissHandler:(id)handler;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing;
- (void)cancel;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)updateSearchText:(id)text;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MPKeypadSearchViewController

- (MPKeypadSearchViewController)initWithOnDismissHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v5 = 0;
  }

  return KeypadSearchViewController.init(onDismiss:)(v3, v5);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(MPKeypadSearchViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:systemBackgroundColor];

    KeypadSearchViewController.setupConstraints()();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  KeypadSearchViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MPKeypadSearchViewController *)&v7 viewWillDisappear:disappearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden:0 animated:0];
  }
}

- (void)updateSearchText:(id)text
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
  KeypadSearchViewController.updateSearchText(_:)(v8);
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing
{
  v5 = objc_opt_self();

  [v5 separatorInsetForContentSizeCategory:category isEditing:0];
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)cancel
{
  selfCopy = self;
  KeypadSearchViewController.cancel()();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  KeypadSearchViewController.cancel()();
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  selfCopy = self;
  v3 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
  isFirstResponder = [v3 isFirstResponder];

  if (isFirstResponder)
  {
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar) resignFirstResponder];
    *(&selfCopy->super.super.super.isa + OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder) = 0;
  }
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  v6 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController, closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter);
  MPSearchViewController.updateSearchResults(for:)(barCopy);
}

- (MPKeypadSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end