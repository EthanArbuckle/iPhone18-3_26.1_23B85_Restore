@interface ASFriend
+ (ASFriend)friendWithCodableFriend:(id)a3;
- (ASCompetition)competitionPendingAcceptance;
- (ASCompetition)currentCompetition;
- (ASCompetition)currentOrMostRecentCompetition;
- (ASCompetition)mostRecentlyCompletedCompetition;
- (ASFriend)initWithActivitySnapshots:(id)a3 friendAchievements:(id)a4 friendWorkouts:(id)a5 contact:(id)a6 competitions:(id)a7;
- (BOOL)canSeeMyActivityData;
- (BOOL)estimatedIsStandaloneForSnapshotIndex:(id)a3;
- (BOOL)hasCompetitionHistory;
- (BOOL)hasCompetitionRequestFromMe;
- (BOOL)hasCompletedCompetition;
- (BOOL)hasCompletedFirstDayOfCurrentCompetition;
- (BOOL)hasInviteRequestFromMe;
- (BOOL)hasPendingCompetitionRequestFromMe;
- (BOOL)ignoredCompetitionRequestFromMe;
- (BOOL)inviteRequestToMeWasAccepted;
- (BOOL)isActivityDataCurrentlyVisibleToMe;
- (BOOL)isActivityDataVisibleToMeForDate:(id)a3;
- (BOOL)isAwaitingCompetitionResponseFromMe;
- (BOOL)isAwaitingInviteResponseFromMe;
- (BOOL)isCompetitionActive;
- (BOOL)isCurrentlyHidingActivityDataFromMe;
- (BOOL)isEligibleToReceiveCompetitionRequest;
- (BOOL)isFriendshipCurrentlyActive;
- (BOOL)isHidingActivityDataFromMeForDate:(id)a3;
- (BOOL)isMe;
- (BOOL)isMuted;
- (BOOL)isMyActivityDataCurrentlyHidden;
- (BOOL)needsDowngradeRequestAcknowledgment;
- (BOOL)sentInviteRequestToMe;
- (BOOL)supportsCompetitions;
- (NSArray)completedCompetitions;
- (NSDate)dateActivityDataInitiallyBecameVisibleToMe;
- (NSDate)dateForLatestDataHidden;
- (NSDate)dateForLatestDataHiddenFromMe;
- (NSDate)dateForLatestIncomingCompetitionRequest;
- (NSDate)dateForLatestOutgoingCompetitionRequest;
- (NSDate)dateForLatestOutgoingInviteRequest;
- (NSDate)dateForLatestRelationshipStart;
- (NSDate)earliestCompetitionVictoryOrPotentialVictoryDate;
- (NSDateComponents)currentDateComponents;
- (NSNumber)currentCacheIndex;
- (NSString)displayName;
- (NSString)fullName;
- (NSTimeZone)timeZone;
- (_HKFitnessFriendActivitySnapshot)currentSnapshot;
- (_HKFitnessFriendActivitySnapshot)currentSnapshotWithGoalsCarriedForward;
- (_HKFitnessFriendActivitySnapshot)mostRecentSnapshot;
- (id)_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fullDescription;
- (id)snapshotWithGoalsCarriedForwardForSnapshotIndex:(id)a3;
- (unint64_t)numberOfCompetitionWinsAgainstMe;
- (unint64_t)numberOfCompetitionWinsByMe;
- (void)setSnapshots:(id)a3;
@end

@implementation ASFriend

- (NSTimeZone)timeZone
{
  v2 = [(ASFriend *)self mostRecentSnapshot];
  v3 = [v2 timeZone];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  return v3;
}

- (_HKFitnessFriendActivitySnapshot)mostRecentSnapshot
{
  v2 = [(NSDictionary *)self->_snapshots allValues];
  v3 = _HKMostRecentActivitySnapshotInSnapshots();

  return v3;
}

- (BOOL)isMe
{
  v2 = [(ASFriend *)self contact];
  v3 = v2 == 0;

  return v3;
}

- (NSString)displayName
{
  if ([(ASFriend *)self isMe])
  {
    v3 = ActivitySharingBundle();
    [v3 localizedStringForKey:@"ME" value:&stru_2850D2AA8 table:@"Localizable"];
  }

  else
  {
    v3 = [(ASFriend *)self contact];
    [v3 displayName];
  }
  v4 = ;

  return v4;
}

- (BOOL)isFriendshipCurrentlyActive
{
  v3 = [(ASContact *)self->_contact primaryRelationship];
  v4 = [(ASContact *)self->_contact primaryRemoteRelationship];
  if ([v3 isFriendshipActive])
  {
    v5 = [v4 isFriendshipActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isActivityDataCurrentlyVisibleToMe
{
  v2 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v3 = [v2 isActivityDataVisible];

  return v3;
}

- (_HKFitnessFriendActivitySnapshot)currentSnapshotWithGoalsCarriedForward
{
  v3 = [(ASFriend *)self currentSnapshot];
  if (!v3)
  {
    v4 = [(ASFriend *)self currentCacheIndex];
    v3 = -[ASFriend _emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:](self, "_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:", [v4 integerValue]);
  }

  return v3;
}

- (ASCompetition)currentCompetition
{
  if ([(ASFriend *)self isCompetitionActive])
  {
    v3 = [(NSArray *)self->_competitions lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_HKFitnessFriendActivitySnapshot)currentSnapshot
{
  v3 = [(ASFriend *)self currentCacheIndex];
  v4 = [(NSDictionary *)self->_snapshots objectForKeyedSubscript:v3];

  return v4;
}

- (BOOL)isCompetitionActive
{
  v3 = [(ASContact *)self->_contact primaryRelationship];
  v4 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v5 = ([v3 isCompetitionActive] & 1) != 0 || objc_msgSend(v3, "hasCompletedCompetition") && (objc_msgSend(v4, "isCompetitionActive") & 1) != 0;

  return v5;
}

- (BOOL)hasInviteRequestFromMe
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 hasOutgoingInviteRequest];

  return v3;
}

- (NSNumber)currentCacheIndex
{
  currentCacheIndex = self->_currentCacheIndex;
  if (!currentCacheIndex)
  {
    v4 = [(ASFriend *)self currentDateComponents];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:_HKCacheIndexFromDateComponents()];
    v6 = self->_currentCacheIndex;
    self->_currentCacheIndex = v5;

    currentCacheIndex = self->_currentCacheIndex;
  }

  return currentCacheIndex;
}

- (id)description
{
  v3 = [(ASContact *)self->_contact relationship];
  v4 = [(ASContact *)self->_contact remoteRelationship];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(ASContact *)self->_contact displayName];
  v7 = [(ASFriend *)self UUID];
  v8 = [v5 stringWithFormat:@"ASFriend %@ (%@), local relationship: %@, remote relationship: %@, competitions: %@", v6, v7, v3, v4, self->_competitions];

  return v8;
}

- (NSDateComponents)currentDateComponents
{
  v2 = [(ASFriend *)self timeZone];
  if (currentDateComponents_onceToken != -1)
  {
    [ASFriend currentDateComponents];
  }

  [currentDateComponents___friendTimeZoneCalendar setTimeZone:v2];
  v3 = currentDateComponents___friendTimeZoneCalendar;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 components:30 fromDate:v4];

  return v5;
}

- (NSString)fullName
{
  if ([(ASFriend *)self isMe])
  {
    v3 = ActivitySharingBundle();
    v4 = [v3 localizedStringForKey:@"ME" value:&stru_2850D2AA8 table:@"Localizable"];
  }

  else
  {
    v5 = [(ASFriend *)self contact];
    v6 = [v5 fullName];

    v7 = [(ASFriend *)self contact];
    v3 = v7;
    if (v6)
    {
      [v7 fullName];
    }

    else
    {
      [v7 displayName];
    }
    v4 = ;
  }

  v8 = v4;

  return v8;
}

+ (ASFriend)friendWithCodableFriend:(id)a3
{
  v3 = a3;
  v4 = [v3 contact];
  v5 = [ASContact contactWithCodableContact:v4];

  v6 = [v3 snapshots];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__ASFriend_DomainCodable__friendWithCodableFriend___block_invoke;
  v28[3] = &unk_278C46360;
  v29 = v5;
  v7 = v5;
  v8 = [v6 hk_map:v28];

  v9 = ASSnapshotDictionaryByIndex(v8);
  v10 = MEMORY[0x277CBEB98];
  v11 = [v3 workouts];
  v12 = [v10 setWithArray:v11];
  v13 = [v7 UUID];
  v14 = ASWorkoutsFromCodableWorkouts(v12, v13);

  v15 = [v14 allObjects];
  v16 = ASWorkoutDictionaryByIndex(v15);

  v17 = MEMORY[0x277CBEB98];
  v18 = [v3 achievements];
  v19 = [v17 setWithArray:v18];
  v20 = [v7 UUID];
  v21 = ASAchievementsFromCodableAchievements(v19, v20);

  v22 = [v21 allObjects];
  v23 = ASAchievementDictionaryByIndex(v22);

  v24 = [v3 competitions];

  v25 = [v24 hk_map:&__block_literal_global_304];

  v26 = [[ASFriend alloc] initWithActivitySnapshots:v9 friendAchievements:v23 friendWorkouts:v16 contact:v7 competitions:v25];

  return v26;
}

id __51__ASFriend_DomainCodable__friendWithCodableFriend___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDDC8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUID];
  v6 = [v2 fitnessFriendActivitySnapshotWithCodableSnapshot:v4 friendUUID:v5];

  return v6;
}

- (ASFriend)initWithActivitySnapshots:(id)a3 friendAchievements:(id)a4 friendWorkouts:(id)a5 contact:(id)a6 competitions:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ASFriend;
  v17 = [(ASFriend *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_snapshots, a3);
    objc_storeStrong(&v18->_friendAchievements, a4);
    objc_storeStrong(&v18->_friendWorkouts, a5);
    objc_storeStrong(&v18->_contact, a6);
    objc_storeStrong(&v18->_competitions, a7);
  }

  return v18;
}

- (id)fullDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"==================================================================\n"];
  v4 = [(ASFriend *)self displayName];
  v5 = [(ASFriend *)self fullName];
  v6 = [(ASFriend *)self UUID];
  v7 = [(ASFriend *)self timeZone];
  [v3 appendFormat:@"%@ [%@] (%@) %@\n", v4, v5, v6, v7];

  [v3 appendFormat:@"==================================================================\n\n"];
  v8 = [(ASContact *)self->_contact fullDescription];
  [v3 appendFormat:@"%@\n", v8];

  v9 = [(ASContact *)self->_contact relationshipStorage];
  v10 = [v9 fullDescription];
  [v3 appendFormat:@"%@", v10];

  [v3 appendFormat:@"Competitions: %@\n", self->_competitions];
  [v3 appendFormat:@"Snapshots: %@\n", self->_snapshots];
  [v3 appendFormat:@"Achievements: %@\n", self->_friendAchievements];
  [v3 appendFormat:@"Workouts: %@\n", self->_friendWorkouts];
  [v3 appendFormat:@"My Data Visible: %d\n", -[ASFriend canSeeMyActivityData](self, "canSeeMyActivityData")];
  [v3 appendFormat:@"My Data Explicitly Hidden: %d\n", -[ASFriend isMyActivityDataCurrentlyHidden](self, "isMyActivityDataCurrentlyHidden")];
  [v3 appendFormat:@"Friend Data Visible: %d\n", -[ASFriend isActivityDataCurrentlyVisibleToMe](self, "isActivityDataCurrentlyVisibleToMe")];
  [v3 appendFormat:@"Friend Explicitly Hiding: %d\n", -[ASFriend isCurrentlyHidingActivityDataFromMe](self, "isCurrentlyHidingActivityDataFromMe")];
  v11 = [v3 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSDictionary *)self->_snapshots copyWithZone:a3];
  v7 = [(NSDictionary *)self->_friendAchievements copyWithZone:a3];
  v8 = [(NSDictionary *)self->_friendWorkouts copyWithZone:a3];
  v9 = [(ASContact *)self->_contact copyWithZone:a3];
  v10 = [(NSArray *)self->_competitions copyWithZone:a3];
  v11 = [v5 initWithActivitySnapshots:v6 friendAchievements:v7 friendWorkouts:v8 contact:v9 competitions:v10];

  return v11;
}

- (BOOL)canSeeMyActivityData
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 isActivityDataVisible];

  return v3;
}

- (BOOL)isMyActivityDataCurrentlyHidden
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 isHidingActivityData];

  return v3;
}

- (BOOL)isCurrentlyHidingActivityDataFromMe
{
  v2 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v3 = [v2 isHidingActivityData];

  return v3;
}

- (BOOL)isActivityDataVisibleToMeForDate:(id)a3
{
  contact = self->_contact;
  v4 = a3;
  v5 = [(ASContact *)contact primaryRemoteRelationship];
  v6 = [v5 relationshipSnapshotForDate:v4];

  LOBYTE(v5) = [v6 isActivityDataVisible];
  return v5;
}

- (BOOL)isMuted
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 isMuteEnabled];

  return v3;
}

- (BOOL)isAwaitingInviteResponseFromMe
{
  v3 = ASSecureCloudEnabled();
  v4 = [(ASContact *)self->_contact primaryRelationship];
  v5 = [v4 isAwaitingInviteResponse];
  v6 = v3 ^ 1;
  v7 = (v3 ^ 1) & v5;
  if (v6 & 1) == 0 && (v5)
  {
    if ([v4 cloudType] == 1)
    {
      v8 = [(ASContact *)self->_contact pendingRelationshipShareItem];
      if (v8)
      {
        v9 = [(ASContact *)self->_contact pendingLegacyShareLocations];
        v7 = v9 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)sentInviteRequestToMe
{
  v3 = ASSecureCloudEnabled();
  v4 = [(ASContact *)self->_contact primaryRelationship];
  v5 = [v4 hasIncomingInviteRequest];
  v6 = v3 ^ 1;
  v7 = (v3 ^ 1) & v5;
  if (v6 & 1) == 0 && (v5)
  {
    if ([v4 cloudType] == 1)
    {
      v8 = [(ASContact *)self->_contact pendingRelationshipShareItem];
      if (v8)
      {
        v9 = [(ASContact *)self->_contact pendingLegacyShareLocations];
        v7 = v9 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)inviteRequestToMeWasAccepted
{
  v3 = [(ASContact *)self->_contact primaryRelationship];
  if ([v3 hasIncomingInviteRequest])
  {
    v4 = [(ASContact *)self->_contact primaryRelationship];
    v5 = [v4 isAwaitingInviteResponse] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSDate)dateForLatestOutgoingInviteRequest
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 dateForLatestOutgoingInviteRequest];

  return v3;
}

- (NSDate)dateForLatestDataHiddenFromMe
{
  v2 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v3 = [v2 dateForLatestDataHidden];

  return v3;
}

- (NSDate)dateForLatestDataHidden
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 dateForLatestDataHidden];

  return v3;
}

- (NSDate)dateActivityDataInitiallyBecameVisibleToMe
{
  v2 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v3 = [v2 dateActivityDataInitiallyBecameVisible];

  return v3;
}

- (BOOL)isHidingActivityDataFromMeForDate:(id)a3
{
  contact = self->_contact;
  v4 = a3;
  v5 = [(ASContact *)contact primaryRemoteRelationship];
  v6 = [v5 relationshipSnapshotForDate:v4];

  LOBYTE(v5) = [v6 isHidingActivityData];
  return v5;
}

- (NSDate)dateForLatestRelationshipStart
{
  v3 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v4 = [v3 dateForLatestRelationshipStart];

  v5 = [(ASContact *)self->_contact primaryRelationship];
  v6 = [v5 dateForLatestRelationshipStart];

  if ([(NSDate *)v4 hk_isAfterDate:v6])
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v7;
}

- (NSDate)dateForLatestOutgoingCompetitionRequest
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 dateForLatestOutgoingCompetitionRequest];

  return v3;
}

- (NSDate)dateForLatestIncomingCompetitionRequest
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 dateForLatestIncomingCompetitionRequest];

  return v3;
}

- (BOOL)isAwaitingCompetitionResponseFromMe
{
  if ([(ASFriend *)self isCompetitionActive])
  {
    return 0;
  }

  v4 = [(ASContact *)self->_contact primaryRelationship];
  if ([v4 hasIncomingCompetitionRequest])
  {
    v5 = [(ASFriend *)self dateForLatestIncomingCompetitionRequest];
    HasExpired = ASCompetitionRequestHasExpired(v5);

    v3 = HasExpired ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasCompetitionRequestFromMe
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 hasOutgoingCompetitionRequest];

  return v3;
}

- (BOOL)hasPendingCompetitionRequestFromMe
{
  if (![(ASFriend *)self isCompetitionActive])
  {
    v3 = [(ASFriend *)self hasCompetitionRequestFromMe];
    if (!v3)
    {
      return v3;
    }

    if (![(ASFriend *)self ignoredCompetitionRequestFromMe])
    {
      goto LABEL_6;
    }

    v4 = [(ASContact *)self->_contact primaryRemoteRelationship];
    v5 = [v4 dateForLatestIgnoredCompetitionRequest];
    v6 = [(ASFriend *)self dateForLatestOutgoingCompetitionRequest];
    v7 = [v5 hk_isAfterDate:v6];

    if ((v7 & 1) == 0)
    {
LABEL_6:
      v8 = [(ASFriend *)self dateForLatestOutgoingCompetitionRequest];
      HasExpired = ASCompetitionRequestHasExpired(v8);

      LOBYTE(v3) = HasExpired ^ 1;
      return v3;
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)ignoredCompetitionRequestFromMe
{
  v3 = [(ASContact *)self->_contact primaryRemoteRelationship];
  if ([v3 hasIgnoredCompetitionRequest])
  {
    v4 = [(ASFriend *)self dateForLatestOutgoingCompetitionRequest];
    v5 = [v3 dateForLatestIgnoredCompetitionRequest];
    v6 = [v5 hk_isAfterDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)completedCompetitions
{
  competitions = self->_competitions;
  if (!competitions)
  {
    competitions = MEMORY[0x277CBEBF8];
  }

  v4 = competitions;
  if ([(NSArray *)v4 count])
  {
    v5 = [(ASFriend *)self isCompetitionActive];
    v6 = [(ASFriend *)self hasCompletedCompetition];
    if (v5 || !v6)
    {
      v7 = [(NSArray *)v4 subarrayWithRange:0, [(NSArray *)v4 count]- 1];

      v4 = v7;
    }
  }

  v8 = [(NSArray *)v4 hk_filter:&__block_literal_global_15];

  v10 = ASCompetitionsSortedByEndDate(v8, v9);

  return v10;
}

- (ASCompetition)mostRecentlyCompletedCompetition
{
  v2 = [(ASFriend *)self completedCompetitions];
  v3 = [v2 lastObject];

  return v3;
}

- (ASCompetition)currentOrMostRecentCompetition
{
  if ([(ASFriend *)self isCompetitionActive])
  {
    [(ASFriend *)self currentCompetition];
  }

  else
  {
    [(ASFriend *)self mostRecentlyCompletedCompetition];
  }
  v3 = ;

  return v3;
}

- (ASCompetition)competitionPendingAcceptance
{
  if ([(ASFriend *)self hasPendingCompetitionRequestFromMe]|| [(ASFriend *)self isAwaitingCompetitionResponseFromMe])
  {
    v3 = [(NSArray *)self->_competitions lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasCompletedCompetition
{
  v2 = [(ASContact *)self->_contact primaryRelationship];
  v3 = [v2 hasCompletedCompetition];

  return v3;
}

- (BOOL)hasCompletedFirstDayOfCurrentCompetition
{
  v3 = [(ASFriend *)self isCompetitionActive];
  if (v3)
  {
    v4 = [(ASFriend *)self currentCompetition];
    v5 = [v4 stage];

    if (v5 == 1)
    {
      v6 = [(ASFriend *)self currentCompetition];
      v7 = [v6 isFirstDayOfCompetition];

      LOBYTE(v3) = v7 ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)isEligibleToReceiveCompetitionRequest
{
  if ([(ASFriend *)self isCompetitionActive]|| [(ASFriend *)self isAwaitingCompetitionResponseFromMe])
  {
    return 0;
  }

  else
  {
    return ![(ASFriend *)self hasPendingCompetitionRequestFromMe];
  }
}

- (BOOL)hasCompetitionHistory
{
  v2 = [(ASFriend *)self completedCompetitions];
  v3 = [v2 count] != 0;

  return v3;
}

- (unint64_t)numberOfCompetitionWinsAgainstMe
{
  v2 = [(ASFriend *)self completedCompetitions];
  v3 = ASCompetitionWinCountForParticipant(v2, 1);

  return v3;
}

- (unint64_t)numberOfCompetitionWinsByMe
{
  v2 = [(ASFriend *)self completedCompetitions];
  v3 = ASCompetitionWinCountForParticipant(v2, 0);

  return v3;
}

- (NSDate)earliestCompetitionVictoryOrPotentialVictoryDate
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  if ([(ASFriend *)self isCompetitionActive])
  {
    v4 = [(ASFriend *)self currentCompetition];
  }

  else
  {
    v5 = [(ASFriend *)self competitionPendingAcceptance];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(ASFriend *)self competitionPendingAcceptance];
  }

  v6 = v4;
  v7 = [v4 endDate];

  v3 = v7;
LABEL_6:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(ASFriend *)self completedCompetitions];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isParticipantWinning:0])
        {
          v14 = [v13 endDate];
          v15 = [v14 hk_isBeforeDate:v3];

          if (v15)
          {
            v16 = [v13 endDate];

            v3 = v16;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setSnapshots:(id)a3
{
  objc_storeStrong(&self->_snapshots, a3);
  v6 = a3;
  currentCacheIndex = self->_currentCacheIndex;
  self->_currentCacheIndex = 0;
}

- (id)_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:(int64_t)a3
{
  v4 = [(ASFriend *)self mostRecentSnapshot];
  if (v4)
  {
    v5 = _HKStartDateForSnapshotIndex();
    v6 = _HKEndDateForSnapshotIndex();
    v7 = MEMORY[0x277CCDDC8];
    v8 = [v4 sourceUUID];
    v9 = [v7 _fitnessFriendActivitySnapshotWithSnapshotIndex:a3 startDate:v5 endDate:v6 sourceUUID:v8];

    [v4 mmg];
    [v9 setMmg:?];
    [v4 energyBurnedGoal];
    [v9 setEnergyBurnedGoal:?];
    [v4 briskMinutesGoal];
    [v9 setBriskMinutesGoal:?];
    [v4 activeHoursGoal];
    [v9 setActiveHoursGoal:?];
    [v9 setAmm:{objc_msgSend(v4, "amm")}];
    [v9 setHasCarriedForwardGoals:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)snapshotWithGoalsCarriedForwardForSnapshotIndex:(id)a3
{
  v4 = a3;
  v5 = [(ASFriend *)self snapshots];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = -[ASFriend _emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:](self, "_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:", [v4 integerValue]);
  }

  return v6;
}

- (BOOL)estimatedIsStandaloneForSnapshotIndex:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSDictionary *)self->_snapshots objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 activitySummary];
    v8 = [v7 _isStandalonePhoneSummary];
  }

  else
  {
    v9 = [(NSDictionary *)self->_snapshots allKeys];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_341];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v10;
    v11 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v28 = self;
      v12 = 0;
      v13 = *v30;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v29 + 1) + 8 * v14);
          v17 = [v16 longLongValue];
          v18 = [v4 longLongValue];
          v12 = v16;
          if (v17 >= v18)
          {

            if (v15 && v12)
            {
              v21 = [v4 longLongValue];
              v22 = v21 - [v15 longLongValue];
              if (v22 >= [v12 longLongValue] - v21)
              {
                v20 = v12;
              }

              else
              {
                v20 = v15;
              }
            }

            else
            {
              if (v15)
              {
                v20 = v15;
              }

              else
              {
                v20 = v12;
              }

              if (!(v15 | v12))
              {
                v19 = 0;
                v11 = 0;
                goto LABEL_28;
              }
            }

            v19 = v12;
            goto LABEL_24;
          }

          ++v14;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 0;
      v20 = v12;
      v15 = v12;
      if (!v12)
      {
        goto LABEL_28;
      }

LABEL_24:
      v23 = [(NSDictionary *)v28->_snapshots objectForKeyedSubscript:v20];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 activitySummary];
        v8 = [v25 _isStandalonePhoneSummary];

        goto LABEL_29;
      }

      v11 = v15;
    }

    else
    {

      v19 = 0;
    }

LABEL_28:
    v24 = [MEMORY[0x277CCDD30] sharedBehavior];
    v8 = [v24 isStandalonePhoneFitnessMode];
    v15 = v11;
LABEL_29:
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __50__ASFriend_estimatedIsStandaloneForSnapshotIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 longLongValue];
  if (v6 >= [v5 longLongValue])
  {
    v8 = [v4 longLongValue];
    v7 = v8 > [v5 longLongValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)supportsCompetitions
{
  v2 = [(ASContact *)self->_contact primaryRemoteRelationship];
  v3 = [v2 supportsCompetitions];

  return v3;
}

- (BOOL)needsDowngradeRequestAcknowledgment
{
  if ([(ASContact *)self->_contact cloudType]!= 1)
  {
    return 0;
  }

  v3 = [(ASContact *)self->_contact relationshipStorage];
  v4 = [v3 legacyRemoteRelationship];
  v5 = [v4 secureCloudDowngradeNeedsAcknowledgement];

  return v5;
}

uint64_t __33__ASFriend_currentDateComponents__block_invoke()
{
  currentDateComponents___friendTimeZoneCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];

  return MEMORY[0x2821F96F8]();
}

@end