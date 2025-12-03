@interface RAPReportComposerInstructionDetailViewController
- (RAPReportComposerInstructionDetailViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableParts;
- (void)cancelCorrection;
- (void)saveCorrection;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation RAPReportComposerInstructionDetailViewController

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  userInfoPart = [(RAPReportTableViewController *)self userInfoPart];
  [v3 addObject:userInfoPart];

  if (!self->_locationPart)
  {
    v5 = [[RAPReportLocationSection alloc] initWithQuestion:self->_question];
    locationSection = self->_locationSection;
    self->_locationSection = v5;

    v7 = [RAPTablePart alloc];
    v14 = self->_locationSection;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    v9 = [(RAPTablePart *)v7 initWithSections:v8];
    locationPart = self->_locationPart;
    self->_locationPart = v9;

    [v3 addObject:self->_locationPart];
  }

  if (!self->_commentPart)
  {
    v11 = [[RAPReportComposerCommentPart alloc] initWithCommentQuestion:self->_question];
    commentPart = self->_commentPart;
    self->_commentPart = v11;

    [v3 addObject:self->_commentPart];
  }

  return v3;
}

- (void)cancelCorrection
{
  [(RAPCommentQuestion *)self->_question setComment:self->_savedCorrectionText];
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:10109 onTarget:1102 eventValue:0];

  navigationController = [(RAPReportComposerInstructionDetailViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)saveCorrection
{
  imageDataOfMapAndInstructionsCell = [(RAPReportLocationSection *)self->_locationSection imageDataOfMapAndInstructionsCell];
  [(RAPInstructionCorrectionQuestion *)self->_question setCellScreenshotImageData:imageDataOfMapAndInstructionsCell];

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10105 onTarget:1102 eventValue:0];

  parentQuestion = [(RAPQuestion *)self->_question parentQuestion];
  [parentQuestion saveCorrection:self->_question];

  navigationController = [(RAPReportComposerInstructionDetailViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = RAPReportComposerInstructionDetailViewController;
  [(RAPReportComposerInstructionDetailViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  tableView = [(RAPReportComposerInstructionDetailViewController *)self tableView];
  [tableView reloadData];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = RAPReportComposerInstructionDetailViewController;
  [(RAPReportComposerInstructionDetailViewController *)&v6 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  tableView = [(RAPReportComposerInstructionDetailViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RAPReportComposerInstructionDetailViewController;
  [(RAPReportTableViewController *)&v6 viewDidLoad];
  parentQuestion = [(RAPQuestion *)self->_question parentQuestion];
  localizedTitle = [parentQuestion localizedTitle];
  navigationItem = [(RAPReportComposerInstructionDetailViewController *)self navigationItem];
  [navigationItem setTitle:localizedTitle];
}

- (RAPReportComposerInstructionDetailViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v24.receiver = self;
  v24.super_class = RAPReportComposerInstructionDetailViewController;
  v10 = [(RAPReportTableViewController *)&v24 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    comment = [(RAPCommentQuestion *)v11->_question comment];
    savedCorrectionText = v11->_savedCorrectionText;
    v11->_savedCorrectionText = comment;

    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"cancelCorrection"];
    navigationItem = [(RAPReportComposerInstructionDetailViewController *)v11 navigationItem];
    [navigationItem setLeftBarButtonItem:v14];

    v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"saveCorrection"];
    navigationItem2 = [(RAPReportComposerInstructionDetailViewController *)v11 navigationItem];
    [navigationItem2 setRightBarButtonItem:v16];

    navigationItem3 = [(RAPReportComposerInstructionDetailViewController *)v11 navigationItem];
    rightBarButtonItem = [navigationItem3 rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    question = v11->_question;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1006ECFEC;
    v22[3] = &unk_101626EC0;
    v23 = v11;
    [(RAPQuestion *)question addObserver:v23 changeHandler:v22];
  }

  return v11;
}

@end