@interface SFBookmarkUtility
- (SFBookmarkUtility)initWithCollection:(id)a3 syntheticBookmarkProvider:(id)a4;
- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider;
- (id)saveBookmark:(id)a3 children:(id)a4 inFolder:(id)a5;
- (id)saveBookmark:(id)a3 inSyntheticFolder:(id)a4;
@end

@implementation SFBookmarkUtility

- (SFBookmarkUtility)initWithCollection:(id)a3 syntheticBookmarkProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SFBookmarkUtility;
  v9 = [(SFBookmarkUtility *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    objc_storeWeak(&v10->_syntheticBookmarkProvider, v8);
    v11 = v10;
  }

  return v10;
}

- (id)saveBookmark:(id)a3 children:(id)a4 inFolder:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 subtype] == 1)
  {
    v11 = [v8 UUID];
    v12 = objc_alloc(MEMORY[0x1E69E20F0]);
    v13 = [v8 title];
    v14 = [v8 address];
    v15 = [v10 identifier];
    v16 = [(WebBookmarkCollection *)self->_collection configuration];
    v17 = [v12 initWithTitle:v13 address:v14 parentID:v15 collectionType:{objc_msgSend(v16, "collectionType")}];

    v18 = v11;
  }

  else
  {
    v17 = v8;
    v18 = 0;
  }

  v36 = [MEMORY[0x1E69E20F8] isLockedSync];
  if ((v36 & 1) != 0 || ([MEMORY[0x1E69E20F8] lockSync] & 1) != 0 || (objc_msgSend(v17, "isInserted") & 1) != 0 || (objc_msgSend(MEMORY[0x1E69B1B18], "sharedFeatureManager"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isInMemoryBookmarkChangeTrackingAvailable"), v19, (v20 & 1) == 0))
  {
    v22 = [v10 identifier];
    if (v22 != [v17 parentID])
    {
      -[WebBookmarkCollection moveBookmark:toFolderWithID:](self->_collection, "moveBookmark:toFolderWithID:", v17, [v10 identifier]);
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
  v38 = v8;
  if (v21)
  {
    -[WebBookmarkCollection addBookmarkInMemory:toFolderWithID:](collection, "addBookmarkInMemory:toFolderWithID:", v17, [v10 identifier]);
    v24 = [MEMORY[0x1E69C8810] sharedLogger];
    [v24 didAddNumberOfBookmarksInMemory:{objc_msgSend(v9, "count") + 1}];
  }

  else
  {
    [(WebBookmarkCollection *)collection saveBookmark:v17];
  }

  v37 = v10;
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
  v27 = v9;
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
        v34 = [v17 identifier];
        if (v21)
        {
          [(WebBookmarkCollection *)v33 addBookmarkInMemory:v32 toFolderWithID:v34];
        }

        else
        {
          [(WebBookmarkCollection *)v33 saveAndMoveBookmark:v32 toFolderID:v34];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v29);
  }

  if (((v36 | v21) & 1) == 0)
  {
    [MEMORY[0x1E69E20F8] unlockSync];
  }

  return v17;
}

- (id)saveBookmark:(id)a3 inSyntheticFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);
  v9 = [v7 bookmarkList];

  v10 = [v9 folderID];
  v11 = [v6 subtype];
  if (v11 == 1 && [v6 parentID] == v10)
  {
    v12 = [v6 UUID];
    v13 = [v6 title];
    v14 = [v6 address];
    [WeakRetained updateScopedBookmarkWithUUID:v12 title:v13 address:v14];

    v15 = v6;
  }

  else
  {
    v23 = v9;
    v16 = objc_alloc(MEMORY[0x1E69E20F0]);
    v17 = [v6 title];
    v18 = [v6 address];
    v19 = [WeakRetained deviceIdentifier];
    v20 = [(WebBookmarkCollection *)self->_collection configuration];
    v15 = [v16 initWithTitle:v17 address:v18 parentID:v10 subtype:1 deviceIdentifier:v19 collectionType:{objc_msgSend(v20, "collectionType")}];

    [WeakRetained insertPerTabGroupBookmark:v15 inPerTabGroupBookmarkFolderWithID:v10];
    if (v11 == 1)
    {
      v21 = [v6 UUID];
      [WeakRetained deleteScopedBookmarkWithUUID:v21 completionHandler:0];
    }

    else if ([v6 isInserted])
    {
      [(WebBookmarkCollection *)self->_collection deleteBookmark:v6];
    }

    v9 = v23;
  }

  return v15;
}

- (_SFSyntheticBookmarkProvider)syntheticBookmarkProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_syntheticBookmarkProvider);

  return WeakRetained;
}

@end