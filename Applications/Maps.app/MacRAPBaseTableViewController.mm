@interface MacRAPBaseTableViewController
- (MacRAPBaseTableViewController)initWithStyle:(int64_t)style;
- (MacRAPBaseTableViewController)initWithStyle:(int64_t)style withTableViewFooter:(id)footer;
- (void)viewDidLoad;
@end

@implementation MacRAPBaseTableViewController

- (void)viewDidLoad
{
  v57.receiver = self;
  v57.super_class = MacRAPBaseTableViewController;
  [(MacRAPBaseViewController *)&v57 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(MacRAPBaseTableViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(MacRAPBaseTableViewController *)self view];
  tableView = [(MacRAPBaseTableViewController *)self tableView];
  [view2 addSubview:tableView];

  tableViewFooter = [(MacRAPBaseTableViewController *)self tableViewFooter];

  if (tableViewFooter)
  {
    view3 = [(MacRAPBaseTableViewController *)self view];
    tableViewFooter2 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    [view3 addSubview:tableViewFooter2];
  }

  v56 = objc_alloc_init(NSMutableArray);
  tableView2 = [(MacRAPBaseTableViewController *)self tableView];
  leadingAnchor = [tableView2 leadingAnchor];
  view4 = [(MacRAPBaseTableViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v59[0] = v46;
  tableView3 = [(MacRAPBaseTableViewController *)self tableView];
  trailingAnchor = [tableView3 trailingAnchor];
  view5 = [(MacRAPBaseTableViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[1] = v11;
  tableView4 = [(MacRAPBaseTableViewController *)self tableView];
  topAnchor = [tableView4 topAnchor];
  view6 = [(MacRAPBaseTableViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v59[2] = v17;
  v18 = [NSArray arrayWithObjects:v59 count:3];
  [v56 addObjectsFromArray:v18];

  tableViewFooter3 = [(MacRAPBaseTableViewController *)self tableViewFooter];

  if (tableViewFooter3)
  {
    tableViewFooter4 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    leadingAnchor3 = [tableViewFooter4 leadingAnchor];
    view7 = [(MacRAPBaseTableViewController *)self view];
    leadingAnchor4 = [view7 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v58[0] = v49;
    tableViewFooter5 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    trailingAnchor3 = [tableViewFooter5 trailingAnchor];
    view8 = [(MacRAPBaseTableViewController *)self view];
    trailingAnchor4 = [view8 trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v58[1] = v41;
    tableViewFooter6 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    topAnchor3 = [tableViewFooter6 topAnchor];
    tableView5 = [(MacRAPBaseTableViewController *)self tableView];
    bottomAnchor = [tableView5 bottomAnchor];
    v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v58[2] = v22;
    tableViewFooter7 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    bottomAnchor2 = [tableViewFooter7 bottomAnchor];
    view9 = [(MacRAPBaseTableViewController *)self view];
    safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
    v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v58[3] = v28;
    v29 = [NSArray arrayWithObjects:v58 count:4];
    [v56 addObjectsFromArray:v29];

    safeAreaLayoutGuide3 = leadingAnchor4;
    view10 = view7;

    bottomAnchor4 = leadingAnchor3;
    v33 = tableViewFooter5;

    tableView6 = tableViewFooter4;
    bottomAnchor5 = v49;
  }

  else
  {
    tableView6 = [(MacRAPBaseTableViewController *)self tableView];
    bottomAnchor4 = [tableView6 bottomAnchor];
    view10 = [(MacRAPBaseTableViewController *)self view];
    safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
    bottomAnchor5 = [safeAreaLayoutGuide3 bottomAnchor];
    v33 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v56 addObject:v33];
  }

  [NSLayoutConstraint activateConstraints:v56];
}

- (MacRAPBaseTableViewController)initWithStyle:(int64_t)style withTableViewFooter:(id)footer
{
  result = [(MacRAPBaseTableViewController *)self initWithStyle:style];
  if (result)
  {
    result->_tableViewFooter = footer;
  }

  return result;
}

- (MacRAPBaseTableViewController)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = MacRAPBaseTableViewController;
  v4 = [(MacRAPBaseTableViewController *)&v9 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [[UITableView alloc] initWithFrame:style style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = v4->_tableView;
    v4->_tableView = v5;

    [(UITableView *)v4->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)v4->_tableView setRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v4->_tableView setDelegate:v4];
    v7 = +[UIColor systemBackgroundColor];
    [(UITableView *)v4->_tableView setBackgroundColor:v7];
  }

  return v4;
}

@end