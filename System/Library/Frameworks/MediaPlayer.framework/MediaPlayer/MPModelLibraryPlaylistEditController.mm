@interface MPModelLibraryPlaylistEditController
- (BOOL)_isLastEntry:(id)a3;
- (BOOL)isRedoAvailable;
- (BOOL)isUndoAvailable;
- (MPModelPlaylist)parentPlaylist;
- (MPSectionedCollection)currentTrackList;
- (NSArray)initialTrackList;
- (NSNumber)isCuratorPlaylist;
- (NSNumber)isPublicPlaylist;
- (NSNumber)isVisiblePlaylist;
- (NSString)coverArtworkRecipe;
- (NSString)descriptionText;
- (NSString)editSessionID;
- (NSString)name;
- (UIImage)userImage;
- (id)_currentPlaylist;
- (id)_currentTrackList;
- (id)_defaultPlaylistEntryPropertySet;
- (id)_initWithLibrary:(id)a3 playlist:(id)a4 initialTrackList:(id)a5 initialItemList:(id)a6 playlistProperties:(id)a7 playlistEntryProperties:(id)a8 authorProfile:(id)a9;
- (id)_itemIdentifierForIndexPath:(id)a3 usingExclusiveAccessToken:(id)a4;
- (id)_movePlaylistEntry:(id)a3 afterEntry:(id)a4;
- (id)_newDataSourceForModelObjects:(id)a3;
- (id)_removeAllPlaylistEntries;
- (id)_removePlaylistEntries:(id)a3;
- (id)_sectionIdentifierForItemIdentifier:(id)a3;
- (id)_setPlaylistName:(id)a3;
- (id)debugDescriptionForItem:(id)a3 inSection:(id)a4;
- (id)movePlaylistEntry:(id)a3 afterEntry:(id)a4;
- (id)performTransactionWithBlock:(id)a3;
- (id)performTransactionWithIdentifier:(id)a3 block:(id)a4;
- (id)removeAllPlaylistEntries;
- (id)removePlaylistEntries:(id)a3;
- (id)removePlaylistEntry:(id)a3;
- (id)setPlaylistName:(id)a3;
- (id)transactionsSinceIdentifier:(id)a3;
- (void)_applyChanges:(id)a3 toTransaction:(id)a4 completion:(id)a5;
- (void)_createTrackIdentifierListWithInitialEntries:(id)a3 initialObjects:(id)a4 completion:(id)a5;
- (void)_endTransactionCommittingChanges:(BOOL)a3;
- (void)_insertObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)_logEditorState;
- (void)_resolveTrackListWithCompletion:(id)a3;
- (void)_startNewTransaction;
- (void)_startTransactionWithIdentifier:(id)a3;
- (void)appendItem:(id)a3 completion:(id)a4;
- (void)appendItems:(id)a3 completion:(id)a4;
- (void)appendObject:(id)a3 completion:(id)a4;
- (void)appendObjects:(id)a3 completion:(id)a4;
- (void)applyChanges:(id)a3 completion:(id)a4;
- (void)beginEditingWithCompletion:(id)a3;
- (void)commitWithCompletion:(id)a3;
- (void)insertItem:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)insertItem:(id)a3 atIndexPath:(id)a4 completion:(id)a5;
- (void)insertItemAtStart:(id)a3 completion:(id)a4;
- (void)insertItems:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)insertItems:(id)a3 atIndexPath:(id)a4 completion:(id)a5;
- (void)insertItemsAtStart:(id)a3 completion:(id)a4;
- (void)insertObject:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)insertObjectAtStart:(id)a3 completion:(id)a4;
- (void)insertObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)insertObjectsAtStart:(id)a3 completion:(id)a4;
- (void)moveEntry:(id)a3 afterEntry:(id)a4;
- (void)moveEntryToStart:(id)a3;
- (void)moveItemFromIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)redoNextTransactionWithCompletion:(id)a3;
- (void)removeEntries:(id)a3;
- (void)removeEntry:(id)a3;
- (void)removeItemAtIndexPath:(id)a3;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidChangeItems:(id)a4 inSection:(id)a5;
- (void)setCoverArtworkRecipe:(id)a3;
- (void)setCuratorPlaylist:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setEditSessionID:(id)a3;
- (void)setInitialTrackList:(id)a3;
- (void)setParentPlaylist:(id)a3;
- (void)setPublicPlaylist:(id)a3;
- (void)setUserImage:(id)a3;
- (void)setVisiblePlaylist:(id)a3;
- (void)undoPreviousTransactionWithCompletion:(id)a3;
@end

@implementation MPModelLibraryPlaylistEditController

- (void)_logEditorState
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MPSectionedIdentifierList *)self->_trackIdentifierList itemCount];
  v5 = [(NSMutableArray *)self->_completedTransactions count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_completedTransactions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) changes];
        v9 += [v12 count];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v24 = self;
    v25 = 2048;
    v26 = v4;
    v27 = 2048;
    v28 = v5;
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ [Editor State] Summary: %lu tracks, %lu transaction(s) containing %lu change(s) \n", buf, 0x2Au);
  }

  if (v4 <= 0x1F4)
  {
    v14 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MPSectionedIdentifierList *)self->_trackIdentifierList debugDescription];
      *buf = 138543618;
      v24 = self;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ [Editor State] Track List:\n%{public}@\n", buf, 0x16u);
    }
  }

  if (v9 <= 0x1F4)
  {
    v16 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      lastAppliedTransactionIndex = self->_lastAppliedTransactionIndex;
      completedTransactions = self->_completedTransactions;
      *buf = 138543874;
      v24 = self;
      v25 = 2048;
      v26 = lastAppliedTransactionIndex;
      v27 = 2114;
      v28 = completedTransactions;
      _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ [Editor State] Changes (--> [%ld]): %{public}@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_currentPlaylist
{
  v3 = self->_playlist;
  if (v3)
  {
    v4 = v3;
    playlist = self->_playlist;
    v6 = [(MPModelObject *)playlist identifiers];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__MPModelLibraryPlaylistEditController__currentPlaylist__block_invoke_3;
    v12[3] = &unk_1E767C0A8;
    v12[4] = self;
    v7 = [(MPModelObject *)playlist copyWithIdentifiers:v6 block:v12];
  }

  else
  {
    v8 = [MPModelPlaylist alloc];
    v9 = [MPIdentifierSet alloc];
    v6 = +[MPModelPlaylistKind identityKind];
    v4 = [(MPIdentifierSet *)v9 initWithSource:@"com.apple.MediaPlayer.MPModelLibraryPlaylistEditController" modelKind:v6 block:&__block_literal_global_141];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__MPModelLibraryPlaylistEditController__currentPlaylist__block_invoke_2;
    v13[3] = &unk_1E767BF38;
    v13[4] = self;
    v7 = [(MPModelObject *)v8 initWithIdentifiers:v4 block:v13];
  }

  v10 = v7;

  return v10;
}

void __56__MPModelLibraryPlaylistEditController__currentPlaylist__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 168))
  {
    v5 = *(*(a1 + 32) + 168);
  }

  else
  {
    v5 = &stru_1F149ECA8;
  }

  [v3 setName:v5];
  if (*(*(a1 + 32) + 176))
  {
    v6 = *(*(a1 + 32) + 176);
  }

  else
  {
    v6 = &stru_1F149ECA8;
  }

  [v4 setDescriptionText:v6];
  if (*(*(a1 + 32) + 224))
  {
    v7 = *(*(a1 + 32) + 224);
  }

  else
  {
    v7 = &stru_1F149ECA8;
  }

  [v4 setCoverArtworkRecipe:v7];
  [v4 setPublicPlaylist:{objc_msgSend(*(*(a1 + 32) + 200), "BOOLValue")}];
  [v4 setVisiblePlaylist:{objc_msgSend(*(*(a1 + 32) + 208), "BOOLValue")}];
  [v4 setCuratorPlaylist:{objc_msgSend(*(*(a1 + 32) + 216), "BOOLValue")}];
  [v4 setEditSessionID:*(*(a1 + 32) + 232)];
  [v4 setOwner:1];
  [v4 setUserEditableComponents:3];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"MPModelPropertyPlaylistName", @"MPModelPropertyPlaylistDescriptionText", @"MPModelPropertyPlaylistCoverArtworkRecipe", @"MPModelPropertyPlaylistPublicPlaylist", @"MPModelPropertyPlaylistVisiblePlaylist", @"MPModelPropertyPlaylistCuratorPlaylist", @"MPModelPropertyPlaylistEditSessionID", @"MPModelPropertyPlaylistIsOwner", @"MPModelPropertyPlaylistUserEditableComponents", 0}];
  v9 = [*(*(a1 + 32) + 72) properties];
  v10 = [v9 mutableCopy];

  [v10 minusSet:v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v4 setValue:0 forModelKey:*(*(&v16 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

void __56__MPModelLibraryPlaylistEditController__currentPlaylist__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (v4[21])
  {
    [v3 setName:?];
    v4 = *(a1 + 32);
  }

  if (v4[22])
  {
    [v9 setDescriptionText:?];
    v4 = *(a1 + 32);
  }

  if (v4[28])
  {
    [v9 setCoverArtworkRecipe:?];
    v4 = *(a1 + 32);
  }

  v5 = v4[25];
  if (v5)
  {
    [v9 setPublicPlaylist:{objc_msgSend(v5, "BOOLValue")}];
    v4 = *(a1 + 32);
  }

  v6 = v4[26];
  if (v6)
  {
    [v9 setVisiblePlaylist:{objc_msgSend(v6, "BOOLValue")}];
    v4 = *(a1 + 32);
  }

  v7 = v4[27];
  if (v7)
  {
    [v9 setCuratorPlaylist:{objc_msgSend(v7, "BOOLValue")}];
    v4 = *(a1 + 32);
  }

  v8 = v9;
  if (v4[29])
  {
    [v9 setEditSessionID:?];
    v8 = v9;
  }
}

- (void)_endTransactionCommittingChanges:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_currentTransaction)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditController.m" lineNumber:1737 description:@"No current transaction to end"];
  }

  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentTransaction = self->_currentTransaction;
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = currentTransaction;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Ending transaction %{public}@", &v12, 0x16u);
  }

  if (v3)
  {
    lastAppliedTransactionIndex = self->_lastAppliedTransactionIndex;
    if (lastAppliedTransactionIndex != [(NSMutableArray *)self->_completedTransactions count]- 1)
    {
      v8 = self->_lastAppliedTransactionIndex;
      if (v8 < 0)
      {
        [(NSMutableArray *)self->_completedTransactions removeAllObjects];
      }

      else
      {
        [(NSMutableArray *)self->_completedTransactions removeObjectsInRange:v8 + 1, [(NSMutableArray *)self->_completedTransactions count]- (v8 + 1)];
      }
    }

    [(NSMutableArray *)self->_completedTransactions addObject:self->_currentTransaction];
    self->_lastAppliedTransactionIndex = [(NSMutableArray *)self->_completedTransactions count]- 1;
  }

  v9 = self->_currentTransaction;
  self->_currentTransaction = 0;
}

- (void)_startTransactionWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_currentTransaction)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditController.m" lineNumber:1731 description:@"Already have a transaction started"];
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting new transaction %{public}@", &v10, 0x16u);
  }

  v7 = [[MPModelLibraryPlaylistEditTransactionDetails alloc] initWithIdentifier:v5];
  currentTransaction = self->_currentTransaction;
  self->_currentTransaction = v7;
}

- (void)_startNewTransaction
{
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v5 UUIDString];
  v4 = [v3 lowercaseString];
  [(MPModelLibraryPlaylistEditController *)self _startTransactionWithIdentifier:v4];
}

- (id)_currentTrackList
{
  v3 = objc_alloc_init(MPMutableSectionedCollection);
  v4 = [(MPModelLibraryPlaylistEditController *)self _currentPlaylist];
  [(MPMutableSectionedCollection *)v3 appendSection:v4];

  trackIdentifierList = self->_trackIdentifierList;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MPModelLibraryPlaylistEditController__currentTrackList__block_invoke;
  v10[3] = &unk_1E767BF10;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [(MPSectionedIdentifierList *)trackIdentifierList performWithExclusiveAccess:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __57__MPModelLibraryPlaylistEditController__currentTrackList__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 64) enumeratorWithOptions:0x1000000 startPosition:0 endPosition:0 withExclusiveAccessToken:v3];
  v5 = [v4 nextObjectWithExclusiveAccessToken:v3];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    *&v6 = 138543618;
    v17 = v6;
    do
    {
      if ([v7 entryType] == 3)
      {
        v9 = [v7 itemResult];
        v10 = [v9 itemIdentifier];

        v11 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11;
          if (![v11 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPosition"]|| v8 != [v12 position])
          {
            v13 = [v12 identifiers];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __57__MPModelLibraryPlaylistEditController__currentTrackList__block_invoke_131;
            v18[3] = &__block_descriptor_40_e30_v16__0__MPModelPlaylistEntry_8l;
            v18[4] = v8;
            v14 = [v12 copyWithIdentifiers:v13 block:v18];

            v12 = v14;
          }

          [*(a1 + 40) appendItem:v12];
          ++v8;
        }

        else
        {
          v12 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = *(a1 + 32);
            *buf = v17;
            v20 = v15;
            v21 = 2112;
            v22 = v10;
            _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "%{public}@ No playlist entry for identifier '%@' - skipping", buf, 0x16u);
          }
        }
      }

      v16 = [v4 nextObjectWithExclusiveAccessToken:v3];

      v7 = v16;
    }

    while (v16);
  }
}

- (id)_setPlaylistName:(id)a3
{
  v4 = a3;
  currentTransaction = self->_currentTransaction;
  if (!currentTransaction)
  {
    [(MPModelLibraryPlaylistEditController *)self _startNewTransaction];
  }

  newName = self->_newName;
  if (newName)
  {
    v7 = newName;
  }

  else
  {
    v7 = [(MPModelPlaylist *)self->_playlist name];
  }

  v8 = v7;
  v9 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:6];
  [(MPModelLibraryPlaylistEditChangeDetails *)v9 setPlaylistName:v4];
  [(MPModelLibraryPlaylistEditChangeDetails *)v9 setPreviousPlaylistName:v8];
  [(MPModelLibraryPlaylistEditTransactionDetails *)self->_currentTransaction addChange:v9];
  v10 = [v4 copy];
  v11 = self->_newName;
  self->_newName = v10;

  v12 = self->_currentTransaction;
  if (!currentTransaction)
  {
    [(MPModelLibraryPlaylistEditController *)self _endTransactionCommittingChanges:1];
  }

  return v12;
}

- (void)_resolveTrackListWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPModelLibraryPlaylistEditController *)self _currentTrackList];
  v6 = objc_alloc_init(MPMutableSectionedCollection);
  [(MPMutableSectionedCollection *)v6 appendSection:&stru_1F149ECA8];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "totalItemCount")}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke;
  v20[3] = &unk_1E767BE50;
  v20[4] = self;
  v8 = v5;
  v21 = v8;
  v9 = v6;
  v22 = v9;
  v10 = v7;
  v23 = v10;
  [v8 enumerateItemIdentifiersUsingBlock:v20];
  if ([(MPSectionedCollection *)v9 totalItemCount])
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MPSectionedCollection *)v9 totalItemCount];
      *buf = 138543874;
      v25 = self;
      v26 = 2048;
      v27 = v12;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Importing %ld non-library tracks: %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc_init(MPModelLibraryImportChangeRequest);
    [(MPModelLibraryImportChangeRequest *)v13 setReferralObject:self->_playlist];
    [(MPModelLibraryImportChangeRequest *)v13 setModelObjects:v9];
    [(MPModelLibraryImportChangeRequest *)v13 setShouldLibraryAdd:self->_addInsertedTracksToLibrary];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_125;
    v15[3] = &unk_1E767BD88;
    v15[4] = self;
    v16 = v13;
    v19 = v4;
    v17 = v8;
    v18 = v10;
    v14 = v13;
    [(MPModelLibraryImportChangeRequest *)v14 performWithResponseHandler:v15];
  }

  else
  {
    (*(v4 + 2))(v4, v8, 0);
  }
}

void __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [v5 library];
  v7 = [v6 containedPersistentID];

  if (!v7)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v8 = [v5 library];
  if ([v8 persistentID])
  {
    v9 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v10 = *(*(a1 + 32) + 240);

  if (v10 == 1)
  {
    v8 = [*(*(a1 + 32) + 32) itemWithPersistentID:v7 verifyExistence:0];
    v11 = [v8 valueForProperty:@"isInMyLibrary"];
    v9 = [v11 BOOLValue] ^ 1;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  v12 = [*(a1 + 40) itemAtIndexPath:v17];
  v13 = v12;
  if (v9)
  {
    v14 = *(a1 + 48);
    v15 = [v12 anyObject];
    [v14 appendItem:v15];
  }

  else
  {
    v16 = *(a1 + 56);
    v15 = [v12 universalIdentifier];
    [v16 setObject:v13 forKey:v15];
  }
}

void __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v31 = v8;
    v32 = 2114;
    v33 = v9;
    v34 = 2114;
    v35 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@ finished with error=%{public}@", buf, 0x20u);
  }

  if (v6)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to import non-library tracks. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_126;
    v27[3] = &unk_1E767BE78;
    v13 = v12;
    v14 = *(a1 + 32);
    v28 = v13;
    v29 = v14;
    [v5 enumerateObjectsUsingBlock:v27];
    v15 = objc_alloc_init(MPMutableSectionedCollection);
    v16 = v15;
    if (*(*(a1 + 32) + 24))
    {
      v17 = *(*(a1 + 32) + 24);
    }

    else
    {
      v17 = &stru_1F149ECA8;
    }

    [(MPMutableSectionedCollection *)v15 appendSection:v17];
    v18 = *(a1 + 48);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_128;
    v21[3] = &unk_1E767BEC8;
    v22 = v18;
    v23 = *(a1 + 56);
    v24 = v13;
    v25 = *(a1 + 32);
    v26 = v16;
    v19 = v16;
    v20 = v13;
    [v22 enumerateItemIdentifiersUsingBlock:v21];
    (*(*(a1 + 64) + 16))();
  }
}

void __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_126(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifiers];
  v5 = [v4 universalStore];
  v6 = [v5 subscriptionAdamID];
  if (v6)
  {
    v7 = v6;

LABEL_4:
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
    [v9 setObject:v3 forKey:v10];
    goto LABEL_5;
  }

  v8 = [v4 universalStore];
  v7 = [v8 adamID];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v11;
    v14 = 2114;
    v15 = v3;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Imported non-library track missing store ID. obj=%{public}@, identifiers=%{public}@", &v12, 0x20u);
  }

LABEL_5:
}

void __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) itemAtIndexPath:a2];
  v7 = [v6 anyObject];
  v8 = [v7 identifiers];

  v9 = *(a1 + 40);
  v10 = [v6 universalIdentifier];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v12 = [v8 universalStore];
    v13 = [v12 subscriptionAdamID];

    if (!v13 || (v14 = *(a1 + 48), v15 = MEMORY[0x1E696AD98], [v8 universalStore], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "numberWithLongLong:", objc_msgSend(v16, "subscriptionAdamID")), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectForKeyedSubscript:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, !v18))
    {
      v19 = [v8 universalStore];
      v20 = [v19 adamID];

      if (!v20 || (v21 = *(a1 + 48), v22 = MEMORY[0x1E696AD98], [v8 universalStore], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "numberWithLongLong:", objc_msgSend(v23, "adamID")), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", v24), v18 = objc_claimAutoreleasedReturnValue(), v24, v23, !v18))
      {
        v11 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 56);
          *buf = 138543874;
          v35 = v29;
          v36 = 2114;
          v37 = v6;
          v38 = 2114;
          v39 = v5;
          _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Couldn't match playlist entry to imported objects. entry=%{public}@, identifiers=%{public}@", buf, 0x20u);
        }

        goto LABEL_3;
      }
    }

    v25 = [MPModelPlaylistEntry alloc];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_129;
    v30[3] = &unk_1E767BEA0;
    v26 = v6;
    v27 = *(a1 + 56);
    v31 = v26;
    v32 = v27;
    v33 = v18;
    v28 = v18;
    v11 = [(MPModelObject *)v25 initWithIdentifiers:v5 block:v30];

    if (!v11)
    {
      goto LABEL_4;
    }
  }

  [*(a1 + 64) appendItem:v11];
LABEL_3:

LABEL_4:
}

void __72__MPModelLibraryPlaylistEditController__resolveTrackListWithCompletion___block_invoke_129(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) universalIdentifier];
  [v3 setUniversalIdentifier:v4];

  v5 = [*(a1 + 32) positionUniversalIdentifier];
  [v3 setPositionUniversalIdentifier:v5];

  [v3 setSocialContributor:*(*(a1 + 40) + 88)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) song];
    v7 = [v6 mergeWithObject:*(a1 + 48)];
    [v3 setSong:v7];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) tvEpisode];
    v7 = [v6 mergeWithObject:*(a1 + 48)];
    [v3 setTvEpisode:v7];
    goto LABEL_5;
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Unsupported model object %{public}@", &v10, 0x16u);
  }

LABEL_6:
}

- (id)_defaultPlaylistEntryPropertySet
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v24[0] = @"MPModelPropertyPersonName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v4 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:0];

  v5 = [MPPropertySet alloc];
  v23[0] = @"MPModelPropertySongTitle";
  v23[1] = @"MPModelPropertySongArtwork";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v21 = @"MPModelRelationshipSongArtist";
  v22 = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v8 = [(MPPropertySet *)v5 initWithProperties:v6 relationships:v7];

  v9 = [MPPropertySet alloc];
  v20[0] = @"MPModelPropertyPersonName";
  v20[1] = @"MPModelPropertySocialPersonHandle";
  v20[2] = @"MPModelPropertySocialPersonArtwork";
  v20[3] = @"MPModelPropertySocialPersonHasLightweightProfile";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v11 = [(MPPropertySet *)v9 initWithProperties:v10 relationships:0];

  v12 = [MPPropertySet alloc];
  v19[0] = @"MPModelPropertyPlaylistEntryUniversalIdentifier";
  v19[1] = @"MPModelPropertyPlaylistEntryPositionUniversalIdentifier";
  v19[2] = @"MPModelPropertyPlaylistEntryPosition";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v17[0] = @"MPModelRelationshipPlaylistEntrySong";
  v17[1] = @"MPModelRelationshipPlaylistEntrySocialContributor";
  v18[0] = v8;
  v18[1] = v11;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [(MPPropertySet *)v12 initWithProperties:v13 relationships:v14];

  return v15;
}

- (id)_sectionIdentifierForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPSectionedIdentifierList *)self->_trackIdentifierList allSectionIdentifiers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__MPModelLibraryPlaylistEditController__sectionIdentifierForItemIdentifier___block_invoke;
  v9[3] = &unk_1E767BE28;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 msv_firstWhere:v9];

  return v7;
}

uint64_t __76__MPModelLibraryPlaylistEditController__sectionIdentifierForItemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 64) hasItem:*(a1 + 40) inSection:v3])
  {
    v4 = [*(*(a1 + 32) + 64) isDeletedItem:*(a1 + 40) inSection:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_newDataSourceForModelObjects:(id)a3
{
  v5 = a3;
  v6 = [(MPModelLibraryPlaylistEditController *)self _defaultPlaylistEntryPropertySet];
  v7 = [v6 propertySetByCombiningWithPropertySet:self->_playlistEntryProperties];

  v8 = [v5 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = [v5 firstObject];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      v14 = [MPModelLibraryPlaylistEditPlaylistDataSource alloc];
      library = self->_library;
      v16 = [v5 firstObject];
      v11 = [(MPModelLibraryPlaylistEditPlaylistDataSource *)v14 initWithLibrary:library playlist:v16 initialTrackList:0 playlistEntryProperties:v7];
    }

    else
    {
      v17 = [v5 firstObject];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        v24 = [v5 firstObject];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if ((v25 & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AAA8] currentHandler];
          v27 = [v5 firstObject];
          [v26 handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditController.m" lineNumber:1532 description:{@"Unsupported model object %@", v27}];

          v11 = 0;
          goto LABEL_9;
        }

        v10 = [[MPModelLibraryPlaylistEditPlaylistEntryDataSource alloc] initWithPlaylistEntries:v5];
        goto LABEL_3;
      }

      v19 = [v7 relationships];
      v16 = [v19 objectForKey:@"MPModelRelationshipPlaylistEntrySong"];

      v20 = [MPModelLibraryPlaylistEditAlbumDataSource alloc];
      v21 = self->_library;
      v22 = [v5 firstObject];
      v11 = [(MPModelLibraryPlaylistEditAlbumDataSource *)v20 initWithLibrary:v21 album:v22 trackProperties:v16 authorProfile:self->_authorProfile];
    }

    goto LABEL_9;
  }

  v10 = [[MPModelLibraryPlaylistEditTrackDataSource alloc] initWithTrackObjects:v5 authorProfile:self->_authorProfile];
LABEL_3:
  v11 = v10;
LABEL_9:

  return v11;
}

- (id)_itemIdentifierForIndexPath:(id)a3 usingExclusiveAccessToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 item];
  v10 = [(MPSectionedIdentifierList *)self->_trackIdentifierList enumeratorWithOptions:0x1000000 startPosition:0 endPosition:0 withExclusiveAccessToken:v8];
  v11 = [v10 nextObjectWithExclusiveAccessToken:v8];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = 0;
  while ([v11 entryType] != 3)
  {
LABEL_6:
    v15 = [v10 nextObjectWithExclusiveAccessToken:v8];

    v11 = v15;
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v13 = [v11 itemResult];
  v14 = [v13 itemIdentifier];

  if (v12 != v9)
  {
    ++v12;

    goto LABEL_6;
  }

  if (!v14)
  {
LABEL_7:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditController.m" lineNumber:1511 description:{@"Invalid index path %@", v7}];

    v14 = 0;
  }

  return v14;
}

- (void)_createTrackIdentifierListWithInitialEntries:(id)a3 initialObjects:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(NSMutableDictionary *)self->_dataSources removeAllObjects];
  v11 = [[MPSectionedIdentifierList alloc] initWithIdentifier:@"MPModelLibraryPlaylistEditControllerLibrarySectionIdentifierName"];
  trackIdentifierList = self->_trackIdentifierList;
  self->_trackIdentifierList = v11;

  [(MPSectionedIdentifierList *)self->_trackIdentifierList setDelegate:self];
  [(MPSectionedIdentifierList *)self->_trackIdentifierList setAnnotationDelegate:self];
  v13 = [(MPModelLibraryPlaylistEditController *)self _defaultPlaylistEntryPropertySet];
  v14 = [v13 propertySetByCombiningWithPropertySet:self->_playlistEntryProperties];

  if (v9)
  {
    v15 = [[MPModelLibraryPlaylistEditTrackDataSource alloc] initWithTrackObjects:v9 authorProfile:self->_authorProfile];
  }

  else
  {
    v16 = [MPModelLibraryPlaylistEditPlaylistDataSource alloc];
    library = self->_library;
    v18 = [(MPModelLibraryPlaylistEditController *)self _currentPlaylist];
    v15 = [(MPModelLibraryPlaylistEditPlaylistDataSource *)v16 initWithLibrary:library playlist:v18 initialTrackList:v8 playlistEntryProperties:v14];
  }

  v19 = [(MPModelLibraryPlaylistEditDataSource *)v15 identifier];
  initialDataSourceIdentifier = self->_initialDataSourceIdentifier;
  self->_initialDataSourceIdentifier = v19;

  [(NSMutableDictionary *)self->_dataSources setObject:v15 forKey:self->_initialDataSourceIdentifier];
  objc_initWeak(&location, self);
  v22 = self->_initialDataSourceIdentifier;
  v21 = self->_trackIdentifierList;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__MPModelLibraryPlaylistEditController__createTrackIdentifierListWithInitialEntries_initialObjects_completion___block_invoke;
  v25[3] = &unk_1E767BE00;
  objc_copyWeak(&v28, &location);
  v23 = v15;
  v26 = v23;
  v24 = v10;
  v27 = v24;
  [(MPSectionedIdentifierList *)v21 addDataSourceAtStart:v23 section:v22 completion:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __111__MPModelLibraryPlaylistEditController__createTrackIdentifierListWithInitialEntries_initialObjects_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v5;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to add playlist data source. err=%{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (WeakRetained)
  {
    v6 = [*(a1 + 32) playlistEntriesByIdentifier];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    v8 = v5[12];
    v5[12] = v7;

    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v6, "count")}];
    v10 = v5[17];
    v5[17] = v9;

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v6, "count")}];
    v12 = v5[18];
    v5[18] = v11;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __111__MPModelLibraryPlaylistEditController__createTrackIdentifierListWithInitialEntries_initialObjects_completion___block_invoke_110;
    v18[3] = &unk_1E767BD10;
    v13 = v5;
    v19 = v13;
    [v6 enumerateKeysAndObjectsUsingBlock:v18];
    v14 = [*(a1 + 32) playlistEntries];
    v15 = [v14 lastObject];
    v16 = [v15 universalIdentifier];
    v17 = v13[16];
    v13[16] = v16;

LABEL_6:
  }

  (*(*(a1 + 40) + 16))();
}

void __111__MPModelLibraryPlaylistEditController__createTrackIdentifierListWithInitialEntries_initialObjects_completion___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier"])
  {
    v6 = [v5 positionUniversalIdentifier];
  }

  else
  {
    v6 = v8;
  }

  v7 = v6;
  [*(*(a1 + 32) + 136) setObject:v6 forKeyedSubscript:v8];
  [*(*(a1 + 32) + 144) setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)_isLastEntry:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 universalIdentifier];
  LOBYTE(self) = [v4 isEqualToString:self->_currentLastItemIdentifier];

  return self;
}

- (id)_removeAllPlaylistEntries
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing all entries", &v11, 0xCu);
  }

  v4 = [[MPSectionedIdentifierList alloc] initWithIdentifier:@"MPModelLibraryPlaylistEditControllerLibrarySectionIdentifierName"];
  [(MPSectionedIdentifierList *)v4 setDelegate:self];
  [(MPSectionedIdentifierList *)v4 setAnnotationDelegate:self];
  v5 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:4];
  [(MPModelLibraryPlaylistEditChangeDetails *)v5 setPreviousTrackIdentifierList:self->_trackIdentifierList];
  [(MPModelLibraryPlaylistEditChangeDetails *)v5 setNextTrackIdentifierList:v4];
  trackIdentifierList = self->_trackIdentifierList;
  self->_trackIdentifierList = v4;
  v7 = v4;

  v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];

  v9 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully completed remove all", &v11, 0xCu);
  }

  return v8;
}

- (id)_removePlaylistEntries:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = self;
    v36 = 2114;
    v37 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing entries %{public}@", buf, 0x16u);
  }

  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v28)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 universalIdentifier];
        v9 = [(MPModelLibraryPlaylistEditController *)self _sectionIdentifierForItemIdentifier:v8];
        v10 = [MPSectionedIdentifierListPosition positionForItem:v8 inSection:v9];
        v11 = [(MPSectionedIdentifierList *)self->_trackIdentifierList enumeratorWithOptions:8 startPosition:v10 endPosition:0];
        v12 = [v11 nextObject];

        v13 = [v12 itemResult];
        v14 = [v13 itemIdentifier];

        [(MPSectionedIdentifierList *)self->_trackIdentifierList removeItem:v8 fromSection:v9];
        v15 = [MPModelLibraryPlaylistEditChangeDetails alloc];
        v16 = [v7 universalIdentifier];
        v17 = [(MPModelLibraryPlaylistEditChangeDetails *)v15 initWithType:2 itemIdentifier:v16];

        [(MPModelLibraryPlaylistEditChangeDetails *)v17 setItem:v7];
        [(MPModelLibraryPlaylistEditChangeDetails *)v17 setPreviousReferenceIdentifier:v14];
        [v27 addObject:v17];
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v28);
  }

  v18 = [(MPSectionedIdentifierList *)self->_trackIdentifierList enumeratorWithOptions:8];
  v19 = [v18 nextObject];

  v20 = [v19 itemResult];
  v21 = [v20 itemIdentifier];
  currentLastItemIdentifier = self->_currentLastItemIdentifier;
  self->_currentLastItemIdentifier = v21;

  v23 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = self;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully completed remove", buf, 0xCu);
  }

  return v27;
}

- (id)_movePlaylistEntry:(id)a3 afterEntry:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v38 = self;
    v39 = 2114;
    v40 = v6;
    v41 = 2114;
    v42 = v7;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ moving entry %{public}@ after entry %{public}@", buf, 0x20u);
  }

  v9 = [v6 universalIdentifier];
  v10 = [(MPModelLibraryPlaylistEditController *)self _sectionIdentifierForItemIdentifier:v9];
  v11 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:3 itemIdentifier:v9];
  [(MPModelLibraryPlaylistEditChangeDetails *)v11 setItem:v6];
  v12 = [MPSectionedIdentifierListPosition positionForItem:v9 inSection:v10];
  v13 = [(MPSectionedIdentifierList *)self->_trackIdentifierList enumeratorWithOptions:8 startPosition:v12 endPosition:0];
  v14 = [v13 nextObject];

  v15 = [v14 itemResult];
  v16 = [v15 itemIdentifier];

  v36 = v16;
  [(MPModelLibraryPlaylistEditChangeDetails *)v11 setPreviousReferenceIdentifier:v16];
  v35 = [(NSMutableDictionary *)self->_itemIdentifierToPositionIdentifierMap objectForKeyedSubscript:v9];
  [(MPModelLibraryPlaylistEditChangeDetails *)v11 setPreviousPositionIdentifier:?];
  if (v7)
  {
    v33 = v14;
    v34 = v12;
    v17 = [v7 universalIdentifier];
    v18 = [(MPModelLibraryPlaylistEditController *)self _sectionIdentifierForItemIdentifier:v17];
    v19 = v10;
    [(MPSectionedIdentifierList *)self->_trackIdentifierList moveItem:v9 fromSection:v10 afterItem:v17 inSection:v18];
    v20 = [(NSMutableDictionary *)self->_itemIdentifierToPositionIdentifierMap objectForKeyedSubscript:v17];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v7 positionUniversalIdentifier];
    }

    v25 = v22;

    [(MPModelLibraryPlaylistEditChangeDetails *)v11 setReferenceItem:v7];
    [(MPModelLibraryPlaylistEditChangeDetails *)v11 setReferenceItemIdentifier:v17];
    [(MPModelLibraryPlaylistEditChangeDetails *)v11 setReferenceItemPositionIdentifier:v25];

    v10 = v19;
    v14 = v33;
    v12 = v34;
    if ([(MPModelLibraryPlaylistEditController *)self _isLastEntry:v7])
    {
      objc_storeStrong(&self->_currentLastItemIdentifier, v9);
      [(MPModelLibraryPlaylistEditChangeDetails *)v11 setIsLastItem:1];
      goto LABEL_12;
    }
  }

  else
  {
    v23 = [(MPSectionedIdentifierList *)self->_trackIdentifierList orderedSectionIdentifiers];
    v24 = [v23 firstObject];

    [(MPSectionedIdentifierList *)self->_trackIdentifierList moveItem:v9 fromSection:v10 afterHeadOfSection:v24];
  }

  if ([(MPModelLibraryPlaylistEditController *)self _isLastEntry:v6])
  {
    v26 = [(MPSectionedIdentifierList *)self->_trackIdentifierList enumeratorWithOptions:8];
    v27 = [v26 nextObject];

    v28 = [v27 itemResult];
    v29 = [v28 itemIdentifier];
    currentLastItemIdentifier = self->_currentLastItemIdentifier;
    self->_currentLastItemIdentifier = v29;
  }

LABEL_12:
  v31 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = self;
    _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully completed move", buf, 0xCu);
  }

  return v11;
}

- (void)_insertObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v24 = a5;
  v10 = [(MPModelLibraryPlaylistEditController *)self _newDataSourceForModelObjects:v8];
  v11 = [v10 identifier];
  [(NSMutableDictionary *)self->_dataSources setObject:v10 forKey:v11];
  v12 = v9 == 0;
  if (self->_currentLastItemIdentifier)
  {
    v13 = [(MPModelLibraryPlaylistEditController *)self _isLastEntry:v9];
  }

  else
  {
    v13 = 1;
  }

  v14 = [v9 universalIdentifier];
  v15 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v44 = self;
    v45 = 2114;
    v46 = v8;
    v47 = 2114;
    v48 = v14;
    _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting items %{public}@ after entry %{public}@", buf, 0x20u);
  }

  v16 = v9 == 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke;
  aBlock[3] = &unk_1E767BDB0;
  v17 = v10;
  v38 = v17;
  v18 = v9;
  v41 = v12;
  v39 = v18;
  v40 = self;
  v42 = v13;
  v19 = _Block_copy(aBlock);
  if (v16)
  {
    objc_initWeak(buf, self);
    trackIdentifierList = self->_trackIdentifierList;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke_2;
    v33[3] = &unk_1E767BDD8;
    objc_copyWeak(&v36, buf);
    v34 = v19;
    v35 = v24;
    [(MPSectionedIdentifierList *)trackIdentifierList addDataSourceAtStart:v17 section:v11 completion:v33];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else
  {
    objc_initWeak(buf, self);
    if (v13)
    {
      v20 = self->_trackIdentifierList;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke_104;
      v29[3] = &unk_1E767BDD8;
      objc_copyWeak(&v32, buf);
      v30 = v19;
      v31 = v24;
      [(MPSectionedIdentifierList *)v20 addDataSourceAtEnd:v17 section:v11 completion:v29];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = [(MPModelLibraryPlaylistEditController *)self _sectionIdentifierForItemIdentifier:v14];
      v23 = self->_trackIdentifierList;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke_105;
      v25[3] = &unk_1E767BDD8;
      objc_copyWeak(&v28, buf);
      v26 = v19;
      v27 = v24;
      [(MPSectionedIdentifierList *)v23 addDataSource:v17 section:v11 afterItem:v14 inSection:v22 completion:v25];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }
}

id __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playlistEntries];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v25 = a1;
  if (*(a1 + 56))
  {
    [v2 reverseObjectEnumerator];
  }

  else
  {
    [v2 objectEnumerator];
  }

  v28 = v3;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v5 = 0;
    v27 = *v31;
    v6 = a1;
    v23 = v4;
    v24 = v2;
    do
    {
      v7 = 0;
      v22 = v5;
      v8 = v5 + 1;
      do
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v7);
        v10 = [v9 universalIdentifier];
        v11 = [v9 positionUniversalIdentifier];
        v12 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:1 itemIdentifier:v10];
        [(MPModelLibraryPlaylistEditChangeDetails *)v12 setItem:v9];
        v13 = [v9 positionUniversalIdentifier];
        [(MPModelLibraryPlaylistEditChangeDetails *)v12 setItemPositionIdentifier:v13];

        if ((*(v6 + 56) & 1) == 0)
        {
          v14 = [v28 universalIdentifier];
          v15 = [*(*(v6 + 48) + 136) objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = [v28 positionUniversalIdentifier];
          }

          v18 = v17;

          [(MPModelLibraryPlaylistEditChangeDetails *)v12 setReferenceItem:v28];
          [(MPModelLibraryPlaylistEditChangeDetails *)v12 setReferenceItemIdentifier:v14];
          [(MPModelLibraryPlaylistEditChangeDetails *)v12 setReferenceItemPositionIdentifier:v18];
          v19 = v9;

          v28 = v19;
          v4 = v23;
          v2 = v24;
          v6 = v25;
        }

        v20 = [v2 count];
        if (*(v6 + 57) == 1 && v8 == v20)
        {
          [(MPModelLibraryPlaylistEditChangeDetails *)v12 setIsLastItem:1];
        }

        [v4 addObject:v12];
        [*(*(v6 + 48) + 96) setObject:v9 forKeyedSubscript:v10];
        [*(*(v6 + 48) + 136) setObject:v11 forKeyedSubscript:v10];
        [*(*(v6 + 48) + 144) setObject:v10 forKeyedSubscript:v11];
        if (*(v6 + 57) == 1)
        {
          objc_storeStrong((*(v6 + 48) + 128), v10);
        }

        ++v7;
        ++v8;
      }

      while (v29 != v7);
      v5 = v22 + v29;
      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v29);
  }

  return v4;
}

void __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Finished prepending items error=%{public}@", &v9, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = WeakRetained;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished prepending items", &v9, 0xCu);
    }

    v8 = (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

void __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke_104(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Finished append items error=%{public}@", &v9, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = WeakRetained;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished append items", &v9, 0xCu);
    }

    v8 = (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

void __77__MPModelLibraryPlaylistEditController__insertObjects_afterEntry_completion___block_invoke_105(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Finished inserting items error=%{public}@", &v9, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = WeakRetained;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished inserting items", &v9, 0xCu);
    }

    v8 = (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_applyChanges:(id)a3 toTransaction:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke;
  block[3] = &unk_1E767FD58;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v21 = a2;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  dispatch_async(v12, block);
}

void __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138543618;
      v78 = v4;
      v79 = 2114;
      v80 = v2;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Applying change %{public}@", buf, 0x16u);
    }

    v5 = [v2 type];
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v6 = [v2 nextTrackIdentifierList];
        v17 = *(a1 + 40);
        if (v6)
        {
          objc_storeStrong(v17 + 8, v6);
          v18 = *(a1 + 48);
          v74 = v2;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
          v20 = v18;
        }

        else
        {
          v19 = [v17 _removeAllPlaylistEntries];
          v20 = *(a1 + 48);
        }

        [v20 addChanges:v19];

        v7 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
        [*(a1 + 40) _applyChanges:v7 toTransaction:*(a1 + 48) completion:*(a1 + 56)];
        goto LABEL_75;
      }

      if (v5 == 5)
      {
        v6 = [v2 previousTrackIdentifierList];
        v25 = [v2 nextTrackIdentifierList];
        if (v6 != *(*(a1 + 40) + 64) && ![(MPModelObject *)v6 isEqual:?])
        {
          v58 = [MEMORY[0x1E696AAA8] currentHandler];
          [v58 handleFailureInMethod:*(a1 + 64) object:*(*(a1 + 40) + 64) file:v6 lineNumber:? description:?];
        }

        v26 = *(a1 + 40);
        v27 = *(v26 + 64);
        *(v26 + 64) = v25;
        v28 = v25;

        v29 = [v2 copy];
        v30 = *(a1 + 48);
        v73 = v29;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
        [v30 addChanges:v31];

        v32 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
        [*(a1 + 40) _applyChanges:v32 toTransaction:*(a1 + 48) completion:*(a1 + 56)];

        goto LABEL_76;
      }

      if (v5 != 6)
      {
        goto LABEL_26;
      }

      v13 = [v2 playlistName];
      v14 = *(a1 + 40);
      v15 = *(v14 + 168);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = [*(v14 + 24) name];
      }

      v7 = v16;
      [v2 setPreviousPlaylistName:v16];
      v47 = *(a1 + 40);
      v48 = *(v47 + 168);
      *(v47 + 168) = v13;
      v6 = v13;

      [*(a1 + 48) addChange:v2];
      goto LABEL_55;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = [v2 itemIdentifier];
          v7 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v6];
          v8 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:v6];
          if (!v8)
          {
            v9 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = *(a1 + 40);
              *buf = 138543618;
              v78 = v10;
              v79 = 2114;
              v80 = v2;
              _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "%{public}@ MOVE failed to find the item in change %{public}@", buf, 0x16u);
            }

            [*(a1 + 40) _logEditorState];
          }

          if ([v2 isLastItem])
          {
            v11 = *(*(a1 + 40) + 128);
          }

          else
          {
            v40 = [v2 referenceItemPositionIdentifier];
            v11 = [*(*(a1 + 40) + 144) objectForKeyedSubscript:v40];
          }

          v41 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:v11];
          v42 = [*(a1 + 40) _movePlaylistEntry:v8 afterEntry:v41];
          if (v11 && !v41)
          {
            v43 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = *(a1 + 40);
              *buf = 138543618;
              v78 = v44;
              v79 = 2114;
              v80 = v2;
              _os_log_impl(&dword_1A238D000, v43, OS_LOG_TYPE_ERROR, "%{public}@ MOVE failed to find the reference item in change %{public}@", buf, 0x16u);
            }

            [*(a1 + 40) _logEditorState];
          }

          v45 = [v2 itemPositionIdentifier];
          [v42 setItemPositionIdentifier:v45];
          [v42 setPreviousPositionIdentifier:v7];
          [*(*(a1 + 40) + 136) setObject:v45 forKeyedSubscript:v6];
          [*(*(a1 + 40) + 144) setObject:v6 forKeyedSubscript:v45];
          [*(a1 + 48) addChange:v42];
          v46 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
          [*(a1 + 40) _applyChanges:v46 toTransaction:*(a1 + 48) completion:*(a1 + 56)];

LABEL_73:
          goto LABEL_74;
        }

LABEL_26:
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [(MPModelPlaylistEntry *)v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"MPModelLibraryPlaylistEditController.m" lineNumber:1252 description:@"Unknown change type in change %@", v2];
LABEL_76:

        return;
      }

      v6 = [v2 itemIdentifier];
      v21 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:v6];
      v7 = v21;
      if (v21)
      {
        v22 = *(a1 + 40);
        v75 = v21;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
        v24 = [v22 _removePlaylistEntries:v23];

        [*(a1 + 48) addChanges:v24];
      }

      else
      {
        v49 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = *(a1 + 40);
          *buf = 138543618;
          v78 = v50;
          v79 = 2114;
          v80 = v2;
          _os_log_impl(&dword_1A238D000, v49, OS_LOG_TYPE_ERROR, "%{public}@ REMOVE failed to find the reference item in change %{public}@", buf, 0x16u);
        }

        [*(a1 + 40) _logEditorState];
      }

LABEL_55:
      v8 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
      [*(a1 + 40) _applyChanges:v8 toTransaction:*(a1 + 48) completion:*(a1 + 56)];
LABEL_74:

LABEL_75:
      goto LABEL_76;
    }

    v6 = [v2 item];
    if ([v2 isLastItem])
    {
      v7 = *(*(a1 + 40) + 128);
    }

    else
    {
      v33 = [v2 referenceItemPositionIdentifier];
      v7 = [*(*(a1 + 40) + 144) objectForKeyedSubscript:v33];
    }

    v8 = [v2 itemIdentifier];
    v11 = [v2 itemPositionIdentifier];
    if ([(__CFString *)v8 length]|| [(__CFString *)v11 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = [(MPModelObject *)v6 identifiers];
        v35 = [(MPModelPlaylistEntry *)v34 copyWithSource:@"com.apple.MediaPlayer.MPModelLibraryPlaylistEditController" block:&__block_literal_global_94];
        v36 = [MPModelPlaylistEntry alloc];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_3;
        v68[3] = &unk_1E767BD38;
        v69 = v8;
        v37 = v11;
        v38 = *(a1 + 40);
        v70 = v37;
        v71 = v38;
        v72 = v6;
        v6 = [(MPModelObject *)v36 initWithIdentifiers:v35 block:v68];

        v39 = v69;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_67;
        }

        v34 = v6;
        if ([(MPModelObject *)v34 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryUniversalIdentifier"])
        {
          v35 = [(MPModelPlaylistEntry *)v34 universalIdentifier];
        }

        else
        {
          v35 = &stru_1F149ECA8;
        }

        if ([(MPModelObject *)v34 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier"])
        {
          v39 = [(MPModelPlaylistEntry *)v34 positionUniversalIdentifier];
        }

        else
        {
          v39 = &stru_1F149ECA8;
        }

        if ((v35 == v8 || [(__CFString *)v35 isEqual:v8]) && (v39 == v11 || ([(__CFString *)v39 isEqual:v11]& 1) != 0))
        {
          v6 = v34;
        }

        else
        {
          v51 = [(MPModelObject *)v34 identifiers];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_4;
          v65[3] = &unk_1E767BD60;
          v35 = v35;
          v66 = v35;
          v67 = v11;
          v59 = v11;
          v52 = v51;
          v6 = [(MPModelObject *)v34 copyWithIdentifiers:v51 block:v65];

          v11 = v59;
        }
      }
    }

LABEL_67:
    v53 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:v7];
    v41 = v53;
    if (v7 && !v53)
    {
      v54 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = *(a1 + 40);
        *buf = 138543618;
        v78 = v55;
        v79 = 2114;
        v80 = v2;
        _os_log_impl(&dword_1A238D000, v54, OS_LOG_TYPE_ERROR, "%{public}@ ADD failed to find the reference item in change %{public}@", buf, 0x16u);
      }

      [*(a1 + 40) _logEditorState];
    }

    v56 = *(a1 + 40);
    v76 = v6;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_96;
    v60[3] = &unk_1E767BD88;
    v60[4] = *(a1 + 40);
    v61 = v2;
    v64 = *(a1 + 56);
    v62 = *(a1 + 48);
    v63 = *(a1 + 32);
    [v56 _insertObjects:v57 afterEntry:v41 completion:v60];

    goto LABEL_73;
  }

  v12 = *(*(a1 + 56) + 16);

  v12();
}

void __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    [v3 setUniversalIdentifier:*(a1 + 32)];
  }

  if ([*(a1 + 40) length])
  {
    [v3 setPositionUniversalIdentifier:*(a1 + 40)];
  }

  [v3 setSocialContributor:*(*(a1 + 48) + 88)];
  [v3 setSong:*(a1 + 56)];
}

void __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    [v3 setUniversalIdentifier:*(a1 + 32)];
  }

  if ([*(a1 + 40) length])
  {
    [v3 setPositionUniversalIdentifier:*(a1 + 40)];
  }
}

void __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_96(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to apply change %{public}@. err=%{public}@", &v10, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 48) addChanges:a2];
    v9 = [*(a1 + 56) subarrayWithRange:{1, objc_msgSend(*(a1 + 56), "count") - 1}];
    [*(a1 + 32) _applyChanges:v9 toTransaction:*(a1 + 48) completion:*(a1 + 64)];
  }
}

void __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_91(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 library];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 databaseID];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_2;
    v6[3] = &unk_1E7680B00;
    v7 = v4;
    [v2 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
  }
}

void __79__MPModelLibraryPlaylistEditController__applyChanges_toTransaction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setContainedPersistentID:{objc_msgSend(v2, "persistentID")}];
  [v3 setPersistentID:0];
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidChangeItems:(id)a4 inSection:(id)a5
{
  v6 = a5;
  v7 = v6;
  if (!self->_notificationsSuspended)
  {
    accessQueue = self->_accessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__MPModelLibraryPlaylistEditController_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke;
    v9[3] = &unk_1E76823C0;
    v9[4] = self;
    v10 = v6;
    dispatch_async(accessQueue, v9);
  }
}

void __99__MPModelLibraryPlaylistEditController_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 112))
  {
    v3 = [*(v1 + 104) objectForKeyedSubscript:*(a1 + 40)];
    v4 = [v3 playlistEntriesByIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__MPModelLibraryPlaylistEditController_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke_2;
    v9[3] = &unk_1E767BD10;
    v9[4] = *(a1 + 32);
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
    v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Datasource %{public}@ changed - posting notification", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:*(a1 + 32)];
  }
}

void __99__MPModelLibraryPlaylistEditController_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier"])
  {
    v6 = [v5 positionUniversalIdentifier];
  }

  else
  {
    v6 = v8;
  }

  v7 = v6;
  [*(*(a1 + 32) + 136) setObject:v6 forKeyedSubscript:v8];
  [*(*(a1 + 32) + 144) setObject:v8 forKeyedSubscript:v7];
}

- (id)debugDescriptionForItem:(id)a3 inSection:(id)a4
{
  v7 = a3;
  v8 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:a4];
  if (!v8)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditController.m" lineNumber:1024 description:{@"No data source for item identifier %@", v7}];
  }

  v9 = [v8 playlistEntriesByIdentifier];
  v10 = [v9 objectForKeyedSubscript:v7];
  v11 = [(NSMutableDictionary *)self->_itemIdentifierToPositionIdentifierMap objectForKeyedSubscript:v7];
  v12 = v11;
  v13 = &stru_1F149ECA8;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (v10)
  {
    v15 = [v10 song];
    if (v15 && (v16 = v15, [v10 song], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hasLoadedValueForKey:", @"MPModelPropertySongTitle"), v17, v16, v18))
    {
      v19 = [v10 song];
      v20 = [v19 title];
    }

    else
    {
      v19 = [v10 anyObject];
      v20 = [objc_opt_class() description];
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p %@ posID %@)", v10, v21, v14];;

  return v22;
}

- (void)removeEntries:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing entries %{public}@", &v8, 0x16u);
  }

  v6 = [(MPModelLibraryPlaylistEditController *)self removePlaylistEntries:v4];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self];
}

- (void)removeEntry:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing entry %{public}@", &v8, 0x16u);
  }

  v6 = [(MPModelLibraryPlaylistEditController *)self removePlaylistEntry:v4];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self];
}

- (void)removeItemAtIndexPath:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__33276;
  v17 = __Block_byref_object_dispose__33277;
  v18 = 0;
  trackIdentifierList = self->_trackIdentifierList;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MPModelLibraryPlaylistEditController_removeItemAtIndexPath___block_invoke;
  v10[3] = &unk_1E767BCC0;
  v12 = &v13;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [(MPSectionedIdentifierList *)trackIdentifierList performWithExclusiveAccess:v10];
  v7 = [(NSMutableDictionary *)self->_playlistEntriesByIdentifier objectForKeyedSubscript:v14[5]];
  v8 = [(MPModelLibraryPlaylistEditController *)self removePlaylistEntry:v7];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self];

  _Block_object_dispose(&v13, 8);
}

void __62__MPModelLibraryPlaylistEditController_removeItemAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _itemIdentifierForIndexPath:*(a1 + 40) usingExclusiveAccessToken:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)moveEntryToStart:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ moving entry to start %{public}@", &v8, 0x16u);
  }

  v6 = [(MPModelLibraryPlaylistEditController *)self movePlaylistEntry:v4 afterEntry:0];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self];
}

- (void)moveEntry:(id)a3 afterEntry:(id)a4
{
  v5 = [(MPModelLibraryPlaylistEditController *)self movePlaylistEntry:a3 afterEntry:a4];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self];
}

- (void)moveItemFromIndexPath:(id)a3 toIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 item];
  if (v8 != [v7 item])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__33276;
    v29 = __Block_byref_object_dispose__33277;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__33276;
    v23 = __Block_byref_object_dispose__33277;
    v24 = 0;
    trackIdentifierList = self->_trackIdentifierList;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__MPModelLibraryPlaylistEditController_moveItemFromIndexPath_toIndexPath___block_invoke;
    v14[3] = &unk_1E767BCE8;
    v17 = &v25;
    v14[4] = self;
    v15 = v6;
    v18 = &v19;
    v16 = v7;
    [(MPSectionedIdentifierList *)trackIdentifierList performWithExclusiveAccess:v14];
    v10 = [(NSMutableDictionary *)self->_playlistEntriesByIdentifier objectForKeyedSubscript:v26[5]];
    v11 = [(NSMutableDictionary *)self->_playlistEntriesByIdentifier objectForKeyedSubscript:v20[5]];
    v12 = [(MPModelLibraryPlaylistEditController *)self movePlaylistEntry:v10 afterEntry:v11];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }
}

void __74__MPModelLibraryPlaylistEditController_moveItemFromIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _itemIdentifierForIndexPath:v4 usingExclusiveAccessToken:v5];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) _itemIdentifierForIndexPath:*(a1 + 48) usingExclusiveAccessToken:v5];

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (void)insertItems:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__MPModelLibraryPlaylistEditController_insertItems_afterEntry_completion___block_invoke;
  v10[3] = &unk_1E767BC98;
  v11 = v8;
  v9 = v8;
  [(MPModelLibraryPlaylistEditController *)self insertObjects:a3 afterEntry:a4 completion:v10];
}

- (void)insertItem:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v13 count:1];

  [(MPModelLibraryPlaylistEditController *)self insertItems:v12 afterEntry:v10 completion:v9, v13, v14];
}

- (void)insertItems:(id)a3 atIndexPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 item])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__33276;
    v22 = __Block_byref_object_dispose__33277;
    v23 = 0;
    trackIdentifierList = self->_trackIdentifierList;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__MPModelLibraryPlaylistEditController_insertItems_atIndexPath_completion___block_invoke;
    v15[3] = &unk_1E767BCC0;
    v17 = &v18;
    v15[4] = self;
    v16 = v9;
    [(MPSectionedIdentifierList *)trackIdentifierList performWithExclusiveAccess:v15];
    v12 = [(NSMutableDictionary *)self->_playlistEntriesByIdentifier objectForKeyedSubscript:v19[5]];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__MPModelLibraryPlaylistEditController_insertItems_atIndexPath_completion___block_invoke_2;
    v13[3] = &unk_1E767BC98;
    v14 = v10;
    [(MPModelLibraryPlaylistEditController *)self insertObjects:v8 afterEntry:v12 completion:v13];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)self insertItemsAtStart:v8 completion:v10];
  }
}

void __75__MPModelLibraryPlaylistEditController_insertItems_atIndexPath_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _itemIdentifierForIndexPath:*(a1 + 40) usingExclusiveAccessToken:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)insertItem:(id)a3 atIndexPath:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v13 count:1];

  [(MPModelLibraryPlaylistEditController *)self insertItems:v12 atIndexPath:v10 completion:v9, v13, v14];
}

- (void)insertItemsAtStart:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__MPModelLibraryPlaylistEditController_insertItemsAtStart_completion___block_invoke;
  v8[3] = &unk_1E767BC98;
  v9 = v6;
  v7 = v6;
  [(MPModelLibraryPlaylistEditController *)self insertObjectsAtStart:a3 completion:v8];
}

- (void)insertItemAtStart:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(MPModelLibraryPlaylistEditController *)self insertItemsAtStart:v9 completion:v7, v10, v11];
}

- (void)appendItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MPModelLibraryPlaylistEditController_appendItems_completion___block_invoke;
  v8[3] = &unk_1E767BC98;
  v9 = v6;
  v7 = v6;
  [(MPModelLibraryPlaylistEditController *)self appendObjects:a3 completion:v8];
}

- (void)appendItem:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(MPModelLibraryPlaylistEditController *)self appendItems:v9 completion:v7, v10, v11];
}

- (void)commitWithCompletion:(id)a3
{
  v5 = a3;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke;
  block[3] = &unk_1E7681358;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(accessQueue, block);
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(a1 + 32) + 16));
  [*(*(a1 + 32) + 64) setDelegate:0];
  v2 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Committing playlist changes", buf, 0xCu);
  }

  [*(a1 + 32) _logEditorState];
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_55;
  v7[3] = &unk_1E767BC70;
  v7[4] = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v4 _resolveTrackListWithCompletion:v7];
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v57 = v7;
      v58 = 2114;
      v59 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to resolve track list. err = %{public}@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 64) setDelegate:?];
    dispatch_resume(*(*(a1 + 32) + 16));
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 mutableCopy];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = &unk_1A273D000;
    if ([*(*(a1 + 32) + 24) isCollaborative])
    {
      v11 = [MEMORY[0x1E695DEC8] array];
      v12 = *(a1 + 32);
      if (*(v12 + 56))
      {
        v13 = [*(v12 + 104) objectForKeyedSubscript:?];
        if (!v13)
        {
          v35 = [MEMORY[0x1E696AAA8] currentHandler];
          [v35 handleFailureInMethod:*(a1 + 48) object:*(*(a1 + 32) + 56) file:? lineNumber:? description:?];
        }

        v14 = [v13 playlistEntries];

        v11 = v14;
      }

      v15 = [v8 allItems];
      v16 = [v11 count];
      v17 = [v15 count];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_57;
      v53[3] = &unk_1E767BFE8;
      v18 = v11;
      v54 = v18;
      v19 = v15;
      v55 = v19;
      v20 = [MPChangeDetails changeDetailsWithPreviousCount:v16 finalCount:v17 isEqualBlock:v53 isUpdatedBlock:&__block_literal_global_33286];
      v21 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = [v20 debugDescription];
        *buf = 138543618;
        v57 = v22;
        v58 = 2114;
        v59 = v23;
        _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ calculated track list changes %{public}@", buf, 0x16u);
      }

      v24 = [v20 deletedIndexes];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_59;
      v49[3] = &unk_1E767BBD0;
      v50 = v18;
      v25 = v9;
      v26 = *(a1 + 32);
      v51 = v25;
      v52 = v26;
      v27 = v18;
      [v24 enumerateIndexesUsingBlock:v49];

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_61;
      v44[3] = &unk_1E767BBF8;
      v48 = *(a1 + 48);
      v28 = *(a1 + 32);
      v45 = v19;
      v46 = v28;
      v47 = v8;
      v29 = v19;
      [v20 enumerateMovesUsingBlock:v44];

      v10 = &unk_1A273D000;
    }

    else
    {
      v20 = 0;
    }

    v30 = objc_alloc_init(MPModelLibraryPlaylistEditChangeRequest);
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setMediaLibrary:*(*(a1 + 32) + 32)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setPlaylistName:*(*(a1 + 32) + 168)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setPlaylistDescription:*(*(a1 + 32) + 176)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setPlaylistUserImage:*(*(a1 + 32) + 192)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setShouldCreatePlaylist:*(*(a1 + 32) + 24) == 0];
    v31 = [*(a1 + 32) _currentPlaylist];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setPlaylist:v31];

    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setPlaylistEntries:v8];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setPublicPlaylist:*(*(a1 + 32) + 200)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setVisiblePlaylist:*(*(a1 + 32) + 208)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setCuratorPlaylist:*(*(a1 + 32) + 216)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setCoverArtworkRecipe:*(*(a1 + 32) + 224)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setEditSessionID:*(*(a1 + 32) + 232)];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setTrackListChanges:v20];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setDeletedEntryUUIDs:v9];
    [(MPModelLibraryPlaylistEditChangeRequest *)v30 setParentPlaylist:*(*(a1 + 32) + 184)];
    v37 = MEMORY[0x1E69E9820];
    v38 = v10[313];
    v39 = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_2_71;
    v40 = &unk_1E767BC20;
    v32 = *(a1 + 40);
    v41 = *(a1 + 32);
    v42 = v8;
    v43 = v32;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = v38;
    v36[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_74;
    v36[3] = &unk_1E767BC48;
    v36[4] = *(a1 + 32);
    v33 = v8;
    v34 = [(MPModelLibraryPlaylistEditChangeRequest *)v30 newOperationWithLocalPersistenceResponseHandler:&v37 completeResponseHandler:v36];
    [*(*(a1 + 32) + 8) addOperation:v34];
  }
}

uint64_t __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_57(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndex:a2];
  v6 = [*(a1 + 40) objectAtIndex:a3];
  v7 = [v5 universalIdentifier];
  v8 = [v6 universalIdentifier];
  if (v7 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_59(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectAtIndex:a2];
  v5 = [v4 universalIdentifier];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v6 setObject:v5 forKey:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = 138543618;
      v11 = v9;
      v12 = 2048;
      v13 = a2;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "%{public}@ no UUID for deleted entry at position %lu", &v10, 0x16u);
    }
  }
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_61(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) objectAtIndex:?];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPModelLibraryPlaylistEditController.m" lineNumber:851 description:{@"No playlist entry at moved index %lu", a3}];
  }

  v7 = [v6 positionUniversalIdentifier];
  v8 = [MEMORY[0x1E69E43D0] newIdentifierString];
  v9 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 138544386;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating position UUID for entry moved from %lu --> %lu; %{public}@ --> %{public}@", buf, 0x34u);
  }

  v11 = [v6 identifiers];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_66;
  v17[3] = &unk_1E767C0A8;
  v18 = v8;
  v12 = v8;
  v13 = [v6 copyWithIdentifiers:v11 block:v17];

  *buf = 0;
  *&buf[8] = a3;
  v14 = *(a1 + 48);
  v15 = [MEMORY[0x1E696AC88] indexPathWithIndexes:buf length:2];
  [v14 replaceObjectAtIndexPath:v15 withObject:v13];
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_2_71(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 msv_description];
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished committing new playlist error=%{public}@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 64) setDelegate:?];
    dispatch_resume(*(*(a1 + 32) + 16));
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished committing new playlist", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    if (!*(v12 + 24))
    {
      objc_storeStrong((v12 + 24), a3);
      v12 = *(a1 + 32);
    }

    objc_storeStrong((v12 + 40), *(a1 + 40));
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_72;
    v15[3] = &unk_1E7680198;
    v15[4] = v13;
    v17 = *(a1 + 48);
    v16 = v6;
    [v13 _createTrackIdentifierListWithInitialEntries:v14 initialObjects:0 completion:v15];
  }
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_74(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Change operation completed error=%{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Change operation completed", &v9, 0xCu);
  }
}

void __61__MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke_72(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Reset datasource to updated track list. error=%{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reset datasource to updated track list.", &v9, 0xCu);
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  (*(*(a1 + 48) + 16))();
}

- (id)transactionsSinceIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33276;
  v25 = __Block_byref_object_dispose__33277;
  v26 = 0;
  accessQueue = self->_accessQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __68__MPModelLibraryPlaylistEditController_transactionsSinceIdentifier___block_invoke;
  v16 = &unk_1E7681680;
  v19 = &v21;
  v20 = a2;
  v17 = self;
  v7 = v5;
  v18 = v7;
  dispatch_sync(accessQueue, &v13);
  v8 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v22[5] count];
    v10 = v22[5];
    *buf = 138544130;
    v28 = self;
    v29 = 2048;
    v30 = v9;
    v31 = 2114;
    v32 = v7;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning %lu transactions since '%{public}@': %{public}@", buf, 0x2Au);
  }

  v11 = [v22[5] copy];
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __68__MPModelLibraryPlaylistEditController_transactionsSinceIdentifier___block_invoke(void *a1)
{
  v1 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (*(v2 + 112))
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:v1[7] object:v1[4] file:@"MPModelLibraryPlaylistEditController.m" lineNumber:736 description:@"transactionsSinceIdentifier called while there is an open transaction"];

    v2 = v1[4];
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(v2 + 120), "count")}];
  v4 = *(v1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(v1[4] + 152);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v38 = v1;
    do
    {
      v7 = [*(v1[4] + 120) objectAtIndexedSubscript:{v6, v38}];
      v8 = [v7 identifier];
      v9 = v1[5];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {

LABEL_30:
        return;
      }

      v13 = [v10 isEqual:v11];

      if (v13)
      {
        goto LABEL_30;
      }

      v40 = v6;
      v14 = [v7 copy];

      v39 = v14;
      v15 = [v14 changes];
      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v15;
      v43 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (!v43)
      {
        goto LABEL_27;
      }

      v17 = *v49;
      v41 = *v49;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v48 + 1) + 8 * i) copy];
          v20 = [v19 item];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
            v22 = [v19 itemPositionIdentifier];
            v23 = [v21 positionUniversalIdentifier];
            v24 = v23;
            if (v23 == v22)
            {
              goto LABEL_16;
            }

            v25 = [v23 isEqual:v22];

            if ((v25 & 1) == 0)
            {
              v26 = [v21 identifiers];
              v46[0] = MEMORY[0x1E69E9820];
              v46[1] = 3221225472;
              v46[2] = __68__MPModelLibraryPlaylistEditController_transactionsSinceIdentifier___block_invoke_2;
              v46[3] = &unk_1E767E6B8;
              v47 = v22;
              v27 = [v21 copyWithIdentifiers:v26 block:v46];

              [v19 setItem:v27];
              v24 = v47;
              v21 = v27;
LABEL_16:
            }
          }

          v28 = [v19 referenceItem];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          v29 = v28;
          v30 = [v19 referenceItemPositionIdentifier];
          v31 = [v29 positionUniversalIdentifier];
          v32 = v31;
          if (v31 == v30)
          {
            goto LABEL_23;
          }

          v33 = v16;
          v34 = [v31 isEqual:v30];

          if ((v34 & 1) == 0)
          {
            v35 = [v29 identifiers];
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __68__MPModelLibraryPlaylistEditController_transactionsSinceIdentifier___block_invoke_3;
            v44[3] = &unk_1E767E6B8;
            v45 = v30;
            v36 = [v29 copyWithIdentifiers:v35 block:v44];

            [v19 setReferenceItem:v36];
            v32 = v45;
            v29 = v36;
            v16 = v33;
            v17 = v41;
LABEL_23:

            goto LABEL_24;
          }

          v16 = v33;
          v17 = v41;
LABEL_24:

LABEL_25:
          [v16 addObject:v19];
        }

        v43 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v43);
LABEL_27:

      [v39 setChanges:v16];
      v1 = v38;
      [*(*(v38[6] + 8) + 40) insertObject:v39 atIndex:0];

      v6 = v40 - 1;
    }

    while (v40 >= 1);
  }
}

- (void)applyChanges:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MPModelLibraryPlaylistEditController_applyChanges_completion___block_invoke;
  block[3] = &unk_1E7681568;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __64__MPModelLibraryPlaylistEditController_applyChanges_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Applying changes: %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) identifier];
  [v5 _startTransactionWithIdentifier:v6];

  v7 = [*(a1 + 40) changes];
  v8 = *(a1 + 32);
  v9 = v8[14];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__MPModelLibraryPlaylistEditController_applyChanges_completion___block_invoke_50;
  v10[3] = &unk_1E7680198;
  v10[4] = v8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  [v8 _applyChanges:v7 toTransaction:v9 completion:v10];
}

void __64__MPModelLibraryPlaylistEditController_applyChanges_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(a1 + 32) + 112);
  }

  v5 = v4;
  [*(a1 + 32) _endTransactionCommittingChanges:v3 == 0];
  if (v3)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v3;
      v8 = "%{public}@ Failed to apply incoming changes. err=%{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1A238D000, v9, v10, v8, &v14, 0x16u);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v8 = "%{public}@ Applied changes: %{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v3, v13);
}

- (void)redoNextTransactionWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MPModelLibraryPlaylistEditController_redoNextTransactionWithCompletion___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __74__MPModelLibraryPlaylistEditController_redoNextTransactionWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3 >= [*(v2 + 120) count] - 1)
  {
    v16 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(v17 + 152);
      *buf = 138543618;
      v24 = v17;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "%{public}@ redo called when not available - ignoring. lastAppliedTransactionIndex = %lu", buf, 0x16u);
    }

    v19 = *(a1 + 40);
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPlaylistEditErrorDomain" code:1 debugDescription:@"redo called when not available"];
    (*(v19 + 16))(v19, 0, v7);
  }

  else
  {
    dispatch_suspend(*(*(a1 + 32) + 16));
    v4 = [*(*(a1 + 32) + 120) objectAtIndex:*(*(a1 + 32) + 152) + 1];
    v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v24 = v6;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Redoing transaction: %{public}@", buf, 0x16u);
    }

    *(*(a1 + 32) + 160) = 1;
    v7 = [v4 identifier];
    v8 = [v4 changes];
    v9 = [MPModelLibraryPlaylistEditTransactionDetails alloc];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v12 = [v11 lowercaseString];
    v13 = [(MPModelLibraryPlaylistEditTransactionDetails *)v9 initWithIdentifier:v12 referenceIdentifier:v7];

    v14 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__MPModelLibraryPlaylistEditController_redoNextTransactionWithCompletion___block_invoke_49;
    v20[3] = &unk_1E7680198;
    v20[4] = v14;
    v21 = v4;
    v22 = *(a1 + 40);
    v15 = v4;
    [v14 _applyChanges:v8 toTransaction:v13 completion:v20];
  }
}

void __74__MPModelLibraryPlaylistEditController_redoNextTransactionWithCompletion___block_invoke_49(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to redo. err=%{public}@", &v9, 0x16u);
    }
  }

  else
  {
    ++*(*(a1 + 32) + 152);
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) identifier];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully performed redo of transaction %{public}@", &v9, 0x16u);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v8, v3);
  *(*(a1 + 32) + 160) = 0;
}

- (void)undoPreviousTransactionWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MPModelLibraryPlaylistEditController_undoPreviousTransactionWithCompletion___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __78__MPModelLibraryPlaylistEditController_undoPreviousTransactionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 152) & 0x8000000000000000) != 0)
  {
    v41 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v1 + 32);
      v43 = *(v42 + 152);
      *buf = 138543618;
      v60 = v42;
      v61 = 2048;
      v62 = v43;
      _os_log_impl(&dword_1A238D000, v41, OS_LOG_TYPE_ERROR, "%{public}@ undo called when not available - ignoring. lastAppliedTransactionIndex = %lu", buf, 0x16u);
    }

    v44 = *(v1 + 40);
    v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPlaylistEditErrorDomain" code:1 debugDescription:@"undo called when not available"];
    (*(v44 + 16))(v44, 0, v36);
  }

  else
  {
    dispatch_suspend(*(v2 + 16));
    v3 = [*(*(v1 + 32) + 120) objectAtIndex:*(*(v1 + 32) + 152)];
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 32);
      *buf = 138543618;
      v60 = v5;
      v61 = 2114;
      v62 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Undoing transaction: %{public}@", buf, 0x16u);
    }

    *(*(v1 + 32) + 160) = 1;
    [v3 identifier];
    v47 = v46 = v3;
    v6 = [v3 changes];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = v6;
    v8 = [v6 reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      v48 = *v55;
      do
      {
        v12 = 0;
        v49 = v10;
        do
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v54 + 1) + 8 * v12);
          v14 = [v13 itemIdentifier];
          v15 = [v13 type];
          if (v15 > 2)
          {
            if (v15 == 3)
            {
              v16 = [v13 previousReferenceIdentifier];
              v18 = [*(*(v1 + 32) + 136) objectForKeyedSubscript:v16];
              v22 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:3 itemIdentifier:v14];
              [v13 item];
              v23 = v8;
              v24 = v7;
              v26 = v25 = v1;
              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setItem:v26];

              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setReferenceItemIdentifier:v16];
              v27 = [*(*(v25 + 32) + 96) objectForKeyedSubscript:v16];
              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setReferenceItem:v27];

              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setReferenceItemPositionIdentifier:v18];
              v28 = [v13 previousPositionIdentifier];
              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setItemPositionIdentifier:v28];

              v1 = v25;
              v7 = v24;
              v8 = v23;
              v11 = v48;
LABEL_24:
              [v7 addObject:v22];

              v10 = v49;
LABEL_25:

              goto LABEL_26;
            }

            if (v15 == 4)
            {
              v16 = [v13 previousTrackIdentifierList];
              v18 = [v13 nextTrackIdentifierList];
              v22 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:5];
              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setPreviousTrackIdentifierList:v18];
              [(MPModelLibraryPlaylistEditChangeDetails *)v22 setNextTrackIdentifierList:v16];
              goto LABEL_24;
            }

            if (v15 != 6)
            {
              goto LABEL_27;
            }

            v16 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:6];
            v20 = [v13 previousPlaylistName];
            [(MPModelLibraryPlaylistEditChangeDetails *)v16 setPlaylistName:v20];
          }

          else
          {
            if (!v15)
            {
              v16 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
              if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
              {
                v21 = *(v1 + 32);
                *buf = 138543618;
                v60 = v21;
                v61 = 2114;
                v62 = v13;
                _os_log_impl(&dword_1A238D000, &v16->super, OS_LOG_TYPE_ERROR, "%{public}@ Attempting to undo unexpected change: %{public}@", buf, 0x16u);
              }

              goto LABEL_26;
            }

            if (v15 != 1)
            {
              if (v15 != 2)
              {
                goto LABEL_27;
              }

              v16 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:1 itemIdentifier:v14];
              v17 = [v13 item];
              [(MPModelLibraryPlaylistEditChangeDetails *)v16 setItem:v17];

              v18 = [v13 previousReferenceIdentifier];
              [(MPModelLibraryPlaylistEditChangeDetails *)v16 setReferenceItemIdentifier:v18];
              v19 = [*(*(v1 + 32) + 136) objectForKeyedSubscript:v18];
              [(MPModelLibraryPlaylistEditChangeDetails *)v16 setReferenceItemPositionIdentifier:v19];

              v10 = v49;
              [v7 addObject:v16];
              goto LABEL_25;
            }

            v16 = [[MPModelLibraryPlaylistEditChangeDetails alloc] initWithType:2 itemIdentifier:v14];
          }

          [v7 addObject:v16];
LABEL_26:

LABEL_27:
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v10);
    }

    v29 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v1 + 32);
      *buf = 138543618;
      v60 = v30;
      v61 = 2114;
      v62 = v7;
      _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Applying changes to undo previous change: %{public}@", buf, 0x16u);
    }

    v31 = [MPModelLibraryPlaylistEditTransactionDetails alloc];
    v32 = [MEMORY[0x1E696AFB0] UUID];
    v33 = [v32 UUIDString];
    [v33 lowercaseString];
    v35 = v34 = v7;
    v36 = v47;
    v37 = [(MPModelLibraryPlaylistEditTransactionDetails *)v31 initWithIdentifier:v35 referenceIdentifier:v47];

    v38 = *(v1 + 32);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __78__MPModelLibraryPlaylistEditController_undoPreviousTransactionWithCompletion___block_invoke_45;
    v50[3] = &unk_1E767BBA8;
    v50[4] = v38;
    v51 = v46;
    v52 = v37;
    v53 = *(v1 + 40);
    v39 = v37;
    v40 = v46;
    [v38 _applyChanges:v34 toTransaction:v39 completion:v50];
  }
}

void __78__MPModelLibraryPlaylistEditController_undoPreviousTransactionWithCompletion___block_invoke_45(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v5 = a1[4];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v3;
    v6 = "%{public}@ Failed to undo previous change. err=%{public}@";
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
  }

  else
  {
    --*(a1[4] + 152);
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v6 = "%{public}@ Successfully performed undo of %{public}@ producing transaction %{public}@";
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 32;
  }

  _os_log_impl(&dword_1A238D000, v7, v8, v6, &v14, v9);
LABEL_7:

  dispatch_resume(*(a1[4] + 16));
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1[6];
  }

  (*(a1[7] + 16))(a1[7], v13, v3);
  *(a1[4] + 160) = 0;
}

- (id)removeAllPlaylistEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__MPModelLibraryPlaylistEditController_removeAllPlaylistEntries__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __64__MPModelLibraryPlaylistEditController_removeAllPlaylistEntries__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (!v3)
  {
    [v2 _startNewTransaction];
    v2 = *(a1 + 32);
  }

  v4 = [v2 _removeAllPlaylistEntries];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 112));
  [*(*(*(a1 + 40) + 8) + 40) addChanges:v4];
  if (!v3)
  {
    [*(a1 + 32) _endTransactionCommittingChanges:1];
  }
}

- (id)removePlaylistEntries:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__33276;
  v16 = __Block_byref_object_dispose__33277;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPModelLibraryPlaylistEditController_removePlaylistEntries___block_invoke;
  block[3] = &unk_1E7681330;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__MPModelLibraryPlaylistEditController_removePlaylistEntries___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (!v3)
  {
    [v2 _startNewTransaction];
    v2 = *(a1 + 32);
  }

  v4 = [v2 _removePlaylistEntries:*(a1 + 40)];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 112));
  [*(*(*(a1 + 48) + 8) + 40) addChanges:v4];
  if (!v3)
  {
    [*(a1 + 32) _endTransactionCommittingChanges:1];
  }
}

- (id)removePlaylistEntry:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(MPModelLibraryPlaylistEditController *)self removePlaylistEntries:v6, v9, v10];

  return v7;
}

- (id)movePlaylistEntry:(id)a3 afterEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__33276;
  v21 = __Block_byref_object_dispose__33277;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__MPModelLibraryPlaylistEditController_movePlaylistEntry_afterEntry___block_invoke;
  v13[3] = &unk_1E7681900;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(accessQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __69__MPModelLibraryPlaylistEditController_movePlaylistEntry_afterEntry___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16 = 138543874;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ moving entry %{public}@ after entry %{public}@", &v16, 0x20u);
  }

  v6 = *(a1 + 32);
  v7 = v6[14];
  if (!v7)
  {
    [v6 _startNewTransaction];
  }

  v8 = [*(a1 + 40) universalIdentifier];
  v9 = [*(*(a1 + 32) + 136) objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [*(a1 + 40) positionUniversalIdentifier];
  }

  v12 = v11;

  v13 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:v8];
  v14 = [*(a1 + 32) _movePlaylistEntry:v13 afterEntry:*(a1 + 48)];
  v15 = +[MPModelPlaylistEntry newUniversalIdentifier];
  [v14 setItemPositionIdentifier:v15];
  [v14 setPreviousPositionIdentifier:v12];
  [v14 setItem:v13];
  [*(*(a1 + 32) + 136) setObject:v15 forKeyedSubscript:v8];
  [*(*(a1 + 32) + 144) setObject:v8 forKeyedSubscript:v15];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 112));
  [*(*(*(a1 + 56) + 8) + 40) addChange:v14];
  if (!v7)
  {
    [*(a1 + 32) _endTransactionCommittingChanges:1];
  }
}

- (void)insertObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke;
  v15[3] = &unk_1E7681770;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

void __76__MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (!v3)
  {
    [*(a1 + 32) _startNewTransaction];
    v2 = *(a1 + 32);
  }

  v4 = v3 == 0;
  objc_initWeak(&location, v2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke_2;
  v8[3] = &unk_1E767BB80;
  objc_copyWeak(&v10, &location);
  v11 = v4;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  [v5 _insertObjects:v6 afterEntry:v7 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __76__MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained[14];
  v8 = v7;
  if (!v5)
  {
    [v7 addChanges:v10];
  }

  if (*(a1 + 56) == 1)
  {
    [WeakRetained _endTransactionCommittingChanges:v5 == 0];
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v5);
}

- (void)insertObject:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v13 count:1];

  [(MPModelLibraryPlaylistEditController *)self insertObjects:v12 afterEntry:v10 completion:v9, v13, v14];
}

- (void)insertObjectsAtStart:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPModelLibraryPlaylistEditController_insertObjectsAtStart_completion___block_invoke;
  block[3] = &unk_1E7681568;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __72__MPModelLibraryPlaylistEditController_insertObjectsAtStart_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (!v3)
  {
    [*(a1 + 32) _startNewTransaction];
    v2 = *(a1 + 32);
  }

  v4 = v3 == 0;
  objc_initWeak(&location, v2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__MPModelLibraryPlaylistEditController_insertObjectsAtStart_completion___block_invoke_2;
  v7[3] = &unk_1E767BB80;
  objc_copyWeak(&v9, &location);
  v10 = v4;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v5 _insertObjects:v6 afterEntry:0 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__MPModelLibraryPlaylistEditController_insertObjectsAtStart_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained[14];
  v8 = v7;
  if (!v5)
  {
    [v7 addChanges:v10];
  }

  if (*(a1 + 56) == 1)
  {
    [WeakRetained _endTransactionCommittingChanges:v5 == 0];
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v5);
}

- (void)insertObjectAtStart:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(MPModelLibraryPlaylistEditController *)self insertObjectsAtStart:v9 completion:v7, v10, v11];
}

- (void)appendObjects:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPModelLibraryPlaylistEditController_appendObjects_completion___block_invoke;
  block[3] = &unk_1E7681568;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __65__MPModelLibraryPlaylistEditController_appendObjects_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (!v3)
  {
    [*(a1 + 32) _startNewTransaction];
    v2 = *(a1 + 32);
  }

  if (*(v2 + 128))
  {
    v4 = [*(v2 + 96) objectForKeyedSubscript:?];
    v2 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 == 0;
  objc_initWeak(&location, v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPModelLibraryPlaylistEditController_appendObjects_completion___block_invoke_2;
  v8[3] = &unk_1E767BB80;
  objc_copyWeak(&v10, &location);
  v11 = v5;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v6 _insertObjects:v7 afterEntry:v4 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __65__MPModelLibraryPlaylistEditController_appendObjects_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained[14];
  v8 = v7;
  if (!v5)
  {
    [v7 addChanges:v10];
  }

  if (*(a1 + 56) == 1)
  {
    [WeakRetained _endTransactionCommittingChanges:v5 == 0];
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v5);
}

- (void)appendObject:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(MPModelLibraryPlaylistEditController *)self appendObjects:v9 completion:v7, v10, v11];
}

- (id)performTransactionWithBlock:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v7 lowercaseString];
  v9 = [(MPModelLibraryPlaylistEditController *)self performTransactionWithIdentifier:v8 block:v5];

  return v9;
}

- (id)performTransactionWithIdentifier:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__33276;
  v23 = __Block_byref_object_dispose__33277;
  v24 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPModelLibraryPlaylistEditController_performTransactionWithIdentifier_block___block_invoke;
  block[3] = &unk_1E767BB58;
  v17 = &v19;
  v18 = a2;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(accessQueue, block);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __79__MPModelLibraryPlaylistEditController_performTransactionWithIdentifier_block___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[14])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a1[8] object:a1[4] file:@"MPModelLibraryPlaylistEditController.m" lineNumber:358 description:@"Already have a transaction started!"];

    v2 = a1[4];
  }

  [v2 _startTransactionWithIdentifier:a1[5]];
  (*(a1[6] + 16))();
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 112));
  v3 = a1[4];

  return [v3 _endTransactionCommittingChanges:1];
}

- (MPSectionedCollection)currentTrackList
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__33276;
  v11 = __Block_byref_object_dispose__33277;
  v12 = objc_alloc_init(MPMutableSectionedCollection);
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__MPModelLibraryPlaylistEditController_currentTrackList__block_invoke;
  v6[3] = &unk_1E76819F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__MPModelLibraryPlaylistEditController_currentTrackList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentTrackList];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setEditSessionID:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MPModelLibraryPlaylistEditController_setEditSessionID___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __57__MPModelLibraryPlaylistEditController_setEditSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;
}

- (NSString)editSessionID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPModelLibraryPlaylistEditController_editSessionID__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__MPModelLibraryPlaylistEditController_editSessionID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  if (v3)
  {
    v4 = 0;
  }

  else if ([*(v2 + 24) hasLoadedValueForKey:@"MPModelPropertyPlaylistEditSessionID"])
  {
    v3 = [*(*(a1 + 32) + 24) editSessionID];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = &stru_1F149ECA8;
  }

  v5 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)setCoverArtworkRecipe:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MPModelLibraryPlaylistEditController_setCoverArtworkRecipe___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __62__MPModelLibraryPlaylistEditController_setCoverArtworkRecipe___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;
}

- (NSString)coverArtworkRecipe
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MPModelLibraryPlaylistEditController_coverArtworkRecipe__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__MPModelLibraryPlaylistEditController_coverArtworkRecipe__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  if (v3)
  {
    v4 = 0;
  }

  else if ([*(v2 + 24) hasLoadedValueForKey:@"MPModelPropertyPlaylistCoverArtworkRecipe"])
  {
    v3 = [*(*(a1 + 32) + 24) coverArtworkRecipe];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = &stru_1F149ECA8;
  }

  v5 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)setCuratorPlaylist:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MPModelLibraryPlaylistEditController_setCuratorPlaylist___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __59__MPModelLibraryPlaylistEditController_setCuratorPlaylist___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
}

- (NSNumber)isCuratorPlaylist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MPModelLibraryPlaylistEditController_isCuratorPlaylist__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__MPModelLibraryPlaylistEditController_isCuratorPlaylist__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  if (v3)
  {
    v4 = 0;
  }

  else if ([*(v2 + 24) hasLoadedValueForKey:@"MPModelPropertyPlaylistCuratorPlaylist"])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(a1 + 32) + 24), "isCuratorPlaylist")}];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = MEMORY[0x1E695E110];
  }

  v5 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)setVisiblePlaylist:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MPModelLibraryPlaylistEditController_setVisiblePlaylist___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __59__MPModelLibraryPlaylistEditController_setVisiblePlaylist___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = v2;
}

- (NSNumber)isVisiblePlaylist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MPModelLibraryPlaylistEditController_isVisiblePlaylist__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__MPModelLibraryPlaylistEditController_isVisiblePlaylist__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = 0;
  }

  else if ([*(v2 + 24) hasLoadedValueForKey:@"MPModelPropertyPlaylistVisiblePlaylist"])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(a1 + 32) + 24), "isVisiblePlaylist")}];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = MEMORY[0x1E695E110];
  }

  v5 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)setPublicPlaylist:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MPModelLibraryPlaylistEditController_setPublicPlaylist___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __58__MPModelLibraryPlaylistEditController_setPublicPlaylist___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;
}

- (NSNumber)isPublicPlaylist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MPModelLibraryPlaylistEditController_isPublicPlaylist__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__MPModelLibraryPlaylistEditController_isPublicPlaylist__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  if (v3)
  {
    v4 = 0;
  }

  else if ([*(v2 + 24) hasLoadedValueForKey:@"MPModelPropertyPlaylistPublicPlaylist"])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(a1 + 32) + 24), "isPublicPlaylist")}];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = MEMORY[0x1E695E110];
  }

  v5 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)setUserImage:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MPModelLibraryPlaylistEditController_setUserImage___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (UIImage)userImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MPModelLibraryPlaylistEditController_userImage__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setParentPlaylist:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MPModelLibraryPlaylistEditController_setParentPlaylist___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (MPModelPlaylist)parentPlaylist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MPModelLibraryPlaylistEditController_parentPlaylist__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MPModelLibraryPlaylistEditController_setDescriptionText___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __59__MPModelLibraryPlaylistEditController_setDescriptionText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;
}

- (NSString)descriptionText
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MPModelLibraryPlaylistEditController_descriptionText__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__MPModelLibraryPlaylistEditController_descriptionText__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  v4 = v3;
  if (!v3)
  {
    v4 = [*(v2 + 24) descriptionText];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (id)setPlaylistName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__33276;
  v16 = __Block_byref_object_dispose__33277;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MPModelLibraryPlaylistEditController_setPlaylistName___block_invoke;
  block[3] = &unk_1E7681330;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__MPModelLibraryPlaylistEditController_setPlaylistName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setPlaylistName:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33276;
  v10 = __Block_byref_object_dispose__33277;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MPModelLibraryPlaylistEditController_name__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__MPModelLibraryPlaylistEditController_name__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = v3;
  if (!v3)
  {
    v4 = [*(v2 + 24) name];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (BOOL)isRedoAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MPModelLibraryPlaylistEditController_isRedoAvailable__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__MPModelLibraryPlaylistEditController_isRedoAvailable__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  result = [*(v2 + 120) count];
  *(*(*(a1 + 40) + 8) + 24) = v3 < result - 1;
  return result;
}

- (BOOL)isUndoAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MPModelLibraryPlaylistEditController_isUndoAvailable__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__MPModelLibraryPlaylistEditController_isUndoAvailable__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) count];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  v5 = (v4 & 0x8000000000000000) == 0 && *(v3 + 248) - 1 >= (result + ~v4);
  *(*(*(a1 + 40) + 8) + 24) = v5;
  return result;
}

- (void)beginEditingWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MPModelLibraryPlaylistEditController_beginEditingWithCompletion___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __67__MPModelLibraryPlaylistEditController_beginEditingWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *buf = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Begining edit with playlist %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = v5[5];
  v7 = v5[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MPModelLibraryPlaylistEditController_beginEditingWithCompletion___block_invoke_26;
  v8[3] = &unk_1E7680CA8;
  v8[4] = v5;
  v9 = *(a1 + 40);
  [v5 _createTrackIdentifierListWithInitialEntries:v6 initialObjects:v7 completion:v8];
}

void __67__MPModelLibraryPlaylistEditController_beginEditingWithCompletion___block_invoke_26(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      v7 = [v3 msv_description];
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Finished loading playlist %{public}@ error=%{public}@", &v10, 0x20u);
    }
  }

  else
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished loading playlist %{public}@", &v10, 0x16u);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  (*(*(a1 + 40) + 16))();
}

- (NSArray)initialTrackList
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__33276;
  v12 = __Block_byref_object_dispose__33277;
  v13 = [MEMORY[0x1E695DEC8] array];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MPModelLibraryPlaylistEditController_initialTrackList__block_invoke;
  block[3] = &unk_1E76814A0;
  block[5] = &v8;
  block[6] = a2;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__MPModelLibraryPlaylistEditController_initialTrackList__block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 56))
  {
    v3 = [*(v1 + 104) objectForKeyedSubscript:?];
    v8 = v3;
    if (!v3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a1[6] object:*(a1[4] + 56) file:? lineNumber:? description:?];

      v3 = 0;
    }

    v4 = [v3 playlistEntries];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)setInitialTrackList:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MPModelLibraryPlaylistEditController_setInitialTrackList___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __60__MPModelLibraryPlaylistEditController_setInitialTrackList___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [*(v6 + 40) totalItemCount];
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting initial tracklist of edit controller with %ld items", &v8, 0x16u);
  }
}

- (id)_initWithLibrary:(id)a3 playlist:(id)a4 initialTrackList:(id)a5 initialItemList:(id)a6 playlistProperties:(id)a7 playlistEntryProperties:(id)a8 authorProfile:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v52.receiver = self;
  v52.super_class = MPModelLibraryPlaylistEditController;
  v23 = [(MPModelLibraryPlaylistEditController *)&v52 init];
  if (v23)
  {
    v24 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v23->_operationQueue;
    v23->_operationQueue = v24;

    [(NSOperationQueue *)v23->_operationQueue setName:@"com.apple.MediaPlayer.MPModelLibraryPlaylistEditController.operationQueue"];
    [(NSOperationQueue *)v23->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v23->_operationQueue setQualityOfService:33];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.MediaPlayer.MPModelLibraryPlaylistEditController.accessQueue", v26);
    accessQueue = v23->_accessQueue;
    v23->_accessQueue = v27;

    objc_storeStrong(&v23->_library, a3);
    v29 = [v17 copy];
    playlist = v23->_playlist;
    v23->_playlist = v29;

    v31 = [v18 copy];
    initialTrackList = v23->_initialTrackList;
    v23->_initialTrackList = v31;

    v33 = [v19 copy];
    initialTrackObjectList = v23->_initialTrackObjectList;
    v23->_initialTrackObjectList = v33;

    if (v20)
    {
      v35 = v20;
    }

    else
    {
      v35 = +[MPPropertySet emptyPropertySet];
    }

    playlistProperties = v23->_playlistProperties;
    v23->_playlistProperties = v35;

    if (v21)
    {
      v37 = v21;
    }

    else
    {
      v37 = +[MPPropertySet emptyPropertySet];
    }

    playlistEntryProperties = v23->_playlistEntryProperties;
    v23->_playlistEntryProperties = v37;

    v39 = [v22 copy];
    authorProfile = v23->_authorProfile;
    v23->_authorProfile = v39;

    v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    dataSources = v23->_dataSources;
    v23->_dataSources = v41;

    v43 = [MEMORY[0x1E695DF90] dictionary];
    playlistEntriesByIdentifier = v23->_playlistEntriesByIdentifier;
    v23->_playlistEntriesByIdentifier = v43;

    v45 = [MEMORY[0x1E695DF70] array];
    completedTransactions = v23->_completedTransactions;
    v23->_completedTransactions = v45;

    v47 = [MEMORY[0x1E695DF90] dictionary];
    itemIdentifierToPositionIdentifierMap = v23->_itemIdentifierToPositionIdentifierMap;
    v23->_itemIdentifierToPositionIdentifierMap = v47;

    v49 = [MEMORY[0x1E695DF90] dictionary];
    positionIdentifierToItemIdentifierMap = v23->_positionIdentifierToItemIdentifierMap;
    v23->_positionIdentifierToItemIdentifierMap = v49;

    v23->_lastAppliedTransactionIndex = -1;
  }

  return v23;
}

@end