@interface ICPinNoteActivity
- (ICPinNoteActivity)initWithNote:(id)note eventReporter:(id)reporter;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICPinNoteActivity

- (ICPinNoteActivity)initWithNote:(id)note eventReporter:(id)reporter
{
  noteCopy = note;
  reporterCopy = reporter;
  v12.receiver = self;
  v12.super_class = ICPinNoteActivity;
  v9 = [(ICPinNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    objc_storeStrong(&v10->_eventReporter, reporter);
  }

  return v10;
}

- (id)activityTitle
{
  note = [(ICPinNoteActivity *)self note];
  isPinned = [note isPinned];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (isPinned)
  {
    v6 = @"Unpin Note";
  }

  else
  {
    v6 = @"Pin Note";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

  return v7;
}

- (id)activityImage
{
  note = [(ICPinNoteActivity *)self note];
  isPinned = [note isPinned];
  v4 = @"pin.fill";
  if (isPinned)
  {
    v4 = @"pin.slash.fill";
  }

  v5 = v4;

  v6 = [UIImage systemImageNamed:v5];

  return v6;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  note = [(ICPinNoteActivity *)self note];
  managedObjectContext = [note managedObjectContext];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100139050;
  v13 = &unk_100645C78;
  objc_copyWeak(&v14, &location);
  [managedObjectContext performBlockAndWait:&v10];

  v7 = [(ICPinNoteActivity *)self eventReporter:v10];
  note2 = [(ICPinNoteActivity *)self note];
  [v7 submitNotePinEventForModernNote:note2 contextPath:1];

  [(ICPinNoteActivity *)self activityDidFinish:1];
  if (completionCopy)
  {
    activityType = [(ICPinNoteActivity *)self activityType];
    completionCopy[2](completionCopy, 1, activityType);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end