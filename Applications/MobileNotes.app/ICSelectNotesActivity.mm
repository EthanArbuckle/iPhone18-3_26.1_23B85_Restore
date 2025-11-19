@interface ICSelectNotesActivity
- (ICSelectNotesActivity)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICSelectNotesActivity

- (ICSelectNotesActivity)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICSelectNotesActivity;
  v5 = [(ICSelectNotesActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
  }

  return v6;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Select Notes" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(ICSelectNotesActivity *)self presentingViewController];

  v5 = self;
  if (v4)
  {
    v6 = [(ICSelectNotesActivity *)self presentingViewController];
    [v6 setEditing:1 animated:1];

    v5 = self;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [(ICSelectNotesActivity *)v5 activityDidFinish:v7];
  if (v9)
  {
    v8 = [(ICSelectNotesActivity *)self activityType];
    v9[2](v9, v4 != 0, v8);
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end