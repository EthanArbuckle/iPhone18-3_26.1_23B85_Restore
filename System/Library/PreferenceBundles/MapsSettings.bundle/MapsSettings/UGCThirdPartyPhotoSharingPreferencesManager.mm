@interface UGCThirdPartyPhotoSharingPreferencesManager
+ (id)sharedManager;
- (BOOL)hasDeviceReadServerSettings;
- (UGCThirdPartyPhotoSharingPreferencesManager)init;
- (void)_setDefaultsKeyForPreferences:(id)preferences;
- (void)_updateThirdPartyPhotoSharingPreferences:(BOOL)preferences versionID:(id)d eraseServerSavedSetting:(BOOL)setting completion:(id)completion;
- (void)debugEraseServerSavedThirdPartyPhotoSharingPreference;
- (void)fetchThirdPartyPhotoSharingPreferencesWithCompletion:(id)completion;
@end

@implementation UGCThirdPartyPhotoSharingPreferencesManager

+ (id)sharedManager
{
  if (qword_96D78 != -1)
  {
    sub_3C524();
  }

  v3 = qword_96D70;

  return v3;
}

- (UGCThirdPartyPhotoSharingPreferencesManager)init
{
  v7.receiver = self;
  v7.super_class = UGCThirdPartyPhotoSharingPreferencesManager;
  v2 = [(UGCThirdPartyPhotoSharingPreferencesManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.UGCThirdPartyPhotoSharingPreferencesManagerQueue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (BOOL)hasDeviceReadServerSettings
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"UGCThirdPartyPhotoSharingDeviceHasReadServerSetting"];

  return v3;
}

- (void)fetchThirdPartyPhotoSharingPreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_37568;
  v7[3] = &unk_805A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)debugEraseServerSavedThirdPartyPhotoSharingPreference
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_37AD8;
  v3[3] = &unk_800F0;
  objc_copyWeak(&v4, &location);
  [(UGCThirdPartyPhotoSharingPreferencesManager *)self fetchThirdPartyPhotoSharingPreferencesWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_updateThirdPartyPhotoSharingPreferences:(BOOL)preferences versionID:(id)d eraseServerSavedSetting:(BOOL)setting completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_37C3C;
  v15[3] = &unk_80638;
  settingCopy = setting;
  preferencesCopy = preferences;
  v16 = dCopy;
  selfCopy = self;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

- (void)_setDefaultsKeyForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = sub_377D4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Updating defaults with newest preferences", v7, 2u);
  }

  hasOptIn = [preferencesCopy hasOptIn];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:hasOptIn forKey:@"UGCThirdPartyPhotoSharingDeviceHasReadServerSetting"];
}

@end