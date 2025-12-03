@interface RAPReportComposerDirectionInstructionsIncorrectViewController
- (RAPReportComposerDirectionInstructionsIncorrectViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableViewHeaderView;
- (void)_reloadTableViews;
- (void)dealloc;
- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step;
- (void)presentDetailViewControllerForQuestion:(id)question;
- (void)setupInstructionview;
- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item;
- (void)viewDidLoad;
@end

@implementation RAPReportComposerDirectionInstructionsIncorrectViewController

- (void)presentDetailViewControllerForQuestion:(id)question
{
  questionCopy = question;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:10108 onTarget:-[RAPReportComposerDirectionInstructionsIncorrectViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6 = [RAPReportComposerInstructionDetailViewController alloc];
  report = [(RAPReportViewController *)self report];
  completion = [(RAPReportViewController *)self completion];
  v10 = [(RAPReportComposerInstructionDetailViewController *)v6 initWithReport:report question:questionCopy completion:completion];

  v9 = [[UINavigationController alloc] initWithRootViewController:v10];
  [v9 setModalPresentationStyle:2];
  [v9 setModalInPresentation:1];
  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item
{
  question = self->_question;
  itemCopy = item;
  matchingRouteStep = [itemCopy matchingRouteStep];
  v8 = [(RAPDirectionInstructionsIncorrectQuestion *)question instructionCorrectionQuestionForStep:matchingRouteStep listItem:itemCopy];

  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self presentDetailViewControllerForQuestion:v8];
}

- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step
{
  v5 = [(RAPDirectionInstructionsIncorrectQuestion *)self->_question instructionCorrectionQuestionForStep:step listItem:0];
  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self presentDetailViewControllerForQuestion:v5];
}

- (void)dealloc
{
  [(RAPQuestion *)self->_question removeObserver:self];
  v3.receiver = self;
  v3.super_class = RAPReportComposerDirectionInstructionsIncorrectViewController;
  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)&v3 dealloc];
}

- (id)tableViewHeaderView
{
  v2 = [[RAPHeaderFooterView alloc] initWithReuseIdentifier:@"RAPHeaderFooterView"];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Instructions [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPHeaderFooterView *)v2 setTitleLabelText:v4];

  [(RAPHeaderFooterView *)v2 systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(RAPHeaderFooterView *)v2 frame];
  [(RAPHeaderFooterView *)v2 setFrame:?];

  return v2;
}

- (void)setupInstructionview
{
  parentQuestion = [(RAPQuestion *)self->_question parentQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = parentQuestion;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  parentQuestion2 = [v5 parentQuestion];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = parentQuestion2;
  }

  else
  {
    v7 = 0;
  }

  v46 = v7;

  v8 = v46;
  if (v46)
  {
    routeFromRecording = [v46 routeFromRecording];
    if ([routeFromRecording transportType] == 1)
    {
      v10 = [[RAPTransitDirectionsListViewController alloc] initWithRoute:routeFromRecording];
      p_transitDirectionsListViewController = &self->_transitDirectionsListViewController;
      transitDirectionsListViewController = self->_transitDirectionsListViewController;
      self->_transitDirectionsListViewController = v10;

      [(RAPTransitDirectionsListViewController *)self->_transitDirectionsListViewController setInstructionDelegate:self];
      dataSource = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      [dataSource setOptions:0];

      dataSource2 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      [dataSource2 setAllowStepSelection:1];

      dataSource3 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      [dataSource3 setDelegate:self];
    }

    else
    {
      v16 = objc_alloc_init(RAPDirectionsStepsTableViewController);
      p_transitDirectionsListViewController = &self->_driveOrWalkDirectionsListViewController;
      driveOrWalkDirectionsListViewController = self->_driveOrWalkDirectionsListViewController;
      self->_driveOrWalkDirectionsListViewController = v16;

      [(RAPDirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController setInstructionDelegate:self];
      [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController setRoute:routeFromRecording];
      dataSource4 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController dataSource];
      [dataSource4 setDelegate:self];

      dataSource3 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController dataSource];
      [dataSource3 setOptions:0];
    }

    tableView = [*p_transitDirectionsListViewController tableView];
    tableViewHeaderView = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self tableViewHeaderView];
    [tableView setTableHeaderView:tableViewHeaderView];

    v21 = *p_transitDirectionsListViewController;
    view = [v21 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    view3 = [v21 view];
    [view2 addSubview:view3];

    v25 = +[NSMutableArray array];
    view4 = [v21 view];
    topAnchor = [view4 topAnchor];
    view5 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v25 addObject:v30];

    view6 = [v21 view];
    widthAnchor = [view6 widthAnchor];
    view7 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    widthAnchor2 = [view7 widthAnchor];
    v35 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v25 addObject:v35];

    view8 = [v21 view];
    leadingAnchor = [view8 leadingAnchor];
    view9 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    leadingAnchor2 = [view9 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v25 addObject:v40];

    view10 = [v21 view];
    bottomAnchor = [view10 bottomAnchor];
    view11 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    bottomAnchor2 = [view11 bottomAnchor];
    v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v25 addObject:v45];

    [NSLayoutConstraint activateConstraints:v25];
    [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self addChildViewController:v21];
    [v21 didMoveToParentViewController:self];

    v8 = v46;
  }
}

- (void)_reloadTableViews
{
  tableView = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController tableView];

  if (tableView)
  {
    tableView2 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController tableView];
    [tableView2 reloadData];
  }

  tableView3 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController tableView];

  if (tableView3)
  {
    tableView4 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController tableView];
    [tableView4 reloadData];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = RAPReportComposerDirectionInstructionsIncorrectViewController;
  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)&v7 viewDidLoad];
  v3 = +[UIColor systemGroupedBackgroundColor];
  view = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
  [view setBackgroundColor:v3];

  sendButtonItem = [(RAPReportViewController *)self sendButtonItem];
  navigationItem = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:sendButtonItem];

  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self setupInstructionview];
}

- (RAPReportComposerDirectionInstructionsIncorrectViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v13.receiver = self;
  v13.super_class = RAPReportComposerDirectionInstructionsIncorrectViewController;
  v10 = [(RAPReportViewController *)&v13 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_101652FE8];
  }

  return v11;
}

@end