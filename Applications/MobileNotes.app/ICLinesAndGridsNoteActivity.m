@interface ICLinesAndGridsNoteActivity
- (ICLinesAndGridsNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 shouldCreateNewNoteBlock:(id)a6;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)paperStyleSheetCollectionViewController:(id)a3 didFinishWithPaperStyleType:(unint64_t)a4;
@end

@implementation ICLinesAndGridsNoteActivity

- (ICLinesAndGridsNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5 shouldCreateNewNoteBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000BEA70;
  v21[3] = &unk_100645900;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v20.receiver = self;
  v20.super_class = ICLinesAndGridsNoteActivity;
  v15 = [(ICLinesAndGridsNoteActivity *)&v20 initWithPerformActivity:v21];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_note, a3);
    objc_storeWeak(&v16->_presentingViewController, v12);
    objc_storeStrong(&v16->_eventReporter, a5);
    v17 = objc_retainBlock(v14);
    shouldCreateNewNoteBlock = v16->_shouldCreateNewNoteBlock;
    v16->_shouldCreateNewNoteBlock = v17;
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v16;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Lines & Grids" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)paperStyleSheetCollectionViewController:(id)a3 didFinishWithPaperStyleType:(unint64_t)a4
{
  v6 = [(ICLinesAndGridsNoteActivity *)self note];
  if (!v6)
  {
    v7 = [(ICLinesAndGridsNoteActivity *)self shouldCreateNewNoteBlock];

    if (!v7)
    {
      goto LABEL_5;
    }

    v6 = [(ICLinesAndGridsNoteActivity *)self shouldCreateNewNoteBlock];
    v8 = v6[2]();
    [(ICLinesAndGridsNoteActivity *)self setNote:v8];
  }

LABEL_5:
  v9 = [(ICLinesAndGridsNoteActivity *)self note];
  v10 = [v9 paperStyleType];

  if (v10 != a4)
  {
    v11 = [(ICLinesAndGridsNoteActivity *)self note];
    [v11 setPaperStyleType:a4];

    v12 = [(ICLinesAndGridsNoteActivity *)self note];
    [v12 updateChangeCountWithReason:@"Changed paper style"];

    v13 = [(ICLinesAndGridsNoteActivity *)self note];
    v14 = [v13 managedObjectContext];
    [v14 ic_save];

    v15 = [(ICLinesAndGridsNoteActivity *)self eventReporter];
    v16 = [(ICLinesAndGridsNoteActivity *)self activityType];
    [v15 submitNoteActionMenuEventForNoteEditorWithUsageType:3 activityType:v16];
  }

  [(ICLinesAndGridsNoteActivity *)self activityDidFinish:1];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end