@interface MPMediaPickerController
- (BOOL)_hasAddedRemoteView;
- (MPMediaPickerController)initWithConfiguration:(id)a3;
- (MPMediaPickerController)initWithMediaTypes:(MPMediaType)mediaTypes;
- (MPMediaPickerController)initWithSupportedTypeIdentifiers:(id)a3 selectionMode:(int64_t)a4;
- (id)delegate;
- (int64_t)modalPresentationStyle;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addRemoteView;
- (void)_checkLibraryAuthorization;
- (void)_forceDismissal;
- (void)_pickerDidCancel;
- (void)_pickerDidPickItems:(id)a3;
- (void)_pickerDidPickPlaybackArchive:(id)a3;
- (void)_sharedInit;
- (void)_synchronizeSettings;
- (void)setAllowsPickingMultipleItems:(BOOL)allowsPickingMultipleItems;
- (void)setPickingForExternalPlayer:(BOOL)a3;
- (void)setPicksSingleCollectionEntity:(BOOL)a3;
- (void)setPlaybackArchiveConfiguration:(id)a3;
- (void)setPrompt:(NSString *)prompt;
- (void)setShowsCatalogContent:(BOOL)a3;
- (void)setShowsCloudItems:(BOOL)showsCloudItems;
- (void)setShowsItemsWithProtectedAssets:(BOOL)showsItemsWithProtectedAssets;
- (void)setShowsLibraryContent:(BOOL)a3;
- (void)setSupportsUnavailableContent:(BOOL)a3;
- (void)setWatchCompatibilityVersion:(unsigned int)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MPMediaPickerController

void __60__MPMediaPickerController_Appex_requestRemoteViewController__block_invoke_191(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPMediaPickerController.m" lineNumber:523 description:@"remoteViewController cannot be nil -- process will crash inserting in hierarchy. We likely got a nil remoteViewController because Music is crashing."];
  }

  [v7 setMediaPickerController:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 16), a3);
  [*(a1 + 32) synchronizeSettings];
  [*(a1 + 40) addChildViewController:*(*(*(a1 + 48) + 8) + 40)];
  if ([*(a1 + 40) isViewLoaded])
  {
    v9 = [*(a1 + 40) view];
    v10 = [*(*(*(a1 + 48) + 8) + 40) view];
    [v9 addSubview:v10];
  }

  [*(*(*(a1 + 48) + 8) + 40) didMoveToParentViewController:*(a1 + 40)];
  [*(*(*(a1 + 48) + 8) + 40) endDelayingDisplayOfRemoteController];
  [*(a1 + 40) _endDelayingPresentation];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_checkLibraryAuthorization
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__MPMediaPickerController__checkLibraryAuthorization__block_invoke;
  v2[3] = &unk_1E7681CA0;
  v2[4] = self;
  [MPMediaLibrary requestAuthorization:v2];
}

void __53__MPMediaPickerController__checkLibraryAuthorization__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 3)
  {
    v8 = v2;
    v9 = v3;
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "Media library access is not authorized. Users need to grant media library access for your app in Settings > Privacy to interact with MPMediaPickerController. Dismissing.", v7, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MPMediaPickerController__checkLibraryAuthorization__block_invoke_99;
    block[3] = &unk_1E7682518;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_synchronizeSettings
{
  if ([(MPMediaPickerController *)self _hasAddedRemoteView])
  {
    loader = self->_loader;

    [(MPMediaPickerRemoteViewLoader *)loader synchronizeSettings];
  }
}

- (void)_addRemoteView
{
  v3 = [(MPMediaPickerRemoteViewLoader *)self->_loader remoteViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(MPMediaPickerController *)self isViewLoaded];

    if (v5)
    {
      v6 = [(MPMediaPickerRemoteViewLoader *)self->_loader remoteViewController];
      v10 = [v6 view];

      v7 = [MEMORY[0x1E69DC888] whiteColor];
      [v10 setBackgroundColor:v7];

      [(MPMediaPickerRemoteViewLoader *)self->_loader synchronizeSettings];
      v8 = [(MPMediaPickerController *)self view];
      [v8 addSubview:v10];

      v9 = [(MPMediaPickerController *)self view];
      [v9 bounds];
      [v10 setFrame:?];

      [v10 setAutoresizingMask:18];
    }
  }
}

- (BOOL)_hasAddedRemoteView
{
  v3 = [(MPMediaPickerRemoteViewLoader *)self->_loader remoteViewController];
  if (v3 && -[MPMediaPickerController isViewLoaded](self, "isViewLoaded") && [v3 isViewLoaded])
  {
    v4 = [v3 view];
    v5 = [v4 superview];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_pickerDidPickPlaybackArchive:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F15AA2F0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained mediaPicker:self didPickPlaybackArchive:v5];
  }

  else
  {
    [(MPMediaPickerController *)self _forceDismissal];
  }
}

- (void)_pickerDidPickItems:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mediaPicker:self didPickMediaItems:v5];
  }

  else
  {
    [(MPMediaPickerController *)self _forceDismissal];
  }
}

- (void)_pickerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mediaPickerDidCancel:self];
  }

  else
  {
    [(MPMediaPickerController *)self _forceDismissal];
  }
}

- (void)_forceDismissal
{
  v2 = [(MPMediaPickerController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)setPlaybackArchiveConfiguration:(id)a3
{
  v6 = a3;
  v4 = [(MPMediaPickerConfiguration *)self->_configuration playbackArchiveConfiguration];

  v5 = v6;
  if (v4 != v6)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setPlaybackArchiveConfiguration:v6];
    [(MPMediaPickerController *)self _synchronizeSettings];
    v5 = v6;
  }
}

- (void)setPickingForExternalPlayer:(BOOL)a3
{
  v3 = a3;
  if ([(MPMediaPickerConfiguration *)self->_configuration pickingForExternalPlayer]!= a3)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setPickingForExternalPlayer:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setSupportsUnavailableContent:(BOOL)a3
{
  v3 = a3;
  if ([(MPMediaPickerConfiguration *)self->_configuration supportsUnavailableContent]!= a3)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setSupportsUnavailableContent:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setShowsLibraryContent:(BOOL)a3
{
  v3 = a3;
  if ([(MPMediaPickerConfiguration *)self->_configuration showsLibraryContent]!= a3)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setShowsLibraryContent:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setShowsCatalogContent:(BOOL)a3
{
  v3 = a3;
  if ([(MPMediaPickerConfiguration *)self->_configuration showsCatalogContent]!= a3)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setShowsCatalogContent:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setWatchCompatibilityVersion:(unsigned int)a3
{
  v3 = *&a3;
  if ([(MPMediaPickerConfiguration *)self->_configuration watchCompatibilityVersion]!= a3)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setWatchCompatibilityVersion:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setPicksSingleCollectionEntity:(BOOL)a3
{
  v3 = a3;
  if ([(MPMediaPickerConfiguration *)self->_configuration picksSingleCollectionEntity]!= a3)
  {
    if ([(MPMediaPickerConfiguration *)self->_configuration allowsPickingMultipleItems])
    {
      v5 = !v3;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      [(MPMediaPickerConfiguration *)self->_configuration setPicksSingleCollectionEntity:v3];

      [(MPMediaPickerController *)self _synchronizeSettings];
    }

    else
    {
      v6 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "setPicksSingleCollectionEntity mutually-exclusive with setAllowsPickingMultipleItems", v8, 2u);
      }
    }
  }
}

- (void)setShowsItemsWithProtectedAssets:(BOOL)showsItemsWithProtectedAssets
{
  v3 = showsItemsWithProtectedAssets;
  if ([(MPMediaPickerConfiguration *)self->_configuration showsItemsWithProtectedAssets]!= showsItemsWithProtectedAssets)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setShowsItemsWithProtectedAssets:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setShowsCloudItems:(BOOL)showsCloudItems
{
  v3 = showsCloudItems;
  if ([(MPMediaPickerConfiguration *)self->_configuration showsCloudItems]!= showsCloudItems)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setShowsCloudItems:v3];

    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (void)setAllowsPickingMultipleItems:(BOOL)allowsPickingMultipleItems
{
  v3 = allowsPickingMultipleItems;
  if ([(MPMediaPickerConfiguration *)self->_configuration allowsPickingMultipleItems]!= allowsPickingMultipleItems)
  {
    if (v3 && [(MPMediaPickerConfiguration *)self->_configuration picksSingleCollectionEntity])
    {
      v5 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "setAllowsPickingMultipleItems mutually-exclusive with setPicksSingleCollectionEntity", v6, 2u);
      }
    }

    else
    {
      [(MPMediaPickerConfiguration *)self->_configuration setAllowsPickingMultipleItems:v3];

      [(MPMediaPickerController *)self _synchronizeSettings];
    }
  }
}

- (void)setPrompt:(NSString *)prompt
{
  v6 = prompt;
  v4 = [(MPMediaPickerConfiguration *)self->_configuration prompt];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(MPMediaPickerConfiguration *)self->_configuration setPrompt:v6];
    [(MPMediaPickerController *)self _synchronizeSettings];
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MPMediaPickerController;
  return [(MPMediaPickerController *)&v6 preferredInterfaceOrientationForPresentation];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = MPMediaPickerController;
  return [(MPMediaPickerController *)&v6 supportedInterfaceOrientations];
}

- (int64_t)modalPresentationStyle
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MPMediaPickerController;
  return [(MPMediaPickerController *)&v6 modalPresentationStyle];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MPMediaPickerController;
  [(MPMediaPickerController *)&v4 viewDidAppear:a3];
  [(MPMediaPickerController *)self _checkLibraryAuthorization];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(MPMediaPickerRemoteViewLoader *)self->_loader synchronizeSettings];
  v5.receiver = self;
  v5.super_class = MPMediaPickerController;
  [(MPMediaPickerController *)&v5 viewWillAppear:v3];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = MPMediaPickerController;
  [(MPMediaPickerController *)&v26 viewDidLoad];
  if (![(MPMediaPickerController *)self showsLibraryContent]&& ![(MPMediaPickerController *)self showsCatalogContent])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MPMediaPickerController.m" lineNumber:148 description:@"showsLibraryContent and showsCatalogContent can't both be NO."];
  }

  v4 = [(MPMediaPickerController *)self view];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setBackgroundColor:v5];

  [(MPMediaPickerController *)self _addRemoteView];
  if (!self->_loader)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v8 = [v7 localizedStringForKey:@"MEDIAPICKER_NAVIGATION_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    [v6 setTitle:v8];

    v25 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
    v9 = [v6 navigationItem];
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v13 = [v10 initWithTitle:v12 style:0 target:self action:sel__pickerDidCancel];

    [v9 setLeftBarButtonItem:v13];
    v14 = objc_alloc(MEMORY[0x1E69DC708]);
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v16 = [v15 localizedStringForKey:@"DONE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v17 = [v14 initWithTitle:v16 style:0 target:0 action:0];

    [v17 setEnabled:0];
    [v9 setRightBarButtonItem:v17];
    v18 = v25;
    [(MPMediaPickerController *)self addChildViewController:v18];
    v19 = [(MPMediaPickerController *)self view];
    v20 = [v18 view];
    [v19 addSubview:v20];

    [v18 didMoveToParentViewController:self];
    v21 = [v18 view];
    v22 = [(MPMediaPickerController *)self view];
    [v22 bounds];
    [v21 setFrame:?];

    v23 = [v18 view];

    [v23 setAutoresizingMask:18];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "MPMediaPickerController must be presented modally.", buf, 2u);
    }
  }

  v6.receiver = self;
  v6.super_class = MPMediaPickerController;
  [(MPMediaPickerController *)&v6 willMoveToParentViewController:v4];
}

- (MPMediaPickerController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPMediaPickerController;
  v6 = [(MPMediaPickerController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [(MPMediaPickerController *)v7 _sharedInit];
  }

  return v7;
}

- (MPMediaPickerController)initWithSupportedTypeIdentifiers:(id)a3 selectionMode:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MPMediaPickerConfiguration);
  [(MPMediaPickerConfiguration *)v7 setTypeIdentifiers:v6];

  [(MPMediaPickerConfiguration *)v7 setSelectionMode:a4];
  v8 = [(MPMediaPickerController *)self initWithConfiguration:v7];

  return v8;
}

- (MPMediaPickerController)initWithMediaTypes:(MPMediaType)mediaTypes
{
  v3 = mediaTypes;
  v13 = *MEMORY[0x1E69E9840];
  if (!mediaTypes)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v12 = v3;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "Unsupported media types (%ld), using MPMediaTypeAny.", buf, 0xCu);
    }

    v3 = -1;
  }

  v6 = objc_alloc_init(MPMediaPickerConfiguration);
  [(MPMediaPickerConfiguration *)v6 setMediaTypes:v3];
  v10.receiver = self;
  v10.super_class = MPMediaPickerController;
  v7 = [(MPMediaPickerController *)&v10 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, v6);
    [(MPMediaPickerController *)v8 _sharedInit];
  }

  return v8;
}

- (void)_sharedInit
{
  [(MPMediaPickerController *)self setPreferredContentSize:320.0, 568.0];
  v3 = objc_alloc_init(MPMediaPickerController_Appex);
  loader = self->_loader;
  self->_loader = v3;

  [(MPMediaPickerRemoteViewLoader *)self->_loader setMediaPickerController:self];
  v5 = self->_loader;

  [(MPMediaPickerRemoteViewLoader *)v5 requestRemoteViewController];
}

@end