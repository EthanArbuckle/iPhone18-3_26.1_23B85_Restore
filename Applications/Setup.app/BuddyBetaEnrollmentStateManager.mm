@interface BuddyBetaEnrollmentStateManager
- (BOOL)isRestorableSeedEnrolled:(id)enrolled;
- (BuddyBetaEnrollmentStateManager)init;
- (void)loadSeedEnrollmentStateForRestorables:(id)restorables incompatibleWithUpdateVersion:(id)version completion:(id)completion;
@end

@implementation BuddyBetaEnrollmentStateManager

- (BuddyBetaEnrollmentStateManager)init
{
  v11 = a2;
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddyBetaEnrollmentStateManager;
  location = [(BuddyBetaEnrollmentStateManager *)&v10 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(location + 1);
    *(location + 1) = v2;

    v4 = dispatch_queue_create("com.apple.setup.backup_seed_enrolled", 0);
    v5 = *(location + 2);
    *(location + 2) = v4;

    v6 = objc_retainBlock(&stru_10032DA48);
    v7 = *(location + 3);
    *(location + 3) = v6;
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)loadSeedEnrollmentStateForRestorables:(id)restorables incompatibleWithUpdateVersion:(id)version completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restorables);
  v40 = 0;
  objc_storeStrong(&v40, version);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v38 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  v7 = location[0];
  v8 = [v7 countByEnumeratingWithState:__b objects:v44 count:16];
  if (v8)
  {
    v9 = *__b[2];
    do
    {
      for (i = 0; i < v8; ++i)
      {
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v7);
        }

        v37 = *(__b[1] + 8 * i);
        if (([v37 isCompatible] & 1) == 0 && (objc_msgSend(v37, "isCompatibleWithUpdateToSystemVersion:", v40) & 1) == 0)
        {
          backupUDIDToSeedEnrolledMapAccessQueue = [(BuddyBetaEnrollmentStateManager *)selfCopy backupUDIDToSeedEnrolledMapAccessQueue];
          block = _NSConcreteStackBlock;
          v29 = -1073741824;
          v30 = 0;
          v31 = sub_10014E43C;
          v32 = &unk_10032BB10;
          v33 = selfCopy;
          v34 = v37;
          v35 = v38;
          dispatch_sync(backupUDIDToSeedEnrolledMapAccessQueue, &block);

          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v33, 0);
        }
      }

      v8 = [v7 countByEnumeratingWithState:__b objects:v44 count:16];
    }

    while (v8);
  }

  if ([v38 count])
  {
    v24 = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100077E48(v43, [v38 count]);
      _os_log_debug_impl(&_mh_execute_header, v24, v23, "Will load seed enrollment state for %lu restorable items", v43, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v14 = dispatch_get_global_queue(25, 0);
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_10014E4DC;
    v19 = &unk_10032BC78;
    v20 = v38;
    v21 = selfCopy;
    v22 = v39;
    dispatch_async(v14, &v15);

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v26 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v12 = oslog;
      v13 = v26;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v12, v13, "No restorable items need to load seed enrollment state", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(v39 + 2))();
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isRestorableSeedEnrolled:(id)enrolled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, enrolled);
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  backupUDIDToSeedEnrolledMapAccessQueue = [(BuddyBetaEnrollmentStateManager *)selfCopy backupUDIDToSeedEnrolledMapAccessQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10014EB14;
  v9 = &unk_10032C920;
  v11[1] = &v12;
  v10 = selfCopy;
  v11[0] = location[0];
  dispatch_sync(backupUDIDToSeedEnrolledMapAccessQueue, &v5);

  LOBYTE(backupUDIDToSeedEnrolledMapAccessQueue) = *(v13 + 24);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(location, 0);
  return backupUDIDToSeedEnrolledMapAccessQueue & 1;
}

@end