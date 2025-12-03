@interface ASCompanionBulletinPostingManager
- (ASBulletinPostingManagerDelegate)delegate;
- (ASCompanionBulletinPostingManager)init;
- (BOOL)_isPostingAllowed;
- (BOOL)shouldUseSpecializedStringForWorkout:(id)workout;
- (id)_achievementForAchievementData:(id)data;
- (id)_activityDataNotificationCategories;
- (id)_activitySharingAchievementForAchievementData:(id)data;
- (id)_activitySharingWorkoutForWorkoutData:(id)data;
- (id)_activitySnapshotForSnapshotData:(id)data;
- (id)_notificationRequestForCodableBulletin:(id)bulletin;
- (id)_subtitleBodyPairForAchievementCodableBulletin:(id)bulletin;
- (id)_subtitleBodyPairForCodableBulletin:(id)bulletin;
- (id)_subtitleBodyPairForWorkoutCodableBulletin:(id)bulletin;
- (id)topicIdentifiers;
- (void)_handleActivityDataNotificationResponse:(id)response;
- (void)activitySharingManagerReady:(id)ready;
- (void)enqueueBulletins:(id)bulletins withPostingSyle:(int64_t)syle;
- (void)handleNotificationResponse:(id)response completion:(id)completion;
- (void)postNotificationRequest:(id)request;
- (void)registerNotificationCategories:(id)categories;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation ASCompanionBulletinPostingManager

- (ASCompanionBulletinPostingManager)init
{
  v6.receiver = self;
  v6.super_class = ASCompanionBulletinPostingManager;
  v2 = [(ASCompanionBulletinPostingManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Fitness"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v3;
  }

  return v2;
}

- (void)activitySharingManagerReady:(id)ready
{
  [(UNUserNotificationCenter *)self->_userNotificationCenter setDelegate:self];
  userNotificationCenter = self->_userNotificationCenter;

  [(UNUserNotificationCenter *)userNotificationCenter setWantsNotificationResponsesDelivered];
}

- (void)registerNotificationCategories:(id)categories
{
  categoriesCopy = categories;
  _activityDataNotificationCategories = [(ASCompanionBulletinPostingManager *)self _activityDataNotificationCategories];
  v6 = [categoriesCopy setByAddingObjectsFromSet:_activityDataNotificationCategories];

  userNotificationCenter = self->_userNotificationCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ASCompanionBulletinPostingManager_registerNotificationCategories___block_invoke;
  v9[3] = &unk_278C4C410;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  [(UNUserNotificationCenter *)userNotificationCenter getNotificationCategoriesWithCompletionHandler:v9];
}

void __68__ASCompanionBulletinPostingManager_registerNotificationCategories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 setByAddingObjectsFromSet:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setNotificationCategories:v3];
}

- (BOOL)_isPostingAllowed
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  fitnessMode = [mEMORY[0x277CCDD30] fitnessMode];

  if (fitnessMode == 1)
  {
    v4 = objc_alloc(MEMORY[0x277D2BA58]);
    v5 = [v4 initWithDomain:*MEMORY[0x277CE91F8]];
    synchronize = [v5 synchronize];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CBEBD0]);
    v5 = [v7 initWithSuiteName:*MEMORY[0x277CE91F8]];
  }

  v8 = [v5 objectForKey:*MEMORY[0x277CE9290]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_activityDataNotificationCategories
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE2010] actionWithIdentifier:@"Reply" title:&stru_2850E59E8 options:1];
  v3 = MEMORY[0x277CE1F98];
  v4 = *MEMORY[0x277CE9198];
  v10[0] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v3 categoryWithIdentifier:v4 actions:v5 intentIdentifiers:MEMORY[0x277CBEBF8] options:0];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)postNotificationRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FF8];
  v6 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    identifier = [requestCopy identifier];
    *buf = 138412290;
    v15 = identifier;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Adding notification request with identifier %@", buf, 0xCu);
  }

  if ([(ASCompanionBulletinPostingManager *)self _isPostingAllowed])
  {
    objc_initWeak(buf, self);
    userNotificationCenter = self->_userNotificationCenter;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__ASCompanionBulletinPostingManager_postNotificationRequest___block_invoke;
    v12[3] = &unk_278C4C438;
    objc_copyWeak(&v13, buf);
    [(UNUserNotificationCenter *)userNotificationCenter addNotificationRequest:requestCopy withCompletionHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    ASLoggingInitialize();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Activity sharing notifications disabled in settings", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __61__ASCompanionBulletinPostingManager_postNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      __61__ASCompanionBulletinPostingManager_postNotificationRequest___block_invoke_cold_1(a1, v4, v3);
    }
  }
}

- (void)enqueueBulletins:(id)bulletins withPostingSyle:(int64_t)syle
{
  v23 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  fitnessMode = [mEMORY[0x277CCDD30] fitnessMode];

  if (fitnessMode != 1)
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = bulletinsCopy;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompanionBulletinPostingManager enqueuing bulletins %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allObjects = [bulletinsCopy allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          v14 = [(ASCompanionBulletinPostingManager *)self _notificationRequestForCodableBulletin:*(*(&v16 + 1) + 8 * v13)];
          [(ASCompanionBulletinPostingManager *)self postNotificationRequest:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Withdrawing bulletin with identifier %@", buf, 0xCu);
  }

  v8 = identifierCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [(ASCompanionBulletinPostingManager *)self _withdrawNotificationRequestsWithIdentifiers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)topicIdentifiers
{
  notificationTopics = [(UNUserNotificationCenter *)self->_userNotificationCenter notificationTopics];
  v3 = [notificationTopics hk_map:&__block_literal_global_8];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  actionIdentifier = [responseCopy actionIdentifier];
  notification = [responseCopy notification];

  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v14 = [objc_alloc(MEMORY[0x277CE9138]) initWithActionIdentifier:actionIdentifier userInfo:userInfo];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__ASCompanionBulletinPostingManager_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v16[3] = &unk_278C4C178;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(ASCompanionBulletinPostingManager *)self handleNotificationResponse:v14 completion:v16];
}

- (void)handleNotificationResponse:(id)response completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = responseCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompanionBulletinPostingManager received notification response: %{public}@", &v13, 0xCu);
  }

  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier isEqualToString:@"Reply"];

  if (v10)
  {
    [(ASCompanionBulletinPostingManager *)self _handleActivityDataNotificationResponse:responseCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bulletinPostingManager:self didReceiveNotificationResponse:responseCopy];
  }

  completionCopy[2](completionCopy, 1, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:(id)response
{
  responseCopy = response;
  userInfo = [responseCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE9280]];

  integerValue = [v6 integerValue];
  userInfo2 = [responseCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CE9278]];

  if (v9)
  {
    userInfo3 = [responseCopy userInfo];
    v11 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CE9260]];

    if (!v11)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASCompanionBulletinPostingManager _handleActivityDataNotificationResponse:];
      }

      goto LABEL_26;
    }

    v12 = [objc_alloc(MEMORY[0x277CE90A0]) initWithData:v11];
    v13 = ASFriendsFromCodableFriendList();
    anyObject = [v13 anyObject];

    if (!anyObject)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASCompanionBulletinPostingManager _handleActivityDataNotificationResponse:];
      }

      goto LABEL_25;
    }

    if (integerValue <= 2)
    {
      if (integerValue)
      {
        if (integerValue == 1)
        {
          userInfo4 = [responseCopy userInfo];
          v26 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277CE9250]];

          v31 = v26;
          v27 = [(ASCompanionBulletinPostingManager *)self _activitySnapshotForSnapshotData:v26];
          uUID = [anyObject UUID];
          contact = [anyObject contact];
          primaryDestinationForMessaging = [contact primaryDestinationForMessaging];
          v30 = v27;
          v21 = ASRichMessagePayloadForGoalCompletion();
        }

        else
        {
          if (integerValue != 2)
          {
            goto LABEL_23;
          }

          userInfo5 = [responseCopy userInfo];
          v23 = [userInfo5 objectForKeyedSubscript:*MEMORY[0x277CE9288]];

          v31 = v23;
          v24 = [(ASCompanionBulletinPostingManager *)self _activitySharingWorkoutForWorkoutData:v23];
          uUID = [anyObject UUID];
          contact = [anyObject contact];
          primaryDestinationForMessaging = [contact primaryDestinationForMessaging];
          v30 = v24;
          v21 = ASRichMessagePayloadForWorkout();
        }

LABEL_21:
        v28 = v21;

        if (v28)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __77__ASCompanionBulletinPostingManager__handleActivityDataNotificationResponse___block_invoke;
          block[3] = &unk_278C4BB98;
          v33 = v28;
          v34 = anyObject;
          v35 = responseCopy;
          v29 = v28;
          dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_25:
LABEL_26:

          goto LABEL_27;
        }

LABEL_23:
        ASLoggingInitialize();
        if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
        {
          [ASCompanionBulletinPostingManager _handleActivityDataNotificationResponse:];
        }

        goto LABEL_25;
      }
    }

    else if ((integerValue - 4) >= 5)
    {
      if (integerValue != 3)
      {
        goto LABEL_23;
      }

      userInfo6 = [responseCopy userInfo];
      v16 = [userInfo6 objectForKeyedSubscript:*MEMORY[0x277CE9248]];

      v31 = v16;
      v17 = [(ASCompanionBulletinPostingManager *)self _activitySharingAchievementForAchievementData:v16];
      uUID = [anyObject UUID];
      contact = [anyObject contact];
      primaryDestinationForMessaging = [contact primaryDestinationForMessaging];
      v30 = v17;
      v21 = ASRichMessagePayloadForAchievement();
      goto LABEL_21;
    }

    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASCompanionBulletinPostingManager _handleActivityDataNotificationResponse:];
    }

    goto LABEL_25;
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
  {
    [ASCompanionBulletinPostingManager _handleActivityDataNotificationResponse:];
  }

LABEL_27:
}

void __77__ASCompanionBulletinPostingManager__handleActivityDataNotificationResponse___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contact];
  v4 = [v3 primaryDestinationForMessaging];
  ASSendRichMessagePayloadToDestination(v2, v4);

  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompanionBulletinPostingManager sent message payload for notification response: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_notificationRequestForCodableBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  IsInstalled = ASMessagesIsInstalled();
  v7 = MEMORY[0x277CE9198];
  if (!IsInstalled)
  {
    v7 = MEMORY[0x277CE91A0];
  }

  [v5 setCategoryIdentifier:*v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  type = [bulletinCopy type];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CE9280]];

  friendListData = [bulletinCopy friendListData];
  [v8 setObject:friendListData forKeyedSubscript:*MEMORY[0x277CE9260]];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(bulletinCopy, "competitionStage")}];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277CE9258]];

  achievementData = [bulletinCopy achievementData];
  [v8 setObject:achievementData forKeyedSubscript:*MEMORY[0x277CE9248]];

  workoutData = [bulletinCopy workoutData];
  [v8 setObject:workoutData forKeyedSubscript:*MEMORY[0x277CE9288]];

  snapshotData = [bulletinCopy snapshotData];
  [v8 setObject:snapshotData forKeyedSubscript:*MEMORY[0x277CE9250]];

  date = [MEMORY[0x277CBEAA8] date];
  v17 = ExpirationDateForBulletinTypeAndPublishDate(type, date);

  if (v17)
  {
    [v5 setExpirationDate:v17];
  }

  v18 = [MEMORY[0x277CE1F70] soundWithAlertType:19];
  [v18 setAlertTopic:*MEMORY[0x277D71F98]];
  v19 = ActivitySharingBundle();
  v20 = [v19 localizedStringForKey:@"FITNESS_APP_NAME" value:&stru_2850E59E8 table:@"Localizable"];

  v21 = [(ASCompanionBulletinPostingManager *)self _subtitleBodyPairForCodableBulletin:bulletinCopy];
  [v5 setSound:v18];
  [v5 setTitle:v20];
  subtitle = [v21 subtitle];
  [v5 setSubtitle:subtitle];

  body = [v21 body];
  [v5 setBody:body];

  v24 = ThreadIdentifierForBulletinType(type);
  [v5 setThreadIdentifier:v24];

  [v5 setUserInfo:v8];
  v25 = MEMORY[0x277CE1FC0];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v28 = [v25 requestWithIdentifier:uUIDString content:v5 trigger:0];

  return v28;
}

- (id)_subtitleBodyPairForCodableBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  achievementData = [bulletinCopy achievementData];

  if (achievementData)
  {
    v6 = [(ASCompanionBulletinPostingManager *)self _subtitleBodyPairForAchievementCodableBulletin:bulletinCopy];
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  workoutData = [bulletinCopy workoutData];

  if (workoutData)
  {
    v6 = [(ASCompanionBulletinPostingManager *)self _subtitleBodyPairForWorkoutCodableBulletin:bulletinCopy];
    goto LABEL_5;
  }

  v10 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
  title = [bulletinCopy title];
  v8 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v10 initWithSubtitle:title body:0];

LABEL_6:

  return v8;
}

- (id)_subtitleBodyPairForWorkoutCodableBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  workoutData = [bulletinCopy workoutData];
  v6 = [(ASCompanionBulletinPostingManager *)self _activitySharingWorkoutForWorkoutData:workoutData];

  hkWorkoutFromFriendWorkout = [v6 hkWorkoutFromFriendWorkout];
  if (-[ASCompanionBulletinPostingManager shouldUseSpecializedStringForWorkout:](self, "shouldUseSpecializedStringForWorkout:", hkWorkoutFromFriendWorkout) && ([hkWorkoutFromFriendWorkout fi_activityType], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "localizationKey"), localizedName = objc_claimAutoreleasedReturnValue(), v8, localizedName))
  {
    title = [@"NOTIFICATION_TITLE_FORMAT_WORKOUT_" stringByAppendingString:localizedName];
    v11 = objc_alloc(MEMORY[0x277CE90A0]);
    friendListData = [bulletinCopy friendListData];
    v25 = [v11 initWithData:friendListData];

    v13 = ASFriendsFromCodableFriendList();
    allObjects = [v13 allObjects];
    firstObject = [allObjects firstObject];

    v15 = MEMORY[0x277CCACA8];
    v16 = ActivitySharingBundle();
    v17 = [v16 localizedStringForKey:title value:&stru_2850E59E8 table:@"Localizable"];
    displayName = [firstObject displayName];
    v19 = [v15 localizedStringWithFormat:v17, displayName];

    v20 = [[ASCompanionBulletinPostingManagerSubtitleBodyPair alloc] initWithSubtitle:0 body:v19];
  }

  else
  {
    fi_activityType = [hkWorkoutFromFriendWorkout fi_activityType];
    localizedName = [fi_activityType localizedName];

    v22 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
    title = [bulletinCopy title];
    v20 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v22 initWithSubtitle:title body:localizedName];
  }

  return v20;
}

- (id)_subtitleBodyPairForAchievementCodableBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  achievementData = [bulletinCopy achievementData];
  v6 = [(ASCompanionBulletinPostingManager *)self _achievementForAchievementData:achievementData];

  if (v6)
  {
    template = [v6 template];
    uniqueName = [template uniqueName];
    v9 = ASIsCompetitionVictoryTemplate();

    v10 = objc_alloc_init(MEMORY[0x277CE8CB8]);
    v11 = v10;
    if (v9)
    {
      v12 = objc_alloc(MEMORY[0x277CE90A0]);
      friendListData = [bulletinCopy friendListData];
      v14 = [v12 initWithData:friendListData];

      v15 = ASFriendsFromCodableFriendList();
      allObjects = [v15 allObjects];
      firstObject = [allObjects firstObject];

      displayName = [firstObject displayName];
      [v11 setName:displayName];

      v19 = [v11 friendAchievedDescriptionForAchievement:v6];
    }

    else
    {
      v19 = [v10 friendAchievedTitleForAchievement:v6];
    }

    v24 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
    title = [bulletinCopy title];
    v23 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v24 initWithSubtitle:title body:v19];
  }

  else
  {
    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [(ASCompanionBulletinPostingManager *)v20 _subtitleBodyPairForAchievementCodableBulletin:bulletinCopy];
    }

    v21 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
    title2 = [bulletinCopy title];
    v23 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v21 initWithSubtitle:title2 body:0];
  }

  return v23;
}

- (id)_achievementForAchievementData:(id)data
{
  v3 = MEMORY[0x277CE8CE0];
  dataCopy = data;
  v5 = [[v3 alloc] initWithData:dataCopy];

  v6 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:v5];

  return v6;
}

- (id)_activitySharingAchievementForAchievementData:(id)data
{
  v3 = [(ASCompanionBulletinPostingManager *)self _achievementForAchievementData:data];
  relevantEarnedInstance = [v3 relevantEarnedInstance];
  template = [v3 template];
  v6 = ASFriendAchievementFromTemplateAndEarnedInstance();

  return v6;
}

- (id)_activitySharingWorkoutForWorkoutData:(id)data
{
  v3 = MEMORY[0x277CE9060];
  dataCopy = data;
  v5 = [[v3 alloc] initWithData:dataCopy];

  v6 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutWithCodableWorkout:v5];

  return v6;
}

- (id)_activitySnapshotForSnapshotData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v11 = 0;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:&v11];

  v6 = v11;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Error creating archiver for summary data: %@", buf, 0xCu);
    }
  }

  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  [v5 finishDecoding];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)shouldUseSpecializedStringForWorkout:(id)workout
{
  workoutActivityType = [workout workoutActivityType];
  result = FIActivityTypeIsCalorimetryOptimized();
  if (workoutActivityType == 84)
  {
    return 1;
  }

  return result;
}

- (ASBulletinPostingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__ASCompanionBulletinPostingManager_postNotificationRequest___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v11 = 2114;
  v12 = a3;
  v8 = v7;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "%{public}@ error requesting notification request %{public}@", v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "CompanionBulletinPostingManager found unexpected ASBulletinType for notification response: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "CompanionBulletinPostingManager failed to create message payload for notification response: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "CompanionBulletinPostingManager failed to decode friend for notification response: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "CompanionBulletinPostingManager failed to decode friend list data for notification response: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "CompanionBulletinPostingManager failed to decode reply for notification response: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_subtitleBodyPairForAchievementCodableBulletin:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 achievementData];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_ERROR, "CompanionBulletinPostingManager unable to decode achievement data %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end