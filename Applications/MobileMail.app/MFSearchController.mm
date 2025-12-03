@interface MFSearchController
- (MFSearchBar)searchBar;
- (MFSearchController)initWithSearchResultsController:(id)controller;
- (void)_handleMailNavigationControllerShowViewController:(id)controller;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MFSearchController

- (MFSearchBar)searchBar
{
  searchBar = self->_searchBar;
  if (!searchBar)
  {
    v4 = [[MFSearchBar alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_searchBar;
    self->_searchBar = v4;

    searchBar = self->_searchBar;
  }

  return searchBar;
}

- (MFSearchController)initWithSearchResultsController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MFSearchController;
  v5 = [(MFSearchController *)&v8 initWithSearchResultsController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(MFSearchController *)v5 setScopeBarActivation:2];
  }

  return v6;
}

- (void)dealloc
{
  [(MFSearchController *)self setDelegate:0];
  [(MFSearchController *)self setSearchResultsUpdater:0];
  v3.receiver = self;
  v3.super_class = MFSearchController;
  [(MFSearchController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MFSearchController;
  [(MFSearchController *)&v3 viewDidLoad];
  [(MFSearchController *)self _setShowResultsForEmptySearch:1];
  [(MFSearchController *)self setScopeBarActivation:2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MFSearchController;
  [(MFSearchController *)&v6 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleMailNavigationControllerShowViewController:" name:MailNavigationControllerWillShowViewControllerNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleMailNavigationControllerShowViewController:" name:MailNavigationControllerDidShowViewControllerNotification object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MFSearchController;
  [(MFSearchController *)&v6 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MailNavigationControllerWillShowViewControllerNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:MailNavigationControllerDidShowViewControllerNotification object:0];
}

- (void)_handleMailNavigationControllerShowViewController:(id)controller
{
  controllerCopy = controller;
  userInfo = [controllerCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:MailNavigationControllerNewViewControllerKey];

  userInfo2 = [controllerCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:MailNavigationControllerPreviousViewControllerKey];

  userInfo3 = [controllerCopy userInfo];
  v9 = [userInfo3 objectForKeyedSubscript:MailNavigationControllerAnimatedKey];

  bOOLValue = [v9 BOOLValue];
  name = [controllerCopy name];
  v12 = [name isEqual:MailNavigationControllerWillShowViewControllerNotification];

  presentingViewController = [(MFSearchController *)self presentingViewController];
  parentViewController = [presentingViewController parentViewController];

  presentingViewController2 = [(MFSearchController *)self presentingViewController];

  if (v5 == presentingViewController2 || v5 == parentViewController)
  {
    searchResultsController = [(MFSearchController *)self searchResultsController];
    if (v12)
    {
      [searchResultsController beginAppearanceTransition:1 animated:bOOLValue];
      goto LABEL_10;
    }

LABEL_9:
    [searchResultsController endAppearanceTransition];
    goto LABEL_10;
  }

  presentingViewController3 = [(MFSearchController *)self presentingViewController];

  if (v7 == presentingViewController3 || v7 == parentViewController)
  {
    searchResultsController = [(MFSearchController *)self searchResultsController];
    if (v12)
    {
      [searchResultsController beginAppearanceTransition:0 animated:bOOLValue];
LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
}

@end