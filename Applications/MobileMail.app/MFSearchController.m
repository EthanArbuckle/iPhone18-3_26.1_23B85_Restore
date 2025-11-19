@interface MFSearchController
- (MFSearchBar)searchBar;
- (MFSearchController)initWithSearchResultsController:(id)a3;
- (void)_handleMailNavigationControllerShowViewController:(id)a3;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (MFSearchController)initWithSearchResultsController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFSearchController;
  v5 = [(MFSearchController *)&v8 initWithSearchResultsController:v4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFSearchController;
  [(MFSearchController *)&v6 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleMailNavigationControllerShowViewController:" name:MailNavigationControllerWillShowViewControllerNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleMailNavigationControllerShowViewController:" name:MailNavigationControllerDidShowViewControllerNotification object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFSearchController;
  [(MFSearchController *)&v6 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MailNavigationControllerWillShowViewControllerNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:MailNavigationControllerDidShowViewControllerNotification object:0];
}

- (void)_handleMailNavigationControllerShowViewController:(id)a3
{
  v18 = a3;
  v4 = [v18 userInfo];
  v5 = [v4 objectForKeyedSubscript:MailNavigationControllerNewViewControllerKey];

  v6 = [v18 userInfo];
  v7 = [v6 objectForKeyedSubscript:MailNavigationControllerPreviousViewControllerKey];

  v8 = [v18 userInfo];
  v9 = [v8 objectForKeyedSubscript:MailNavigationControllerAnimatedKey];

  v10 = [v9 BOOLValue];
  v11 = [v18 name];
  v12 = [v11 isEqual:MailNavigationControllerWillShowViewControllerNotification];

  v13 = [(MFSearchController *)self presentingViewController];
  v14 = [v13 parentViewController];

  v15 = [(MFSearchController *)self presentingViewController];

  if (v5 == v15 || v5 == v14)
  {
    v17 = [(MFSearchController *)self searchResultsController];
    if (v12)
    {
      [v17 beginAppearanceTransition:1 animated:v10];
      goto LABEL_10;
    }

LABEL_9:
    [v17 endAppearanceTransition];
    goto LABEL_10;
  }

  v16 = [(MFSearchController *)self presentingViewController];

  if (v7 == v16 || v7 == v14)
  {
    v17 = [(MFSearchController *)self searchResultsController];
    if (v12)
    {
      [v17 beginAppearanceTransition:0 animated:v10];
LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
}

@end