@interface ASActivityDataBulletinManager
- (void)activitySharingManagerReady:(id)a3;
- (void)showActivityNotifications:(id)a3 withPostingStyle:(int64_t)a4;
@end

@implementation ASActivityDataBulletinManager

- (void)activitySharingManagerReady:(id)a3
{
  v4 = [a3 bulletinPostingManager];
  notificationPostingManager = self->_notificationPostingManager;
  self->_notificationPostingManager = v4;

  MEMORY[0x2821F96F8]();
}

- (void)showActivityNotifications:(id)a3 withPostingStyle:(int64_t)a4
{
  v23 = a3;
  v6 = [v23 workoutNotifications];
  v7 = [v6 hk_map:&__block_literal_global_7];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v10 = v9;

  v11 = [v23 achievementNotifications];
  v12 = [v11 hk_map:&__block_literal_global_297];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v15 = v14;

  v16 = [v23 goalCompletionNotifications];
  v17 = [v16 hk_map:&__block_literal_global_299];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v20 = v19;

  v21 = [v10 setByAddingObjectsFromSet:v15];
  v22 = [v21 setByAddingObjectsFromSet:v20];

  [(ASBulletinPostingManager *)self->_notificationPostingManager enqueueBulletins:v22 withPostingSyle:a4];
}

id __76__ASActivityDataBulletinManager_showActivityNotifications_withPostingStyle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 friend];
  v4 = [v2 sample];

  v5 = CodableWorkoutBulletinForFriendWorkout(v3, v4);

  return v5;
}

id __76__ASActivityDataBulletinManager_showActivityNotifications_withPostingStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 friend];
  v4 = [v2 sample];

  v5 = CodableAchievementBulletinForFriendAchievement(v3, v4);

  return v5;
}

id __76__ASActivityDataBulletinManager_showActivityNotifications_withPostingStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 friend];
  v4 = [v2 sample];

  v5 = CodableGoalCompletionBulletinForFriendActivitySnapshot(v3, v4);

  return v5;
}

@end