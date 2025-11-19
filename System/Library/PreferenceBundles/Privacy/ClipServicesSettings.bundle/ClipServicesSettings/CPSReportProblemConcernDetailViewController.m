@interface CPSReportProblemConcernDetailViewController
- (CPSReportProblemConcernDetailViewController)initWithProblemType:(id)a3;
- (void)didTapSend;
- (void)viewDidLoad;
@end

@implementation CPSReportProblemConcernDetailViewController

- (CPSReportProblemConcernDetailViewController)initWithProblemType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPSReportProblemConcernDetailViewController;
  v6 = [(CPSReportProblemConcernDetailViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_problemType, a3);
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
  v6 = [(CPSReportProblemConcernDetailViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"CPSRAPDetailTextViewCellReuseIdentifier"];

  v8 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [v8 setAllowsSelection:0];

  v9 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [v9 setEstimatedRowHeight:UITableViewAutomaticDimension];

  v10 = [(CPSReportProblemConcernDetailViewController *)self tableView];
  [v10 setRowHeight:UITableViewAutomaticDimension];
}

- (void)didTapSend
{
  if (self->_sendAction)
  {
    v3 = [(CPSReportProblemConcernDetailViewController *)self tableView];
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    v6 = [v3 cellForRowAtIndexPath:v4];

    v5 = [v6 customerInput];
    (*(self->_sendAction + 2))();
  }
}

@end