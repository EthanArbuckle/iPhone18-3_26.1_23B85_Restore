@interface MPModelLibraryPlaylistEditDataSource
- (MPModelLibraryPlaylistEditDataSource)initWithIdentifier:(id)a3;
- (MPModelLibraryPlaylistEditDataSource)initWithIdentifier:(id)a3 authorProfile:(id)a4;
- (MPMutableIdentifierListSection)dataSourceSection;
- (id)newPlaylistEntryForTrack:(id)a3;
- (void)_reloadWithCompletion:(id)a3;
- (void)loadEntriesWithCompletion:(id)a3;
- (void)reloadSection:(id)a3 completion:(id)a4;
@end

@implementation MPModelLibraryPlaylistEditDataSource

- (MPMutableIdentifierListSection)dataSourceSection
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceSection);

  return WeakRetained;
}

- (void)_reloadWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceSection);
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke;
    v6[3] = &unk_1E767C058;
    v6[4] = self;
    v8 = v4;
    v7 = WeakRetained;
    [(MPModelLibraryPlaylistEditDataSource *)self loadEntriesWithCompletion:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load entries. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_24;
    v13[3] = &unk_1E7681770;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = *(a1 + 48);
    dispatch_async(v9, v13);
  }
}

void __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_24(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v4 = *(a1 + 32);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_2;
  v26[3] = &unk_1E767BFC0;
  v5 = v3;
  v27 = v5;
  v6 = v2;
  v28 = v6;
  [v4 enumerateObjectsUsingBlock:v26];
  v7 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = [v5 count];
    *buf = 138543618;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded %ld tracks from data source", buf, 0x16u);
  }

  v10 = [*(a1 + 48) itemIdentifiers];
  v11 = [v10 count];
  v12 = [v5 count];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_29;
  v23[3] = &unk_1E767BFE8;
  v24 = v10;
  v13 = v5;
  v25 = v13;
  v14 = v10;
  v15 = [MPChangeDetails changeDetailsWithPreviousCount:v11 finalCount:v12 isEqualBlock:v23 isUpdatedBlock:&__block_literal_global_33_33465];
  v16 = [v6 copy];
  v17 = *(a1 + 40);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_3;
  v21[3] = &unk_1E767C030;
  v22 = v13;
  v20 = v13;
  [WeakRetained applyChanges:v15 itemLookupBlock:v21];

  (*(*(a1 + 56) + 16))();
}

void __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 universalIdentifier];
  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) setObject:v3 forKey:v4];
}

uint64_t __62__MPModelLibraryPlaylistEditDataSource__reloadWithCompletion___block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndex:a2];
  v6 = [*(a1 + 40) objectAtIndex:a3];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (void)reloadSection:(id)a3 completion:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_dataSourceSection, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPModelLibraryPlaylistEditDataSource_reloadSection_completion___block_invoke;
  v8[3] = &unk_1E76816D0;
  v9 = v6;
  v7 = v6;
  [(MPModelLibraryPlaylistEditDataSource *)self _reloadWithCompletion:v8];
}

- (void)loadEntriesWithCompletion:(id)a3
{
  v5 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v5 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEditDataSource.m" lineNumber:72 description:{@"Subclass %@ must implement -%@ defined in %@.", v7, v8, @"[MPModelLibraryPlaylistEditDataSource class]"}];
  }
}

- (id)newPlaylistEntryForTrack:(id)a3
{
  v5 = a3;
  v6 = +[MPModelPlaylistEntry newUniversalIdentifier];
  v7 = +[MPModelPlaylistEntry newUniversalIdentifier];
  v8 = [v5 identifiers];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__MPModelLibraryPlaylistEditDataSource_newPlaylistEntryForTrack___block_invoke;
  v23[3] = &unk_1E7680B28;
  v9 = v6;
  v24 = v9;
  v10 = [v8 copyWithSource:@"com.apple.MediaPlayer.MPModelLibraryPlaylistEditController" block:v23];
  v11 = [MPModelPlaylistEntry alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__MPModelLibraryPlaylistEditDataSource_newPlaylistEntryForTrack___block_invoke_3;
  v17[3] = &unk_1E767BF98;
  v18 = v9;
  v19 = v7;
  v20 = self;
  v21 = v5;
  v22 = a2;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = [(MPModelObject *)v11 initWithIdentifiers:v10 block:v17];

  return v15;
}

void __65__MPModelLibraryPlaylistEditDataSource_newPlaylistEntryForTrack___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 library];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 databaseID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__MPModelLibraryPlaylistEditDataSource_newPlaylistEntryForTrack___block_invoke_2;
    v7[3] = &unk_1E7680B00;
    v8 = v5;
    [v3 setLibraryIdentifiersWithDatabaseID:v6 block:v7];
  }

  [v3 setContainerUniqueID:*(a1 + 32)];
}

void __65__MPModelLibraryPlaylistEditDataSource_newPlaylistEntryForTrack___block_invoke_3(void *a1, void *a2)
{
  v4 = a2;
  [v4 setUniversalIdentifier:a1[4]];
  [v4 setPositionUniversalIdentifier:a1[5]];
  [v4 setSocialContributor:*(a1[6] + 16)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSong:a1[7]];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[8] object:a1[6] file:@"MPModelLibraryPlaylistEditDataSource.m" lineNumber:64 description:{@"Unsupported model object type for track %@", a1[7]}];
  }
}

void __65__MPModelLibraryPlaylistEditDataSource_newPlaylistEntryForTrack___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setContainedPersistentID:{objc_msgSend(v2, "persistentID")}];
  [v3 setPersistentID:0];
}

- (MPModelLibraryPlaylistEditDataSource)initWithIdentifier:(id)a3 authorProfile:(id)a4
{
  v7 = a4;
  v8 = [(MPModelLibraryPlaylistEditDataSource *)self initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_authorProfile, a4);
  }

  return v9;
}

- (MPModelLibraryPlaylistEditDataSource)initWithIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MPModelLibraryPlaylistEditDataSource;
  v6 = [(MPModelLibraryPlaylistEditDataSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = dispatch_queue_create("com.apple.MediaPlayerFramework.MPModelLibraryPlaylistEditDataSource.serialQueue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__handleMPMediaLibraryEntitiesAddedOrRemovedNotification_ name:@"MPMediaLibraryEntitiesAddedOrRemovedNotification" object:0];
  }

  return v7;
}

@end