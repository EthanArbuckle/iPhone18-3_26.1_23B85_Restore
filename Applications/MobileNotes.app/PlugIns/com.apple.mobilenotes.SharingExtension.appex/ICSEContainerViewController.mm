@interface ICSEContainerViewController
- (ICSERootViewController)rootViewController;
- (UIView)mainContainerView;
- (UIView)tableViewContainerView;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)setIsShowingTableContainer:(BOOL)container;
- (void)setUpForIsShowingTableContainer:(BOOL)container;
- (void)viewDidLoad;
@end

@implementation ICSEContainerViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICSEContainerViewController;
  [(ICSEContainerViewController *)&v3 viewDidLoad];
  [(ICSEContainerViewController *)self setUpForIsShowingTableContainer:self->_isShowingTableContainer];
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  objc_opt_class();
  destinationViewController = [segueCopy destinationViewController];

  v30 = ICDynamicCast();

  objc_opt_class();
  viewControllers = [v30 viewControllers];
  firstObject = [viewControllers firstObject];
  v9 = ICDynamicCast();

  objc_opt_class();
  viewControllers2 = [v30 viewControllers];
  firstObject2 = [viewControllers2 firstObject];
  v12 = ICDynamicCast();

  if (v9)
  {
    if ((+[UIDevice ic_isVision]& 1) == 0)
    {
      v13 = +[UIColor whiteColor];
      navigationController = [v9 navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setTintColor:v13];
    }

    [v9 setContainerViewController:self];
    rootViewController = [(ICSEContainerViewController *)self rootViewController];
    [rootViewController setMainViewController:v9];

    tableViewController = [(ICSEContainerViewController *)self tableViewController];

    if (tableViewController)
    {
      tableViewController2 = [(ICSEContainerViewController *)self tableViewController];
      [tableViewController2 setDelegate:v9];
    }

    [(ICSEContainerViewController *)self setMainViewController:v9];
  }

  else if (v12)
  {
    [v12 setContainerViewController:self];
    v19 = +[ICNoteContext sharedContext];
    managedObjectContext = [v19 managedObjectContext];
    v21 = [ICAccount allActiveAccountsInContextSortedByAccountType:managedObjectContext];
    v22 = [v21 count];
    v23 = +[NSBundle mainBundle];
    v24 = v23;
    if (v22 >= 2)
    {
      v25 = @"Choose Location";
    }

    else
    {
      v25 = @"Choose Folder";
    }

    v26 = [v23 localizedStringForKey:v25 value:&stru_1000F6F48 table:0];
    [v12 setTitle:v26];

    rootViewController2 = [(ICSEContainerViewController *)self rootViewController];
    [rootViewController2 setTableViewController:v12];

    mainViewController = [(ICSEContainerViewController *)self mainViewController];

    if (mainViewController)
    {
      mainViewController2 = [(ICSEContainerViewController *)self mainViewController];
      [v12 setDelegate:mainViewController2];
    }

    [(ICSEContainerViewController *)self setTableViewController:v12];
  }
}

- (void)setIsShowingTableContainer:(BOOL)container
{
  if (self->_isShowingTableContainer != container)
  {
    self->_isShowingTableContainer = container;
    [(ICSEContainerViewController *)self setUpForIsShowingTableContainer:?];
  }
}

- (void)setUpForIsShowingTableContainer:(BOOL)container
{
  containerCopy = container;
  if (container)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  if (container)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  mainContainerView = [(ICSEContainerViewController *)self mainContainerView];
  [mainContainerView setHidden:0];

  tableViewContainerView = [(ICSEContainerViewController *)self tableViewContainerView];
  [tableViewContainerView setHidden:0];

  mainContainerView2 = [(ICSEContainerViewController *)self mainContainerView];
  [mainContainerView2 setAlpha:v6];

  tableViewContainerView2 = [(ICSEContainerViewController *)self tableViewContainerView];
  [tableViewContainerView2 setAlpha:v5];

  view = [(ICSEContainerViewController *)self view];
  [view setUserInteractionEnabled:0];

  if (containerCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    tableViewController = [(ICSEContainerViewController *)self tableViewController];
    navigationController = [tableViewController navigationController];
    viewControllers = [navigationController viewControllers];

    v15 = [viewControllers countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(viewControllers);
          }

          [*(*(&v23 + 1) + 8 * i) willAppearInContainer:self];
        }

        v16 = [viewControllers countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100021228;
  v22[3] = &unk_1000F2C58;
  v22[4] = self;
  *&v22[5] = v5;
  *&v22[6] = v6;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000212A8;
  v19[3] = &unk_1000F2C80;
  v19[4] = self;
  v20 = containerCopy;
  v21 = !containerCopy;
  [UIView animateWithDuration:v22 animations:v19 completion:0.0];
}

- (ICSERootViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

- (UIView)mainContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_mainContainerView);

  return WeakRetained;
}

- (UIView)tableViewContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewContainerView);

  return WeakRetained;
}

@end