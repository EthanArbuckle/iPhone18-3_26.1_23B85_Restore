@interface ICPinNoteActivity
- (ICPinNoteActivity)initWithNote:(id)a3 eventReporter:(id)a4;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICPinNoteActivity

- (ICPinNoteActivity)initWithNote:(id)a3 eventReporter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICPinNoteActivity;
  v9 = [(ICPinNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeStrong(&v10->_eventReporter, a4);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = [(ICPinNoteActivity *)self note];
  v3 = [v2 isPinned];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
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
  v2 = [(ICPinNoteActivity *)self note];
  v3 = [v2 isPinned];
  v4 = @"pin.fill";
  if (v3)
  {
    v4 = @"pin.slash.fill";
  }

  v5 = v4;

  v6 = [UIImage systemImageNamed:v5];

  return v6;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ICPinNoteActivity *)self note];
  v6 = [v5 managedObjectContext];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100139050;
  v13 = &unk_100645C78;
  objc_copyWeak(&v14, &location);
  [v6 performBlockAndWait:&v10];

  v7 = [(ICPinNoteActivity *)self eventReporter:v10];
  v8 = [(ICPinNoteActivity *)self note];
  [v7 submitNotePinEventForModernNote:v8 contextPath:1];

  [(ICPinNoteActivity *)self activityDidFinish:1];
  if (v4)
  {
    v9 = [(ICPinNoteActivity *)self activityType];
    v4[2](v4, 1, v9);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end