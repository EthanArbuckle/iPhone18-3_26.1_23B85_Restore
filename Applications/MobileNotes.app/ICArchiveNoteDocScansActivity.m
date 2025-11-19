@interface ICArchiveNoteDocScansActivity
- (ICArchiveNoteDocScansActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICArchiveNoteDocScansActivity

- (ICArchiveNoteDocScansActivity)initWithNote:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICArchiveNoteDocScansActivity;
  v12 = [(ICArchiveNoteDocScansActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_note, a3);
    objc_storeWeak(&v13->_presentingViewController, v10);
    objc_storeStrong(&v13->_presentingBarButtonItem, a5);
  }

  return v13;
}

- (void)performActivityWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [(ICArchiveNoteDocScansActivity *)self presentingViewController];

  if (v4)
  {
    v5 = [(ICArchiveNoteDocScansActivity *)self note];
    v6 = [(ICArchiveNoteDocScansActivity *)self presentingViewController];
    v7 = [(ICArchiveNoteDocScansActivity *)self presentingBarButtonItem];
    [ICDocCamArchiveExporter showExportArchiveFromNote:v5 presentingViewController:v6 presentingBarButtonItem:v7];

    v8 = self;
    v9 = 1;
  }

  else
  {
    v8 = self;
    v9 = 0;
  }

  [(ICArchiveNoteDocScansActivity *)v8 activityDidFinish:v9];
  if (v11)
  {
    v10 = [(ICArchiveNoteDocScansActivity *)self activityType];
    v11[2](v11, v4 != 0, v10);
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end