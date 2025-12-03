@interface ASKProfilePictureStore
+ (ASKProfilePictureStore)sharedStore;
- (ASKProfilePictureStore)init;
- (id)_profilePictureForFamilyMember:(id)member withProfilePictureStore:(id)store usingMonogrammer:(id)monogrammer;
- (void)_markAsHasRequestedImages;
- (void)appleAccountsDidChange:(id)change;
- (void)configureProfilePictureStoreAndNotifyIfNeeded;
- (void)dealloc;
- (void)notifyIfNeeded;
- (void)profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:(double)diameter completion:(id)completion;
- (void)profilePictureStoreDidChange:(id)change;
- (void)profilePictureWithMonogramFallbackForFamilyMembers:(id)members pictureDiameter:(double)diameter completion:(id)completion;
- (void)storeAccountsDidChange:(id)change;
@end

@implementation ASKProfilePictureStore

+ (ASKProfilePictureStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[ASKProfilePictureStore sharedStore];
  }

  v3 = sharedStore_instance;

  return v3;
}

void __37__ASKProfilePictureStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(ASKProfilePictureStore);
  v1 = sharedStore_instance;
  sharedStore_instance = v0;
}

- (ASKProfilePictureStore)init
{
  v19.receiver = self;
  v19.super_class = ASKProfilePictureStore;
  v2 = [(ASKProfilePictureStore *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AppStoreKit.ASKProfilePictureStore.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("AppStoreKit.ASKProfilePictureStore.notificationQueue", MEMORY[0x1E69E96A8]);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *MEMORY[0x1E69597D8];
    [defaultCenter addObserver:v2 selector:sel_appleAccountsDidChange_ name:*MEMORY[0x1E69597D8] object:v2->_accountStore];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    [defaultCenter2 addObserver:v2 selector:sel_storeAccountsDidChange_ name:v10 object:ams_sharedAccountStore];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_profilePictureStoreDidChange_ name:*MEMORY[0x1E698BB38] object:0];

    objc_initWeak(&location, v2);
    accessQueue = [(ASKProfilePictureStore *)v2 accessQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__ASKProfilePictureStore_init__block_invoke;
    v16[3] = &unk_1E870C358;
    objc_copyWeak(&v17, &location);
    dispatch_async(accessQueue, v16);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__ASKProfilePictureStore_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASKProfilePictureStore;
  [(ASKProfilePictureStore *)&v4 dealloc];
}

- (void)configureProfilePictureStoreAndNotifyIfNeeded
{
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  accountStore = [(ASKProfilePictureStore *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  username = [aa_primaryAppleAccount username];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  username2 = [ams_activeiTunesAccount username];

  primaryAccountName = [(ASKProfilePictureStore *)self primaryAccountName];
  v10 = [primaryAccountName length];
  if (v10 == [username length])
  {
    HIDWORD(v38) = 0;
  }

  else
  {
    primaryAccountName2 = [(ASKProfilePictureStore *)self primaryAccountName];
    HIDWORD(v38) = [primaryAccountName2 isEqualToString:username] ^ 1;
  }

  storeAccountName = [(ASKProfilePictureStore *)self storeAccountName];
  v13 = [storeAccountName length];
  if (v13 == [username2 length])
  {
    LODWORD(v38) = 0;
  }

  else
  {
    storeAccountName2 = [(ASKProfilePictureStore *)self storeAccountName];
    LODWORD(v38) = [storeAccountName2 isEqualToString:username2] ^ 1;
  }

  if ([username length])
  {
    v15 = [username2 length] != 0;
  }

  else
  {
    v15 = 0;
  }

  userFullName = [aa_primaryAppleAccount userFullName];
  ams_sharedAccountStore2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount2 = [ams_sharedAccountStore2 ams_activeiTunesAccount];
  userFullName2 = [ams_activeiTunesAccount2 userFullName];

  primaryAccountFullName = [(ASKProfilePictureStore *)self primaryAccountFullName];
  v21 = [primaryAccountFullName length];
  if (v21 == [userFullName length])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    primaryAccountFullName2 = [(ASKProfilePictureStore *)self primaryAccountFullName];
    v22 = [primaryAccountFullName2 isEqualToString:userFullName] ^ 1;
  }

  storeAccountFullName = [(ASKProfilePictureStore *)self storeAccountFullName];
  v25 = [storeAccountFullName length];
  if (v25 == [userFullName2 length])
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    storeAccountFullName2 = [(ASKProfilePictureStore *)self storeAccountFullName];
    v26 = [storeAccountFullName2 isEqualToString:userFullName2] ^ 1;
  }

  v28 = v40 | v22;
  if ([username2 caseInsensitiveCompare:username])
  {
    v29 = [userFullName2 caseInsensitiveCompare:userFullName] != 0;
  }

  else
  {
    v29 = 0;
  }

  [(ASKProfilePictureStore *)self setPrimaryAccountFullName:userFullName];
  [(ASKProfilePictureStore *)self setStoreAccountFullName:userFullName2];
  profilePictureStore = [(ASKProfilePictureStore *)self profilePictureStore];

  v31 = v28 | v39 | v26;
  if ((v31 & 1) != 0 || v15 != (profilePictureStore != 0))
  {
    [(ASKProfilePictureStore *)self setPrimaryAccountName:username];
    [(ASKProfilePictureStore *)self setStoreAccountName:username2];
    if (v29 || !v15)
    {
      [(ASKProfilePictureStore *)self setProfilePictureStore:0];
      if ((v31 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      accountStore2 = [(ASKProfilePictureStore *)self accountStore];
      v33 = [accountStore2 aida_accountForiCloudAccount:aa_primaryAppleAccount];

      v34 = objc_alloc(MEMORY[0x1E698BB40]);
      accountStore3 = [(ASKProfilePictureStore *)self accountStore];
      v36 = [v34 initWithAppleAccount:aa_primaryAppleAccount grandSlamAccount:v33 accountStore:accountStore3];
      [(ASKProfilePictureStore *)self setProfilePictureStore:v36];

      profilePictureStore2 = [(ASKProfilePictureStore *)self profilePictureStore];
      [profilePictureStore2 setMonogramType:0];

      if ((v31 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    [(ASKProfilePictureStore *)self notifyIfNeeded];
  }

LABEL_26:
}

- (void)notifyIfNeeded
{
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(ASKProfilePictureStore *)self hasRequestedImages])
  {
    objc_initWeak(&location, self);
    notificationQueue = [(ASKProfilePictureStore *)self notificationQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__ASKProfilePictureStore_notifyIfNeeded__block_invoke;
    v5[3] = &unk_1E870C358;
    objc_copyWeak(&v6, &location);
    dispatch_async(notificationQueue, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __40__ASKProfilePictureStore_notifyIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"ASKProfilePictureStoreDidChange" object:WeakRetained];
}

- (void)appleAccountsDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__ASKProfilePictureStore_appleAccountsDidChange___block_invoke;
  v6[3] = &unk_1E870C358;
  objc_copyWeak(&v7, &location);
  dispatch_async(accessQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__ASKProfilePictureStore_appleAccountsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc_init(MEMORY[0x1E6959A48]);
  [WeakRetained setAccountStore:v1];

  [WeakRetained setProfilePictureStore:0];
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)storeAccountsDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__ASKProfilePictureStore_storeAccountsDidChange___block_invoke;
  v6[3] = &unk_1E870C358;
  objc_copyWeak(&v7, &location);
  dispatch_async(accessQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__ASKProfilePictureStore_storeAccountsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)profilePictureStoreDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ASKProfilePictureStore_profilePictureStoreDidChange___block_invoke;
  v6[3] = &unk_1E870C358;
  objc_copyWeak(&v7, &location);
  dispatch_async(accessQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__ASKProfilePictureStore_profilePictureStoreDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyIfNeeded];
}

- (void)profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:(double)diameter completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke;
  v9[3] = &unk_1E870C3F8;
  objc_copyWeak(v11, &location);
  v11[1] = *&diameter;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(accessQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markAsHasRequestedImages];
  v3 = [WeakRetained profilePictureStore];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [WeakRetained profilePictureStore];
    [v5 setPictureDiameter:v4];

    v6 = [WeakRetained profilePictureStore];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_2;
    v10[3] = &unk_1E870C3A8;
    v7 = &v11;
    v11 = *(a1 + 32);
    [v6 profilePictureForAccountOwnerWithCompletion:v10];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_4;
    v8[3] = &unk_1E870C3D0;
    v7 = &v9;
    v9 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_3;
  v6[3] = &unk_1E870C380;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)profilePictureWithMonogramFallbackForFamilyMembers:(id)members pictureDiameter:(double)diameter completion:(id)completion
{
  membersCopy = members;
  completionCopy = completion;
  objc_initWeak(&location, self);
  accessQueue = [(ASKProfilePictureStore *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke;
  block[3] = &unk_1E870C420;
  objc_copyWeak(v16, &location);
  v16[1] = *&diameter;
  v14 = membersCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = membersCopy;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v4 = [WeakRetained profilePictureStore];
  [v4 setPictureDiameter:v3];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [objc_alloc(MEMORY[0x1E695D188]) initWithStyle:0 diameter:*(a1 + 56)];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = a1;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ([v12 isCurrentSignedInUser] && (objc_msgSend(WeakRetained, "profilePictureStore"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "profilePictureForAccountOwnerWithoutMonogramFallback"), v14 = objc_claimAutoreleasedReturnValue(), v13, v14) || (objc_msgSend(WeakRetained, "profilePictureStore"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "_profilePictureForFamilyMember:withProfilePictureStore:usingMonogrammer:", v12, v15, v6), v14 = objc_claimAutoreleasedReturnValue(), v15, v14))
        {
          v16 = [v12 iTunesDSID];

          if (v16)
          {
            v17 = [v12 iTunesDSID];
            [v5 setObject:v14 forKeyedSubscript:v17];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  [WeakRetained _markAsHasRequestedImages];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke_2;
  block[3] = &unk_1E870C380;
  v18 = *(v20 + 40);
  v22 = v5;
  v23 = v18;
  v19 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)_profilePictureForFamilyMember:(id)member withProfilePictureStore:(id)store usingMonogrammer:(id)monogrammer
{
  memberCopy = member;
  monogrammerCopy = monogrammer;
  v9 = MEMORY[0x1E698B8B8];
  storeCopy = store;
  v11 = objc_alloc_init(v9);
  firstName = [memberCopy firstName];
  [v11 setFirstName:firstName];

  lastName = [memberCopy lastName];
  [v11 setLastName:lastName];

  iCloudDSID = [memberCopy iCloudDSID];
  [v11 setPersonID:iCloudDSID];

  iCloudUsername = [memberCopy iCloudUsername];
  [v11 setAppleID:iCloudUsername];

  v16 = [storeCopy profilePictureForFamilyMember:v11];

  if (monogrammerCopy && !v16)
  {
    firstName2 = [memberCopy firstName];
    lastName2 = [memberCopy lastName];
    v16 = [monogrammerCopy monogramForPersonWithFirstName:firstName2 lastName:lastName2];
  }

  return v16;
}

- (void)_markAsHasRequestedImages
{
  if (![(ASKProfilePictureStore *)self hasRequestedImages])
  {

    [(ASKProfilePictureStore *)self setHasRequestedImages:1];
  }
}

@end