@interface MPModelLibraryGlobalPlaylistImportChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryGlobalPlaylistImportChangeRequestOperation

- (void)execute
{
  v13 = *MEMORY[0x1E69E9840];
  globalPlaylistID = [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)self globalPlaylistID];
  if ([(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)self shouldLibraryAdd])
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = globalPlaylistID;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "MPModelLibraryGlobalPlaylistImportChangeRequestOperation adding playlist with globalID=%{public}@", buf, 0xCu);
    }

    mediaLibrary = [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)self mediaLibrary];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__MPModelLibraryGlobalPlaylistImportChangeRequestOperation_execute__block_invoke;
    v8[3] = &unk_1E767B680;
    v9 = globalPlaylistID;
    selfCopy = self;
    [mediaLibrary addGlobalPlaylistWithID:v9 andAddToCloudLibrary:1 completion:v8];
  }

  else
  {
    mediaLibrary2 = [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)self mediaLibrary];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__MPModelLibraryGlobalPlaylistImportChangeRequestOperation_execute__block_invoke_3;
    v7[3] = &unk_1E767AF00;
    v7[4] = self;
    [mediaLibrary2 addNonLibraryOwnedPlaylistWithGlobalID:globalPlaylistID completion:v7];
  }
}

void __67__MPModelLibraryGlobalPlaylistImportChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MPMediaQuery alloc];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [MPMediaPropertyPredicate predicateWithValue:*(a1 + 32) forProperty:@"cloudGlobalID"];
  v7 = [v5 setWithObject:v6];
  v8 = [(MPMediaQuery *)v4 initWithFilterPredicates:v7];

  v9 = [*(a1 + 40) mediaLibrary];
  [(MPMediaQuery *)v8 setMediaLibrary:v9];

  [(MPMediaQuery *)v8 setGroupingType:6];
  [(MPMediaQuery *)v8 setEntityLimit:1];
  [(MPMediaQuery *)v8 setIgnoreRestrictionsPredicates:1];
  [(MPMediaQuery *)v8 setShouldIncludeNonLibraryEntities:1];
  v10 = [(MPMediaQuery *)v8 collections];
  v11 = [v10 firstObject];

  v12 = [*(a1 + 40) responseHandler];
  v13 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = _Block_copy(v12);
    v16 = 138543874;
    v17 = v14;
    v18 = 2114;
    v19 = v3;
    v20 = 2048;
    v21 = v15;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "MPModelLibraryGlobalPlaylistImportChangeRequestOperation finished adding playlist with globalID=%{public}@ with error=%{public}@, completionHandler=%p", &v16, 0x20u);
  }

  if (v12)
  {
    (v12)[2](v12, v11, v3);
  }

  [*(a1 + 40) finishWithError:v3];
}

void __67__MPModelLibraryGlobalPlaylistImportChangeRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) responseHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }

  [*(a1 + 32) finishWithError:v5];
}

@end