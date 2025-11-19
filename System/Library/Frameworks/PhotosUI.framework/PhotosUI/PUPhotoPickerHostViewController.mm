@interface PUPhotoPickerHostViewController
- (PUPhotoPickerHostViewControllerDelegate)delegate;
- (void)invalidate;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performTraitCollectionUpdateWithCompletion:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PUPhotoPickerHostViewController

- (PUPhotoPickerHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUPhotoPickerHostViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:v4];
  if (![(PUPhotoPickerHostViewController *)self _isInvalidated])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[PUPhotoPickerHostViewController viewServiceDidTerminateWithError:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_ERROR, "%s Error %@", buf, 0x16u);
    }

    v6 = [(PUPhotoPickerHostViewController *)self hostProxy];
    [v6 cancelPhotoPicker];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performTraitCollectionUpdateWithCompletion:(id)a3
{
  v26[5] = *MEMORY[0x1E69E9840];
  v20 = a3;
  v4 = [(PUPhotoPickerHostViewController *)self traitCollection];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithVerticalSizeClass:{objc_msgSend(v4, "verticalSizeClass")}];
  v26[0] = v6;
  v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:{objc_msgSend(v4, "horizontalSizeClass")}];
  v26[1] = v7;
  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v26[2] = v8;
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithLayoutDirection:{objc_msgSend(v4, "layoutDirection")}];
  v26[3] = v9;
  v10 = MEMORY[0x1E69DD1B8];
  v11 = [v4 preferredContentSizeCategory];
  v12 = [v10 traitCollectionWithPreferredContentSizeCategory:v11];
  v26[4] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  v14 = [v5 traitCollectionWithTraitsFromCollections:v13];

  v21 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v21];
  v16 = v21;
  if (v16)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[PUPhotoPickerHostViewController performTraitCollectionUpdateWithCompletion:]";
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1D2128000, v17, OS_LOG_TYPE_ERROR, "%s Error %@", buf, 0x16u);
    }
  }

  v18 = [(PUPhotoPickerHostViewController *)self hostProxy];
  [v18 performTraitCollectionUpdateUsingData:v15 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  v2 = [(PUPhotoPickerHostViewController *)self hostProxy];
  [v2 performPhotoPickerPreviewOfFirstAsset];
}

- (void)invalidate
{
  if (![(PUPhotoPickerHostViewController *)self _isInvalidated])
  {
    [(PUPhotoPickerHostViewController *)self set_invalidated:1];
    v3 = [(PUPhotoPickerHostViewController *)self hostProxy];
    [v3 invalidatePhotoPickerHostServices];

    [(PUPhotoPickerHostViewController *)self setHostExtensionContext:0];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setNavigationBarHidden:1];
  }
}

@end