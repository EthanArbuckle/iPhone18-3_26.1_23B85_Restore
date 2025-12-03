@interface CPSReportProblemViewController
- (CPSReportProblemViewController)init;
- (CPSReportProblemViewController)initWithClipBundleIdentifier:(id)identifier itemIdentifier:(unint64_t)itemIdentifier;
- (CPSReportProblemViewController)initWithCoder:(id)coder;
- (CPSReportProblemViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (CPSReportProblemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CPSReportProblemViewController)initWithRootViewController:(id)controller;
- (void)setUpConcernsViewController;
- (void)showAlertForError:(id)error withTitle:(id)title message:(id)message completion:(id)completion;
- (void)showConcernDetailVCWithProblemType:(id)type;
- (void)showVisitAppSupportForDeveloperURL:(id)l problemType:(id)type;
- (void)signInToAppStoreIfNeededWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation CPSReportProblemViewController

- (CPSReportProblemViewController)initWithClipBundleIdentifier:(id)identifier itemIdentifier:(unint64_t)itemIdentifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CPSReportProblemViewController;
  v8 = [(CPSReportProblemViewController *)&v13 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[CPSReportProblemModel alloc] initWithBundleIdentifier:identifierCopy itemIdentifier:itemIdentifier];
    model = v8->_model;
    v8->_model = v9;

    objc_storeStrong(&v8->_clipBundleIdentifier, identifier);
    v11 = v8;
  }

  return v8;
}

- (CPSReportProblemViewController)init
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"-init: is not available." userInfo:0];
  objc_exception_throw(v2);
}

- (CPSReportProblemViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [NSException exceptionWithName:NSGenericException reason:@"-initWithCoder: is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (CPSReportProblemViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v4 = [NSException exceptionWithName:NSGenericException reason:@"-initWithNavigationBarClass: is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (CPSReportProblemViewController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [NSException exceptionWithName:NSGenericException reason:@"-initWithRootViewController: is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (CPSReportProblemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v7 = [NSException exceptionWithName:NSGenericException reason:@"-initWithNibName: is not available." userInfo:0];
  objc_exception_throw(v7);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CPSReportProblemViewController;
  [(CPSReportProblemViewController *)&v3 viewDidLoad];
  [(CPSReportProblemViewController *)self setUpConcernsViewController];
  [(CPSReportProblemViewController *)self pushViewController:self->_concernsVC animated:0];
}

- (void)setUpConcernsViewController
{
  v3 = [[CPSReportProblemConcernsViewController alloc] initWithStyle:1];
  concernsVC = self->_concernsVC;
  self->_concernsVC = v3;

  v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v6 = [[UIBarButtonItem alloc] initWithCustomView:v5];
  navigationItem = [(CPSReportProblemConcernsViewController *)self->_concernsVC navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  [v5 startAnimating];
  model = self->_model;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_469C;
  v15[3] = &unk_14970;
  v15[4] = self;
  v9 = v5;
  v16 = v9;
  [(CPSReportProblemModel *)model fetchAMSDataWithCompletion:v15];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4820;
  v12[3] = &unk_14998;
  objc_copyWeak(&v13, &location);
  [(CPSReportProblemConcernsViewController *)self->_concernsVC setSelectAction:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4A58;
  v10[3] = &unk_149C0;
  objc_copyWeak(&v11, &location);
  [(CPSReportProblemConcernsViewController *)self->_concernsVC setCancelAction:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)signInToAppStoreIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v5 ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v7 = [AMSUIAuthenticateTask alloc];
    v8 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount2 = [v8 ams_activeiTunesAccount];
    v10 = [v7 initWithAccount:ams_activeiTunesAccount2 presentingViewController:self options:0];

    performAuthentication = [v10 performAuthentication];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4C28;
    v12[3] = &unk_149E8;
    v13 = completionCopy;
    [performAuthentication addFinishBlock:v12];
  }
}

- (void)showConcernDetailVCWithProblemType:(id)type
{
  typeCopy = type;
  v5 = [[CPSReportProblemConcernDetailViewController alloc] initWithProblemType:typeCopy];
  objc_initWeak(&location, v5);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_4E18;
  v13 = &unk_14A38;
  objc_copyWeak(&v16, &location);
  selfCopy = self;
  v6 = typeCopy;
  v15 = v6;
  [(CPSReportProblemConcernDetailViewController *)v5 setSendAction:&v10];
  [(CPSReportProblemViewController *)self pushViewController:v5 animated:1, v10, v11, v12, v13, selfCopy];
  v7 = +[CPSAnalyticsLogger sharedLogger];
  clipBundleIdentifier = self->_clipBundleIdentifier;
  label = [v6 label];
  [v7 recordReportProblemStepCompletedWithBundleID:clipBundleIdentifier problemLabel:label event:4];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)showVisitAppSupportForDeveloperURL:(id)l problemType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v8 = objc_alloc_init(CPSReportProblemVisitAppSupportViewController);
  objc_initWeak(&location, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_5280;
  v17 = &unk_14A88;
  objc_copyWeak(&v20, &location);
  v9 = typeCopy;
  v18 = v9;
  v10 = lCopy;
  v19 = v10;
  [(CPSReportProblemVisitAppSupportViewController *)v8 setFinishAction:&v14];
  [(CPSReportProblemViewController *)self pushViewController:v8 animated:1, v14, v15, v16, v17];
  v11 = +[CPSAnalyticsLogger sharedLogger];
  clipBundleIdentifier = self->_clipBundleIdentifier;
  label = [v9 label];
  [v11 recordReportProblemStepCompletedWithBundleID:clipBundleIdentifier problemLabel:label event:2];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)showAlertForError:(id)error withTitle:(id)title message:(id)message completion:(id)completion
{
  completionCopy = completion;
  v10 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v11 = _CPSLocalizedString();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_552C;
  v14[3] = &unk_14AB0;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v14];
  [v10 addAction:v13];

  [(CPSReportProblemViewController *)self presentViewController:v10 animated:1 completion:0];
}

@end