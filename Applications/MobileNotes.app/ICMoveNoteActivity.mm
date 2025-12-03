@interface ICMoveNoteActivity
- (ICMoveNoteActivity)initWithNote:(id)note presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICMoveNoteActivity

- (ICMoveNoteActivity)initWithNote:(id)note presentingViewController:(id)controller
{
  noteCopy = note;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICMoveNoteActivity;
  v9 = [(ICMoveNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move Note" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICMoveNoteActivity *)self presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(ICMoveNoteActivity *)self presentingViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10015A960;
    v8[3] = &unk_100645E80;
    v8[4] = self;
    v9 = completionCopy;
    [presentingViewController2 ic_dismissPresentedViewControllerAnimated:1 completion:v8];
  }

  else
  {
    [(ICMoveNoteActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICMoveNoteActivity *)self activityType];
      (*(completionCopy + 2))(completionCopy, 0, activityType);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end