@interface ASCompetitionBulletinManager
- (void)activitySharingManagerReady:(id)a3;
- (void)showCompetitionAcceptedNotificationForFriend:(id)a3 competition:(id)a4 withPostingStyle:(int64_t)a5;
- (void)showCompetitionEndedNotificationForFriend:(id)a3 competition:(id)a4 withPostingStyle:(int64_t)a5;
- (void)showCompetitionRequestNotificationForFriend:(id)a3 competition:(id)a4 withPostingStyle:(int64_t)a5;
- (void)showCompetitionScoreCapCelebrationForFriends:(id)a3 withPostingStyle:(int64_t)a4;
- (void)showGizmoVersionTooLowForCompetitionRequestFrom:(id)a3;
@end

@implementation ASCompetitionBulletinManager

- (void)activitySharingManagerReady:(id)a3
{
  v4 = [a3 bulletinPostingManager];
  bulletinPostingManager = self->_bulletinPostingManager;
  self->_bulletinPostingManager = v4;

  MEMORY[0x2821F96F8]();
}

- (void)showCompetitionRequestNotificationForFriend:(id)a3 competition:(id)a4 withPostingStyle:(int64_t)a5
{
  v9 = CodableCompetitionRequestBulletinForFriend(a3, a4);
  bulletinPostingManager = self->_bulletinPostingManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v8 withPostingSyle:a5];
}

- (void)showCompetitionAcceptedNotificationForFriend:(id)a3 competition:(id)a4 withPostingStyle:(int64_t)a5
{
  v9 = CodableCompetitionAcceptedBulletinForFriend(a3, a4);
  bulletinPostingManager = self->_bulletinPostingManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v8 withPostingSyle:a5];
}

- (void)showCompetitionEndedNotificationForFriend:(id)a3 competition:(id)a4 withPostingStyle:(int64_t)a5
{
  v9 = CodableCompetitionEndedBulletinForFriend(a3, a4);
  bulletinPostingManager = self->_bulletinPostingManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v8 withPostingSyle:a5];
}

- (void)showCompetitionScoreCapCelebrationForFriends:(id)a3 withPostingStyle:(int64_t)a4
{
  v8 = CodableCompetitionScoreCapCelebrationBulletinForFriends(a3);
  bulletinPostingManager = self->_bulletinPostingManager;
  v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v7 withPostingSyle:a4];
}

- (void)showGizmoVersionTooLowForCompetitionRequestFrom:(id)a3
{
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Showing gizmo OS too low notification", buf, 2u);
  }

  v6 = ActivitySharingBundle();
  v7 = [v6 localizedStringForKey:@"COMPETITION_UPDATE_WATCHOS_TITLE" value:&stru_2850E59E8 table:@"Localizable"];

  v8 = MEMORY[0x277CCACA8];
  v9 = ActivitySharingBundle();
  v10 = [v9 localizedStringForKey:@"COMPETITION_UPDATE_WATCHOS_MESSAGE" value:&stru_2850E59E8 table:@"Localizable"];
  v11 = [v4 displayName];
  v12 = [v8 stringWithFormat:v10, v11];

  v13 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v14 = [MEMORY[0x277CE1F70] soundWithAlertType:19];
  [v14 setAlertTopic:*MEMORY[0x277D71F98]];
  [v13 setSound:v14];
  v15 = [MEMORY[0x277CBEAA8] date];
  [v13 setDate:v15];

  [v13 setTitle:v7];
  [v13 setBody:v12];
  v16 = MEMORY[0x277CE1FC0];
  v17 = [v4 UUID];

  v18 = [v17 UUIDString];
  v19 = [v16 requestWithIdentifier:v18 content:v13 trigger:0];

  [(ASBulletinPostingManager *)self->_bulletinPostingManager postNotificationRequest:v19];
}

@end