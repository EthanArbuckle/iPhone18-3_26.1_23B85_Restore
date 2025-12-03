@interface SFSaveToFilesActivity
- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (SFSaveToFilesActivity)initWithActivityItemProviderCollection:(id)collection customizationController:(id)controller;
- (void)saveToFilesOperation:(id)operation didFinishWithSuccess:(BOOL)success;
- (void)saveToFilesOperation:(id)operation presentViewController:(id)controller;
@end

@implementation SFSaveToFilesActivity

- (SFSaveToFilesActivity)initWithActivityItemProviderCollection:(id)collection customizationController:(id)controller
{
  collectionCopy = collection;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = SFSaveToFilesActivity;
  v8 = [(UIActivity *)&v13 init];
  if (v8)
  {
    v9 = [[_SFSaveToFilesOperation alloc] initWithActivityItemProviderCollection:collectionCopy];
    operation = v8->_operation;
    v8->_operation = v9;

    [(_SFSaveToFilesOperation *)v8->_operation setDelegate:v8];
    objc_storeStrong(&v8->_customizationController, controller);
    v11 = v8;
  }

  return v8;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  self->_presentAnimated = animated;
  completionCopy = completion;
  objc_storeWeak(&self->_presenterViewController, controller);
  v8 = _Block_copy(completionCopy);

  presentationCompletionHandler = self->_presentationCompletionHandler;
  self->_presentationCompletionHandler = v8;

  [(_SFSaveToFilesOperation *)self->_operation start];
  return 1;
}

- (BOOL)_dismissActivityFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy)
  {
    v10 = controllerCopy;
LABEL_4:
    [(UIViewController *)v10 dismissViewControllerAnimated:animatedCopy completion:completionCopy];

    v11 = 1;
    goto LABEL_5;
  }

  v10 = self->_presentedViewController;
  if (v10)
  {
    goto LABEL_4;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (void)saveToFilesOperation:(id)operation presentViewController:(id)controller
{
  objc_storeStrong(&self->_presentedViewController, controller);
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
  [WeakRetained presentViewController:controllerCopy animated:self->_presentAnimated completion:self->_presentationCompletionHandler];

  presentationCompletionHandler = self->_presentationCompletionHandler;
  self->_presentationCompletionHandler = 0;
}

- (void)saveToFilesOperation:(id)operation didFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  operation = self->_operation;
  self->_operation = 0;

  presentationCompletionHandler = self->_presentationCompletionHandler;
  self->_presentationCompletionHandler = 0;

  [(_SFActivity *)self activityDidFinish:successCopy];
}

@end