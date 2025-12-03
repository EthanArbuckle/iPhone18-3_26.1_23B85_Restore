@interface NBFamilyCircleDataSource
+ (id)sharedInstance;
- (NBFamilyCircleDataSource)init;
- (NSArray)familyMemberDSIDs;
- (NSArray)familyMembers;
- (id)_profileImageForFamilyMember:(id)member;
- (void)_notifyDidFetchFamilyCircle;
- (void)_notifyProfileImagesDidChange;
- (void)_updateProfilePictures;
- (void)addObserver:(id)observer;
- (void)refresh;
- (void)removeObserver:(id)observer;
- (void)setFamilyMembers:(id)members;
@end

@implementation NBFamilyCircleDataSource

- (NBFamilyCircleDataSource)init
{
  v11.receiver = self;
  v11.super_class = NBFamilyCircleDataSource;
  v2 = [(NBFamilyCircleDataSource *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(AAUIProfilePictureStore);
    profilePictureStore = v2->_profilePictureStore;
    v2->_profilePictureStore = v3;

    [(AAUIProfilePictureStore *)v2->_profilePictureStore setMonogramType:0];
    [(AAUIProfilePictureStore *)v2->_profilePictureStore setPictureDiameter:50.0];
    v2->_accessLock._os_unfair_lock_opaque = 0;
    familyMembers = v2->_familyMembers;
    v2->_familyMembers = &__NSArray0__struct;

    refreshing = v2->_refreshing;
    v2->_refreshing = &__kCFBooleanFalse;

    v2->_observerLock._os_unfair_lock_opaque = 0;
    v7 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_profilePictureStoreDidChange:" name:AAUIProfilePictureStoreDidChangeNotification object:0];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C40;
  block[3] = &unk_208D8;
  block[4] = self;
  if (qword_27CA0 != -1)
  {
    dispatch_once(&qword_27CA0, block);
  }

  v2 = qword_27C98;

  return v2;
}

- (NSArray)familyMembers
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(NSArray *)self->_familyMembers copy];
  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (NSArray)familyMemberDSIDs
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_3E04;
  v15 = sub_3E14;
  v16 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_3E1C;
  v8 = &unk_20900;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_accessLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setFamilyMembers:(id)members
{
  membersCopy = members;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [membersCopy copy];

  familyMembers = self->_familyMembers;
  self->_familyMembers = v5;

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)refresh
{
  v3 = self->_refreshing;
  objc_sync_enter(v3);
  if ([(NSNumber *)self->_refreshing BOOLValue])
  {
    objc_sync_exit(v3);

    activeStoreAccount = NBDefaultLog();
    if (os_log_type_enabled(activeStoreAccount, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, activeStoreAccount, OS_LOG_TYPE_INFO, "Already refreshing the family circle data source", buf, 2u);
    }
  }

  else
  {
    refreshing = self->_refreshing;
    self->_refreshing = &__kCFBooleanTrue;

    objc_sync_exit(v3);
    v6 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v6 activeStoreAccount];

    v7 = +[BUBag defaultBag];
    v8 = [[AMSFamilyInfoLookupTask alloc] initWithAccount:activeStoreAccount bag:v7];
    performFamilyInfoLookup = [v8 performFamilyInfoLookup];
    v10 = NBDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ams_DSID = [activeStoreAccount ams_DSID];
      *buf = 138412290;
      v15 = ams_DSID;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Starting family Circle lookup request for (%@)", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_42C0;
    v12[3] = &unk_20950;
    objc_copyWeak(&v13, buf);
    [performFamilyInfoLookup addFinishBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSMutableArray *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSMutableArray *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)_notifyDidFetchFamilyCircle
{
  os_unfair_lock_lock(&self->_observerLock);
  v3 = [(NSMutableArray *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        familyMembers = [(NBFamilyCircleDataSource *)self familyMembers];
        [v9 familyCircleDataSource:self didFetchFamilyCircle:familyMembers];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_notifyProfileImagesDidChange
{
  os_unfair_lock_lock(&self->_observerLock);
  v3 = [(NSMutableArray *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) familyCircleDataSourceProfileImagesDidChange:{self, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_profileImageForFamilyMember:(id)member
{
  memberCopy = member;
  firstName = [memberCopy firstName];
  if (firstName)
  {
    lastName = [memberCopy lastName];
    if (lastName)
    {

LABEL_6:
      goto LABEL_7;
    }
  }

  iCloudUsername = [memberCopy iCloudUsername];
  if (iCloudUsername)
  {

    if (!firstName)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  iCloudDSID = [memberCopy iCloudDSID];

  if (firstName)
  {
  }

  if (iCloudDSID)
  {
LABEL_7:
    v8 = objc_alloc_init(AAFamilyMember);
    firstName2 = [memberCopy firstName];
    [v8 setFirstName:firstName2];

    lastName2 = [memberCopy lastName];
    [v8 setLastName:lastName2];

    iCloudDSID2 = [memberCopy iCloudDSID];
    [v8 setPersonID:iCloudDSID2];

    iCloudUsername2 = [memberCopy iCloudUsername];
    [v8 setAppleID:iCloudUsername2];

    profilePictureStore = [(NBFamilyCircleDataSource *)self profilePictureStore];
    silhouetteMonogram = [profilePictureStore profilePictureForFamilyMember:v8];

    if (silhouetteMonogram)
    {
      goto LABEL_13;
    }
  }

  v15 = [[CNMonogrammer alloc] initWithStyle:0 diameter:50.0];
  firstName3 = [memberCopy firstName];
  if (firstName3 && (v17 = firstName3, [memberCopy lastName], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
  {
    firstName4 = [memberCopy firstName];
    lastName3 = [memberCopy lastName];
    silhouetteMonogram = [v15 monogramForPersonWithFirstName:firstName4 lastName:lastName3];
  }

  else
  {
    silhouetteMonogram = [v15 silhouetteMonogram];
  }

LABEL_13:

  return silhouetteMonogram;
}

- (void)_updateProfilePictures
{
  os_unfair_lock_lock(&self->_accessLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_familyMembers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NBFamilyCircleDataSource *)self _profileImageForFamilyMember:v8, v10];
        [v8 setNb_profileImage:v9];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_accessLock);
  [(NBFamilyCircleDataSource *)self _notifyProfileImagesDidChange];
}

@end