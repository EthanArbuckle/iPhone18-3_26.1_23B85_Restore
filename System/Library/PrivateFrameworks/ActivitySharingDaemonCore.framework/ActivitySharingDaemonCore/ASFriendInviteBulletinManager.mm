@interface ASFriendInviteBulletinManager
- (ASFriendInviteBulletinManager)init;
- (ASFriendInviteBulletinManagerDelegate)delegate;
- (id)_inviteNotificationCategories;
- (id)_newPrepolulatedUserInfoForInvitationFromContactUUID:(id)d categoryIdentifier:(id)identifier notificationContent:(id)content title:(id)title message:(id)message;
- (id)_notificationRequestForInvitationFromContact:(id)contact categoryIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier title:(id)title formatString:(id)string;
- (id)_notificationRequestForInvitationFromContact:(id)contact requestIdentifier:(id)identifier;
- (id)_notificationRequestForInvitationFromContactUUID:(id)d categoryIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier title:(id)title message:(id)message;
- (id)_userInfoForInvitationResponseFromContact:(id)contact notificationContent:(id)content message:(id)message;
- (void)_newPrepopulatedNotificationContentForNotificationContent:(id)content title:(id)title message:(id)message;
- (void)_showIncompatibleVersionForContact:(id)contact title:(id)title formatString:(id)string;
- (void)_submitNotificationRequest:(id)request forContact:(id)contact;
- (void)activitySharingManagerReady:(id)ready;
- (void)bulletinPostingManager:(id)manager didReceiveNotificationResponse:(id)response;
- (void)processPendingResponses;
- (void)processResponse:(id)response;
- (void)secureCloudReady;
- (void)showErrorAcceptingInviteFrom:(id)from;
- (void)showInviteAcceptResponseFrom:(id)from;
- (void)showInviteAttemptNeedToSignInFrom:(id)from;
- (void)showInviteAttemptNeedToUpgradeFrom:(id)from;
- (void)showInviteAttemptNeedsSetupFromContact:(id)contact;
- (void)showInviteRequestFromContact:(id)contact withPostingStyle:(int64_t)style;
- (void)showMaxNumberOfFriendsError;
- (void)showVersionTooHighForOutgoingInviteTo:(id)to;
- (void)showVersionTooLowForIncomingInviteFrom:(id)from;
- (void)showVersionTooLowForOutgoingInviteTo:(id)to;
- (void)withdrawInviteNotificationsForContact:(id)contact;
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

- (void)activitySharingManagerReady:(id)ready
{
  bulletinPostingManager = [ready bulletinPostingManager];
  bulletinPostingManager = self->_bulletinPostingManager;
  self->_bulletinPostingManager = bulletinPostingManager;

  [(ASBulletinPostingManager *)self->_bulletinPostingManager setDelegate:self];
  v6 = self->_bulletinPostingManager;
  _inviteNotificationCategories = [(ASFriendInviteBulletinManager *)self _inviteNotificationCategories];
  [(ASBulletinPostingManager *)v6 registerNotificationCategories:_inviteNotificationCategories];
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

- (void)showInviteRequestFromContact:(id)contact withPostingStyle:(int64_t)style
{
  v20 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  _isSharingSetup = [(ASFriendInviteBulletinManager *)self _isSharingSetup];
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FF8];
  v9 = *MEMORY[0x277CE8FF8];
  v10 = os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT);
  if (style == 1 || _isSharingSetup)
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
      uUID = [contactCopy UUID];
      v16 = 138543618;
      v17 = uUID;
      v18 = 2112;
      v19 = contactCopy;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Showing invitation request bulletin from %{public}@ - %@", &v16, 0x16u);
    }

    v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:contactCopy requestIdentifier:@"InviteRequest"];
    [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v14 forContact:contactCopy];
  }

  else
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Sharing is not set up. Showing invite request without actions.", &v16, 2u);
    }

    [(ASFriendInviteBulletinManager *)self showInviteAttemptNeedsSetupFromContact:contactCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)showInviteAttemptNeedsSetupFromContact:(id)contact
{
  v20 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [contactCopy UUID];
    v16 = 138543618;
    v17 = uUID;
    v18 = 2112;
    v19 = contactCopy;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Notifying about invitation request from %{public}@ - %@", &v16, 0x16u);
  }

  v8 = *MEMORY[0x277CE91A0];
  v9 = HKHealthKitFrameworkBundle();
  v10 = *MEMORY[0x277CCC1C8];
  v11 = [v9 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_SETUP_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v12 = HKHealthKitFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_SETUP_BODY" value:&stru_2850E59E8 table:v10];
  v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:contactCopy categoryIdentifier:v8 requestIdentifier:@"InviteAttemptNeedsSetup" title:v11 formatString:v13];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v14 forContact:contactCopy];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)showInviteAttemptNeedToSignInFrom:(id)from
{
  fromCopy = from;
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
  v12 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:fromCopy categoryIdentifier:v6 requestIdentifier:@"InviteAttemptNeedToSignIn" title:v9 formatString:v11];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v12 forContact:fromCopy];
}

- (void)showInviteAttemptNeedToUpgradeFrom:(id)from
{
  fromCopy = from;
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
  v12 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:fromCopy categoryIdentifier:v6 requestIdentifier:@"InviteAttemptedNeedToUpgrade" title:v9 formatString:v11];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v12 forContact:fromCopy];
}

- (void)_submitNotificationRequest:(id)request forContact:(id)contact
{
  requestCopy = request;
  contactCopy = contact;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ASFriendInviteBulletinManager__submitNotificationRequest_forContact___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = contactCopy;
  selfCopy = self;
  v14 = requestCopy;
  v9 = requestCopy;
  v10 = contactCopy;
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

- (void)withdrawInviteNotificationsForContact:(id)contact
{
  contactCopy = contact;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ASFriendInviteBulletinManager_withdrawInviteNotificationsForContact___block_invoke;
  v7[3] = &unk_278C4B250;
  v8 = contactCopy;
  selfCopy = self;
  v6 = contactCopy;
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

- (void)showVersionTooLowForIncomingInviteFrom:(id)from
{
  fromCopy = from;
  v5 = HKHealthKitFrameworkBundle();
  v6 = *MEMORY[0x277CCC1C8];
  v9 = [v5 localizedStringForKey:@"ACTIVITY_SHARING_VERSION_TOO_LOW_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_INCOMING_REQUEST_VERSION_TOO_LOW_BODY" value:&stru_2850E59E8 table:v6];

  [(ASFriendInviteBulletinManager *)self _showIncompatibleVersionForContact:fromCopy title:v9 formatString:v8];
}

- (void)showVersionTooLowForOutgoingInviteTo:(id)to
{
  toCopy = to;
  v5 = HKHealthKitFrameworkBundle();
  v6 = *MEMORY[0x277CCC1C8];
  v9 = [v5 localizedStringForKey:@"ACTIVITY_SHARING_VERSION_TOO_LOW_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_OUTGOING_REQUEST_VERSION_TOO_LOW_BODY" value:&stru_2850E59E8 table:v6];

  [(ASFriendInviteBulletinManager *)self _showIncompatibleVersionForContact:toCopy title:v9 formatString:v8];
}

- (void)showVersionTooHighForOutgoingInviteTo:(id)to
{
  toCopy = to;
  v5 = HKHealthKitFrameworkBundle();
  v6 = *MEMORY[0x277CCC1C8];
  v9 = [v5 localizedStringForKey:@"ACTIVITY_SHARING_VERSION_TOO_HIGH_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];

  v7 = HKHealthKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ACTIVITY_SHARING_OUTGOING_REQUEST_VERSION_TOO_HIGH_TITLE" value:&stru_2850E59E8 table:v6];

  [(ASFriendInviteBulletinManager *)self _showIncompatibleVersionForContact:toCopy title:v9 formatString:v8];
}

- (void)_showIncompatibleVersionForContact:(id)contact title:(id)title formatString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  stringCopy = string;
  titleCopy = title;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    uUID = [contactCopy UUID];
    v16 = 138543618;
    v17 = uUID;
    v18 = 2112;
    v19 = contactCopy;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Showing version incompatible notification for %{public}@ - %@", &v16, 0x16u);
  }

  v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:contactCopy categoryIdentifier:*MEMORY[0x277CE91A0] requestIdentifier:@"InviteIncompatibleVersion" title:titleCopy formatString:stringCopy];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v14 forContact:contactCopy];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)showInviteAcceptResponseFrom:(id)from
{
  v38 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [fromCopy UUID];
    *buf = 138543618;
    v35 = uUID;
    v36 = 2112;
    v37 = fromCopy;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Showing invitation response bulletin from %{public}@ - %@", buf, 0x16u);
  }

  primaryRelationship = [fromCopy primaryRelationship];
  cloudKitAddress = [primaryRelationship cloudKitAddress];

  displayName = [fromCopy displayName];
  v11 = MEMORY[0x277CCACA8];
  v12 = HKHealthKitFrameworkBundle();
  v13 = *MEMORY[0x277CCC1C8];
  v14 = [v12 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_RESPONSE_BODY" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v15 = [v11 stringWithFormat:v14, displayName];

  if (cloudKitAddress && ([cloudKitAddress isEqualToString:displayName] & 1) == 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = HKHealthKitFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_RESPONSE_BODY_WITH_CLOUDKIT_ADDRESS" value:&stru_2850E59E8 table:v13];
    v19 = [v16 stringWithFormat:v18, displayName, cloudKitAddress];

    v15 = v19;
  }

  v20 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v21 = [(ASFriendInviteBulletinManager *)self _userInfoForInvitationResponseFromContact:fromCopy notificationContent:v20 message:v15];
  [v20 setUserInfo:v21];

  [v20 setCategoryIdentifier:*MEMORY[0x277CE91A0]];
  topicIdentifiers = [(ASBulletinPostingManager *)self->_bulletinPostingManager topicIdentifiers];
  v23 = *MEMORY[0x277CE9268];
  v24 = [topicIdentifiers containsObject:*MEMORY[0x277CE9268]];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277CBEB98]);
    v33 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v27 = [v25 initWithArray:v26];

    [v20 setTopicIdentifiers:v27];
  }

  v28 = MEMORY[0x277CE1FC0];
  uUID2 = [fromCopy UUID];
  uUIDString = [uUID2 UUIDString];
  v31 = [v28 requestWithIdentifier:uUIDString content:v20 trigger:0];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v31 forContact:fromCopy];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)showErrorAcceptingInviteFrom:(id)from
{
  v23 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    uUID = [fromCopy UUID];
    *buf = 138543618;
    v20 = uUID;
    v21 = 2112;
    v22 = fromCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Showing invite response error for %{public}@ - %@", buf, 0x16u);
  }

  uUID2 = [fromCopy UUID];
  v8 = *MEMORY[0x277CE91A0];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID3 UUIDString];
  v11 = HKHealthKitFrameworkBundle();
  v12 = *MEMORY[0x277CCC1C8];
  v13 = [v11 localizedStringForKey:@"ACCEPT" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v14 = HKHealthKitFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"ACTIVITY_SHARING_INVITE_ACCEPT_ERROR" value:&stru_2850E59E8 table:v12];
  v16 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContactUUID:uUID2 categoryIdentifier:v8 requestIdentifier:uUIDString title:v13 message:v15];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v16 forContact:fromCopy];
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [v12 requestWithIdentifier:uUIDString content:v11 trigger:0];

  [(ASFriendInviteBulletinManager *)self _submitNotificationRequest:v15 forContact:0];
}

- (id)_notificationRequestForInvitationFromContact:(id)contact requestIdentifier:(id)identifier
{
  v6 = *MEMORY[0x277CE91A8];
  identifierCopy = identifier;
  contactCopy = contact;
  v9 = HKHealthKitFrameworkBundle();
  v10 = *MEMORY[0x277CCC1C8];
  v11 = [v9 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_TITLE" value:&stru_2850E59E8 table:*MEMORY[0x277CCC1C8]];
  v12 = HKHealthKitFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"ACTIVITY_SHARING_INVITATION_REQUEST_BODY" value:&stru_2850E59E8 table:v10];
  v14 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContact:contactCopy categoryIdentifier:v6 requestIdentifier:identifierCopy title:v11 formatString:v13];

  return v14;
}

- (id)_notificationRequestForInvitationFromContact:(id)contact categoryIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier title:(id)title formatString:(id)string
{
  stringCopy = string;
  titleCopy = title;
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  contactCopy = contact;
  uUID = [contactCopy UUID];
  v18 = MEMORY[0x277CCACA8];
  displayName = [contactCopy displayName];

  v20 = [v18 stringWithFormat:stringCopy, displayName];

  v21 = [(ASFriendInviteBulletinManager *)self _notificationRequestForInvitationFromContactUUID:uUID categoryIdentifier:identifierCopy requestIdentifier:requestIdentifierCopy title:titleCopy message:v20];

  return v21;
}

- (id)_notificationRequestForInvitationFromContactUUID:(id)d categoryIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier title:(id)title message:(id)message
{
  v12 = MEMORY[0x277CE1F60];
  messageCopy = message;
  titleCopy = title;
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  v18 = objc_alloc_init(v12);
  v19 = [(ASFriendInviteBulletinManager *)self _newPrepolulatedUserInfoForInvitationFromContactUUID:dCopy categoryIdentifier:identifierCopy notificationContent:v18 title:titleCopy message:messageCopy];

  [v18 setUserInfo:v19];
  v20 = MEMORY[0x277CCACA8];
  uUIDString = [dCopy UUIDString];

  requestIdentifierCopy = [v20 stringWithFormat:@"%@-%@", uUIDString, requestIdentifierCopy];

  v23 = [MEMORY[0x277CE1FC0] requestWithIdentifier:requestIdentifierCopy content:v18 trigger:0];

  return v23;
}

- (id)_newPrepolulatedUserInfoForInvitationFromContactUUID:(id)d categoryIdentifier:(id)identifier notificationContent:(id)content title:(id)title message:(id)message
{
  contentCopy = content;
  identifierCopy = identifier;
  dCopy = d;
  [(ASFriendInviteBulletinManager *)self _newPrepopulatedNotificationContentForNotificationContent:contentCopy title:title message:message];
  [contentCopy setCategoryIdentifier:identifierCopy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uUIDString = [dCopy UUIDString];

  [dictionary setObject:uUIDString forKey:@"ASUserInfoIDContactUUID"];
  [dictionary setObject:@"ASUserInfoNotificationTypeInviteRequest" forKey:@"ASUserInfoNotificationTypeKey"];
  return dictionary;
}

- (id)_userInfoForInvitationResponseFromContact:(id)contact notificationContent:(id)content message:(id)message
{
  contactCopy = contact;
  [(ASFriendInviteBulletinManager *)self _newPrepopulatedNotificationContentForNotificationContent:content title:0 message:message];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uUID = [contactCopy UUID];

  uUIDString = [uUID UUIDString];
  [dictionary setObject:uUIDString forKey:@"ASUserInfoIDContactUUID"];

  [dictionary setObject:@"ASUserInfoNotificationTypeInviteRequest" forKey:@"ASUserInfoNotificationTypeKey"];

  return dictionary;
}

- (void)_newPrepopulatedNotificationContentForNotificationContent:(id)content title:(id)title message:(id)message
{
  v7 = MEMORY[0x277CE1F70];
  messageCopy = message;
  titleCopy = title;
  contentCopy = content;
  v12 = [v7 soundWithAlertType:19];
  [v12 setAlertTopic:*MEMORY[0x277D71F98]];
  [contentCopy setSound:v12];
  date = [MEMORY[0x277CBEAA8] date];
  [contentCopy setDate:date];

  [contentCopy setTitle:titleCopy];
  [contentCopy setBody:messageCopy];
}

- (void)bulletinPostingManager:(id)manager didReceiveNotificationResponse:(id)response
{
  responseCopy = response;
  notificationQueue = self->_notificationQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__ASFriendInviteBulletinManager_bulletinPostingManager_didReceiveNotificationResponse___block_invoke;
  v8[3] = &unk_278C4B250;
  v8[4] = self;
  v9 = responseCopy;
  v7 = responseCopy;
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

- (void)processResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    actionIdentifier = [responseCopy actionIdentifier];
    v16 = 138543618;
    v17 = actionIdentifier;
    v18 = 2114;
    v19 = responseCopy;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Handling notification action response: %{public}@ RESPONSE: %{public}@", &v16, 0x16u);
  }

  userInfo = [responseCopy userInfo];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [userInfo objectForKeyedSubscript:@"ASUserInfoIDContactUUID"];
  v11 = [v9 initWithUUIDString:v10];

  actionIdentifier2 = [responseCopy actionIdentifier];
  if ([actionIdentifier2 isEqualToString:@"Accept"])
  {
    v13 = 1;
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained friendInviteBulletinManagerDidReceiveActionResponse:v13 fromContactWithUUID:v11];

    goto LABEL_8;
  }

  if ([actionIdentifier2 isEqualToString:@"Ignore"])
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