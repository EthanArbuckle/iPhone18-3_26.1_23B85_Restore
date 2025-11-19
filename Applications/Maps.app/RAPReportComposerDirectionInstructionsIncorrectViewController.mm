@interface RAPReportComposerDirectionInstructionsIncorrectViewController
- (RAPReportComposerDirectionInstructionsIncorrectViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableViewHeaderView;
- (void)_reloadTableViews;
- (void)dealloc;
- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4;
- (void)presentDetailViewControllerForQuestion:(id)a3;
- (void)setupInstructionview;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4;
- (void)viewDidLoad;
@end

@implementation RAPReportComposerDirectionInstructionsIncorrectViewController

- (void)presentDetailViewControllerForQuestion:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:10108 onTarget:-[RAPReportComposerDirectionInstructionsIncorrectViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6 = [RAPReportComposerInstructionDetailViewController alloc];
  v7 = [(RAPReportViewController *)self report];
  v8 = [(RAPReportViewController *)self completion];
  v10 = [(RAPReportComposerInstructionDetailViewController *)v6 initWithReport:v7 question:v4 completion:v8];

  v9 = [[UINavigationController alloc] initWithRootViewController:v10];
  [v9 setModalPresentationStyle:2];
  [v9 setModalInPresentation:1];
  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4
{
  question = self->_question;
  v6 = a4;
  v7 = [v6 matchingRouteStep];
  v8 = [(RAPDirectionInstructionsIncorrectQuestion *)question instructionCorrectionQuestionForStep:v7 listItem:v6];

  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self presentDetailViewControllerForQuestion:v8];
}

- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4
{
  v5 = [(RAPDirectionInstructionsIncorrectQuestion *)self->_question instructionCorrectionQuestionForStep:a4 listItem:0];
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
  v3 = [(RAPQuestion *)self->_question parentQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 parentQuestion];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v46 = v7;

  v8 = v46;
  if (v46)
  {
    v9 = [v46 routeFromRecording];
    if ([v9 transportType] == 1)
    {
      v10 = [[RAPTransitDirectionsListViewController alloc] initWithRoute:v9];
      p_transitDirectionsListViewController = &self->_transitDirectionsListViewController;
      transitDirectionsListViewController = self->_transitDirectionsListViewController;
      self->_transitDirectionsListViewController = v10;

      [(RAPTransitDirectionsListViewController *)self->_transitDirectionsListViewController setInstructionDelegate:self];
      v13 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      [v13 setOptions:0];

      v14 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      [v14 setAllowStepSelection:1];

      v15 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      [v15 setDelegate:self];
    }

    else
    {
      v16 = objc_alloc_init(RAPDirectionsStepsTableViewController);
      p_transitDirectionsListViewController = &self->_driveOrWalkDirectionsListViewController;
      driveOrWalkDirectionsListViewController = self->_driveOrWalkDirectionsListViewController;
      self->_driveOrWalkDirectionsListViewController = v16;

      [(RAPDirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController setInstructionDelegate:self];
      [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController setRoute:v9];
      v18 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController dataSource];
      [v18 setDelegate:self];

      v15 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController dataSource];
      [v15 setOptions:0];
    }

    v19 = [*p_transitDirectionsListViewController tableView];
    v20 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self tableViewHeaderView];
    [v19 setTableHeaderView:v20];

    v21 = *p_transitDirectionsListViewController;
    v22 = [v21 view];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    v24 = [v21 view];
    [v23 addSubview:v24];

    v25 = +[NSMutableArray array];
    v26 = [v21 view];
    v27 = [v26 topAnchor];
    v28 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    v29 = [v28 topAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v25 addObject:v30];

    v31 = [v21 view];
    v32 = [v31 widthAnchor];
    v33 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    v34 = [v33 widthAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v25 addObject:v35];

    v36 = [v21 view];
    v37 = [v36 leadingAnchor];
    v38 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v25 addObject:v40];

    v41 = [v21 view];
    v42 = [v41 bottomAnchor];
    v43 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
    v44 = [v43 bottomAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    [v25 addObject:v45];

    [NSLayoutConstraint activateConstraints:v25];
    [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self addChildViewController:v21];
    [v21 didMoveToParentViewController:self];

    v8 = v46;
  }
}

- (void)_reloadTableViews
{
  v3 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController tableView];

  if (v3)
  {
    v4 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController tableView];
    [v4 reloadData];
  }

  v5 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController tableView];

  if (v5)
  {
    v6 = [(DirectionsStepsTableViewController *)self->_driveOrWalkDirectionsListViewController tableView];
    [v6 reloadData];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = RAPReportComposerDirectionInstructionsIncorrectViewController;
  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)&v7 viewDidLoad];
  v3 = +[UIColor systemGroupedBackgroundColor];
  v4 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(RAPReportViewController *)self sendButtonItem];
  v6 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  [(RAPReportComposerDirectionInstructionsIncorrectViewController *)self setupInstructionview];
}

- (RAPReportComposerDirectionInstructionsIncorrectViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = RAPReportComposerDirectionInstructionsIncorrectViewController;
  v10 = [(RAPReportViewController *)&v13 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_101652FE8];
  }

  return v11;
}

@end