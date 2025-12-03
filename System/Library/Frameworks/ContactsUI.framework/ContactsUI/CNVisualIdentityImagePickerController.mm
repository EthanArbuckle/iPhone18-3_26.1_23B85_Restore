@interface CNVisualIdentityImagePickerController
+ (id)cameraImagePicker;
+ (id)imagePickerForEditingImageData:(id)data withCropRect:(CGRect)rect;
+ (id)imagePickerForEditingImageData:(id)data withCropRect:(CGRect)rect backgroundColor:(id)color;
+ (id)log;
+ (id)photoLibraryImagePickerWithIsMeContact:(BOOL)contact;
+ (id)photoPickerForEditingImageData:(id)data withCropRect:(CGRect)rect backgroundColor:(id)color isMeContact:(BOOL)contact;
+ (id)photoPickerForEditingImageData:(id)data withCropRect:(CGRect)rect isMeContact:(BOOL)contact;
- (CNVisualIdentityImagePickerController)initWithContactStyle:(id)style;
- (CNVisualIdentityImagePickerControllerDelegate)delegate;
- (CNVisualIdentityPickerPresenterDelegate)presenterDelegate;
- (id)providerItemFromImagePickerInfo:(id)info;
- (void)imageDataFromPickerResult:(id)result completionHandler:(id)handler;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentCameraImagePickerFromViewController:(id)controller;
- (void)presentImagePicker:(id)picker withStyle:(int64_t)style fromViewController:(id)controller forVisualIdentityPicker:(id)identityPicker;
- (void)presentMoveAndScaleForImageData:(id)data withCropRect:(CGRect)rect fromViewController:(id)controller backgroundColor:(id)color;
- (void)presentPhotoLibraryPickerFromViewController:(id)controller sourceView:(id)view;
@end

@implementation CNVisualIdentityImagePickerController

- (CNVisualIdentityImagePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNVisualIdentityPickerPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickerCopy = picker;
  pickingCopy = picking;
  if ([pickingCopy count])
  {
    PHObjectClass = getPHObjectClass();
    firstObject = [pickingCopy firstObject];
    assetIdentifier = [firstObject assetIdentifier];
    v11 = [(objc_class *)PHObjectClass uuidFromLocalIdentifier:assetIdentifier];
    [(CNVisualIdentityImagePickerController *)self setPhotoLibraryAssetID:v11];

    firstObject2 = [pickingCopy firstObject];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__CNVisualIdentityImagePickerController_picker_didFinishPicking___block_invoke;
    v14[3] = &unk_1E74E50D0;
    v14[4] = self;
    v15 = pickerCopy;
    [(CNVisualIdentityImagePickerController *)self imageDataFromPickerResult:firstObject2 completionHandler:v14];
  }

  else
  {
    delegate = [(CNVisualIdentityImagePickerController *)self delegate];
    [delegate imagePickerControllerDidCancel:pickerCopy];
  }
}

void __65__CNVisualIdentityImagePickerController_picker_didFinishPicking___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() imagePickerForEditingImageData:v3 withCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v4 setDelegate:*(a1 + 32)];
  [*(a1 + 32) presentImagePicker:v4 withStyle:3 fromViewController:*(a1 + 40)];
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  delegate = [(CNVisualIdentityImagePickerController *)self delegate];
  [delegate imagePickerControllerDidCancel:cancelCopy];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  if ((*(*MEMORY[0x1E6996548] + 16))())
  {
    delegate = [(CNVisualIdentityImagePickerController *)self delegate];
    [delegate imagePickerController:controllerCopy didFinishWithProviderItem:0];
  }

  else
  {
    delegate = [(CNVisualIdentityImagePickerController *)self providerItemFromImagePickerInfo:infoCopy];
    sourceType = [controllerCopy sourceType];
    imageData = [delegate imageData];

    if (imageData && sourceType == 1)
    {
      v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDE10]];
      if (!v11)
      {
        v12 = MEMORY[0x1E69DCAB8];
        imageData2 = [delegate imageData];
        v11 = [v12 imageWithData:imageData2];
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __93__CNVisualIdentityImagePickerController_imagePickerController_didFinishPickingMediaWithInfo___block_invoke;
      v15[3] = &unk_1E74E50A8;
      v16 = delegate;
      selfCopy = self;
      v18 = controllerCopy;
      [CNPhotoAssetCreationHelper createAssetFromImage:v11 completionHandler:v15];
    }

    else
    {
      delegate2 = [(CNVisualIdentityImagePickerController *)self delegate];
      [delegate2 imagePickerController:controllerCopy didFinishWithProviderItem:delegate];
    }
  }
}

void __93__CNVisualIdentityImagePickerController_imagePickerController_didFinishPickingMediaWithInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAssetIdentifier:a2];
  v3 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__CNVisualIdentityImagePickerController_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_2;
  v5[3] = &unk_1E74E6EE8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 32);
  [v3 performBlock:v5];
}

void __93__CNVisualIdentityImagePickerController_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 imagePickerController:*(a1 + 40) didFinishWithProviderItem:*(a1 + 48)];
}

- (void)imageDataFromPickerResult:(id)result completionHandler:(id)handler
{
  handlerCopy = handler;
  itemProvider = [result itemProvider];
  v7 = *MEMORY[0x1E6982E30];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CNVisualIdentityImagePickerController_imageDataFromPickerResult_completionHandler___block_invoke;
  v10[3] = &unk_1E74E5080;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [itemProvider loadDataRepresentationForContentType:v7 completionHandler:v10];
}

void __85__CNVisualIdentityImagePickerController_imageDataFromPickerResult_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__CNVisualIdentityImagePickerController_imageDataFromPickerResult_completionHandler___block_invoke_2;
  v6[3] = &unk_1E74E6DD0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)providerItemFromImagePickerInfo:(id)info
{
  v82 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DE960]];
  v6 = MEMORY[0x1E69DDE10];
  if (!v5)
  {
    v7 = *MEMORY[0x1E69DDE10];
    v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDE10]];

    if (v8)
    {
      v9 = [infoCopy objectForKeyedSubscript:v7];
      v5 = UIImageJPEGRepresentation(v9, 0.8);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDDE0]];
  v69 = v10;
  if (v10)
  {
    [v10 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
  }

  v19 = *MEMORY[0x1E69DDE18];
  v20 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDE18]];

  if (v20)
  {
    v21 = [infoCopy objectForKeyedSubscript:v19];
    pixelWidth = [v21 pixelWidth];
    pixelHeight = [v21 pixelHeight];
    v24 = [infoCopy objectForKeyedSubscript:*v6];
    v25 = v24;
    v26 = *MEMORY[0x1E695F060];
    v27 = *(MEMORY[0x1E695F060] + 8);
    if (*MEMORY[0x1E695F060] != pixelWidth || v27 != pixelHeight)
    {
      [v24 size];
      if (v30 != v26 || v29 != v27)
      {
        [v25 size];
        if (v33 != pixelWidth || v32 != pixelHeight)
        {
          v35 = [objc_opt_class() log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            [v25 size];
            v37 = v36;
            [v25 size];
            *buf = 134219264;
            v71 = v12;
            v72 = 2048;
            v73 = v14;
            v74 = 2048;
            v75 = v16;
            v76 = 2048;
            v77 = v18;
            v78 = 2048;
            v79 = v37;
            v80 = 2048;
            v81 = v38;
            _os_log_impl(&dword_199A75000, v35, OS_LOG_TYPE_DEFAULT, "Adjusting cropRect, mismatch detected with returned crop rect {%.2f, %.2f, %.2f, %.2f} and original image size {%.2f, %.2f}", buf, 0x3Eu);
          }

          v39 = MEMORY[0x1E6996738];
          [v25 size];
          [v39 scaledCropRect:v12 fromSize:v14 toSize:{v16, v18, pixelWidth, pixelHeight, v40, v41}];
          v12 = v42;
          v14 = v43;
          v16 = v44;
          v18 = v45;
        }
      }
    }
  }

  v46 = [MEMORY[0x1E69DCAB8] imageWithData:v5];
  v47 = MEMORY[0x1E6996738];
  [v46 size];
  [v47 squareCropRect:v12 toFitSize:{v14, v16, v18, v48, v49}];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DE938]];
  v59 = UIImageJPEGRepresentation(v58, 0.8);
  v60 = [[CNPhotoPickerProviderItem alloc] initWithImageData:v5 thumbnailImageData:0 fullscreenImageData:v59 cropRect:v51, v53, v55, v57];
  v61 = [infoCopy objectForKeyedSubscript:v19];
  photoLibraryAssetID = [(CNVisualIdentityImagePickerController *)self photoLibraryAssetID];
  if (photoLibraryAssetID)
  {
    [(CNPhotoPickerProviderItem *)v60 setAssetIdentifier:photoLibraryAssetID];
  }

  else
  {
    localIdentifier = [v61 localIdentifier];
    [(CNPhotoPickerProviderItem *)v60 setAssetIdentifier:localIdentifier];
  }

  v64 = [objc_opt_class() log];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    [v46 size];
    v66 = v65;
    [v46 size];
    *buf = 134219264;
    v71 = v66;
    v72 = 2048;
    v73 = v67;
    v74 = 2048;
    v75 = v51;
    v76 = 2048;
    v77 = v53;
    v78 = 2048;
    v79 = v55;
    v80 = 2048;
    v81 = v57;
    _os_log_impl(&dword_199A75000, v64, OS_LOG_TYPE_DEFAULT, "Creating provider item with original image of size {%.2f, %.2f} and crop rect {%.2f, %.2f, %.2f, %.2f}", buf, 0x3Eu);
  }

  return v60;
}

- (void)presentImagePicker:(id)picker withStyle:(int64_t)style fromViewController:(id)controller forVisualIdentityPicker:(id)identityPicker
{
  pickerCopy = picker;
  controllerCopy = controller;
  identityPickerCopy = identityPicker;
  [pickerCopy setModalPresentationStyle:style];
  contactStyle = [(CNVisualIdentityImagePickerController *)self contactStyle];
  [pickerCopy setModalTransitionStyle:{objc_msgSend(contactStyle, "modalTransitionStyle")}];

  presenterDelegate = [(CNVisualIdentityImagePickerController *)self presenterDelegate];
  v14 = objc_opt_respondsToSelector();

  if (identityPickerCopy && (v14 & 1) != 0)
  {
    presenterDelegate2 = [(CNVisualIdentityImagePickerController *)self presenterDelegate];
    [presenterDelegate2 visualIdentityPicker:identityPickerCopy presentViewController:pickerCopy];
  }

  else
  {
    [controllerCopy presentViewController:pickerCopy animated:1 completion:0];
  }
}

- (void)presentMoveAndScaleForImageData:(id)data withCropRect:(CGRect)rect fromViewController:(id)controller backgroundColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  controllerCopy = controller;
  dataCopy = data;
  v16 = [objc_opt_class() imagePickerForEditingImageData:dataCopy withCropRect:colorCopy backgroundColor:{x, y, width, height}];

  [v16 setDelegate:self];
  [(CNVisualIdentityImagePickerController *)self presentImagePicker:v16 withStyle:3 fromViewController:controllerCopy];
}

- (void)presentPhotoLibraryPickerFromViewController:(id)controller sourceView:(id)view
{
  controllerCopy = controller;
  v6 = [objc_opt_class() photoLibraryImagePickerWithIsMeContact:{-[CNVisualIdentityImagePickerController isMeContact](self, "isMeContact")}];
  [v6 setDelegate:self];
  [(CNVisualIdentityImagePickerController *)self presentImagePicker:v6 withStyle:3 fromViewController:controllerCopy];
}

- (void)presentCameraImagePickerFromViewController:(id)controller
{
  controllerCopy = controller;
  cameraImagePicker = [objc_opt_class() cameraImagePicker];
  [cameraImagePicker setDelegate:self];
  [(CNVisualIdentityImagePickerController *)self presentImagePicker:cameraImagePicker withStyle:0 fromViewController:controllerCopy];
}

- (CNVisualIdentityImagePickerController)initWithContactStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = CNVisualIdentityImagePickerController;
  v6 = [(CNVisualIdentityImagePickerController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStyle, style);
    v8 = v7;
  }

  return v7;
}

+ (id)photoPickerForEditingImageData:(id)data withCropRect:(CGRect)rect backgroundColor:(id)color isMeContact:(BOOL)contact
{
  contactCopy = contact;
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v7 = [CNPhotoLibraryProvider photoLibraryWithError:&v16, color, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v8 = v16;
  if (!v7)
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Unable to pick photos from photo library %@", buf, 0xCu);
    }
  }

  v10 = [objc_alloc(getPHPickerConfigurationClass()) initWithPhotoLibrary:v7];
  imagesFilter = [(objc_class *)getPHPickerFilterClass() imagesFilter];
  [v10 setFilter:imagesFilter];

  [v10 _setDisabledPrivateCapabilities:8];
  PHPickerSuggestionGroupClass = get_PHPickerSuggestionGroupClass();
  if (contactCopy)
  {
    [(objc_class *)PHPickerSuggestionGroupClass deviceOwnerSuggestionGroup];
  }

  else
  {
    [(objc_class *)PHPickerSuggestionGroupClass wallpaperLikeSuggestionGroup];
  }
  v13 = ;
  [v10 set_suggestionGroup:v13];

  v14 = [objc_alloc(getPHPickerViewControllerClass_44843()) initWithConfiguration:v10];

  return v14;
}

+ (id)photoPickerForEditingImageData:(id)data withCropRect:(CGRect)rect isMeContact:(BOOL)contact
{
  contactCopy = contact;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v11 = [objc_opt_class() photoPickerForEditingImageData:dataCopy withCropRect:0 backgroundColor:contactCopy isMeContact:{x, y, width, height}];

  return v11;
}

+ (id)photoLibraryImagePickerWithIsMeContact:(BOOL)contact
{
  contactCopy = contact;
  v4 = objc_opt_class();
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);

  return [v4 photoPickerForEditingImageData:0 withCropRect:contactCopy isMeContact:{v5, v6, v7, v8}];
}

+ (id)imagePickerForEditingImageData:(id)data withCropRect:(CGRect)rect backgroundColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v33[6] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  colorCopy = color;
  if (dataCopy)
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (CGRectIsEmpty(v35))
    {
      v12 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
      [v12 size];
      v14 = v13;
      [v12 size];
      [MEMORY[0x1E6996738] centeredSquareCropRectInRect:{0.0, 0.0, v14, v15 + -1.0}];
      x = v16;
      y = v17;
      width = v18;
      height = v19;
    }

    v20 = [objc_alloc(MEMORY[0x1E69DCAD0]) _initWithSourceImageData:dataCopy cropRect:{x, y, width, height}];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
  }

  v21 = v20;
  [v20 _setImagePickerSavingOptions:7];
  v22 = MEMORY[0x1E695DF90];
  _properties = [v21 _properties];
  v24 = [v22 dictionaryWithDictionary:_properties];

  v25 = *MEMORY[0x1E69DE998];
  v32[0] = *MEMORY[0x1E69DDDD8];
  v32[1] = v25;
  v33[0] = MEMORY[0x1E695E118];
  v33[1] = MEMORY[0x1E695E118];
  v26 = *MEMORY[0x1E69DE930];
  v32[2] = *MEMORY[0x1E69DE8B8];
  v32[3] = v26;
  v33[2] = MEMORY[0x1E695E118];
  v33[3] = MEMORY[0x1E695E118];
  v27 = *MEMORY[0x1E69DE8B0];
  v33[4] = MEMORY[0x1E695E118];
  v28 = *MEMORY[0x1E69DE918];
  v29 = colorCopy;
  v32[4] = v27;
  v32[5] = v28;
  if (!colorCopy)
  {
    v29 = +[CNUIColorRepository photoPickerCaptureBackgroundColor];
  }

  v33[5] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
  [v24 addEntriesFromDictionary:v30];

  if (!colorCopy)
  {
  }

  [v21 _setProperties:v24];

  return v21;
}

+ (id)imagePickerForEditingImageData:(id)data withCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v9 = [objc_opt_class() imagePickerForEditingImageData:dataCopy withCropRect:0 backgroundColor:{x, y, width, height}];

  return v9;
}

+ (id)cameraImagePicker
{
  v2 = [objc_opt_class() imagePickerForEditingImageData:0 withCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v2 setSourceType:1];

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_20_44862 != -1)
  {
    dispatch_once(&log_cn_once_token_20_44862, &__block_literal_global_44863);
  }

  v3 = log_cn_once_object_20_44864;

  return v3;
}

uint64_t __44__CNVisualIdentityImagePickerController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNVisualIdentityImagePickerController");
  v1 = log_cn_once_object_20_44864;
  log_cn_once_object_20_44864 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end