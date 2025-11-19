@interface ASReportAConcernDetailsViewController
- (ASReportAConcernDetailsViewController)initWithCoder:(id)a3;
- (ASReportAConcernDetailsViewController)initWithConfiguration:(id)a3;
- (ASReportAConcernDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_detailsCellHeight;
- (id)_detailsCell;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)dealloc;
- (void)submitPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ASReportAConcernDetailsViewController

- (ASReportAConcernDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = objc_alloc_init(ASReportAConcernConfiguration);
  v6 = [(ASReportAConcernDetailsViewController *)self initWithConfiguration:v5];

  return v6;
}

- (ASReportAConcernDetailsViewController)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(ASReportAConcernConfiguration);
  v5 = [(ASReportAConcernDetailsViewController *)self initWithConfiguration:v4];

  return v5;
}

- (ASReportAConcernDetailsViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASReportAConcernDetailsViewController;
  v6 = [(ASReportAConcernDetailsViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
    [v8 addObserver:v7 selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v3 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v4.receiver = self;
  v4.super_class = ASReportAConcernDetailsViewController;
  [(ASReportAConcernDetailsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = ASReportAConcernDetailsViewController;
  [(ASReportAConcernDetailsViewController *)&v19 viewDidLoad];
  v3 = [(ASReportAConcernDetailsViewController *)self configuration];
  v4 = [v3 title];
  [(ASReportAConcernDetailsViewController *)self setTitle:v4];

  v5 = [UIBarButtonItem alloc];
  v6 = [(ASReportAConcernDetailsViewController *)self configuration];
  v7 = [v6 submitTitle];
  v8 = [v5 initWithTitle:v7 style:2 target:self action:"submitPressed:"];
  v9 = [(ASReportAConcernDetailsViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setAllowsSelection:0];
  [v10 setDelegate:self];
  v11 = [[ASReportAConcernDetailsDataSource alloc] initWithTableView:v10];
  v12 = [(ASReportAConcernDetailsViewController *)self configuration];
  v13 = [v12 reportConcernExplanation];
  [(ASReportAConcernDetailsDataSource *)v11 setPlaceholder:v13];

  v14 = [(ASReportAConcernDetailsViewController *)self selectedReason];
  v15 = [v14 uppercaseName];
  [(ASReportAConcernDetailsDataSource *)v11 setSelectedReason:v15];

  v16 = [(ASReportAConcernDetailsViewController *)self configuration];
  v17 = [v16 privacyNote];
  [(ASReportAConcernDetailsDataSource *)v11 setPrivacyNote:v17];

  [v10 setDataSource:v11];
  [(ASReportAConcernDetailsViewController *)self setDataSource:v11];
  v18 = [(ASReportAConcernDetailsViewController *)self view];
  [v18 addSubview:v10];

  [(ASReportAConcernDetailsViewController *)self setTableView:v10];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ASReportAConcernDetailsViewController;
  [(ASReportAConcernDetailsViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(ASReportAConcernDetailsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ASReportAConcernDetailsViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)submitPressed:(id)a3
{
  [a3 setEnabled:0];
  v9 = [(ASReportAConcernDetailsViewController *)self _detailsCell];
  v4 = [v9 textView];
  [v4 resignFirstResponder];

  v5 = [(ASReportAConcernDetailsViewController *)self completion];

  if (v5)
  {
    v6 = [(ASReportAConcernDetailsViewController *)self completion];
    v7 = [(ASReportAConcernDetailsViewController *)self selectedReason];
    v8 = [v9 text];
    (v6)[2](v6, v7, v8);
  }
}

- (id)_detailsCell
{
  v2 = [(ASReportAConcernDetailsViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [v2 cellForRowAtIndexPath:v3];

  return v4;
}

- (double)_detailsCellHeight
{
  v3 = [(ASReportAConcernDetailsViewController *)self view];
  [v3 bounds];
  Height = CGRectGetHeight(v12);
  v5 = [(ASReportAConcernDetailsViewController *)self view];
  v6 = [v5 safeAreaLayoutGuide];
  [v6 layoutFrame];
  v8 = Height - v7;
  [(ASReportAConcernDetailsViewController *)self keyboardOverlapHeight];
  v10 = v8 - v9;

  return fmax(fmin(v10, 250.0), 0.0);
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ASReportAConcernDetailsViewController *)self view];
  v15 = [(ASReportAConcernDetailsViewController *)self view];
  [v15 bounds];
  [v14 convertRect:0 toView:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v40.origin.x = v17;
  v40.origin.y = v19;
  v40.size.width = v21;
  v40.size.height = v23;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = v7;
  v41.origin.y = v9;
  v41.size.width = v11;
  v41.size.height = v13;
  [(ASReportAConcernDetailsViewController *)self setKeyboardOverlapHeight:fmax(MaxY - CGRectGetMinY(v41), 0.0)];
  v25 = [v4 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v25 floatValue];
  v27 = v26;

  v28 = [v4 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  v29 = [v28 integerValue];

  v30 = [(ASReportAConcernDetailsViewController *)self tableView];
  [v30 contentInset];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000220B8;
  v39[3] = &unk_1008AE4E0;
  v39[4] = self;
  v39[5] = v32;
  v39[6] = v34;
  v39[7] = v36;
  v39[8] = v38;
  [UIView animateWithDuration:v29 delay:v39 options:&stru_1008AE520 animations:v27 completion:0.0];
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  v9 = [v8 integerValue];

  v10 = [(ASReportAConcernDetailsViewController *)self tableView];
  [v10 contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(ASReportAConcernDetailsViewController *)self setKeyboardOverlapHeight:0.0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000223A4;
  v19[3] = &unk_1008AE4E0;
  v19[4] = self;
  v19[5] = v12;
  v19[6] = v14;
  v19[7] = v16;
  v19[8] = v18;
  [UIView animateWithDuration:v9 delay:v19 options:0 animations:v7 completion:0.0];
}

@end