@interface ASReportAConcernDetailsViewController
- (ASReportAConcernDetailsViewController)initWithCoder:(id)coder;
- (ASReportAConcernDetailsViewController)initWithConfiguration:(id)configuration;
- (ASReportAConcernDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_detailsCellHeight;
- (id)_detailsCell;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)dealloc;
- (void)submitPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ASReportAConcernDetailsViewController

- (ASReportAConcernDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = objc_alloc_init(ASReportAConcernConfiguration);
  v6 = [(ASReportAConcernDetailsViewController *)self initWithConfiguration:v5];

  return v6;
}

- (ASReportAConcernDetailsViewController)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(ASReportAConcernConfiguration);
  v5 = [(ASReportAConcernDetailsViewController *)self initWithConfiguration:v4];

  return v5;
}

- (ASReportAConcernDetailsViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = ASReportAConcernDetailsViewController;
  v6 = [(ASReportAConcernDetailsViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
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
  configuration = [(ASReportAConcernDetailsViewController *)self configuration];
  title = [configuration title];
  [(ASReportAConcernDetailsViewController *)self setTitle:title];

  v5 = [UIBarButtonItem alloc];
  configuration2 = [(ASReportAConcernDetailsViewController *)self configuration];
  submitTitle = [configuration2 submitTitle];
  v8 = [v5 initWithTitle:submitTitle style:2 target:self action:"submitPressed:"];
  navigationItem = [(ASReportAConcernDetailsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];

  v10 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setAllowsSelection:0];
  [v10 setDelegate:self];
  v11 = [[ASReportAConcernDetailsDataSource alloc] initWithTableView:v10];
  configuration3 = [(ASReportAConcernDetailsViewController *)self configuration];
  reportConcernExplanation = [configuration3 reportConcernExplanation];
  [(ASReportAConcernDetailsDataSource *)v11 setPlaceholder:reportConcernExplanation];

  selectedReason = [(ASReportAConcernDetailsViewController *)self selectedReason];
  uppercaseName = [selectedReason uppercaseName];
  [(ASReportAConcernDetailsDataSource *)v11 setSelectedReason:uppercaseName];

  configuration4 = [(ASReportAConcernDetailsViewController *)self configuration];
  privacyNote = [configuration4 privacyNote];
  [(ASReportAConcernDetailsDataSource *)v11 setPrivacyNote:privacyNote];

  [v10 setDataSource:v11];
  [(ASReportAConcernDetailsViewController *)self setDataSource:v11];
  view = [(ASReportAConcernDetailsViewController *)self view];
  [view addSubview:v10];

  [(ASReportAConcernDetailsViewController *)self setTableView:v10];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ASReportAConcernDetailsViewController;
  [(ASReportAConcernDetailsViewController *)&v13 viewWillLayoutSubviews];
  view = [(ASReportAConcernDetailsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(ASReportAConcernDetailsViewController *)self tableView];
  [tableView setFrame:{v5, v7, v9, v11}];
}

- (void)submitPressed:(id)pressed
{
  [pressed setEnabled:0];
  _detailsCell = [(ASReportAConcernDetailsViewController *)self _detailsCell];
  textView = [_detailsCell textView];
  [textView resignFirstResponder];

  completion = [(ASReportAConcernDetailsViewController *)self completion];

  if (completion)
  {
    completion2 = [(ASReportAConcernDetailsViewController *)self completion];
    selectedReason = [(ASReportAConcernDetailsViewController *)self selectedReason];
    text = [_detailsCell text];
    (completion2)[2](completion2, selectedReason, text);
  }
}

- (id)_detailsCell
{
  tableView = [(ASReportAConcernDetailsViewController *)self tableView];
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [tableView cellForRowAtIndexPath:v3];

  return v4;
}

- (double)_detailsCellHeight
{
  view = [(ASReportAConcernDetailsViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v12);
  view2 = [(ASReportAConcernDetailsViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v8 = Height - v7;
  [(ASReportAConcernDetailsViewController *)self keyboardOverlapHeight];
  v10 = v8 - v9;

  return fmax(fmin(v10, 250.0), 0.0);
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(ASReportAConcernDetailsViewController *)self view];
  view2 = [(ASReportAConcernDetailsViewController *)self view];
  [view2 bounds];
  [view convertRect:0 toView:?];
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
  v25 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v25 floatValue];
  v27 = v26;

  v28 = [userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v28 integerValue];

  tableView = [(ASReportAConcernDetailsViewController *)self tableView];
  [tableView contentInset];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_5318;
  v39[3] = &unk_87D5E8;
  v39[4] = self;
  v39[5] = v32;
  v39[6] = v34;
  v39[7] = v36;
  v39[8] = v38;
  [UIView animateWithDuration:integerValue delay:v39 options:&stru_87D628 animations:v27 completion:0.0];
}

- (void)_keyboardWillHide:(id)hide
{
  userInfo = [hide userInfo];
  v5 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v5 floatValue];
  v7 = v6;

  v8 = [userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v8 integerValue];

  tableView = [(ASReportAConcernDetailsViewController *)self tableView];
  [tableView contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(ASReportAConcernDetailsViewController *)self setKeyboardOverlapHeight:0.0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_5604;
  v19[3] = &unk_87D5E8;
  v19[4] = self;
  v19[5] = v12;
  v19[6] = v14;
  v19[7] = v16;
  v19[8] = v18;
  [UIView animateWithDuration:integerValue delay:v19 options:0 animations:v7 completion:0.0];
}

@end