@interface ICDumpStateActivity
- (ICDumpStateActivity)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICDumpStateActivity

- (ICDumpStateActivity)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ICDumpStateActivity;
  v5 = [(ICDumpStateActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
  }

  return v6;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICDumpStateActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [UIAlertController alertControllerWithTitle:@"About State Dumps" message:@"State dumps contain only metadata useful for debugging issues in Notes. No note content or attachments are included." preferredStyle:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A2344;
    v12[3] = &unk_100647218;
    v12[4] = self;
    v7 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v12];
    [v6 addAction:v7];

    presentingViewController2 = [(ICDumpStateActivity *)self presentingViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A27E4;
    v10[3] = &unk_100645E80;
    v10[4] = self;
    v11 = completionCopy;
    [presentingViewController2 presentViewController:v6 animated:1 completion:v10];
  }

  else
  {
    [(ICDumpStateActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICDumpStateActivity *)self activityType];
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