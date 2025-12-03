@interface AAUIImagePickerAlertController
+ (id)alertControllerWithSelectionHandler:(id)handler;
- (id)_propertiesForImagePickerController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (void)_callSelectionHandlerWithImage:(id)image cropRect:(id)rect;
- (void)_dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_presentDocumentPickerAnimated:(BOOL)animated;
- (void)_presentImagePickerAnimated:(BOOL)animated;
- (void)_presentImagePickerWithSourceType:(int64_t)type animated:(BOOL)animated;
- (void)_presentImageSourcePickerAnimated:(BOOL)animated;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AAUIImagePickerAlertController

+ (id)alertControllerWithSelectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSelectionHandler:handlerCopy];

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AAUIImagePickerAlertController;
  [(AAUIImagePickerAlertController *)&v4 viewDidLoad];
  view = [(AAUIImagePickerAlertController *)self view];
  [view setBackgroundColor:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AAUIImagePickerAlertController;
  [(AAUIImagePickerAlertController *)&v5 viewDidAppear:appear];
  presentingViewController = [(AAUIImagePickerAlertController *)self presentingViewController];
  [(AAUIImagePickerAlertController *)self _presentImagePickerAnimated:presentingViewController != 0];
}

- (void)_presentImagePickerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1];
  v6 = [MEMORY[0x1E69DCAD0] isSourceTypeAvailable:0];
  if (v5 & 1) != 0 || (v6)
  {

    [(AAUIImagePickerAlertController *)self _presentImageSourcePickerAnimated:animatedCopy];
  }

  else
  {

    [(AAUIImagePickerAlertController *)self _presentDocumentPickerAnimated:animatedCopy];
  }
}

- (void)_presentImageSourcePickerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [MEMORY[0x1E69DC650] alertWithTitle:0 message:0];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [v5 setPreferredStyle:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Presenting image source picker...", buf, 2u);
  }

  if ([MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1])
  {
    v9 = MEMORY[0x1E69DC648];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PROFILE_TAKE_PHOTO" value:&stru_1F447F790 table:@"Localizable"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke;
    v30[3] = &unk_1E820D4B0;
    v30[4] = self;
    v31 = animatedCopy;
    v12 = [v9 actionWithTitle:v11 style:0 handler:v30];
    [v5 addAction:v12];
  }

  if ([MEMORY[0x1E69DCAD0] isSourceTypeAvailable:0])
  {
    v13 = MEMORY[0x1E69DC648];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"PROFILE_CHOOSE_PHOTO" value:&stru_1F447F790 table:@"Localizable"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke_49;
    v28[3] = &unk_1E820D4B0;
    v28[4] = self;
    v29 = animatedCopy;
    v16 = [v13 actionWithTitle:v15 style:0 handler:v28];
    [v5 addAction:v16];
  }

  v17 = MEMORY[0x1E69DC648];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"PROFILE_BROWSE_PHOTO" value:&stru_1F447F790 table:@"Localizable"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke_53;
  v26[3] = &unk_1E820D4B0;
  v26[4] = self;
  v27 = animatedCopy;
  v20 = [v17 actionWithTitle:v19 style:0 handler:v26];
  [v5 addAction:v20];

  v21 = MEMORY[0x1E69DC648];
  v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1F447F790 table:@"Localizable"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke_57;
  v25[3] = &unk_1E820BFA8;
  v25[4] = self;
  v24 = [v21 actionWithTitle:v23 style:1 handler:v25];
  [v5 addAction:v24];

  [(AAUIImagePickerAlertController *)self presentViewController:v5 animated:animatedCopy completion:0];
}

uint64_t __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User opted to select image from camera.", v4, 2u);
  }

  return [*(a1 + 32) _presentImagePickerWithSourceType:1 animated:*(a1 + 40)];
}

uint64_t __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke_49(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User opted to select image from photo library.", v4, 2u);
  }

  return [*(a1 + 32) _presentImagePickerWithSourceType:0 animated:*(a1 + 40)];
}

uint64_t __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke_53(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User opted to select image from document browser.", v4, 2u);
  }

  return [*(a1 + 32) _presentDocumentPickerAnimated:*(a1 + 40)];
}

uint64_t __68__AAUIImagePickerAlertController__presentImageSourcePickerAnimated___block_invoke_57(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User opted to cancel photo selection, bailing!", v4, 2u);
  }

  return [*(a1 + 32) _callSelectionHandlerWithImage:0 cropRect:0];
}

- (void)_presentImagePickerWithSourceType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v16 = *MEMORY[0x1E69E9840];
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Presenting image picker controller with source type: %@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
  presentationController = [v9 presentationController];
  [presentationController setDelegate:self];

  [v9 setSourceType:type];
  v13 = *MEMORY[0x1E69637F8];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v9 setMediaTypes:v11];

  [v9 setDelegate:self];
  [v9 _setImagePickerSavingOptions:3];
  v12 = [(AAUIImagePickerAlertController *)self _propertiesForImagePickerController:v9];
  [v9 _setProperties:v12];

  [(AAUIImagePickerAlertController *)self presentViewController:v9 animated:animatedCopy completion:0];
}

- (void)_presentDocumentPickerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Presenting document picker view controller", v9, 2u);
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E69637F8]];
  v7 = [objc_alloc(MEMORY[0x1E69DC968]) initWithDocumentTypes:v6 inMode:0];
  presentationController = [v7 presentationController];
  [presentationController setDelegate:self];

  [v7 setShouldShowFileExtensions:0];
  [v7 setAllowsMultipleSelection:0];
  [v7 setDelegate:self];
  [(AAUIImagePickerAlertController *)self presentViewController:v7 animated:animatedCopy completion:0];
}

- (void)_callSelectionHandlerWithImage:(id)image cropRect:(id)rect
{
  imageCopy = image;
  rectCopy = rect;
  selectionHandler = [(AAUIImagePickerAlertController *)self selectionHandler];

  if (selectionHandler)
  {
    selectionHandler2 = [(AAUIImagePickerAlertController *)self selectionHandler];
    (selectionHandler2)[2](selectionHandler2, imageCopy, rectCopy);

    [(AAUIImagePickerAlertController *)self setSelectionHandler:0];
  }

  [(AAUIImagePickerAlertController *)self _dismissViewController:self animated:0 completion:0];
}

- (id)_propertiesForImagePickerController:(id)controller
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  _properties = [controller _properties];
  v5 = [v3 dictionaryWithDictionary:_properties];

  v6 = *MEMORY[0x1E69DE998];
  v11[0] = *MEMORY[0x1E69DDDD8];
  v11[1] = v6;
  v12[0] = MEMORY[0x1E695E118];
  v12[1] = MEMORY[0x1E695E118];
  v7 = *MEMORY[0x1E69DE930];
  v11[2] = *MEMORY[0x1E69DE8B8];
  v11[3] = v7;
  v12[2] = MEMORY[0x1E695E118];
  v12[3] = MEMORY[0x1E695E118];
  v11[4] = *MEMORY[0x1E69DE8B0];
  v12[4] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  [v5 addEntriesFromDictionary:v8];

  v9 = [v5 copy];

  return v9;
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = *MEMORY[0x1E69DDE10];
  infoCopy = info;
  v9 = [infoCopy objectForKeyedSubscript:v7];
  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDDE0]];

  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "User selected new profile picture: %@, crop rect: %@", buf, 0x16u);
  }

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = [MEMORY[0x1E69DCAD0] aaui_fixedCropRect:v10 forOriginalImage:v9];

    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Updated profile picture crop rect: %@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__AAUIImagePickerAlertController_imagePickerController_didFinishPickingMediaWithInfo___block_invoke;
  v18[3] = &unk_1E820BF58;
  v18[4] = self;
  v19 = v9;
  v20 = v13;
  v16 = v13;
  v17 = v9;
  [(AAUIImagePickerAlertController *)self _dismissViewController:controllerCopy animated:1 completion:v18];
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "User canceled image picker controller.", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__AAUIImagePickerAlertController_imagePickerControllerDidCancel___block_invoke;
  v6[3] = &unk_1E820B8F0;
  v6[4] = self;
  [(AAUIImagePickerAlertController *)self _dismissViewController:cancelCopy animated:1 completion:v6];
}

- (void)_dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentingViewController = [controller presentingViewController];
  v9 = presentingViewController;
  if (presentingViewController)
  {
    selfCopy = presentingViewController;
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy;

  [(AAUIImagePickerAlertController *)v11 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  v5 = MEMORY[0x1E695DEF0];
  firstObject = [ls firstObject];
  v13 = [v5 dataWithContentsOfURL:firstObject options:0 error:0];

  if (v13)
  {
    v7 = objc_alloc(MEMORY[0x1E69DCAD0]);
    v8 = [v7 _initWithSourceImageData:v13 cropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    presentationController = [v8 presentationController];
    [presentationController setDelegate:self];

    [v8 setModalInPresentation:1];
    v10 = [(AAUIImagePickerAlertController *)self _propertiesForImagePickerController:v8];
    [v8 _setProperties:v10];

    [v8 setDelegate:self];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v8 setModalPresentationStyle:0];
    }

    [(AAUIImagePickerAlertController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [(AAUIImagePickerAlertController *)self _callSelectionHandlerWithImage:0 cropRect:0];
  }
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled document picker view controller.", v5, 2u);
  }

  [(AAUIImagePickerAlertController *)self _callSelectionHandlerWithImage:0 cropRect:0];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];
  modalPresentationStyle = [presentedViewController modalPresentationStyle];

  presentedViewController2 = [controllerCopy presentedViewController];

  if (modalPresentationStyle == -2)
  {
    _preferredModalPresentationStyle = [presentedViewController2 _preferredModalPresentationStyle];
  }

  else
  {
    _preferredModalPresentationStyle = [presentedViewController2 modalPresentationStyle];
  }

  v8 = _preferredModalPresentationStyle;

  return v8;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Presentation controller did dismiss with card UI swipe.", v5, 2u);
  }

  [(AAUIImagePickerAlertController *)self _callSelectionHandlerWithImage:0 cropRect:0];
}

@end