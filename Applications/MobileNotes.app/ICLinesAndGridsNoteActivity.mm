@interface ICLinesAndGridsNoteActivity
- (ICLinesAndGridsNoteActivity)initWithNote:(id)note presentingViewController:(id)controller eventReporter:(id)reporter shouldCreateNewNoteBlock:(id)block;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)paperStyleSheetCollectionViewController:(id)controller didFinishWithPaperStyleType:(unint64_t)type;
@end

@implementation ICLinesAndGridsNoteActivity

- (ICLinesAndGridsNoteActivity)initWithNote:(id)note presentingViewController:(id)controller eventReporter:(id)reporter shouldCreateNewNoteBlock:(id)block
{
  noteCopy = note;
  controllerCopy = controller;
  reporterCopy = reporter;
  blockCopy = block;
  objc_initWeak(&location, self);
  objc_initWeak(&from, controllerCopy);
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
    objc_storeStrong(&v15->_note, note);
    objc_storeWeak(&v16->_presentingViewController, controllerCopy);
    objc_storeStrong(&v16->_eventReporter, reporter);
    v17 = objc_retainBlock(blockCopy);
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

- (void)paperStyleSheetCollectionViewController:(id)controller didFinishWithPaperStyleType:(unint64_t)type
{
  note = [(ICLinesAndGridsNoteActivity *)self note];
  if (!note)
  {
    shouldCreateNewNoteBlock = [(ICLinesAndGridsNoteActivity *)self shouldCreateNewNoteBlock];

    if (!shouldCreateNewNoteBlock)
    {
      goto LABEL_5;
    }

    note = [(ICLinesAndGridsNoteActivity *)self shouldCreateNewNoteBlock];
    v8 = note[2]();
    [(ICLinesAndGridsNoteActivity *)self setNote:v8];
  }

LABEL_5:
  note2 = [(ICLinesAndGridsNoteActivity *)self note];
  paperStyleType = [note2 paperStyleType];

  if (paperStyleType != type)
  {
    note3 = [(ICLinesAndGridsNoteActivity *)self note];
    [note3 setPaperStyleType:type];

    note4 = [(ICLinesAndGridsNoteActivity *)self note];
    [note4 updateChangeCountWithReason:@"Changed paper style"];

    note5 = [(ICLinesAndGridsNoteActivity *)self note];
    managedObjectContext = [note5 managedObjectContext];
    [managedObjectContext ic_save];

    eventReporter = [(ICLinesAndGridsNoteActivity *)self eventReporter];
    activityType = [(ICLinesAndGridsNoteActivity *)self activityType];
    [eventReporter submitNoteActionMenuEventForNoteEditorWithUsageType:3 activityType:activityType];
  }

  [(ICLinesAndGridsNoteActivity *)self activityDidFinish:1];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end