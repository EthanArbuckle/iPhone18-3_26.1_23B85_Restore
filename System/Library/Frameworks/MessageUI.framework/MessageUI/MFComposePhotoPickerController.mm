@interface MFComposePhotoPickerController
- (MFComposePhotoPickerController)initWithPreselectedAssetIdentifiers:(id)identifiers;
- (MFComposePhotoPickerControllerDelegate)delegate;
- (double)preferredHeightForTraitCollection:(id)collection;
- (id)_loadAssetForPickerResult:(id)result completionHandler:(id)handler;
- (void)_loadAssetForPickerResult:(id)result;
- (void)_photoPickerItemForAssetIdentifier:(id)identifier assetURL:(id)l contentType:(id)type completionHandler:(id)handler;
- (void)_removeAssetWithIdentifier:(id)identifier;
- (void)_setupPickerViewController;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation MFComposePhotoPickerController

void ___ef_log_MFComposePhotoPickerController_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFComposePhotoPickerController");
  v1 = _ef_log_MFComposePhotoPickerController_log;
  _ef_log_MFComposePhotoPickerController_log = v0;
}

- (MFComposePhotoPickerController)initWithPreselectedAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v15.receiver = self;
  v15.super_class = MFComposePhotoPickerController;
  v5 = [(MFComposePhotoPickerController *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFA8];
    v7 = [identifiersCopy ef_compactMap:&__block_literal_global_15];
    v8 = [v6 setWithSet:v7];
    existingAssets = v5->_existingAssets;
    v5->_existingAssets = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.email.photopicker.loadingQueue", v11);
    assetLoadingQueue = v5->_assetLoadingQueue;
    v5->_assetLoadingQueue = v12;

    [(MFComposePhotoPickerController *)v5 _setupPickerViewController];
  }

  return v5;
}

id __70__MFComposePhotoPickerController_initWithPreselectedAssetIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFComposePhotoPickerItem assetIdentifierFromContentIdentifier:a2];

  return v2;
}

- (void)_setupPickerViewController
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getPHPickerConfigurationClass_softClass;
  v22 = getPHPickerConfigurationClass_softClass;
  if (!getPHPickerConfigurationClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getPHPickerConfigurationClass_block_invoke;
    v17 = &unk_1E806CA38;
    v18 = &v19;
    __getPHPickerConfigurationClass_block_invoke(&v14);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = [v3 alloc];
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  v7 = [v5 initWithPhotoLibrary:mEMORY[0x1E69789A8]];

  [v7 setSelection:2];
  [v7 setSelectionLimit:0];
  existingAssets = [(MFComposePhotoPickerController *)self existingAssets];
  allObjects = [existingAssets allObjects];
  [v7 setPreselectedAssetIdentifiers:allObjects];

  [v7 setPreferredAssetRepresentationMode:2];
  [v7 _setDisabledPrivateCapabilities:64];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v10 = getPHPickerViewControllerClass_softClass;
  v22 = getPHPickerViewControllerClass_softClass;
  if (!getPHPickerViewControllerClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getPHPickerViewControllerClass_block_invoke;
    v17 = &unk_1E806CA38;
    v18 = &v19;
    __getPHPickerViewControllerClass_block_invoke(&v14);
    v10 = v20[3];
  }

  v11 = v10;
  _Block_object_dispose(&v19, 8);
  v12 = [[v10 alloc] initWithConfiguration:v7];
  pickerViewController = self->_pickerViewController;
  self->_pickerViewController = v12;

  [(PHPickerViewController *)self->_pickerViewController setDelegate:self];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v34 = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  v6 = MEMORY[0x1E695DFD8];
  v7 = [pickingCopy ef_compactMap:&__block_literal_global_22];
  v21 = [v6 setWithArray:v7];

  existingAssets = [(MFComposePhotoPickerController *)self existingAssets];
  v22 = [v21 differenceFromSet:existingAssets];

  delegate = [(MFComposePhotoPickerController *)self delegate];
  if (([v22 hasChanges] & 1) == 0)
  {
    progressManager = [(MFComposePhotoPickerController *)self progressManager];
    [progressManager cancelEverything];

    [delegate photoPickerControllerDidCancel:self];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  removals = [v22 removals];
  v11 = [removals countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(removals);
        }

        [(MFComposePhotoPickerController *)self _removeAssetWithIdentifier:*(*(&v28 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [removals countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  insertions = [v22 insertions];
  v15 = [insertions countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(insertions);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __58__MFComposePhotoPickerController_picker_didFinishPicking___block_invoke_2;
        v23[3] = &unk_1E806CE80;
        v23[4] = v18;
        v19 = [pickingCopy ef_firstObjectPassingTest:v23];
        if (v19)
        {
          [(MFComposePhotoPickerController *)self _loadAssetForPickerResult:v19];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [insertions countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }
}

id __58__MFComposePhotoPickerController_picker_didFinishPicking___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 assetIdentifier];

  return v2;
}

uint64_t __58__MFComposePhotoPickerController_picker_didFinishPicking___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 assetIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  verticalSizeClass = [collection verticalSizeClass];
  result = 300.0;
  if (verticalSizeClass == 1)
  {
    return 160.0;
  }

  return result;
}

- (void)_removeAssetWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _ef_log_MFComposePhotoPickerController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "Remove asset with identifier %{public}@", buf, 0xCu);
  }

  existingAssets = [(MFComposePhotoPickerController *)self existingAssets];
  [existingAssets removeObject:identifierCopy];

  progressManager = [(MFComposePhotoPickerController *)self progressManager];
  [progressManager cancelProgressFor:identifierCopy];

  pickerViewController = [(MFComposePhotoPickerController *)self pickerViewController];
  v11 = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [pickerViewController _stopActivityIndicatorsForAssetsWithIdentifiers:v9];

  delegate = [(MFComposePhotoPickerController *)self delegate];
  [delegate photoPickerController:self didRemoveAsset:identifierCopy];
}

- (void)_loadAssetForPickerResult:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  assetIdentifier = [resultCopy assetIdentifier];
  v6 = _ef_log_MFComposePhotoPickerController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    itemProvider = [resultCopy itemProvider];
    registeredContentTypes = [itemProvider registeredContentTypes];
    *buf = 138543618;
    v19 = assetIdentifier;
    v20 = 2114;
    v21 = registeredContentTypes;
    _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Adding asset with identifier: %{public}@, registeredContentTypes: %{public}@", buf, 0x16u);
  }

  pickerViewController = [(MFComposePhotoPickerController *)self pickerViewController];
  v17 = assetIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [pickerViewController _startActivityIndicatorsForAssetsWithIdentifiers:v10];

  assetLoadingQueue = [(MFComposePhotoPickerController *)self assetLoadingQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke;
  v14[3] = &unk_1E806CC80;
  v14[4] = self;
  v15 = resultCopy;
  v16 = assetIdentifier;
  v12 = assetIdentifier;
  v13 = resultCopy;
  dispatch_async(assetLoadingQueue, v14);
}

void __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke_2;
  v12[3] = &unk_1E806CEA8;
  v12[4] = v2;
  v13 = *(a1 + 48);
  v4 = [v2 _loadAssetForPickerResult:v3 completionHandler:v12];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke_4;
  v8[3] = &unk_1E806CC80;
  v5 = v4;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v7 performBlock:v8];
}

void __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke_3;
  v8[3] = &unk_1E806CC80;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v7 performBlock:v8];
}

void __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 delegate];
    [v4 photoPickerController:*(a1 + 40) didAddItem:*(a1 + 32)];
  }

  else
  {
    v5 = [v2 pickerViewController];
    v11[0] = *(a1 + 48);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 deselectAssetsWithIdentifiers:v6];
  }

  v7 = [*(a1 + 40) progressManager];
  [v7 cancelProgressFor:*(a1 + 48)];

  v8 = [*(a1 + 40) pickerViewController];
  v10 = *(a1 + 48);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v8 _stopActivityIndicatorsForAssetsWithIdentifiers:v9];
}

void __60__MFComposePhotoPickerController__loadAssetForPickerResult___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 existingAssets];
    [v4 addObject:*(a1 + 48)];

    v5 = [*(a1 + 40) progressManager];
    [v5 setProgress:*(a1 + 32) for:*(a1 + 48)];

    v6 = _ef_log_MFComposePhotoPickerController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Added asset with identifier: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v2 pickerViewController];
    v12 = *(a1 + 48);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [v8 deselectAssetsWithIdentifiers:v9];

    v6 = [*(a1 + 40) pickerViewController];
    v11 = *(a1 + 48);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [v6 _stopActivityIndicatorsForAssetsWithIdentifiers:v10];
  }
}

- (id)_loadAssetForPickerResult:(id)result completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  handlerCopy = handler;
  itemProvider = [resultCopy itemProvider];
  assetIdentifier = [resultCopy assetIdentifier];
  if (!itemProvider)
  {
    registeredContentTypes = _ef_log_MFComposePhotoPickerController();
    if (os_log_type_enabled(registeredContentTypes, OS_LOG_TYPE_ERROR))
    {
      [MFComposePhotoPickerController _loadAssetForPickerResult:assetIdentifier completionHandler:registeredContentTypes];
    }

    goto LABEL_11;
  }

  registeredContentTypes = [itemProvider registeredContentTypes];
  v11 = [MFComposePhotoPickerItem bestTypeToLoadFrom:registeredContentTypes];
  v12 = _ef_log_MFComposePhotoPickerController();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MFComposePhotoPickerController _loadAssetForPickerResult:assetIdentifier completionHandler:?];
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v14 = v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v11 identifier];
    *buf = 138543618;
    v25 = assetIdentifier;
    v26 = 2114;
    v27 = identifier;
    _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Loading representation for assetIdentifier: %{public}@ with type: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__MFComposePhotoPickerController__loadAssetForPickerResult_completionHandler___block_invoke;
  v19[3] = &unk_1E806CED0;
  objc_copyWeak(&v23, buf);
  v20 = assetIdentifier;
  v16 = v11;
  v21 = v16;
  v22 = handlerCopy;
  v17 = [itemProvider loadFileRepresentationForContentType:v16 openInPlace:0 completionHandler:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

LABEL_12:

  return v17;
}

void __78__MFComposePhotoPickerController__loadAssetForPickerResult_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v6 || v7)
  {
    v12 = _ef_log_MFComposePhotoPickerController();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __78__MFComposePhotoPickerController__loadAssetForPickerResult_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = 0;
    v10 = [v9 mf_copyFileAtURLToContainer:v6 securityScoped:0 preferredFileName:0 error:&v14];
    v11 = v14;

    if (!v10 || v11)
    {
      v13 = _ef_log_MFComposePhotoPickerController();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __78__MFComposePhotoPickerController__loadAssetForPickerResult_completionHandler___block_invoke_cold_2(a1);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [WeakRetained _photoPickerItemForAssetIdentifier:*(a1 + 32) assetURL:v10 contentType:*(a1 + 40) completionHandler:*(a1 + 48)];
    }
  }
}

- (void)_photoPickerItemForAssetIdentifier:(id)identifier assetURL:(id)l contentType:(id)type completionHandler:(id)handler
{
  identifierCopy = identifier;
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  if ([typeCopy conformsToType:*MEMORY[0x1E6982E30]])
  {
    v26 = 0;
    v13 = *MEMORY[0x1E695DAA0];
    v25 = 0;
    v14 = [lCopy getResourceValue:&v26 forKey:v13 error:&v25];
    v15 = v26;
    v16 = v25;
    if (v14)
    {
      if (([(MFComposePhotoPickerItem *)v15 conformsToType:*MEMORY[0x1E6982E58]]& 1) != 0 || ([(MFComposePhotoPickerItem *)v15 conformsToType:*MEMORY[0x1E6982F28]]& 1) != 0 || [(MFComposePhotoPickerItem *)v15 conformsToType:*MEMORY[0x1E6982DE8]])
      {
        v17 = [[MFComposePhotoPickerItem alloc] initWithAssetIdentifier:identifierCopy assetURL:lCopy assetData:0 contentType:typeCopy];
        handlerCopy[2](handlerCopy, v17);
      }

      else
      {
        v17 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:lCopy];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager removeItemAtURL:lCopy error:0];

        identifier = [(MFComposePhotoPickerItem *)v15 identifier];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __108__MFComposePhotoPickerController__photoPickerItemForAssetIdentifier_assetURL_contentType_completionHandler___block_invoke;
        v21[3] = &unk_1E806CEF8;
        v22 = identifierCopy;
        v24 = handlerCopy;
        v23 = v15;
        [MFMediaExporter jpegRepresentationForImageData:v17 inputContentType:identifier completion:v21];
      }
    }

    else
    {
      v18 = _ef_log_MFComposePhotoPickerController();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MFComposePhotoPickerController _photoPickerItemForAssetIdentifier:lCopy assetURL:v18 contentType:? completionHandler:?];
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v15 = [[MFComposePhotoPickerItem alloc] initWithAssetIdentifier:identifierCopy assetURL:lCopy assetData:0 contentType:typeCopy];
    handlerCopy[2](handlerCopy, v15);
  }
}

void __108__MFComposePhotoPickerController__photoPickerItemForAssetIdentifier_assetURL_contentType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MFComposePhotoPickerItem alloc];
    v5 = [(MFComposePhotoPickerItem *)v4 initWithAssetIdentifier:*(a1 + 32) assetURL:0 assetData:v3 contentType:*MEMORY[0x1E6982E58]];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = _ef_log_MFComposePhotoPickerController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) identifier];
      __108__MFComposePhotoPickerController__photoPickerItemForAssetIdentifier_assetURL_contentType_completionHandler___block_invoke_cold_1(v7, v8, v9, v6);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (MFComposePhotoPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadAssetForPickerResult:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_1BE819000, v1, v2, "Cannot load asset %{public}@, because neither of the registeredContentTypes - %{public}@ are supported.", v3, DWORD2(v3));
}

- (void)_loadAssetForPickerResult:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Could not load asset %{public}@ because no item provider was provided.", &v2, 0xCu);
}

void __78__MFComposePhotoPickerController__loadAssetForPickerResult_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_1BE819000, v1, v2, "Error loading asset %{public}@, error: %{public}@", v3, DWORD2(v3));
}

void __78__MFComposePhotoPickerController__loadAssetForPickerResult_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_1BE819000, v1, v2, "Error copying asset %{public}@, error: %{public}@", v3, DWORD2(v3));
}

- (void)_photoPickerItemForAssetIdentifier:(uint64_t)a1 assetURL:(NSObject *)a2 contentType:completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Error getting contentType value from url: %{public}@", &v2, 0xCu);
}

void __108__MFComposePhotoPickerController__photoPickerItemForAssetIdentifier_assetURL_contentType_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Error exporting asset %{public}@ with contentType %{public}@ as JPEG", buf, 0x16u);
}

@end