@interface AAUIProfilePictureStore
- (AAUIProfilePictureStore)init;
- (AAUIProfilePictureStore)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store;
- (AAUIProfilePictureStore)initWithAppleAccount:(id)account grandSlamSigner:(id)signer;
- (AAUIProfilePictureStore)initWithAppleAccount:(id)account store:(id)store;
- (AAUIProfilePictureStore)initWithGrandSlamSigner:(id)signer;
- (BOOL)_contactSyncsWithiCloud:(id)cloud error:(id *)error;
- (BOOL)_isCachedProfilePictureUpdated:(id)updated;
- (BOOL)_isProfilePictureCachePresent;
- (id)_contactWithImageDataMatchingFamilyMember:(id)member error:(id *)error;
- (id)_correctlySizedImageFromImage:(id)image;
- (id)_fallbackProfilePictureForPersonWithFirstName:(id)name lastName:(id)lastName;
- (id)_familyMemberPersonPicture:(id)picture;
- (id)_getAccountIdentifierForContact:(id)contact error:(id *)error;
- (id)_initWithoutAppleAccount;
- (id)_meCardForAccountWithError:(id *)error;
- (id)_meCardPicture;
- (id)_monogrammedContactImage:(id)image;
- (id)_monogrammer;
- (id)_profilePictureForFamilyMemberWithoutMonogramFallback:(id)fallback;
- (id)_profilePictureForPicture:(id)picture crop:(BOOL)crop cropRect:(CGRect)rect cacheable:(BOOL)cacheable;
- (id)_readProfilePictureFromCache;
- (id)_sizedProfilePictureWithFallback:(id)fallback;
- (id)cacheablePictureForPicture:(id)picture cropRect:(CGRect)rect;
- (id)monogramForCurrentAccount;
- (id)profilePictureForAccountOwner;
- (id)profilePictureForAccountOwnerWithoutMonogramFallback;
- (id)profilePictureForFamilyMember:(id)member;
- (id)profilePictureForLocalContact:(id)contact;
- (id)renderingScope;
- (void)_beginObservingContactStoreDidChangeNotifications;
- (void)_contactStoreDidChange:(id)change;
- (void)_decodeImageAndCropRectForContact:(id)contact completion:(id)completion;
- (void)_endObservingContactStoreDidChangeNotifications;
- (void)_familyMember:(id)member rawImageAndCropRect:(id)rect;
- (void)_fetchAndCacheRawImageAndCropRectWithRequest:(id)request personID:(id)d completion:(id)completion;
- (void)_fetchProfilePictureForAccountOwnerFromServer:(id)server serverCacheTag:(id)tag completion:(id)completion;
- (void)_fetchProfilePictureForFamilyMemberFromServer:(id)server serverCacheTag:(id)tag completion:(id)completion;
- (void)_fetchProfilePictureSupersetWithRequest:(id)request personID:(id)d completion:(id)completion;
- (void)_fetchProfilePictureWithRequest:(id)request personID:(id)d completion:(id)completion;
- (void)_invalidateMonogrammer;
- (void)_meCardPicture;
- (void)_meCardRawImageAndCropRect:(id)rect;
- (void)_saveProfilePictureToCache:(id)cache;
- (void)_saveProfilePictureToCacheIfNeeded:(id)needed;
- (void)_updateServerProfilePictureForAccountOwner:(id)owner cropRect:(id)rect;
- (void)dealloc;
- (void)fetchProfilePictureForAccountOwner:(id)owner;
- (void)fetchProfilePictureForFamilyMember:(id)member completion:(id)completion;
- (void)fetchProfilePictureFromCacheForAccountOwner:(id)owner;
- (void)fetchRawImageAndCropRectForAccountOwner:(id)owner;
- (void)fetchRawImageAndCropRectForFamilyMember:(id)member completion:(id)completion;
- (void)meCardWithVisualIdentity:(id)identity;
- (void)profilePictureForAccountOwnerWithCompletion:(id)completion;
- (void)setMonogramType:(int64_t)type;
- (void)setPictureDiameter:(double)diameter;
- (void)setProfilePictureForAccountOwner:(id)owner cropRect:(id)rect;
- (void)updateCacheWithPhoto:(id)photo cropRect:(id)rect forPersonID:(id)d;
@end

@implementation AAUIProfilePictureStore

- (AAUIProfilePictureStore)init
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  self->_monogrammerLock._os_unfair_lock_opaque = 0;
  if (aa_primaryAppleAccount)
  {
    v5 = [defaultStore aa_grandSlamAccountForiCloudAccount:aa_primaryAppleAccount];
    _initWithoutAppleAccount = [(AAUIProfilePictureStore *)self initWithAppleAccount:aa_primaryAppleAccount grandSlamAccount:v5 accountStore:defaultStore];
  }

  else
  {
    v7 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "No primary iCloud account found! Creating AAUIProfilePictureStore without primary account.", v9, 2u);
    }

    _initWithoutAppleAccount = [(AAUIProfilePictureStore *)self _initWithoutAppleAccount];
  }

  return _initWithoutAppleAccount;
}

- (id)_initWithoutAppleAccount
{
  v8.receiver = self;
  v8.super_class = AAUIProfilePictureStore;
  v2 = [(AAUIProfilePictureStore *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    networkingQueue = v2->_networkingQueue;
    v2->_networkingQueue = v5;

    v2->_pictureDiameter = 60.0;
    v2->_monogramType = 0;
    [(AAUIProfilePictureStore *)v2 _beginObservingContactStoreDidChangeNotifications];
  }

  return v2;
}

- (void)_beginObservingContactStoreDidChangeNotifications
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = *MEMORY[0x1E695C3D8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__AAUIProfilePictureStore__beginObservingContactStoreDidChangeNotifications__block_invoke;
  v8[3] = &unk_1E820BAF8;
  objc_copyWeak(&v9, &location);
  v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v8];
  contactStoreDidChangeObserver = self->_contactStoreDidChangeObserver;
  self->_contactStoreDidChangeObserver = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_invalidateMonogrammer
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AAUIProfilePictureStore__invalidateMonogrammer__block_invoke;
  v3[3] = &unk_1E820B8F0;
  v3[4] = self;
  os_unfair_lock_lock(&self->_monogrammerLock);
  __49__AAUIProfilePictureStore__invalidateMonogrammer__block_invoke(v3);
  os_unfair_lock_unlock(&self->_monogrammerLock);
}

void __49__AAUIProfilePictureStore__invalidateMonogrammer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

- (AAUIProfilePictureStore)initWithAppleAccount:(id)account grandSlamSigner:(id)signer
{
  accountCopy = account;
  signerCopy = signer;
  _initWithoutAppleAccount = [(AAUIProfilePictureStore *)self _initWithoutAppleAccount];
  v10 = _initWithoutAppleAccount;
  if (_initWithoutAppleAccount)
  {
    objc_storeStrong(_initWithoutAppleAccount + 1, account);
    accountStore = [signerCopy accountStore];
    accountStore = v10->_accountStore;
    v10->_accountStore = accountStore;

    objc_storeStrong(&v10->_grandSlamSigner, signer);
  }

  return v10;
}

- (AAUIProfilePictureStore)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store
{
  accountCopy = account;
  slamAccountCopy = slamAccount;
  storeCopy = store;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v13 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  v14 = _AAUIPPSLogSystem();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore initWithAppleAccount:grandSlamAccount:accountStore:];
    }

    v16 = objc_alloc(MEMORY[0x1E698B8D0]);
    v17 = [v16 initWithAccountStore:storeCopy grandSlamAccount:slamAccountCopy appTokenID:*MEMORY[0x1E698B7C0]];
    _initWithoutAppleAccount = [(AAUIProfilePictureStore *)self initWithAppleAccount:accountCopy grandSlamSigner:v17];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Cannot create AAUIProfilePictureStore with a non-iCloud account! Returning default store without account", v20, 2u);
    }

    _initWithoutAppleAccount = [(AAUIProfilePictureStore *)self _initWithoutAppleAccount];
  }

  return _initWithoutAppleAccount;
}

- (AAUIProfilePictureStore)initWithAppleAccount:(id)account store:(id)store
{
  storeCopy = store;
  accountCopy = account;
  v8 = [storeCopy aa_grandSlamAccountForiCloudAccount:accountCopy];
  v9 = [(AAUIProfilePictureStore *)self initWithAppleAccount:accountCopy grandSlamAccount:v8 accountStore:storeCopy];

  return v9;
}

- (AAUIProfilePictureStore)initWithGrandSlamSigner:(id)signer
{
  signerCopy = signer;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore initWithGrandSlamSigner:];
  }

  grandSlamAccount = [signerCopy grandSlamAccount];
  aida_alternateDSID = [grandSlamAccount aida_alternateDSID];

  accountStore = [signerCopy accountStore];
  v9 = [accountStore aa_appleAccountWithAltDSID:aida_alternateDSID];

  if (!v9)
  {
    v10 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore initWithGrandSlamSigner:];
    }

    grandSlamAccount2 = [signerCopy grandSlamAccount];
    aida_dsid = [grandSlamAccount2 aida_dsid];

    v13 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore initWithGrandSlamSigner:];
    }

    accountStore2 = [signerCopy accountStore];
    v9 = [accountStore2 aa_appleAccountWithPersonID:aida_dsid];
  }

  v15 = [(AAUIProfilePictureStore *)self initWithAppleAccount:v9 grandSlamSigner:signerCopy];

  return v15;
}

- (void)dealloc
{
  [(AAUIProfilePictureStore *)self _endObservingContactStoreDidChangeNotifications];
  v3.receiver = self;
  v3.super_class = AAUIProfilePictureStore;
  [(AAUIProfilePictureStore *)&v3 dealloc];
}

- (id)_monogrammer
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AAUIProfilePictureStore__monogrammer__block_invoke;
  v5[3] = &unk_1E820B8C8;
  v5[4] = self;
  os_unfair_lock_lock(&self->_monogrammerLock);
  v3 = __39__AAUIProfilePictureStore__monogrammer__block_invoke(v5);
  os_unfair_lock_unlock(&self->_monogrammerLock);

  return v3;
}

id __39__AAUIProfilePictureStore__monogrammer__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = objc_alloc(MEMORY[0x1E695D098]);
    v3 = [MEMORY[0x1E695D0A8] defaultSettingsWithCacheSize:0 skipContactLookup:1];
    v4 = [v2 initWithSettings:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;
  }

  v7 = *(*(a1 + 32) + 48);

  return v7;
}

- (void)setPictureDiameter:(double)diameter
{
  if (self->_pictureDiameter != diameter)
  {
    self->_pictureDiameter = diameter;
    [(AAUIProfilePictureStore *)self _invalidateMonogrammer];
  }
}

- (void)setMonogramType:(int64_t)type
{
  if (self->_monogramType != type)
  {
    self->_monogramType = type;
    [(AAUIProfilePictureStore *)self _invalidateMonogrammer];
  }
}

- (id)renderingScope
{
  v2 = MEMORY[0x1E695D0B0];
  pictureDiameter = self->_pictureDiameter;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = [v2 scopeWithPointSize:1 scale:0 rightToLeft:pictureDiameter style:{pictureDiameter, v5}];

  return v6;
}

- (id)profilePictureForAccountOwner
{
  profilePictureForAccountOwnerWithoutMonogramFallback = [(AAUIProfilePictureStore *)self profilePictureForAccountOwnerWithoutMonogramFallback];
  v4 = [(AAUIProfilePictureStore *)self _sizedProfilePictureWithFallback:profilePictureForAccountOwnerWithoutMonogramFallback];

  return v4;
}

- (void)profilePictureForAccountOwnerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore profilePictureForAccountOwnerWithCompletion:];
  }

  objc_initWeak(&location, self);
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke;
  v8[3] = &unk_1E820B968;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(*(a1 + 32) + 8) accountType];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69597F8]];

  v6 = _AAUIPPSLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_cold_1();
    }

    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    v8 = [*(*(a1 + 32) + 8) aa_personID];
    v9 = [v8 copy];

    v10 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    v11 = *(*(a1 + 32) + 72);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_48;
    v23 = &unk_1E820B940;
    v27 = buf;
    v24 = WeakRetained;
    v12 = v9;
    v25 = v12;
    v26 = *(a1 + 40);
    v13 = [v10 profilePictureForPersonID:v12 diameter:&v20 serverFetchBlock:v11];

    if ((v29[24] & 1) == 0)
    {
      v14 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_cold_2();
      }

      v15 = *(a1 + 40);
      v16 = [WeakRetained _sizedProfilePictureWithFallback:{v13, v20, v21, v22, v23, v24, v25}];
      (*(v15 + 16))(v15, v16, 0);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "User not signed into iCloud, falling back to Me card for profile picture.", buf, 2u);
    }

    v17 = [WeakRetained _meCardPicture];
    v18 = *(a1 + 40);
    v19 = [WeakRetained _sizedProfilePictureWithFallback:v17];
    (*(v18 + 16))(v18, v19, 0);
  }
}

void __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_48_cold_1();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_49;
  v8[3] = &unk_1E820B918;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v5 _fetchProfilePictureForAccountOwnerFromServer:v6 serverCacheTag:v3 completion:v8];
}

void __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __71__AAUIProfilePictureStore_profilePictureForAccountOwnerWithCompletion___block_invoke_49_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) _sizedProfilePictureWithFallback:v6];

  (*(v8 + 16))(v8, v9, v5);
}

- (id)_sizedProfilePictureWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore _sizedProfilePictureWithFallback:];
  }

  v6 = fallbackCopy;
  v7 = v6;
  if (!v6)
  {
    v8 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore _sizedProfilePictureWithFallback:];
    }

    aa_firstName = [(ACAccount *)self->_account aa_firstName];
    aa_lastName = [(ACAccount *)self->_account aa_lastName];
    v7 = [(AAUIProfilePictureStore *)self _fallbackProfilePictureForPersonWithFirstName:aa_firstName lastName:aa_lastName];
  }

  v11 = [(AAUIProfilePictureStore *)self _correctlySizedImageFromImage:v7];

  return v11;
}

- (id)profilePictureForAccountOwnerWithoutMonogramFallback
{
  v3 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore profilePictureForAccountOwnerWithoutMonogramFallback];
  }

  if (![(ACAccount *)self->_account isEnabledForDataclass:*MEMORY[0x1E6959AF0]])
  {
    goto LABEL_7;
  }

  v4 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore profilePictureForAccountOwnerWithoutMonogramFallback];
  }

  _meCardPicture = [(AAUIProfilePictureStore *)self _meCardPicture];
  if (!_meCardPicture)
  {
LABEL_7:
    aa_personID = [(ACAccount *)self->_account aa_personID];
    v7 = [aa_personID copy];

    v8 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    pictureDiameter = self->_pictureDiameter;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __79__AAUIProfilePictureStore_profilePictureForAccountOwnerWithoutMonogramFallback__block_invoke;
    v16 = &unk_1E820B990;
    selfCopy = self;
    v18 = v7;
    v10 = v7;
    _meCardPicture = [v8 profilePictureForPersonID:v10 diameter:&v13 serverFetchBlock:pictureDiameter];
  }

  selfCopy = [(AAUIProfilePictureStore *)self _correctlySizedImageFromImage:_meCardPicture, v13, v14, v15, v16, selfCopy];
  [(AAUIProfilePictureStore *)self _saveProfilePictureToCacheIfNeeded:selfCopy];

  return selfCopy;
}

- (void)fetchProfilePictureForAccountOwner:(id)owner
{
  ownerCopy = owner;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore fetchProfilePictureForAccountOwner:];
  }

  objc_initWeak(&location, self);
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke;
  v8[3] = &unk_1E820BA08;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v9 = ownerCopy;
  v7 = ownerCopy;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (![WeakRetained[1] isEnabledForDataclass:*MEMORY[0x1E6959AF0]])
  {
    goto LABEL_8;
  }

  v3 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_cold_1();
  }

  v4 = [WeakRetained _meCardPicture];
  if (v4)
  {
    v5 = v4;
    v6 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_cold_2();
    }

    v7 = a1[5];
    v8 = [a1[4] _correctlySizedImageFromImage:v5];
    v7[2](v7, v8, 0);
  }

  else
  {
LABEL_8:
    v9 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_cold_3();
    }

    v10 = [WeakRetained[1] aa_personID];
    v11 = [v10 copy];

    v12 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    v13 = *(a1[4] + 9);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_52;
    v15[3] = &unk_1E820B9E0;
    v15[4] = WeakRetained;
    v16 = v11;
    v14 = a1[5];
    v17 = a1[4];
    v18 = v14;
    v5 = v11;
    [v12 profilePictureForPersonID:v5 diameter:v15 completion:v13];
  }
}

void __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_52(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_52_cold_2();
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_53;
    v19[3] = &unk_1E820B9B8;
    v19[4] = v10;
    v12 = *(a1 + 56);
    v19[5] = *(a1 + 48);
    v20 = v12;
    [v10 _fetchProfilePictureForAccountOwnerFromServer:v11 serverCacheTag:v8 completion:v19];
  }

  else
  {
    if (!v7)
    {
      v13 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_52_cold_1();
      }

      v14 = *(a1 + 32);
      v15 = [v14[1] aa_firstName];
      v16 = [*(*(a1 + 32) + 8) aa_lastName];
      v7 = [v14 _fallbackProfilePictureForPersonWithFirstName:v15 lastName:v16];
    }

    v17 = *(a1 + 56);
    v18 = [*(a1 + 48) _correctlySizedImageFromImage:v7];
    (*(v17 + 16))(v17, v18, 0);
  }
}

void __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_cold_3();
    }

    v8 = *(a1 + 32);
    v9 = [v8[1] aa_firstName];
    v10 = [*(*(a1 + 32) + 8) aa_lastName];
    v5 = [v8 _fallbackProfilePictureForPersonWithFirstName:v9 lastName:v10];
  }

  v11 = *(a1 + 48);
  v12 = [*(a1 + 40) _correctlySizedImageFromImage:v5];
  (*(v11 + 16))(v11, v12, v6);
}

- (void)fetchProfilePictureFromCacheForAccountOwner:(id)owner
{
  ownerCopy = owner;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore fetchProfilePictureFromCacheForAccountOwner:];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AAUIProfilePictureStore_fetchProfilePictureFromCacheForAccountOwner___block_invoke;
  v7[3] = &unk_1E820BA30;
  v7[4] = self;
  v8 = ownerCopy;
  v6 = ownerCopy;
  [(AAUIProfilePictureStore *)self fetchProfilePictureForAccountOwner:v7];
}

void __71__AAUIProfilePictureStore_fetchProfilePictureFromCacheForAccountOwner___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _saveProfilePictureToCacheIfNeeded:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)_saveProfilePictureToCache:(id)cache
{
  v3 = UIImagePNGRepresentation(cache);
  [v3 writeToFile:@"/var/mobile/Library/Caches/com.apple.AppleAccount/cachedProfilePicture.png" atomically:1];
  CFPreferencesSetAppValue(*MEMORY[0x1E698BA78], @"/var/mobile/Library/Caches/com.apple.AppleAccount/cachedProfilePicture.png", @"com.apple.appleaccount.informationcache");
  v4 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore _saveProfilePictureToCache:];
  }
}

- (id)_readProfilePictureFromCache
{
  v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.AppleAccount/cachedProfilePicture.png"];
  v3 = [MEMORY[0x1E69DCAB8] imageWithData:v2];

  return v3;
}

- (BOOL)_isCachedProfilePictureUpdated:(id)updated
{
  updatedCopy = updated;
  _readProfilePictureFromCache = [(AAUIProfilePictureStore *)self _readProfilePictureFromCache];
  v6 = UIImagePNGRepresentation(_readProfilePictureFromCache);
  v7 = UIImagePNGRepresentation(updatedCopy);

  LOBYTE(updatedCopy) = [v6 isEqualToData:v7];
  return updatedCopy;
}

- (BOOL)_isProfilePictureCachePresent
{
  v2 = CFPreferencesCopyAppValue(*MEMORY[0x1E698BA78], @"com.apple.appleaccount.informationcache");
  v3 = v2 != 0;

  return v3;
}

- (void)_saveProfilePictureToCacheIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x1E698B760]])
  {
    if (![(AAUIProfilePictureStore *)self _isProfilePictureCachePresent])
    {
LABEL_7:
      [(AAUIProfilePictureStore *)self _saveProfilePictureToCache:neededCopy];
      goto LABEL_8;
    }

    if (![(AAUIProfilePictureStore *)self _isCachedProfilePictureUpdated:neededCopy])
    {
      v5 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore _saveProfilePictureToCacheIfNeeded:];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)setProfilePictureForAccountOwner:(id)owner cropRect:(id)rect
{
  ownerCopy = owner;
  rectCopy = rect;
  v8 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
  }

  v30 = 0;
  v9 = [(AAUIProfilePictureStore *)self _meCardForAccountWithError:&v30];
  v10 = v30;
  if (v9)
  {
    v11 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
    }

    v12 = [v9 mutableCopy];
    v13 = _AAUIPPSLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (ownerCopy)
    {
      if (v14)
      {
        [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
      }

      v15 = UIImageJPEGRepresentation(ownerCopy, 0.8);
      [v12 setImageData:v15];
      if (rectCopy)
      {
        [rectCopy CGRectValue];
        [v12 setCropRect:?];
      }
    }

    else
    {
      if (v14)
      {
        [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
      }

      [v12 setImageData:0];
    }

    [v12 setMemojiMetadata:0];
    v16 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v16 updateContact:v12];
    contactStore = self->_contactStore;
    v29 = 0;
    v18 = [(CNContactStore *)contactStore executeSaveRequest:v16 error:&v29];
    v19 = v29;
    v20 = _AAUIPPSLogSystem();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
      }

      v22 = [(AAUIProfilePictureStore *)self _contactSyncsWithiCloud:v9 error:0];
      v23 = v22;
      if (v22)
      {
        v24 = _AAUIPPSLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
        }
      }

      v25 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
      }

      if (v23)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
      }
    }
  }

  if ([(ACAccount *)self->_account aa_isPrimaryEmailVerified])
  {
    v26 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
    }

    [(AAUIProfilePictureStore *)self _updateServerProfilePictureForAccountOwner:ownerCopy cropRect:rectCopy];
    goto LABEL_35;
  }

LABEL_32:
  v27 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore setProfilePictureForAccountOwner:cropRect:];
  }

  aa_personID = [(ACAccount *)self->_account aa_personID];
  [(AAUIProfilePictureStore *)self updateCacheWithPhoto:ownerCopy cropRect:rectCopy forPersonID:aa_personID];

LABEL_35:
}

- (id)profilePictureForFamilyMember:(id)member
{
  v20 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    appleID = [memberCopy appleID];
    firstName = [memberCopy firstName];
    lastName = [memberCopy lastName];
    v14 = 138412802;
    v15 = appleID;
    v16 = 2112;
    v17 = firstName;
    v18 = 2112;
    v19 = lastName;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForFamilyMember: %@ %@ %@", &v14, 0x20u);
  }

  v9 = [(AAUIProfilePictureStore *)self _profilePictureForFamilyMemberWithoutMonogramFallback:memberCopy];
  if (!v9)
  {
    firstName2 = [memberCopy firstName];
    lastName2 = [memberCopy lastName];
    v9 = [(AAUIProfilePictureStore *)self _fallbackProfilePictureForPersonWithFirstName:firstName2 lastName:lastName2];
  }

  v12 = [(AAUIProfilePictureStore *)self _correctlySizedImageFromImage:v9];

  return v12;
}

- (void)fetchProfilePictureForFamilyMember:(id)member completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  memberCopy = member;
  completionCopy = completion;
  v8 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    appleID = [memberCopy appleID];
    firstName = [memberCopy firstName];
    lastName = [memberCopy lastName];
    *buf = 138412802;
    v22 = appleID;
    v23 = 2112;
    v24 = firstName;
    v25 = 2112;
    v26 = lastName;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore fetchProfilePictureForFamilyMember: %@ %@ %@ completion:", buf, 0x20u);
  }

  if ([(ACAccount *)self->_account isEnabledForDataclass:*MEMORY[0x1E6959AF0]]&& ([(AAUIProfilePictureStore *)self _familyMemberPersonPicture:memberCopy], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    stringValue = v12;
    v14 = [(AAUIProfilePictureStore *)self _correctlySizedImageFromImage:v12];
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    personID = [memberCopy personID];
    stringValue = [personID stringValue];

    v16 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    pictureDiameter = self->_pictureDiameter;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__AAUIProfilePictureStore_fetchProfilePictureForFamilyMember_completion___block_invoke;
    v18[3] = &unk_1E820BA80;
    v18[4] = self;
    v19 = memberCopy;
    v20 = completionCopy;
    [v16 profilePictureForPersonID:stringValue diameter:v18 completion:pictureDiameter];
  }
}

void __73__AAUIProfilePictureStore_fetchProfilePictureForFamilyMember_completion___block_invoke(id *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v10 = a1[4];
    v9 = a1[5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__AAUIProfilePictureStore_fetchProfilePictureForFamilyMember_completion___block_invoke_2;
    v16[3] = &unk_1E820BA58;
    v16[4] = v10;
    v17 = v9;
    v18 = a1[6];
    [v10 _fetchProfilePictureForFamilyMemberFromServer:v17 serverCacheTag:v8 completion:v16];
  }

  else
  {
    if (!v7)
    {
      v11 = a1[4];
      v12 = [a1[5] firstName];
      v13 = [a1[5] lastName];
      v7 = [v11 _fallbackProfilePictureForPersonWithFirstName:v12 lastName:v13];
    }

    v14 = a1[6];
    v15 = [a1[4] _correctlySizedImageFromImage:v7];
    v14[2](v14, v15, 0);
  }
}

void __73__AAUIProfilePictureStore_fetchProfilePictureForFamilyMember_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!v11)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) firstName];
    v8 = [*(a1 + 40) lastName];
    v11 = [v6 _fallbackProfilePictureForPersonWithFirstName:v7 lastName:v8];
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) _correctlySizedImageFromImage:v11];
  (*(v9 + 16))(v9, v10, v5);
}

- (void)fetchRawImageAndCropRectForAccountOwner:(id)owner
{
  ownerCopy = owner;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__AAUIProfilePictureStore_fetchRawImageAndCropRectForAccountOwner___block_invoke;
  aBlock[3] = &unk_1E820B780;
  aBlock[4] = self;
  v5 = ownerCopy;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  if ([(ACAccount *)self->_account isEnabledForDataclass:*MEMORY[0x1E6959AF0]])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__AAUIProfilePictureStore_fetchRawImageAndCropRectForAccountOwner___block_invoke_63;
    v7[3] = &unk_1E820BAA8;
    v8 = v5;
    v9 = v6;
    [(AAUIProfilePictureStore *)self _meCardRawImageAndCropRect:v7];
  }

  else
  {
    v6[2](v6);
  }
}

void __67__AAUIProfilePictureStore_fetchRawImageAndCropRectForAccountOwner___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) aa_personID];
  v3 = [v2 copy];

  v4 = [_AAUIRawImageAndCropRectCache entryForPersonID:v3];
  if ([v4 isValid])
  {
    v5 = *(a1 + 40);
    v6 = [v4 rawImage];
    [v4 rawCropRect];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E698B910]) initWithAccount:*(*(a1 + 32) + 8)];
    v7 = [v4 serverCacheTag];
    [v6 setServerCacheTag:v7];

    v8 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Fetching account owner profile picture from server with request %@", &v9, 0xCu);
    }

    [*(a1 + 32) _fetchAndCacheRawImageAndCropRectWithRequest:v6 personID:v3 completion:*(a1 + 40)];
  }
}

uint64_t __67__AAUIProfilePictureStore_fetchRawImageAndCropRectForAccountOwner___block_invoke_63(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchRawImageAndCropRectForFamilyMember:(id)member completion:(id)completion
{
  memberCopy = member;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__AAUIProfilePictureStore_fetchRawImageAndCropRectForFamilyMember_completion___block_invoke;
  aBlock[3] = &unk_1E820BAD0;
  v8 = memberCopy;
  v15 = v8;
  v9 = completionCopy;
  selfCopy = self;
  v17 = v9;
  v10 = _Block_copy(aBlock);
  if ([(ACAccount *)self->_account isEnabledForDataclass:*MEMORY[0x1E6959AF0]])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__AAUIProfilePictureStore_fetchRawImageAndCropRectForFamilyMember_completion___block_invoke_66;
    v11[3] = &unk_1E820BAA8;
    v12 = v9;
    v13 = v10;
    [(AAUIProfilePictureStore *)self _familyMember:v8 rawImageAndCropRect:v11];
  }
}

void __78__AAUIProfilePictureStore_fetchRawImageAndCropRectForFamilyMember_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) personID];
  v3 = [v2 stringValue];

  v4 = [_AAUIRawImageAndCropRectCache entryForPersonID:v3];
  if ([v4 isValid])
  {
    v5 = *(a1 + 48);
    v6 = [v4 rawImage];
    [v4 rawCropRect];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E699C068]) initWithGrandSlamSigner:*(*(a1 + 40) + 24)];
    v7 = [*(a1 + 32) personID];
    [v6 setFamilyMemberDSID:v7];

    v8 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];
    [v6 setiTunesAccount:v9];

    v10 = [v4 serverCacheTag];
    [v6 setServerCacheTag:v10];

    v11 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Fetching family member profile picture from server with request %@", &v12, 0xCu);
    }

    [*(a1 + 40) _fetchAndCacheRawImageAndCropRectWithRequest:v6 personID:v3 completion:*(a1 + 48)];
  }
}

uint64_t __78__AAUIProfilePictureStore_fetchRawImageAndCropRectForFamilyMember_completion___block_invoke_66(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)profilePictureForLocalContact:(id)contact
{
  contactCopy = contact;
  v5 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore profilePictureForLocalContact:];
  }

  imageData = [contactCopy imageData];

  if (imageData)
  {
    v7 = MEMORY[0x1E69DCAB8];
    imageData2 = [contactCopy imageData];
    lastName = [v7 imageWithData:imageData2];
    [(AAUIProfilePictureStore *)self profilePictureForPicture:lastName];
  }

  else
  {
    imageData2 = [contactCopy firstName];
    lastName = [contactCopy lastName];
    [(AAUIProfilePictureStore *)self _fallbackProfilePictureForPersonWithFirstName:imageData2 lastName:lastName];
  }
  v10 = ;

  v11 = [(AAUIProfilePictureStore *)self _correctlySizedImageFromImage:v10];

  return v11;
}

- (id)monogramForCurrentAccount
{
  v3 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore monogramForCurrentAccount];
  }

  v4 = [(AAUIProfilePictureStore *)self _sizedProfilePictureWithFallback:0];

  return v4;
}

void __76__AAUIProfilePictureStore__beginObservingContactStoreDidChangeNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _contactStoreDidChange:v3];
}

- (void)_contactStoreDidChange:(id)change
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore _contactStoreDidChange:];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AAUIProfilePictureStoreDidChange" object:self];
}

- (void)_endObservingContactStoreDidChangeNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_contactStoreDidChangeObserver];
}

- (id)_fallbackProfilePictureForPersonWithFirstName:(id)name lastName:(id)lastName
{
  v22[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lastNameCopy = lastName;
  v8 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore _fallbackProfilePictureForPersonWithFirstName:lastName:];
  }

  if (!nameCopy || !lastNameCopy)
  {
    goto LABEL_8;
  }

  v9 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore _fallbackProfilePictureForPersonWithFirstName:lastName:];
  }

  v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v10 setGivenName:nameCopy];
  [v10 setFamilyName:lastNameCopy];
  _monogrammer = [(AAUIProfilePictureStore *)self _monogrammer];
  v22[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  renderingScope = [(AAUIProfilePictureStore *)self renderingScope];
  v14 = [_monogrammer avatarImageForContacts:v12 scope:renderingScope];

  if (!v14)
  {
LABEL_8:
    v15 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __62__AAUIProfilePictureStore_fetchProfilePictureForAccountOwner___block_invoke_cold_3();
    }

    v16 = self->_pictureDiameter * 0.5;
    _monogrammer2 = [(AAUIProfilePictureStore *)self _monogrammer];
    placeholderImageProvider = [_monogrammer2 placeholderImageProvider];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v14 = [placeholderImageProvider imageForSize:0 scale:v16 style:{v16, v20}];
  }

  return v14;
}

- (void)_fetchAndCacheRawImageAndCropRectWithRequest:(id)request personID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__AAUIProfilePictureStore__fetchAndCacheRawImageAndCropRectWithRequest_personID_completion___block_invoke;
  v10[3] = &unk_1E820BB20;
  v11 = completionCopy;
  v9 = completionCopy;
  [(AAUIProfilePictureStore *)self _fetchProfilePictureSupersetWithRequest:request personID:d completion:v10];
}

- (id)_correctlySizedImageFromImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    [imageCopy size];
    v7 = v6;
    [(AAUIProfilePictureStore *)self pictureDiameter];
    if (v7 == v8)
    {
      v9 = v5;
    }

    else
    {
      pictureDiameter = self->_pictureDiameter;
      v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{pictureDiameter, pictureDiameter}];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__AAUIProfilePictureStore__correctlySizedImageFromImage___block_invoke;
      v13[3] = &unk_1E820BB48;
      v15 = 0;
      v16 = 0;
      v14 = v5;
      v17 = pictureDiameter;
      v18 = pictureDiameter;
      v9 = [v11 imageWithActions:v13];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_fetchProfilePictureForAccountOwnerFromServer:(id)server serverCacheTag:(id)tag completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E698B910];
  completionCopy = completion;
  tagCopy = tag;
  serverCopy = server;
  v12 = [[v8 alloc] initWithAccount:self->_account];
  [v12 setServerCacheTag:tagCopy];

  v13 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Fetching account owner profile picture from server with request %@", &v14, 0xCu);
  }

  [(AAUIProfilePictureStore *)self _fetchProfilePictureWithRequest:v12 personID:serverCopy completion:completionCopy];
}

- (void)_fetchProfilePictureSupersetWithRequest:(id)request personID:(id)d completion:(id)completion
{
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__AAUIProfilePictureStore__fetchProfilePictureSupersetWithRequest_personID_completion___block_invoke;
  v14[3] = &unk_1E820BB70;
  v15 = requestCopy;
  selfCopy = self;
  v17 = dCopy;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  v13 = requestCopy;
  [v13 performRequestWithHandler:v14];
}

void __87__AAUIProfilePictureStore__fetchProfilePictureSupersetWithRequest_personID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  if ([v6 statusCode] == 404)
  {
    v12 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v39 = 138412290;
      v40 = v13;
      _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Fetch profile picture request %@ response: No photo was found on the server", &v39, 0xCu);
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_12:

    v27 = *(a1 + 40);
    v28 = [MEMORY[0x1E696B098] valueWithCGRect:{v8, v9, v10, v11}];
    [v27 updateCacheWithPhoto:v15 cropRect:v28 forPersonID:*(a1 + 48)];

    v29 = 0;
    v30 = 1;
    goto LABEL_26;
  }

  if ([v6 statusCode] == 200)
  {
    v12 = v6;
    v17 = [v12 photoData];
    v18 = _AAUIPPSLogSystem();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = *(a1 + 32);
        v39 = 138412290;
        v40 = v20;
        _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "Fetch profile picture request %@ response: Success! Status code 200 with image data", &v39, 0xCu);
      }

      v15 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v17];
      v21 = [v12 cropRect];

      if (v21)
      {
        v22 = [v12 cropRect];
        [v22 CGRectValue];
        v8 = v23;
        v9 = v24;
        v10 = v25;
        v11 = v26;
      }

      v14 = [*(a1 + 40) cacheablePictureForPicture:v15 cropRect:{v8, v9, v10, v11}];
      v16 = [v12 serverCacheTag];

      goto LABEL_12;
    }

    if (v19)
    {
      v37 = *(a1 + 32);
      v39 = 138412290;
      v40 = v37;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "Fetch profile picture request %@ response: Failure. Status code 200, but no image data", &v39, 0xCu);
    }

    goto LABEL_23;
  }

  v31 = [v6 statusCode];
  v12 = _AAUIPPSLogSystem();
  v32 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v31 == 304)
  {
    if (v32)
    {
      v33 = *(a1 + 32);
      v39 = 138412290;
      v40 = v33;
      _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Fetch profile picture request %@ response: Cache still valid.", &v39, 0xCu);
    }

LABEL_23:

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v30 = 0;
    v29 = 0;
    goto LABEL_26;
  }

  if (v32)
  {
    v34 = *(a1 + 32);
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "statusCode")}];
    v39 = 138412546;
    v40 = v34;
    v41 = 2112;
    v42 = v35;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Fetch profile picture request %@ response: Failure. Status code %@", &v39, 0x16u);
  }

  if (v7)
  {
    v36 = v7;
  }

  else
  {
    v36 = [v6 error];
  }

  v29 = v36;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v30 = 0;
LABEL_26:
  v38 = *(a1 + 56);
  if (v38)
  {
    (*(v38 + 16))(v38, v30, v14, v15, v16, v29, v8, v9, v10, v11);
  }
}

- (void)_fetchProfilePictureWithRequest:(id)request personID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__AAUIProfilePictureStore__fetchProfilePictureWithRequest_personID_completion___block_invoke;
  v10[3] = &unk_1E820BB20;
  v11 = completionCopy;
  v9 = completionCopy;
  [(AAUIProfilePictureStore *)self _fetchProfilePictureSupersetWithRequest:request personID:d completion:v10];
}

uint64_t __79__AAUIProfilePictureStore__fetchProfilePictureWithRequest_personID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a6);
  }

  return result;
}

- (id)_profilePictureForFamilyMemberWithoutMonogramFallback:(id)fallback
{
  fallbackCopy = fallback;
  if (![(ACAccount *)self->_account isEnabledForDataclass:*MEMORY[0x1E6959AF0]]|| ([(AAUIProfilePictureStore *)self _familyMemberPersonPicture:fallbackCopy], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    personID = [fallbackCopy personID];
    stringValue = [personID stringValue];
    pictureDiameter = self->_pictureDiameter;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __81__AAUIProfilePictureStore__profilePictureForFamilyMemberWithoutMonogramFallback___block_invoke;
    v15 = &unk_1E820B990;
    selfCopy = self;
    v17 = fallbackCopy;
    v5 = [v6 profilePictureForPersonID:stringValue diameter:&v12 serverFetchBlock:pictureDiameter];
  }

  selfCopy = [(AAUIProfilePictureStore *)self _correctlySizedImageFromImage:v5, v12, v13, v14, v15, selfCopy];

  return selfCopy;
}

- (void)_fetchProfilePictureForFamilyMemberFromServer:(id)server serverCacheTag:(id)tag completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  v9 = MEMORY[0x1E699C068];
  completionCopy = completion;
  tagCopy = tag;
  v12 = [[v9 alloc] initWithGrandSlamSigner:self->_grandSlamSigner];
  personID = [serverCopy personID];
  [v12 setFamilyMemberDSID:personID];

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  [v12 setiTunesAccount:ams_activeiTunesAccount];

  [v12 setServerCacheTag:tagCopy];
  v16 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "Fetching family member profile picture from server with request %@", &v19, 0xCu);
  }

  personID2 = [serverCopy personID];
  stringValue = [personID2 stringValue];
  [(AAUIProfilePictureStore *)self _fetchProfilePictureWithRequest:v12 personID:stringValue completion:completionCopy];
}

- (id)_meCardPicture
{
  v3 = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
  v4 = _AAUIPPSLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Fetching me card picture", buf, 2u);
    }

    v24 = 0;
    v6 = [(AAUIProfilePictureStore *)self _meCardForAccountWithError:&v24];
    v7 = v24;
    v4 = v7;
    if (v6)
    {
      imageData = [v6 imageData];

      if (!imageData)
      {
        goto LABEL_26;
      }

      v9 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore _meCardPicture];
      }

      v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
      imageData2 = [v6 imageData];
      v12 = [v10 initWithData:imageData2];

      [v6 cropRect];
      IsEmpty = CGRectIsEmpty(v28);
      v14 = _AAUIPPSLogSystem();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (IsEmpty)
      {
        if (v15)
        {
          [AAUIProfilePictureStore _meCardPicture];
        }

        v16 = *MEMORY[0x1E695F058];
        v17 = *(MEMORY[0x1E695F058] + 8);
        v18 = *(MEMORY[0x1E695F058] + 16);
        v19 = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        if (v15)
        {
          [AAUIProfilePictureStore _meCardPicture];
        }

        [v6 cropRect];
      }

      v20 = [(AAUIProfilePictureStore *)self cacheablePictureForPicture:v12 cropRect:v16, v17, v18, v19];

      if (!v20)
      {
LABEL_26:
        v20 = [(AAUIProfilePictureStore *)self _monogrammedContactImage:v6];
      }

      v22 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore _meCardPicture];
      }
    }

    else
    {
      if (v7)
      {
        v21 = _AAUIPPSLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [AAUIProfilePictureStore _meCardPicture];
        }
      }

      v22 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore _meCardPicture];
      }

      v20 = 0;
    }
  }

  else
  {
    if (v5)
    {
      *v26 = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore skipping CNContact lookup because we are not authorized", v26, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)meCardWithVisualIdentity:(id)identity
{
  v25 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v16 = 0;
  v5 = [(AAUIProfilePictureStore *)self _meCardForAccountWithError:&v16];
  v6 = v16;
  v22 = v5;
  v7 = v18[5];
  v8 = v7 != 0;
  v9 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = v7 != 0;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "meCard exists %d", buf, 8u);
  }

  imageData = [v18[5] imageData];

  v11 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = imageData != 0;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "meCard.image exists %d", buf, 8u);
  }

  if (imageData)
  {
    identityCopy[2](identityCopy, v18[5]);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__AAUIProfilePictureStore_meCardWithVisualIdentity___block_invoke;
    v12[3] = &unk_1E820BBC0;
    v15 = v8;
    v14 = &v17;
    v12[4] = self;
    v13 = identityCopy;
    [(AAUIProfilePictureStore *)self fetchRawImageAndCropRectForAccountOwner:v12];
  }

  _Block_object_dispose(&v17, 8);
}

void __52__AAUIProfilePictureStore_meCardWithVisualIdentity___block_invoke(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v46 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v47.origin.x = a4;
    v47.origin.y = a5;
    v47.size.width = a6;
    v47.size.height = a7;
    v16 = NSStringFromCGRect(v47);
    *buf = 138412802;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v43 = v14;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "RawImageAndCropRect is %@ %@ %@", buf, 0x20u);
  }

  v17 = v13;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = UIImageJPEGRepresentation(v17, 1.0);
  if (*(a1 + 56) == 1)
  {
    v18 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "meCard exists", v40, 2u);
    }

    v19 = [*(*(*(a1 + 48) + 8) + 40) mutableCopy];
  }

  else
  {
    v20 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "meCard is missing", v40, 2u);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v21 = [*(*(a1 + 32) + 8) aa_firstName];
    [v19 setGivenName:v21];

    v22 = [*(*(a1 + 32) + 8) aa_lastName];
    [v19 setFamilyName:v22];
  }

  v23 = *(*&buf[8] + 40);
  v24 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 67109120;
    v41 = v23 != 0;
    _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "raw.image is not nil %d", v40, 8u);
  }

  v25 = *(*&buf[8] + 40);
  v26 = [*(*(*(a1 + 48) + 8) + 40) imageData];

  v27 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 67109120;
    v41 = v25 != v26;
    _os_log_impl(&dword_1C5355000, v27, OS_LOG_TYPE_DEFAULT, "meCard.image is different from rawImage %d", v40, 8u);
  }

  if (v25 != v26 && v23 != 0)
  {
    [v19 setImageData:*(*&buf[8] + 40)];
    [v19 setCropRect:{a4, a5, a6, a7}];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v19);
    v28 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(*(*(a1 + 48) + 8) + 40) imageData];
      *v40 = 67109120;
      v41 = v29 != 0;
      _os_log_impl(&dword_1C5355000, v28, OS_LOG_TYPE_DEFAULT, "rawimagedata on mutable is not nil %d", v40, 8u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v30 = *(a1 + 32);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __52__AAUIProfilePictureStore_meCardWithVisualIdentity___block_invoke_77;
    v34[3] = &unk_1E820BB98;
    v38 = buf;
    v35 = v17;
    v31 = v19;
    v33 = *(a1 + 40);
    v32 = *(a1 + 48);
    v36 = v31;
    v39 = v32;
    v37 = v33;
    [v30 fetchProfilePictureForAccountOwner:v34];
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __52__AAUIProfilePictureStore_meCardWithVisualIdentity___block_invoke_77(uint64_t a1, UIImage *image)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = UIImageJPEGRepresentation(image, 0.8);
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __52__AAUIProfilePictureStore_meCardWithVisualIdentity___block_invoke_77_cold_1();
  }

  [*(a1 + 40) setImageData:*(*(*(a1 + 56) + 8) + 40)];
  v7 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __52__AAUIProfilePictureStore_meCardWithVisualIdentity___block_invoke_77_cold_2();
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v8 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(*(a1 + 64) + 8) + 40) imageData];
    v11[0] = 67109120;
    v11[1] = v9 != 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "serverimagedata on mutable is not nil %d", v11, 8u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_decodeImageAndCropRectForContact:(id)contact completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  imageData = [contactCopy imageData];
  if (imageData)
  {
    v8 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AAUIProfilePictureStore__decodeImageAndCropRectForContact_completion___block_invoke;
    block[3] = &unk_1E820BBE8;
    v12 = completionCopy;
    v10 = imageData;
    v11 = contactCopy;
    dispatch_async(v8, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }
}

void __72__AAUIProfilePictureStore__decodeImageAndCropRectForContact_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x1E69DCAB8] imageWithData:*(a1 + 32)];
  [*(a1 + 40) cropRect];
  (*(v2 + 16))(v2, v3, 0);
}

- (void)_meCardRawImageAndCropRect:(id)rect
{
  rectCopy = rect;
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v8 = 0;
    v5 = [(AAUIProfilePictureStore *)self _meCardForAccountWithError:&v8];
    v6 = v8;
    if (v5)
    {
      [(AAUIProfilePictureStore *)self _decodeImageAndCropRectForContact:v5 completion:rectCopy];
    }

    else
    {
      rectCopy[2](rectCopy, 0, v6, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }
  }

  else
  {
    v7 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore skipping CNContact lookup because we are not authorized", buf, 2u);
    }

    rectCopy[2](rectCopy, 0, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }
}

- (id)_familyMemberPersonPicture:(id)picture
{
  v10 = 0;
  v4 = [(AAUIProfilePictureStore *)self _contactWithImageDataMatchingFamilyMember:picture error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = [(AAUIProfilePictureStore *)self _monogrammedContactImage:v4];
  }

  else
  {
    if (v5)
    {
      v8 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [AAUIProfilePictureStore _familyMemberPersonPicture:];
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)_familyMember:(id)member rawImageAndCropRect:(id)rect
{
  v9 = 0;
  rectCopy = rect;
  v7 = [(AAUIProfilePictureStore *)self _contactWithImageDataMatchingFamilyMember:member error:&v9];
  v8 = v9;
  [(AAUIProfilePictureStore *)self _decodeImageAndCropRectForContact:v7 completion:rectCopy];
  if (v7)
  {
    [(AAUIProfilePictureStore *)self _decodeImageAndCropRectForContact:v7 completion:rectCopy];
  }

  else
  {
    rectCopy[2](rectCopy, 0, v8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }
}

- (id)_monogrammedContactImage:(id)image
{
  v10[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  _monogrammer = [(AAUIProfilePictureStore *)self _monogrammer];
  v10[0] = imageCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  renderingScope = [(AAUIProfilePictureStore *)self renderingScope];
  v8 = [_monogrammer avatarImageForContacts:v6 scope:renderingScope];

  return v8;
}

- (id)_contactWithImageDataMatchingFamilyMember:(id)member error:(id *)error
{
  memberCopy = member;
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v7 = MEMORY[0x1E695CD58];
    appleID = [memberCopy appleID];
    v9 = [v7 predicateForContactsMatchingEmailAddress:appleID];

    contactStore = self->_contactStore;
    v11 = _AAUIDefaultFetchDescriptors();
    v12 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v9 keysToFetch:v11 error:error];
    firstObject = [v12 firstObject];
  }

  else
  {
    v14 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore skipping CNContact lookup for family member because we are not authorized", v16, 2u);
    }

    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)_contactSyncsWithiCloud:(id)cloud error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  v7 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore _contactSyncsWithiCloud:error:];
  }

  if ([cloudCopy isUnified])
  {
    v8 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore _contactSyncsWithiCloud:error:];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    linkedContacts = [cloudCopy linkedContacts];
    v10 = [linkedContacts countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(linkedContacts);
          }

          if ([(AAUIProfilePictureStore *)self _contactSyncsWithiCloud:*(*(&v25 + 1) + 8 * i) error:error])
          {
            v14 = _AAUIPPSLogSystem();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [AAUIProfilePictureStore _contactSyncsWithiCloud:error:];
            }

            LOBYTE(v23) = 1;
            goto LABEL_24;
          }
        }

        v11 = [linkedContacts countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_20;
  }

  linkedContacts = [(AAUIProfilePictureStore *)self _getAccountIdentifierForContact:cloudCopy error:error];
  if (linkedContacts)
  {
    v14 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:linkedContacts error:error];
    accountType = [v14 accountType];
    identifier = [accountType identifier];
    v17 = *MEMORY[0x1E69597F8];
    v18 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

    parentAccount = [v14 parentAccount];
    parentAccount2 = parentAccount;
    if ((v18 & 1) == 0)
    {
      accountType2 = [parentAccount accountType];
      identifier2 = [accountType2 identifier];
      v23 = [identifier2 isEqualToString:v17];

      if (!v23)
      {
LABEL_24:

        goto LABEL_25;
      }

      parentAccount2 = [v14 parentAccount];
    }

    LOBYTE(v23) = [parentAccount2 isEnabledForDataclass:*MEMORY[0x1E6959AF0]];

    goto LABEL_24;
  }

LABEL_20:
  LOBYTE(v23) = 0;
LABEL_25:

  return v23;
}

- (id)_getAccountIdentifierForContact:(id)contact error:(id *)error
{
  v6 = MEMORY[0x1E695CE48];
  identifier = [contact identifier];
  v8 = [v6 predicateForContainerOfContactWithIdentifier:identifier];

  v9 = [(CNContactStore *)self->_contactStore containersMatchingPredicate:v8 error:error];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    v11 = MEMORY[0x1E695CD10];
    identifier2 = [firstObject identifier];
    v13 = [v11 predicateForAccountForContainerWithIdentifier:identifier2];

    v14 = [(CNContactStore *)self->_contactStore accountsMatchingPredicate:v13 error:error];
    firstObject2 = [v14 firstObject];

    if (firstObject2 && ([firstObject2 externalIdentifierString], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
    {
      externalIdentifierString = [firstObject2 externalIdentifierString];
    }

    else
    {
      externalIdentifierString = 0;
    }
  }

  else
  {
    externalIdentifierString = 0;
  }

  return externalIdentifierString;
}

- (void)_updateServerProfilePictureForAccountOwner:(id)owner cropRect:(id)rect
{
  v21 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  rectCopy = rect;
  v8 = [[AAUIUpdateMyPhotoRequest alloc] initWithAccount:self->_account photo:ownerCopy cropRect:rectCopy];
  v9 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = ownerCopy;
    v17 = 2112;
    v18 = rectCopy;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Updating account owner profile picture on server to %@ cropRect %@ with request %@", buf, 0x20u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__AAUIProfilePictureStore__updateServerProfilePictureForAccountOwner_cropRect___block_invoke;
  v12[3] = &unk_1E820BC10;
  v12[4] = self;
  v13 = ownerCopy;
  v14 = rectCopy;
  v10 = rectCopy;
  v11 = ownerCopy;
  [(AARequest *)v8 performRequestWithHandler:v12];
}

void __79__AAUIProfilePictureStore__updateServerProfilePictureForAccountOwner_cropRect___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 statusCode];
  v8 = _AAUIPPSLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 200)
  {
    if (v9)
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Update profile picture request %@ response: Success! Status code 200", buf, 0xCu);
    }

    if (_AAUILogGreenTeaEnabled())
    {
      v14 = 0;
      _AAUILogGreenTeaWithFormat(@"Uploaded 1 photos with location to Apple ID");
      _AAUILogGreenTeaTransmittingPhotosOrVideos();
    }

    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v8 = [v10[1] aa_personID];
    [v10 updateCacheWithPhoto:v11 cropRect:v12 forPersonID:v8];
  }

  else if (v9)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "statusCode")}];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Update profile picture request %@ response: Failure. Status code %@", buf, 0x16u);
  }
}

- (void)updateCacheWithPhoto:(id)photo cropRect:(id)rect forPersonID:(id)d
{
  photoCopy = photo;
  rectCopy = rect;
  dCopy = d;
  v11 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AAUIProfilePictureStore updateCacheWithPhoto:cropRect:forPersonID:];
  }

  if (dCopy)
  {
    v12 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    v13 = [v12 serverCacheTagForPersonID:dCopy diameter:self->_pictureDiameter];

    v14 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [AAUIProfilePictureStore updateCacheWithPhoto:cropRect:forPersonID:];
    }

    if (rectCopy)
    {
      [rectCopy CGRectValue];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
    }

    else
    {
      v16 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 8);
      v20 = *(MEMORY[0x1E695F058] + 16);
      v22 = *(MEMORY[0x1E695F058] + 24);
    }

    v23 = [(AAUIProfilePictureStore *)self cacheablePictureForPicture:photoCopy cropRect:v16, v18, v20, v22];
    v24 = [_AAUIRawImageAndCropRectCacheEntry entryWithRawImage:photoCopy rawCropRect:v13 serverCacheTag:v16, v18, v20, v22];
    [_AAUIRawImageAndCropRectCache setEntry:v24 forPersonID:dCopy];
    v25 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
    v26 = [v25 updateProfilePicture:v23 didReceiveNewPicture:1 serverCacheTag:v13 forPersonID:dCopy];

    v27 = _AAUIPPSLogSystem();
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [AAUIProfilePictureStore updateCacheWithPhoto:cropRect:forPersonID:];
      }

      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_0);
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [AAUIProfilePictureStore updateCacheWithPhoto:cropRect:forPersonID:];
      }
    }
  }

  else
  {
    v13 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAUIProfilePictureStore updateCacheWithPhoto:cropRect:forPersonID:];
    }
  }
}

void __69__AAUIProfilePictureStore_updateCacheWithPhoto_cropRect_forPersonID___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"AAUIProfilePictureStoreDidChange" object:0];
}

- (id)cacheablePictureForPicture:(id)picture cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pictureCopy = picture;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectIsEmpty(v20))
  {
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    selfCopy2 = self;
    v15 = pictureCopy;
    v16 = 0;
  }

  else
  {
    selfCopy2 = self;
    v15 = pictureCopy;
    v16 = 1;
    v10 = x;
    v11 = y;
    v12 = width;
    v13 = height;
  }

  v17 = [(AAUIProfilePictureStore *)selfCopy2 _profilePictureForPicture:v15 crop:v16 cropRect:1 cacheable:v10, v11, v12, v13];

  return v17;
}

- (id)_profilePictureForPicture:(id)picture crop:(BOOL)crop cropRect:(CGRect)rect cacheable:(BOOL)cacheable
{
  cacheableCopy = cacheable;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cropCopy = crop;
  pictureCopy = picture;
  if (pictureCopy)
  {
    if (cacheableCopy)
    {
      v14 = +[AAUIServerSuppliedProfilePictureCache sharedCache];
      [v14 pictureDiameter];
      pictureDiameter = v15;
    }

    else
    {
      pictureDiameter = self->_pictureDiameter;
    }

    v22.width = pictureDiameter;
    v22.height = pictureDiameter;
    UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
    v18 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, pictureDiameter, pictureDiameter}];
    [v18 addClip];
    if (cropCopy)
    {
      v19 = [pictureCopy imageByCroppingToRect:{x, y, width, height}];

      pictureCopy = v19;
    }

    [pictureCopy drawInRect:{0.0, 0.0, pictureDiameter, pictureDiameter}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_meCardForAccountWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x1E698B760]])
  {
    aa_primaryEmail = [(ACAccount *)self->_account aa_primaryEmail];
    v6 = aa_primaryEmail;
    v7 = @"YES";
    if (aa_primaryEmail && ![aa_primaryEmail isEqualToString:&stru_1F447F790])
    {
      v7 = @"NO";
    }

    v8 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Is primary account email nil or empty? %@", &v14, 0xCu);
    }

    contactStore = self->_contactStore;
    aa_primaryEmail2 = [(ACAccount *)self->_account aa_primaryEmail];
    v11 = _AAUIDefaultFetchDescriptors();
    v12 = [(CNContactStore *)contactStore unifiedMeContactMatchingEmailAddress:aa_primaryEmail2 keysToFetch:v11 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)initWithGrandSlamSigner:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setProfilePictureForAccountOwner:cropRect:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setProfilePictureForAccountOwner:cropRect:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_meCardPicture
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_familyMemberPersonPicture:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_contactSyncsWithiCloud:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateCacheWithPhoto:cropRect:forPersonID:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateCacheWithPhoto:cropRect:forPersonID:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end