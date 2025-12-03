@interface MPHomeSharingML3DataProvider
+ (id)homeSharingGroupID;
+ (void)_determineHomeSharingGroupIDWithCompletionHandler:(id)handler;
+ (void)beginScanningForLibraries;
+ (void)endScanningForLibraries;
- (MPHomeSharingML3DataProvider)initWithHomeSharingLibrary:(id)library;
- (id)_tokenDataForAccountID:(unint64_t)d;
- (id)adjustedValueForMPProperty:(id)property ofEntity:(id)entity withDefaultValue:(id)value;
- (id)errorResolverForItem:(id)item;
- (id)itemResultSetForQueryCriteria:(id)criteria;
- (id)protectedContentSupportStorageURL;
- (void)_fetchTokensForAuthorizedDSIDs;
- (void)_fillContainerForQueryCriteria:(id)criteria completionBlock:(id)block;
- (void)_homeSharingGroupIDDidChangeNotification:(id)notification;
- (void)_homeSharingLibraryDidBecomeUnavailable:(id)unavailable;
- (void)_homeSharingLibraryDidUpdateRevisionNumber:(id)number;
- (void)connectWithAuthenticationData:(id)data completionBlock:(id)block progressHandler:(id)handler;
- (void)dealloc;
- (void)loadQueryCriteria:(id)criteria countOfCollectionsWithCompletionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria countOfItemsWithCompletionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria hasCollectionsWithCompletionBlock:(id)block;
- (void)loadQueryCriteria:(id)criteria hasItemsWithCompletionBlock:(id)block;
- (void)setRentalPlaybackStartDateForItemID:(unint64_t)d;
- (void)setTokenData:(id)data forAuthorizedDSID:(unint64_t)d;
- (void)setValue:(id)value forProperty:(id)property ofItemWithIdentifier:(int64_t)identifier completionBlock:(id)block;
@end

@implementation MPHomeSharingML3DataProvider

+ (void)beginScanningForLibraries
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"SharingDisabled"];

  if ((v4 & 1) == 0)
  {
    if (!__browserDelegate)
    {
      v5 = objc_alloc_init(MPHSBrowserDelegate);
      v6 = __browserDelegate;
      __browserDelegate = v5;
    }

    if ((__isBrowsing & 1) == 0)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Beginning scan.", buf, 2u);
      }

      __isBrowsing = 1;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__MPHomeSharingML3DataProvider_beginScanningForLibraries__block_invoke;
      v8[3] = &__block_descriptor_40_e5_v8__0l;
      v8[4] = self;
      [self _determineHomeSharingGroupIDWithCompletionHandler:v8];
    }
  }
}

void __57__MPHomeSharingML3DataProvider_beginScanningForLibraries__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__isBrowsing == 1)
  {
    v1 = [*(a1 + 32) homeSharingGroupID];
    v2 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v1;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Group ID: %{public}@", &v8, 0xCu);
    }

    v3 = [v1 length];
    v4 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v8 = 138543362;
        v9 = v1;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Searching for libraries in home sharing group: %{public}@", &v8, 0xCu);
      }

      v6 = [MEMORY[0x1E69A4648] homeSharingBrowserWithGroupID:v1];
      v7 = __browser;
      __browser = v6;

      [__browser setDelegate:__browserDelegate];
      [__browser start];
      objc_opt_class();
    }

    else
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] No group ID, skipping scan.", &v8, 2u);
      }

      __isBrowsing = 0;
    }
  }
}

+ (id)homeSharingGroupID
{
  defaultStore = [MEMORY[0x1E69A4630] defaultStore];
  groupID = [defaultStore groupID];

  return groupID;
}

- (void)_fillContainerForQueryCriteria:(id)criteria completionBlock:(id)block
{
  criteriaCopy = criteria;
  blockCopy = block;
  containerFillQueue = self->_containerFillQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke;
  block[3] = &unk_1E7681568;
  v12 = criteriaCopy;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = criteriaCopy;
  dispatch_async(containerFillQueue, block);
}

void __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke(id *a1)
{
  v2 = [a1[4] predicateForProperty:@"playlistPersistentID"];
  if (!v2 || [a1[4] groupingType] == 6)
  {
    goto LABEL_5;
  }

  v3 = [v2 value];
  if ([*(a1[5] + 18) containsObject:v3])
  {

LABEL_5:
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_2_144;
    block[3] = &unk_1E7682370;
    v21 = a1[6];
    dispatch_async(v4, block);

    v3 = v21;
    goto LABEL_6;
  }

  v5 = [*(a1[5] + 19) objectForKey:v3];
  v6 = [a1[6] copy];
  v7 = v6;
  if (v5)
  {
    v8 = _Block_copy(v6);
    [v5 addObject:v8];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = _Block_copy(v7);
    v5 = [v9 initWithObjects:{v10, 0}];

    [*(a1[5] + 19) setObject:v5 forKey:v3];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_2;
    aBlock[3] = &unk_1E76823C0;
    aBlock[4] = a1[5];
    v11 = v3;
    v32 = v11;
    v12 = _Block_copy(aBlock);
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 0;
    v13 = dispatch_time(0, 2000000000);
    v14 = *(a1[5] + 20);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_4;
    v26[3] = &unk_1E7681928;
    v28 = v29;
    v15 = v12;
    v27 = v15;
    dispatch_after(v13, v14, v26);
    v16 = [a1[5] library];
    v17 = *(a1[5] + 16);
    v18 = [v11 longLongValue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_5;
    v22[3] = &unk_1E7675E88;
    v22[4] = a1[5];
    v23 = v11;
    v25 = v29;
    v19 = v15;
    v24 = v19;
    [v16 fillContainerForHomeSharingLibrary:v17 containerID:v18 completionHandler:v22];

    _Block_object_dispose(v29, 8);
  }

LABEL_6:
}

uint64_t __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 144) addObject:*(a1 + 40)];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 152) objectForKey:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_3;
        block[3] = &unk_1E7682370;
        block[4] = v7;
        dispatch_async(v8, block);
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 152) removeObjectForKey:*(a1 + 40)];
}

void __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 160);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_6;
  block[3] = &unk_1E7675E60;
  v15 = a2;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 32);
  v9 = *(a1 + 48);
  v7 = v9;
  v14 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_6(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 72) & 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 138543618;
      v7 = v3;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "Could not populate container %{public}@: %{public}@", buf, 0x16u);
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MPHomeSharingML3DataProvider__fillContainerForQueryCriteria_completionBlock___block_invoke_143;
    block[3] = &unk_1E7682518;
    block[4] = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_tokenDataForAccountID:(unint64_t)d
{
  if (d)
  {
    tokenDataForDSIDs = self->_tokenDataForDSIDs;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v5 = [(NSMutableDictionary *)tokenDataForDSIDs objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchTokensForAuthorizedDSIDs
{
  homeSharingGroupID = [(HSHomeSharingLibrary *)self->_homeSharingLibrary homeSharingGroupID];

  if (homeSharingGroupID)
  {
    request = [MEMORY[0x1E69A4640] request];
    homeSharingLibrary = self->_homeSharingLibrary;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__MPHomeSharingML3DataProvider__fetchTokensForAuthorizedDSIDs__block_invoke;
    v6[3] = &unk_1E7675EB0;
    v6[4] = self;
    [(HSHomeSharingLibrary *)homeSharingLibrary sendRequest:request withResponseHandler:v6];
  }
}

void __62__MPHomeSharingML3DataProvider__fetchTokensForAuthorizedDSIDs__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 128) deviceGUID];
  if ([v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [v3 authorizedDSIDs];
    v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [MEMORY[0x1E69A4660] requestWithDSID:objc_msgSend(v9 deviceGUID:{"unsignedLongLongValue"), v4}];
          v11 = *(a1 + 32);
          v12 = *(v11 + 128);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __62__MPHomeSharingML3DataProvider__fetchTokensForAuthorizedDSIDs__block_invoke_2;
          v14[3] = &unk_1E7675F10;
          v14[4] = v11;
          v14[5] = v9;
          [v12 sendRequest:v10 withResponseHandler:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

void __62__MPHomeSharingML3DataProvider__fetchTokensForAuthorizedDSIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 tokenData];
  if ([v3 length])
  {
    [*(a1 + 32) setTokenData:v3 forAuthorizedDSID:{objc_msgSend(*(a1 + 40), "unsignedLongLongValue")}];
  }
}

- (void)setTokenData:(id)data forAuthorizedDSID:(unint64_t)d
{
  dataCopy = data;
  if (!self->_tokenDataForDSIDs)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    tokenDataForDSIDs = self->_tokenDataForDSIDs;
    self->_tokenDataForDSIDs = v6;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(dataCopy, "length")}];
  mutableBytes = [v8 mutableBytes];
  v10 = dataCopy;
  memcpy(mutableBytes, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  v11 = self->_tokenDataForDSIDs;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  [(NSMutableDictionary *)v11 setObject:v8 forKey:v12];
}

- (void)_homeSharingLibraryDidBecomeUnavailable:(id)unavailable
{
  v8 = *MEMORY[0x1E69E9840];
  userInfo = [unavailable userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E69A4628]];

  v5 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Home Sharing Library became unavailable: %{public}@", &v6, 0xCu);
  }

  +[MPHomeSharingML3DataProvider endScanningForLibraries];
  +[MPHomeSharingML3DataProvider beginScanningForLibraries];
}

- (void)_homeSharingLibraryDidUpdateRevisionNumber:(id)number
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MPHomeSharingML3DataProvider__homeSharingLibraryDidUpdateRevisionNumber___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__MPHomeSharingML3DataProvider__homeSharingLibraryDidUpdateRevisionNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__MPHomeSharingML3DataProvider__homeSharingLibraryDidUpdateRevisionNumber___block_invoke_2;
  v5[3] = &unk_1E767B220;
  v5[4] = v3;
  [v2 checkForChangesInHomeSharingLibrary:v4 completionHandler:v5];
}

void __75__MPHomeSharingML3DataProvider__homeSharingLibraryDidUpdateRevisionNumber___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__MPHomeSharingML3DataProvider__homeSharingLibraryDidUpdateRevisionNumber___block_invoke_3;
  v7[3] = &unk_1E76823C0;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __75__MPHomeSharingML3DataProvider__homeSharingLibraryDidUpdateRevisionNumber___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Failure to update shared library: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [*(*(a1 + 40) + 144) removeAllObjects];
    [MPMediaLibrary reloadLibraryDataProvider:*(a1 + 40)];
    v5 = *(a1 + 40);
    v6 = *(v5 + 136);
    *(v5 + 136) = 0;

    v7 = [*(*(a1 + 40) + 128) uniqueIdentifier];
    v8 = HSLibraryCacheDirectoryForIdentifier();
    v10 = [v8 stringByAppendingPathComponent:@"Tokens"];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtPath:v10 error:0];

    [*(a1 + 40) _fetchTokensForAuthorizedDSIDs];
  }
}

- (void)_homeSharingGroupIDDidChangeNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[MPHomeSharingML3DataProvider homeSharingGroupID];
  homeSharingLibrary = [(MPHomeSharingML3DataProvider *)self homeSharingLibrary];
  homeSharingGroupID = [homeSharingLibrary homeSharingGroupID];
  v7 = [v4 isEqual:homeSharingGroupID];

  if ((v7 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[MPHomeSharingML3DataProvider homeSharingGroupID];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Home sharing group ID changed to: %{public}@", &v13, 0xCu);
    }

    [MPMediaLibrary removeLibraryDataProvider:self removalReason:0];
    v10 = +[MPMediaLibrary defaultMediaLibrary];
    libraryDataProvider = [v10 libraryDataProvider];
    v12 = [libraryDataProvider isEqual:self];

    if (v12)
    {
      [MPMediaLibrary setDefaultMediaLibrary:0];
    }

    if (+[MPHomeSharingML3DataProvider isScanningForLibraries])
    {
      +[MPHomeSharingML3DataProvider endScanningForLibraries];
      +[MPHomeSharingML3DataProvider beginScanningForLibraries];
    }
  }
}

- (id)protectedContentSupportStorageURL
{
  v2 = MEMORY[0x1E695DFF8];
  uniqueIdentifier = [(HSHomeSharingLibrary *)self->_homeSharingLibrary uniqueIdentifier];
  v4 = HSLibraryCacheDirectoryForIdentifier();
  v5 = [v4 stringByAppendingPathComponent:@"Tokens"];
  v6 = [v2 fileURLWithPath:v5];

  return v6;
}

- (void)setRentalPlaybackStartDateForItemID:(unint64_t)d
{
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Updating rental playback start date", v11, 2u);
  }

  v6 = MEMORY[0x1E69B3538];
  library = [(MPMediaLibraryDataProviderML3 *)self library];
  v8 = [v6 newWithPersistentID:d inLibrary:library];

  v9 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  [v8 setValue:v10 forProperty:*MEMORY[0x1E69B31A0]];
}

- (id)errorResolverForItem:(id)item
{
  v40 = *MEMORY[0x1E69E9840];
  mediaItem = [item mediaItem];
  if (![mediaItem isRental])
  {
    v13 = [mediaItem valueForProperty:@"storeAccountID"];
    unsignedLongLongValue = [v13 unsignedLongLongValue];

    v15 = [(MPHomeSharingML3DataProvider *)self _tokenDataForAccountID:unsignedLongLongValue];
    v16 = v15;
    if (!unsignedLongLongValue || ![v15 length])
    {
      v21 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v30 = 138543874;
        v31 = mediaItem;
        v32 = 2048;
        v33 = unsignedLongLongValue;
        v34 = 2048;
        v35 = [v16 length];
        _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_ERROR, "Cannot create error resolver for media item: %{public}@ (accountID: %llu, tokenData: %llu bytes)", &v30, 0x20u);
      }

      v11 = 0;
      goto LABEL_24;
    }

    v17 = [mediaItem valueForProperty:@"storeDownloaderAccountID"];
    unsignedLongLongValue2 = [v17 unsignedLongLongValue];

    v19 = [mediaItem valueForProperty:@"storeFamilyAccountID"];
    unsignedLongLongValue3 = [v19 unsignedLongLongValue];

    v21 = [(MPHomeSharingML3DataProvider *)self _tokenDataForAccountID:unsignedLongLongValue2];
    mediaLibrary = [mediaItem mediaLibrary];
    protectedContentSupportStorageURL = [mediaLibrary protectedContentSupportStorageURL];

    if (unsignedLongLongValue2 && unsignedLongLongValue3)
    {
      v24 = [v21 length];
      v25 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
      v26 = v25;
      if (!v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v30 = 138544386;
          v31 = mediaItem;
          v32 = 2048;
          v33 = unsignedLongLongValue;
          v34 = 2048;
          v35 = [v16 length];
          v36 = 2048;
          v37 = unsignedLongLongValue2;
          v38 = 2048;
          v39 = [v21 length];
          _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_ERROR, "Cannot create error resolver for media item: %{public}@ (accountID: %llu, accountTokenData: %llu bytes, downloaderAccountID: %llu, downloaderTokenData: %llu bytes)", &v30, 0x34u);
        }

        v11 = 0;
        goto LABEL_23;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138544386;
        v31 = mediaItem;
        v32 = 2048;
        v33 = unsignedLongLongValue;
        v34 = 2048;
        v35 = [v16 length];
        v36 = 2048;
        v37 = unsignedLongLongValue2;
        v38 = 2048;
        v39 = [v21 length];
        _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Creating error resolver for media item: %{public}@ (accountID: %llu, accountTokenData: %llu bytes, downloaderAccountID: %llu, downloaderTokenData: %llu bytes)", &v30, 0x34u);
      }

      v27 = [[MPHomeSharingErrorResolver alloc] initWithKeybagURL:protectedContentSupportStorageURL accountID:unsignedLongLongValue accountTokenData:v16 downloaderAccountID:unsignedLongLongValue2 downloaderAccountTokenData:v21 familyAccountID:unsignedLongLongValue3];
    }

    else
    {
      v28 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 134218240;
        v31 = unsignedLongLongValue;
        v32 = 2048;
        v33 = [v16 length];
        _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Creating error resolver for account ID: %llu, token data length: %lu", &v30, 0x16u);
      }

      v27 = [[MPHomeSharingErrorResolver alloc] initWithKeybagURL:protectedContentSupportStorageURL accountID:unsignedLongLongValue accountTokenData:v16];
    }

    v11 = v27;
    [(MPHomeSharingErrorResolver *)v27 setDataProvider:self];
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v5 = [mediaItem valueForProperty:@"homeSharingID"];
  unsignedLongLongValue4 = [v5 unsignedLongLongValue];

  v7 = [mediaItem valueForProperty:@"storeAccountID"];
  unsignedLongLongValue5 = [v7 unsignedLongLongValue];

  v9 = [mediaItem valueForProperty:@"storeRentalID"];
  unsignedLongLongValue6 = [v9 unsignedLongLongValue];

  v11 = 0;
  if (unsignedLongLongValue4 && unsignedLongLongValue5 && unsignedLongLongValue6)
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218496;
      v31 = unsignedLongLongValue4;
      v32 = 2048;
      v33 = unsignedLongLongValue5;
      v34 = 2048;
      v35 = unsignedLongLongValue6;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Creating error resolver for item ID: %llu, account ID: %llu, rental ID: %llu", &v30, 0x20u);
    }

    v11 = -[MPHomeSharingRentalErrorResolver initWithItemID:homeSharingID:rentalID:accountID:]([MPHomeSharingRentalErrorResolver alloc], "initWithItemID:homeSharingID:rentalID:accountID:", [mediaItem persistentID], unsignedLongLongValue4, unsignedLongLongValue6, unsignedLongLongValue5);
    [(MPHomeSharingRentalErrorResolver *)v11 setDataProvider:self];
  }

LABEL_25:

  return v11;
}

- (id)adjustedValueForMPProperty:(id)property ofEntity:(id)entity withDefaultValue:(id)value
{
  propertyCopy = property;
  entityCopy = entity;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"filePath"])
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v12 = [valueCopy stringByTrimmingCharactersInSet:punctuationCharacterSet];

    v13 = [entityCopy valueForProperty:*MEMORY[0x1E69B3030]];
    LODWORD(punctuationCharacterSet) = [v13 longLongValue];

    v14 = [MEMORY[0x1E69A4670] requestWithDatabaseID:-[HSHomeSharingLibrary databaseID](self->_homeSharingLibrary itemID:"databaseID") format:{punctuationCharacterSet, v12}];
    v15 = [(HSHomeSharingLibrary *)self->_homeSharingLibrary urlForRequest:v14];
    absoluteString = [v15 absoluteString];
    v17 = [absoluteString mutableCopy];

    [v17 replaceCharactersInRange:0 withString:{4, @"home-sharing"}];
    valueCopy = v12;
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"verifiedIntegrity"])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:1];
LABEL_8:
    v17 = v18;
    goto LABEL_9;
  }

  if (![propertyCopy isEqualToString:@"albumRepresentativeItemArtworkToken"] || objc_msgSend(valueCopy, "length"))
  {
    v20.receiver = self;
    v20.super_class = MPHomeSharingML3DataProvider;
    v18 = [(MPMediaLibraryDataProviderML3 *)&v20 adjustedValueForMPProperty:propertyCopy ofEntity:entityCopy withDefaultValue:valueCopy];
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)setValue:(id)value forProperty:(id)property ofItemWithIdentifier:(int64_t)identifier completionBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  blockCopy = block;
  if ([propertyCopy isEqualToString:@"bookmarkTime"])
  {
    v13 = MEMORY[0x1E696AEC0];
    [valueCopy doubleValue];
    v15 = [v13 stringWithFormat:@"%u", (v14 * 1000.0)];
    v16 = @"daap.songbookmark";
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"rating"])
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 20 * objc_msgSend(valueCopy, "unsignedIntValue")];
    v16 = @"daap.songuserrating";
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"playCount"])
  {
    v16 = @"daap.songuserplaycount";
LABEL_9:
    v15 = @"1";
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"skipCount"])
  {
    v16 = @"daap.songuserskipcount";
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"likedState"])
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(valueCopy, "unsignedIntValue")];
    v16 = @"com.apple.itunes.liked-state";
LABEL_10:
    if (([propertyCopy isEqualToString:@"playCount"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"skipCount"))
    {
      v17 = MEMORY[0x1E69B3538];
      library = [(MPMediaLibraryDataProviderML3 *)self library];
      v19 = [v17 newWithPersistentID:identifier inLibrary:library];

      v20 = [v19 valueForProperty:*MEMORY[0x1E69B3030]];
      longLongValue = [v20 longLongValue];
      v22 = 0x1E69A4668;
    }

    else
    {
      v23 = MEMORY[0x1E69B3538];
      library2 = [(MPMediaLibraryDataProviderML3 *)self library];
      v19 = [v23 newWithPersistentID:identifier inLibrary:library2];

      v20 = [v19 valueForProperty:*MEMORY[0x1E69B3030]];
      v22 = 0x1E69A4678;
      longLongValue = v20;
    }

    v25 = [*v22 requestWithDatabaseID:-[HSHomeSharingLibrary databaseID](self->_homeSharingLibrary itemID:{"databaseID"), longLongValue}];

    [v25 setValue:v15 forArgument:v16];
    v26 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(HSHomeSharingLibrary *)self->_homeSharingLibrary urlForRequest:v25];
      *buf = 138543362;
      v35 = v27;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Sending request '%{public}@'", buf, 0xCu);
    }

    homeSharingLibrary = self->_homeSharingLibrary;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __90__MPHomeSharingML3DataProvider_setValue_forProperty_ofItemWithIdentifier_completionBlock___block_invoke;
    v30[3] = &unk_1E7675E38;
    v31 = v16;
    v32 = v15;
    v33 = blockCopy;
    v29 = v15;
    [(HSHomeSharingLibrary *)homeSharingLibrary sendRequest:v25 withResponseHandler:v30];

    goto LABEL_17;
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 1, 0);
  }

LABEL_17:
}

void __90__MPHomeSharingML3DataProvider_setValue_forProperty_ofItemWithIdentifier_completionBlock___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = [v3 responseCode];
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Setting property '%{public}@' to '%{public}@' returned status code %lu", &v8, 0x20u);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 1, 0);
  }
}

- (id)itemResultSetForQueryCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2748;
  v19 = __Block_byref_object_dispose__2749;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MPHomeSharingML3DataProvider_itemResultSetForQueryCriteria___block_invoke;
  v10[3] = &unk_1E7681900;
  v14 = &v15;
  v6 = criteriaCopy;
  v11 = v6;
  selfCopy = self;
  v7 = v5;
  v13 = v7;
  [(MPHomeSharingML3DataProvider *)self _fillContainerForQueryCriteria:v6 completionBlock:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

intptr_t __62__MPHomeSharingML3DataProvider_itemResultSetForQueryCriteria___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = MPHomeSharingML3DataProvider;
  v3 = objc_msgSendSuper2(&v7, sel_itemResultSetForQueryCriteria_, v2);
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)loadQueryCriteria:(id)criteria countOfCollectionsWithCompletionBlock:(id)block
{
  criteriaCopy = criteria;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MPHomeSharingML3DataProvider_loadQueryCriteria_countOfCollectionsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7681568;
  selfCopy = self;
  v13 = blockCopy;
  v11 = criteriaCopy;
  v8 = blockCopy;
  v9 = criteriaCopy;
  [(MPHomeSharingML3DataProvider *)self _fillContainerForQueryCriteria:v9 completionBlock:v10];
}

id __88__MPHomeSharingML3DataProvider_loadQueryCriteria_countOfCollectionsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = MPHomeSharingML3DataProvider;
  return objc_msgSendSuper2(&v4, sel_loadQueryCriteria_countOfCollectionsWithCompletionBlock_, v1, v2);
}

- (void)loadQueryCriteria:(id)criteria countOfItemsWithCompletionBlock:(id)block
{
  criteriaCopy = criteria;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__MPHomeSharingML3DataProvider_loadQueryCriteria_countOfItemsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7681568;
  selfCopy = self;
  v13 = blockCopy;
  v11 = criteriaCopy;
  v8 = blockCopy;
  v9 = criteriaCopy;
  [(MPHomeSharingML3DataProvider *)self _fillContainerForQueryCriteria:v9 completionBlock:v10];
}

id __82__MPHomeSharingML3DataProvider_loadQueryCriteria_countOfItemsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = MPHomeSharingML3DataProvider;
  return objc_msgSendSuper2(&v4, sel_loadQueryCriteria_countOfItemsWithCompletionBlock_, v1, v2);
}

- (void)loadQueryCriteria:(id)criteria hasCollectionsWithCompletionBlock:(id)block
{
  criteriaCopy = criteria;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__MPHomeSharingML3DataProvider_loadQueryCriteria_hasCollectionsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7681568;
  selfCopy = self;
  v13 = blockCopy;
  v11 = criteriaCopy;
  v8 = blockCopy;
  v9 = criteriaCopy;
  [(MPHomeSharingML3DataProvider *)self _fillContainerForQueryCriteria:v9 completionBlock:v10];
}

id __84__MPHomeSharingML3DataProvider_loadQueryCriteria_hasCollectionsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = MPHomeSharingML3DataProvider;
  return objc_msgSendSuper2(&v4, sel_loadQueryCriteria_hasCollectionsWithCompletionBlock_, v1, v2);
}

- (void)loadQueryCriteria:(id)criteria hasItemsWithCompletionBlock:(id)block
{
  criteriaCopy = criteria;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MPHomeSharingML3DataProvider_loadQueryCriteria_hasItemsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7681568;
  selfCopy = self;
  v13 = blockCopy;
  v11 = criteriaCopy;
  v8 = blockCopy;
  v9 = criteriaCopy;
  [(MPHomeSharingML3DataProvider *)self _fillContainerForQueryCriteria:v9 completionBlock:v10];
}

id __78__MPHomeSharingML3DataProvider_loadQueryCriteria_hasItemsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = MPHomeSharingML3DataProvider;
  return objc_msgSendSuper2(&v4, sel_loadQueryCriteria_hasItemsWithCompletionBlock_, v1, v2);
}

- (void)connectWithAuthenticationData:(id)data completionBlock:(id)block progressHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  if ([(MPHomeSharingML3DataProvider *)self isSupportedSharingVersion])
  {
    if ([(HSHomeSharingLibrary *)self->_homeSharingLibrary connectionState]== 2)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy, 1, 0);
      }
    }

    else
    {
      homeSharingLibrary = self->_homeSharingLibrary;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94__MPHomeSharingML3DataProvider_connectWithAuthenticationData_completionBlock_progressHandler___block_invoke;
      v11[3] = &unk_1E7675E10;
      v11[4] = self;
      v12 = blockCopy;
      v13 = handlerCopy;
      [(HSHomeSharingLibrary *)homeSharingLibrary connectWithCompletionHandler:v11];
    }
  }

  else if (blockCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] hs_homeSharingErrorWithCode:1002 userInfo:0];
    (blockCopy)[2](blockCopy, 0, v9);
  }
}

void __94__MPHomeSharingML3DataProvider_connectWithAuthenticationData_completionBlock_progressHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(*(a1 + 32) + 128) uniqueIdentifier];
    v7 = HSLibraryCacheDirectoryForIdentifier();

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v9 = [v7 stringByAppendingPathComponent:@"Library.itdb"];
    v10 = *(a1 + 32);
    v11 = *(v10 + 128);
    v12 = MEMORY[0x1E69B34E0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __94__MPHomeSharingML3DataProvider_connectWithAuthenticationData_completionBlock_progressHandler___block_invoke_2;
    v16[3] = &unk_1E76798D8;
    v16[4] = v10;
    v17 = v9;
    v18 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = v9;
    [v12 buildDatabaseFromHomeSharingLibrary:v11 atPath:v14 completionHandler:v16 progressHandler:v13];
  }

  else
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v5);
    }
  }
}

void __94__MPHomeSharingML3DataProvider_connectWithAuthenticationData_completionBlock_progressHandler___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__MPHomeSharingML3DataProvider_connectWithAuthenticationData_completionBlock_progressHandler___block_invoke_3;
  v7[3] = &unk_1E7677DE0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = a2;
  dispatch_async(v4, v7);
}

void __94__MPHomeSharingML3DataProvider_connectWithAuthenticationData_completionBlock_progressHandler___block_invoke_3(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69B34E0]) initWithPath:*(a1 + 32)];
  [*(a1 + 40) setLibrary:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 56), 0);
  }

  [MPMediaLibrary reloadLibraryDataProvider:*(a1 + 40)];
  [*(a1 + 40) _fetchTokensForAuthorizedDSIDs];
  v4 = +[MPHomeSharingRentalTracker sharedInstance];
  v5 = [*(*(a1 + 40) + 128) uniqueIdentifier];
  [v4 removeAllRentalsForDatabaseID:v5];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = MEMORY[0x1A58DD730]();
  v8 = [v6 contentsOfDirectoryAtPath:v7 error:0];
  if ([v8 count] >= 6)
  {
    v26 = v8;
    v27 = v2;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v29 = *v31;
      v13 = *MEMORY[0x1E696A350];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = v7;
          v17 = [v7 stringByAppendingPathComponent:{v15, v26, v27}];
          v18 = v6;
          v19 = [v6 attributesOfItemAtPath:v17 error:0];

          v20 = [v19 objectForKey:v13];
          if (!v12 || [v11 compare:v20] == 1)
          {
            v21 = v15;

            v22 = v20;
            v11 = v22;
            v12 = v21;
          }

          v6 = v18;
          v7 = v16;
        }

        v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v23 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v7 stringByAppendingPathComponent:v12];
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Removing oldest cached library: %{public}@", buf, 0xCu);
    }

    v25 = [v7 stringByAppendingPathComponent:v12];
    [v6 removeItemAtPath:v25 error:0];

    v8 = v26;
    v2 = v27;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69A4610] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69A4620] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69A4618] object:0];

  v4.receiver = self;
  v4.super_class = MPHomeSharingML3DataProvider;
  [(MPMediaLibraryDataProviderML3 *)&v4 dealloc];
}

- (MPHomeSharingML3DataProvider)initWithHomeSharingLibrary:(id)library
{
  libraryCopy = library;
  v20.receiver = self;
  v20.super_class = MPHomeSharingML3DataProvider;
  v6 = [(MPMediaLibraryDataProviderML3 *)&v20 initWithLibrary:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeSharingLibrary, library);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    loadedContainerPIDs = v7->_loadedContainerPIDs;
    v7->_loadedContainerPIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    blocksForLoadingContainerPIDs = v7->_blocksForLoadingContainerPIDs;
    v7->_blocksForLoadingContainerPIDs = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__homeSharingGroupIDDidChangeNotification_ name:*MEMORY[0x1E69A4610] object:0];
    [defaultCenter addObserver:v7 selector:sel__homeSharingLibraryDidUpdateRevisionNumber_ name:*MEMORY[0x1E69A4620] object:0];
    [defaultCenter addObserver:v7 selector:sel__homeSharingLibraryDidBecomeUnavailable_ name:*MEMORY[0x1E69A4618] object:0];
    v13 = dispatch_queue_create("com.apple.mobileipod.containerfill", 0);
    containerFillQueue = v7->_containerFillQueue;
    v7->_containerFillQueue = v13;

    v15 = dispatch_queue_create("com.apple.MediaPlayer.MPHomeSharingML3DataProvider/serialQueue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v15;

    v17 = objc_alloc_init(MPHomeSharingArtworkDataSource);
    [(MPHomeSharingArtworkDataSource *)v17 setLibrary:v7->_homeSharingLibrary];
    artworkDataSource = v7->_artworkDataSource;
    v7->_artworkDataSource = v17;
  }

  return v7;
}

+ (void)_determineHomeSharingGroupIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  defaultStore = [MEMORY[0x1E69A4630] defaultStore];
  groupID = [defaultStore groupID];
  if ([groupID length])
  {

    goto LABEL_7;
  }

  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  isRemoteServerLikelyReachable = [mEMORY[0x1E69E4428] isRemoteServerLikelyReachable];

  if (!isRemoteServerLikelyReachable)
  {
LABEL_7:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] No group ID known, trying to determine it from user defaults account / password.", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__MPHomeSharingML3DataProvider__determineHomeSharingGroupIDWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E76792A0;
  v10 = defaultStore;
  v11 = handlerCopy;
  [v10 determineGroupIDWithCompletionHandler:v9];

LABEL_9:
}

void __82__MPHomeSharingML3DataProvider__determineHomeSharingGroupIDWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MPHomeSharingML3DataProvider__determineHomeSharingGroupIDWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7679980;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __82__MPHomeSharingML3DataProvider__determineHomeSharingGroupIDWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = [*(a1 + 32) groupID];
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Determined group ID: %{public}@", &v5, 0xCu);
    }

    else
    {
      v5 = 138543362;
      v6 = @"Unable to determine groupID";
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] Determined group ID: %{public}@", &v5, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)endScanningForLibraries
{
  if (__isBrowsing == 1)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Ending scan.", v4, 2u);
    }

    [__browser stop];
    v3 = __browser;
    __browser = 0;

    __isBrowsing = 0;
  }
}

@end