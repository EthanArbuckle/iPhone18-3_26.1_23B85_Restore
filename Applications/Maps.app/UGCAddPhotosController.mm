@interface UGCAddPhotosController
- (BOOL)_isValidImageSize:(CGSize)size;
- (UGCAddPhotosController)initWithPresentingViewController:(id)controller sourceType:(int64_t)type multipleSelectionLimit:(unint64_t)limit placeQuestionnaire:(id)questionnaire delegate:(id)delegate;
- (id)_resizeImageIfNeeded:(id)needed imageSize:(CGSize)size;
- (void)_handleAddFromCameraWithImageData:(id)data mediaInfo:(id)info;
- (void)_handleAddFromLibraryWithEditingInfoList:(id)list;
- (void)_presentImagePickerWithSourceType:(int64_t)type;
- (void)_resolveInitialSourceTypeIfNeeded;
- (void)dismissWithCompletion:(id)completion;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerController:(id)controller didFinishPickingMultipleMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)photoOptionsPickerDidCancel:(id)cancel;
- (void)photoOptionsPickerDidSelectAddFromLibrary:(id)library;
- (void)photoOptionsPickerDidSelectTakePhoto:(id)photo;
- (void)present;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation UGCAddPhotosController

- (void)photoOptionsPickerDidSelectTakePhoto:(id)photo
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100BB2E24;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [photo dismissPhotoOptionsWithCompletion:v3];
}

- (void)photoOptionsPickerDidSelectAddFromLibrary:(id)library
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100BB2EE0;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [library dismissPhotoOptionsWithCompletion:v3];
}

- (void)photoOptionsPickerDidCancel:(id)cancel
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100BB2F9C;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [cancel dismissPhotoOptionsWithCompletion:v3];
}

- (void)dismissWithCompletion:(id)completion
{
  completionCopy = completion;
  photoOptionsPicker = self->_photoOptionsPicker;
  if (photoOptionsPicker)
  {
    [(PhotoOptionsPicker *)photoOptionsPicker dismissPhotoOptionsWithCompletion:completionCopy];
  }

  else
  {
    imagePicker = self->_imagePicker;
    if (imagePicker)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100BB3080;
      v7[3] = &unk_101661090;
      v7[4] = self;
      v8 = completionCopy;
      [(UIImagePickerController *)imagePicker dismissViewControllerAnimated:1 completion:v7];
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (id)_resizeImageIfNeeded:(id)needed imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  neededCopy = needed;
  if (width * height > [(GEOPlaceQuestionnaire *)self->_placeQuestionnaire maxPixels]&& [(GEOPlaceQuestionnaire *)self->_placeQuestionnaire maxPixels])
  {
    if (width > height)
    {
      v8 = width / height;
    }

    else
    {
      v8 = height / width;
    }

    maxPixels = [(GEOPlaceQuestionnaire *)self->_placeQuestionnaire maxPixels];
    v21[0] = kCGImageSourceThumbnailMaxPixelSize;
    v10 = [NSNumber numberWithInt:sqrt(v8 * maxPixels)];
    v22[0] = v10;
    v22[1] = kCFBooleanTrue;
    v21[1] = kCGImageSourceCreateThumbnailFromImageAlways;
    v21[2] = kCGImageSourceCreateThumbnailWithTransform;
    v22[2] = kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

    v12 = CGImageSourceCreateWithData(neededCopy, 0);
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v12, 0, v11);
    if (v12)
    {
      CFRelease(v12);
    }

    v14 = objc_alloc_init(NSMutableData);
    v15 = CGImageDestinationCreateWithData(v14, @"public.jpeg", 1uLL, 0);
    GEOConfigGetDouble();
    v19 = kCGImageDestinationLossyCompressionQuality;
    v16 = [NSNumber numberWithDouble:?];
    v20 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    CGImageDestinationAddImage(v15, ThumbnailAtIndex, v17);
    CGImageDestinationFinalize(v15);
    CFRelease(v15);
    CGImageRelease(ThumbnailAtIndex);
  }

  else
  {
    v14 = neededCopy;
  }

  return v14;
}

- (BOOL)_isValidImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width * size.height < [(GEOPlaceQuestionnaire *)self->_placeQuestionnaire minPixels])
  {
    return 0;
  }

  if (width > height)
  {
    v7 = width / height;
  }

  else
  {
    v7 = height / width;
  }

  [(GEOPlaceQuestionnaire *)self->_placeQuestionnaire maxAspectRatio];
  return v7 <= v8;
}

- (void)_handleAddFromCameraWithImageData:(id)data mediaInfo:(id)info
{
  dataCopy = data;
  infoCopy = info;
  v8 = +[MKLocationManager sharedLocationManager];
  isLocationServicesPossiblyAvailable = [v8 isLocationServicesPossiblyAvailable];

  if (isLocationServicesPossiblyAvailable)
  {
    objc_initWeak(&location, self);
    v10 = +[MKLocationManager sharedLocationManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100BB34EC;
    v12[3] = &unk_101651820;
    objc_copyWeak(&v14, &location);
    v13 = dataCopy;
    v11 = [v10 singleLocationUpdateWithHandler:v12];

    [v11 start];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_handleAddFromLibraryWithEditingInfoList:(id)list
{
  listCopy = list;
  v19 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = listCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:UIImagePickerControllerEditedImage];
        if (!v10)
        {
          v10 = [v9 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
        }

        [(UIImage *)v10 size];
        if ([(UGCAddPhotosController *)self _isValidImageSize:?])
        {
          GEOConfigGetDouble();
          v12 = UIImageJPEGRepresentation(v10, v11);
          [(UIImage *)v10 size];
          v13 = [(UGCAddPhotosController *)self _resizeImageIfNeeded:v12 imageSize:?];

          v14 = [v9 objectForKeyedSubscript:UIImagePickerControllerPHAsset];
          v15 = [[UGCPhotoWithMetadata alloc] initWithImageData:v13 PHAsset:v14 sourceType:2];
          if (v15)
          {
            [v19 addObject:v15];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [(UGCAddPhotosController *)self _captureUserAction:2132];
  v16 = +[NSNotificationCenter defaultCenter];
  [v16 removeObserver:self name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [v19 copy];
  [WeakRetained takePhotoController:self didSelectPhotosWithMetadata:v18];
}

- (void)imagePickerController:(id)controller didFinishPickingMultipleMediaWithInfo:(id)info
{
  infoCopy = info;
  if (![controller sourceType])
  {
    [(UGCAddPhotosController *)self _handleAddFromLibraryWithEditingInfoList:infoCopy];
  }
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  if ([controllerCopy sourceType] == 1)
  {
    [(UGCAddPhotosController *)self _captureUserAction:2129];
    v8 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerEditedImage];
    if (!v8)
    {
      v8 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
    }

    [(UIImage *)v8 size];
    if ([(UGCAddPhotosController *)self _isValidImageSize:?])
    {
      GEOConfigGetDouble();
      v10 = UIImageJPEGRepresentation(v8, v9);
      [(UIImage *)v8 size];
      v11 = [(UGCAddPhotosController *)self _resizeImageIfNeeded:v10 imageSize:?];

      if (v11)
      {
        UIImageDataWriteToSavedPhotosAlbum();
        [(UGCAddPhotosController *)self _handleAddFromCameraWithImageData:v11 mediaInfo:infoCopy];
      }
    }

    goto LABEL_12;
  }

  sourceType = [controllerCopy sourceType];
  if (infoCopy && !sourceType && ([(UIImagePickerController *)self->_imagePicker _allowsMultipleSelection]& 1) == 0)
  {
    v13 = infoCopy;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    [(UGCAddPhotosController *)self _handleAddFromLibraryWithEditingInfoList:v8];
LABEL_12:
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained takePhotoControllerDidCancel:self];
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:_UIImagePickerControllerUserDidRejectItemNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained takePhotoControllerDidCancel:self];
}

- (void)_presentImagePickerWithSourceType:(int64_t)type
{
  v5 = objc_alloc_init(UIImagePickerController);
  imagePicker = self->_imagePicker;
  self->_imagePicker = v5;

  [(UIImagePickerController *)self->_imagePicker setDelegate:self];
  if (self->_multipleSelectionLimit >= 2)
  {
    [(UIImagePickerController *)self->_imagePicker _setAllowsMultipleSelection:1];
    [(UIImagePickerController *)self->_imagePicker _setMultipleSelectionLimit:self->_multipleSelectionLimit];
  }

  if (type == 2)
  {
    [(UIImagePickerController *)self->_imagePicker setSourceType:0];
    v9 = sub_10000FA08(self->_imagePicker);
    v7 = self->_imagePicker;
    if (v9 == 5)
    {
      [(UIImagePickerController *)v7 setModalPresentationStyle:7];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [WeakRetained addPhotosControllerRequestsAnchoringView:self];

      view = [(UIViewController *)self->_presentingViewController view];
      popoverPresentationController = [(UIImagePickerController *)self->_imagePicker popoverPresentationController];
      [popoverPresentationController setSourceView:view];

      [v11 bounds];
      [view convertRect:v11 fromView:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      popoverPresentationController2 = [(UIImagePickerController *)self->_imagePicker popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v15, v17, v19, v21}];

      goto LABEL_10;
    }

    v8 = 2;
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_10;
    }

    [(UIImagePickerController *)self->_imagePicker setSourceType:1];
    v7 = self->_imagePicker;
    v8 = 0;
  }

  [(UIImagePickerController *)v7 setModalPresentationStyle:v8];
LABEL_10:
  popoverPresentationController3 = [(UIImagePickerController *)self->_imagePicker popoverPresentationController];
  [popoverPresentationController3 setDelegate:self];

  presentationController = [(UIImagePickerController *)self->_imagePicker presentationController];
  [presentationController setDelegate:self];

  [(UIImagePickerController *)self->_imagePicker _setImagePickerSavingOptions:6];
  presentingViewController = self->_presentingViewController;
  v26 = self->_imagePicker;

  [(UIViewController *)presentingViewController presentViewController:v26 animated:1 completion:0];
}

- (void)present
{
  if (+[PhotoOptionsPicker numberOfSupportedSourceTypes])
  {
    if (self->_initialSourceType)
    {

      [(UGCAddPhotosController *)self _presentImagePickerWithSourceType:?];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v4 = [WeakRetained addPhotosControllerRequestsAnchoringView:self];

      v5 = [[PhotoOptionsPicker alloc] initWithPresentingViewController:self->_presentingViewController sourceView:v4 delegate:self];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100BB3EC0;
      v7[3] = &unk_10164C770;
      v7[4] = self;
      [(PhotoOptionsPicker *)v5 presentPhotoOptionsWithPreparationBlock:v7];
    }
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 takePhotoController:self didSelectPhotosWithMetadata:&__NSArray0__struct];
  }
}

- (void)_resolveInitialSourceTypeIfNeeded
{
  v3 = +[PhotoOptionsPicker numberOfSupportedSourceTypes];
  if (self->_initialSourceType)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    self->_initialSourceType = +[PhotoOptionsPicker preferredSourceType];
  }
}

- (UGCAddPhotosController)initWithPresentingViewController:(id)controller sourceType:(int64_t)type multipleSelectionLimit:(unint64_t)limit placeQuestionnaire:(id)questionnaire delegate:(id)delegate
{
  controllerCopy = controller;
  questionnaireCopy = questionnaire;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = UGCAddPhotosController;
  v16 = [(UGCAddPhotosController *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_presentingViewController, controller);
    v17->_initialSourceType = type;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v17->_multipleSelectionLimit = limit;
    objc_storeStrong(&v17->_placeQuestionnaire, questionnaire);
    [(UGCAddPhotosController *)v17 _resolveInitialSourceTypeIfNeeded];
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v17 selector:"_imagePickerDidRetake:" name:_UIImagePickerControllerUserDidRejectItemNotification object:0];
  }

  return v17;
}

@end