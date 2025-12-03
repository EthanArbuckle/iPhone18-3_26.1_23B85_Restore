@interface SFBookmarkUtility
- (SFBookmarkUtility)initWithCollection:(id)collection syntheticBookmarkProvider:(id)provider;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)saveBookmark:(id)bookmark children:(id)children inFolder:(id)folder;
- (id)saveBookmark:(id)bookmark inSyntheticFolder:(id)folder;
@end

@implementation SFBookmarkUtility

- (SFBookmarkUtility)initWithCollection:(id)collection syntheticBookmarkProvider:(id)provider
{
  collectionCopy = collection;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = SFBookmarkUtility;
  v9 = [(SFBookmarkUtility *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    objc_storeWeak(&v10->_syntheticBookmarkProvider, providerCopy);
    v11 = v10;
  }

  return v10;
}

- (id)saveBookmark:(id)bookmark children:(id)children inFolder:(id)folder
{
  v44 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  childrenCopy = children;
  folderCopy = folder;
  if ([bookmarkCopy subtype] == 1)
  {
    uUID = [bookmarkCopy UUID];
    v12 = objc_alloc(MEMORY[0x1E69E20F0]);
    title = [bookmarkCopy title];
    address = [bookmarkCopy address];
    identifier = [folderCopy identifier];
    configuration = [(WebBookmarkCollection *)self->_collection configuration];
    v17 = [v12 initWithTitle:title address:address parentID:identifier collectionType:{objc_msgSend(configuration, "collectionType")}];

    v18 = uUID;
  }

  else
  {
    v17 = bookmarkCopy;
    v18 = 0;
  }

  isLockedSync = [MEMORY[0x1E69E20F8] isLockedSync];
  if ((isLockedSync & 1) != 0 || ([MEMORY[0x1E69E20F8] lockSync] & 1) != 0 || (objc_msgSend(v17, "isInserted") & 1) != 0 || (objc_msgSend(MEMORY[0x1E69B1B18], "sharedFeatureManager"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isInMemoryBookmarkChangeTrackingAvailable"), v19, (v20 & 1) == 0))
  {
    identifier2 = [folderCopy identifier];
    if (identifier2 != [v17 parentID])
    {
      -[WebBookmarkCollection moveBookmark:toFolderWithID:](self->_collection, "moveBookmark:toFolderWithID:", v17, [folderCopy identifier]);
    }

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  if (([(WebBookmarkCollection *)self->_collection shouldFetchIconForBookmark:v17]& 1) == 0)
  {
    [v17 setIconData:0];
    [v17 _sf_setIconKeyColor:0];
    [v17 setFetchedIconData:0];
  }

  collection = self->_collection;
  v38 = bookmarkCopy;
  if (v21)
  {
    -[WebBookmarkCollection addBookmarkInMemory:toFolderWithID:](collection, "addBookmarkInMemory:toFolderWithID:", v17, [folderCopy identifier]);
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didAddNumberOfBookmarksInMemory:{objc_msgSend(childrenCopy, "count") + 1}];
  }

  else
  {
    [(WebBookmarkCollection *)collection saveBookmark:v17];
  }

  v37 = folderCopy;
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);
    [WeakRetained deleteScopedBookmarkWithUUID:v18 completionHandler:0];
  }

  v26 = v18;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = childrenCopy;
  v28 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v39 + 1) + 8 * i);
        v33 = self->_collection;
        identifier3 = [v17 identifier];
        if (v21)
        {
          [(WebBookmarkCollection *)v33 addBookmarkInMemory:v32 toFolderWithID:identifier3];
        }

        else
        {
          [(WebBookmarkCollection *)v33 saveAndMoveBookmark:v32 toFolderID:identifier3];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v29);
  }

  if (((isLockedSync | v21) & 1) == 0)
  {
    [MEMORY[0x1E69E20F8] unlockSync];
  }

  return v17;
}

- (id)saveBookmark:(id)bookmark inSyntheticFolder:(id)folder
{
  bookmarkCopy = bookmark;
  folderCopy = folder;
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);
  bookmarkList = [folderCopy bookmarkList];

  folderID = [bookmarkList folderID];
  subtype = [bookmarkCopy subtype];
  if (subtype == 1 && [bookmarkCopy parentID] == folderID)
  {
    uUID = [bookmarkCopy UUID];
    title = [bookmarkCopy title];
    address = [bookmarkCopy address];
    [WeakRetained updateScopedBookmarkWithUUID:uUID title:title address:address];

    v15 = bookmarkCopy;
  }

  else
  {
    v23 = bookmarkList;
    v16 = objc_alloc(MEMORY[0x1E69E20F0]);
    title2 = [bookmarkCopy title];
    address2 = [bookmarkCopy address];
    deviceIdentifier = [WeakRetained deviceIdentifier];
    configuration = [(WebBookmarkCollection *)self->_collection configuration];
    v15 = [v16 initWithTitle:title2 address:address2 parentID:folderID subtype:1 deviceIdentifier:deviceIdentifier collectionType:{objc_msgSend(configuration, "collectionType")}];

    [WeakRetained insertPerTabGroupBookmark:v15 inPerTabGroupBookmarkFolderWithID:folderID];
    if (subtype == 1)
    {
      uUID2 = [bookmarkCopy UUID];
      [WeakRetained deleteScopedBookmarkWithUUID:uUID2 completionHandler:0];
    }

    else if ([bookmarkCopy isInserted])
    {
      [(WebBookmarkCollection *)self->_collection deleteBookmark:bookmarkCopy];
    }

    bookmarkList = v23;
  }

  return v15;
}

- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);

  return WeakRetained;
}

@end