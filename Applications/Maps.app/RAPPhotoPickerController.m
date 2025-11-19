@interface RAPPhotoPickerController
- (RAPPhotoPickerController)initWithInitialPhoto:(id)a3;
- (void)_cancel;
- (void)_clearImagePicker;
- (void)_endPicking;
- (void)_instrument;
- (void)_invokeChangeHandlers;
- (void)_presentPhotoOptions;
- (void)_presentViewController:(id)a3;
- (void)_proceedWithSourceType:(int64_t)a3;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)clearSelectedPhoto;
- (void)dealloc;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)photoOptionsPickerDidCancel:(id)a3;
- (void)photoOptionsPickerDidSelectAddFromLibrary:(id)a3;
- (void)photoOptionsPickerDidSelectTakePhoto:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)startPicking;
- (void)startPickingWithSourceType:(int64_t)a3;
@end

@implementation RAPPhotoPickerController

- (void)photoOptionsPickerDidCancel:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D5C94C;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [a3 dismissPhotoOptionsWithCompletion:v3];
}

- (void)photoOptionsPickerDidSelectAddFromLibrary:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D5C9C8;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [a3 dismissPhotoOptionsWithCompletion:v3];
}

- (void)photoOptionsPickerDidSelectTakePhoto:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D5CA48;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [a3 dismissPhotoOptionsWithCompletion:v3];
}

- (void)_cancel
{
  self->_picking = 0;
  [(RAPPhotoPickerController *)self _invokeChangeHandlers];
  imagePicker = self->_imagePicker;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D5CADC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(UIImagePickerController *)imagePicker dismissViewControllerAnimated:1 completion:v4];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  self->_picking = 0;
  [(RAPPhotoPickerController *)self _invokeChangeHandlers];

  [(RAPPhotoPickerController *)self _clearImagePicker];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100D5CD80;
  v25[3] = &unk_101652B10;
  v8 = v25[4] = self;
  v26 = v8;
  v9 = objc_retainBlock(v25);
  v10 = [v7 objectForKeyedSubscript:UIImagePickerControllerPHAsset];

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:UIImagePickerControllerPHAsset];
    v12 = [v11 location];
    v13 = [v11 creationDate];
    (v9[2])(v9, v12, v13);
  }

  else
  {
    if ([v6 sourceType] != 1 || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isLocationServicesPossiblyAvailable"), v14, !v15))
    {
      (v9[2])(v9, 0, 0);
      goto LABEL_8;
    }

    v16 = +[NSDate date];
    v17 = +[MKLocationManager sharedLocationManager];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100D5CE6C;
    v22 = &unk_101652B38;
    v23 = v16;
    v24 = v9;
    v11 = v16;
    v18 = [v17 singleLocationUpdateWithHandler:&v19];

    [v18 start];
  }

LABEL_8:
}

- (void)_instrument
{
  v2 = [(RAPPhotoPickerController *)self presentingViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;

  if ([v5 analyticTarget])
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:10115 onTarget:objc_msgSend(v5 eventValue:{"analyticTarget"), 0}];
  }
}

- (void)_presentViewController:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D5CFC4;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_endPicking
{
  self->_picking = 0;
  photoOptionsPicker = self->_photoOptionsPicker;
  self->_photoOptionsPicker = 0;

  [(RAPPhotoPickerController *)self _invokeChangeHandlers];
}

- (void)_proceedWithSourceType:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    v7 = v5 == AVAuthorizationStatusAuthorized || v5 == AVAuthorizationStatusNotDetermined;
    if (v5)
    {
      v8 = v5 == AVAuthorizationStatusAuthorized;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = @"To take a photo, go to Settings > Privacy & Security > Camera and enable access for Maps.";
      v10 = @"No Access to Camera";
LABEL_26:
      v16 = +[NSBundle mainBundle];
      v44 = [v16 localizedStringForKey:v10 value:@"localized string not found" table:0];

      v17 = +[NSBundle mainBundle];
      v15 = [v17 localizedStringForKey:v9 value:@"localized string not found" table:0];

      goto LABEL_27;
    }
  }

  else
  {
    v11 = +[PHPhotoLibrary authorizationStatus];
    v7 = v11 == PHAuthorizationStatusAuthorized;
    if (v11 == PHAuthorizationStatusNotDetermined)
    {
      v7 = 1;
    }

    if (v11 != PHAuthorizationStatusAuthorized && v11 != PHAuthorizationStatusNotDetermined)
    {
      v9 = @"To attach a photo to the report, go to Settings > Privacy & Security > Photos and enable access for Maps.";
      v10 = @"No Access to Photos";
      goto LABEL_26;
    }
  }

  if (!v7)
  {
    v44 = 0;
    v15 = 0;
LABEL_27:
    v18 = [(RAPPhotoPickerController *)self presentingViewController];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];
    [v18 _maps_presentSimpleAlertWithTitle:v44 message:v15 dismissalActionTitle:v20];

    [(RAPPhotoPickerController *)self _endPicking];

    return;
  }

  p_imagePicker = &self->_imagePicker;
  v14 = [(UIImagePickerController *)self->_imagePicker presentingViewController];

  if (!v14)
  {
    v21 = [(RAPPhotoPickerController *)self presentingViewController];
    if (!v21)
    {
      [(RAPPhotoPickerController *)self _endPicking];
LABEL_45:

      return;
    }

    v22 = objc_alloc_init(UIImagePickerController);
    [v22 setDelegate:self];
    if (!a3)
    {
      v23 = [UTTypeImage identifier];
      v45 = v23;
      v24 = [NSArray arrayWithObjects:&v45 count:1];
      [v22 setMediaTypes:v24];
    }

    [v22 setSourceType:a3];
    objc_storeStrong(&self->_imagePicker, v22);
    v25 = *p_imagePicker;
    if (a3 == 1)
    {
      v26 = 0;
    }

    else
    {
      v27 = sub_10000FA08(v25);
      v25 = *p_imagePicker;
      if (v27 == 5)
      {
        [(UIImagePickerController *)v25 setModalPresentationStyle:7];
        presentingViewController = self->_presentingViewController;
        v29 = self->_anchoringView;
        v30 = [(UIViewController *)presentingViewController view];
        v31 = [(UIImagePickerController *)self->_imagePicker popoverPresentationController];
        [v31 setSourceView:v30];

        [(UIView *)v29 bounds];
        [v30 convertRect:v29 fromView:?];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = [(UIImagePickerController *)self->_imagePicker popoverPresentationController];

        [v40 setSourceRect:{v33, v35, v37, v39}];
LABEL_40:
        v41 = [(UIImagePickerController *)self->_imagePicker presentationController];
        [v41 setDelegate:self];

        [v22 setOverrideUserInterfaceStyle:self->_overriddenInterfaceStyle];
        [(RAPPhotoPickerController *)self _presentViewController:v22];
        if (a3 != 1)
        {
          if (qword_10195E488 != -1)
          {
            dispatch_once(&qword_10195E488, &stru_1016373C0);
          }

          v42 = qword_10195E470;
          v43 = +[NSDate now];
          sub_100ACAD38(v42, 0, @"%@ <%@>[Maps][%@] : Reading photos or videos");
        }

        goto LABEL_45;
      }

      v26 = 2;
    }

    [(UIImagePickerController *)v25 setModalPresentationStyle:v26];
    goto LABEL_40;
  }

  [(RAPPhotoPickerController *)self _endPicking];
}

- (void)_presentPhotoOptions
{
  v3 = [[PhotoOptionsPicker alloc] initWithPresentingViewController:self->_presentingViewController sourceView:self->_anchoringView delegate:self];
  photoOptionsPicker = self->_photoOptionsPicker;
  self->_photoOptionsPicker = v3;

  v5 = self->_photoOptionsPicker;

  [(PhotoOptionsPicker *)v5 presentPhotoOptionsWithPreparationBlock:0];
}

- (void)startPickingWithSourceType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 2)
    {
      [(RAPPhotoPickerController *)self _proceedWithSourceType:0];
    }

    else if (a3 == 1)
    {
      [(RAPPhotoPickerController *)self _proceedWithSourceType:1];
    }
  }

  else
  {
    [(RAPPhotoPickerController *)self startPicking];
  }
}

- (void)startPicking
{
  if (!self->_picking)
  {
    self->_picking = 1;
    [(RAPPhotoPickerController *)self _presentPhotoOptions];

    [(RAPPhotoPickerController *)self _instrument];
  }
}

- (void)_clearImagePicker
{
  [(UIImagePickerController *)self->_imagePicker setDelegate:0];
  v3 = [(UIImagePickerController *)self->_imagePicker popoverPresentationController];
  [v3 setDelegate:0];

  v4 = [(UIImagePickerController *)self->_imagePicker presentationController];
  [v4 setDelegate:0];

  imagePicker = self->_imagePicker;
  self->_imagePicker = 0;
}

- (void)clearSelectedPhoto
{
  photo = self->_photo;
  self->_photo = 0;
}

- (void)dealloc
{
  [(RAPPhotoPickerController *)self _clearImagePicker];
  v3.receiver = self;
  v3.super_class = RAPPhotoPickerController;
  [(RAPPhotoPickerController *)&v3 dealloc];
}

- (RAPPhotoPickerController)initWithInitialPhoto:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPPhotoPickerController;
  v6 = [(RAPPhotoPickerController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photo, a3);
    v7->_overriddenInterfaceStyle = 0;
  }

  return v7;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_observers;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8, v10];
        (v9)[2](v9, self, v8);
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v6 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v11];
}

@end