@interface ASReportAConcernReasonViewController
- (ASReportAConcernReasonViewController)initWithCoder:(id)coder;
- (ASReportAConcernReasonViewController)initWithConfiguration:(id)configuration;
- (ASReportAConcernReasonViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ASReportAConcernReasonViewController

- (ASReportAConcernReasonViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = objc_alloc_init(ASReportAConcernConfiguration);
  v6 = [(ASReportAConcernReasonViewController *)self initWithConfiguration:v5];

  return v6;
}

- (ASReportAConcernReasonViewController)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(ASReportAConcernConfiguration);
  v5 = [(ASReportAConcernReasonViewController *)self initWithConfiguration:v4];

  return v5;
}

- (ASReportAConcernReasonViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ASReportAConcernReasonViewController;
  v6 = [(ASReportAConcernReasonViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = ASReportAConcernReasonViewController;
  [(ASReportAConcernReasonViewController *)&v24 viewDidLoad];
  configuration = [(ASReportAConcernReasonViewController *)self configuration];
  title = [configuration title];
  [(ASReportAConcernReasonViewController *)self setTitle:title];

  v5 = [UIBarButtonItem alloc];
  configuration2 = [(ASReportAConcernReasonViewController *)self configuration];
  backTitle = [configuration2 backTitle];
  v8 = [v5 initWithTitle:backTitle style:0 target:0 action:0];
  navigationItem = [(ASReportAConcernReasonViewController *)self navigationItem];
  [navigationItem setBackBarButtonItem:v8];

  v10 = [UIBarButtonItem alloc];
  configuration3 = [(ASReportAConcernReasonViewController *)self configuration];
  cancelTitle = [configuration3 cancelTitle];
  v13 = [v10 initWithTitle:cancelTitle style:0 target:self action:"cancelPressed:"];
  navigationItem2 = [(ASReportAConcernReasonViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v13];

  v15 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v15 setDelegate:self];
  v16 = [[ASReportAConcernReasonDataSource alloc] initWithTableView:v15];
  configuration4 = [(ASReportAConcernReasonViewController *)self configuration];
  reasons = [configuration4 reasons];
  [(ASReportAConcernReasonDataSource *)v16 setReasons:reasons];

  configuration5 = [(ASReportAConcernReasonViewController *)self configuration];
  selectReasonTitle = [configuration5 selectReasonTitle];
  [(ASReportAConcernReasonDataSource *)v16 setSelectReasonTitle:selectReasonTitle];

  configuration6 = [(ASReportAConcernReasonViewController *)self configuration];
  selectReasonSubtitle = [configuration6 selectReasonSubtitle];
  [(ASReportAConcernReasonDataSource *)v16 setSelectReasonSubtitle:selectReasonSubtitle];

  [v15 setDataSource:v16];
  [(ASReportAConcernReasonViewController *)self setDataSource:v16];
  view = [(ASReportAConcernReasonViewController *)self view];
  [view addSubview:v15];

  [(ASReportAConcernReasonViewController *)self setTableView:v15];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ASReportAConcernReasonViewController;
  [(ASReportAConcernReasonViewController *)&v13 viewWillLayoutSubviews];
  view = [(ASReportAConcernReasonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(ASReportAConcernReasonViewController *)self tableView];
  [tableView setFrame:{v5, v7, v9, v11}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  configuration = [(ASReportAConcernReasonViewController *)self configuration];
  reasons = [configuration reasons];
  v9 = [pathCopy row];

  v15 = [reasons objectAtIndexedSubscript:v9];

  configuration2 = [(ASReportAConcernReasonViewController *)self configuration];
  v11 = [configuration2 copy];

  v12 = [[ASReportAConcernDetailsViewController alloc] initWithConfiguration:v11];
  [(ASReportAConcernDetailsViewController *)v12 setSelectedReason:v15];
  completion = [(ASReportAConcernReasonViewController *)self completion];
  [(ASReportAConcernDetailsViewController *)v12 setCompletion:completion];

  navigationController = [(ASReportAConcernReasonViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];
}

@end