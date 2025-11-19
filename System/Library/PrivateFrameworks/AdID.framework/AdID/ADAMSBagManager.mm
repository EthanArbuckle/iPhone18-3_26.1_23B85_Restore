@interface ADAMSBagManager
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)sharedInstance;
- (BOOL)authenticateAccountThroughAMSOperation:(id)a3;
- (BOOL)retrieveIsSponsoredAdsEnabledValueForAdTrackingdFromAMSBag;
- (BOOL)retrieveIsSponsoredAdsEnabledValueFromAMSBag;
- (id)retrieveJingleRequestURLFromAMSBagWithPartialityKey:(id)a3;
- (int64_t)retrieveLatestPersonalizedAdsConsentVersionFromAMSBag;
@end

@implementation ADAMSBagManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ADAMSBagManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_0, block);
  }

  v2 = sharedInstance__instance_0;

  return v2;
}

uint64_t __33__ADAMSBagManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (NSString)bagSubProfile
{
  if (bagSubProfile_ams_once_token___COUNTER__ != -1)
  {
    +[ADAMSBagManager bagSubProfile];
  }

  v3 = bagSubProfile_ams_once_object___COUNTER__;

  return v3;
}

void __32__ADAMSBagManager_bagSubProfile__block_invoke()
{
  v0 = bagSubProfile_ams_once_object___COUNTER__;
  bagSubProfile_ams_once_object___COUNTER__ = @"adprivacyd";
}

+ (NSString)bagSubProfileVersion
{
  if (bagSubProfileVersion_ams_once_token___COUNTER__ != -1)
  {
    +[ADAMSBagManager bagSubProfileVersion];
  }

  v3 = bagSubProfileVersion_ams_once_object___COUNTER__;

  return v3;
}

void __39__ADAMSBagManager_bagSubProfileVersion__block_invoke()
{
  v0 = bagSubProfileVersion_ams_once_object___COUNTER__;
  bagSubProfileVersion_ams_once_object___COUNTER__ = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v3 = [v2 adprivacydBag];

  return v3;
}

- (BOOL)authenticateAccountThroughAMSOperation:(id)a3
{
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x277CEE3D8]);
  [v5 setAuthenticationType:1];
  [v5 setAllowServerDialogs:0];
  v6 = [objc_alloc(MEMORY[0x277CEE3E8]) initWithAccount:v3 options:v5];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [v6 performAuthentication];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __58__ADAMSBagManager_authenticateAccountThroughAMSOperation___block_invoke;
  v17 = &unk_278C58610;
  v19 = &v20;
  v9 = v7;
  v18 = v9;
  [v8 addFinishBlock:&v14];

  v10 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v9, v10))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to authenticate in time.", v14, v15, v16, v17];
    _ADLog();
  }

  objc_autoreleasePoolPop(v4);
  v12 = v21[5] != 0;
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __58__ADAMSBagManager_authenticateAccountThroughAMSOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [a3 localizedDescription];
    v8 = [v6 stringWithFormat:@"Performing the Authentication Returned Error: %@", v7];
    _ADLog();
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)retrieveIsSponsoredAdsEnabledValueFromAMSBag
{
  v2 = +[ADAMSBagManager createBagForSubProfile];
  v3 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = [v2 BOOLForKey:@"isSponsoredAdsEnabled"];
  v5 = [v4 valuePromise];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __63__ADAMSBagManager_retrieveIsSponsoredAdsEnabledValueFromAMSBag__block_invoke;
  v14 = &unk_278C58638;
  v16 = &v17;
  v6 = v3;
  v15 = v6;
  [v5 addFinishBlock:&v11];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get the 'isSponsoredAdsEnabled' key from the bag in time.", v11, v12, v13, v14];
    _ADLog();
  }

  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __63__ADAMSBagManager_retrieveIsSponsoredAdsEnabledValueFromAMSBag__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [a3 localizedDescription];
    v7 = [v5 stringWithFormat:@"Unable to get the 'isSponsoredAdsEnabled' status from the bag. Error: %@", v6];
    _ADLog();
  }

  *(*(*(a1 + 40) + 8) + 24) = [v8 BOOLValue];
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)retrieveIsSponsoredAdsEnabledValueForAdTrackingdFromAMSBag
{
  v2 = +[ADAMSBagManager createBagForSubProfile];
  v3 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = [v2 BOOLForKey:@"isSponsoredAdsEnabledForAdTrackingd"];
  v5 = [v4 valuePromise];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __77__ADAMSBagManager_retrieveIsSponsoredAdsEnabledValueForAdTrackingdFromAMSBag__block_invoke;
  v14 = &unk_278C58638;
  v16 = &v17;
  v6 = v3;
  v15 = v6;
  [v5 addFinishBlock:&v11];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get the 'isSponsoredAdsEnabledForAdTrackingd' key from the bag in time.", v11, v12, v13, v14];
    _ADLog();
  }

  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __77__ADAMSBagManager_retrieveIsSponsoredAdsEnabledValueForAdTrackingdFromAMSBag__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [a3 localizedDescription];
    v7 = [v5 stringWithFormat:@"Unable to get the 'isSponsoredAdsEnabledForAdTrackingd' status from the bag. Error: %@", v6];
    _ADLog();
  }

  *(*(*(a1 + 40) + 8) + 24) = [v8 BOOLValue];
  dispatch_semaphore_signal(*(a1 + 32));
}

- (int64_t)retrieveLatestPersonalizedAdsConsentVersionFromAMSBag
{
  v2 = +[ADAMSBagManager createBagForSubProfile];
  v3 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v4 = [v2 integerForKey:@"latestPersonalizedAdsConsentVersion"];
  v5 = [v4 valuePromise];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __72__ADAMSBagManager_retrieveLatestPersonalizedAdsConsentVersionFromAMSBag__block_invoke;
  v14 = &unk_278C58638;
  v16 = &v17;
  v6 = v3;
  v15 = v6;
  [v5 addFinishBlock:&v11];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get the 'latestPersonalizedAdsConsentVersion' key from the bag in time.", v11, v12, v13, v14];
    _ADLog();
  }

  v9 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v9;
}

intptr_t __72__ADAMSBagManager_retrieveLatestPersonalizedAdsConsentVersionFromAMSBag__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [a3 localizedDescription];
    v6 = [v4 stringWithFormat:@"Unable to get 'latestPersonalizedAdsConsentVersion' from the bag. Error: %@", v5];
    _ADLog();

    v7 = 1;
  }

  else
  {
    v7 = [a2 integerValue];
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

- (id)retrieveJingleRequestURLFromAMSBagWithPartialityKey:(id)a3
{
  v3 = a3;
  v4 = v3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  if (v3 && [v3 length])
  {
    v5 = +[ADAMSBagManager createBagForSubProfile];
    v6 = dispatch_semaphore_create(0);
    v7 = v4;
    v8 = [v5 URLForKey:v7];
    v9 = [v8 valuePromise];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__ADAMSBagManager_retrieveJingleRequestURLFromAMSBagWithPartialityKey___block_invoke;
    v16[3] = &unk_278C58660;
    v19 = &v20;
    v10 = v7;
    v17 = v10;
    v11 = v6;
    v18 = v11;
    [v9 addFinishBlock:v16];
    v12 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v11, v12))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get the URL key from the bag in time."];
      _ADLog();
    }

    v14 = v21[5];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Key for AMS bag lookup is empty. Cannot return a value."];
    _ADLog();
    v14 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __71__ADAMSBagManager_retrieveJingleRequestURLFromAMSBagWithPartialityKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v6 || (v16 = *(*(*(a1 + 48) + 8) + 40)) == 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = *(a1 + 32);
    v9 = [v6 localizedDescription];
    v10 = [v7 stringWithFormat:@"Unable to get the '%@' key for Jingle from the bag. Error: %@. Falling back to value in user defaults.", v8, v9];
    _ADLog();

    v11 = [MEMORY[0x277CE9630] sharedInstance];
    v12 = [v11 stringForKey:*(a1 + 32)];

    if (!v12 || ![v12 length])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get Jingle URL for request type '%@' from user defaults. File a radar if you see this message!", *(a1 + 32)];
      _ADLog();

      goto LABEL_10;
    }

    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(*(*(a1 + 48) + 8) + 40);
  }

  v18 = [v16 absoluteString];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [MEMORY[0x277CE9630] sharedInstance];
    v21 = [*(*(*(a1 + 48) + 8) + 40) absoluteString];
    [v20 setString:v21 forKey:*(a1 + 32)];
  }

  dispatch_semaphore_signal(*(a1 + 40));
LABEL_10:
}

@end