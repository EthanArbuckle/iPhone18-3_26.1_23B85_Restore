@interface MFPhotoPickerController
+ (id)log;
- (BOOL)_isPresentingInASheet;
- (CGSize)thumbnailSize;
- (MFPhotoPickerController)initWithPhotoPickerProgressManager:(id)a3;
- (MFPhotoPickerControllerDelegate)pickerDelegate;
- (NSSet)selectedAssetIdentifiers;
- (PHCachingImageManager)imageManager;
- (PHFetchResult)photosFetchResult;
- (double)preferredHeightForTraitCollection:(id)a3;
- (id)_visibleCellForIndexPath:(id)a3 collectionView:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)close:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)loadView;
- (void)setPickerDelegate:(id)a3;
- (void)showSystemImagePicker:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MFPhotoPickerController

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MFPhotoPickerController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_10 != -1)
  {
    dispatch_once(&log_onceToken_10, block);
  }

  v2 = log_log_10;

  return v2;
}

void __30__MFPhotoPickerController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_10;
  log_log_10 = v1;
}

- (MFPhotoPickerController)initWithPhotoPickerProgressManager:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v6 setMinimumLineSpacing:1.0];
  [v6 setMinimumInteritemSpacing:0.0];
  [v6 setSectionInsetReference:1];
  v11.receiver = self;
  v11.super_class = MFPhotoPickerController;
  v7 = [(MFPhotoPickerController *)&v11 initWithCollectionViewLayout:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    selectedAssetIdentifiers = v7->_selectedAssetIdentifiers;
    v7->_selectedAssetIdentifiers = v8;

    objc_storeStrong(&v7->_progressManager, a3);
  }

  return v7;
}

- (PHFetchResult)photosFetchResult
{
  photosFetchResult = self->_photosFetchResult;
  if (!photosFetchResult)
  {
    v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:209 options:0];
    v5 = [v4 firstObject];
    v6 = objc_opt_new();
    [v6 setFetchLimit:96];
    [v6 setReverseSortOrder:1];
    v7 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:v6];
    v8 = self->_photosFetchResult;
    self->_photosFetchResult = v7;

    photosFetchResult = self->_photosFetchResult;
  }

  return photosFetchResult;
}

- (PHCachingImageManager)imageManager
{
  imageManager = self->_imageManager;
  if (!imageManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6978718]);
    v5 = self->_imageManager;
    self->_imageManager = v4;

    imageManager = self->_imageManager;
  }

  return imageManager;
}

- (NSSet)selectedAssetIdentifiers
{
  v2 = [(NSMutableSet *)self->_selectedAssetIdentifiers copy];

  return v2;
}

- (void)setPickerDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pickerDelegate, obj);
    *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xF7 | v8;
    v5 = obj;
  }
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = MFPhotoPickerController;
  [(MFPhotoPickerController *)&v16 loadView];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(MFPhotoPickerController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(MFPhotoPickerController *)self collectionView];
  [v5 setAllowsMultipleSelection:1];

  v6 = [(MFPhotoPickerController *)self collectionView];
  [v6 setInsetsLayoutMarginsFromSafeArea:1];

  v7 = [(MFPhotoPickerController *)self collectionViewLayout];
  v8 = [(MFPhotoPickerController *)self view];
  [v8 bounds];
  [v7 setHeaderReferenceSize:{v9, 44.0}];

  v10 = [(MFPhotoPickerController *)self collectionView];
  v11 = objc_opt_class();
  v12 = +[MFPhotoPickerCell reusableIdentifier];
  [v10 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = [(MFPhotoPickerController *)self collectionView];
  v14 = objc_opt_class();
  v15 = +[MFPhotoPickerSectionHeaderView reusableIdentifier];
  [v13 registerClass:v14 forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:v15];

  self->_availableWidth = 0.0;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MFPhotoPickerController;
  [(MFPhotoPickerController *)&v13 viewDidLoad];
  v3 = [MFComposeActionCardTitleView alloc];
  v4 = [(MFComposeActionCardTitleView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PHOTO_PICKER_TITLE" value:&stru_1F3CF3758 table:@"Main"];
  v7 = [(MFComposeActionCardTitleView *)v4 titleLabel];
  [v7 setText:v6];

  v8 = [(MFComposeActionCardTitleView *)v4 closeButton];
  [v8 addTarget:self action:sel_close_ forEvents:64];

  v9 = [(MFPhotoPickerController *)self navigationItem];
  [v9 setTitleView:v4];

  v10 = [(MFPhotoPickerController *)self navigationItem];
  [v10 _setAutoScrollEdgeTransitionDistance:8.0];

  v11 = [(MFPhotoPickerController *)self navigationItem];
  [v11 _setManualScrollEdgeAppearanceProgress:0.0];

  v12 = [(MFPhotoPickerController *)self navigationItem];
  [v12 _setManualScrollEdgeAppearanceEnabled:1];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = MFPhotoPickerController;
  [(MFPhotoPickerController *)&v19 viewWillLayoutSubviews];
  v3 = [(MFPhotoPickerController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(MFPhotoPickerController *)self view];
  [v6 safeAreaInsets];
  v9 = v5 - (v7 + v8);

  [(MFPhotoPickerController *)self availableWidth];
  if (v10 != v9)
  {
    [(MFPhotoPickerController *)self setAvailableWidth:v9];
    [(MFPhotoPickerController *)self availableWidth];
    *&v11 = v11 / 80.0;
    v12 = vcvtms_s32_f32(*&v11);
    [(MFPhotoPickerController *)self availableWidth];
    v14 = ((v13 - v12 + -1.0) / v12);
    v15 = [(MFPhotoPickerController *)self collectionViewLayout];
    [v15 setItemSize:{v14, v14}];

    v16 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v16 scale];
    v18 = v17;

    [(MFPhotoPickerController *)self setThumbnailSize:v18 * v14, v18 * v14];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(MFPhotoPickerController *)self photosFetchResult:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MFPhotoPickerCell reusableIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v7];

  v10 = [(MFPhotoPickerController *)self photosFetchResult];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

  v12 = [v11 mf_localIdentifier];
  [v9 setRepresentedAssetIdentifier:v12];
  if (([v11 mediaSubtypes] & 8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = [v11 mediaType] == 2;
  }

  [v9 setMediaType:v13];
  v14 = [(MFPhotoPickerController *)self selectedAssetIdentifiers];
  v15 = [v14 containsObject:v12];

  [v9 setSelected:v15];
  if (v15)
  {
    v16 = [(MFPhotoPickerController *)self collectionView];
    v17 = [v16 indexPathsForSelectedItems];
    v18 = [v17 containsObject:v7];

    if ((v18 & 1) == 0)
    {
      v19 = [(MFPhotoPickerController *)self collectionView];
      [v19 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
    }
  }

  v20 = [(MFPhotoPickerController *)self imageManager];
  [(MFPhotoPickerController *)self thumbnailSize];
  v22 = v21;
  v24 = v23;
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __65__MFPhotoPickerController_collectionView_cellForItemAtIndexPath___block_invoke;
  v36 = &unk_1E80705B8;
  v25 = v12;
  v37 = v25;
  v26 = v9;
  v38 = v26;
  [v20 requestImageForAsset:v11 targetSize:1 contentMode:0 options:&v33 resultHandler:{v22, v24}];

  v27 = [(MFPhotoPickerController *)self progressManager:v33];
  [v27 progressForIndexPath:v7];
  v29 = v28;

  if (v29 > 0.0)
  {
    [v26 setProgress:v29];
  }

  v30 = v38;
  v31 = v26;

  return v26;
}

void __65__MFPhotoPickerController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) representedAssetIdentifier];
  LODWORD(v3) = [v3 isEqualToString:v4];

  if (v3)
  {
    [*(a1 + 40) setThumbnailImage:v5];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  v7 = [(MFPhotoPickerController *)self photosFetchResult];
  v21 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v20 = [(MFPhotoPickerController *)self _visibleCellForIndexPath:v6 collectionView:v22];
  v8 = +[MFPhotoPickerController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v21 mf_localIdentifier];
    *buf = 138543362;
    v36 = v9;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ selected", buf, 0xCu);
  }

  v19 = [(MFPhotoPickerController *)self pickerDelegate];
  v10 = [(MFPhotoPickerController *)self progressManager];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v30[3] = &unk_1E8070608;
  v31 = v10;
  v32 = v6;
  v33 = v21;
  v34 = v20;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
  v23[3] = &unk_1E8070658;
  v11 = v31;
  v24 = v11;
  v12 = v32;
  v25 = v12;
  v26 = self;
  v13 = v33;
  v27 = v13;
  v14 = v34;
  v28 = v14;
  v15 = v19;
  v29 = v15;
  v16 = [MFMediaExporter exportAsset:v13 progressHandler:v30 completion:v23];
  v17 = +[MFPhotoPickerController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v13 mf_localIdentifier];
    *buf = 138543618;
    v36 = v18;
    v37 = 1026;
    v38 = v16;
    _os_log_impl(&dword_1BE819000, v17, OS_LOG_TYPE_DEFAULT, "Asset %{public}@, PHImageRequestID %{public}d", buf, 0x12u);
  }

  [v11 setImageRequestID:v16 forIndexPath:v12];
}

void __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke(id *a1, void *a2, double a3)
{
  v5 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v14[3] = &unk_1E80705E0;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v18 = a3;
  v12 = v5;
  v17 = v12;
  v13 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v13 performBlock:v14];
}

void __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) requestExistsForIndexPath:*(a1 + 40)])
  {
    v2 = [*(a1 + 48) mf_localIdentifier];
    v3 = [*(a1 + 56) representedAssetIdentifier];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      [*(a1 + 32) setProgress:*(a1 + 40) forIndexPath:*(a1 + 72)];
      v5 = *(a1 + 64);
      if (v5)
      {
        [*(a1 + 32) setExportSession:v5 forIndexPath:*(a1 + 40)];
      }

      v6 = *(a1 + 72);
      v7 = *(a1 + 56);

      [v7 setProgress:v6];
    }
  }
}

void __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) cancelEverythingAtIndexPath:*(a1 + 40)];
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) mf_localIdentifier];
    [v4 addSelectedAssetIdentifier:v5];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
    v12[3] = &unk_1E8070630;
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v11 = *(a1 + 48);
    v8 = *(&v11 + 1);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v14 = v11;
    v13 = v9;
    v15 = v3;
    v10 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v10 performBlock:v12];
  }
}

void __67__MFPhotoPickerController_collectionView_didSelectItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setProgress:1.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) mf_localIdentifier];
  [v2 photoPicker:v3 didSelectAssetWithIdentifier:? mediaInfo:?];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MFPhotoPickerController *)self progressManager];
  [v8 cancelEverythingAtIndexPath:v7];

  v9 = [(MFPhotoPickerController *)self _visibleCellForIndexPath:v7 collectionView:v6];
  [v9 resetProgress];
  v10 = [(MFPhotoPickerController *)self photosFetchResult];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

  v12 = [v11 mf_localIdentifier];
  [(MFPhotoPickerController *)self removeSelectedAssetIdentifier:v12];

  v13 = +[MFPhotoPickerController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 mf_localIdentifier];
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ de-selected", &v17, 0xCu);
  }

  if ((*&self->_flags & 4) != 0)
  {
    v15 = [(MFPhotoPickerController *)self pickerDelegate];
    v16 = [v11 mf_localIdentifier];
    [v15 photoPicker:self didDeselectAssetWithIdentifier:v16];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[MFPhotoPickerSectionHeaderView reusableIdentifier];
  v10 = [v7 dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:v9 forIndexPath:v8];

  [v10 addAllPhotosTarget:self action:sel_showSystemImagePicker_];

  return v10;
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = [(MFPhotoPickerController *)self systemImagePicker];
  [v4 dismissViewControllerAnimated:1 completion:0];

  if ((*&self->_flags & 2) != 0)
  {
    v5 = [(MFPhotoPickerController *)self pickerDelegate];
    [v5 photoPickerDidCancelSystemImagePicker:self];
  }
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MFPhotoPickerController *)self systemImagePicker];
  [v6 dismissViewControllerAnimated:1 completion:0];

  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DE968]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

    v8 = v9;
  }

  v10 = +[MFPhotoPickerController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1BE819000, v10, OS_LOG_TYPE_DEFAULT, "System Image Picker, Asset %{public}@ selected", &v12, 0xCu);
  }

  v11 = [(MFPhotoPickerController *)self pickerDelegate];
  [v11 photoPicker:self didSelectAssetWithIdentifier:v8 mediaInfo:v5];
}

- (void)close:(id)a3
{
  if (*&self->_flags)
  {
    v4 = [(MFPhotoPickerController *)self pickerDelegate];
    [v4 photoPickerDidCancel:self];
  }
}

- (void)showSystemImagePicker:(id)a3
{
  v15 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = [MEMORY[0x1E69DCAD0] mf_systemImagePickerWithSourceType:0];
    systemImagePicker = self->_systemImagePicker;
    self->_systemImagePicker = v5;

    v7 = [(MFPhotoPickerController *)self pickerDelegate];
    [(UIImagePickerController *)self->_systemImagePicker setDelegate:self];
    if ((*&self->_flags & 8) == 0)
    {
      goto LABEL_9;
    }

    v8 = [v7 presentingViewControllerForPhotoPicker:self];
    v9 = [(MFPhotoPickerController *)self navigationController];
    if (v9)
    {
      v10 = [(MFPhotoPickerController *)self navigationController];
      v11 = [v10 presentationController];
      v12 = [v11 delegate];
    }

    else
    {
      v10 = [(MFPhotoPickerController *)self presentationController];
      v12 = [v10 delegate];
    }

    v13 = [(UIImagePickerController *)self->_systemImagePicker presentationController];
    [v13 setDelegate:v12];

    if (v8)
    {
      v14 = v8;
      [(MFPhotoPickerController *)self dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
LABEL_9:
      v14 = self;
    }

    [(MFPhotoPickerController *)v14 presentViewController:self->_systemImagePicker animated:1 completion:0];
  }

  else
  {
    [(MFPhotoPickerController *)self performSelectorOnMainThread:a2 withObject:v15 waitUntilDone:0];
  }
}

- (double)preferredHeightForTraitCollection:(id)a3
{
  v3 = [a3 verticalSizeClass];
  result = 300.0;
  if (v3 == 1)
  {
    return 160.0;
  }

  return result;
}

- (BOOL)_isPresentingInASheet
{
  v2 = [(MFPhotoPickerController *)self parentViewController];
  v3 = [v2 presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_visibleCellForIndexPath:(id)a3 collectionView:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 visibleCells];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v6 indexPathForCell:v11];
        v13 = [v12 item];
        LODWORD(v13) = v13 == [v5 item];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (MFPhotoPickerControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end