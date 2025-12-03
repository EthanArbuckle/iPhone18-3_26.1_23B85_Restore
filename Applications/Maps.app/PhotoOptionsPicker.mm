@interface PhotoOptionsPicker
+ (BOOL)_supportsCamera;
+ (BOOL)supportsSourceType:(int64_t)type;
+ (int64_t)preferredSourceType;
+ (unint64_t)numberOfSupportedSourceTypes;
- (PhotoOptionsPicker)initWithPresentingViewController:(id)controller sourceView:(id)view delegate:(id)delegate;
- (void)_createAlertController;
- (void)presentPhotoOptionsWithPreparationBlock:(id)block;
@end

@implementation PhotoOptionsPicker

- (void)presentPhotoOptionsWithPreparationBlock:(id)block
{
  blockCopy = block;
  v4 = self->_anchoringView;
  view = [(UIViewController *)self->_presentingViewController view];
  popoverPresentationController = [(UIAlertController *)self->_photoOptionsActionSheet popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  [(UIView *)v4 bounds];
  [view convertRect:v4 fromView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  popoverPresentationController2 = [(UIAlertController *)self->_photoOptionsActionSheet popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v8, v10, v12, v14}];

  popoverPresentationController3 = [(UIAlertController *)self->_photoOptionsActionSheet popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:3];

  if (blockCopy)
  {
    popoverPresentationController4 = [(UIAlertController *)self->_photoOptionsActionSheet popoverPresentationController];
    blockCopy[2](blockCopy, popoverPresentationController4);
  }

  [(UIViewController *)self->_presentingViewController presentViewController:self->_photoOptionsActionSheet animated:1 completion:0];
}

- (void)_createAlertController
{
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  photoOptionsActionSheet = self->_photoOptionsActionSheet;
  self->_photoOptionsActionSheet = v3;

  v5 = +[PhotoOptionsPicker _supportsCamera];
  v6 = +[PhotoOptionsPicker _supportsPhotoLibrary];
  objc_initWeak(&location, self);
  if (v5)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Take New Photo [Report a Problem Photos]" value:@"localized string not found" table:0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100CF8710;
    v24[3] = &unk_101658AF0;
    objc_copyWeak(&v25, &location);
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v24];

    [v9 setAccessibilityIdentifier:@"TakeNewPhotoMenuAction"];
    [(UIAlertController *)self->_photoOptionsActionSheet addAction:v9];

    objc_destroyWeak(&v25);
  }

  if (v6)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Choose Existing [Report a Problem Photos]" value:@"localized string not found" table:0];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100CF877C;
    v22[3] = &unk_1016540D8;
    objc_copyWeak(&v23, &location);
    v22[4] = self;
    v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v22];

    [v12 setAccessibilityIdentifier:@"ChooseExistingPhotoMenuAction"];
    [(UIAlertController *)self->_photoOptionsActionSheet addAction:v12];

    objc_destroyWeak(&v23);
  }

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Cancel [Report a Problem Photos]" value:@"localized string not found" table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100CF87EC;
  v19 = &unk_1016540D8;
  objc_copyWeak(&v21, &location);
  selfCopy = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:&v16];

  [v15 setAccessibilityIdentifier:{@"CancelAction", v16, v17, v18, v19}];
  [(UIAlertController *)self->_photoOptionsActionSheet addAction:v15];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (PhotoOptionsPicker)initWithPresentingViewController:(id)controller sourceView:(id)view delegate:(id)delegate
{
  controllerCopy = controller;
  viewCopy = view;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = PhotoOptionsPicker;
  v12 = [(PhotoOptionsPicker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_presentingViewController, controller);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_anchoringView, view);
    [(PhotoOptionsPicker *)v13 _createAlertController];
  }

  return v13;
}

+ (BOOL)supportsSourceType:(int64_t)type
{
  if (type == 2)
  {
    return [self _supportsPhotoLibrary];
  }

  if (type == 1)
  {
    return [self _supportsCamera];
  }

  return 0;
}

+ (BOOL)_supportsCamera
{
  if (![UIImagePickerController isSourceTypeAvailable:1])
  {
    return 0;
  }

  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] != 5;

  return v3;
}

+ (int64_t)preferredSourceType
{
  v2 = +[PhotoOptionsPicker _supportsCamera];
  v3 = +[PhotoOptionsPicker _supportsPhotoLibrary];
  v4 = 2;
  if (!v3)
  {
    v4 = 0;
  }

  if (v2)
  {
    return v3 ^ 1;
  }

  else
  {
    return v4;
  }
}

+ (unint64_t)numberOfSupportedSourceTypes
{
  v2 = +[PhotoOptionsPicker _supportsCamera];
  v3 = +[PhotoOptionsPicker _supportsPhotoLibrary];
  v4 = 1;
  if (v2)
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

@end