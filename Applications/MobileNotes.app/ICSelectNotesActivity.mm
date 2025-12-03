@interface ICSelectNotesActivity
- (ICSelectNotesActivity)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICSelectNotesActivity

- (ICSelectNotesActivity)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ICSelectNotesActivity;
  v5 = [(ICSelectNotesActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
  }

  return v6;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Select Notes" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICSelectNotesActivity *)self presentingViewController];

  selfCopy2 = self;
  if (presentingViewController)
  {
    presentingViewController2 = [(ICSelectNotesActivity *)self presentingViewController];
    [presentingViewController2 setEditing:1 animated:1];

    selfCopy2 = self;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [(ICSelectNotesActivity *)selfCopy2 activityDidFinish:v7];
  if (completionCopy)
  {
    activityType = [(ICSelectNotesActivity *)self activityType];
    completionCopy[2](completionCopy, presentingViewController != 0, activityType);
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end