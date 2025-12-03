@interface ASCompetitionBulletinManager
- (void)activitySharingManagerReady:(id)ready;
- (void)showCompetitionAcceptedNotificationForFriend:(id)friend competition:(id)competition withPostingStyle:(int64_t)style;
- (void)showCompetitionEndedNotificationForFriend:(id)friend competition:(id)competition withPostingStyle:(int64_t)style;
- (void)showCompetitionRequestNotificationForFriend:(id)friend competition:(id)competition withPostingStyle:(int64_t)style;
- (void)showCompetitionScoreCapCelebrationForFriends:(id)friends withPostingStyle:(int64_t)style;
- (void)showGizmoVersionTooLowForCompetitionRequestFrom:(id)from;
@end

@implementation ASCompetitionBulletinManager

- (void)activitySharingManagerReady:(id)ready
{
  bulletinPostingManager = [ready bulletinPostingManager];
  bulletinPostingManager = self->_bulletinPostingManager;
  self->_bulletinPostingManager = bulletinPostingManager;

  MEMORY[0x2821F96F8]();
}

- (void)showCompetitionRequestNotificationForFriend:(id)friend competition:(id)competition withPostingStyle:(int64_t)style
{
  v9 = CodableCompetitionRequestBulletinForFriend(friend, competition);
  bulletinPostingManager = self->_bulletinPostingManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v8 withPostingSyle:style];
}

- (void)showCompetitionAcceptedNotificationForFriend:(id)friend competition:(id)competition withPostingStyle:(int64_t)style
{
  v9 = CodableCompetitionAcceptedBulletinForFriend(friend, competition);
  bulletinPostingManager = self->_bulletinPostingManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v8 withPostingSyle:style];
}

- (void)showCompetitionEndedNotificationForFriend:(id)friend competition:(id)competition withPostingStyle:(int64_t)style
{
  v9 = CodableCompetitionEndedBulletinForFriend(friend, competition);
  bulletinPostingManager = self->_bulletinPostingManager;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v8 withPostingSyle:style];
}

- (void)showCompetitionScoreCapCelebrationForFriends:(id)friends withPostingStyle:(int64_t)style
{
  v8 = CodableCompetitionScoreCapCelebrationBulletinForFriends(friends);
  bulletinPostingManager = self->_bulletinPostingManager;
  v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [(ASBulletinPostingManager *)bulletinPostingManager enqueueBulletins:v7 withPostingSyle:style];
}

- (void)showGizmoVersionTooLowForCompetitionRequestFrom:(id)from
{
  fromCopy = from;
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
  displayName = [fromCopy displayName];
  v12 = [v8 stringWithFormat:v10, displayName];

  v13 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v14 = [MEMORY[0x277CE1F70] soundWithAlertType:19];
  [v14 setAlertTopic:*MEMORY[0x277D71F98]];
  [v13 setSound:v14];
  date = [MEMORY[0x277CBEAA8] date];
  [v13 setDate:date];

  [v13 setTitle:v7];
  [v13 setBody:v12];
  v16 = MEMORY[0x277CE1FC0];
  uUID = [fromCopy UUID];

  uUIDString = [uUID UUIDString];
  v19 = [v16 requestWithIdentifier:uUIDString content:v13 trigger:0];

  [(ASBulletinPostingManager *)self->_bulletinPostingManager postNotificationRequest:v19];
}

@end