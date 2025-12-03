@interface MacCollectionEditCoordinator
- (CGRect)sourceRect;
- (MacCollectionEditCoordinator)initWithCollection:(id)collection presentingViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (UIView)sourceView;
- (UIViewController)presentingViewController;
- (void)_dismissDeleteConfirmation;
- (void)_dismissEditor;
- (void)_dismissPhotoPicker;
- (void)_finish;
- (void)_presentDeleteConfirmation;
- (void)_presentEditor;
- (void)_presentPhotoPicker;
- (void)_updateTitle;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)macCollectionEditViewControllerDelete:(id)delete;
- (void)macCollectionEditViewControllerPickPhoto:(id)photo;
- (void)presentationControllerWillDismiss:(id)dismiss;
@end

@implementation MacCollectionEditCoordinator

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerEditedImage];
  if (!v5)
  {
    v5 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
  }

  [(CollectionHandler *)self->_collection updateImage:v5];
  [(MacCollectionEditCoordinator *)self _save];
  [(MacCollectionEditCoordinator *)self _finish];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  editViewController = self->_editViewController;
  dismissCopy = dismiss;
  presentationController = [(MacCollectionEditViewController *)editViewController presentationController];

  if (presentationController == dismissCopy)
  {

    [(MacCollectionEditCoordinator *)self _finish];
  }
}

- (void)macCollectionEditViewControllerDelete:(id)delete
{
  [(MacCollectionEditCoordinator *)self _dismissEditor];

  [(MacCollectionEditCoordinator *)self _presentDeleteConfirmation];
}

- (void)macCollectionEditViewControllerPickPhoto:(id)photo
{
  [(MacCollectionEditCoordinator *)self _dismissEditor];

  [(MacCollectionEditCoordinator *)self _presentPhotoPicker];
}

- (void)_updateTitle
{
  newTitle = [(MacCollectionEditViewController *)self->_editViewController newTitle];
  if ([(NSString *)newTitle length])
  {
    title = [(CollectionHandler *)self->_collection title];
    v4 = title;
    if (title == newTitle)
    {
    }

    else
    {
      v5 = [(NSString *)title isEqual:newTitle];

      if ((v5 & 1) == 0)
      {
        [(CollectionHandler *)self->_collection updateTitle:newTitle];
      }
    }
  }
}

- (void)_dismissPhotoPicker
{
  presentingViewController = [(UIImagePickerController *)self->_imagePickerController presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(UIImagePickerController *)self->_imagePickerController presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  imagePickerController = self->_imagePickerController;
  self->_imagePickerController = 0;
}

- (void)_presentPhotoPicker
{
  v3 = objc_alloc_init(UIImagePickerController);
  imagePickerController = self->_imagePickerController;
  self->_imagePickerController = v3;

  [(UIImagePickerController *)self->_imagePickerController setDelegate:self];
  [(UIImagePickerController *)self->_imagePickerController setAllowsEditing:1];
  [(UIImagePickerController *)self->_imagePickerController setSourceType:0];
  if (sub_10000FA08(self->_imagePickerController) == 5)
  {
    [(UIImagePickerController *)self->_imagePickerController setModalPresentationStyle:7];
    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    popoverPresentationController = [(UIImagePickerController *)self->_imagePickerController popoverPresentationController];
    [popoverPresentationController setSourceView:WeakRetained];

    x = self->_sourceRect.origin.x;
    y = self->_sourceRect.origin.y;
    width = self->_sourceRect.size.width;
    height = self->_sourceRect.size.height;
    popoverPresentationController2 = [(UIImagePickerController *)self->_imagePickerController popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{x, y, width, height}];
  }

  v12 = objc_loadWeakRetained(&self->_presentingViewController);
  [v12 presentViewController:self->_imagePickerController animated:1 completion:0];

  [GEOAPPortal captureUserAction:2074 target:252 value:0];
}

- (void)_dismissDeleteConfirmation
{
  presentingViewController = [(UIAlertController *)self->_confirmDeleteViewController presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(UIAlertController *)self->_confirmDeleteViewController presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  confirmDeleteViewController = self->_confirmDeleteViewController;
  self->_confirmDeleteViewController = 0;
}

- (void)_presentDeleteConfirmation
{
  objc_initWeak(&location, self);
  collection = self->_collection;
  v3 = [NSArray arrayWithObjects:&collection count:1];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v5 = sub_10000FA08(WeakRetained);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100ADC598;
  v13 = &unk_1016619A8;
  objc_copyWeak(&v14, &location);
  v6 = [UIAlertController _maps_confirmationAlertControllerForDeletingCollections:v3 userInterfaceIdiom:v5 completion:&v10];
  p_confirmDeleteViewController = &self->_confirmDeleteViewController;
  confirmDeleteViewController = self->_confirmDeleteViewController;
  self->_confirmDeleteViewController = v6;

  v9 = objc_loadWeakRetained(&self->_presentingViewController);
  [v9 presentViewController:*p_confirmDeleteViewController animated:1 completion:{0, v10, v11, v12, v13}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_dismissEditor
{
  presentingViewController = [(MacCollectionEditViewController *)self->_editViewController presentingViewController];

  if (presentingViewController)
  {
    [(MacCollectionEditCoordinator *)self _updateTitle];
    [(MacCollectionEditCoordinator *)self _save];
    presentingViewController2 = [(MacCollectionEditViewController *)self->_editViewController presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  editViewController = self->_editViewController;
  self->_editViewController = 0;
}

- (void)_presentEditor
{
  v3 = [[MacCollectionEditViewController alloc] initWithCollection:self->_collection delegate:self];
  editViewController = self->_editViewController;
  self->_editViewController = v3;

  [(MacCollectionEditViewController *)self->_editViewController setModalPresentationStyle:7];
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);
  popoverPresentationController = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [popoverPresentationController setSourceView:WeakRetained];

  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  popoverPresentationController2 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{x, y, width, height}];

  popoverPresentationController3 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:12];

  popoverPresentationController4 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [popoverPresentationController4 setDelegate:self];

  v14 = objc_loadWeakRetained(&self->_presentingViewController);
  [v14 presentViewController:self->_editViewController animated:1 completion:0];
}

- (void)_finish
{
  if (!self->_finished)
  {
    self->_finished = 1;
    [(MacCollectionEditCoordinator *)self _dismissEditor];
    [(MacCollectionEditCoordinator *)self _dismissDeleteConfirmation];
    [(MacCollectionEditCoordinator *)self _dismissPhotoPicker];
    completion = self->_completion;
    if (completion)
    {
      v4 = *(completion + 2);

      v4();
    }
  }
}

- (MacCollectionEditCoordinator)initWithCollection:(id)collection presentingViewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  collectionCopy = collection;
  controllerCopy = controller;
  viewCopy = view;
  completionCopy = completion;
  v25.receiver = self;
  v25.super_class = MacCollectionEditCoordinator;
  v20 = [(MacCollectionEditCoordinator *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_collection, collection);
    objc_storeWeak(&v21->_presentingViewController, controllerCopy);
    objc_storeWeak(&v21->_sourceView, viewCopy);
    v21->_sourceRect.origin.x = x;
    v21->_sourceRect.origin.y = y;
    v21->_sourceRect.size.width = width;
    v21->_sourceRect.size.height = height;
    v22 = objc_retainBlock(completionCopy);
    completion = v21->_completion;
    v21->_completion = v22;
  }

  return v21;
}

@end