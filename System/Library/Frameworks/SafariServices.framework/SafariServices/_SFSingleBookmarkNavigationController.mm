@interface _SFSingleBookmarkNavigationController
- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)changes;
- (BOOL)prepareForPresentationForAddingBookmark:(BOOL)bookmark;
- (_SFSingleBookmarkNavigationControllerDelegate)bookmarkNavDelegate;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)_initWithBookmark:(id)bookmark childBookmarks:(id)bookmarks inCollection:(id)collection withSyntheticFolder:(id)folder addingBookmark:(BOOL)addingBookmark toFavorites:(BOOL)favorites;
- (id)addBookmarkWithTitle:(id)title address:(id)address parentBookmark:(id)bookmark;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller;
- (void)_didBecomeActive;
- (void)_releaseBookmarkLockIfNeeded;
- (void)_willResignActive;
- (void)bookmarkInfoViewController:(id)controller didFinishWithResult:(BOOL)result;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation _SFSingleBookmarkNavigationController

- (id)_initWithBookmark:(id)bookmark childBookmarks:(id)bookmarks inCollection:(id)collection withSyntheticFolder:(id)folder addingBookmark:(BOOL)addingBookmark toFavorites:(BOOL)favorites
{
  favoritesCopy = favorites;
  addingBookmarkCopy = addingBookmark;
  bookmarkCopy = bookmark;
  bookmarksCopy = bookmarks;
  collectionCopy = collection;
  folderCopy = folder;
  objc_storeStrong(&self->_collection, collection);
  if ([bookmarksCopy count])
  {
    v18 = objc_alloc(MEMORY[0x1E69E20F0]);
    [(_SFSingleBookmarkNavigationController *)self _lastSelectedFolder];
    v35 = bookmarksCopy;
    v19 = folderCopy;
    v20 = addingBookmarkCopy;
    v21 = favoritesCopy;
    v23 = v22 = collectionCopy;
    identifier = [v23 identifier];
    configuration = [(WebBookmarkCollection *)self->_collection configuration];
    v26 = [v18 initFolderWithParentID:identifier collectionType:{objc_msgSend(configuration, "collectionType")}];

    collectionCopy = v22;
    favoritesCopy = v21;
    addingBookmarkCopy = v20;
    folderCopy = v19;
    bookmarksCopy = v35;
    v27 = _WBSLocalizedString();
    [v26 setTitle:v27];

    bookmarkCopy = v26;
  }

  v28 = [[_SFBookmarkInfoViewController alloc] initWithBookmark:bookmarkCopy childBookmarks:bookmarksCopy inCollection:collectionCopy addingBookmark:addingBookmarkCopy toFavorites:favoritesCopy willBeDisplayedModally:1];
  v29 = v28;
  if (folderCopy)
  {
    [(_SFBookmarkInfoViewController *)v28 setParent:0 syntheticParentFolder:folderCopy];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v31 selector:sel__willResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    [defaultCenter addObserver:v31 selector:sel__didBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
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

- (id)addBookmarkWithTitle:(id)title address:(id)address parentBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v9 = MEMORY[0x1E69E20F0];
  addressCopy = address;
  titleCopy = title;
  v12 = [v9 alloc];
  configuration = [(WebBookmarkCollection *)self->_collection configuration];
  v14 = [v12 initWithTitle:titleCopy address:addressCopy collectionType:{objc_msgSend(configuration, "collectionType")}];

  collection = self->_collection;
  _lastSelectedFolder = bookmarkCopy;
  if (!bookmarkCopy)
  {
    _lastSelectedFolder = [(_SFSingleBookmarkNavigationController *)self _lastSelectedFolder];
  }

  -[WebBookmarkCollection moveBookmark:toFolderWithID:](collection, "moveBookmark:toFolderWithID:", v14, [_lastSelectedFolder identifier]);
  if (bookmarkCopy)
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(_SFSingleBookmarkNavigationController *)self _releaseBookmarkLockIfNeeded];
  v6.receiver = self;
  v6.super_class = _SFSingleBookmarkNavigationController;
  [(_SFSingleBookmarkNavigationController *)&v6 viewDidDisappear:disappearCopy];
  if (!self->_delegateNotifiedOfResult)
  {
    WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);
    [WeakRetained addBookmarkNavController:self didFinishWithResult:0 bookmark:0];
  }
}

- (BOOL)prepareForPresentationForAddingBookmark:(BOOL)bookmark
{
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Single bookmark navigation controller preparing for presentation for adding bookmark", v9, 2u);
  }

  mEMORY[0x1E69B1AC8] = [MEMORY[0x1E69B1AC8] sharedCoordinator];
  [mEMORY[0x1E69B1AC8] unlockBookmarksIfNeeded];

  [MEMORY[0x1E69E20F8] holdLockSync:self];
  if (!self->_bookmarkCollectionLocked && ([MEMORY[0x1E69E20F8] isLockedSync] & 1) == 0)
  {
    self->_bookmarkCollectionLocked = [MEMORY[0x1E69E20F8] lockSync];
  }

  return bookmark || self->_bookmarkCollectionLocked;
}

- (void)bookmarkInfoViewController:(id)controller didFinishWithResult:(BOOL)result
{
  resultCopy = result;
  self->_delegateNotifiedOfResult = 1;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);
  bookmark = [controllerCopy bookmark];

  [WeakRetained addBookmarkNavController:self didFinishWithResult:resultCopy bookmark:bookmark];
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    [(_SFSingleBookmarkNavigationController *)self dismissViewControllerAnimated:1 completion:0];
    v8 = 0;
  }
}

- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)changes
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_bookmarkNavDelegate);
  LOBYTE(selfCopy) = [WeakRetained addBookmarkNavControllerCanSaveBookmarkChanges:selfCopy];

  return selfCopy;
}

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller
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