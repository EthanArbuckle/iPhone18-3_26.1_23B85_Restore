@interface UIColor(ActivitySharing)
+ (id)as_colorForParticipant:()ActivitySharing competition:;
+ (id)as_competitionButtonGold;
+ (id)as_competitionFriendListPlatterGold;
+ (id)as_competitionGraphBackgroundGold;
+ (id)as_competitionNotificationAccentGold;
+ (id)as_competitionNotificationPlatterGold;
@end

@implementation UIColor(ActivitySharing)

+ (id)as_competitionFriendListPlatterGold
{
  v0 = [MEMORY[0x277D75348] as_darkCompetitionGold];
  v1 = [v0 colorWithAlphaComponent:0.12];

  return v1;
}

+ (id)as_competitionNotificationPlatterGold
{
  v0 = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v1 = [v0 colorWithAlphaComponent:0.18];

  return v1;
}

+ (id)as_competitionNotificationAccentGold
{
  v0 = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)as_competitionButtonGold
{
  v0 = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v1 = [v0 colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)as_competitionGraphBackgroundGold
{
  v0 = [MEMORY[0x277D75348] as_darkCompetitionGold];
  v1 = [v0 colorWithAlphaComponent:0.3];

  return v1;
}

+ (id)as_colorForParticipant:()ActivitySharing competition:
{
  if ([a4 isParticipantWinning:?])
  {
    [MEMORY[0x277D75348] as_lightCompetitionGold];
  }

  else
  {
    [MEMORY[0x277D75348] as_darkCompetitionGold];
  }
  v4 = ;

  return v4;
}

@end