@interface ASServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (ASServer)initWithUUID:(id)d client:(id)client activitySharingManager:(id)manager;
- (ASServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)connectionInvalidated;
- (void)remote_acceptCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_acceptInviteRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_cloudKitAccountStatusWithCompletion:(id)completion;
- (void)remote_completeCompetitionWithFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_expireChangeTokenWithCompletion:(id)completion;
- (void)remote_fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)than completion:(id)completion;
- (void)remote_fetchAllDataWithCompletion:(id)completion;
- (void)remote_fetchAllFriendsWithCompletion:(id)completion;
- (void)remote_fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)index withCompletion:(id)completion;
- (void)remote_ignoreCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_ignoreInviteRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_pushActivityDataWithCompletion:(id)completion;
- (void)remote_pushFakeActivityDataWithCompletion:(id)completion;
- (void)remote_removeFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_sendCompetitionRequestToFriendWithUUID:(id)d completion:(id)completion;
- (void)remote_sendInviteRequestToDestination:(id)destination callerID:(id)d serviceIdentifier:(id)identifier completion:(id)completion;
- (void)remote_sendWithdrawInviteRequestToFriendWithUUID:(id)d completion:(id)completion;
@end

@implementation ASServer

- (ASServer)initWithUUID:(id)d client:(id)client activitySharingManager:(id)manager
{
  dCopy = d;
  clientCopy = client;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = ASServer;
  v11 = [(ASServer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_activitySharingManager, manager);
    objc_storeStrong(&v12->_client, client);
    v13 = [dCopy copy];
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

- (void)remote_sendInviteRequestToDestination:(id)destination callerID:(id)d serviceIdentifier:(id)identifier completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  identifierCopy = identifier;
  dCopy = d;
  destinationCopy = destination;
  v13 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager sendInviteRequestToDestination:destinationCopy callerID:dCopy serviceIdentifier:identifierCopy completion:v13];
}

- (void)remote_acceptInviteRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager acceptInviteRequestFromFriendWithUUID:dCopy completion:v7];
}

- (void)remote_sendWithdrawInviteRequestToFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager sendWithdrawInviteRequestToFriendWithUUID:dCopy completion:v7];
}

- (void)remote_ignoreInviteRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager ignoreInviteRequestFromFriendWithUUID:dCopy completion:v7];
}

- (void)remote_removeFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager removeFriendWithUUID:dCopy completion:v7];
}

- (void)remote_pushActivityDataWithCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager pushActivityDataToAllFriendsWithCompletion:v4];
}

- (void)remote_pushFakeActivityDataWithCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager pushFakeActivityDataToAllFriendsWithCompletion:v4];
}

- (void)remote_fetchAllDataWithCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager fetchAllDataWithCompletion:v4];
}

- (void)remote_fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)than completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  v6 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager fetchAllDataIfTimeSinceLastFetchIsGreaterThan:than completion:v6];
}

- (void)remote_cloudKitAccountStatusWithCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedBoolCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager cloudKitAccountStatusWithCompletion:v4];
}

- (void)remote_fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)index withCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  indexCopy = index;
  v7 = _SanitizedBoolCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager fetchAreMultipleDevicesSharingDataForSnapshotIndex:indexCopy withCompletion:v7];
}

- (void)remote_sendCompetitionRequestToFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager sendCompetitionRequestToFriendWithUUID:dCopy completion:v7];
}

- (void)remote_acceptCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager acceptCompetitionRequestFromFriendWithUUID:dCopy completion:v7];
}

- (void)remote_ignoreCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager ignoreCompetitionRequestFromFriendWithUUID:dCopy completion:v7];
}

- (void)remote_completeCompetitionWithFriendWithUUID:(id)d completion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  dCopy = d;
  v7 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager completeCompetitionWithFriendWithUUID:dCopy completion:v7];
}

- (void)remote_expireChangeTokenWithCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  v4 = _SanitizedSuccessCompletion(completion);
  [(ASActivitySharingManager *)activitySharingManager expireChangeTokenWithCompletion:v4];
}

- (void)remote_fetchAllFriendsWithCompletion:(id)completion
{
  activitySharingManager = self->_activitySharingManager;
  completionCopy = completion;
  allFriends = [(ASActivitySharingManager *)activitySharingManager allFriends];
  v5 = ASCodableFriendListFromFriends();
  completionCopy[2](completionCopy, v5, 1, 0);
}

- (ASServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  dCopy = d;
  v10 = [ASServer alloc];
  profile = [clientCopy profile];
  v12 = [ASActivitySharingProfileExtension activitySharingManagerForProfile:profile];
  v13 = [(ASServer *)v10 initWithUUID:dCopy client:clientCopy activitySharingManager:v12];

  return v13;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  clientCopy = client;
  profile = [clientCopy profile];
  v12 = [ASActivitySharingProfileExtension activitySharingManagerForProfile:profile];

  if (v12)
  {
    v13 = [[ASServer alloc] initWithUUID:dCopy client:clientCopy activitySharingManager:v12];
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
      if (error)
      {
        v16 = v15;
        *error = v15;
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