@interface ASKProfilePictureStore
+ (ASKProfilePictureStore)sharedStore;
- (ASKProfilePictureStore)init;
- (void)_markAsHasRequestedImages;
- (void)appleAccountsDidChange:(id)a3;
- (void)configureProfilePictureStoreAndNotifyIfNeeded;
- (void)dealloc;
- (void)notifyIfNeeded;
- (void)profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter:(double)a3 completion:(id)a4;
- (void)profilePictureStoreDidChange:(id)a3;
- (void)storeAccountsDidChange:(id)a3;
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

void __37__ASKProfilePictureStore_sharedStore__block_invoke(id a1)
{
  sharedStore_instance = objc_alloc_init(ASKProfilePictureStore);

  _objc_release_x1();
}

- (ASKProfilePictureStore)init
{
  v16.receiver = self;
  v16.super_class = ASKProfilePictureStore;
  v2 = [(ASKProfilePictureStore *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ShelfKit.ASKProfilePictureStore.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("ShelfKit.ASKProfilePictureStore.notificationQueue", &_dispatch_queue_attr_concurrent);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = ACDAccountStoreDidChangeNotification;
    [v7 addObserver:v2 selector:"appleAccountsDidChange:" name:ACDAccountStoreDidChangeNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"storeAccountsDidChange:" name:v8 object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"profilePictureStoreDidChange:" name:AAUIProfilePictureStoreDidChangeNotification object:0];

    objc_initWeak(&location, v2);
    v11 = [(ASKProfilePictureStore *)v2 accessQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __30__ASKProfilePictureStore_init__block_invoke;
    v13[3] = &unk_4AF208;
    objc_copyWeak(&v14, &location);
    dispatch_async(v11, v13);

    objc_destroyWeak(&v14);
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
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASKProfilePictureStore;
  [(ASKProfilePictureStore *)&v4 dealloc];
}

- (void)configureProfilePictureStoreAndNotifyIfNeeded
{
  v3 = [(ASKProfilePictureStore *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[ACAccountStore ams_sharedAccountStore];
  [(ASKProfilePictureStore *)self setAccountStore:v4];

  v5 = [(ASKProfilePictureStore *)self accountStore];
  v26 = [v5 aa_primaryAppleAccount];

  v6 = [v26 username];
  v7 = [(ASKProfilePictureStore *)self accountStore];
  v8 = [v7 ams_activeiTunesAccount];
  v9 = [v8 username];

  v10 = [(ASKProfilePictureStore *)self primaryAccountName];
  v11 = [v10 length];
  if (v11 == [v6 length])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = [(ASKProfilePictureStore *)self primaryAccountName];
    v12 = [v13 isEqualToString:v6] ^ 1;
  }

  v14 = [(ASKProfilePictureStore *)self storeAccountName];
  v15 = [v14 length];
  if (v15 == [v9 length])
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v17 = [(ASKProfilePictureStore *)self storeAccountName];
    v16 = [v17 isEqualToString:v9] ^ 1;
  }

  if ([v6 length] && objc_msgSend(v9, "length"))
  {
    v18 = [(ASKProfilePictureStore *)self profilePictureStore];
    v19 = v18 == 0;
    v20 = 1;
  }

  else
  {
    v18 = [(ASKProfilePictureStore *)self profilePictureStore];
    v20 = 0;
    v19 = v18 != 0;
  }

  v21 = v12 | v16;
  if ((v21 & 1) != 0 || v19)
  {
    [(ASKProfilePictureStore *)self setPrimaryAccountName:v6];
    [(ASKProfilePictureStore *)self setStoreAccountName:v9];
    if (v20)
    {
      v22 = [AAUIProfilePictureStore alloc];
      v23 = [(ASKProfilePictureStore *)self accountStore];
      v24 = [v22 initWithAppleAccount:v26 store:v23];
      [(ASKProfilePictureStore *)self setProfilePictureStore:v24];

      v25 = [(ASKProfilePictureStore *)self profilePictureStore];
      [v25 setMonogramType:0];

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      [(ASKProfilePictureStore *)self setProfilePictureStore:0];
      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    [(ASKProfilePictureStore *)self notifyIfNeeded];
  }

LABEL_18:
}

- (void)notifyIfNeeded
{
  v3 = [(ASKProfilePictureStore *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  if ([(ASKProfilePictureStore *)self hasRequestedImages])
  {
    objc_initWeak(&location, self);
    v4 = [(ASKProfilePictureStore *)self notificationQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __40__ASKProfilePictureStore_notifyIfNeeded__block_invoke;
    v5[3] = &unk_4AF208;
    objc_copyWeak(&v6, &location);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __40__ASKProfilePictureStore_notifyIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"ASKProfilePictureStoreDidChange" object:WeakRetained];
}

- (void)appleAccountsDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __49__ASKProfilePictureStore_appleAccountsDidChange___block_invoke;
  v6[3] = &unk_4AF208;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__ASKProfilePictureStore_appleAccountsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc_init(ACAccountStore);
  [WeakRetained setAccountStore:v1];

  [WeakRetained setProfilePictureStore:0];
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)storeAccountsDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __49__ASKProfilePictureStore_storeAccountsDidChange___block_invoke;
  v6[3] = &unk_4AF208;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__ASKProfilePictureStore_storeAccountsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)profilePictureStoreDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __55__ASKProfilePictureStore_profilePictureStoreDidChange___block_invoke;
  v6[3] = &unk_4AF208;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__ASKProfilePictureStore_profilePictureStoreDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyIfNeeded];
}

- (void)profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter:(double)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(ASKProfilePictureStore *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __109__ASKProfilePictureStore_profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter_completion___block_invoke;
  v9[3] = &unk_4AF258;
  objc_copyWeak(v11, &location);
  v11[1] = *&a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __109__ASKProfilePictureStore_profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = [WeakRetained profilePictureStore];
  [v4 setPictureDiameter:v3];

  v5 = [WeakRetained profilePictureStore];
  v6 = [v5 profilePictureForAccountOwnerWithoutMonogramFallback];

  [WeakRetained _markAsHasRequestedImages];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __109__ASKProfilePictureStore_profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter_completion___block_invoke_2;
  v9[3] = &unk_4AF230;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_markAsHasRequestedImages
{
  if (![(ASKProfilePictureStore *)self hasRequestedImages])
  {

    [(ASKProfilePictureStore *)self setHasRequestedImages:1];
  }
}

@end