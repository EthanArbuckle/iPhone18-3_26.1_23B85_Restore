@interface RAPPersonalPlaceSelectionViewController
- (RAPPersonalPlaceSelectionViewController)initWithQuestion:(id)a3;
- (id)homeWorkCorrectionQuestionForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_editCorrectionsQuestion:(id)a3;
- (void)refinementCoordinator:(id)a3 finishedRefiningCoordinate:(CLLocationCoordinate2D)a4 withShortcut:(id)a5;
- (void)refinementCoordinatorRequestsChangeAddress:(id)a3 withShortcut:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateAddresses;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RAPPersonalPlaceSelectionViewController

- (void)refinementCoordinator:(id)a3 finishedRefiningCoordinate:(CLLocationCoordinate2D)a4 withShortcut:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a3;
  v10 = a5;
  v11 = [ShortcutEditSession editSessionWithShortcut:v10];
  [v11 setAdjustedCoordinate:{latitude, longitude}];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A0AC44;
  v13[3] = &unk_10165FC50;
  objc_copyWeak(&v15, &location);
  v12 = v10;
  v14 = v12;
  [v11 saveWithCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)refinementCoordinatorRequestsChangeAddress:(id)a3 withShortcut:(id)a4
{
  v5 = a4;
  v7 = [(RAPPersonalPlaceSelectionViewController *)self _maps_mapsSceneDelegate];
  v6 = [v7 chromeViewController];
  [v6 resetForEditingShortcut:v5];
}

- (void)_editCorrectionsQuestion:(id)a3
{
  v7 = a3;
  currentCorrectionsCoordinator = self->_currentCorrectionsCoordinator;
  if (currentCorrectionsCoordinator)
  {
    self->_currentCorrectionsCoordinator = 0;
  }

  v5 = [[RAPPersonalPlaceRefinementCoordinator alloc] initWithPresentingViewController:self delegate:self report:self->_rapReport question:v7];
  v6 = self->_currentCorrectionsCoordinator;
  self->_currentCorrectionsCoordinator = v5;

  [(RAPPersonalPlaceRefinementCoordinator *)self->_currentCorrectionsCoordinator beginShortcutRefinement];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(RAPPersonalPlaceSelectionViewController *)self homeWorkCorrectionQuestionForIndexPath:v6];
  v8 = [RAPPersonalPlaceCorrectionsQuestion alloc];
  v9 = [v12 report];
  v10 = [v12 shortcut];
  v11 = [(RAPPersonalPlaceCorrectionsQuestion *)v8 initWithReport:v9 parentQuestion:v12 shortcut:v10];

  [(RAPMenuQuestion *)self->_question setSelectedMenuItem:v11];
  [(RAPPersonalPlaceSelectionViewController *)self _editCorrectionsQuestion:v11];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v10 = [RAPTwoLinesMenuTableViewCell alloc];
    v11 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    v9 = [(RAPTwoLinesMenuTableViewCell *)v10 initWithStyle:0 reuseIdentifier:v11];
  }

  v12 = [(RAPPersonalPlaceSelectionViewController *)self homeWorkCorrectionQuestionForIndexPath:v6];
  v13 = [RAPTwoLinesViewModelImpl viewModelFromRAPMenuItem:v12];
  [(RAPTwoLinesMenuTableViewCell *)v9 setViewModel:v13];

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Address [Home Work Editor]" value:@"localized string not found" table:0];
  v7 = [v4 _maps_groupedHeaderViewWithTitle:v6];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(RAPMenuQuestion *)self->_question mainMenuItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)homeWorkCorrectionQuestionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RAPPersonalPlaceSelectionViewController *)self question];
  v6 = [v5 mainMenuItems];
  v7 = [v4 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = [(RAPPersonalPlaceSelectionViewController *)self tableView:a4];
  v6 = [v5 isEditing];

  if (v6)
  {
    v7 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
    [v7 reloadData];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPPersonalPlaceSelectionViewController;
  [(RAPPersonalPlaceSelectionViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPPersonalPlaceSelectionViewController;
  [(RAPPersonalPlaceSelectionViewController *)&v5 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"updateAddresses" name:@"MapsLocationOfInterestDidChangeNotification" object:0];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = RAPPersonalPlaceSelectionViewController;
  [(RAPPersonalPlaceSelectionViewController *)&v16 viewDidLoad];
  v3 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  [v3 setEstimatedRowHeight:55.0];

  v4 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(RAPPersonalPlaceSelectionViewController *)self tableView];
  [v8 _maps_initializeRAPAppearance];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
  v11 = [(RAPPersonalPlaceSelectionViewController *)self navigationItem];
  [v11 setBackButtonTitle:v10];

  v12 = [(RAPPersonalPlaceSelectionViewController *)self navigationController];
  v13 = [v12 rootViewController];

  if (v13 == self)
  {
    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancel:"];
    v15 = [(RAPPersonalPlaceSelectionViewController *)self navigationItem];
    [v15 setLeftBarButtonItem:v14];
  }

  [(RAPPersonalPlaceSelectionViewController *)self updateAddresses];
}

- (RAPPersonalPlaceSelectionViewController)initWithQuestion:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RAPPersonalPlaceSelectionViewController;
  v6 = [(RAPPersonalPlaceSelectionViewController *)&v12 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, a3);
    v8 = [v5 report];
    rapReport = v7->_rapReport;
    v7->_rapReport = v8;

    v10 = [v5 localizedTitle];
    [(RAPPersonalPlaceSelectionViewController *)v7 setTitle:v10];
  }

  return v7;
}

@end