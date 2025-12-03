@interface SKPrivacyController
+ (id)_sharedCloudServiceStatusMonitor;
+ (int64_t)_authorizationStatusFromUnderlyingAuthorizationStatus:(int64_t)status;
+ (int64_t)authorizationStatus;
+ (void)requestAuthorization:(id)authorization;
@end

@implementation SKPrivacyController

+ (id)_sharedCloudServiceStatusMonitor
{
  if (_sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitorOnceToken != -1)
  {
    +[SKPrivacyController _sharedCloudServiceStatusMonitor];
  }

  v3 = _sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitor;

  return v3;
}

void __55__SKPrivacyController__sharedCloudServiceStatusMonitor__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getICCloudServiceStatusMonitorClass_softClass;
  v8 = getICCloudServiceStatusMonitorClass_softClass;
  if (!getICCloudServiceStatusMonitorClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getICCloudServiceStatusMonitorClass_block_invoke;
    v4[3] = &unk_1E7B279A8;
    v4[4] = &v5;
    __getICCloudServiceStatusMonitorClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = _sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitor;
  _sharedCloudServiceStatusMonitor_sSharedCloudServiceStatusMonitor = v2;
}

+ (int64_t)_authorizationStatusFromUnderlyingAuthorizationStatus:(int64_t)status
{
  if ((status - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

+ (int64_t)authorizationStatus
{
  _sharedCloudServiceStatusMonitor = [self _sharedCloudServiceStatusMonitor];
  v4 = [_sharedCloudServiceStatusMonitor authorizationStatusForScopes:1];

  return [self _authorizationStatusFromUnderlyingAuthorizationStatus:v4];
}

+ (void)requestAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  _sharedCloudServiceStatusMonitor = [self _sharedCloudServiceStatusMonitor];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SKPrivacyController_requestAuthorization___block_invoke;
  v7[3] = &unk_1E7B27D40;
  v8 = authorizationCopy;
  selfCopy = self;
  v6 = authorizationCopy;
  [_sharedCloudServiceStatusMonitor requestAuthorizationForScopes:1 completionHandler:v7];
}

uint64_t __44__SKPrivacyController_requestAuthorization___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    v2 = result;
    [*(result + 40) _authorizationStatusFromUnderlyingAuthorizationStatus:a2];
    v3 = *(*(v2 + 32) + 16);

    return v3();
  }

  return result;
}

@end