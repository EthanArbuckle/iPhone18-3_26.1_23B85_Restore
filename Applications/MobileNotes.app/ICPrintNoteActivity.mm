@interface ICPrintNoteActivity
- (ICPrintNoteActivity)initWithNote:(id)note presentingViewController:(id)controller;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICPrintNoteActivity

- (ICPrintNoteActivity)initWithNote:(id)note presentingViewController:(id)controller
{
  noteCopy = note;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICPrintNoteActivity;
  v9 = [(ICPrintNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Print" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICPrintNoteActivity *)self presentingViewController];
  view = [presentingViewController view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  presentingViewController2 = [(ICPrintNoteActivity *)self presentingViewController];
  traitCollection = [presentingViewController2 traitCollection];
  v13 = [traitCollection traitCollectionByModifyingTraits:&stru_100647258];

  v14 = objc_alloc_init(ICTextController);
  note = [(ICPrintNoteActivity *)self note];
  v16 = [ICTextViewController createTextViewUsingTextController:v14 stylingTextUsingSeparateTextStorageForRendering:0 note:note containerWidth:0 forManualRendering:0 scrollState:v13 traitCollection:v8];

  note2 = [(ICPrintNoteActivity *)self note];
  v18 = [ICTextViewController printFormatterForNote:note2 withSize:v13 traitCollection:v8, v10];

  v19 = +[UIPrintInfo printInfo];
  note3 = [(ICPrintNoteActivity *)self note];
  title = [note3 title];
  [v19 setJobName:title];

  v22 = +[UIPrintInteractionController sharedPrintController];
  [v22 setPrintFormatter:v18];
  [v22 setPrintInfo:v19];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000854F4;
  v27 = &unk_100647280;
  selfCopy = self;
  v29 = completionCopy;
  v23 = completionCopy;
  [v22 presentAnimated:1 completionHandler:&v24];
  [(ICPrintNoteActivity *)self activityDidFinish:1, v24, v25, v26, v27, selfCopy];
}

@end