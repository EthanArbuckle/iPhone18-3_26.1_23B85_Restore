@interface GKGameActivity
+ (BOOL)isValidPartyCode:(id)a3;
+ (NSArray)validPartyCodeAlphabet;
+ (id)startWithDefinition:(id)a3 error:(id *)a4;
+ (id)startWithDefinition:(id)a3 partyCode:(id)a4 error:(id *)a5;
+ (void)checkPendingGameActivityExistenceWithCompletionHandler:(id)a3;
+ (void)createFromGameActivityInstance:(id)a3 completionHandler:(id)a4;
- (GKGameActivity)init;
- (GKGameActivity)initWithIdentifier:(id)a3 activityDefinition:(id)a4 properties:(id)a5 state:(unint64_t)a6 partyCode:(id)a7 creationDate:(id)a8 startDate:(id)a9 lastResumeDate:(id)a10 endDate:(id)a11 duration:(double)a12 achievements:(id)a13 leaderboardScores:(id)a14 creator:(id)a15 initiatedByApple:(BOOL)a16 referralLeaderboard:(id)a17 referralAchievement:(id)a18 participants:(id)a19 participantStates:(id)a20 shortGroupID:(id)a21 consumptionState:(id)a22 support:(id)a23 error:(id *)a24;
- (NSDate)creationDate;
- (NSDictionary)participantStates;
- (NSDictionary)properties;
- (NSSet)participants;
- (NSString)partyCode;
- (NSString)shortGroupID;
- (NSURL)partyURL;
- (OS_dispatch_source_timer)gsTimer;
- (double)duration;
- (double)getProgressOnAchievement:(id)a3;
- (id)fallbackPartyURL;
- (id)getScoreOnLeaderboard:(id)a3;
- (id)makeMatchRequest;
- (unint64_t)state;
- (void)end;
- (void)findMatchWithCompletionHandler:(id)a3;
- (void)findPlayersForHostedMatchWithCompletionHandler:(id)a3;
- (void)markAsProcessed;
- (void)pause;
- (void)removeAchievements:(id)a3;
- (void)removeScoresFromLeaderboards:(id)a3;
- (void)resume;
- (void)setGsTimer:(id)a3;
- (void)setLastUpdateTime:(id)a3;
- (void)setProgressOnAchievement:(id)a3 toPercentComplete:(double)a4;
- (void)setProperties:(id)a3;
- (void)setScoreOnLeaderboard:(id)a3 toScore:(int64_t)a4;
- (void)setScoreOnLeaderboard:(id)a3 toScore:(int64_t)a4 context:(int64_t)a5;
- (void)setupUpdateSubscription;
- (void)start;
@end

@implementation GKGameActivity

+ (void)checkPendingGameActivityExistenceWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
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

- (void)setGsTimer:(id)a3
{
  v3 = *(self + OBJC_IVAR___GKGameActivity_gsTimer);
  *(self + OBJC_IVAR___GKGameActivity_gsTimer) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSDictionary)properties
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v5 = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186B70BC();
  os_unfair_lock_unlock((v2 + v4));

  v6 = sub_2186B79AC();

  return v6;
}

- (void)setProperties:(id)a3
{
  sub_2186B79BC();
  v4 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  v7 = self;
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
  v11 = self;
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
  v5 = self;
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
  v18 = self;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = self;
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
  v11 = self;
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
  v5 = self;
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
  v5 = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186B711C();
  os_unfair_lock_unlock((v2 + v4));

  v6 = sub_2186B79FC();

  return v6;
}

- (GKGameActivity)initWithIdentifier:(id)a3 activityDefinition:(id)a4 properties:(id)a5 state:(unint64_t)a6 partyCode:(id)a7 creationDate:(id)a8 startDate:(id)a9 lastResumeDate:(id)a10 endDate:(id)a11 duration:(double)a12 achievements:(id)a13 leaderboardScores:(id)a14 creator:(id)a15 initiatedByApple:(BOOL)a16 referralLeaderboard:(id)a17 referralAchievement:(id)a18 participants:(id)a19 participantStates:(id)a20 shortGroupID:(id)a21 consumptionState:(id)a22 support:(id)a23 error:(id *)a24
{
  v106 = a6;
  v107 = self;
  v119 = a4;
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
  if (a7)
  {
    v100 = sub_2186B7A0C();
    v99 = v40;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  v115 = a21;
  v116 = a22;
  v113 = a19;
  v114 = a20;
  v110 = a13;
  v111 = a14;
  sub_2186B6FFC();
  v41 = v117;
  v104 = v37;
  if (a9)
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

  v112 = a23;
  v45 = *(v43 + 56);
  v45(v41, v44, 1, v32);
  v98 = a15;
  if (a10)
  {
    v46 = v109;
    sub_2186B6FFC();
    v95 = *(v43 + 32);
    v47 = v119;
    v48 = a11;
    v49 = v110;
    v50 = v111;
    v51 = a15;
    v52 = a17;
    v53 = a18;
    v54 = a18;
    v55 = v113;
    v56 = v114;
    v57 = v115;
    v58 = v116;
    v59 = v112;
    v60 = v118;
    v95(v118, v46, v32);
    v45(v60, 0, 1, v32);
  }

  else
  {
    v45(v118, 1, 1, v32);
    v61 = v119;
    v62 = a11;
    v63 = v110;
    v64 = v111;
    v65 = a15;
    v66 = a17;
    v53 = a18;
    v67 = a18;
    v68 = v113;
    v69 = v114;
    v70 = v115;
    v71 = v116;
    v72 = v112;
  }

  v73 = v105;
  LODWORD(v105) = a16;
  v97 = a17;
  v96 = v53;
  if (a11)
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
  v76 = v110;
  v77 = sub_2186B7B9C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v78 = v111;
  v79 = sub_2186B7B9C();

  v80 = v113;
  v81 = sub_2186B7B9C();

  v82 = v114;
  v83 = v73;
  v84 = sub_2186B79BC();

  v85 = v115;
  v86 = sub_2186B7A0C();
  v88 = v87;

  v89 = v116;
  v90 = sub_2186B7A0C();
  v92 = v91;

  return sub_218688454(v103, v102, v119, v101, v106, v100, v99, v104, v117, v118, v83, v77, v79, v98, v105, v97, v96, v81, v84, v86, v88, v90, v92, v112);
}

- (void)setLastUpdateTime:(id)a3
{
  v4 = *(self + OBJC_IVAR___GKGameActivity_lastUpdateTime);
  *(self + OBJC_IVAR___GKGameActivity_lastUpdateTime) = a3;
  v3 = a3;
}

- (void)setupUpdateSubscription
{
  v2 = self;
  sub_21868B22C();
}

+ (id)startWithDefinition:(id)a3 partyCode:(id)a4 error:(id *)a5
{
  sub_2186B7A0C();
  v6 = qword_2811ED5E0;
  v7 = a3;
  v8 = v7;
  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v9 = MEMORY[0x28223BE20](v7);
  type metadata accessor for GKGameActivity(v9);
  sub_2186832AC(sub_2186A8670);

  return v11;
}

+ (id)startWithDefinition:(id)a3 error:(id *)a4
{
  v4 = qword_2811ED5E0;
  v5 = a3;
  v6 = v5;
  if (v4 != -1)
  {
    v5 = swift_once();
  }

  v7 = MEMORY[0x28223BE20](v5);
  type metadata accessor for GKGameActivity(v7);
  sub_2186832AC(sub_2186A8670);

  return v9;
}

+ (BOOL)isValidPartyCode:(id)a3
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
  v5 = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A86BC();
  os_unfair_lock_unlock((v2 + v4));
}

- (void)pause
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v5 = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A86A4(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

- (void)resume
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v5 = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A868C();
  os_unfair_lock_unlock((v2 + v4));
}

- (void)end
{
  v2 = self;
  GKGameActivity.end()();
}

- (void)setScoreOnLeaderboard:(id)a3 toScore:(int64_t)a4 context:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  GKGameActivity.setScore(on:to:context:)(v8, a4, a5);
}

- (void)setScoreOnLeaderboard:(id)a3 toScore:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  GKGameActivity.setScore(on:to:)(v6, a4);
}

- (id)getScoreOnLeaderboard:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = GKGameActivity.score(on:)(v4);

  return v6;
}

- (void)removeScoresFromLeaderboards:(id)a3
{
  sub_2186804FC(0, &qword_27CC06FD8, &off_278236540);
  v4 = sub_2186B7AAC();
  v5 = self;
  GKGameActivity.removeScores(from:)(v4);
}

- (void)setProgressOnAchievement:(id)a3 toPercentComplete:(double)a4
{
  v6 = a3;
  v7 = self;
  GKGameActivity.setProgress(on:to:)(v6, a4);
}

- (double)getProgressOnAchievement:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = GKGameActivity.progress(on:)(v4);

  return v6;
}

- (void)removeAchievements:(id)a3
{
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_2186B7AAC();
  v4 = *(self + OBJC_IVAR___GKGameActivity__achievements);
  v5 = self;
  os_unfair_lock_lock((v4 + 24));
  sub_2186A875C((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

- (id)makeMatchRequest
{
  v2 = self;
  v3 = sub_2186921A0();

  return v3;
}

- (void)findMatchWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_2186A12F8(0, 0, v8, &unk_2186B9300, v13);
}

- (void)findPlayersForHostedMatchWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_2186A12F8(0, 0, v8, &unk_2186B92C0, v13);
}

- (GKGameActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)createFromGameActivityInstance:(id)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v5 = self;
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
  v7 = self;
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