@interface BCCacheProductProfiles
- (BCCacheProductProfiles)init;
- (void)_fetchedProfile:(id)a3 withIdentifier:(id)a4;
- (void)batchFetchCoverURLsFor:(id)a3 completion:(id)a4;
- (void)fetchCoverURLsFor:(id)a3 immediately:(BOOL)a4 completion:(id)a5;
- (void)performFetch:(id)a3;
@end

@implementation BCCacheProductProfiles

- (BCCacheProductProfiles)init
{
  v15.receiver = self;
  v15.super_class = BCCacheProductProfiles;
  v2 = [(BCCacheProductProfiles *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    completions = v3->_completions;
    v3->_completions = v4;

    v6 = +[NSMutableSet set];
    profilesToFetch = v3->_profilesToFetch;
    v3->_profilesToFetch = v6;

    v8 = [BUCoalescingCallBlock alloc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_31A4;
    v13[3] = &unk_2C7B08;
    v9 = v3;
    v14 = v9;
    v10 = [v8 initWithNotifyBlock:v13 blockDescription:@"BCCacheProductProfiles"];
    v11 = v9[4];
    v9[4] = v10;

    [v9[4] setCoalescingDelay:0.2];
    [v9[4] setMaximumDelay:0.4];
  }

  return v3;
}

- (void)fetchCoverURLsFor:(id)a3 immediately:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_34B8;
  v13[3] = &unk_2C7B30;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  os_unfair_lock_lock(&self->_accessLock);
  sub_34B8(v13);
  os_unfair_lock_unlock(&self->_accessLock);
  if (v6)
  {
    v12 = [NSMutableSet setWithObject:v10];
    [(BCCacheProductProfiles *)self performFetch:v12];
  }

  else
  {
    v12 = [(BCCacheProductProfiles *)self coalescedFetch];
    [v12 signalWithCompletion:&stru_2C7B70];
  }
}

- (void)batchFetchCoverURLsFor:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AEUserPublishing sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3680;
  v10[3] = &unk_2C7B98;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 profilesForStoreIDs:v9 keyProfile:@"kAEUserPublishingLookProfileProduct" completion:v10];
}

- (void)_fetchedProfile:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_32F4;
  v30 = sub_3304;
  v31 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v21 = sub_3BA8;
  v22 = &unk_2C7BC0;
  v25 = &v26;
  v23 = self;
  v7 = a4;
  v24 = v7;
  v8 = v20;
  os_unfair_lock_lock(&self->_accessLock);
  v21(v8);
  os_unfair_lock_unlock(&self->_accessLock);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v27[5];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v32 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [v6 expiration];
        v15 = [v6 error];
        (*(v13 + 16))(v13, v6, v14, v15);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v32 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v26, 8);
}

- (void)performFetch:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_32F4;
  v21 = sub_3304;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_3E08;
  v14 = &unk_2C7AE0;
  v16 = &v17;
  v4 = a3;
  v15 = v4;
  v5 = v12;
  os_unfair_lock_lock(&self->_accessLock);
  v13(v5);
  os_unfair_lock_unlock(&self->_accessLock);

  v6 = +[AEUserPublishing sharedInstance];
  v7 = v18[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3E54;
  v9[3] = &unk_2C7C38;
  v11 = &v17;
  v9[4] = self;
  v8 = v4;
  v10 = v8;
  [v6 profilesForStoreIDs:v7 keyProfile:@"kAEUserPublishingLookProfileProduct" completion:v9];

  _Block_object_dispose(&v17, 8);
}

@end