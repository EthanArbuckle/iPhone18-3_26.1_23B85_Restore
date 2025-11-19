@interface MacRAPBaseTableViewController
- (MacRAPBaseTableViewController)initWithStyle:(int64_t)a3;
- (MacRAPBaseTableViewController)initWithStyle:(int64_t)a3 withTableViewFooter:(id)a4;
- (void)viewDidLoad;
@end

@implementation MacRAPBaseTableViewController

- (void)viewDidLoad
{
  v57.receiver = self;
  v57.super_class = MacRAPBaseTableViewController;
  [(MacRAPBaseViewController *)&v57 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(MacRAPBaseTableViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(MacRAPBaseTableViewController *)self view];
  v6 = [(MacRAPBaseTableViewController *)self tableView];
  [v5 addSubview:v6];

  v7 = [(MacRAPBaseTableViewController *)self tableViewFooter];

  if (v7)
  {
    v8 = [(MacRAPBaseTableViewController *)self view];
    v9 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    [v8 addSubview:v9];
  }

  v56 = objc_alloc_init(NSMutableArray);
  v54 = [(MacRAPBaseTableViewController *)self tableView];
  v50 = [v54 leadingAnchor];
  v52 = [(MacRAPBaseTableViewController *)self view];
  v48 = [v52 leadingAnchor];
  v46 = [v50 constraintEqualToAnchor:v48];
  v59[0] = v46;
  v44 = [(MacRAPBaseTableViewController *)self tableView];
  v40 = [v44 trailingAnchor];
  v42 = [(MacRAPBaseTableViewController *)self view];
  v10 = [v42 trailingAnchor];
  v11 = [v40 constraintEqualToAnchor:v10];
  v59[1] = v11;
  v12 = [(MacRAPBaseTableViewController *)self tableView];
  v13 = [v12 topAnchor];
  v14 = [(MacRAPBaseTableViewController *)self view];
  v15 = [v14 safeAreaLayoutGuide];
  v16 = [v15 topAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  v59[2] = v17;
  v18 = [NSArray arrayWithObjects:v59 count:3];
  [v56 addObjectsFromArray:v18];

  v19 = [(MacRAPBaseTableViewController *)self tableViewFooter];

  if (v19)
  {
    v55 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    v43 = [v55 leadingAnchor];
    v47 = [(MacRAPBaseTableViewController *)self view];
    v37 = [v47 leadingAnchor];
    v49 = [v43 constraintEqualToAnchor:v37];
    v58[0] = v49;
    v39 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    v51 = [v39 trailingAnchor];
    v53 = [(MacRAPBaseTableViewController *)self view];
    v45 = [v53 trailingAnchor];
    v41 = [v51 constraintEqualToAnchor:v45];
    v58[1] = v41;
    v38 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    v36 = [v38 topAnchor];
    v20 = [(MacRAPBaseTableViewController *)self tableView];
    v21 = [v20 bottomAnchor];
    v22 = [v36 constraintEqualToAnchor:v21];
    v58[2] = v22;
    v23 = [(MacRAPBaseTableViewController *)self tableViewFooter];
    v24 = [v23 bottomAnchor];
    v25 = [(MacRAPBaseTableViewController *)self view];
    v26 = [v25 safeAreaLayoutGuide];
    v27 = [v26 bottomAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];
    v58[3] = v28;
    v29 = [NSArray arrayWithObjects:v58 count:4];
    [v56 addObjectsFromArray:v29];

    v30 = v37;
    v31 = v47;

    v32 = v43;
    v33 = v39;

    v34 = v55;
    v35 = v49;
  }

  else
  {
    v34 = [(MacRAPBaseTableViewController *)self tableView];
    v32 = [v34 bottomAnchor];
    v31 = [(MacRAPBaseTableViewController *)self view];
    v30 = [v31 safeAreaLayoutGuide];
    v35 = [v30 bottomAnchor];
    v33 = [v32 constraintEqualToAnchor:v35];
    [v56 addObject:v33];
  }

  [NSLayoutConstraint activateConstraints:v56];
}

- (MacRAPBaseTableViewController)initWithStyle:(int64_t)a3 withTableViewFooter:(id)a4
{
  result = [(MacRAPBaseTableViewController *)self initWithStyle:a3];
  if (result)
  {
    result->_tableViewFooter = a4;
  }

  return result;
}

- (MacRAPBaseTableViewController)initWithStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = MacRAPBaseTableViewController;
  v4 = [(MacRAPBaseTableViewController *)&v9 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [[UITableView alloc] initWithFrame:a3 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
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