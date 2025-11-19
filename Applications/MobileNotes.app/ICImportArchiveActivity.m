@interface ICImportArchiveActivity
- (ICImportArchiveActivity)initWithNoteContainer:(id)a3 markdown:(BOOL)a4 presentingViewController:(id)a5;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICImportArchiveActivity

- (ICImportArchiveActivity)initWithNoteContainer:(id)a3 markdown:(BOOL)a4 presentingViewController:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ICImportArchiveActivity;
  v11 = [(ICImportArchiveActivity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_noteContainer, a3);
    objc_storeWeak(&v12->_presentingViewController, v10);
    v12->_markdown = a4;
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

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICImportArchiveActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [ICImportArchiveController alloc];
    v7 = [(ICImportArchiveActivity *)self presentingViewController];
    v8 = [(ICImportArchiveController *)v6 initForPresentingInViewController:v7 markdown:[(ICImportArchiveActivity *)self markdown]];
    [(ICImportArchiveActivity *)self setImportArchiveController:v8];

    v9 = [(ICImportArchiveActivity *)self importArchiveController];
    v10 = [(ICImportArchiveActivity *)self noteContainer];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003C378;
    v12[3] = &unk_100645570;
    v12[4] = self;
    v13 = v4;
    [v9 importIntoNoteContainer:v10 completion:v12];
  }

  else
  {
    [(ICImportArchiveActivity *)self activityDidFinish:0];
    if (v4)
    {
      v11 = [(ICImportArchiveActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v11);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end