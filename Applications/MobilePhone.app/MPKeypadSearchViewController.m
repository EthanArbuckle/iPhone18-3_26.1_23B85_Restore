@interface MPKeypadSearchViewController
- (MPKeypadSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MPKeypadSearchViewController)initWithOnDismissHandler:(id)a3;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4;
- (void)cancel;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)updateSearchText:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MPKeypadSearchViewController

- (MPKeypadSearchViewController)initWithOnDismissHandler:(id)a3
{
  v3 = _Block_copy(a3);
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
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];

    KeypadSearchViewController.setupConstraints()();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  KeypadSearchViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MPKeypadSearchViewController *)&v7 viewWillDisappear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setNavigationBarHidden:0 animated:0];
  }
}

- (void)updateSearchText:(id)a3
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
  KeypadSearchViewController.updateSearchText(_:)(v8);
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4
{
  v5 = objc_opt_self();

  [v5 separatorInsetForContentSizeCategory:a3 isEditing:0];
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)cancel
{
  v2 = self;
  KeypadSearchViewController.cancel()();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  KeypadSearchViewController.cancel()();
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v5 = self;
  v3 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    [*(&v5->super.super.super.isa + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar) resignFirstResponder];
    *(&v5->super.super.super.isa + OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder) = 0;
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v7 = self;
  v6 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController, closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter);
  MPSearchViewController.updateSearchResults(for:)(v5);
}

- (MPKeypadSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end