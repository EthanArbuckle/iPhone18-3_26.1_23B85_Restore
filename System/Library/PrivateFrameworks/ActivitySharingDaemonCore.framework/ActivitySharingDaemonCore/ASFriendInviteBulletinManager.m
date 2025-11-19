@interface ASFriendInviteBulletinManager
- (ASFriendInviteBulletinManager)init;
- (ASFriendInviteBulletinManagerDelegate)delegate;
- (id)_inviteNotificationCategories;
- (id)_newPrepolulatedUserInfoForInvitationFromContactUUID:(id)a3 categoryIdentifier:(id)a4 notificationContent:(id)a5 title:(id)a6 message:(id)a7;
- (id)_notificationRequestForInvitationFromContact:(id)a3 categoryIdentifier:(id)a4 requestIdentifier:(id)a5 title:(id)a6 formatString:(id)a7;
- (id)_notificationRequestForInvitationFromContact:(id)a3 requestIdentifier:(id)a4;
- (id)_notificationRequestForInvitationFromContactUUID:(id)a3 categoryIdentifier:(id)a4 requestIdentifier:(id)a5 title:(id)a6 message:(id)a7;
- (id)_userInfoForInvitationResponseFromContact:(id)a3 notificationContent:(id)a4 message:(id)a5;
- (void)_newPrepopulatedNotificationContentForNotificationContent:(id)a3 title:(id)a4 message:(id)a5;
- (void)_showIncompatibleVersionForContact:(id)a3 title:(id)a4 formatString:(id)a5;
- (void)_submitNotificationRequest:(id)a3 forContact:(id)a4;
- (void)activitySharingManagerReady:(id)a3;
- (void)bulletinPostingManager:(id)a3 didReceiveNotificationResponse:(id)a4;
- (void)processPendingResponses;
- (void)processResponse:(id)a3;
- (void)secureCloudReady;
- (void)showErrorAcceptingInviteFrom:(id)a3;
- (void)showInviteAcceptResponseFrom:(id)a3;
- (void)showInviteAttemptNeedToSignInFrom:(id)a3;
- (void)showInviteAttemptNeedToUpgradeFrom:(id)a3;
- (void)showInviteAttemptNeedsSetupFromContact:(id)a3;
- (void)showInviteRequestFromContact:(id)a3 withPostingStyle:(int64_t)a4;
- (void)showMaxNumberOfFriendsError;
- (void)showVersionTooHighForOutgoingInviteTo:(id)a3;
- (void)showVersionTooLowForIncomingInviteFrom:(id)a3;
- (void)showVersionTooLowForOutgoingInviteTo:(id)a3;
- (void)withdrawInviteNotificationsForContact:(id)a3;
@end

@implementation ASFriendInviteBulletinManager

- (ASFriendInviteBulletinManager)init
{
  v10.receiver = self;
  v10.super_class = ASFriendInviteBulletinManager;
  v2 = [(ASFriendInviteBulletinManager *)&v10 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    postedFriendInviteIdentifiersForContactUUID = v2->_postedFriendInviteIdentifiersForContactUUID;
    v2->_postedFriendInviteIdentifiersForContactUUID = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingResponses = v2->_pendingResponses;
    v2->_pendingResponses = v7;
  }

  return v2;
}

- (void)activitySharingManagerReady:(id)a3
{
  v4 = [a3 bulletinPostingManager];
  bulletinPostingManager = self->_bulletinPostingManager;
  self->_bulletinPostingManager = v4;

  [(ASBulletinPostingManager *)self->_bulletinPostingManager setDelegate:self];
  v6 = self->_bulletinPostingManager;
  v7 = [(ASFriendInviteBulletinManager *)self _inviteNotificationCategories];
  [(ASBulletinPostingManager *)v6 registerNotificationCategories:v7];
}

- (id)_inviteNotificationCategories
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE1F80];
  v3 = HKHealthKitFrameworkBundle();
  v4 = *MEMORY[0x277CCC1C8];
  v5 = [v3 localizedStringForKey:@"ACCEPT" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v6 = [v2 actionWithIdentifier:@"Accept" title:v5 options:1];

  v7 = MEMORY[0x277CE1F80];
  v8 = HKHealthKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"IGNORE" value:&stru_2850E59E8 table:v4];
  v10 = [v7 actionWithIdentifier:@"Ignore" title:v9 options:1];

  v11 = MEMORY[0x277CE1F98];
  v12 = *MEMORY[0x277CE91A8];
  v18[0] = v6;
  v18[1] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v14 = [v11 categoryWithIdentifier:v12 actions:v13 intentIdentifiers:MEMORY[0x277CBEBF8] options:0];

  v15 = [MEMORY[0x277CBEB98] setWithObject:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)secureCloudReady
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ASFriendInviteBulletinManager_secureCloudReady__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)showInviteRequestFromContact:(id)a3 withPostingStyle:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ASFriendInviteBulletinManager *)self _isSharingSetup];
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FF8];
  v9 = *MEMORY[0x277CE8FF8];
  v10 = os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT);
  if (a4 == 1 || v7)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Sharing is setup. Showing invite request with actions.", &v16, 2u);
    }

    ASLoggingInitialize();
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v6 UUID];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Showing invitation request bulletin from %{public}@ - %@", &v16, 0x16u);
    }

    v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:v6 requestIdentifier:@"InviteRequest"];
    [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v14 forContact:v6];
  }

  else
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Sharing is not set up. Showing invite request without actions.", &v16, 2u);
    }

    [(ASFriendInviteBulletinManager *)self showInviteAttemptNeedsSetupFromContact:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)showInviteAttemptNeedsSetupFromContact:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 UUID];
    v16 = 138543618;
    v17 = v7;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Notifying about invitation request from %{public}@ - %@", &v16, 0x16u);
  }

  v8 = *MEMORY[0x277CE91A0];
  v9 = HKHealthKitFrameworkBundle();
  v10 = *MEMORY[0x277CCC1C8];
  v11 = [v9 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_SETUP_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v12 = HKHealthKitFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_SETUP_BODY" value:&stru_2850E59E8 table:v10];
  v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:v4 categoryIdentifier:v8 requestIdentifier:@"InviteAttemptNeedsSetup" title:v11 formatString:v13];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v14 forContact:v4];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)showInviteAttemptNeedToSignInFrom:(id)a3
{
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "iCloud is not signed in. Showing invite request with prompts to sign in.", v13, 2u);
  }

  v6 = *MEMORY[0x277CE91A0];
  v7 = HKHealthKitFrameworkBundle();
  v8 = *MEMORY[0x277CCC1C8];
  v9 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_SIGNIN_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v10 = HKHealthKitFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_SIGNIN_BODY" value:&stru_2850E59E8 table:v8];
  v12 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:v4 categoryIdentifier:v6 requestIdentifier:@"InviteAttemptNeedToSignIn" title:v9 formatString:v11];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v12 forContact:v4];
}

- (void)showInviteAttemptNeedToUpgradeFrom:(id)a3
{
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Watch(es) not all on latest watchOS. Showing invite request with prompts to upgrade.", v13, 2u);
  }

  v6 = *MEMORY[0x277CE91A0];
  v7 = HKHealthKitFrameworkBundle();
  v8 = *MEMORY[0x277CCC1C8];
  v9 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_UPGRADE_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v10 = HKHealthKitFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_UPGRADE_BODY" value:&stru_2850E59E8 table:v8];
  v12 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:v4 categoryIdentifier:v6 requestIdentifier:@"InviteAttemptedNeedToUpgrade" title:v9 formatString:v11];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v12 forContact:v4];
}

- (void)_submitNotificationRequest:(id)a3 forContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ASFriendInviteBulletinManager__submitNotificationRequest_forContact___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(notificationQueue, block);
}

uint64_t __71__ASFriendInviteBulletinManager__submitNotificationRequest_forContact___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 48) identifier];
    v3 = *(*(a1 + 40) + 24);
    v4 = [*(a1 + 32) UUID];
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 8);

  return [v6 postNotificationRequest:v5];
}

- (void)withdrawInviteNotificationsForContact:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ASFriendInviteBulletinManager_withdrawInviteNotificationsForContact___block_invoke;
  v7[3] = &unk_278C4B250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(notificationQueue, v7);
}

void __71__ASFriendInviteBulletinManager_withdrawInviteNotificationsForContact___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 UUID];
    v6 = *(a1 + 32);
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Withdrawing invite notification from %{public}@ - %@", &v14, 0x16u);
  }

  v7 = *(*(a1 + 40) + 24);
  v8 = [*(a1 + 32) UUID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [*(*(a1 + 40) + 8) removeNotificationWithIdentifier:v9];
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 24);
    v12 = [v10 UUID];
    [v11 removeObjectForKey:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)showVersionTooLowForIncomingInviteFrom:(id)a3
{
  v4 = a3;
  v5 = HKHealthKitFrameworkBundle();
  v6 = *MEMORY[0x277CCC1C8];
  v9 = [v5 localizedStringForKey:@"ACTIVITY_SHARING_VERSION_TOO_LOW_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_INCOMING_REQUEST_VERSION_TOO_LOW_BODY" value:&stru_2850E59E8 table:v6];

  [(ASFriendInviteBulletinManager *)self _showIncompatibleVersionForContact:v4 title:v9 formatString:v8];
}

- (void)showVersionTooLowForOutgoingInviteTo:(id)a3
{
  v4 = a3;
  v5 = HKHealthKitFrameworkBundle();
  v6 = *MEMORY[0x277CCC1C8];
  v9 = [v5 localizedStringForKey:@"ACTIVITY_SHARING_VERSION_TOO_LOW_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_OUTGOING_REQUEST_VERSION_TOO_LOW_BODY" value:&stru_2850E59E8 table:v6];

  [(ASFriendInviteBulletinManager *)self _showIncompatibleVersionForContact:v4 title:v9 formatString:v8];
}

- (void)showVersionTooHighForOutgoingInviteTo:(id)a3
{
  v4 = a3;
  v5 = HKHealthKitFrameworkBundle();
  v6 = *MEMORY[0x277CCC1C8];
  v9 = [v5 localizedStringForKey:@"ACTIVITY_SHARING_VERSION_TOO_HIGH_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_OUTGOING_REQUEST_VERSION_TOO_HIGH_TITLE" value:&stru_2850E59E8 table:v6];

  [(ASFriendInviteBulletinManager *)self _showIncompatibleVersionForContact:v4 title:v9 formatString:v8];
}

- (void)_showIncompatibleVersionForContact:(id)a3 title:(id)a4 formatString:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 UUID];
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Showing version incompatible notification for %{public}@ - %@", &v16, 0x16u);
  }

  v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:v8 categoryIdentifier:*MEMORY[0x277CE91A0] requestIdentifier:@"InviteIncompatibleVersion" title:v10 formatString:v9];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v14 forContact:v8];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)showInviteAcceptResponseFrom:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 UUID];
    *buf = 138543618;
    v35 = v7;
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Showing invitation response bulletin from %{public}@ - %@", buf, 0x16u);
  }

  v8 = [v4 primaryRelationship];
  v9 = [v8 cloudKitAddress];

  v10 = [v4 displayName];
  v11 = MEMORY[0x277CCACA8];
  v12 = HKHealthKitFrameworkBundle();
  v13 = *MEMORY[0x277CCC1C8];
  v14 = [v12 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_RESPONSE_BODY" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v15 = [v11 stringWithFormat:v14, v10];

  if (v9 && ([v9 isEqualToString:v10] & 1) == 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = HKHealthKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_RESPONSE_BODY_WITH_CLOUDKIT_ADDRESS" value:&stru_2850E59E8 table:v13];
    v19 = [v16 stringWithFormat:v18, v10, v9];

    v15 = v19;
  }

  v20 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v21 = [(ASFriendInviteBulletinManager *)self _userInfoForInvitationResponseFromContact:v4 notificationContent:v20 message:v15];
  [v20 setUserInfo:v21];

  [v20 setCategoryIdentifier:*MEMORY[0x277CE91A0]];
  v22 = [(ASBulletinPostingManager *)self->_bulletinPostingManager topicIdentifiers];
  v23 = *MEMORY[0x277CE9268];
  v24 = [v22 containsObject:*MEMORY[0x277CE9268]];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277CBEB98]);
    v33 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v27 = [v25 initWithArray:v26];

    [v20 setTopicIdentifiers:v27];
  }

  v28 = MEMORY[0x277CE1FC0];
  v29 = [v4 UUID];
  v30 = [v29 UUIDString];
  v31 = [v28 requestWithIdentifier:v30 content:v20 trigger:0];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v31 forContact:v4];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)showErrorAcceptingInviteFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 UUID];
    *buf = 138543618;
    v20 = v6;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Showing invite response error for %{public}@ - %@", buf, 0x16u);
  }

  v7 = [v3 UUID];
  v8 = *MEMORY[0x277CE91A0];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  v11 = HKHealthKitFrameworkBundle();
  v12 = *MEMORY[0x277CCC1C8];
  v13 = [v11 localizedStringForKey:@"ACCEPT" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v14 = HKHealthKitFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"ACTIVITY_SHARING_INVITE_ACCEPT_ERROR" value:&stru_2850E59E8 table:v12];
  v16 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContactUUID:v7 categoryIdentifier:v8 requestIdentifier:v10 title:v13 message:v15];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v16 forContact:v3];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)showMaxNumberOfFriendsError
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Showing max number of friends limit", buf, 2u);
  }

  v4 = HKHealthKitFrameworkBundle();
  v5 = *MEMORY[0x277CCC1C8];
  v6 = [v4 localizedStringForKey:@"ACTIVITY_SHARING_FRIEND_LIMIT_MESSAGE_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = MEMORY[0x277CCACA8];
  v8 = HKHealthKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"ACTIVITY_SHARING_FRIEND_LIMIT_MESSAGE_BODY" value:&stru_2850E59E8 table:v5];
  v10 = [v7 stringWithFormat:v9, *MEMORY[0x277CE9240]];

  v11 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [(ASFriendInviteBulletinManager *)self _newPrepopulatedNotificationContentForNotificationContent:v11 title:v6 message:v10];
  [v11 setCategoryIdentifier:*MEMORY[0x277CE91A0]];
  v12 = MEMORY[0x277CE1FC0];
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v13 UUIDString];
  v15 = [v12 requestWithIdentifier:v14 content:v11 trigger:0];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v15 forContact:0];
}

- (id)_notificationRequestForInvitationFromContact:(id)a3 requestIdentifier:(id)a4
{
  v6 = *MEMORY[0x277CE91A8];
  v7 = a4;
  v8 = a3;
  v9 = HKHealthKitFrameworkBundle();
  v10 = *MEMORY[0x277CCC1C8];
  v11 = [v9 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v12 = HKHealthKitFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_BODY" value:&stru_2850E59E8 table:v10];
  v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:v8 categoryIdentifier:v6 requestIdentifier:v7 title:v11 formatString:v13];

  return v14;
}

- (id)_notificationRequestForInvitationFromContact:(id)a3 categoryIdentifier:(id)a4 requestIdentifier:(id)a5 title:(id)a6 formatString:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v16 UUID];
  v18 = MEMORY[0x277CCACA8];
  v19 = [v16 displayName];

  v20 = [v18 stringWithFormat:v12, v19];

  v21 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContactUUID:v17 categoryIdentifier:v15 requestIdentifier:v14 title:v13 message:v20];

  return v21;
}

- (id)_notificationRequestForInvitationFromContactUUID:(id)a3 categoryIdentifier:(id)a4 requestIdentifier:(id)a5 title:(id)a6 message:(id)a7
{
  v12 = MEMORY[0x277CE1F60];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v12);
  v19 = [(ASFriendInviteBulletinManager *)self _newPrepolulatedUserInfoForInvitationFromContactUUID:v17 categoryIdentifier:v16 notificationContent:v18 title:v14 message:v13];

  [v18 setUserInfo:v19];
  v20 = MEMORY[0x277CCACA8];
  v21 = [v17 UUIDString];

  v22 = [v20 stringWithFormat:@"%@-%@", v21, v15];

  v23 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v22 content:v18 trigger:0];

  return v23;
}

- (id)_newPrepolulatedUserInfoForInvitationFromContactUUID:(id)a3 categoryIdentifier:(id)a4 notificationContent:(id)a5 title:(id)a6 message:(id)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [(ASFriendInviteBulletinManager *)self _newPrepopulatedNotificationContentForNotificationContent:v12 title:a6 message:a7];
  [v12 setCategoryIdentifier:v13];

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [v14 UUIDString];

  [v15 setObject:v16 forKey:@"ASUserInfoIDContactUUID"];
  [v15 setObject:@"ASUserInfoNotificationTypeInviteRequest" forKey:@"ASUserInfoNotificationTypeKey"];
  return v15;
}

- (id)_userInfoForInvitationResponseFromContact:(id)a3 notificationContent:(id)a4 message:(id)a5
{
  v8 = a3;
  [(ASFriendInviteBulletinManager *)self _newPrepopulatedNotificationContentForNotificationContent:a4 title:0 message:a5];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [v8 UUID];

  v11 = [v10 UUIDString];
  [v9 setObject:v11 forKey:@"ASUserInfoIDContactUUID"];

  [v9 setObject:@"ASUserInfoNotificationTypeInviteRequest" forKey:@"ASUserInfoNotificationTypeKey"];

  return v9;
}

- (void)_newPrepopulatedNotificationContentForNotificationContent:(id)a3 title:(id)a4 message:(id)a5
{
  v7 = MEMORY[0x277CE1F70];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [v7 soundWithAlertType:19];
  [v12 setAlertTopic:*MEMORY[0x277D71F98]];
  [v10 setSound:v12];
  v11 = [MEMORY[0x277CBEAA8] date];
  [v10 setDate:v11];

  [v10 setTitle:v9];
  [v10 setBody:v8];
}

- (void)bulletinPostingManager:(id)a3 didReceiveNotificationResponse:(id)a4
{
  v5 = a4;
  notificationQueue = self->_notificationQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__ASFriendInviteBulletinManager_bulletinPostingManager_didReceiveNotificationResponse___block_invoke;
  v8[3] = &unk_278C4B250;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(notificationQueue, v8);
}

uint64_t __87__ASFriendInviteBulletinManager_bulletinPostingManager_didReceiveNotificationResponse___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[32] == 1)
  {
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x277D85DE8];

    return [v2 processResponse:v3];
  }

  else
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Adding response to pending list %@", &v9, 0xCu);
    }

    result = [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
    v8 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)processResponse:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 actionIdentifier];
    v16 = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Handling notification action response: %{public}@ RESPONSE: %{public}@", &v16, 0x16u);
  }

  v8 = [v4 userInfo];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v8 objectForKeyedSubscript:@"ASUserInfoIDContactUUID"];
  v11 = [v9 initWithUUIDString:v10];

  v12 = [v4 actionIdentifier];
  if ([v12 isEqualToString:@"Accept"])
  {
    v13 = 1;
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained friendInviteBulletinManagerDidReceiveActionResponse:v13 fromContactWithUUID:v11];

    goto LABEL_8;
  }

  if ([v12 isEqualToString:@"Ignore"])
  {
    v13 = 0;
    goto LABEL_7;
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processPendingResponses
{
  v18 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    pendingResponses = self->_pendingResponses;
    *buf = 138412290;
    v17 = pendingResponses;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Processing pending responses %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_pendingResponses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ASFriendInviteBulletinManager *)self processResponse:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (ASFriendInviteBulletinManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end