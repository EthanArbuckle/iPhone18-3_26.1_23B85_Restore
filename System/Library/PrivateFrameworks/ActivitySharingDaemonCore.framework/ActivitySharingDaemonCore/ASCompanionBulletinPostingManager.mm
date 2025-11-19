@interface ASCompanionBulletinPostingManager
- (ASBulletinPostingManagerDelegate)delegate;
- (ASCompanionBulletinPostingManager)init;
- (BOOL)_isPostingAllowed;
- (BOOL)shouldUseSpecializedStringForWorkout:(id)a3;
- (id)_achievementForAchievementData:(id)a3;
- (id)_activityDataNotificationCategories;
- (id)_activitySharingAchievementForAchievementData:(id)a3;
- (id)_activitySharingWorkoutForWorkoutData:(id)a3;
- (id)_activitySnapshotForSnapshotData:(id)a3;
- (id)_notificationRequestForCodableBulletin:(id)a3;
- (id)_subtitleBodyPairForAchievementCodableBulletin:(id)a3;
- (id)_subtitleBodyPairForCodableBulletin:(id)a3;
- (id)_subtitleBodyPairForWorkoutCodableBulletin:(id)a3;
- (id)topicIdentifiers;
- (void)_handleActivityDataNotificationResponse:(id)a3;
- (void)activitySharingManagerReady:(id)a3;
- (void)enqueueBulletins:(id)a3 withPostingSyle:(int64_t)a4;
- (void)handleNotificationResponse:(id)a3 completion:(id)a4;
- (void)postNotificationRequest:(id)a3;
- (void)registerNotificationCategories:(id)a3;
- (void)removeNotificationWithIdentifier:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
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

- (void)activitySharingManagerReady:(id)a3
{
  [(UNUserNotificationCenter *)self->_userNotificationCenter setDelegate:self];
  userNotificationCenter = self->_userNotificationCenter;

  [(UNUserNotificationCenter *)userNotificationCenter setWantsNotificationResponsesDelivered];
}

- (void)registerNotificationCategories:(id)a3
{
  v4 = a3;
  v5 = [(ASCompanionBulletinPostingManager *)self _activityDataNotificationCategories];
  v6 = [v4 setByAddingObjectsFromSet:v5];

  userNotificationCenter = self->_userNotificationCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ASCompanionBulletinPostingManager_registerNotificationCategories___block_invoke;
  v9[3] = &unk_278C4C410;
  v10 = v6;
  v11 = self;
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
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 fitnessMode];

  if (v3 == 1)
  {
    v4 = objc_alloc(MEMORY[0x277D2BA58]);
    v5 = [v4 initWithDomain:*MEMORY[0x277CE91F8]];
    v6 = [v5 synchronize];
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
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  return v9;
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

- (void)postNotificationRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FF8];
  v6 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 identifier];
    *buf = 138412290;
    v15 = v8;
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
    [(UNUserNotificationCenter *)userNotificationCenter addNotificationRequest:v4 withCompletionHandler:v12];
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

- (void)enqueueBulletins:(id)a3 withPostingSyle:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 fitnessMode];

  if (v7 != 1)
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompanionBulletinPostingManager enqueuing bulletins %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v5 allObjects];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [(ASCompanionBulletinPostingManager *)self _notificationRequestForCodableBulletin:*(*(&v16 + 1) + 8 * v13)];
          [(ASCompanionBulletinPostingManager *)self postNotificationRequest:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Withdrawing bulletin with identifier %@", buf, 0xCu);
  }

  v8 = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [(ASCompanionBulletinPostingManager *)self _withdrawNotificationRequestsWithIdentifiers:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)topicIdentifiers
{
  v2 = [(UNUserNotificationCenter *)self->_userNotificationCenter notificationTopics];
  v3 = [v2 hk_map:&__block_literal_global_8];
  v4 = [v3 allObjects];

  return v4;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 actionIdentifier];
  v10 = [v8 notification];

  v11 = [v10 request];
  v12 = [v11 content];
  v13 = [v12 userInfo];

  v14 = [objc_alloc(MEMORY[0x277CE9138]) initWithActionIdentifier:v9 userInfo:v13];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__ASCompanionBulletinPostingManager_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v16[3] = &unk_278C4C178;
  v17 = v7;
  v15 = v7;
  [(ASCompanionBulletinPostingManager *)self handleNotificationResponse:v14 completion:v16];
}

- (void)handleNotificationResponse:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompanionBulletinPostingManager received notification response: %{public}@", &v13, 0xCu);
  }

  v9 = [v6 actionIdentifier];
  v10 = [v9 isEqualToString:@"Reply"];

  if (v10)
  {
    [(ASCompanionBulletinPostingManager *)self _handleActivityDataNotificationResponse:v6];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bulletinPostingManager:self didReceiveNotificationResponse:v6];
  }

  v7[2](v7, 1, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityDataNotificationResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE9280]];

  v7 = [v6 integerValue];
  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE9278]];

  if (v9)
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CE9260]];

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
    v14 = [v13 anyObject];

    if (!v14)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        [ASCompanionBulletinPostingManager _handleActivityDataNotificationResponse:];
      }

      goto LABEL_25;
    }

    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v25 = [v4 userInfo];
          v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277CE9250]];

          v31 = v26;
          v27 = [(ASCompanionBulletinPostingManager *)self _activitySnapshotForSnapshotData:v26];
          v18 = [v14 UUID];
          v19 = [v14 contact];
          v20 = [v19 primaryDestinationForMessaging];
          v30 = v27;
          v21 = ASRichMessagePayloadForGoalCompletion();
        }

        else
        {
          if (v7 != 2)
          {
            goto LABEL_23;
          }

          v22 = [v4 userInfo];
          v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE9288]];

          v31 = v23;
          v24 = [(ASCompanionBulletinPostingManager *)self _activitySharingWorkoutForWorkoutData:v23];
          v18 = [v14 UUID];
          v19 = [v14 contact];
          v20 = [v19 primaryDestinationForMessaging];
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
          v34 = v14;
          v35 = v4;
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

    else if ((v7 - 4) >= 5)
    {
      if (v7 != 3)
      {
        goto LABEL_23;
      }

      v15 = [v4 userInfo];
      v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CE9248]];

      v31 = v16;
      v17 = [(ASCompanionBulletinPostingManager *)self _activitySharingAchievementForAchievementData:v16];
      v18 = [v14 UUID];
      v19 = [v14 contact];
      v20 = [v19 primaryDestinationForMessaging];
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

- (id)_notificationRequestForCodableBulletin:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  IsInstalled = ASMessagesIsInstalled();
  v7 = MEMORY[0x277CE9198];
  if (!IsInstalled)
  {
    v7 = MEMORY[0x277CE91A0];
  }

  [v5 setCategoryIdentifier:*v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [v4 type];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CE9280]];

  v11 = [v4 friendListData];
  [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277CE9260]];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "competitionStage")}];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277CE9258]];

  v13 = [v4 achievementData];
  [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277CE9248]];

  v14 = [v4 workoutData];
  [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277CE9288]];

  v15 = [v4 snapshotData];
  [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE9250]];

  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = ExpirationDateForBulletinTypeAndPublishDate(v9, v16);

  if (v17)
  {
    [v5 setExpirationDate:v17];
  }

  v18 = [MEMORY[0x277CE1F70] soundWithAlertType:19];
  [v18 setAlertTopic:*MEMORY[0x277D71F98]];
  v19 = ActivitySharingBundle();
  v20 = [v19 localizedStringForKey:@"FITNESS_APP_NAME" value:&stru_2850E59E8 table:@"Localizable"];

  v21 = [(ASCompanionBulletinPostingManager *)self _subtitleBodyPairForCodableBulletin:v4];
  [v5 setSound:v18];
  [v5 setTitle:v20];
  v22 = [v21 subtitle];
  [v5 setSubtitle:v22];

  v23 = [v21 body];
  [v5 setBody:v23];

  v24 = ThreadIdentifierForBulletinType(v9);
  [v5 setThreadIdentifier:v24];

  [v5 setUserInfo:v8];
  v25 = MEMORY[0x277CE1FC0];
  v26 = [MEMORY[0x277CCAD78] UUID];
  v27 = [v26 UUIDString];
  v28 = [v25 requestWithIdentifier:v27 content:v5 trigger:0];

  return v28;
}

- (id)_subtitleBodyPairForCodableBulletin:(id)a3
{
  v4 = a3;
  v5 = [v4 achievementData];

  if (v5)
  {
    v6 = [(ASCompanionBulletinPostingManager *)self _subtitleBodyPairForAchievementCodableBulletin:v4];
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [v4 workoutData];

  if (v7)
  {
    v6 = [(ASCompanionBulletinPostingManager *)self _subtitleBodyPairForWorkoutCodableBulletin:v4];
    goto LABEL_5;
  }

  v10 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
  v11 = [v4 title];
  v8 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v10 initWithSubtitle:v11 body:0];

LABEL_6:

  return v8;
}

- (id)_subtitleBodyPairForWorkoutCodableBulletin:(id)a3
{
  v4 = a3;
  v5 = [v4 workoutData];
  v6 = [(ASCompanionBulletinPostingManager *)self _activitySharingWorkoutForWorkoutData:v5];

  v7 = [v6 hkWorkoutFromFriendWorkout];
  if (-[ASCompanionBulletinPostingManager shouldUseSpecializedStringForWorkout:](self, "shouldUseSpecializedStringForWorkout:", v7) && ([v7 fi_activityType], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "localizationKey"), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = [@"NOTIFICATION_TITLE_FORMAT_WORKOUT_" stringByAppendingString:v9];
    v11 = objc_alloc(MEMORY[0x277CE90A0]);
    v12 = [v4 friendListData];
    v25 = [v11 initWithData:v12];

    v13 = ASFriendsFromCodableFriendList();
    v14 = [v13 allObjects];
    v24 = [v14 firstObject];

    v15 = MEMORY[0x277CCACA8];
    v16 = ActivitySharingBundle();
    v17 = [v16 localizedStringForKey:v10 value:&stru_2850E59E8 table:@"Localizable"];
    v18 = [v24 displayName];
    v19 = [v15 localizedStringWithFormat:v17, v18];

    v20 = [[ASCompanionBulletinPostingManagerSubtitleBodyPair alloc] initWithSubtitle:0 body:v19];
  }

  else
  {
    v21 = [v7 fi_activityType];
    v9 = [v21 localizedName];

    v22 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
    v10 = [v4 title];
    v20 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v22 initWithSubtitle:v10 body:v9];
  }

  return v20;
}

- (id)_subtitleBodyPairForAchievementCodableBulletin:(id)a3
{
  v4 = a3;
  v5 = [v4 achievementData];
  v6 = [(ASCompanionBulletinPostingManager *)self _achievementForAchievementData:v5];

  if (v6)
  {
    v7 = [v6 template];
    v8 = [v7 uniqueName];
    v9 = ASIsCompetitionVictoryTemplate();

    v10 = objc_alloc_init(MEMORY[0x277CE8CB8]);
    v11 = v10;
    if (v9)
    {
      v12 = objc_alloc(MEMORY[0x277CE90A0]);
      v13 = [v4 friendListData];
      v14 = [v12 initWithData:v13];

      v15 = ASFriendsFromCodableFriendList();
      v16 = [v15 allObjects];
      v17 = [v16 firstObject];

      v18 = [v17 displayName];
      [v11 setName:v18];

      v19 = [v11 friendAchievedDescriptionForAchievement:v6];
    }

    else
    {
      v19 = [v10 friendAchievedTitleForAchievement:v6];
    }

    v24 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
    v25 = [v4 title];
    v23 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v24 initWithSubtitle:v25 body:v19];
  }

  else
  {
    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [(ASCompanionBulletinPostingManager *)v20 _subtitleBodyPairForAchievementCodableBulletin:v4];
    }

    v21 = [ASCompanionBulletinPostingManagerSubtitleBodyPair alloc];
    v22 = [v4 title];
    v23 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)v21 initWithSubtitle:v22 body:0];
  }

  return v23;
}

- (id)_achievementForAchievementData:(id)a3
{
  v3 = MEMORY[0x277CE8CE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4];

  v6 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:v5];

  return v6;
}

- (id)_activitySharingAchievementForAchievementData:(id)a3
{
  v3 = [(ASCompanionBulletinPostingManager *)self _achievementForAchievementData:a3];
  v4 = [v3 relevantEarnedInstance];
  v5 = [v3 template];
  v6 = ASFriendAchievementFromTemplateAndEarnedInstance();

  return v6;
}

- (id)_activitySharingWorkoutForWorkoutData:(id)a3
{
  v3 = MEMORY[0x277CE9060];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4];

  v6 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutWithCodableWorkout:v5];

  return v6;
}

- (id)_activitySnapshotForSnapshotData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v11 = 0;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:&v11];

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

- (BOOL)shouldUseSpecializedStringForWorkout:(id)a3
{
  v3 = [a3 workoutActivityType];
  result = FIActivityTypeIsCalorimetryOptimized();
  if (v3 == 84)
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