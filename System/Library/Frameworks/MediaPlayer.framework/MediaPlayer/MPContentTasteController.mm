@interface MPContentTasteController
+ (MPContentTasteController)sharedController;
+ (NSMutableDictionary)controllers;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)_tasteControllerWithUserIdentity:(id)identity isSingleton:(BOOL)singleton createIfRequired:(BOOL)required;
+ (void)_postNotificationName:(id)name controller:(id)controller userInfo:(id)info;
- (MPContentTasteController)init;
- (id)_ML3QueryWithEntityClass:(Class)class predicate:(id)predicate options:(int64_t)options;
- (id)_addPendingUpdateRecord:(id)record withKey:(id)key inDictionary:(id)dictionary;
- (id)_addPendingUpdateRecordForPlaylistGlobalID:(id)d contentTasteType:(int64_t)type;
- (id)_addPendingUpdateRecordForStoreAdamID:(int64_t)d contentTasteType:(int64_t)type;
- (id)_initWithUserIdentity:(id)identity;
- (id)_libraryEntityForModel:(id)model;
- (id)_libraryEntityWithStoreID:(int64_t)d contentType:(int64_t)type;
- (id)_libraryPlaylistWithGlobalID:(id)d;
- (id)_pendingUpdateRecordForKey:(id)key inDictionary:(id)dictionary;
- (id)_pendingUpdateRecordForStoreAdamID:(int64_t)d;
- (int64_t)tasteTypeForMediaEntity:(id)entity;
- (int64_t)tasteTypeForModel:(id)model;
- (int64_t)tasteTypeForPlaylistGlobalID:(id)d;
- (int64_t)tasteTypeForStoreAdamID:(int64_t)d;
- (void)_deviceMediaLibraryDidChangeNotification:(id)notification;
- (void)_libraryPathDidChangeForTasteController:(id)controller;
- (void)_removePendingUpdateRecordForPlaylistGlobalID:(id)d token:(id)token;
- (void)_removePendingUpdateRecordForStoreAdamID:(int64_t)d token:(id)token;
- (void)setTasteType:(int64_t)type forMediaEntity:(id)entity withCompletionHandler:(id)handler;
- (void)setTasteType:(int64_t)type forModel:(id)model withCompletionHandler:(id)handler;
- (void)setTasteType:(int64_t)type forPlaylistGlobalID:(id)d withCompletionHandler:(id)handler;
- (void)setTasteType:(int64_t)type forStoreAdamID:(int64_t)d withContentType:(int64_t)contentType completionHandler:(id)handler;
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

- (id)_pendingUpdateRecordForStoreAdamID:(int64_t)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v5 = [(MPContentTasteController *)self _pendingUpdateRecordForKey:v4 inDictionary:self->_pendingUpdateRecordByStoreAdamID];

  return v5;
}

- (id)_pendingUpdateRecordForKey:(id)key inDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
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
  v15 = keyCopy;
  v16 = &v17;
  v14 = dictionaryCopy;
  v9 = keyCopy;
  v10 = dictionaryCopy;
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

- (void)_removePendingUpdateRecordForStoreAdamID:(int64_t)d token:(id)token
{
  tokenCopy = token;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MPContentTasteController__removePendingUpdateRecordForStoreAdamID_token___block_invoke;
  block[3] = &unk_1E767D490;
  v10 = tokenCopy;
  dCopy = d;
  block[4] = self;
  v8 = tokenCopy;
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

- (void)_removePendingUpdateRecordForPlaylistGlobalID:(id)d token:(id)token
{
  dCopy = d;
  tokenCopy = token;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MPContentTasteController__removePendingUpdateRecordForPlaylistGlobalID_token___block_invoke;
  block[3] = &unk_1E76800A0;
  block[4] = self;
  v12 = dCopy;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = dCopy;
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

- (id)_addPendingUpdateRecordForStoreAdamID:(int64_t)d contentTasteType:(int64_t)type
{
  v6 = [[MPContentTastePendingUpdateRecord alloc] initWithStoreAdamID:d tasteType:type];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v8 = [(MPContentTasteController *)self _addPendingUpdateRecord:v6 withKey:v7 inDictionary:self->_pendingUpdateRecordByStoreAdamID];

  return v8;
}

- (id)_addPendingUpdateRecordForPlaylistGlobalID:(id)d contentTasteType:(int64_t)type
{
  dCopy = d;
  v7 = [[MPContentTastePendingUpdateRecord alloc] initWithPlaylistGlobalID:dCopy tasteType:type];
  v8 = [(MPContentTasteController *)self _addPendingUpdateRecord:v7 withKey:dCopy inDictionary:self->_pendingUpdateRecordByPlaylistGlobalID];

  return v8;
}

- (id)_addPendingUpdateRecord:(id)record withKey:(id)key inDictionary:(id)dictionary
{
  recordCopy = record;
  keyCopy = key;
  dictionaryCopy = dictionary;
  accessQueue = self->_accessQueue;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__MPContentTasteController__addPendingUpdateRecord_withKey_inDictionary___block_invoke;
  v20 = &unk_1E767C7D0;
  v21 = dictionaryCopy;
  selfCopy = self;
  v23 = recordCopy;
  v24 = keyCopy;
  v12 = keyCopy;
  v13 = recordCopy;
  v14 = dictionaryCopy;
  dispatch_barrier_sync(accessQueue, &v17);
  uUID = [v13 UUID];

  return uUID;
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

- (id)_ML3QueryWithEntityClass:(Class)class predicate:(id)predicate options:(int64_t)options
{
  predicateCopy = predicate;
  _mediaLibrary = [(MPContentTasteController *)self _mediaLibrary];
  libraryDataProvider = [_mediaLibrary libraryDataProvider];
  library = [libraryDataProvider library];
  v12 = [(objc_class *)class queryWithLibrary:library predicate:predicateCopy orderingTerms:MEMORY[0x1E695E0F0] usingSections:0 options:options];

  return v12;
}

- (id)_libraryEntityWithStoreID:(int64_t)d contentType:(int64_t)type
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!d)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v4 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (type > 7)
  {
    v10 = 0;
    v7 = 0;
    v11 = 0;
  }

  else
  {
    if (((1 << type) & 0xC6) != 0)
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
    if (((1 << type) & 0x28) != 0)
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
        v14 = [MEMORY[0x1E69B3488] predicateWithProperty:v7 equalToInt64:d];
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
          anyEntityPersistentID = [v15 anyEntityPersistentID];
          v30[3] = anyEntityPersistentID;
        }

        v17 = v30[3];
        if (v17)
        {
LABEL_19:
          if (v17)
          {
            _mediaLibrary = [(MPContentTasteController *)self _mediaLibrary];
            if (v8)
            {
              [_mediaLibrary collectionWithPersistentID:v30[3] groupingType:v26 verifyExistence:0];
            }

            else
            {
              [_mediaLibrary itemWithPersistentID:v30[3] verifyExistence:0];
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
        v20 = [MEMORY[0x1E69B3488] predicateWithProperty:v10 equalToInt64:d];
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
          anyEntityPersistentID2 = [v21 anyEntityPersistentID];
          v30[3] = anyEntityPersistentID2;
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

- (id)_libraryPlaylistWithGlobalID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2AD0] equalToValue:dCopy];
    v7 = [(MPContentTasteController *)self _ML3QueryWithEntityClass:v5 predicate:v6 options:4];

    anyEntityPersistentID = [v7 anyEntityPersistentID];
    if (anyEntityPersistentID)
    {
      v9 = anyEntityPersistentID;
      _mediaLibrary = [(MPContentTasteController *)self _mediaLibrary];
      v11 = [_mediaLibrary playlistWithPersistentID:v9];
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

- (id)_libraryEntityForModel:(id)model
{
  modelCopy = model;
  identifiers = [modelCopy identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      _mediaLibrary = [(MPContentTasteController *)self _mediaLibrary];
      v9 = [_mediaLibrary itemWithPersistentID:persistentID verifyExistence:0];
LABEL_6:
      persistentID = v9;

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      _mediaLibrary2 = [(MPContentTasteController *)self _mediaLibrary];
      _mediaLibrary = _mediaLibrary2;
      v12 = persistentID;
      v13 = 1;
LABEL_13:
      v9 = [_mediaLibrary2 collectionWithPersistentID:v12 groupingType:v13];
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mediaLibrary2 = [(MPContentTasteController *)self _mediaLibrary];
      _mediaLibrary = _mediaLibrary2;
      v12 = persistentID;
      v13 = 2;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mediaLibrary = [(MPContentTasteController *)self _mediaLibrary];
      v9 = [_mediaLibrary playlistWithPersistentID:persistentID];
      goto LABEL_6;
    }

    persistentID = 0;
  }

LABEL_7:

  return persistentID;
}

- (void)_deviceMediaLibraryDidChangeNotification:(id)notification
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPContentTasteController__deviceMediaLibraryDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_libraryPathDidChangeForTasteController:(id)controller
{
  v4 = +[MPContentTasteController sharedController];

  if (v4 == self)
  {
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    userIdentity = self->_userIdentity;
    self->_userIdentity = activeAccount;
  }
}

- (int64_t)tasteTypeForStoreAdamID:(int64_t)d
{
  v5 = [(MPContentTasteController *)self _pendingUpdateRecordForStoreAdamID:?];
  v6 = v5;
  if (v5)
  {
    tasteType = [v5 tasteType];
  }

  else
  {
    v8 = [(MPContentTasteController *)self _libraryEntityWithStoreID:d contentType:1];
    if (v8 || ([(MPContentTasteController *)self _libraryEntityWithStoreID:d contentType:3], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MPContentTasteController *)self _libraryEntityWithStoreID:d contentType:2], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      tasteType = [(MPContentTasteController *)self tasteTypeForMediaEntity:v8];
    }

    else
    {
      tasteType = 0;
    }
  }

  return tasteType;
}

- (int64_t)tasteTypeForPlaylistGlobalID:(id)d
{
  dCopy = d;
  v5 = [(MPContentTasteController *)self _pendingUpdateRecordForPlaylistGlobalID:dCopy];
  v6 = v5;
  if (v5)
  {
    tasteType = [v5 tasteType];
  }

  else
  {
    v8 = [(MPContentTasteController *)self _libraryPlaylistWithGlobalID:dCopy];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 valueForProperty:@"likedState"];
      integerValue = [v10 integerValue];

      if (integerValue == 3)
      {
        tasteType = 2;
      }

      else
      {
        tasteType = integerValue == 2;
      }
    }

    else
    {
      tasteType = 0;
    }
  }

  return tasteType;
}

- (int64_t)tasteTypeForMediaEntity:(id)entity
{
  entityCopy = entity;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [entityCopy valueForProperty:@"storeItemAdamID"];
      longLongValue = [v10 longLongValue];

      if (longLongValue)
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

    v15 = [entityCopy valueForProperty:*v14];
    longLongValue = [v15 longLongValue];

    v5 = *v13;
    if (!longLongValue)
    {
LABEL_19:
      if (v5)
      {
        v18 = [entityCopy valueForProperty:v5];
        integerValue = [v18 integerValue];

        if (integerValue == 3)
        {
          tasteType = 2;
        }

        else
        {
          tasteType = integerValue == 2;
        }

        goto LABEL_17;
      }

LABEL_23:
      tasteType = 0;
      goto LABEL_18;
    }

LABEL_13:
    v16 = [(MPContentTasteController *)self _pendingUpdateRecordForStoreAdamID:longLongValue];
    if (v16)
    {
      v6 = v16;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v5 = [entityCopy valueForProperty:@"cloudGlobalID"];
  v6 = [(MPContentTasteController *)self _pendingUpdateRecordForPlaylistGlobalID:v5];
  if (!v6)
  {
    v7 = [entityCopy valueForProperty:@"likedState"];
    integerValue2 = [v7 integerValue];

    if (integerValue2 == 3)
    {
      tasteType = 2;
    }

    else
    {
      tasteType = integerValue2 == 2;
    }

    goto LABEL_16;
  }

LABEL_15:
  tasteType = [v6 tasteType];
LABEL_16:

LABEL_17:
LABEL_18:

  return tasteType;
}

- (int64_t)tasteTypeForModel:(id)model
{
  modelCopy = model;
  v5 = [(MPContentTasteController *)self _libraryEntityForModel:modelCopy];
  if (v5)
  {
    tasteType = [(MPContentTasteController *)self tasteTypeForMediaEntity:v5];
  }

  else
  {
    identifiers = [modelCopy identifiers];
    universalStore = [identifiers universalStore];
    globalPlaylistID = [universalStore globalPlaylistID];

    if ([globalPlaylistID length] && (-[MPContentTasteController _pendingUpdateRecordForPlaylistGlobalID:](self, "_pendingUpdateRecordForPlaylistGlobalID:", globalPlaylistID), (v10 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(modelCopy, "identifiers"), v11 = objc_claimAutoreleasedReturnValue(), v12 = _MPContentTasteBestIDFromIdentifiers(v11), v11, v12) && (-[MPContentTasteController _pendingUpdateRecordForStoreAdamID:](self, "_pendingUpdateRecordForStoreAdamID:", v12), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v10;
      tasteType = [v10 tasteType];
    }

    else
    {
      tasteType = 0;
    }
  }

  return tasteType;
}

- (void)setTasteType:(int64_t)type forStoreAdamID:(int64_t)d withContentType:(int64_t)contentType completionHandler:(id)handler
{
  v49[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11 = [(MPContentTasteController *)self _libraryEntityWithStoreID:d contentType:contentType];
  if (!v11)
  {
    if (d)
    {
      v48[0] = @"MPContentTasteControllerNotificationUserInfoKeyStoreAdamID";
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      v49[0] = v12;
      v48[1] = @"MPContentTasteControllerNotificationUserInfoKeyTasteType";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      v49[1] = v13;
      v48[2] = @"MPContentTasteControllerNotificationUserInfoKeyContentType";
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:contentType];
      v49[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
      [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v15];
    }

    v16 = [(MPContentTasteController *)self _addPendingUpdateRecordForStoreAdamID:d contentTasteType:type];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke;
    aBlock[3] = &unk_1E76760B8;
    aBlock[4] = self;
    dCopy = d;
    v33 = v16;
    v40 = v33;
    v41 = handlerCopy;
    v17 = _Block_copy(aBlock);
    v18 = 3;
    if (type != 2)
    {
      v18 = 1;
    }

    if (type == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = v18;
    }

    v31 = v19;
    v32 = v17;
    if (contentType == 3)
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
      if ((contentType - 1) > 1)
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
    v26 = [[MPStoreItemLibraryImportElement alloc] initWithStoreItemID:d additionalTrackMetadata:v24];
    v27 = [MPStoreItemLibraryImport alloc];
    v43 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v29 = [(MPStoreItemLibraryImport *)v27 initWithImportElements:v28 referralObject:0 usingCloudLibraryDestination:0];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __90__MPContentTasteController_setTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_2;
    v34[3] = &unk_1E76760E0;
    contentTypeCopy = contentType;
    v37 = v31;
    dCopy2 = d;
    v34[4] = self;
    v35 = v32;
    v30 = v32;
    [v25 performStoreItemLibraryImport:v29 withCompletion:v34];

    goto LABEL_17;
  }

  [(MPContentTasteController *)self setTasteType:type forMediaEntity:v11 withCompletionHandler:handlerCopy];
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

- (void)setTasteType:(int64_t)type forPlaylistGlobalID:(id)d withCompletionHandler:(id)handler
{
  v32[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = [(MPContentTasteController *)self _libraryPlaylistWithGlobalID:dCopy];
  if (v10)
  {
    [(MPContentTasteController *)self setTasteType:type forMediaEntity:v10 withCompletionHandler:handlerCopy];
  }

  else if (dCopy)
  {
    v32[0] = dCopy;
    v31[0] = @"MPContentTasteControllerNotificationUserInfoKeyPlaylistGlobalID";
    v31[1] = @"MPContentTasteControllerNotificationUserInfoKeyTasteType";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v31[2] = @"MPContentTasteControllerNotificationUserInfoKeyContentType";
    v32[1] = v11;
    v32[2] = &unk_1F1509640;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v12];

    v13 = [(MPContentTasteController *)self _addPendingUpdateRecordForPlaylistGlobalID:dCopy contentTasteType:type];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__MPContentTasteController_setTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E767BBA8;
    aBlock[4] = self;
    v14 = dCopy;
    v26 = v14;
    v27 = v13;
    v28 = handlerCopy;
    v15 = v13;
    v16 = _Block_copy(aBlock);
    v17 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:self->_userIdentity];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__MPContentTasteController_setTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_2;
    v22[3] = &unk_1E7676090;
    v23 = v16;
    typeCopy = type;
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
    (*(handlerCopy + 2))(handlerCopy, v21);
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

- (void)setTasteType:(int64_t)type forMediaEntity:(id)entity withCompletionHandler:(id)handler
{
  v63[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  handlerCopy = handler;
  v10 = 3;
  if (type != 2)
  {
    v10 = 1;
  }

  if (type == 1)
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
  v40 = handlerCopy;
  v42 = v40;
  v11 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [entityCopy valueForProperty:@"cloudGlobalID"];
    v13 = v57[5];
    v57[5] = v12;

    v14 = objc_alloc(MEMORY[0x1E695DF90]);
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v16 = [v14 initWithObjectsAndKeys:{entityCopy, @"MPContentTasteControllerNotificationUserInfoKeyMediaEntity", v15, @"MPContentTasteControllerNotificationUserInfoKeyTasteType", &unk_1F1509640, @"MPContentTasteControllerNotificationUserInfoKeyContentType", 0}];

    v17 = v57[5];
    if (v17)
    {
      [(__CFString *)v16 setObject:v17 forKey:@"MPContentTasteControllerNotificationUserInfoKeyPlaylistGlobalID"];
    }

    [MPContentTasteController _postNotificationName:@"MPContentTasteControllerWillSetTasteTypeNotification" controller:self userInfo:v16];
    v18 = v57[5];
    if (v18)
    {
      v19 = [(MPContentTasteController *)self _addPendingUpdateRecordForPlaylistGlobalID:v18 contentTasteType:type];
      v20 = v47[5];
      v47[5] = v19;
    }

    v21 = entityCopy;
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
    v28 = [entityCopy valueForProperty:@"albumStoreID"];
    longLongValue = [v28 longLongValue];
    v16 = @"albumLikedState";
    v26 = 3;
LABEL_19:
    v53[3] = longLongValue;

    goto LABEL_20;
  }

  v23 = @"likedState";
  v24 = [entityCopy valueForProperty:@"storeItemAdamID"];
  longLongValue2 = [v24 longLongValue];
  v53[3] = longLongValue2;

  if (!v53[3])
  {
    v28 = [entityCopy valueForProperty:@"subscriptionStoreItemAdamID"];
    longLongValue = [v28 longLongValue];
    v16 = @"likedState";
    v26 = 1;
    goto LABEL_19;
  }

  v16 = @"likedState";
  v26 = 1;
LABEL_20:
  if (entityCopy)
  {
    v30 = objc_alloc(MEMORY[0x1E695DF90]);
    v31 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
    v33 = [v30 initWithObjectsAndKeys:{entityCopy, @"MPContentTasteControllerNotificationUserInfoKeyMediaEntity", v31, @"MPContentTasteControllerNotificationUserInfoKeyTasteType", v32, @"MPContentTasteControllerNotificationUserInfoKeyContentType", 0}];

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
    v36 = [(MPContentTasteController *)self _addPendingUpdateRecordForStoreAdamID:v35 contentTasteType:type];
    v37 = v47[5];
    v47[5] = v36;
  }

  if (v16)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
    [entityCopy setValue:v21 forProperty:v16 withCompletionBlock:v11];
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

- (void)setTasteType:(int64_t)type forModel:(id)model withCompletionHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    flattenedGenericObject = [modelCopy flattenedGenericObject];
    anyObject = [flattenedGenericObject anyObject];

    v11 = anyObject;
  }

  else
  {
    v11 = modelCopy;
  }

  v19 = v11;
  identifiers = [v11 identifiers];
  universalStore = [identifiers universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  if ([globalPlaylistID length])
  {
    [(MPContentTasteController *)self setTasteType:type forPlaylistGlobalID:globalPlaylistID withCompletionHandler:handlerCopy];
  }

  else
  {
    identifiers2 = [v19 identifiers];
    v16 = _MPContentTasteBestIDFromIdentifiers(identifiers2);

    if (v16)
    {
      [(MPContentTasteController *)self setTasteType:type forStoreAdamID:v16 withContentType:MPContentTasteContentTypeFromMPModelObject(v19) completionHandler:handlerCopy];
    }

    else
    {
      v17 = [(MPContentTasteController *)self _libraryEntityForModel:v19];
      [(MPContentTasteController *)self setTasteType:type forMediaEntity:v17 withCompletionHandler:handlerCopy];
    }
  }
}

- (id)_initWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = MPContentTasteController;
  v5 = [(MPContentTasteController *)&v13 init];
  if (v5)
  {
    v6 = [identityCopy copy];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = dispatch_queue_create("com.apple.MediaPlayer.MPContentTasteController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:identityCopy];
    [defaultCenter addObserver:v5 selector:sel__deviceMediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDidChangeNotification" object:v11];
  }

  return v5;
}

- (MPContentTasteController)init
{
  activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [(MPContentTasteController *)self _initWithUserIdentity:activeAccount];

  return v4;
}

+ (void)_postNotificationName:(id)name controller:(id)controller userInfo:(id)info
{
  nameCopy = name;
  controllerCopy = controller;
  infoCopy = info;
  if (controllerCopy)
  {
    defaultCenter = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    [defaultCenter addObject:controllerCopy];
    v11 = +[MPContentTasteController sharedController];
    v12 = v11;
    if (v11 == controllerCopy)
    {
    }

    else
    {
      userIdentity = [controllerCopy userIdentity];
      [userIdentity accountDSID];
      v23 = infoCopy;
      v15 = v14 = nameCopy;
      v16 = +[MPContentTasteController sharedController];
      userIdentity2 = [v16 userIdentity];
      accountDSID = [userIdentity2 accountDSID];
      v19 = [v15 isEqualToString:accountDSID];

      nameCopy = v14;
      infoCopy = v23;

      if (v19)
      {
        v20 = +[MPContentTasteController sharedController];
        goto LABEL_9;
      }
    }

    v21 = +[MPContentTasteController sharedController];

    if (v21 != controllerCopy)
    {
LABEL_11:
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__MPContentTasteController__postNotificationName_controller_userInfo___block_invoke;
      v24[3] = &unk_1E7676108;
      v25 = nameCopy;
      v26 = infoCopy;
      [defaultCenter enumerateObjectsUsingBlock:v24];

      goto LABEL_12;
    }

    userIdentity3 = [controllerCopy userIdentity];
    v20 = [MPContentTasteController _tasteControllerWithUserIdentity:userIdentity3 isSingleton:0 createIfRequired:0];

    if (!v20)
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    [defaultCenter addObject:v20];
    goto LABEL_10;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:0 userInfo:infoCopy];
LABEL_12:
}

void __70__MPContentTasteController__postNotificationName_controller_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:*(a1 + 32) object:v4 userInfo:*(a1 + 40)];
}

+ (id)_tasteControllerWithUserIdentity:(id)identity isSingleton:(BOOL)singleton createIfRequired:(BOOL)required
{
  identityCopy = identity;
  v9 = identityCopy;
  if (singleton)
  {
    v10 = @"SingletonTasteController";
  }

  else
  {
    accountDSID = [identityCopy accountDSID];
    if (accountDSID)
    {
      v10 = accountDSID;
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
  globalSerialQueue = [self globalSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__MPContentTasteController__tasteControllerWithUserIdentity_isSingleton_createIfRequired___block_invoke;
  block[3] = &unk_1E7679228;
  requiredCopy = required;
  v18 = v10;
  v19 = v9;
  v20 = &v23;
  selfCopy = self;
  v13 = v9;
  v14 = v10;
  dispatch_sync(globalSerialQueue, block);

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