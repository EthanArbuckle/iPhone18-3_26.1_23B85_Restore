@interface ICImportArchiveActivity
- (ICImportArchiveActivity)initWithNoteContainer:(id)container markdown:(BOOL)markdown presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICImportArchiveActivity

- (ICImportArchiveActivity)initWithNoteContainer:(id)container markdown:(BOOL)markdown presentingViewController:(id)controller
{
  containerCopy = container;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ICImportArchiveActivity;
  v11 = [(ICImportArchiveActivity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_noteContainer, container);
    objc_storeWeak(&v12->_presentingViewController, controllerCopy);
    v12->_markdown = markdown;
  }

  return v12;
}

- (id)activityTitle
{
  markdown = self->_markdown;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (markdown)
  {
    v5 = @"Import Markdown…";
  }

  else
  {
    v5 = @"Import Archive…";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100661CF0 table:0];

  return v6;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICImportArchiveActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [ICImportArchiveController alloc];
    presentingViewController2 = [(ICImportArchiveActivity *)self presentingViewController];
    v8 = [(ICImportArchiveController *)v6 initForPresentingInViewController:presentingViewController2 markdown:[(ICImportArchiveActivity *)self markdown]];
    [(ICImportArchiveActivity *)self setImportArchiveController:v8];

    importArchiveController = [(ICImportArchiveActivity *)self importArchiveController];
    noteContainer = [(ICImportArchiveActivity *)self noteContainer];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003C378;
    v12[3] = &unk_100645570;
    v12[4] = self;
    v13 = completionCopy;
    [importArchiveController importIntoNoteContainer:noteContainer completion:v12];
  }

  else
  {
    [(ICImportArchiveActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICImportArchiveActivity *)self activityType];
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