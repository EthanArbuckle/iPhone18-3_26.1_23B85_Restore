@interface GKGameActivity
+ (BOOL)isValidPartyCode:(id)code;
+ (NSArray)validPartyCodeAlphabet;
+ (id)startWithDefinition:(id)definition error:(id *)error;
+ (id)startWithDefinition:(id)definition partyCode:(id)code error:(id *)error;
+ (void)checkPendingGameActivityExistenceWithCompletionHandler:(id)handler;
+ (void)createFromGameActivityInstance:(id)instance completionHandler:(id)handler;
- (GKGameActivity)init;
- (GKGameActivity)initWithIdentifier:(id)identifier activityDefinition:(id)definition properties:(id)properties state:(unint64_t)state partyCode:(id)code creationDate:(id)date startDate:(id)startDate lastResumeDate:(id)self0 endDate:(id)self1 duration:(double)self2 achievements:(id)self3 leaderboardScores:(id)self4 creator:(id)self5 initiatedByApple:(BOOL)self6 referralLeaderboard:(id)self7 referralAchievement:(id)self8 participants:(id)self9 participantStates:(id)states shortGroupID:(id)d consumptionState:(id)consumptionState support:(id)support error:(id *)error;
- (NSDate)creationDate;
- (NSDictionary)participantStates;
- (NSDictionary)properties;
- (NSSet)participants;
- (NSString)partyCode;
- (NSString)shortGroupID;
- (NSURL)partyURL;
- (OS_dispatch_source_timer)gsTimer;
- (double)duration;
- (double)getProgressOnAchievement:(id)achievement;
- (id)fallbackPartyURL;
- (id)getScoreOnLeaderboard:(id)leaderboard;
- (id)makeMatchRequest;
- (unint64_t)state;
- (void)end;
- (void)findMatchWithCompletionHandler:(id)handler;
- (void)findPlayersForHostedMatchWithCompletionHandler:(id)handler;
- (void)markAsProcessed;
- (void)pause;
- (void)removeAchievements:(id)achievements;
- (void)removeScoresFromLeaderboards:(id)leaderboards;
- (void)resume;
- (void)setGsTimer:(id)timer;
- (void)setLastUpdateTime:(id)time;
- (void)setProgressOnAchievement:(id)achievement toPercentComplete:(double)complete;
- (void)setProperties:(id)properties;
- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score;
- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score context:(int64_t)context;
- (void)setupUpdateSubscription;
- (void)start;
@end

@implementation GKGameActivity

+ (void)checkPendingGameActivityExistenceWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2186B7B7C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2186B9398;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B93A0;
  v12[5] = v11;
  sub_2186A12F8(0, 0, v7, &unk_2186B93A8, v12);
}

- (OS_dispatch_source_timer)gsTimer
{
  v2 = *(self + OBJC_IVAR___GKGameActivity_gsTimer);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setGsTimer:(id)timer
{
  v3 = *(self + OBJC_IVAR___GKGameActivity_gsTimer);
  *(self + OBJC_IVAR___GKGameActivity_gsTimer) = timer;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSDictionary)properties
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186B70BC();
  os_unfair_lock_unlock((v2 + v4));

  v6 = sub_2186B79AC();

  return v6;
}

- (void)setProperties:(id)properties
{
  sub_2186B79BC();
  v4 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v4 + v6));
  sub_2186A8744();
  os_unfair_lock_unlock((v4 + v6));
}

- (unint64_t)state
{
  v3 = sub_2186B709C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v8 + v10));
  sub_2186B71FC();
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == *MEMORY[0x277D0CA40])
  {
    v13 = 1;
  }

  else if (v12 == *MEMORY[0x277D0CA48])
  {
    v13 = 2;
  }

  else if (v12 == *MEMORY[0x277D0CA38])
  {
    v13 = 4;
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    v13 = 0;
  }

  os_unfair_lock_unlock((v8 + v10));

  return v13;
}

- (NSString)partyCode
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A86EC(v9);
  os_unfair_lock_unlock((v2 + v4));
  v6 = v9[1];

  if (v6)
  {
    v7 = sub_2186B79FC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSURL)partyURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-v5];
  v7 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  selfCopy = self;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy2 = self;
  os_unfair_lock_lock((v7 + v9));
  sub_2186A86D4(v6);
  os_unfair_lock_unlock((v7 + v9));

  v11 = sub_2186B6FAC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2186B6F8C();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (NSDate)creationDate
{
  v3 = sub_2186B701C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v8 + v10));
  sub_2186B70DC();
  os_unfair_lock_unlock((v8 + v10));

  v12 = sub_2186B6FEC();
  (*(v4 + 8))(v7, v3);

  return v12;
}

- (double)duration
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186B725C();
  sub_2186B7EDC();
  v7 = v6;
  os_unfair_lock_unlock((v2 + v4));

  return v7;
}

+ (NSArray)validPartyCodeAlphabet
{
  sub_2186B765C();
  v2 = sub_2186B7A9C();

  return v2;
}

- (NSSet)participants
{
  v2 = *(self + OBJC_IVAR___GKGameActivity_participants);

  v3 = sub_2186B7B8C();

  return v3;
}

- (NSDictionary)participantStates
{
  v2 = *(self + OBJC_IVAR___GKGameActivity_participantStates);

  v3 = sub_2186B79AC();

  return v3;
}

- (NSString)shortGroupID
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186B711C();
  os_unfair_lock_unlock((v2 + v4));

  v6 = sub_2186B79FC();

  return v6;
}

- (GKGameActivity)initWithIdentifier:(id)identifier activityDefinition:(id)definition properties:(id)properties state:(unint64_t)state partyCode:(id)code creationDate:(id)date startDate:(id)startDate lastResumeDate:(id)self0 endDate:(id)self1 duration:(double)self2 achievements:(id)self3 leaderboardScores:(id)self4 creator:(id)self5 initiatedByApple:(BOOL)self6 referralLeaderboard:(id)self7 referralAchievement:(id)self8 participants:(id)self9 participantStates:(id)states shortGroupID:(id)d consumptionState:(id)consumptionState support:(id)support error:(id *)error
{
  stateCopy = state;
  selfCopy = self;
  definitionCopy = definition;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v105 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v94 - v30;
  MEMORY[0x28223BE20](v29);
  v117 = &v94 - v31;
  v32 = sub_2186B701C();
  v108 = *(v32 - 8);
  v33 = *(v108 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v109 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v94 - v36;
  v38 = sub_2186B7A0C();
  v102 = v39;
  v103 = v38;
  v101 = sub_2186B79BC();
  if (code)
  {
    v100 = sub_2186B7A0C();
    v99 = v40;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  dCopy = d;
  consumptionStateCopy = consumptionState;
  participantsCopy = participants;
  statesCopy = states;
  achievementsCopy = achievements;
  scoresCopy = scores;
  sub_2186B6FFC();
  v41 = v117;
  v104 = v37;
  if (startDate)
  {
    v42 = v109;
    sub_2186B6FFC();
    v43 = v108;
    (*(v108 + 32))(v41, v42, v32);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v108;
  }

  supportCopy = support;
  v45 = *(v43 + 56);
  v45(v41, v44, 1, v32);
  creatorCopy = creator;
  if (resumeDate)
  {
    v46 = v109;
    sub_2186B6FFC();
    v95 = *(v43 + 32);
    v47 = definitionCopy;
    endDateCopy = endDate;
    v49 = achievementsCopy;
    v50 = scoresCopy;
    creatorCopy2 = creator;
    leaderboardCopy = leaderboard;
    achievementCopy3 = achievement;
    achievementCopy2 = achievement;
    v55 = participantsCopy;
    v56 = statesCopy;
    v57 = dCopy;
    v58 = consumptionStateCopy;
    v59 = supportCopy;
    v60 = v118;
    v95(v118, v46, v32);
    v45(v60, 0, 1, v32);
  }

  else
  {
    v45(v118, 1, 1, v32);
    v61 = definitionCopy;
    endDateCopy2 = endDate;
    v63 = achievementsCopy;
    v64 = scoresCopy;
    creatorCopy3 = creator;
    leaderboardCopy2 = leaderboard;
    achievementCopy3 = achievement;
    achievementCopy4 = achievement;
    v68 = participantsCopy;
    v69 = statesCopy;
    v70 = dCopy;
    v71 = consumptionStateCopy;
    v72 = supportCopy;
  }

  v73 = v105;
  LODWORD(v105) = apple;
  leaderboardCopy3 = leaderboard;
  v96 = achievementCopy3;
  if (endDate)
  {
    v74 = v109;
    sub_2186B6FFC();

    (*(v108 + 32))(v73, v74, v32);
    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v45(v73, v75, 1, v32);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v76 = achievementsCopy;
  v77 = sub_2186B7B9C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v78 = scoresCopy;
  v79 = sub_2186B7B9C();

  v80 = participantsCopy;
  v81 = sub_2186B7B9C();

  v82 = statesCopy;
  v83 = v73;
  v84 = sub_2186B79BC();

  v85 = dCopy;
  v86 = sub_2186B7A0C();
  v88 = v87;

  v89 = consumptionStateCopy;
  v90 = sub_2186B7A0C();
  v92 = v91;

  return sub_218688454(v103, v102, definitionCopy, v101, stateCopy, v100, v99, v104, v117, v118, v83, v77, v79, creatorCopy, v105, leaderboardCopy3, v96, v81, v84, v86, v88, v90, v92, supportCopy);
}

- (void)setLastUpdateTime:(id)time
{
  v4 = *(self + OBJC_IVAR___GKGameActivity_lastUpdateTime);
  *(self + OBJC_IVAR___GKGameActivity_lastUpdateTime) = time;
  timeCopy = time;
}

- (void)setupUpdateSubscription
{
  selfCopy = self;
  sub_21868B22C();
}

+ (id)startWithDefinition:(id)definition partyCode:(id)code error:(id *)error
{
  sub_2186B7A0C();
  v6 = qword_2811ED5E0;
  definitionCopy = definition;
  v8 = definitionCopy;
  if (v6 != -1)
  {
    definitionCopy = swift_once();
  }

  v9 = MEMORY[0x28223BE20](definitionCopy);
  type metadata accessor for GKGameActivity(v9);
  sub_2186832AC(sub_2186A8670);

  return v11;
}

+ (id)startWithDefinition:(id)definition error:(id *)error
{
  v4 = qword_2811ED5E0;
  definitionCopy = definition;
  v6 = definitionCopy;
  if (v4 != -1)
  {
    definitionCopy = swift_once();
  }

  v7 = MEMORY[0x28223BE20](definitionCopy);
  type metadata accessor for GKGameActivity(v7);
  sub_2186832AC(sub_2186A8670);

  return v9;
}

+ (BOOL)isValidPartyCode:(id)code
{
  sub_2186B7A0C();
  valid = _sSo14GKGameActivityC7GameKitE16isValidPartyCodeySbSSFZ_0();

  return valid & 1;
}

- (void)start
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A86BC();
  os_unfair_lock_unlock((v2 + v4));
}

- (void)pause
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A86A4(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

- (void)resume
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A868C();
  os_unfair_lock_unlock((v2 + v4));
}

- (void)end
{
  selfCopy = self;
  GKGameActivity.end()();
}

- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score context:(int64_t)context
{
  leaderboardCopy = leaderboard;
  selfCopy = self;
  GKGameActivity.setScore(on:to:context:)(leaderboardCopy, score, context);
}

- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score
{
  leaderboardCopy = leaderboard;
  selfCopy = self;
  GKGameActivity.setScore(on:to:)(leaderboardCopy, score);
}

- (id)getScoreOnLeaderboard:(id)leaderboard
{
  leaderboardCopy = leaderboard;
  selfCopy = self;
  v6 = GKGameActivity.score(on:)(leaderboardCopy);

  return v6;
}

- (void)removeScoresFromLeaderboards:(id)leaderboards
{
  sub_2186804FC(0, &qword_27CC06FD8, &off_278236540);
  v4 = sub_2186B7AAC();
  selfCopy = self;
  GKGameActivity.removeScores(from:)(v4);
}

- (void)setProgressOnAchievement:(id)achievement toPercentComplete:(double)complete
{
  achievementCopy = achievement;
  selfCopy = self;
  GKGameActivity.setProgress(on:to:)(achievementCopy, complete);
}

- (double)getProgressOnAchievement:(id)achievement
{
  achievementCopy = achievement;
  selfCopy = self;
  v6 = GKGameActivity.progress(on:)(achievementCopy);

  return v6;
}

- (void)removeAchievements:(id)achievements
{
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_2186B7AAC();
  v4 = *(self + OBJC_IVAR___GKGameActivity__achievements);
  selfCopy = self;
  os_unfair_lock_lock((v4 + 24));
  sub_2186A875C((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

- (id)makeMatchRequest
{
  selfCopy = self;
  v3 = sub_2186921A0();

  return v3;
}

- (void)findMatchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2186B7B7C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B92F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2186B92F8;
  v13[5] = v12;
  selfCopy = self;
  sub_2186A12F8(0, 0, v8, &unk_2186B9300, v13);
}

- (void)findPlayersForHostedMatchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2186B7B7C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B92B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2186B92B8;
  v13[5] = v12;
  selfCopy = self;
  sub_2186A12F8(0, 0, v8, &unk_2186B92C0, v13);
}

- (GKGameActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)createFromGameActivityInstance:(id)instance completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = instance;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2186B7B7C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2186B9278;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2186B9280;
  v15[5] = v14;
  swift_unknownObjectRetain();
  sub_2186A12F8(0, 0, v10, &unk_2186B9288, v15);
}

- (void)markAsProcessed
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A79D4();
  os_unfair_lock_unlock((v2 + v4));
}

- (id)fallbackPartyURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_21869ADCC(v6);

  v8 = sub_2186B6FAC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2186B6F8C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

@end