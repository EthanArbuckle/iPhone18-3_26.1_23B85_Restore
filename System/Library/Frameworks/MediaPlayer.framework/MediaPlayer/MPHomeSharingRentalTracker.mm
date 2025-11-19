@interface MPHomeSharingRentalTracker
+ (id)sharedInstance;
- (id)_init;
- (void)_saveRentals;
- (void)addRentalWithItemID:(unint64_t)a3 databaseID:(id)a4;
- (void)removeAllRentalsForDatabaseID:(id)a3;
- (void)removeRentalWithItemID:(unint64_t)a3;
@end

@implementation MPHomeSharingRentalTracker

- (void)_saveRentals
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media/HomeSharingRentals.plist"];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalTracker] Saving rentals to %{public}@", &v7, 0xCu);
  }

  rentals = self->_rentals;
  v6 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media/HomeSharingRentals.plist"];
  [(NSMutableDictionary *)rentals writeToFile:v6 atomically:1];
}

- (void)removeAllRentalsForDatabaseID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalTracker] Removing all rentals for database ID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2985;
  v24 = __Block_byref_object_dispose__2986;
  v25 = 0;
  rentalTrackerQueue = self->_rentalTrackerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPHomeSharingRentalTracker_removeAllRentalsForDatabaseID___block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = &buf;
  dispatch_sync(rentalTrackerQueue, block);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(*(&buf + 1) + 40) allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(*(&buf + 1) + 40) objectForKey:v10];
        v12 = [v11 objectForKey:@"databaseID"];
        v13 = [v12 isEqual:v3];

        if (v13)
        {
          -[MPHomeSharingRentalTracker removeRentalWithItemID:](self, "removeRentalWithItemID:", [v10 longLongValue]);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&buf, 8);
}

void __60__MPHomeSharingRentalTracker_removeAllRentalsForDatabaseID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeRentalWithItemID:(unint64_t)a3
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"MPHomeSharingRentalTracker.m" lineNumber:76 description:@"attempted to remove rental with no item ID"];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  v6 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalTracker] Removing rental with item ID: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2985;
  v46 = __Block_byref_object_dispose__2986;
  v47 = 0;
  rentalTrackerQueue = self->_rentalTrackerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke;
  block[3] = &unk_1E7681330;
  p_buf = &buf;
  block[4] = self;
  v24 = v5;
  v35 = v24;
  dispatch_sync(rentalTrackerQueue, block);
  v8 = *(*(&buf + 1) + 40);
  if (v8)
  {
    v9 = [v8 objectForKey:@"databaseID"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = +[MPMediaLibrary mediaLibraries];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v11)
    {
      v12 = *v31;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [v14 uniqueIdentifier];
        v16 = [v15 isEqual:v9];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v17 = [v14 itemWithPersistentID:a3];
      v11 = [v14 libraryDataProvider];

      if (!v17)
      {
        goto LABEL_23;
      }

      v10 = [v17 valueForProperty:@"storeAccountID"];
      v18 = [v17 valueForProperty:@"storeRentalID"];
      if ([v10 unsignedLongLongValue] && objc_msgSend(v18, "unsignedLongLongValue"))
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2050000000;
        v19 = getSSRentalCheckinRequestClass_softClass;
        v41 = getSSRentalCheckinRequestClass_softClass;
        if (!getSSRentalCheckinRequestClass_softClass)
        {
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __getSSRentalCheckinRequestClass_block_invoke;
          v37[3] = &unk_1E7680410;
          v37[4] = &v38;
          __getSSRentalCheckinRequestClass_block_invoke(v37);
          v19 = v39[3];
        }

        v20 = v19;
        _Block_object_dispose(&v38, 8);
        v21 = [[v19 alloc] initWithAccountIdentifier:v10 rentalKeyIdentifier:v18];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke_2;
        v25[3] = &unk_1E767AD48;
        v26 = v11;
        v27 = v17;
        v28 = self;
        v29 = v24;
        [v21 startWithCompletionBlock:v25];
      }
    }

    else
    {
LABEL_14:
      v17 = 0;
    }

LABEL_23:
  }

  _Block_object_dispose(&buf, 8);
}

void __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "Failed to checkin rental to iTunes Store.", v7, 2u);
    }
  }

  else
  {
    v2 = [*(a1 + 32) homeSharingLibrary];
    v4 = [*(a1 + 40) valueForProperty:@"homeSharingID"];
    v5 = [MEMORY[0x1E69A4658] requestWithDatabaseID:-[NSObject databaseID](v2 itemID:{"databaseID"), objc_msgSend(v4, "unsignedLongLongValue")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke_3;
    v8[3] = &unk_1E7675F10;
    v6 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    v9 = v6;
    [v2 sendRequest:v5 withResponseHandler:v8];
  }
}

void __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalTracker] iTunes rental checkout response: %{public}@", buf, 0xCu);
  }

  if ([v3 responseCode] > 0x12B)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 responseCode];
      *buf = 134217984;
      v13 = v9;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Failed iTunes side checkout request (response code = %lu)", buf, 0xCu);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke_24;
    v10[3] = &unk_1E76823C0;
    v10[4] = v6;
    v11 = v5;
    dispatch_sync(v7, v10);
  }
}

uint64_t __53__MPHomeSharingRentalTracker_removeRentalWithItemID___block_invoke_24(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _saveRentals];
}

- (void)addRentalWithItemID:(unint64_t)a3 databaseID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!a3 || !v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPHomeSharingRentalTracker.m" lineNumber:63 description:{@"attempted to add rental with item ID: %llu, databaseID: %@", a3, v8}];
  }

  v9 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = a3;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalTracker] Adding rental with item ID: %llu, database ID: %{public}@", buf, 0x16u);
  }

  rentalTrackerQueue = self->_rentalTrackerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPHomeSharingRentalTracker_addRentalWithItemID_databaseID___block_invoke;
  block[3] = &unk_1E767D490;
  v14 = v8;
  v15 = self;
  v16 = a3;
  v11 = v8;
  dispatch_sync(rentalTrackerQueue, block);
}

void __61__MPHomeSharingRentalTracker_addRentalWithItemID_databaseID___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = @"databaseID";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *(*(a1 + 40) + 16);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(a1 + 48)];
  [v4 setObject:v3 forKey:v5];

  [*(a1 + 40) _saveRentals];
}

- (id)_init
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MPHomeSharingRentalTracker;
  v2 = [(MPHomeSharingRentalTracker *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mobileipod.home-sharing-rental-tracker", 0);
    rentalTrackerQueue = v2->_rentalTrackerQueue;
    v2->_rentalTrackerQueue = v3;

    v5 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media/HomeSharingRentals.plist"];
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingRentalTracker] Loading rentals from %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x1E695DF20];
    v8 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media/HomeSharingRentals.plist"];
    v9 = [v7 dictionaryWithContentsOfFile:v8];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    rentals = v2->_rentals;
    v2->_rentals = v12;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    dispatch_once(&sharedInstance___once, &__block_literal_global_3028);
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __44__MPHomeSharingRentalTracker_sharedInstance__block_invoke()
{
  v0 = [[MPHomeSharingRentalTracker alloc] _init];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

@end