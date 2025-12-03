@interface ASFriend
+ (ASFriend)friendWithCodableFriend:(id)friend;
- (ASCompetition)competitionPendingAcceptance;
- (ASCompetition)currentCompetition;
- (ASCompetition)currentOrMostRecentCompetition;
- (ASCompetition)mostRecentlyCompletedCompetition;
- (ASFriend)initWithActivitySnapshots:(id)snapshots friendAchievements:(id)achievements friendWorkouts:(id)workouts contact:(id)contact competitions:(id)competitions;
- (BOOL)canSeeMyActivityData;
- (BOOL)estimatedIsStandaloneForSnapshotIndex:(id)index;
- (BOOL)hasCompetitionHistory;
- (BOOL)hasCompetitionRequestFromMe;
- (BOOL)hasCompletedCompetition;
- (BOOL)hasCompletedFirstDayOfCurrentCompetition;
- (BOOL)hasInviteRequestFromMe;
- (BOOL)hasPendingCompetitionRequestFromMe;
- (BOOL)ignoredCompetitionRequestFromMe;
- (BOOL)inviteRequestToMeWasAccepted;
- (BOOL)isActivityDataCurrentlyVisibleToMe;
- (BOOL)isActivityDataVisibleToMeForDate:(id)date;
- (BOOL)isAwaitingCompetitionResponseFromMe;
- (BOOL)isAwaitingInviteResponseFromMe;
- (BOOL)isCompetitionActive;
- (BOOL)isCurrentlyHidingActivityDataFromMe;
- (BOOL)isEligibleToReceiveCompetitionRequest;
- (BOOL)isFriendshipCurrentlyActive;
- (BOOL)isHidingActivityDataFromMeForDate:(id)date;
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
- (id)_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:(int64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fullDescription;
- (id)snapshotWithGoalsCarriedForwardForSnapshotIndex:(id)index;
- (unint64_t)numberOfCompetitionWinsAgainstMe;
- (unint64_t)numberOfCompetitionWinsByMe;
- (void)setSnapshots:(id)snapshots;
@end

@implementation ASFriend

- (NSTimeZone)timeZone
{
  mostRecentSnapshot = [(ASFriend *)self mostRecentSnapshot];
  timeZone = [mostRecentSnapshot timeZone];
  if (!timeZone)
  {
    timeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  return timeZone;
}

- (_HKFitnessFriendActivitySnapshot)mostRecentSnapshot
{
  allValues = [(NSDictionary *)self->_snapshots allValues];
  v3 = _HKMostRecentActivitySnapshotInSnapshots();

  return v3;
}

- (BOOL)isMe
{
  contact = [(ASFriend *)self contact];
  v3 = contact == 0;

  return v3;
}

- (NSString)displayName
{
  if ([(ASFriend *)self isMe])
  {
    contact = ActivitySharingBundle();
    [contact localizedStringForKey:@"ME" value:&stru_2850D2AA8 table:@"Localizable"];
  }

  else
  {
    contact = [(ASFriend *)self contact];
    [contact displayName];
  }
  v4 = ;

  return v4;
}

- (BOOL)isFriendshipCurrentlyActive
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  if ([primaryRelationship isFriendshipActive])
  {
    isFriendshipActive = [primaryRemoteRelationship isFriendshipActive];
  }

  else
  {
    isFriendshipActive = 0;
  }

  return isFriendshipActive;
}

- (BOOL)isActivityDataCurrentlyVisibleToMe
{
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  isActivityDataVisible = [primaryRemoteRelationship isActivityDataVisible];

  return isActivityDataVisible;
}

- (_HKFitnessFriendActivitySnapshot)currentSnapshotWithGoalsCarriedForward
{
  currentSnapshot = [(ASFriend *)self currentSnapshot];
  if (!currentSnapshot)
  {
    currentCacheIndex = [(ASFriend *)self currentCacheIndex];
    currentSnapshot = -[ASFriend _emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:](self, "_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:", [currentCacheIndex integerValue]);
  }

  return currentSnapshot;
}

- (ASCompetition)currentCompetition
{
  if ([(ASFriend *)self isCompetitionActive])
  {
    lastObject = [(NSArray *)self->_competitions lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (_HKFitnessFriendActivitySnapshot)currentSnapshot
{
  currentCacheIndex = [(ASFriend *)self currentCacheIndex];
  v4 = [(NSDictionary *)self->_snapshots objectForKeyedSubscript:currentCacheIndex];

  return v4;
}

- (BOOL)isCompetitionActive
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  v5 = ([primaryRelationship isCompetitionActive] & 1) != 0 || objc_msgSend(primaryRelationship, "hasCompletedCompetition") && (objc_msgSend(primaryRemoteRelationship, "isCompetitionActive") & 1) != 0;

  return v5;
}

- (BOOL)hasInviteRequestFromMe
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  hasOutgoingInviteRequest = [primaryRelationship hasOutgoingInviteRequest];

  return hasOutgoingInviteRequest;
}

- (NSNumber)currentCacheIndex
{
  currentCacheIndex = self->_currentCacheIndex;
  if (!currentCacheIndex)
  {
    currentDateComponents = [(ASFriend *)self currentDateComponents];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:_HKCacheIndexFromDateComponents()];
    v6 = self->_currentCacheIndex;
    self->_currentCacheIndex = v5;

    currentCacheIndex = self->_currentCacheIndex;
  }

  return currentCacheIndex;
}

- (id)description
{
  relationship = [(ASContact *)self->_contact relationship];
  remoteRelationship = [(ASContact *)self->_contact remoteRelationship];
  v5 = MEMORY[0x277CCACA8];
  displayName = [(ASContact *)self->_contact displayName];
  uUID = [(ASFriend *)self UUID];
  v8 = [v5 stringWithFormat:@"ASFriend %@ (%@), local relationship: %@, remote relationship: %@, competitions: %@", displayName, uUID, relationship, remoteRelationship, self->_competitions];

  return v8;
}

- (NSDateComponents)currentDateComponents
{
  timeZone = [(ASFriend *)self timeZone];
  if (currentDateComponents_onceToken != -1)
  {
    [ASFriend currentDateComponents];
  }

  [currentDateComponents___friendTimeZoneCalendar setTimeZone:timeZone];
  v3 = currentDateComponents___friendTimeZoneCalendar;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 components:30 fromDate:date];

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
    contact = [(ASFriend *)self contact];
    fullName = [contact fullName];

    contact2 = [(ASFriend *)self contact];
    v3 = contact2;
    if (fullName)
    {
      [contact2 fullName];
    }

    else
    {
      [contact2 displayName];
    }
    v4 = ;
  }

  v8 = v4;

  return v8;
}

+ (ASFriend)friendWithCodableFriend:(id)friend
{
  friendCopy = friend;
  contact = [friendCopy contact];
  v5 = [ASContact contactWithCodableContact:contact];

  snapshots = [friendCopy snapshots];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__ASFriend_DomainCodable__friendWithCodableFriend___block_invoke;
  v28[3] = &unk_278C46360;
  v29 = v5;
  v7 = v5;
  v8 = [snapshots hk_map:v28];

  v9 = ASSnapshotDictionaryByIndex(v8);
  v10 = MEMORY[0x277CBEB98];
  workouts = [friendCopy workouts];
  v12 = [v10 setWithArray:workouts];
  uUID = [v7 UUID];
  v14 = ASWorkoutsFromCodableWorkouts(v12, uUID);

  allObjects = [v14 allObjects];
  v16 = ASWorkoutDictionaryByIndex(allObjects);

  v17 = MEMORY[0x277CBEB98];
  achievements = [friendCopy achievements];
  v19 = [v17 setWithArray:achievements];
  uUID2 = [v7 UUID];
  v21 = ASAchievementsFromCodableAchievements(v19, uUID2);

  allObjects2 = [v21 allObjects];
  v23 = ASAchievementDictionaryByIndex(allObjects2);

  competitions = [friendCopy competitions];

  v25 = [competitions hk_map:&__block_literal_global_304];

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

- (ASFriend)initWithActivitySnapshots:(id)snapshots friendAchievements:(id)achievements friendWorkouts:(id)workouts contact:(id)contact competitions:(id)competitions
{
  snapshotsCopy = snapshots;
  achievementsCopy = achievements;
  workoutsCopy = workouts;
  contactCopy = contact;
  competitionsCopy = competitions;
  v21.receiver = self;
  v21.super_class = ASFriend;
  v17 = [(ASFriend *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_snapshots, snapshots);
    objc_storeStrong(&v18->_friendAchievements, achievements);
    objc_storeStrong(&v18->_friendWorkouts, workouts);
    objc_storeStrong(&v18->_contact, contact);
    objc_storeStrong(&v18->_competitions, competitions);
  }

  return v18;
}

- (id)fullDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"==================================================================\n"];
  displayName = [(ASFriend *)self displayName];
  fullName = [(ASFriend *)self fullName];
  uUID = [(ASFriend *)self UUID];
  timeZone = [(ASFriend *)self timeZone];
  [v3 appendFormat:@"%@ [%@] (%@) %@\n", displayName, fullName, uUID, timeZone];

  [v3 appendFormat:@"==================================================================\n\n"];
  fullDescription = [(ASContact *)self->_contact fullDescription];
  [v3 appendFormat:@"%@\n", fullDescription];

  relationshipStorage = [(ASContact *)self->_contact relationshipStorage];
  fullDescription2 = [relationshipStorage fullDescription];
  [v3 appendFormat:@"%@", fullDescription2];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSDictionary *)self->_snapshots copyWithZone:zone];
  v7 = [(NSDictionary *)self->_friendAchievements copyWithZone:zone];
  v8 = [(NSDictionary *)self->_friendWorkouts copyWithZone:zone];
  v9 = [(ASContact *)self->_contact copyWithZone:zone];
  v10 = [(NSArray *)self->_competitions copyWithZone:zone];
  v11 = [v5 initWithActivitySnapshots:v6 friendAchievements:v7 friendWorkouts:v8 contact:v9 competitions:v10];

  return v11;
}

- (BOOL)canSeeMyActivityData
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  isActivityDataVisible = [primaryRelationship isActivityDataVisible];

  return isActivityDataVisible;
}

- (BOOL)isMyActivityDataCurrentlyHidden
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  isHidingActivityData = [primaryRelationship isHidingActivityData];

  return isHidingActivityData;
}

- (BOOL)isCurrentlyHidingActivityDataFromMe
{
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  isHidingActivityData = [primaryRemoteRelationship isHidingActivityData];

  return isHidingActivityData;
}

- (BOOL)isActivityDataVisibleToMeForDate:(id)date
{
  contact = self->_contact;
  dateCopy = date;
  primaryRemoteRelationship = [(ASContact *)contact primaryRemoteRelationship];
  v6 = [primaryRemoteRelationship relationshipSnapshotForDate:dateCopy];

  LOBYTE(primaryRemoteRelationship) = [v6 isActivityDataVisible];
  return primaryRemoteRelationship;
}

- (BOOL)isMuted
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  isMuteEnabled = [primaryRelationship isMuteEnabled];

  return isMuteEnabled;
}

- (BOOL)isAwaitingInviteResponseFromMe
{
  v3 = ASSecureCloudEnabled();
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  isAwaitingInviteResponse = [primaryRelationship isAwaitingInviteResponse];
  v6 = v3 ^ 1;
  v7 = (v3 ^ 1) & isAwaitingInviteResponse;
  if (v6 & 1) == 0 && (isAwaitingInviteResponse)
  {
    if ([primaryRelationship cloudType] == 1)
    {
      pendingRelationshipShareItem = [(ASContact *)self->_contact pendingRelationshipShareItem];
      if (pendingRelationshipShareItem)
      {
        pendingLegacyShareLocations = [(ASContact *)self->_contact pendingLegacyShareLocations];
        v7 = pendingLegacyShareLocations != 0;
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
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  hasIncomingInviteRequest = [primaryRelationship hasIncomingInviteRequest];
  v6 = v3 ^ 1;
  v7 = (v3 ^ 1) & hasIncomingInviteRequest;
  if (v6 & 1) == 0 && (hasIncomingInviteRequest)
  {
    if ([primaryRelationship cloudType] == 1)
    {
      pendingRelationshipShareItem = [(ASContact *)self->_contact pendingRelationshipShareItem];
      if (pendingRelationshipShareItem)
      {
        pendingLegacyShareLocations = [(ASContact *)self->_contact pendingLegacyShareLocations];
        v7 = pendingLegacyShareLocations != 0;
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
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  if ([primaryRelationship hasIncomingInviteRequest])
  {
    primaryRelationship2 = [(ASContact *)self->_contact primaryRelationship];
    v5 = [primaryRelationship2 isAwaitingInviteResponse] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSDate)dateForLatestOutgoingInviteRequest
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  dateForLatestOutgoingInviteRequest = [primaryRelationship dateForLatestOutgoingInviteRequest];

  return dateForLatestOutgoingInviteRequest;
}

- (NSDate)dateForLatestDataHiddenFromMe
{
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  dateForLatestDataHidden = [primaryRemoteRelationship dateForLatestDataHidden];

  return dateForLatestDataHidden;
}

- (NSDate)dateForLatestDataHidden
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  dateForLatestDataHidden = [primaryRelationship dateForLatestDataHidden];

  return dateForLatestDataHidden;
}

- (NSDate)dateActivityDataInitiallyBecameVisibleToMe
{
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  dateActivityDataInitiallyBecameVisible = [primaryRemoteRelationship dateActivityDataInitiallyBecameVisible];

  return dateActivityDataInitiallyBecameVisible;
}

- (BOOL)isHidingActivityDataFromMeForDate:(id)date
{
  contact = self->_contact;
  dateCopy = date;
  primaryRemoteRelationship = [(ASContact *)contact primaryRemoteRelationship];
  v6 = [primaryRemoteRelationship relationshipSnapshotForDate:dateCopy];

  LOBYTE(primaryRemoteRelationship) = [v6 isHidingActivityData];
  return primaryRemoteRelationship;
}

- (NSDate)dateForLatestRelationshipStart
{
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  dateForLatestRelationshipStart = [primaryRemoteRelationship dateForLatestRelationshipStart];

  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  dateForLatestRelationshipStart2 = [primaryRelationship dateForLatestRelationshipStart];

  if ([(NSDate *)dateForLatestRelationshipStart hk_isAfterDate:dateForLatestRelationshipStart2])
  {
    v7 = dateForLatestRelationshipStart;
  }

  else
  {
    v7 = dateForLatestRelationshipStart2;
  }

  v8 = v7;

  return v7;
}

- (NSDate)dateForLatestOutgoingCompetitionRequest
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  dateForLatestOutgoingCompetitionRequest = [primaryRelationship dateForLatestOutgoingCompetitionRequest];

  return dateForLatestOutgoingCompetitionRequest;
}

- (NSDate)dateForLatestIncomingCompetitionRequest
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  dateForLatestIncomingCompetitionRequest = [primaryRelationship dateForLatestIncomingCompetitionRequest];

  return dateForLatestIncomingCompetitionRequest;
}

- (BOOL)isAwaitingCompetitionResponseFromMe
{
  if ([(ASFriend *)self isCompetitionActive])
  {
    return 0;
  }

  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  if ([primaryRelationship hasIncomingCompetitionRequest])
  {
    dateForLatestIncomingCompetitionRequest = [(ASFriend *)self dateForLatestIncomingCompetitionRequest];
    HasExpired = ASCompetitionRequestHasExpired(dateForLatestIncomingCompetitionRequest);

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
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  hasOutgoingCompetitionRequest = [primaryRelationship hasOutgoingCompetitionRequest];

  return hasOutgoingCompetitionRequest;
}

- (BOOL)hasPendingCompetitionRequestFromMe
{
  if (![(ASFriend *)self isCompetitionActive])
  {
    hasCompetitionRequestFromMe = [(ASFriend *)self hasCompetitionRequestFromMe];
    if (!hasCompetitionRequestFromMe)
    {
      return hasCompetitionRequestFromMe;
    }

    if (![(ASFriend *)self ignoredCompetitionRequestFromMe])
    {
      goto LABEL_6;
    }

    primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
    dateForLatestIgnoredCompetitionRequest = [primaryRemoteRelationship dateForLatestIgnoredCompetitionRequest];
    dateForLatestOutgoingCompetitionRequest = [(ASFriend *)self dateForLatestOutgoingCompetitionRequest];
    v7 = [dateForLatestIgnoredCompetitionRequest hk_isAfterDate:dateForLatestOutgoingCompetitionRequest];

    if ((v7 & 1) == 0)
    {
LABEL_6:
      dateForLatestOutgoingCompetitionRequest2 = [(ASFriend *)self dateForLatestOutgoingCompetitionRequest];
      HasExpired = ASCompetitionRequestHasExpired(dateForLatestOutgoingCompetitionRequest2);

      LOBYTE(hasCompetitionRequestFromMe) = HasExpired ^ 1;
      return hasCompetitionRequestFromMe;
    }
  }

  LOBYTE(hasCompetitionRequestFromMe) = 0;
  return hasCompetitionRequestFromMe;
}

- (BOOL)ignoredCompetitionRequestFromMe
{
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  if ([primaryRemoteRelationship hasIgnoredCompetitionRequest])
  {
    dateForLatestOutgoingCompetitionRequest = [(ASFriend *)self dateForLatestOutgoingCompetitionRequest];
    dateForLatestIgnoredCompetitionRequest = [primaryRemoteRelationship dateForLatestIgnoredCompetitionRequest];
    v6 = [dateForLatestIgnoredCompetitionRequest hk_isAfterDate:dateForLatestOutgoingCompetitionRequest];
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
    isCompetitionActive = [(ASFriend *)self isCompetitionActive];
    hasCompletedCompetition = [(ASFriend *)self hasCompletedCompetition];
    if (isCompetitionActive || !hasCompletedCompetition)
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
  completedCompetitions = [(ASFriend *)self completedCompetitions];
  lastObject = [completedCompetitions lastObject];

  return lastObject;
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
    lastObject = [(NSArray *)self->_competitions lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (BOOL)hasCompletedCompetition
{
  primaryRelationship = [(ASContact *)self->_contact primaryRelationship];
  hasCompletedCompetition = [primaryRelationship hasCompletedCompetition];

  return hasCompletedCompetition;
}

- (BOOL)hasCompletedFirstDayOfCurrentCompetition
{
  isCompetitionActive = [(ASFriend *)self isCompetitionActive];
  if (isCompetitionActive)
  {
    currentCompetition = [(ASFriend *)self currentCompetition];
    stage = [currentCompetition stage];

    if (stage == 1)
    {
      currentCompetition2 = [(ASFriend *)self currentCompetition];
      isFirstDayOfCompetition = [currentCompetition2 isFirstDayOfCompetition];

      LOBYTE(isCompetitionActive) = isFirstDayOfCompetition ^ 1;
    }

    else
    {
      LOBYTE(isCompetitionActive) = 0;
    }
  }

  return isCompetitionActive;
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
  completedCompetitions = [(ASFriend *)self completedCompetitions];
  v3 = [completedCompetitions count] != 0;

  return v3;
}

- (unint64_t)numberOfCompetitionWinsAgainstMe
{
  completedCompetitions = [(ASFriend *)self completedCompetitions];
  v3 = ASCompetitionWinCountForParticipant(completedCompetitions, 1);

  return v3;
}

- (unint64_t)numberOfCompetitionWinsByMe
{
  completedCompetitions = [(ASFriend *)self completedCompetitions];
  v3 = ASCompetitionWinCountForParticipant(completedCompetitions, 0);

  return v3;
}

- (NSDate)earliestCompetitionVictoryOrPotentialVictoryDate
{
  v24 = *MEMORY[0x277D85DE8];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  if ([(ASFriend *)self isCompetitionActive])
  {
    currentCompetition = [(ASFriend *)self currentCompetition];
  }

  else
  {
    competitionPendingAcceptance = [(ASFriend *)self competitionPendingAcceptance];

    if (!competitionPendingAcceptance)
    {
      goto LABEL_6;
    }

    currentCompetition = [(ASFriend *)self competitionPendingAcceptance];
  }

  v6 = currentCompetition;
  endDate = [currentCompetition endDate];

  distantFuture = endDate;
LABEL_6:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  completedCompetitions = [(ASFriend *)self completedCompetitions];
  v9 = [completedCompetitions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(completedCompetitions);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isParticipantWinning:0])
        {
          endDate2 = [v13 endDate];
          v15 = [endDate2 hk_isBeforeDate:distantFuture];

          if (v15)
          {
            endDate3 = [v13 endDate];

            distantFuture = endDate3;
          }
        }
      }

      v10 = [completedCompetitions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return distantFuture;
}

- (void)setSnapshots:(id)snapshots
{
  objc_storeStrong(&self->_snapshots, snapshots);
  snapshotsCopy = snapshots;
  currentCacheIndex = self->_currentCacheIndex;
  self->_currentCacheIndex = 0;
}

- (id)_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:(int64_t)index
{
  mostRecentSnapshot = [(ASFriend *)self mostRecentSnapshot];
  if (mostRecentSnapshot)
  {
    v5 = _HKStartDateForSnapshotIndex();
    v6 = _HKEndDateForSnapshotIndex();
    v7 = MEMORY[0x277CCDDC8];
    sourceUUID = [mostRecentSnapshot sourceUUID];
    v9 = [v7 _fitnessFriendActivitySnapshotWithSnapshotIndex:index startDate:v5 endDate:v6 sourceUUID:sourceUUID];

    [mostRecentSnapshot mmg];
    [v9 setMmg:?];
    [mostRecentSnapshot energyBurnedGoal];
    [v9 setEnergyBurnedGoal:?];
    [mostRecentSnapshot briskMinutesGoal];
    [v9 setBriskMinutesGoal:?];
    [mostRecentSnapshot activeHoursGoal];
    [v9 setActiveHoursGoal:?];
    [v9 setAmm:{objc_msgSend(mostRecentSnapshot, "amm")}];
    [v9 setHasCarriedForwardGoals:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)snapshotWithGoalsCarriedForwardForSnapshotIndex:(id)index
{
  indexCopy = index;
  snapshots = [(ASFriend *)self snapshots];
  v6 = [snapshots objectForKey:indexCopy];

  if (!v6)
  {
    v6 = -[ASFriend _emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:](self, "_emptySnapshotWithGoalsCarriedForwardForSnapshotIndex:", [indexCopy integerValue]);
  }

  return v6;
}

- (BOOL)estimatedIsStandaloneForSnapshotIndex:(id)index
{
  v34 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v5 = [(NSDictionary *)self->_snapshots objectForKeyedSubscript:indexCopy];
  v6 = v5;
  if (v5)
  {
    activitySummary = [v5 activitySummary];
    _isStandalonePhoneSummary = [activitySummary _isStandalonePhoneSummary];
  }

  else
  {
    allKeys = [(NSDictionary *)self->_snapshots allKeys];
    v10 = [allKeys sortedArrayUsingComparator:&__block_literal_global_341];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    activitySummary = v10;
    v11 = [activitySummary countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      selfCopy = self;
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
            objc_enumerationMutation(activitySummary);
          }

          v16 = *(*(&v29 + 1) + 8 * v14);
          longLongValue = [v16 longLongValue];
          longLongValue2 = [indexCopy longLongValue];
          v12 = v16;
          if (longLongValue >= longLongValue2)
          {

            if (v15 && v12)
            {
              longLongValue3 = [indexCopy longLongValue];
              v22 = longLongValue3 - [v15 longLongValue];
              if (v22 >= [v12 longLongValue] - longLongValue3)
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
        v11 = [activitySummary countByEnumeratingWithState:&v29 objects:v33 count:16];
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
      v23 = [(NSDictionary *)selfCopy->_snapshots objectForKeyedSubscript:v20];
      if (v23)
      {
        mEMORY[0x277CCDD30] = v23;
        activitySummary2 = [v23 activitySummary];
        _isStandalonePhoneSummary = [activitySummary2 _isStandalonePhoneSummary];

        goto LABEL_29;
      }

      v11 = v15;
    }

    else
    {

      v19 = 0;
    }

LABEL_28:
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    _isStandalonePhoneSummary = [mEMORY[0x277CCDD30] isStandalonePhoneFitnessMode];
    v15 = v11;
LABEL_29:
  }

  v26 = *MEMORY[0x277D85DE8];
  return _isStandalonePhoneSummary;
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
  primaryRemoteRelationship = [(ASContact *)self->_contact primaryRemoteRelationship];
  supportsCompetitions = [primaryRemoteRelationship supportsCompetitions];

  return supportsCompetitions;
}

- (BOOL)needsDowngradeRequestAcknowledgment
{
  if ([(ASContact *)self->_contact cloudType]!= 1)
  {
    return 0;
  }

  relationshipStorage = [(ASContact *)self->_contact relationshipStorage];
  legacyRemoteRelationship = [relationshipStorage legacyRemoteRelationship];
  secureCloudDowngradeNeedsAcknowledgement = [legacyRemoteRelationship secureCloudDowngradeNeedsAcknowledgement];

  return secureCloudDowngradeNeedsAcknowledgement;
}

uint64_t __33__ASFriend_currentDateComponents__block_invoke()
{
  currentDateComponents___friendTimeZoneCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];

  return MEMORY[0x2821F96F8]();
}

@end