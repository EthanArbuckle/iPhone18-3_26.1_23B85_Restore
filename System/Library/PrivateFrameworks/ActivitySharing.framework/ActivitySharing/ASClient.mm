@interface ASClient
- (ASClient)initWithHealthStore:(id)a3;
- (id)_clientQueueSuccessCompletion:(id)a3;
- (void)_remoteProxy:(id)a3 errorHandler:(id)a4;
- (void)acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)acceptInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)allFriendsWithCompletion:(id)a3;
- (void)clearFriendListWithCompletion:(id)a3;
- (void)cloudKitAccountStatusWithCompletion:(id)a3;
- (void)completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4;
- (void)expireChangeTokenWithCompletion:(id)a3;
- (void)fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4;
- (void)fetchAllDataWithCompletion:(id)a3;
- (void)fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)a3 withCompletion:(id)a4;
- (void)friendWithRemoteUUID:(id)a3 completion:(id)a4;
- (void)handleNotificationResponse:(id)a3 completion:(id)a4;
- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)ignoreInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)pushActivityDataToAllFriendsWithCompletion:(id)a3;
- (void)pushFakeActivityDataToAllFriendsWithCompletion:(id)a3;
- (void)queryAppBadgeCountWithCompletion:(id)a3;
- (void)removeFriendWithUUID:(id)a3 completion:(id)a4;
- (void)sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4;
- (void)sendInviteRequestToDestination:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6;
- (void)sendWithdrawInviteRequestToFriendWithUUID:(id)a3 completion:(id)a4;
- (void)setActivityDataVisible:(BOOL)a3 toFriendWithUUID:(id)a4 completion:(id)a5;
- (void)setMuteEnabled:(BOOL)a3 forFriendWithUUID:(id)a4 completion:(id)a5;
@end

@implementation ASClient

- (ASClient)initWithHealthStore:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASClient;
  v5 = [(ASClient *)&v16 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    serverQueue = v5->_serverQueue;
    v5->_serverQueue = v6;

    v8 = HKCreateSerialDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v8;

    v10 = objc_alloc(MEMORY[0x277CCDAA0]);
    v11 = ASClientTaskIdentifier();
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v10 initWithHealthStore:v4 taskIdentifier:v11 exportedObject:v5 taskUUID:v12];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v13;
  }

  return v5;
}

- (void)sendInviteRequestToDestination:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(ASClient *)self _clientQueueSuccessCompletion:a6];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__ASClient_sendInviteRequestToDestination_callerID_serviceIdentifier_completion___block_invoke;
  v20[3] = &unk_278C46770;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__ASClient_sendInviteRequestToDestination_callerID_serviceIdentifier_completion___block_invoke_2;
  v18[3] = &unk_278C46798;
  v19 = v24;
  v14 = v24;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(ASClient *)self _remoteProxy:v20 errorHandler:v18];
}

- (void)acceptInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ASClient_acceptInviteRequestFromFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ASClient_acceptInviteRequestFromFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)sendWithdrawInviteRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ASClient_sendWithdrawInviteRequestToFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ASClient_sendWithdrawInviteRequestToFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)ignoreInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ASClient_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ASClient_ignoreInviteRequestFromFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__ASClient_sendCompetitionRequestToFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ASClient_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__ASClient_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ASClient_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__ASClient_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ASClient_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ASClient_completeCompetitionWithFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ASClient_completeCompetitionWithFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)setActivityDataVisible:(BOOL)a3 toFriendWithUUID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = [(ASClient *)self _clientQueueSuccessCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ASClient_setActivityDataVisible_toFriendWithUUID_completion___block_invoke;
  v14[3] = &unk_278C467E8;
  v17 = a3;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ASClient_setActivityDataVisible_toFriendWithUUID_completion___block_invoke_2;
  v12[3] = &unk_278C46798;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(ASClient *)self _remoteProxy:v14 errorHandler:v12];
}

- (void)setMuteEnabled:(BOOL)a3 forFriendWithUUID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = [(ASClient *)self _clientQueueSuccessCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__ASClient_setMuteEnabled_forFriendWithUUID_completion___block_invoke;
  v14[3] = &unk_278C467E8;
  v17 = a3;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ASClient_setMuteEnabled_forFriendWithUUID_completion___block_invoke_2;
  v12[3] = &unk_278C46798;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(ASClient *)self _remoteProxy:v14 errorHandler:v12];
}

- (void)removeFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ASClient_removeFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__ASClient_removeFriendWithUUID_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)pushActivityDataToAllFriendsWithCompletion:(id)a3
{
  v4 = [(ASClient *)self _clientQueueSuccessCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ASClient_pushActivityDataToAllFriendsWithCompletion___block_invoke;
  v8[3] = &unk_278C46810;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ASClient_pushActivityDataToAllFriendsWithCompletion___block_invoke_2;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

- (void)pushFakeActivityDataToAllFriendsWithCompletion:(id)a3
{
  v4 = [(ASClient *)self _clientQueueSuccessCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ASClient_pushFakeActivityDataToAllFriendsWithCompletion___block_invoke;
  v8[3] = &unk_278C46810;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ASClient_pushFakeActivityDataToAllFriendsWithCompletion___block_invoke_2;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

- (void)fetchAllDataWithCompletion:(id)a3
{
  v4 = [(ASClient *)self _clientQueueSuccessCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__ASClient_fetchAllDataWithCompletion___block_invoke;
  v8[3] = &unk_278C46810;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ASClient_fetchAllDataWithCompletion___block_invoke_2;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

- (void)fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4
{
  v6 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ASClient_fetchAllDataIfTimeSinceLastFetchIsGreaterThan_completion___block_invoke;
  v10[3] = &unk_278C46838;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ASClient_fetchAllDataIfTimeSinceLastFetchIsGreaterThan_completion___block_invoke_2;
  v8[3] = &unk_278C46798;
  v9 = v11;
  v7 = v11;
  [(ASClient *)self _remoteProxy:v10 errorHandler:v8];
}

- (void)cloudKitAccountStatusWithCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ASClient_cloudKitAccountStatusWithCompletion___block_invoke;
  v8[3] = &unk_278C468B0;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ASClient_cloudKitAccountStatusWithCompletion___block_invoke_4;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

void __48__ASClient_cloudKitAccountStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ASClient_cloudKitAccountStatusWithCompletion___block_invoke_2;
  v5[3] = &unk_278C46888;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 remote_cloudKitAccountStatusWithCompletion:v5];
}

void __48__ASClient_cloudKitAccountStatusWithCompletion___block_invoke_2(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ASClient_cloudKitAccountStatusWithCompletion___block_invoke_3;
    block[3] = &unk_278C46860;
    v12 = v8;
    v13 = a2;
    v14 = a3;
    v11 = v7;
    dispatch_async(v9, block);
  }
}

- (void)clearFriendListWithCompletion:(id)a3
{
  v4 = [(ASClient *)self _clientQueueSuccessCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ASClient_clearFriendListWithCompletion___block_invoke;
  v8[3] = &unk_278C468B0;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ASClient_clearFriendListWithCompletion___block_invoke_4;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

void __42__ASClient_clearFriendListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASClient_clearFriendListWithCompletion___block_invoke_2;
  v5[3] = &unk_278C46900;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 remote_clearFriendListWithCompletion:v5];
}

void __42__ASClient_clearFriendListWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ASClient_clearFriendListWithCompletion___block_invoke_3;
    block[3] = &unk_278C468D8;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__ASClient_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ASClient_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_3;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

void __78__ASClient_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__ASClient_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_2;
  v4[3] = &unk_278C46928;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_fetchAreMultipleDevicesSharingDataForSnapshotIndex:v3 withCompletion:v4];
}

uint64_t __78__ASClient_fetchAreMultipleDevicesSharingDataForSnapshotIndex_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)expireChangeTokenWithCompletion:(id)a3
{
  v4 = [(ASClient *)self _clientQueueSuccessCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ASClient_expireChangeTokenWithCompletion___block_invoke;
  v8[3] = &unk_278C46810;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ASClient_expireChangeTokenWithCompletion___block_invoke_2;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

- (void)allFriendsWithCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ASClient_allFriendsWithCompletion___block_invoke;
  v8[3] = &unk_278C46810;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ASClient_allFriendsWithCompletion___block_invoke_3;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

void __37__ASClient_allFriendsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__ASClient_allFriendsWithCompletion___block_invoke_2;
  v3[3] = &unk_278C46950;
  v4 = *(a1 + 32);
  [a2 remote_fetchAllFriendsWithCompletion:v3];
}

- (void)friendWithRemoteUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__ASClient_friendWithRemoteUUID_completion___block_invoke;
  v16[3] = &unk_278C469A0;
  v16[4] = self;
  v17 = v7;
  v8 = MEMORY[0x23EF0CB70](v16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__ASClient_friendWithRemoteUUID_completion___block_invoke_3;
  v13[3] = &unk_278C467C0;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ASClient_friendWithRemoteUUID_completion___block_invoke_5;
  v11[3] = &unk_278C46798;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(ASClient *)self _remoteProxy:v13 errorHandler:v11];
}

void __44__ASClient_friendWithRemoteUUID_completion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__ASClient_friendWithRemoteUUID_completion___block_invoke_2;
  v13[3] = &unk_278C46978;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

uint64_t __44__ASClient_friendWithRemoteUUID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 56), *(a1 + 40));
  }

  return result;
}

void __44__ASClient_friendWithRemoteUUID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ASClient_friendWithRemoteUUID_completion___block_invoke_4;
  v4[3] = &unk_278C469C8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_friendWithRemoteUUID:v3 completion:v4];
}

void __44__ASClient_friendWithRemoteUUID_completion___block_invoke_4(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  v8 = 0;
  v11 = v7;
  if (a2 && !v7 && a3)
  {
    v9 = a2;
    v10 = [[ASCodableFriend alloc] initWithData:v9];

    v8 = [ASFriend friendWithCodableFriend:v10];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleNotificationResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(ASClient *)self _clientQueueSuccessCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__ASClient_handleNotificationResponse_completion___block_invoke;
  v12[3] = &unk_278C467C0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ASClient_handleNotificationResponse_completion___block_invoke_2;
  v10[3] = &unk_278C46798;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(ASClient *)self _remoteProxy:v12 errorHandler:v10];
}

- (void)queryAppBadgeCountWithCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ASClient_queryAppBadgeCountWithCompletion___block_invoke;
  v8[3] = &unk_278C46810;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASClient_queryAppBadgeCountWithCompletion___block_invoke_3;
  v6[3] = &unk_278C46798;
  v7 = v9;
  v5 = v9;
  [(ASClient *)self _remoteProxy:v8 errorHandler:v6];
}

void __45__ASClient_queryAppBadgeCountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ASClient_queryAppBadgeCountWithCompletion___block_invoke_2;
  v3[3] = &unk_278C469F0;
  v4 = *(a1 + 32);
  [a2 remote_queryAppBadgeCountWithCompletion:v3];
}

- (void)_remoteProxy:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serverQueue = self->_serverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ASClient__remoteProxy_errorHandler___block_invoke;
  block[3] = &unk_278C46A18;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serverQueue, block);
}

void __38__ASClient__remoteProxy_errorHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__ASClient__remoteProxy_errorHandler___block_invoke_2;
  v3[3] = &unk_278C46798;
  v4 = *(a1 + 48);
  [v2 fetchProxyWithHandler:v1 errorHandler:v3];
}

void __38__ASClient__remoteProxy_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
  {
    __38__ASClient__remoteProxy_errorHandler___block_invoke_2_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_clientQueueSuccessCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ASClient__clientQueueSuccessCompletion___block_invoke;
  v8[3] = &unk_278C46900;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x23EF0CB70](v8);

  return v6;
}

void __42__ASClient__clientQueueSuccessCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ASClient__clientQueueSuccessCompletion___block_invoke_2;
    block[3] = &unk_278C468D8;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __38__ASClient__remoteProxy_errorHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Unable to get plugin proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end