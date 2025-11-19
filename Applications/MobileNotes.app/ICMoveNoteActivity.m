@interface ICMoveNoteActivity
- (ICMoveNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICMoveNoteActivity

- (ICMoveNoteActivity)initWithNote:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICMoveNoteActivity;
  v9 = [(ICMoveNoteActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeWeak(&v10->_presentingViewController, v8);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move Note" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICMoveNoteActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [(ICMoveNoteActivity *)self presentingViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10015A960;
    v8[3] = &unk_100645E80;
    v8[4] = self;
    v9 = v4;
    [v6 ic_dismissPresentedViewControllerAnimated:1 completion:v8];
  }

  else
  {
    [(ICMoveNoteActivity *)self activityDidFinish:0];
    if (v4)
    {
      v7 = [(ICMoveNoteActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v7);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end