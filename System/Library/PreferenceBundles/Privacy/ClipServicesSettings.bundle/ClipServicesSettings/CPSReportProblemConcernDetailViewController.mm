@interface CPSReportProblemConcernDetailViewController
- (CPSReportProblemConcernDetailViewController)initWithProblemType:(id)type;
- (void)didTapSend;
- (void)viewDidLoad;
@end

@implementation CPSReportProblemConcernDetailViewController

- (CPSReportProblemConcernDetailViewController)initWithProblemType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = CPSReportProblemConcernDetailViewController;
  v6 = [(CPSReportProblemConcernDetailViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_problemType, type);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CPSReportProblemConcernDetailViewController;
  [(CPSReportProblemConcernDetailViewController *)&v11 viewDidLoad];
  v3 = _CPSLocalizedString();
  [(CPSReportProblemConcernDetailViewController *)self setTitle:v3];

  v4 = _CPSLocalizedString();
  v5 = [[UIBarButtonItem alloc] initWithTitle:v4 style:2 target:self action:"didTapSend"];
  navigationItem = [(CPSReportProblemConcernDetailViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  tableView = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CPSRAPDetailTextViewCellReuseIdentifier"];

  tableView2 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [tableView2 setAllowsSelection:0];

  tableView3 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [tableView4 setRowHeight:UITableViewAutomaticDimension];
}

- (void)didTapSend
{
  if (self->_sendAction)
  {
    tableView = [(CPSReportProblemConcernDetailViewController *)self tableView];
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    v6 = [tableView cellForRowAtIndexPath:v4];

    customerInput = [v6 customerInput];
    (*(self->_sendAction + 2))();
  }
}

@end