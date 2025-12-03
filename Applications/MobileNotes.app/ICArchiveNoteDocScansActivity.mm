@interface ICArchiveNoteDocScansActivity
- (ICArchiveNoteDocScansActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICArchiveNoteDocScansActivity

- (ICArchiveNoteDocScansActivity)initWithNote:(id)note presentingViewController:(id)controller presentingBarButtonItem:(id)item
{
  noteCopy = note;
  controllerCopy = controller;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = ICArchiveNoteDocScansActivity;
  v12 = [(ICArchiveNoteDocScansActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_note, note);
    objc_storeWeak(&v13->_presentingViewController, controllerCopy);
    objc_storeStrong(&v13->_presentingBarButtonItem, item);
  }

  return v13;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICArchiveNoteDocScansActivity *)self presentingViewController];

  if (presentingViewController)
  {
    note = [(ICArchiveNoteDocScansActivity *)self note];
    presentingViewController2 = [(ICArchiveNoteDocScansActivity *)self presentingViewController];
    presentingBarButtonItem = [(ICArchiveNoteDocScansActivity *)self presentingBarButtonItem];
    [ICDocCamArchiveExporter showExportArchiveFromNote:note presentingViewController:presentingViewController2 presentingBarButtonItem:presentingBarButtonItem];

    selfCopy2 = self;
    v9 = 1;
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  [(ICArchiveNoteDocScansActivity *)selfCopy2 activityDidFinish:v9];
  if (completionCopy)
  {
    activityType = [(ICArchiveNoteDocScansActivity *)self activityType];
    completionCopy[2](completionCopy, presentingViewController != 0, activityType);
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end