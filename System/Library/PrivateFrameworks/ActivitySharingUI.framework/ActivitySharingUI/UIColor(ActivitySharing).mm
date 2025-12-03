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
  as_darkCompetitionGold = [MEMORY[0x277D75348] as_darkCompetitionGold];
  v1 = [as_darkCompetitionGold colorWithAlphaComponent:0.12];

  return v1;
}

+ (id)as_competitionNotificationPlatterGold
{
  as_lightCompetitionGold = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v1 = [as_lightCompetitionGold colorWithAlphaComponent:0.18];

  return v1;
}

+ (id)as_competitionNotificationAccentGold
{
  as_lightCompetitionGold = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v1 = [as_lightCompetitionGold colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)as_competitionButtonGold
{
  as_lightCompetitionGold = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v1 = [as_lightCompetitionGold colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)as_competitionGraphBackgroundGold
{
  as_darkCompetitionGold = [MEMORY[0x277D75348] as_darkCompetitionGold];
  v1 = [as_darkCompetitionGold colorWithAlphaComponent:0.3];

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