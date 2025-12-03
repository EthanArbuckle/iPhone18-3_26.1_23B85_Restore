@interface PHLimitedLibraryPicker
+ (id)firstKeyWindow:(id)window;
+ (id)topmostPresentedViewController:(id)controller;
+ (void)presentLimitedLibraryPicker:(id)picker waitForDismissal:(BOOL)dismissal viewController:(id)controller photoLibrary:(id)library completionHandler:(id)handler;
+ (void)presentLimitedLibraryPickerFromViewController:(id)controller options:(id)options completionHandler:(id)handler;
@end

@implementation PHLimitedLibraryPicker

+ (id)topmostPresentedViewController:(id)controller
{
  presentedViewController = [controller presentedViewController];
  v3PresentedViewController = [presentedViewController presentedViewController];

  if (v3PresentedViewController)
  {
    do
    {
      v3PresentedViewController2 = [presentedViewController presentedViewController];

      v5PresentedViewController = [v3PresentedViewController2 presentedViewController];

      presentedViewController = v3PresentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    v3PresentedViewController2 = presentedViewController;
  }

  return v3PresentedViewController2;
}

+ (id)firstKeyWindow:(id)window
{
  v32 = *MEMORY[0x1E69E9840];
  [window connectedScenes];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v29 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v7 = 0x1E69DD000uLL;
    v21 = v3;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      v10 = *(v7 + 752);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 activationState] != -1)
      {
        v11 = v9;
        windows = [v11 windows];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = windows;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v7;
          v16 = *v23;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * i);
              if ([v18 isKeyWindow])
              {
                v14 = v18;
                goto LABEL_18;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_18:
          v7 = v15;
          v3 = v21;
        }

        if (v14)
        {
          break;
        }
      }

      if (++v8 == v5)
      {
        v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    v14 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)presentLimitedLibraryPickerFromViewController:(id)controller options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v11 = [options objectForKeyedSubscript:@"PHLimitedLibraryPickerClientApplicationIdentifier"];
  imagePickerPhotoLibrary = [MEMORY[0x1E69789A8] imagePickerPhotoLibrary];
  [self presentLimitedLibraryPicker:v11 waitForDismissal:0 viewController:controllerCopy photoLibrary:imagePickerPhotoLibrary completionHandler:handlerCopy];
}

+ (void)presentLimitedLibraryPicker:(id)picker waitForDismissal:(BOOL)dismissal viewController:(id)controller photoLibrary:(id)library completionHandler:(id)handler
{
  dismissalCopy = dismissal;
  pickerCopy = picker;
  controllerCopy = controller;
  libraryCopy = library;
  handlerCopy = handler;
  v15 = objc_alloc_init(PHLimitedLibraryPickerDelegate);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PHLimitedLibraryPicker_presentLimitedLibraryPicker_waitForDismissal_viewController_photoLibrary_completionHandler___block_invoke;
  block[3] = &unk_1E83F7818;
  v16 = v15;
  v38 = v16;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  [(PHLimitedLibraryPickerDelegate *)v16 setDismissalBlock:v17];
  [(PHLimitedLibraryPickerDelegate *)v16 setFinishedPickingBlock:handlerCopy];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__PHLimitedLibraryPicker_presentLimitedLibraryPicker_waitForDismissal_viewController_photoLibrary_completionHandler___block_invoke_29;
  aBlock[3] = &unk_1E83F7698;
  v18 = libraryCopy;
  v28 = v18;
  v19 = pickerCopy;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  v21 = controllerCopy;
  v31 = v21;
  v32 = &v33;
  v22 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v22[2](v22);
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __117__PHLimitedLibraryPicker_presentLimitedLibraryPicker_waitForDismissal_viewController_photoLibrary_completionHandler___block_invoke_34;
    v25[3] = &unk_1E83F76C0;
    v26 = v22;
    dispatch_sync(MEMORY[0x1E69E96A0], v25);
  }

  if (*(v34 + 24) == 1 && dismissalCopy)
  {
    dispatch_block_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = 0;
      _os_log_impl(&dword_1D2128000, v23, OS_LOG_TYPE_DEBUG, "Limited library picker done", &v24, 2u);
    }
  }

  _Block_object_dispose(&v33, 8);
}

void __117__PHLimitedLibraryPicker_presentLimitedLibraryPicker_waitForDismissal_viewController_photoLibrary_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDismissalBlock:0];
  v1 = PLBackendGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1D2128000, v1, OS_LOG_TYPE_DEBUG, "Presented limited library dismissed", v2, 2u);
  }
}

void __117__PHLimitedLibraryPicker_presentLimitedLibraryPicker_waitForDismissal_viewController_photoLibrary_completionHandler___block_invoke_29(void *a1)
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D2128000, v2, OS_LOG_TYPE_DEBUG, "Preparing to show limited library picker", buf, 2u);
  }

  v3 = [[PHPickerConfiguration alloc] initWithPhotoLibraryAndOnlyReturnsIdentifiers:a1[4]];
  [(PHPickerConfiguration *)v3 setSelectionLimit:0];
  [(PHPickerConfiguration *)v3 setMinimumSelectionLimit:0];
  [(PHPickerConfiguration *)v3 _setPurposedLimitedLibraryApplicationIdentifier:a1[5]];
  [(PHPickerConfiguration *)v3 _setDisabledPrivateCapabilities:7];
  v4 = [[PHPickerViewController alloc] initWithConfiguration:v3];
  v5 = a1[6];
  v6 = [(PHPickerViewController *)v4 presentationController];
  [v6 setDelegate:v5];

  [(PHPickerViewController *)v4 setDelegate:a1[6]];
  v7 = a1[7];
  if (v7)
  {
    [v7 presentViewController:v4 animated:1 completion:&__block_literal_global_1010];
    *(*(a1[8] + 8) + 24) = 1;
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_ERROR, "Failed to determine root view controller", v9, 2u);
    }
  }
}

void __117__PHLimitedLibraryPicker_presentLimitedLibraryPicker_waitForDismissal_viewController_photoLibrary_completionHandler___block_invoke_32()
{
  v0 = PLBackendGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_1D2128000, v0, OS_LOG_TYPE_DEBUG, "Presented limited library picker", v1, 2u);
  }
}

@end