@interface RAPReportComposerInstructionDetailViewController
- (RAPReportComposerInstructionDetailViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableParts;
- (void)cancelCorrection;
- (void)saveCorrection;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RAPReportComposerInstructionDetailViewController

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(RAPReportTableViewController *)self userInfoPart];
  [v3 addObject:v4];

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

  v4 = [(RAPReportComposerInstructionDetailViewController *)self navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)saveCorrection
{
  v3 = [(RAPReportLocationSection *)self->_locationSection imageDataOfMapAndInstructionsCell];
  [(RAPInstructionCorrectionQuestion *)self->_question setCellScreenshotImageData:v3];

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10105 onTarget:1102 eventValue:0];

  v5 = [(RAPQuestion *)self->_question parentQuestion];
  [v5 saveCorrection:self->_question];

  v6 = [(RAPReportComposerInstructionDetailViewController *)self navigationController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = RAPReportComposerInstructionDetailViewController;
  [(RAPReportComposerInstructionDetailViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(RAPReportComposerInstructionDetailViewController *)self tableView];
  [v5 reloadData];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = RAPReportComposerInstructionDetailViewController;
  [(RAPReportComposerInstructionDetailViewController *)&v6 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
  v5 = [(RAPReportComposerInstructionDetailViewController *)self tableView];
  [v5 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RAPReportComposerInstructionDetailViewController;
  [(RAPReportTableViewController *)&v6 viewDidLoad];
  v3 = [(RAPQuestion *)self->_question parentQuestion];
  v4 = [v3 localizedTitle];
  v5 = [(RAPReportComposerInstructionDetailViewController *)self navigationItem];
  [v5 setTitle:v4];
}

- (RAPReportComposerInstructionDetailViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v24.receiver = self;
  v24.super_class = RAPReportComposerInstructionDetailViewController;
  v10 = [(RAPReportTableViewController *)&v24 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [(RAPCommentQuestion *)v11->_question comment];
    savedCorrectionText = v11->_savedCorrectionText;
    v11->_savedCorrectionText = v12;

    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"cancelCorrection"];
    v15 = [(RAPReportComposerInstructionDetailViewController *)v11 navigationItem];
    [v15 setLeftBarButtonItem:v14];

    v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"saveCorrection"];
    v17 = [(RAPReportComposerInstructionDetailViewController *)v11 navigationItem];
    [v17 setRightBarButtonItem:v16];

    v18 = [(RAPReportComposerInstructionDetailViewController *)v11 navigationItem];
    v19 = [v18 rightBarButtonItem];
    [v19 setEnabled:0];

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