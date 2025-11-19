@interface MacCollectionEditCoordinator
- (CGRect)sourceRect;
- (MacCollectionEditCoordinator)initWithCollection:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7;
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
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)macCollectionEditViewControllerDelete:(id)a3;
- (void)macCollectionEditViewControllerPickPhoto:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
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

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v6 = a4;
  v5 = [v6 objectForKeyedSubscript:UIImagePickerControllerEditedImage];
  if (!v5)
  {
    v5 = [v6 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
  }

  [(CollectionHandler *)self->_collection updateImage:v5];
  [(MacCollectionEditCoordinator *)self _save];
  [(MacCollectionEditCoordinator *)self _finish];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  editViewController = self->_editViewController;
  v5 = a3;
  v6 = [(MacCollectionEditViewController *)editViewController presentationController];

  if (v6 == v5)
  {

    [(MacCollectionEditCoordinator *)self _finish];
  }
}

- (void)macCollectionEditViewControllerDelete:(id)a3
{
  [(MacCollectionEditCoordinator *)self _dismissEditor];

  [(MacCollectionEditCoordinator *)self _presentDeleteConfirmation];
}

- (void)macCollectionEditViewControllerPickPhoto:(id)a3
{
  [(MacCollectionEditCoordinator *)self _dismissEditor];

  [(MacCollectionEditCoordinator *)self _presentPhotoPicker];
}

- (void)_updateTitle
{
  v6 = [(MacCollectionEditViewController *)self->_editViewController newTitle];
  if ([(NSString *)v6 length])
  {
    v3 = [(CollectionHandler *)self->_collection title];
    v4 = v3;
    if (v3 == v6)
    {
    }

    else
    {
      v5 = [(NSString *)v3 isEqual:v6];

      if ((v5 & 1) == 0)
      {
        [(CollectionHandler *)self->_collection updateTitle:v6];
      }
    }
  }
}

- (void)_dismissPhotoPicker
{
  v3 = [(UIImagePickerController *)self->_imagePickerController presentingViewController];

  if (v3)
  {
    v4 = [(UIImagePickerController *)self->_imagePickerController presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
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
    v6 = [(UIImagePickerController *)self->_imagePickerController popoverPresentationController];
    [v6 setSourceView:WeakRetained];

    x = self->_sourceRect.origin.x;
    y = self->_sourceRect.origin.y;
    width = self->_sourceRect.size.width;
    height = self->_sourceRect.size.height;
    v11 = [(UIImagePickerController *)self->_imagePickerController popoverPresentationController];
    [v11 setSourceRect:{x, y, width, height}];
  }

  v12 = objc_loadWeakRetained(&self->_presentingViewController);
  [v12 presentViewController:self->_imagePickerController animated:1 completion:0];

  [GEOAPPortal captureUserAction:2074 target:252 value:0];
}

- (void)_dismissDeleteConfirmation
{
  v3 = [(UIAlertController *)self->_confirmDeleteViewController presentingViewController];

  if (v3)
  {
    v4 = [(UIAlertController *)self->_confirmDeleteViewController presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
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
  v3 = [(MacCollectionEditViewController *)self->_editViewController presentingViewController];

  if (v3)
  {
    [(MacCollectionEditCoordinator *)self _updateTitle];
    [(MacCollectionEditCoordinator *)self _save];
    v4 = [(MacCollectionEditViewController *)self->_editViewController presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
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
  v6 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [v6 setSourceView:WeakRetained];

  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  v11 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [v11 setSourceRect:{x, y, width, height}];

  v12 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [v12 setPermittedArrowDirections:12];

  v13 = [(MacCollectionEditViewController *)self->_editViewController popoverPresentationController];
  [v13 setDelegate:self];

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

- (MacCollectionEditCoordinator)initWithCollection:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v25.receiver = self;
  v25.super_class = MacCollectionEditCoordinator;
  v20 = [(MacCollectionEditCoordinator *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_collection, a3);
    objc_storeWeak(&v21->_presentingViewController, v17);
    objc_storeWeak(&v21->_sourceView, v18);
    v21->_sourceRect.origin.x = x;
    v21->_sourceRect.origin.y = y;
    v21->_sourceRect.size.width = width;
    v21->_sourceRect.size.height = height;
    v22 = objc_retainBlock(v19);
    completion = v21->_completion;
    v21->_completion = v22;
  }

  return v21;
}

@end