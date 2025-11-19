@interface MPCloudServiceStatusController
+ (MPCloudServiceStatusController)cloudServiceStatusControllerWithUserIdentity:(id)a3;
+ (MPCloudServiceStatusController)sharedController;
+ (NSMutableDictionary)controllers;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)_cloudServiceStatusControllerWithUserIdentity:(id)a3 createIfRequired:(BOOL)a4;
+ (void)_postNotificationName:(id)a3 controller:(id)a4 userInfo:(id)a5;
- (BOOL)_calculateShouldPlaybackRequireSubscriptionLeaseReturningLikelyToReachRemoteServer:(BOOL *)a3;
- (BOOL)_currentCloudLibraryEnabled;
- (BOOL)_currentPurchaseHistoryEnabled;
- (BOOL)_handlesSameAccountAs:(id)a3;
- (BOOL)isSubscriptionAvailable;
- (BOOL)shouldPlaybackRequireSubscriptionLease;
- (ICUserIdentity)userIdentity;
- (NSString)description;
- (id)_initWithUserIdentity:(id)a3;
- (unint64_t)matchStatus;
- (void)_allowsMusicSubscriptionDidChange:(id)a3;
- (void)_beginObservingCloudLibraryEnabled;
- (void)_beginObservingMatchStatus;
- (void)_cloudClientAuthenticationDidChange;
- (void)_copyObservationStateFrom:(id)a3;
- (void)_enableICMLErrorReasonChange:(id)a3;
- (void)_endObservingCloudLibraryEnabled;
- (void)_endObservingMatchStatus;
- (void)_performBlockOnControllerHandlingTheSameAccount:(id)a3;
- (void)_updateMatchStatus;
- (void)_updateSubscriptionAvailability;
- (void)_updateSubscriptionAvailabilityWithValue:(BOOL)a3;
- (void)_userIdentityStoreDidChange:(id)a3;
- (void)beginObservingCloudLibraryEnabled;
- (void)beginObservingMatchStatus;
- (void)dealloc;
- (void)endObservingCloudLibraryEnabled;
- (void)endObservingMatchStatus;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
@end

@implementation MPCloudServiceStatusController

void __50__MPCloudServiceStatusController_sharedController__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [[MPCloudServiceStatusController alloc] _initWithUserIdentity:0];
  v1 = sharedController___controller;
  sharedController___controller = v0;

  v2 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = sharedController___controller;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Singleton", &v3, 0xCu);
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = MPCloudServiceStatusController;
  v3 = [(MPCloudServiceStatusController *)&v7 description];
  v4 = [(MPCloudServiceStatusController *)self userIdentity];
  v5 = [v3 stringByAppendingFormat:@" [%@]", v4];

  return v5;
}

+ (MPCloudServiceStatusController)sharedController
{
  if (sharedController_onceToken_4013 != -1)
  {
    dispatch_once(&sharedController_onceToken_4013, &__block_literal_global_39);
  }

  v3 = sharedController___controller;

  return v3;
}

- (ICUserIdentity)userIdentity
{
  userIdentity = self->_userIdentity;
  if (userIdentity)
  {
    v3 = userIdentity;
  }

  else
  {
    v3 = [MEMORY[0x1E69E4680] activeAccount];
  }

  return v3;
}

void __65__MPCloudServiceStatusController__updateSubscriptionAvailability__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E4688];
  v6 = a2;
  v4 = [v3 defaultIdentityStore];
  [v6 setIdentityStore:v4];

  v5 = [*(a1 + 32) userIdentity];
  [v6 setIdentity:v5];

  [v6 setAllowsExpiredBags:1];
}

- (void)_updateSubscriptionAvailability
{
  v3 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
  v4 = [v3 allowsMusicSubscription];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69E4618]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__MPCloudServiceStatusController__updateSubscriptionAvailability__block_invoke;
    v9[3] = &unk_1E767D580;
    v9[4] = self;
    v6 = [v5 initWithBlock:v9];
    v7 = [MEMORY[0x1E69E4658] sharedBagProvider];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__MPCloudServiceStatusController__updateSubscriptionAvailability__block_invoke_2;
    v8[3] = &unk_1E767D230;
    v8[4] = self;
    [v7 getBagForRequestContext:v6 withCompletionHandler:v8];
  }

  else
  {

    [(MPCloudServiceStatusController *)self _updateSubscriptionAvailabilityWithValue:0];
  }
}

void __51__MPCloudServiceStatusController_globalSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaplayer.MPCloudServiceStatusController.global.serial.queue", v2);
  v1 = globalSerialQueue___globalSerialQueue_4022;
  globalSerialQueue___globalSerialQueue_4022 = v0;
}

void __45__MPCloudServiceStatusController_controllers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = controllers___controllers_4017;
  controllers___controllers_4017 = v0;
}

void __68__MPCloudServiceStatusController__beginObservingCloudLibraryEnabled__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (++*(*(a1 + 32) + 40) == 1)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - beginObservingCloudLibraryEnabled - Registering for ICCloudClientIsAuthenticatedDidChangeNotification", &v5, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _CloudClientAuthenticationDidChangeCallback, *MEMORY[0x1E69E4140], 0, 0);
  }
}

+ (OS_dispatch_queue)globalSerialQueue
{
  if (globalSerialQueue_onceToken_4020 != -1)
  {
    dispatch_once(&globalSerialQueue_onceToken_4020, &__block_literal_global_4021);
  }

  v3 = globalSerialQueue___globalSerialQueue_4022;

  return v3;
}

+ (NSMutableDictionary)controllers
{
  if (controllers_onceToken_4015 != -1)
  {
    dispatch_once(&controllers_onceToken_4015, &__block_literal_global_37_4016);
  }

  v3 = controllers___controllers_4017;

  return v3;
}

uint64_t __65__MPCloudServiceStatusController__updateSubscriptionAvailability__block_invoke_2(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = result;
    v5 = [a2 dictionaryForBagKey:*MEMORY[0x1E69E4320]];
    v6 = v5 != 0;

    v7 = *(v4 + 32);

    return [v7 _updateSubscriptionAvailabilityWithValue:v6];
  }

  return result;
}

- (void)beginObservingCloudLibraryEnabled
{
  v3 = +[MPCloudServiceStatusController sharedController];

  if (v3 == self)
  {
    [(MPCloudServiceStatusController *)self _beginObservingCloudLibraryEnabled];

    [(MPCloudServiceStatusController *)self _performBlockOnControllerHandlingTheSameAccount:&__block_literal_global_71];
  }
}

- (void)_beginObservingCloudLibraryEnabled
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPCloudServiceStatusController__beginObservingCloudLibraryEnabled__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (BOOL)isSubscriptionAvailable
{
  if (self->_hasLoadedSubscriptionAvailability)
  {
    return self->_subscriptionAvailable;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"_MPCloudServiceStatusControllerSubscriptionAvailability"];

  [(MPCloudServiceStatusController *)self _updateSubscriptionAvailability];
  return v5;
}

- (BOOL)_currentCloudLibraryEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cloudLibraryStatusAccessQueue = self->_cloudLibraryStatusAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MPCloudServiceStatusController__currentCloudLibraryEnabled__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cloudLibraryStatusAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __61__MPCloudServiceStatusController__currentCloudLibraryEnabled__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2 == -1)
  {
    v3 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v4 = [*(a1 + 32) userIdentity];
    v7 = 0;
    v5 = [v3 getPropertiesForUserIdentity:v4 error:&v7];
    v6 = v7;

    if (!v6 && v5)
    {
      *(*(a1 + 32) + 32) = [v5 isActiveLocker];
    }

    v2 = *(*(a1 + 32) + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2 == 1;
}

- (void)_performBlockOnControllerHandlingTheSameAccount:(id)a3
{
  v12 = a3;
  v4 = +[MPCloudServiceStatusController sharedController];
  v5 = v4;
  if (v4 == self)
  {
  }

  else
  {
    v6 = +[MPCloudServiceStatusController sharedController];
    v7 = [(MPCloudServiceStatusController *)self _handlesSameAccountAs:v6];

    if (v7)
    {
      v8 = +[MPCloudServiceStatusController sharedController];
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_8:
      v12[2](v12, v8);

      goto LABEL_9;
    }
  }

  v9 = +[MPCloudServiceStatusController sharedController];

  if (v9 == self)
  {
    v10 = +[MPCloudServiceStatusController sharedController];
    v11 = [v10 userIdentity];
    v8 = [MPCloudServiceStatusController _cloudServiceStatusControllerWithUserIdentity:v11 createIfRequired:0];

    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (BOOL)_handlesSameAccountAs:(id)a3
{
  if (self == a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(MPCloudServiceStatusController *)self userIdentity];
  v6 = [v5 accountDSID];
  v7 = [v4 userIdentity];

  v8 = [v7 accountDSID];
  if (v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 isEqual:v8];
  }

  return v9;
}

- (void)_copyObservationStateFrom:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = v4[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPCloudServiceStatusController__copyObservationStateFrom___block_invoke;
  block[3] = &unk_1E767D4B8;
  v11 = &v17;
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  dispatch_sync(v5, block);
  if (v18[3])
  {
    v7 = 0;
    do
    {
      [(MPCloudServiceStatusController *)self _beginObservingCloudLibraryEnabled];
      ++v7;
    }

    while (v7 < v18[3]);
  }

  if (v14[3])
  {
    v8 = 0;
    do
    {
      [(MPCloudServiceStatusController *)self _beginObservingMatchStatus];
      ++v8;
    }

    while (v8 < v14[3]);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void *__60__MPCloudServiceStatusController__copyObservationStateFrom___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 40);
  *(*(result[6] + 8) + 24) = *(result[4] + 72);
  return result;
}

- (void)_endObservingMatchStatus
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPCloudServiceStatusController__endObservingMatchStatus__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

uint64_t __58__MPCloudServiceStatusController__endObservingMatchStatus__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 72);
  if (v2)
  {
    *(v1 + 72) = v2 - 1;
  }

  return result;
}

- (void)_beginObservingMatchStatus
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPCloudServiceStatusController__beginObservingMatchStatus__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void *__60__MPCloudServiceStatusController__beginObservingMatchStatus__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 72);
  result = *(a1 + 32);
  if (result[9] == 1)
  {
    return [result _updateMatchStatus];
  }

  return result;
}

- (void)_endObservingCloudLibraryEnabled
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPCloudServiceStatusController__endObservingCloudLibraryEnabled__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __66__MPCloudServiceStatusController__endObservingCloudLibraryEnabled__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    *(v1 + 40) = v2 - 1;
    if (!*(*(a1 + 32) + 40))
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - endObservingCloudLibraryEnabled - Unregistering for ICCloudClientIsAuthenticatedDidChangeNotification", &v7, 0xCu);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 32), *MEMORY[0x1E69E4140], 0);
    }
  }
}

- (void)_updateSubscriptionAvailabilityWithValue:(BOOL)a3
{
  self->_hasLoadedSubscriptionAvailability = 1;
  if (self->_subscriptionAvailable != a3)
  {
    block[9] = v3;
    block[10] = v4;
    v5 = a3;
    self->_subscriptionAvailable = a3;
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v7 setBool:v5 forKey:@"_MPCloudServiceStatusControllerSubscriptionAvailability"];

    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MPCloudServiceStatusController__updateSubscriptionAvailabilityWithValue___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

- (void)_updateMatchStatus
{
  hasLoadedMatchStatus = self->_hasLoadedMatchStatus;
  self->_hasLoadedMatchStatus = 1;
  v4 = [(MPCloudServiceStatusController *)self musicSubscriptionStatus];
  if ([v4 isMatchEnabled])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (self->_matchStatus != v5 || !hasLoadedMatchStatus)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 setInteger:v5 forKey:@"_MPCloudServiceStatusControllerMatchStatus"];

    if (self->_matchStatus != v5)
    {
      self->_matchStatus = v5;
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__MPCloudServiceStatusController__updateMatchStatus__block_invoke;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (BOOL)_currentPurchaseHistoryEnabled
{
  v3 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v4 = [(MPCloudServiceStatusController *)self userIdentity];
  v9 = 0;
  v5 = [v3 getPropertiesForUserIdentity:v4 error:&v9];
  v6 = v9;

  v7 = 0;
  if (!v6 && v5)
  {
    v7 = [v5 isActive];
  }

  return v7;
}

- (BOOL)_calculateShouldPlaybackRequireSubscriptionLeaseReturningLikelyToReachRemoteServer:(BOOL *)a3
{
  v4 = [MEMORY[0x1E69E4428] sharedMonitor];
  v5 = [v4 isRemoteServerLikelyReachable];

  if (a3)
  {
    *a3 = v5;
  }

  return v5;
}

- (void)endObservingMatchStatus
{
  v3 = +[MPCloudServiceStatusController sharedController];

  if (v3 == self)
  {
    [(MPCloudServiceStatusController *)self _endObservingMatchStatus];

    [(MPCloudServiceStatusController *)self _performBlockOnControllerHandlingTheSameAccount:&__block_literal_global_77];
  }
}

- (void)endObservingCloudLibraryEnabled
{
  v3 = +[MPCloudServiceStatusController sharedController];

  if (v3 == self)
  {
    [(MPCloudServiceStatusController *)self _endObservingCloudLibraryEnabled];

    [(MPCloudServiceStatusController *)self _performBlockOnControllerHandlingTheSameAccount:&__block_literal_global_75];
  }
}

- (void)beginObservingMatchStatus
{
  v3 = +[MPCloudServiceStatusController sharedController];

  if (v3 == self)
  {
    [(MPCloudServiceStatusController *)self _beginObservingMatchStatus];

    [(MPCloudServiceStatusController *)self _performBlockOnControllerHandlingTheSameAccount:&__block_literal_global_73];
  }
}

- (BOOL)shouldPlaybackRequireSubscriptionLease
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__MPCloudServiceStatusController_shouldPlaybackRequireSubscriptionLease__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

_BYTE *__72__MPCloudServiceStatusController_shouldPlaybackRequireSubscriptionLease__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[88])
  {
    *(*(*(a1 + 40) + 8) + 24) = result[90];
  }

  else
  {
    result = [result _calculateShouldPlaybackRequireSubscriptionLeaseReturningLikelyToReachRemoteServer:0];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (unint64_t)matchStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MPCloudServiceStatusController_matchStatus__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __45__MPCloudServiceStatusController_matchStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v2 + 80);
  }

  else
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    *(*(*(a1 + 40) + 8) + 24) = [v3 integerForKey:@"_MPCloudServiceStatusControllerMatchStatus"];
  }
}

- (void)_enableICMLErrorReasonChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received notification [%{public}@]", &v7, 0x16u);
  }

  [MPCloudServiceStatusController _postNotificationName:@"MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification" controller:self];
}

- (void)_userIdentityStoreDidChange:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Received notification [%{public}@]", buf, 0x16u);
  }

  cloudLibraryStatusAccessQueue = self->_cloudLibraryStatusAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPCloudServiceStatusController__userIdentityStoreDidChange___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(cloudLibraryStatusAccessQueue, block);
}

void __62__MPCloudServiceStatusController__userIdentityStoreDidChange___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = -1;
  *(*(a1 + 32) + 49) = 0;
  v4 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v5 = [*(a1 + 32) userIdentity];
  v17 = 0;
  v6 = [v4 getPropertiesForUserIdentity:v5 error:&v17];
  v7 = v17;

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v9 userIdentity];
      *buf = 138543874;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "%{public}@ - Error retrieving user identity properties [Processing identity change] - identity=%@ - error=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v11 = [v6 isActiveLocker];
    *(*(a1 + 32) + 32) = v11;
    if (v3 != v11)
    {
      v12 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543874;
        v19 = v13;
        v20 = 2048;
        v21 = v3;
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cloud library status changed [%ld -> %ld] - Posting MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification", buf, 0x20u);
      }

      v14 = *(a1 + 32);
      v15 = *(v14 + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__MPCloudServiceStatusController__userIdentityStoreDidChange___block_invoke_67;
      v16[3] = &unk_1E7682518;
      v16[4] = v14;
      dispatch_async(v15, v16);
    }
  }

  [*(a1 + 32) _updateMatchStatus];
  [*(a1 + 32) _updateSubscriptionAvailability];
}

- (void)_cloudClientAuthenticationDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "%{public}@ - Received notification [ICCloudClientIsAuthenticatedDidChangeNotification]", buf, 0xCu);
  }

  self->_cloudLibraryStatus = -1;
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPCloudServiceStatusController__cloudClientAuthenticationDidChange__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(calloutQueue, block);
}

- (void)_allowsMusicSubscriptionDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Received notification [%{public}@]", &v7, 0x16u);
  }

  self->_hasLoadedSubscriptionAvailability = 0;
  [(MPCloudServiceStatusController *)self _updateSubscriptionAvailability];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v8 = 0;
  v4 = [(MPCloudServiceStatusController *)self _calculateShouldPlaybackRequireSubscriptionLeaseReturningLikelyToReachRemoteServer:&v8];
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__MPCloudServiceStatusController_environmentMonitorDidChangeNetworkReachability___block_invoke;
  v6[3] = &unk_1E7682280;
  v6[4] = self;
  v7 = v4;
  dispatch_async(accessQueue, v6);
}

void __81__MPCloudServiceStatusController_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 90) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 90) = v4;
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__MPCloudServiceStatusController_environmentMonitorDidChangeNetworkReachability___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69E4380];
  v5 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  [v3 removeObserver:self name:v4 object:v5];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69E4140], 0);
  [(ICMusicSubscriptionStatusMonitor *)self->_subscriptionStatusMonitor endObservingSubscriptionStatusWithToken:self->_subscriptionStatusObservationToken];
  v7 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
  [v3 removeObserver:self name:@"MPRestrictionsMonitorMusicSubscriptionDidChangeNotification" object:v7];

  v8.receiver = self;
  v8.super_class = MPCloudServiceStatusController;
  [(MPCloudServiceStatusController *)&v8 dealloc];
}

- (id)_initWithUserIdentity:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = MPCloudServiceStatusController;
  v5 = [(MPCloudServiceStatusController *)&v35 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v37 = v5;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating new controller for user identity %@", buf, 0x16u);
    }

    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPCloudServiceStatusController.accessQueue", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_create("com.apple.MediaPlayer.MPCloudServiceStatusController.calloutQueue", 0);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v9;

    v11 = dispatch_queue_create("com.apple.MediaPlayer.MPCloudServiceStatusController.cloudLibraryStatusAccessQueue", 0);
    cloudLibraryStatusAccessQueue = v5->_cloudLibraryStatusAccessQueue;
    v5->_cloudLibraryStatusAccessQueue = v11;

    v5->_cloudLibraryStatus = -1;
    v13 = [v4 copy];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v13;

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    [v15 addObserver:v5 selector:sel__userIdentityStoreDidChange_ name:*MEMORY[0x1E69E4380] object:v16];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v5 selector:sel__enableICMLErrorReasonChange_ name:*MEMORY[0x1E69E4130] object:0];

    objc_initWeak(&location, v5);
    if (v5->_userIdentity)
    {
      v18 = v5->_userIdentity;
    }

    else
    {
      v18 = [MEMORY[0x1E69E4680] autoupdatingActiveAccount];
    }

    v19 = v18;
    v20 = [MEMORY[0x1E69E44D0] sharedMonitorForIdentity:v18];
    subscriptionStatusMonitor = v5->_subscriptionStatusMonitor;
    v5->_subscriptionStatusMonitor = v20;

    v22 = v5->_subscriptionStatusMonitor;
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __56__MPCloudServiceStatusController__initWithUserIdentity___block_invoke;
    v32 = &unk_1E7676448;
    objc_copyWeak(&v33, &location);
    v23 = [(ICMusicSubscriptionStatusMonitor *)v22 beginObservingSubscriptionStatusWithHandler:&v29];
    subscriptionStatusObservationToken = v5->_subscriptionStatusObservationToken;
    v5->_subscriptionStatusObservationToken = v23;

    v25 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v37 = v5;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_INFO, "%{public}@ - New instance created for user identity: %@", buf, 0x16u);
    }

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    v27 = +[MPRestrictionsMonitor sharedRestrictionsMonitor];
    [v26 addObserver:v5 selector:sel__allowsMusicSubscriptionDidChange_ name:@"MPRestrictionsMonitorMusicSubscriptionDidChangeNotification" object:v27];

    [(MPCloudServiceStatusController *)v5 _updateSubscriptionAvailability];
    objc_destroyWeak(&v33);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__MPCloudServiceStatusController__initWithUserIdentity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MPCloudServiceStatusController__initWithUserIdentity___block_invoke_2;
    block[3] = &unk_1E7682518;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

+ (void)_postNotificationName:(id)a3 controller:(id)a4 userInfo:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting notification [%@]", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:v7 object:v8 userInfo:v9];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__MPCloudServiceStatusController__postNotificationName_controller_userInfo___block_invoke;
    v13[3] = &unk_1E7676470;
    v14 = v7;
    v15 = v9;
    [v8 _performBlockOnControllerHandlingTheSameAccount:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:v7 object:0 userInfo:v9];
  }
}

void __76__MPCloudServiceStatusController__postNotificationName_controller_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Related controller posting notification [%@]", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*(a1 + 32) object:v3 userInfo:*(a1 + 40)];
}

+ (id)_cloudServiceStatusControllerWithUserIdentity:(id)a3 createIfRequired:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4005;
  v25 = __Block_byref_object_dispose__4006;
  v26 = 0;
  v7 = [a1 globalSerialQueue];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __97__MPCloudServiceStatusController__cloudServiceStatusControllerWithUserIdentity_createIfRequired___block_invoke;
  v16 = &unk_1E7676420;
  v8 = v6;
  v20 = v4;
  v18 = &v21;
  v19 = a1;
  v17 = v8;
  dispatch_sync(v7, &v13);

  if (v4)
  {
    v9 = v22[5];
    v10 = [MPCloudServiceStatusController sharedController:v13];
    [v9 _copyObservationStateFrom:v10];
  }

  v11 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __97__MPCloudServiceStatusController__cloudServiceStatusControllerWithUserIdentity_createIfRequired___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) accountDSID];
  if (![(__CFString *)v2 length])
  {

    v2 = @"NoDSID";
  }

  if (*(a1 + 56) == 1)
  {
    v3 = [*(a1 + 48) controllers];
    v4 = [v3 objectForKeyedSubscript:v2];

    if (!v4)
    {
      v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 32);
        v14 = 138543618;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - No pre-existing controller for user identity %@", &v14, 0x16u);
      }

      v8 = [[MPCloudServiceStatusController alloc] _initWithUserIdentity:*(a1 + 32)];
      v9 = [*(a1 + 48) controllers];
      [v9 setObject:v8 forKeyedSubscript:v2];
    }
  }

  v10 = [*(a1 + 48) controllers];
  v11 = [v10 objectForKeyedSubscript:v2];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

+ (MPCloudServiceStatusController)cloudServiceStatusControllerWithUserIdentity:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    v11 = a1;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "%{public}@ - Request for a controller with user identity %@", &v10, 0x16u);
  }

  v6 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v7 = [v6 supportsMultipleITunesAccounts];

  if (v7)
  {
    [MPCloudServiceStatusController _cloudServiceStatusControllerWithUserIdentity:v4 createIfRequired:1];
  }

  else
  {
    +[MPCloudServiceStatusController sharedController];
  }
  v8 = ;

  return v8;
}

@end