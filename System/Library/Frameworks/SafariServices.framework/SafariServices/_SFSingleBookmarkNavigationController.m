@interface _SFSingleBookmarkNavigationController
- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)a3;
- (BOOL)prepareForPresentationForAddingBookmark:(BOOL)a3;
- (_SFSingleBookmarkNavigationControllerDelegate)bookmarkNavDelegate;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)_initWithBookmark:(id)a3 childBookmarks:(id)a4 inCollection:(id)a5 withSyntheticFolder:(id)a6 addingBookmark:(BOOL)a7 toFavorites:(BOOL)a8;
- (id)addBookmarkWithTitle:(id)a3 address:(id)a4 parentBookmark:(id)a5;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3;
- (void)_didBecomeActive;
- (void)_releaseBookmarkLockIfNeeded;
- (void)_willResignActive;
- (void)bookmarkInfoViewController:(id)a3 didFinishWithResult:(BOOL)a4;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation _SFSingleBookmarkNavigationController

- (id)_initWithBookmark:(id)a3 childBookmarks:(id)a4 inCollection:(id)a5 withSyntheticFolder:(id)a6 addingBookmark:(BOOL)a7 toFavorites:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  objc_storeStrong(&self->_collection, a5);
  if ([v15 count])
  {
    v18 = objc_alloc(MEMORY[0x1E69E20F0]);
    [(_SFSingleBookmarkNavigationController *)self _lastSelectedFolder];
    v35 = v15;
    v19 = v17;
    v20 = v9;
    v21 = v8;
    v23 = v22 = v16;
    v24 = [v23 identifier];
    v25 = [(WebBookmarkCollection *)self->_collection configuration];
    v26 = [v18 initFolderWithParentID:v24 collectionType:{objc_msgSend(v25, "collectionType")}];

    v16 = v22;
    v8 = v21;
    v9 = v20;
    v17 = v19;
    v15 = v35;
    v27 = _WBSLocalizedString();
    [v26 setTitle:v27];

    v14 = v26;
  }

  v28 = [[_SFBookmarkInfoViewController alloc] initWithBookmark:v14 childBookmarks:v15 inCollection:v16 addingBookmark:v9 toFavorites:v8 willBeDisplayedModally:1];
  v29 = v28;
  if (v17)
  {
    [(_SFBookmarkInfoViewController *)v28 setParent:0 syntheticParentFolder:v17];
  }

  v36.receiver = self;
  v36.super_class = _SFSingleBookmarkNavigationController;
  v30 = [(_SFSingleBookmarkNavigationController *)&v36 initWithRootViewController:v29];
  v31 = v30;
  if (v30)
  {
    [(_SFSingleBookmarkNavigationController *)v30 _setClipUnderlapWhileTransitioning:1];
    objc_storeStrong(&v31->_infoViewController, v29);
    [(_SFBookmarkInfoViewController *)v31->_infoViewController setDelegate:v31];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v31 selector:sel__willResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    [v32 addObserver:v31 selector:sel__didBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
    v31->_needsBookmarksLockOnAppResume = 0;
    v33 = v31;
  }

  return v31;
}

- (void)dealloc
{
  [(_SFSingleBookmarkNavigationController *)self _releaseBookmarkLockIfNeeded];
  v3.receiver = self;
  v3.super_class = _SFSingleBookmarkNavigationController;
  [(_SFSingleBookmarkNavigationController *)&v3 dealloc];
}

- (id)addBookmarkWithTitle:(id)a3 address:(id)a4 parentBookmark:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69E20F0];
  v10 = a4;
  v11 = a3;
  v12 = [v9 alloc];
  v13 = [(WebBookmarkCollection *)self->_collection configuration];
  v14 = [v12 initWithTitle:v11 address:v10 collectionType:{objc_msgSend(v13, "collectionType")}];

  collection = self->_collection;
  v16 = v8;
  if (!v8)
  {
    v16 = [(_SFSingleBookmarkNavigationController *)self _lastSelectedFolder];
  }

  -[WebBookmarkCollection moveBookmark:toFolderWithID:](collection, "moveBookmark:toFolderWithID:", v14, [v16 identifier]);
  if (v8)
  {
    [(_SFBookmarkInfoViewController *)self->_infoViewController setBookmark:v14];
  }

  else
  {

    [(_SFBookmarkInfoViewController *)self->_infoViewController setBookmark:v14];
    [(_SFBookmarkInfoViewController *)self->_infoViewController updateLastSelectedSyntheticFolder];
  }

  return v14;
}

- (void)_willResignActive
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Application will resign active, single bookmark navigation controller unlocking bookmarks if needed", v4, 2u);
  }

  self->_needsBookmarksLockOnAppResume = self->_bookmarkCollectionLocked;
  [(_SFSingleBookmarkNavigationController *)self _releaseBookmarkLockIfNeeded];
}

- (void)_didBecomeActive
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Application did become active, single bookmark navigation controller locking bookmarks if needed", v4, 2u);
  }

  if (self->_needsBookmarksLockOnAppResume)
  {
    [(_SFSingleBookmarkNavigationController *)self prepareForPresentationForAddingBookmark:0];
  }

  self->_needsBookmarksLockOnAppResume = 0;
}

- (void)_releaseBookmarkLockIfNeeded
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Single bookmark navigation controller unlocking bookmarks", v4, 2u);
  }

  if (self->_bookmarkCollectionLocked)
  {
    [MEMORY[0x1E69E20F8] unlockSync];
    self->_bookmarkCollectionLocked = 0;
  }

  [MEMORY[0x1E69E20F8] unholdLockSync:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(_SFSingleBookmarkNavigationController *)self _releaseBookmarkLockIfNeeded];
  v6.receiver = self;
  v6.super_class = _SFSingleBookmarkNavigationController;
  [(_SFSingleBookmarkNavigationController *)&v6 viewDidDisappear:v3];
  if (!self->_delegateNotifiedOfResult)
  {
    WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);
    [WeakRetained addBookmarkNavController:self didFinishWithResult:0 bookmark:0];
  }
}

- (BOOL)prepareForPresentationForAddingBookmark:(BOOL)a3
{
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Single bookmark navigation controller preparing for presentation for adding bookmark", v9, 2u);
  }

  v6 = [MEMORY[0x1E69B1AC8] sharedCoordinator];
  [v6 unlockBookmarksIfNeeded];

  [MEMORY[0x1E69E20F8] holdLockSync:self];
  if (!self->_bookmarkCollectionLocked && ([MEMORY[0x1E69E20F8] isLockedSync] & 1) == 0)
  {
    self->_bookmarkCollectionLocked = [MEMORY[0x1E69E20F8] lockSync];
  }

  return a3 || self->_bookmarkCollectionLocked;
}

- (void)bookmarkInfoViewController:(id)a3 didFinishWithResult:(BOOL)a4
{
  v4 = a4;
  self->_delegateNotifiedOfResult = 1;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);
  v7 = [v6 bookmark];

  [WeakRetained addBookmarkNavController:self didFinishWithResult:v4 bookmark:v7];
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    [(_SFSingleBookmarkNavigationController *)self dismissViewControllerAnimated:1 completion:0];
    v8 = 0;
  }
}

- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);
  LOBYTE(v3) = [WeakRetained addBookmarkNavControllerCanSaveBookmarkChanges:v3];

  return v3;
}

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);

  return WeakRetained;
}

- (_SFSingleBookmarkNavigationControllerDelegate)bookmarkNavDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);

  return WeakRetained;
}

- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);

  return WeakRetained;
}

@end