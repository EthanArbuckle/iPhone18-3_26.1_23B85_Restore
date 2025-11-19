@interface SFSaveToFilesActivity
- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (SFSaveToFilesActivity)initWithActivityItemProviderCollection:(id)a3 customizationController:(id)a4;
- (void)saveToFilesOperation:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)saveToFilesOperation:(id)a3 presentViewController:(id)a4;
@end

@implementation SFSaveToFilesActivity

- (SFSaveToFilesActivity)initWithActivityItemProviderCollection:(id)a3 customizationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SFSaveToFilesActivity;
  v8 = [(UIActivity *)&v13 init];
  if (v8)
  {
    v9 = [[_SFSaveToFilesOperation alloc] initWithActivityItemProviderCollection:v6];
    operation = v8->_operation;
    v8->_operation = v9;

    [(_SFSaveToFilesOperation *)v8->_operation setDelegate:v8];
    objc_storeStrong(&v8->_customizationController, a4);
    v11 = v8;
  }

  return v8;
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  self->_presentAnimated = a4;
  v7 = a5;
  objc_storeWeak(&self->_presenterViewController, a3);
  v8 = _Block_copy(v7);

  presentationCompletionHandler = self->_presentationCompletionHandler;
  self->_presentationCompletionHandler = v8;

  [(_SFSaveToFilesOperation *)self->_operation start];
  return 1;
}

- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
LABEL_4:
    [(UIViewController *)v10 dismissViewControllerAnimated:v6 completion:v9];

    v11 = 1;
    goto LABEL_5;
  }

  v10 = self->_presentedViewController;
  if (v10)
  {
    goto LABEL_4;
  }

  if (v9)
  {
    v9[2](v9);
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (void)saveToFilesOperation:(id)a3 presentViewController:(id)a4
{
  objc_storeStrong(&self->_presentedViewController, a4);
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
  [WeakRetained presentViewController:v8 animated:self->_presentAnimated completion:self->_presentationCompletionHandler];

  presentationCompletionHandler = self->_presentationCompletionHandler;
  self->_presentationCompletionHandler = 0;
}

- (void)saveToFilesOperation:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v4 = a4;
  operation = self->_operation;
  self->_operation = 0;

  presentationCompletionHandler = self->_presentationCompletionHandler;
  self->_presentationCompletionHandler = 0;

  [(_SFActivity *)self activityDidFinish:v4];
}

@end