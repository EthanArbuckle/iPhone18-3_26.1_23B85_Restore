@interface ASFakeBulletinManager
- (id)_fakeContact;
- (void)_showFakeAchievementNotification;
- (void)_showFakeBatchNotification;
- (void)_showFakeCompetitionAcceptedNotification;
- (void)_showFakeCompetitionEndedLoserNotification;
- (void)_showFakeCompetitionEndedTieNotification;
- (void)_showFakeCompetitionEndedWinnerNotification;
- (void)_showFakeCompetitionRequestNotification;
- (void)_showFakeCompetitionScoreCapCelebrationNotification;
- (void)_showFakeGoalCompletionDuringCompetitionNotification;
- (void)_showFakeGoalCompletionNotification;
- (void)_showFakeGuidedRunWorkoutNotification;
- (void)_showFakeGuidedWalkWorkoutNotification;
- (void)_showFakeInvitationRequest;
- (void)_showFakeInvitationResponse;
- (void)_showFakeInviteAttemptNeedsSetup;
- (void)_showFakeNeedToSignIn;
- (void)_showFakeNeedToUpgrade;
- (void)_showFakeVideoWorkoutNotification;
- (void)_showFakeWorkoutNotification;
- (void)_showFakeWorkoutNotificationWithWorkout:(id)a3;
- (void)activitySharingManagerReady:(id)a3;
- (void)dealloc;
- (void)deregisterBulletins;
- (void)registerBulletins;
@end

@implementation ASFakeBulletinManager

- (void)activitySharingManagerReady:(id)a3
{
  v4 = a3;
  v5 = [v4 activityDataBulletinManager];
  objc_storeWeak(&self->_activityDataBulletinManager, v5);

  v6 = [v4 competitionBulletinManager];
  objc_storeWeak(&self->_competitionBulletinManager, v6);

  v7 = [v4 fakingManager];
  objc_storeWeak(&self->_fakingManager, v7);

  v8 = [v4 friendInviteBulletinManager];
  objc_storeWeak(&self->_friendInviteBulletinManager, v8);

  v9 = [v4 bulletinPostingManager];

  bulletinPostingManager = self->_bulletinPostingManager;
  self->_bulletinPostingManager = v9;
}

- (void)dealloc
{
  [(ASFakeBulletinManager *)self deregisterBulletins];
  v3.receiver = self;
  v3.super_class = ASFakeBulletinManager;
  [(ASFakeBulletinManager *)&v3 dealloc];
}

- (void)registerBulletins
{
  objc_initWeak(location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke;
  handler[3] = &unk_278C4C3A8;
  objc_copyWeak(&v42, location);
  notify_register_dispatch("fakeFriendWorkout", &self->notifyWorkoutToken, v3, handler);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_2;
  v39[3] = &unk_278C4C3A8;
  objc_copyWeak(&v40, location);
  notify_register_dispatch("fakeFriendVideoWorkout", &self->notifyVideoWorkoutToken, v3, v39);

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_3;
  v37[3] = &unk_278C4C3A8;
  objc_copyWeak(&v38, location);
  notify_register_dispatch("fakeFriendGuidedRunWorkout", &self->notifyGuidedRunWorkoutToken, v3, v37);

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_4;
  v35[3] = &unk_278C4C3A8;
  objc_copyWeak(&v36, location);
  notify_register_dispatch("fakeFriendGuidedWalkWorkout", &self->notifyGuidedWalkWorkoutToken, v3, v35);

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_5;
  v33[3] = &unk_278C4C3A8;
  objc_copyWeak(&v34, location);
  notify_register_dispatch("fakeFriendAchievement", &self->notifyAchievementToken, v3, v33);

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_6;
  v31[3] = &unk_278C4C3A8;
  objc_copyWeak(&v32, location);
  notify_register_dispatch("fakeFriendGoalCompletion", &self->notifyGoalCompletionToken, v3, v31);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_7;
  v29[3] = &unk_278C4C3A8;
  objc_copyWeak(&v30, location);
  notify_register_dispatch("fakeFriendBatch", &self->notifyBatchToken, v3, v29);

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_8;
  v27[3] = &unk_278C4C3A8;
  objc_copyWeak(&v28, location);
  notify_register_dispatch("fakeFriendGoalCompletionDuringCompetition", &self->notifyGoalCompletionDuringCompetitionToken, v3, v27);

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_9;
  v25[3] = &unk_278C4C3A8;
  objc_copyWeak(&v26, location);
  notify_register_dispatch("fakeFriendCompetitionRequest", &self->notifyCompetitionRequestToken, v3, v25);

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_10;
  v23[3] = &unk_278C4C3A8;
  objc_copyWeak(&v24, location);
  notify_register_dispatch("fakeFriendCompetitionAccepted", &self->notifyCompetitionAcceptToken, v3, v23);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_11;
  v21[3] = &unk_278C4C3A8;
  objc_copyWeak(&v22, location);
  notify_register_dispatch("fakeFriendCompetitionEndedWinner", &self->notifyCompetitionEndWinnerToken, v3, v21);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_12;
  v19[3] = &unk_278C4C3A8;
  objc_copyWeak(&v20, location);
  notify_register_dispatch("fakeFriendCompetitionEndedLoser", &self->notifyCompetitionEndLoserToken, v3, v19);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_13;
  v17[3] = &unk_278C4C3A8;
  objc_copyWeak(&v18, location);
  notify_register_dispatch("fakeFriendCompetitionEndedTie", &self->notifyCompetitionEndTieToken, v3, v17);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_14;
  v15[3] = &unk_278C4C3A8;
  objc_copyWeak(&v16, location);
  notify_register_dispatch("fakeCompetitionScoreCapCelebration", &self->notifyCompetitionScoreCapCelebrationToken, v3, v15);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_15;
  v13[3] = &unk_278C4C3A8;
  objc_copyWeak(&v14, location);
  notify_register_dispatch("fakeShowInviteRequest", &self->notifyInviteRequestToken, v3, v13);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_16;
  v11[3] = &unk_278C4C3A8;
  objc_copyWeak(&v12, location);
  notify_register_dispatch("fakeShowInviteResponse", &self->notifyInviteResponseToken, v3, v11);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_17;
  v9[3] = &unk_278C4C3A8;
  objc_copyWeak(&v10, location);
  notify_register_dispatch("fakeShowInviteNeedsSetup", &self->notifyOfFakeInviteNeedsSetupToken, v3, v9);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_18;
  v7[3] = &unk_278C4C3A8;
  objc_copyWeak(&v8, location);
  notify_register_dispatch("fakeShowNeedToSignIn", &self->notifyOfFakeSignInToken, v3, v7);

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASFakeBulletinManager_registerBulletins__block_invoke_19;
  v5[3] = &unk_278C4C3A8;
  objc_copyWeak(&v6, location);
  notify_register_dispatch("fakeShowNeedToUpgrade", &self->notifyOfFakeUpgradeToken, v3, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(location);
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeWorkoutNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeVideoWorkoutNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeGuidedRunWorkoutNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeGuidedWalkWorkoutNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeAchievementNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeGoalCompletionNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeBatchNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeGoalCompletionDuringCompetitionNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeCompetitionRequestNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeCompetitionAcceptedNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeCompetitionEndedWinnerNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeCompetitionEndedLoserNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeCompetitionEndedTieNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeCompetitionScoreCapCelebrationNotification];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeInvitationRequest];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeInvitationResponse];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeInviteAttemptNeedsSetup];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeNeedToSignIn];
}

void __42__ASFakeBulletinManager_registerBulletins__block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFakeNeedToUpgrade];
}

- (void)deregisterBulletins
{
  if (notify_is_valid_token(self->notifyGoalCompletionToken))
  {
    notify_cancel(self->notifyGoalCompletionToken);
  }

  if (notify_is_valid_token(self->notifyAchievementToken))
  {
    notify_cancel(self->notifyAchievementToken);
  }

  if (notify_is_valid_token(self->notifyWorkoutToken))
  {
    notify_cancel(self->notifyWorkoutToken);
  }

  if (notify_is_valid_token(self->notifyVideoWorkoutToken))
  {
    notify_cancel(self->notifyVideoWorkoutToken);
  }

  if (notify_is_valid_token(self->notifyGuidedWalkWorkoutToken))
  {
    notify_cancel(self->notifyGuidedWalkWorkoutToken);
  }

  if (notify_is_valid_token(self->notifyBatchToken))
  {
    notify_cancel(self->notifyBatchToken);
  }

  if (notify_is_valid_token(self->notifyCompetitionRequestToken))
  {
    notify_cancel(self->notifyCompetitionRequestToken);
  }

  if (notify_is_valid_token(self->notifyCompetitionAcceptToken))
  {
    notify_cancel(self->notifyCompetitionAcceptToken);
  }

  if (notify_is_valid_token(self->notifyCompetitionEndWinnerToken))
  {
    notify_cancel(self->notifyCompetitionEndWinnerToken);
  }

  if (notify_is_valid_token(self->notifyCompetitionEndLoserToken))
  {
    notify_cancel(self->notifyCompetitionEndLoserToken);
  }

  if (notify_is_valid_token(self->notifyCompetitionEndTieToken))
  {
    notify_cancel(self->notifyCompetitionEndTieToken);
  }

  if (notify_is_valid_token(self->notifyCompetitionScoreCapCelebrationToken))
  {
    notify_cancel(self->notifyCompetitionScoreCapCelebrationToken);
  }

  if (notify_is_valid_token(self->notifyInviteRequestToken))
  {
    notify_cancel(self->notifyInviteRequestToken);
  }

  if (notify_is_valid_token(self->notifyInviteResponseToken))
  {
    notify_cancel(self->notifyInviteResponseToken);
  }

  if (notify_is_valid_token(self->notifyOfFakeInviteNeedsSetupToken))
  {
    notify_cancel(self->notifyOfFakeInviteNeedsSetupToken);
  }

  if (notify_is_valid_token(self->notifyOfFakeSignInToken))
  {
    notify_cancel(self->notifyOfFakeSignInToken);
  }

  if (notify_is_valid_token(self->notifyOfFakeUpgradeToken))
  {
    notifyOfFakeUpgradeToken = self->notifyOfFakeUpgradeToken;

    notify_cancel(notifyOfFakeUpgradeToken);
  }
}

- (void)_showFakeWorkoutNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v4 = [WeakRetained fakeWorkout];

  [(ASFakeBulletinManager *)self _showFakeWorkoutNotificationWithWorkout:v4];
}

- (void)_showFakeVideoWorkoutNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v4 = [WeakRetained fakeVideoWorkout];

  [(ASFakeBulletinManager *)self _showFakeWorkoutNotificationWithWorkout:v4];
}

- (void)_showFakeGuidedRunWorkoutNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v4 = [WeakRetained fakeGuidedRunWorkout];

  [(ASFakeBulletinManager *)self _showFakeWorkoutNotificationWithWorkout:v4];
}

- (void)_showFakeGuidedWalkWorkoutNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v4 = [WeakRetained fakeGuidedWalkWorkout];

  [(ASFakeBulletinManager *)self _showFakeWorkoutNotificationWithWorkout:v4];
}

- (void)_showFakeWorkoutNotificationWithWorkout:(id)a3
{
  v4 = MEMORY[0x277CE9018];
  v5 = a3;
  v12 = objc_alloc_init(v4);
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v9 = [WeakRetained fakeFriend];
  [v7 setFriend:v9];

  [v7 setSample:v5];
  v10 = [v6 setByAddingObject:v7];

  [v12 setWorkoutNotifications:v10];
  v11 = objc_loadWeakRetained(&self->_activityDataBulletinManager);
  [v11 showActivityNotifications:v12 withPostingStyle:1];
}

- (void)_showFakeAchievementNotification
{
  v11 = objc_alloc_init(MEMORY[0x277CE9018]);
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeFriend];
  [v4 setFriend:v6];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeAchievement];
  [v4 setSample:v8];

  v9 = [v3 setByAddingObject:v4];

  [v11 setAchievementNotifications:v9];
  v10 = objc_loadWeakRetained(&self->_activityDataBulletinManager);
  [v10 showActivityNotifications:v11 withPostingStyle:1];
}

- (void)_showFakeGoalCompletionNotification
{
  v11 = objc_alloc_init(MEMORY[0x277CE9018]);
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeFriend];
  [v4 setFriend:v6];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeCompleteSnapshot];
  [v4 setSample:v8];

  v9 = [v3 setByAddingObject:v4];

  [v11 setGoalCompletionNotifications:v9];
  v10 = objc_loadWeakRetained(&self->_activityDataBulletinManager);
  [v10 showActivityNotifications:v11 withPostingStyle:1];
}

- (void)_showFakeBatchNotification
{
  v21 = objc_alloc_init(MEMORY[0x277CE9018]);
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [MEMORY[0x277CBEB98] set];
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v7 = [WeakRetained fakeFriend];

  v8 = objc_opt_new();
  [v8 setFriend:v7];
  v9 = objc_loadWeakRetained(&self->_fakingManager);
  v10 = [v9 fakeWorkout];
  [v8 setSample:v10];

  v11 = [v3 setByAddingObject:v8];

  [v21 setWorkoutNotifications:v11];
  v12 = objc_opt_new();
  [v12 setFriend:v7];
  v13 = objc_loadWeakRetained(&self->_fakingManager);
  v14 = [v13 fakeAchievement];
  [v12 setSample:v14];

  v15 = [v4 setByAddingObject:v12];

  [v21 setAchievementNotifications:v15];
  v16 = objc_opt_new();
  [v16 setFriend:v7];
  v17 = objc_loadWeakRetained(&self->_fakingManager);
  v18 = [v17 fakeCompleteSnapshot];
  [v16 setSample:v18];

  v19 = [v5 setByAddingObject:v16];

  [v21 setGoalCompletionNotifications:v19];
  v20 = objc_loadWeakRetained(&self->_activityDataBulletinManager);
  [v20 showActivityNotifications:v21 withPostingStyle:1];
}

- (void)_showFakeGoalCompletionDuringCompetitionNotification
{
  v16 = objc_alloc_init(MEMORY[0x277CE9018]);
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 dateByAddingUnit:16 value:-2 toDate:v5 options:0];

  v7 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v9 = [WeakRetained fakeCompetitionWithStartDate:v6 winningParticipant:0];

  v10 = objc_loadWeakRetained(&self->_fakingManager);
  v11 = [v10 fakeFriendWithCompetitionStatus:2 competition:v9];
  [v7 setFriend:v11];

  v12 = objc_loadWeakRetained(&self->_fakingManager);
  v13 = [v12 fakeCompleteSnapshot];
  [v7 setSample:v13];

  v14 = [v3 setByAddingObject:v7];

  [v16 setGoalCompletionNotifications:v14];
  v15 = objc_loadWeakRetained(&self->_activityDataBulletinManager);
  [v15 showActivityNotifications:v16 withPostingStyle:1];
}

- (void)_showFakeCompetitionRequestNotification
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v10 = [v3 dateByAddingUnit:16 value:1 toDate:v4 options:0];

  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeCompetitionWithStartDate:v10 winningParticipant:0];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeFriendWithCompetitionStatus:1 competition:v6];

  v9 = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [v9 showCompetitionRequestNotificationForFriend:v8 competition:v6 withPostingStyle:1];
}

- (void)_showFakeCompetitionAcceptedNotification
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v10 = [v3 dateByAddingUnit:16 value:1 toDate:v4 options:0];

  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeCompetitionWithStartDate:v10 winningParticipant:0];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeFriendWithCompetitionStatus:1 competition:v6];

  v9 = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [v9 showCompetitionAcceptedNotificationForFriend:v8 competition:v6 withPostingStyle:1];
}

- (void)_showFakeCompetitionEndedWinnerNotification
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v10 = [v3 dateByAddingUnit:16 value:-7 toDate:v4 options:0];

  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeCompetitionWithStartDate:v10 winningParticipant:0];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeFriendWithCompetitionStatus:3 competition:v6];

  v9 = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [v9 showCompetitionEndedNotificationForFriend:v8 competition:v6 withPostingStyle:1];
}

- (void)_showFakeCompetitionEndedLoserNotification
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v10 = [v3 dateByAddingUnit:16 value:-7 toDate:v4 options:0];

  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeCompetitionWithStartDate:v10 winningParticipant:1];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeFriendWithCompetitionStatus:3 competition:v6];

  v9 = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [v9 showCompetitionEndedNotificationForFriend:v8 competition:v6 withPostingStyle:1];
}

- (void)_showFakeCompetitionEndedTieNotification
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v10 = [v3 dateByAddingUnit:16 value:-7 toDate:v4 options:0];

  WeakRetained = objc_loadWeakRetained(&self->_fakingManager);
  v6 = [WeakRetained fakeTiedCompetitionWithStartDate:v10];

  v7 = objc_loadWeakRetained(&self->_fakingManager);
  v8 = [v7 fakeFriendWithCompetitionStatus:3 competition:v6];

  v9 = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [v9 showCompetitionEndedNotificationForFriend:v8 competition:v6 withPostingStyle:1];
}

- (void)_showFakeCompetitionScoreCapCelebrationNotification
{
  v4 = [MEMORY[0x277CE90F0] fakeFirstGlanceFriendListForMarketing];
  WeakRetained = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [WeakRetained showCompetitionScoreCapCelebrationForFriends:v4 withPostingStyle:1];
}

- (void)_showFakeInvitationRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
  v3 = [(ASFakeBulletinManager *)self _fakeContact];
  [WeakRetained showInviteRequestFromContact:v3 withPostingStyle:1];
}

- (void)_showFakeInvitationResponse
{
  WeakRetained = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
  v3 = [(ASFakeBulletinManager *)self _fakeContact];
  [WeakRetained showInviteAcceptResponseFrom:v3];
}

- (void)_showFakeInviteAttemptNeedsSetup
{
  WeakRetained = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
  v3 = [(ASFakeBulletinManager *)self _fakeContact];
  [WeakRetained showInviteAttemptNeedsSetupFromContact:v3];
}

- (void)_showFakeNeedToSignIn
{
  WeakRetained = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
  v3 = [(ASFakeBulletinManager *)self _fakeContact];
  [WeakRetained showInviteAttemptNeedToSignInFrom:v3];
}

- (void)_showFakeNeedToUpgrade
{
  WeakRetained = objc_loadWeakRetained(&self->_friendInviteBulletinManager);
  v3 = [(ASFakeBulletinManager *)self _fakeContact];
  [WeakRetained showInviteAttemptNeedToUpgradeFrom:v3];
}

- (id)_fakeContact
{
  v2 = objc_alloc_init(MEMORY[0x277CE90E8]);
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"johndoe@icloud.com"];
  [v2 setDestinations:v3];

  return v2;
}

@end