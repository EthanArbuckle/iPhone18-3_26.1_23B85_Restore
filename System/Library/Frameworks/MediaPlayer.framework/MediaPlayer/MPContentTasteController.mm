@interface MPContentTasteController
+ (MPContentTasteController)sharedController;
+ (NSMutableDictionary)controllers;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)_tasteControllerWithUserIdentity:(id)a3 isSingleton:(BOOL)a4 createIfRequired:(BOOL)a5;
+ (void)_postNotificationName:(id)a3 controller:(id)a4 userInfo:(id)a5;
- (MPContentTasteController)init;
- (id)_ML3QueryWithEntityClass:(Class)a3 predicate:(id)a4 options:(int64_t)a5;
- (id)_addPendingUpdateRecord:(id)a3 withKey:(id)a4 inDictionary:(id)a5;
- (id)_addPendingUpdateRecordForPlaylistGlobalID:(id)a3 contentTasteType:(int64_t)a4;
- (id)_addPendingUpdateRecordForStoreAdamID:(int64_t)a3 contentTasteType:(int64_t)a4;
- (id)_initWithUserIdentity:(id)a3;
- (id)_libraryEntityForModel:(id)a3;
- (id)_libraryEntityWithStoreID:(int64_t)a3 contentType:(int64_t)a4;
- (id)_libraryPlaylistWithGlobalID:(id)a3;
- (id)_pendingUpdateRecordForKey:(id)a3 inDictionary:(id)a4;
- (id)_pendingUpdateRecordForStoreAdamID:(int64_t)a3;
- (int64_t)tasteTypeForMediaEntity:(id)a3;
- (int64_t)tasteTypeForModel:(id)a3;
- (int64_t)tasteTypeForPlaylistGlobalID:(id)a3;
- (int64_t)tasteTypeForStoreAdamID:(int64_t)a3;
- (void)_deviceMediaLibraryDidChangeNotification:(id)a3;
- (void)_libraryPathDidChangeForTasteController:(id)a3;
- (void)_removePendingUpdateRecordForPlaylistGlobalID:(id)a3 token:(id)a4;
- (void)_removePendingUpdateRecordForStoreAdamID:(int64_t)a3 token:(id)a4;
- (void)setTasteType:(int64_t)a3 forMediaEntity:(id)a4 withCompletionHandler:(id)a5;
- (void)setTasteType:(int64_t)a3 forModel:(id)a4 withCompletionHandler:(id)a5;
- (void)setTasteType:(int64_t)a3 forPlaylistGlobalID:(id)a4 withCompletionHandler:(id)a5;
- (void)setTasteType:(int64_t)a3 forStoreAdamID:(int64_t)a4 withContentType:(int64_t)a5 completionHandler:(id)a6;
@end

@implementation MPContentTasteController

void __44__MPContentTasteController_sharedController__block_invoke()
{
  v0 = [MEMORY[0x1E69E4680] activeAccount];
  v1 = [MPContentTasteController _tasteControllerWithUserIdentity:v0 isSingleton:1 createIfRequired:1];
  v2 = sharedController___tasteController;
  sharedController___tasteController = v1;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:sharedController___tasteController selector:sel__libraryPathDidChangeForTasteController_ name:@"MPMediaLibraryPathDidChangeNotification" object:0];
}

void __45__MPContentTasteController_globalSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaplayer.MPContentTasteController.global.serial.queue", v2);
  v1 = globalSerialQueue___globalSerialQueue;
  globalSerialQueue___globalSerialQueue = v0;
}

void __39__MPContentTasteController_controllers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = controllers___controllers;
  controllers___controllers = v0;
}

+ (NSMutableDictionary)controllers
{
  if (controllers_onceToken != -1)
  {
    dispatch_once(&controllers_onceToken, &__block_literal_global_22);
  }

  v3 = controllers___controllers;

  return v3;
}

+ (MPContentTasteController)sharedController
{
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, &__block_literal_global_37);
  }

  v3 = sharedController___tasteController;

  return v3;
}

+ (OS_dispatch_queue)globalSerialQueue
{
  if (globalSerialQueue_onceToken != -1)
  {
    dispatch_once(&globalSerialQueue_onceToken, &__block_literal_global_3373);
  }

  v3 = globalSerialQueue___globalSerialQueue;

  return v3;
}

- (id)_pendingUpdateRecordForStoreAdamID:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [(MPContentTasteController *)self _pendingUpdateRecordForKey:v4 inDictionary:self->_pendingUpdateRecordByStoreAdamID];

  return v5;
}

- (id)_pendingUpdateRecordForKey:(id)a3 inDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3309;
  v21 = __Block_byref_object_dispose__3310;
  v22 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPContentTasteController__pendingUpdateRecordForKey_inDictionary___block_invoke;
  block[3] = &unk_1E7681330;
  v15 = v6;
  v16 = &v17;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_sync(accessQueue, block);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __68__MPContentTasteController__pendingUpdateRecordForKey_inDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_removePendingUpdateRecordForStoreAdamID:(int64_t)a3 token:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MPContentTasteController__removePendingUpdateRecordForStoreAdamID_token___block_invoke;
  block[3] = &unk_1E767D490;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_barrier_sync(accessQueue, block);
}

void __75__MPContentTasteController__removePendingUpdateRecordForStoreAdamID_token___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 UUID];
  v6 = [v5 isEqual:a1[5]];

  if (v6)
  {
    v7 = *(a1[4] + 24);
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
    [v7 removeObjectForKey:v8];

    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MPContentTasteController__removePendingUpdateRecordForStoreAdamID_token___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = a1[4];
    dispatch_async(v9, block);
  }
}

- (void)_removePendingUpdateRecordForPlaylistGlobalID:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MPContentTasteController__removePendingUpdateRecordForPlaylistGlobalID_token___block_invoke;
  block[3] = &unk_1E76800A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_sync(accessQueue, block);
}

void __80__MPContentTasteController__removePendingUpdateRecordForPlaylistGlobalID_token___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = [v2 UUID];
  v4 = [v3 isEqual:a1[6]];

  if (v4)
  {
    [*(a1[4] + 16) removeObjectForKey:a1[5]];
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MPContentTasteController__removePendingUpdateRecordForPlaylistGlobalID_token___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = a1[4];
    dispatch_async(v5, block);
  }
}

- (id)_addPendingUpdateRecordForStoreAdamID:(int64_t)a3 contentTasteType:(int64_t)a4
{
  v6 = [[MPContentTastePendingUpdateRecord alloc] initWithStoreAdamID:a3 tasteType:a4];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v8 = [(MPContentTasteController *)self _addPendingUpdateRecord:v6 withKey:v7 inDictionary:self->_pendingUpdateRecordByStoreAdamID];

  return v8;
}

- (id)_addPendingUpdateRecordForPlaylistGlobalID:(id)a3 contentTasteType:(int64_t)a4
{
  v6 = a3;
  v7 = [[MPContentTastePendingUpdateRecord alloc] initWithPlaylistGlobalID:v6 tasteType:a4];
  v8 = [(MPContentTasteController *)self _addPendingUpdateRecord:v7 withKey:v6 inDictionary:self->_pendingUpdateRecordByPlaylistGlobalID];

  return v8;
}

- (id)_addPendingUpdateRecord:(id)a3 withKey:(id)a4 inDictionary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__MPContentTasteController__addPendingUpdateRecord_withKey_inDictionary___block_invoke;
  v20 = &unk_1E767C7D0;
  v21 = v10;
  v22 = self;
  v23 = v8;
  v24 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_barrier_sync(accessQueue, &v17);
  v15 = [v13 UUID];

  return v15;
}

void __73__MPContentTasteController__addPendingUpdateRecord_withKey_inDictionary___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (!(v2 | *(v3 + 16)))
  {
    v4 = 16;
LABEL_5:
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = a1[5];
    v7 = *(v6 + v4);
    *(v6 + v4) = v5;

    v2 = a1[4];
    goto LABEL_6;
  }

  if (!(v2 | *(v3 + 24)))
  {
    v4 = 24;
    goto LABEL_5;
  }

LABEL_6:
  [v2 setObject:a1[6] forKey:a1[7]];
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MPContentTasteController__addPendingUpdateRecord_withKey_inDictionary___block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = a1[5];
  dispatch_async(v8, block);
}

- (id)_ML3QueryWithEntityClass:(Class)a3 predicate:(id)a4 options:(int64_t)a5
{
  v8 = a4;
  v9 = [(MPContentTasteController *)self _mediaLibrary];
  v10 = [v9 libraryDataProvider];
  v11 = [v10 library];
  v12 = [(objc_class *)a3 queryWithLibrary:v11 predicate:v8 orderingTerms:MEMORY[0x1E695E0F0] usingSections:0 options:a5];

  return v12;
}

- (id)_libraryEntityWithStoreID:(int64_t)a3 contentType:(int64_t)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v4 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (a4 > 7)
  {
    v10 = 0;
    v7 = 0;
    v11 = 0;
  }

  else
  {
    if (((1 << a4) & 0xC6) != 0)
    {
      v7 = *MEMORY[0x1E69B3308];
      v26 = 0;
      v4 = 0;
      v8 = 0;
      v9 = *MEMORY[0x1E69B3368];
      v10 = *MEMORY[0x1E69B3368];
      goto LABEL_8;
    }

    v10 = 0;
    v7 = 0;
    v11 = 0;
    if (((1 << a4) & 0x28) != 0)
    {
      v7 = *MEMORY[0x1E69B3330];
      v10 = 0;
      v9 = *MEMORY[0x1E69B2DA0];
      v26 = 1;
      v4 = *MEMORY[0x1E69B2DA0];
      v8 = 1;
LABEL_8:
      v12 = v9;
      if (v7)
      {
        v13 = objc_opt_class();
        v14 = [MEMORY[0x1E69B3488] predicateWithProperty:v7 equalToInt64:a3];
        v15 = [(MPContentTasteController *)self _ML3QueryWithEntityClass:v13 predicate:v14 options:5];

        if (v4)
        {
          v34[0] = v4;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __66__MPContentTasteController__libraryEntityWithStoreID_contentType___block_invoke;
          v28[3] = &unk_1E7676130;
          v28[4] = &v29;
          [v15 enumeratePersistentIDsAndProperties:v16 ordered:0 usingBlock:v28];
        }

        else
        {
          v18 = [v15 anyEntityPersistentID];
          v30[3] = v18;
        }

        v17 = v30[3];
        if (v17)
        {
LABEL_19:
          if (v17)
          {
            v24 = [(MPContentTasteController *)self _mediaLibrary];
            if (v8)
            {
              [v24 collectionWithPersistentID:v30[3] groupingType:v26 verifyExistence:0];
            }

            else
            {
              [v24 itemWithPersistentID:v30[3] verifyExistence:0];
            }
            v11 = ;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v17 = 0;
      }

      if (v10)
      {
        v19 = objc_opt_class();
        v20 = [MEMORY[0x1E69B3488] predicateWithProperty:v10 equalToInt64:a3];
        v21 = [(MPContentTasteController *)self _ML3QueryWithEntityClass:v19 predicate:v20 options:5];

        if (v4)
        {
          v33 = v4;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __66__MPContentTasteController__libraryEntityWithStoreID_contentType___block_invoke_2;
          v27[3] = &unk_1E7676130;
          v27[4] = &v29;
          [v21 enumeratePersistentIDsAndProperties:v22 ordered:0 usingBlock:v27];
        }

        else
        {
          v23 = [v21 anyEntityPersistentID];
          v30[3] = v23;
        }

        v17 = v30[3];
      }

      goto LABEL_19;
    }
  }

LABEL_25:

  _Block_object_dispose(&v29, 8);
LABEL_26:

  return v11;
}

uint64_t __66__MPContentTasteController__libraryEntityWithStoreID_contentType___block_invoke(uint64_t result, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  if (a3)
  {
    v6 = result;
    result = [*a3 longLongValue];
    if (result)
    {
      *(*(*(v6 + 32) + 8) + 24) = result;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t __66__MPContentTasteController__libraryEntityWithStoreID_contentType___block_invoke_2(uint64_t result, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  if (a3)
  {
    v6 = result;
    result = [*a3 longLongValue];
    if (result)
    {
      *(*(*(v6 + 32) + 8) + 24) = result;
      *a5 = 1;
    }
  }

  return result;
}

- (id)_libraryPlaylistWithGlobalID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2AD0] equalToValue:v4];
    v7 = [(MPContentTasteController *)self _ML3QueryWithEntityClass:v5 predicate:v6 options:4];

    v8 = [v7 anyEntityPersistentID];
    if (v8)
    {
      v9 = v8;
      v10 = [(MPContentTasteController *)self _mediaLibrary];
      v11 = [v10 playlistWithPersistentID:v9];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_libraryEntityForModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifiers];
  v6 = [v5 library];
  v7 = [v6 persistentID];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [(MPContentTasteController *)self _mediaLibrary];
      v9 = [v8 itemWithPersistentID:v7 verifyExistence:0];
LABEL_6:
      v7 = v9;

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = [(MPContentTasteController *)self _mediaLibrary];
      v8 = v11;
      v12 = v7;
      v13 = 1;
LABEL_13:
      v9 = [v11 collectionWithPersistentID:v12 groupingType:v13];
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(MPContentTasteController *)self _mediaLibrary];
      v8 = v11;
      v12 = v7;
      v13 = 2;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(MPContentTasteController *)self _mediaLibrary];
      v9 = [v8 playlistWithPersistentID:v7];
      goto LABEL_6;
    }

    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)_deviceMediaLibraryDidChangeNotification:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPContentTasteController__deviceMediaLibraryDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_libraryPathDidChangeForTasteController:(id)a3
{
  v4 = +[MPContentTasteController sharedController];

  if (v4 == self)
  {
    v5 = [MEMORY[0x1E69E4680] activeAccount];
    userIdentity = self->_userIdentity;
    self->_userIdentity = v5;
  }
}

- (int64_t)tasteTypeForStoreAdamID:(int64_t)a3
{
  v5 = [(MPContentTasteController *)self _pendingUpdateRecordForStoreAdamID:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 tasteType];
  }

  else
  {
    v8 = [(MPContentTasteController *)self _libraryEntityWithStoreID:a3 contentType:1];
    if (v8 || ([(MPContentTasteController *)self _libraryEntityWithStoreID:a3 contentType:3], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MPContentTasteController *)self _libraryEntityWithStoreID:a3 contentType:2], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v7 = [(MPContentTasteController *)self tasteTypeForMediaEntity:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)tasteTypeForPlaylistGlobalID:(id)a3
{
  v4 = a3;
  v5 = [(MPContentTasteController *)self _pendingUpdateRecordForPlaylistGlobalID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 tasteType];
  }

  else
  {
    v8 = [(MPContentTasteController *)self _libraryPlaylistWithGlobalID:v4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 valueForProperty:@"likedState"];
      v11 = [v10 integerValue];

      if (v11 == 3)
      {
        v7 = 2;
      }

      else
      {
        v7 = v11 == 2;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)tasteTypeForMediaEntity:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v4 valueForProperty:@"storeItemAdamID"];
      v11 = [v10 longLongValue];

      if (v11)
      {
        v5 = @"likedState";
        v12 = @"likedState";
        goto LABEL_13;
      }

      v13 = &MPMediaItemPropertyLikedState;
      v14 = MPMediaItemPropertySubscriptionStoreItemID;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_23;
      }

      v13 = &MPMediaAlbumPropertyLikedState;
      v14 = &MPMediaAlbumPropertyStoreID;
    }

    v15 = [v4 valueForProperty:*v14];
    v11 = [v15 longLongValue];

    v5 = *v13;
    if (!v11)
    {
LABEL_19:
      if (v5)
      {
        v18 = [v4 valueForProperty:v5];
        v19 = [v18 integerValue];

        if (v19 == 3)
        {
          v9 = 2;
        }

        else
        {
          v9 = v19 == 2;
        }

        goto LABEL_17;
      }

LABEL_23:
      v9 = 0;
      goto LABEL_18;
    }

LABEL_13:
    v16 = [(MPContentTasteController *)self _pendingUpdateRecordForStoreAdamID:v11];
    if (v16)
    {
      v6 = v16;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v5 = [v4 valueForProperty:@"cloudGlobalID"];
  v6 = [(MPContentTasteController *)self _pendingUpdateRecordForPlaylistGlobalID:v5];
  if (!v6)
  {
    v7 = [v4 valueForProperty:@"likedState"];
    v8 = [v7 integerValue];

    if (v8 == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 2;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [v6 tasteType];
LABEL_16:

LABEL_17:
LABEL_18:

  return v9;
}

- (int64_t)tasteTypeForModel:(id)a3
{
  v4 = a3;
  v5 = [(MPContentTasteController *)self _libraryEntityForModel:v4];
  if (v5)
  {
    v6 = [(MPContentTasteController *)self tasteTypeForMediaEntity:v5];
  }

  else
  {
    v7 = [v4 identifiers];
    v8 = [v7 universalStore];
    v9 = [v8 globalPlaylistID];

    if ([v9 length] && (-[MPContentTasteController _pendingUpdateRecordForPlaylistGlobalID:](self, "_pendingUpdateRecordForPlaylistGlobalID:", v9), (v10 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "identifiers"), v11 = objc_claimAutoreleasedReturnValue(), v12 = _MPContentTasteBestIDFromIdentifiers(v11), v11, v12) && (-[MPContentTasteController _pendingUpdateRecordForStoreAdamID:](self, "_pendingUpdateRecordForStoreAdamID:", v12), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v10;
      v6 = [v10 tasteType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setTasteType:(int64_t)a3 forStoreAdamID:(int64_t)a4 withContentType:(int64_t)a5 completionHandler:(id)a6
{
  v49[3] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [(MPContentTasteController *)self _libraryEntityWithStoreID:a4 contentType:a5];
  if (!v11)
  {
    if (a4)
    {
      v48[0] = @"MPContentTasteControllerNotificationUserInfoKeyStoreAdamID";
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
      v49[0] = v12;
      v48[1] = @"MPContentTasteControllerNotificationUserInfoKeyTasteType";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v49[1] = v13;
      v48[2] = @"MPContentTasteControllerNotificationUserInfoKeyContentType";
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      v49[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
      [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v15];
    }

    v16 = [(MPContentTasteController *)self _addPendingUpdateRecordForStoreAdamID:a4 contentTasteType:a3];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke;
    aBlock[3] = &unk_1E76760B8;
    aBlock[4] = self;
    v42 = a4;
    v33 = v16;
    v40 = v33;
    v41 = v10;
    v17 = _Block_copy(aBlock);
    v18 = 3;
    if (a3 != 2)
    {
      v18 = 1;
    }

    if (a3 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = v18;
    }

    v31 = v19;
    v32 = v17;
    if (a5 == 3)
    {
      v46 = @"MPStoreItemLibraryImportMetadataKeyAlbumLikedState";
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v47 = v20;
      v21 = MEMORY[0x1E695DF20];
      v22 = &v47;
      v23 = &v46;
    }

    else
    {
      if ((a5 - 1) > 1)
      {
        v24 = 0;
        goto LABEL_16;
      }

      v44 = @"MPStoreItemLibraryImportMetadataKeyTrackLikedState";
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v45 = v20;
      v21 = MEMORY[0x1E695DF20];
      v22 = &v45;
      v23 = &v44;
    }

    v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];

LABEL_16:
    v25 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:self->_userIdentity];
    v26 = [[MPStoreItemLibraryImportElement alloc] initWithStoreItemID:a4 additionalTrackMetadata:v24];
    v27 = [MPStoreItemLibraryImport alloc];
    v43 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v29 = [(MPStoreItemLibraryImport *)v27 initWithImportElements:v28 referralObject:0 usingCloudLibraryDestination:0];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_2;
    v34[3] = &unk_1E76760E0;
    v36 = a5;
    v37 = v31;
    v38 = a4;
    v34[4] = self;
    v35 = v32;
    v30 = v32;
    [v25 performStoreItemLibraryImport:v29 withCompletion:v34];

    goto LABEL_17;
  }

  [(MPContentTasteController *)self setTasteType:a3 forMediaEntity:v11 withCompletionHandler:v10];
LABEL_17:
}

void __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _removePendingUpdateRecordForStoreAdamID:*(a1 + 56) token:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [MPCloudController controllerWithUserIdentity:*(*(a1 + 32) + 32)];
    v9 = *(a1 + 48);
    v10 = -1;
    v11 = 1;
    if (v9 > 4)
    {
      switch(v9)
      {
        case 7:
          v11 = 256;
          break;
        case 6:
          break;
        case 5:
LABEL_13:
          v12 = *(a1 + 56);
          v13 = *(a1 + 64);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_3;
          v22[3] = &unk_1E76816D0;
          v14 = &v23;
          v23 = *(a1 + 40);
          [v8 setLikedState:v12 forAlbumWithStoreID:v13 completion:v22];
LABEL_20:

          goto LABEL_21;
        default:
LABEL_19:
          v17 = *(a1 + 56);
          v18 = *(a1 + 64);
          v19 = [MEMORY[0x1E695DF00] date];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_4;
          v20[3] = &unk_1E76816D0;
          v14 = &v21;
          v21 = *(a1 + 40);
          [v8 setLikedState:v17 forEntityWithStoreID:v18 withMediaType:v10 timeStamp:v19 completion:v20];

          goto LABEL_20;
      }
    }

    else if (v9 != 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      v11 = 2048;
    }

    if ([v5 count])
    {
      v15 = [v5 objectAtIndexedSubscript:0];
      v16 = [MEMORY[0x1E695DF00] date];
      [v15 setValue:v16 forProperty:@"likedStateChangedDate"];
    }

    v10 = v11;
    goto LABEL_19;
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed to add cache content to library. %{public}@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_21:
}

- (void)setTasteType:(int64_t)a3 forPlaylistGlobalID:(id)a4 withCompletionHandler:(id)a5
{
  v32[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(MPContentTasteController *)self _libraryPlaylistWithGlobalID:v8];
  if (v10)
  {
    [(MPContentTasteController *)self setTasteType:a3 forMediaEntity:v10 withCompletionHandler:v9];
  }

  else if (v8)
  {
    v32[0] = v8;
    v31[0] = @"MPContentTasteControllerNotificationUserInfoKeyPlaylistGlobalID";
    v31[1] = @"MPContentTasteControllerNotificationUserInfoKeyTasteType";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v31[2] = @"MPContentTasteControllerNotificationUserInfoKeyContentType";
    v32[1] = v11;
    v32[2] = &unk_1F1509640;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v12];

    v13 = [(MPContentTasteController *)self _addPendingUpdateRecordForPlaylistGlobalID:v8 contentTasteType:a3];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__MPContentTasteController_setTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E767BBA8;
    aBlock[4] = self;
    v14 = v8;
    v26 = v14;
    v27 = v13;
    v28 = v9;
    v15 = v13;
    v16 = _Block_copy(aBlock);
    v17 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:self->_userIdentity];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__MPContentTasteController_setTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_2;
    v22[3] = &unk_1E7676090;
    v23 = v16;
    v24 = a3;
    v18 = v16;
    [v17 addNonLibraryOwnedPlaylistWithGlobalID:v14 completion:v22];
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"invalid playlist global ID";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v21 = [v19 errorWithDomain:@"MediaPlayer" code:123321 userInfo:v20];
    (*(v9 + 2))(v9, v21);
  }
}

void __83__MPContentTasteController_setTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _removePendingUpdateRecordForPlaylistGlobalID:*(a1 + 40) token:*(a1 + 48)];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __83__MPContentTasteController_setTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed to add cache playlist to library. %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = 3;
    if (v8 != 2)
    {
      v9 = 1;
    }

    if (v8 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    [v5 setValue:v7 forProperty:@"likedState"];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setTasteType:(int64_t)a3 forMediaEntity:(id)a4 withCompletionHandler:(id)a5
{
  v63[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = 3;
  if (a3 != 2)
  {
    v10 = 1;
  }

  if (a3 == 1)
  {
    v10 = 2;
  }

  v39 = v10;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__3309;
  v60 = __Block_byref_object_dispose__3310;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__3309;
  v50 = __Block_byref_object_dispose__3310;
  v51 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__MPContentTasteController_setTasteType_forMediaEntity_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7676068;
  v43 = &v56;
  v44 = &v46;
  aBlock[4] = self;
  v45 = &v52;
  v40 = v9;
  v42 = v40;
  v11 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 valueForProperty:@"cloudGlobalID"];
    v13 = v57[5];
    v57[5] = v12;

    v14 = objc_alloc(MEMORY[0x1E695DF90]);
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v16 = [v14 initWithObjectsAndKeys:{v8, @"MPContentTasteControllerNotificationUserInfoKeyMediaEntity", v15, @"MPContentTasteControllerNotificationUserInfoKeyTasteType", &unk_1F1509640, @"MPContentTasteControllerNotificationUserInfoKeyContentType", 0}];

    v17 = v57[5];
    if (v17)
    {
      [(__CFString *)v16 setObject:v17 forKey:@"MPContentTasteControllerNotificationUserInfoKeyPlaylistGlobalID"];
    }

    [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v16];
    v18 = v57[5];
    if (v18)
    {
      v19 = [(MPContentTasteController *)self _addPendingUpdateRecordForPlaylistGlobalID:v18 contentTasteType:a3];
      v20 = v47[5];
      v47[5] = v19;
    }

    v21 = v8;
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
    [v21 setValue:v22 forProperty:@"likedState" withCompletionBlock:v11];
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = 0;
      v16 = 0;
      goto LABEL_20;
    }

    v27 = @"albumLikedState";
    v28 = [v8 valueForProperty:@"albumStoreID"];
    v29 = [v28 longLongValue];
    v16 = @"albumLikedState";
    v26 = 3;
LABEL_19:
    v53[3] = v29;

    goto LABEL_20;
  }

  v23 = @"likedState";
  v24 = [v8 valueForProperty:@"storeItemAdamID"];
  v25 = [v24 longLongValue];
  v53[3] = v25;

  if (!v53[3])
  {
    v28 = [v8 valueForProperty:@"subscriptionStoreItemAdamID"];
    v29 = [v28 longLongValue];
    v16 = @"likedState";
    v26 = 1;
    goto LABEL_19;
  }

  v16 = @"likedState";
  v26 = 1;
LABEL_20:
  if (v8)
  {
    v30 = objc_alloc(MEMORY[0x1E695DF90]);
    v31 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
    v33 = [v30 initWithObjectsAndKeys:{v8, @"MPContentTasteControllerNotificationUserInfoKeyMediaEntity", v31, @"MPContentTasteControllerNotificationUserInfoKeyTasteType", v32, @"MPContentTasteControllerNotificationUserInfoKeyContentType", 0}];

    if (v53[3])
    {
      v34 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
      [v33 setObject:v34 forKey:@"MPContentTasteControllerNotificationUserInfoKeyStoreAdamID"];
    }

    [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v33];
  }

  v35 = v53[3];
  if (v35)
  {
    v36 = [(MPContentTasteController *)self _addPendingUpdateRecordForStoreAdamID:v35 contentTasteType:a3];
    v37 = v47[5];
    v47[5] = v36;
  }

  if (v16)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
    [v8 setValue:v21 forProperty:v16 withCompletionBlock:v11];
    goto LABEL_28;
  }

  if (!v11)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v38 = MEMORY[0x1E696ABC0];
  v62 = *MEMORY[0x1E696A578];
  v63[0] = @"unknown entity type";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v22 = [v38 errorWithDomain:@"MediaPlayer" code:123321 userInfo:v21];
  v11[2](v11, 0, v22);
  v16 = 0;
LABEL_11:

LABEL_28:
LABEL_29:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
}

void __78__MPContentTasteController_setTasteType_forMediaEntity_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v8 = v4;
  if (v5)
  {
    [*(a1 + 32) _removePendingUpdateRecordForPlaylistGlobalID:v5 token:*(*(*(a1 + 56) + 8) + 40)];
    v4 = v8;
  }

  v6 = *(*(*(a1 + 64) + 8) + 24);
  if (v6)
  {
    [*(a1 + 32) _removePendingUpdateRecordForStoreAdamID:v6 token:*(*(*(a1 + 56) + 8) + 40)];
    v4 = v8;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
    v4 = v8;
  }
}

- (void)setTasteType:(int64_t)a3 forModel:(id)a4 withCompletionHandler:(id)a5
{
  v18 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v18 flattenedGenericObject];
    v10 = [v9 anyObject];

    v11 = v10;
  }

  else
  {
    v11 = v18;
  }

  v19 = v11;
  v12 = [v11 identifiers];
  v13 = [v12 universalStore];
  v14 = [v13 globalPlaylistID];

  if ([v14 length])
  {
    [(MPContentTasteController *)self setTasteType:a3 forPlaylistGlobalID:v14 withCompletionHandler:v8];
  }

  else
  {
    v15 = [v19 identifiers];
    v16 = _MPContentTasteBestIDFromIdentifiers(v15);

    if (v16)
    {
      [(MPContentTasteController *)self setTasteType:a3 forStoreAdamID:v16 withContentType:MPContentTasteContentTypeFromMPModelObject(v19) completionHandler:v8];
    }

    else
    {
      v17 = [(MPContentTasteController *)self _libraryEntityForModel:v19];
      [(MPContentTasteController *)self setTasteType:a3 forMediaEntity:v17 withCompletionHandler:v8];
    }
  }
}

- (id)_initWithUserIdentity:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPContentTasteController;
  v5 = [(MPContentTasteController *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = dispatch_queue_create("com.apple.MediaPlayer.MPContentTasteController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v4];
    [v10 addObserver:v5 selector:sel__deviceMediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDidChangeNotification" object:v11];
  }

  return v5;
}

- (MPContentTasteController)init
{
  v3 = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [(MPContentTasteController *)self _initWithUserIdentity:v3];

  return v4;
}

+ (void)_postNotificationName:(id)a3 controller:(id)a4 userInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    [v10 addObject:v8];
    v11 = +[MPContentTasteController sharedController];
    v12 = v11;
    if (v11 == v8)
    {
    }

    else
    {
      v13 = [v8 userIdentity];
      [v13 accountDSID];
      v23 = v9;
      v15 = v14 = v7;
      v16 = +[MPContentTasteController sharedController];
      v17 = [v16 userIdentity];
      v18 = [v17 accountDSID];
      v19 = [v15 isEqualToString:v18];

      v7 = v14;
      v9 = v23;

      if (v19)
      {
        v20 = +[MPContentTasteController sharedController];
        goto LABEL_9;
      }
    }

    v21 = +[MPContentTasteController sharedController];

    if (v21 != v8)
    {
LABEL_11:
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__MPContentTasteController__postNotificationName_controller_userInfo___block_invoke;
      v24[3] = &unk_1E7676108;
      v25 = v7;
      v26 = v9;
      [v10 enumerateObjectsUsingBlock:v24];

      goto LABEL_12;
    }

    v22 = [v8 userIdentity];
    v20 = [MPContentTasteController _tasteControllerWithUserIdentity:v22 isSingleton:0 createIfRequired:0];

    if (!v20)
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    [v10 addObject:v20];
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:v7 object:0 userInfo:v9];
LABEL_12:
}

void __70__MPContentTasteController__postNotificationName_controller_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:*(a1 + 32) object:v4 userInfo:*(a1 + 40)];
}

+ (id)_tasteControllerWithUserIdentity:(id)a3 isSingleton:(BOOL)a4 createIfRequired:(BOOL)a5
{
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = @"SingletonTasteController";
  }

  else
  {
    v11 = [v8 accountDSID];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = @"NoDSID";
    }
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3309;
  v27 = __Block_byref_object_dispose__3310;
  v28 = 0;
  v12 = [a1 globalSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__MPContentTasteController__tasteControllerWithUserIdentity_isSingleton_createIfRequired___block_invoke;
  block[3] = &unk_1E7679228;
  v22 = a5;
  v18 = v10;
  v19 = v9;
  v20 = &v23;
  v21 = a1;
  v13 = v9;
  v14 = v10;
  dispatch_sync(v12, block);

  v15 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v15;
}

void __90__MPContentTasteController__tasteControllerWithUserIdentity_isSingleton_createIfRequired___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 56) controllers];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

    if (!v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [[MPContentTasteController alloc] _initWithUserIdentity:*(a1 + 40)];
      v6 = [*(a1 + 56) controllers];
      [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];

      objc_autoreleasePoolPop(v4);
    }
  }

  v10 = [*(a1 + 56) controllers];
  v7 = [v10 objectForKeyedSubscript:*(a1 + 32)];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end