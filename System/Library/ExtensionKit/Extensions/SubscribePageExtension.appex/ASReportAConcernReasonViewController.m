@interface ASReportAConcernReasonViewController
- (ASReportAConcernReasonViewController)initWithCoder:(id)a3;
- (ASReportAConcernReasonViewController)initWithConfiguration:(id)a3;
- (ASReportAConcernReasonViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ASReportAConcernReasonViewController

- (ASReportAConcernReasonViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = objc_alloc_init(ASReportAConcernConfiguration);
  v6 = [(ASReportAConcernReasonViewController *)self initWithConfiguration:v5];

  return v6;
}

- (ASReportAConcernReasonViewController)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(ASReportAConcernConfiguration);
  v5 = [(ASReportAConcernReasonViewController *)self initWithConfiguration:v4];

  return v5;
}

- (ASReportAConcernReasonViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASReportAConcernReasonViewController;
  v6 = [(ASReportAConcernReasonViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = ASReportAConcernReasonViewController;
  [(ASReportAConcernReasonViewController *)&v24 viewDidLoad];
  v3 = [(ASReportAConcernReasonViewController *)self configuration];
  v4 = [v3 title];
  [(ASReportAConcernReasonViewController *)self setTitle:v4];

  v5 = [UIBarButtonItem alloc];
  v6 = [(ASReportAConcernReasonViewController *)self configuration];
  v7 = [v6 backTitle];
  v8 = [v5 initWithTitle:v7 style:0 target:0 action:0];
  v9 = [(ASReportAConcernReasonViewController *)self navigationItem];
  [v9 setBackBarButtonItem:v8];

  v10 = [UIBarButtonItem alloc];
  v11 = [(ASReportAConcernReasonViewController *)self configuration];
  v12 = [v11 cancelTitle];
  v13 = [v10 initWithTitle:v12 style:0 target:self action:"cancelPressed:"];
  v14 = [(ASReportAConcernReasonViewController *)self navigationItem];
  [v14 setLeftBarButtonItem:v13];

  v15 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v15 setDelegate:self];
  v16 = [[ASReportAConcernReasonDataSource alloc] initWithTableView:v15];
  v17 = [(ASReportAConcernReasonViewController *)self configuration];
  v18 = [v17 reasons];
  [(ASReportAConcernReasonDataSource *)v16 setReasons:v18];

  v19 = [(ASReportAConcernReasonViewController *)self configuration];
  v20 = [v19 selectReasonTitle];
  [(ASReportAConcernReasonDataSource *)v16 setSelectReasonTitle:v20];

  v21 = [(ASReportAConcernReasonViewController *)self configuration];
  v22 = [v21 selectReasonSubtitle];
  [(ASReportAConcernReasonDataSource *)v16 setSelectReasonSubtitle:v22];

  [v15 setDataSource:v16];
  [(ASReportAConcernReasonViewController *)self setDataSource:v16];
  v23 = [(ASReportAConcernReasonViewController *)self view];
  [v23 addSubview:v15];

  [(ASReportAConcernReasonViewController *)self setTableView:v15];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ASReportAConcernReasonViewController;
  [(ASReportAConcernReasonViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(ASReportAConcernReasonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ASReportAConcernReasonViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(ASReportAConcernReasonViewController *)self configuration];
  v8 = [v7 reasons];
  v9 = [v6 row];

  v15 = [v8 objectAtIndexedSubscript:v9];

  v10 = [(ASReportAConcernReasonViewController *)self configuration];
  v11 = [v10 copy];

  v12 = [[ASReportAConcernDetailsViewController alloc] initWithConfiguration:v11];
  [(ASReportAConcernDetailsViewController *)v12 setSelectedReason:v15];
  v13 = [(ASReportAConcernReasonViewController *)self completion];
  [(ASReportAConcernDetailsViewController *)v12 setCompletion:v13];

  v14 = [(ASReportAConcernReasonViewController *)self navigationController];
  [v14 pushViewController:v12 animated:1];
}

@end