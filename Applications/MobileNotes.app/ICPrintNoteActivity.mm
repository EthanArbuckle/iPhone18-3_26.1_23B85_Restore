@interface ICPrintNoteActivity
- (ICPrintNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICPrintNoteActivity

- (ICPrintNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICPrintNoteActivity;
  v9 = [(ICPrintNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Print" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICPrintNoteActivity *)self presentingViewController];
  v6 = [v5 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(ICPrintNoteActivity *)self presentingViewController];
  v12 = [v11 traitCollection];
  v13 = [v12 traitCollectionByModifyingTraits:&stru_100647258];

  v14 = objc_alloc_init(ICTextController);
  v15 = [(ICPrintNoteActivity *)self note];
  v16 = [ICTextViewController createTextViewUsingTextController:v14 stylingTextUsingSeparateTextStorageForRendering:0 note:v15 containerWidth:0 forManualRendering:0 scrollState:v13 traitCollection:v8];

  v17 = [(ICPrintNoteActivity *)self note];
  v18 = [ICTextViewController printFormatterForNote:v17 withSize:v13 traitCollection:v8, v10];

  v19 = +[UIPrintInfo printInfo];
  v20 = [(ICPrintNoteActivity *)self note];
  v21 = [v20 title];
  [v19 setJobName:v21];

  v22 = +[UIPrintInteractionController sharedPrintController];
  [v22 setPrintFormatter:v18];
  [v22 setPrintInfo:v19];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000854F4;
  v27 = &unk_100647280;
  v28 = self;
  v29 = v4;
  v23 = v4;
  [v22 presentAnimated:1 completionHandler:&v24];
  [(ICPrintNoteActivity *)self activityDidFinish:1, v24, v25, v26, v27, v28];
}

@end