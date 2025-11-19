@interface ASServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (ASServer)initWithUUID:(id)a3 client:(id)a4 activitySharingManager:(id)a5;
- (ASServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)connectionInvalidated;
- (void)remote_acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_acceptInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_cloudKitAccountStatusWithCompletion:(id)a3;
- (void)remote_completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_expireChangeTokenWithCompletion:(id)a3;
- (void)remote_fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4;
- (void)remote_fetchAllDataWithCompletion:(id)a3;
- (void)remote_fetchAllFriendsWithCompletion:(id)a3;
- (void)remote_fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)a3 withCompletion:(id)a4;
- (void)remote_ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_ignoreInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_pushActivityDataWithCompletion:(id)a3;
- (void)remote_pushFakeActivityDataWithCompletion:(id)a3;
- (void)remote_removeFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4;
- (void)remote_sendInviteRequestToDestination:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6;
- (void)remote_sendWithdrawInviteRequestToFriendWithUUID:(id)a3 completion:(id)a4;
@end

@implementation ASServer

- (ASServer)initWithUUID:(id)a3 client:(id)a4 activitySharingManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ASServer;
  v11 = [(ASServer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_activitySharingManager, a5);
    objc_storeStrong(&v12->_client, a4);
    v13 = [v8 copy];
    taskUUID = v12->_taskUUID;
    v12->_taskUUID = v13;

    v15 = HKCreateSerialDispatchQueue();
    serialQueue = v12->_serialQueue;
    v12->_serialQueue = v15;
  }

  return v12;
}

- (void)connectionInvalidated
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASServer_connectionInvalidated__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __33__ASServer_connectionInvalidated__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) connection];
  [v1 invalidate];
}

- (void)remote_sendInviteRequestToDestination:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6
{
  activitySharingManager = self->_activitySharingManager;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = _SanitizedSuccessCompletion(a6);
  [(ASActivitySharingManager *)activitySharingManager sendInviteRequestToDestination:v12 callerID:v11 serviceIdentifier:v10 completion:v13];
}

- (void)remote_acceptInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager acceptInviteRequestFromFriendWithUUID:v6 completion:v7];
}

- (void)remote_sendWithdrawInviteRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager sendWithdrawInviteRequestToFriendWithUUID:v6 completion:v7];
}

- (void)remote_ignoreInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager ignoreInviteRequestFromFriendWithUUID:v6 completion:v7];
}

- (void)remote_removeFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager removeFriendWithUUID:v6 completion:v7];
}

- (void)remote_pushActivityDataWithCompletion:(id)a3
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(a3);
  [(ASActivitySharingManager *)activitySharingManager pushActivityDataToAllFriendsWithCompletion:v4];
}

- (void)remote_pushFakeActivityDataWithCompletion:(id)a3
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(a3);
  [(ASActivitySharingManager *)activitySharingManager pushFakeActivityDataToAllFriendsWithCompletion:v4];
}

- (void)remote_fetchAllDataWithCompletion:(id)a3
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(a3);
  [(ASActivitySharingManager *)activitySharingManager fetchAllDataWithCompletion:v4];
}

- (void)remote_fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager fetchAllDataIfTimeSinceLastFetchIsGreaterThan:a3 completion:v6];
}

- (void)remote_cloudKitAccountStatusWithCompletion:(id)a3
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedBoolCompletion(a3);
  [(ASActivitySharingManager *)activitySharingManager cloudKitAccountStatusWithCompletion:v4];
}

- (void)remote_fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)a3 withCompletion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedBoolCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager fetchAreMultipleDevicesSharingDataForSnapshotIndex:v6 withCompletion:v7];
}

- (void)remote_sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager sendCompetitionRequestToFriendWithUUID:v6 completion:v7];
}

- (void)remote_acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager acceptCompetitionRequestFromFriendWithUUID:v6 completion:v7];
}

- (void)remote_ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager ignoreCompetitionRequestFromFriendWithUUID:v6 completion:v7];
}

- (void)remote_completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4
{
  activitySharingManager = self->_activitySharingManager;
  v6 = a3;
  v7 = _SanitizedSuccessCompletion(a4);
  [(ASActivitySharingManager *)activitySharingManager completeCompetitionWithFriendWithUUID:v6 completion:v7];
}

- (void)remote_expireChangeTokenWithCompletion:(id)a3
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(a3);
  [(ASActivitySharingManager *)activitySharingManager expireChangeTokenWithCompletion:v4];
}

- (void)remote_fetchAllFriendsWithCompletion:(id)a3
{
  activitySharingManager = self->_activitySharingManager;
  v4 = a3;
  v6 = [(ASActivitySharingManager *)activitySharingManager allFriends];
  v5 = ASCodableFriendListFromFriends();
  v4[2](v4, v5, 1, 0);
}

- (ASServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v8 = a5;
  v9 = a3;
  v10 = [ASServer alloc];
  v11 = [v8 profile];
  v12 = [ASActivitySharingProfileExtension activitySharingManagerForProfile:v11];
  v13 = [(ASServer *)v10 initWithUUID:v9 client:v8 activitySharingManager:v12];

  return v13;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v9 = a3;
  v10 = a5;
  v11 = [v10 profile];
  v12 = [ASActivitySharingProfileExtension activitySharingManagerForProfile:v11];

  if (v12)
  {
    v13 = [[ASServer alloc] initWithUUID:v9 client:v10 activitySharingManager:v12];
  }

  else
  {
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
    {
      [ASServer createTaskServerWithUUID:v14 configuration:? client:? delegate:? error:?];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:0 userInfo:0];
    if (v15)
    {
      if (a7)
      {
        v16 = v15;
        *a7 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v13 = 0;
  }

  return v13;
}

@end