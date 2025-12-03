@interface RAPPersonalPlaceSelectionViewController
- (RAPPersonalPlaceSelectionViewController)initWithQuestion:(id)question;
- (id)homeWorkCorrectionQuestionForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_editCorrectionsQuestion:(id)question;
- (void)refinementCoordinator:(id)coordinator finishedRefiningCoordinate:(CLLocationCoordinate2D)coordinate withShortcut:(id)shortcut;
- (void)refinementCoordinatorRequestsChangeAddress:(id)address withShortcut:(id)shortcut;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAddresses;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RAPPersonalPlaceSelectionViewController

- (void)refinementCoordinator:(id)coordinator finishedRefiningCoordinate:(CLLocationCoordinate2D)coordinate withShortcut:(id)shortcut
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  coordinatorCopy = coordinator;
  shortcutCopy = shortcut;
  v11 = [ShortcutEditSession editSessionWithShortcut:shortcutCopy];
  [v11 setAdjustedCoordinate:{latitude, longitude}];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A0AC44;
  v13[3] = &unk_10165FC50;
  objc_copyWeak(&v15, &location);
  v12 = shortcutCopy;
  v14 = v12;
  [v11 saveWithCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)refinementCoordinatorRequestsChangeAddress:(id)address withShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _maps_mapsSceneDelegate = [(RAPPersonalPlaceSelectionViewController *)self _maps_mapsSceneDelegate];
  chromeViewController = [_maps_mapsSceneDelegate chromeViewController];
  [chromeViewController resetForEditingShortcut:shortcutCopy];
}

- (void)_editCorrectionsQuestion:(id)question
{
  questionCopy = question;
  currentCorrectionsCoordinator = self->_currentCorrectionsCoordinator;
  if (currentCorrectionsCoordinator)
  {
    self->_currentCorrectionsCoordinator = 0;
  }

  v5 = [[RAPPersonalPlaceRefinementCoordinator alloc] initWithPresentingViewController:self delegate:self report:self->_rapReport question:questionCopy];
  v6 = self->_currentCorrectionsCoordinator;
  self->_currentCorrectionsCoordinator = v5;

  [(RAPPersonalPlaceRefinementCoordinator *)self->_currentCorrectionsCoordinator beginShortcutRefinement];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v12 = [(RAPPersonalPlaceSelectionViewController *)self homeWorkCorrectionQuestionForIndexPath:pathCopy];
  v8 = [RAPPersonalPlaceCorrectionsQuestion alloc];
  report = [v12 report];
  shortcut = [v12 shortcut];
  v11 = [(RAPPersonalPlaceCorrectionsQuestion *)v8 initWithReport:report parentQuestion:v12 shortcut:shortcut];

  [(RAPMenuQuestion *)self->_question setSelectedMenuItem:v11];
  [(RAPPersonalPlaceSelectionViewController *)self _editCorrectionsQuestion:v11];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v10 = [RAPTwoLinesMenuTableViewCell alloc];
    v11 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    v9 = [(RAPTwoLinesMenuTableViewCell *)v10 initWithStyle:0 reuseIdentifier:v11];
  }

  v12 = [(RAPPersonalPlaceSelectionViewController *)self homeWorkCorrectionQuestionForIndexPath:pathCopy];
  v13 = [RAPTwoLinesViewModelImpl viewModelFromRAPMenuItem:v12];
  [(RAPTwoLinesMenuTableViewCell *)v9 setViewModel:v13];

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Address [Home Work Editor]" value:@"localized string not found" table:0];
  v7 = [viewCopy _maps_groupedHeaderViewWithTitle:v6];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(RAPMenuQuestion *)self->_question mainMenuItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)homeWorkCorrectionQuestionForIndexPath:(id)path
{
  pathCopy = path;
  question = [(RAPPersonalPlaceSelectionViewController *)self question];
  mainMenuItems = [question mainMenuItems];
  v7 = [pathCopy row];

  v8 = [mainMenuItems objectAtIndexedSubscript:v7];

  return v8;
}

- (void)updateAddresses
{
  objc_initWeak(&location, self);
  question = self->_question;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A0B308;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [(RAPPersonalPlaceCorrectionsWhichOneQuestion *)question refreshMainMenuItemsWithCallback:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5 = [(RAPPersonalPlaceSelectionViewController *)self tableView:coordinator];
  isEditing = [v5 isEditing];

  if (isEditing)
  {
    tableView = [(RAPPersonalPlaceSelectionViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RAPPersonalPlaceSelectionViewController;
  [(RAPPersonalPlaceSelectionViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPPersonalPlaceSelectionViewController;
  [(RAPPersonalPlaceSelectionViewController *)&v5 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"updateAddresses" name:@"MapsLocationOfInterestDidChangeNotification" object:0];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = RAPPersonalPlaceSelectionViewController;
  [(RAPPersonalPlaceSelectionViewController *)&v16 viewDidLoad];
  tableView = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  [tableView setEstimatedRowHeight:55.0];

  tableView2 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  [tableView3 registerClass:v6 forCellReuseIdentifier:v7];

  tableView4 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  [tableView4 _maps_initializeRAPAppearance];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
  navigationItem = [(RAPPersonalPlaceSelectionViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:v10];

  navigationController = [(RAPPersonalPlaceSelectionViewController *)self navigationController];
  rootViewController = [navigationController rootViewController];

  if (rootViewController == self)
  {
    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancel:"];
    navigationItem2 = [(RAPPersonalPlaceSelectionViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v14];
  }

  [(RAPPersonalPlaceSelectionViewController *)self updateAddresses];
}

- (RAPPersonalPlaceSelectionViewController)initWithQuestion:(id)question
{
  questionCopy = question;
  v12.receiver = self;
  v12.super_class = RAPPersonalPlaceSelectionViewController;
  v6 = [(RAPPersonalPlaceSelectionViewController *)&v12 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, question);
    report = [questionCopy report];
    rapReport = v7->_rapReport;
    v7->_rapReport = report;

    localizedTitle = [questionCopy localizedTitle];
    [(RAPPersonalPlaceSelectionViewController *)v7 setTitle:localizedTitle];
  }

  return v7;
}

@end