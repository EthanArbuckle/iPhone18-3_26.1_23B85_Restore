@interface SCAnalysisHistory
+ (BOOL)shouldDeclineIncomingCallFromParticipants:(id)participants callType:(unint64_t)type;
+ (BOOL)willNeedInterventionForOutgoingCallToParticipants:(id)participants callType:(unint64_t)type error:(id *)error;
+ (void)analysesForInterventionOnOutgoingCallToParticipants:(NSArray *)participants callType:(unint64_t)type completion:(id)completion;
+ (void)shouldBlockIncomingCallFromHandles:(NSArray *)handles callType:(unint64_t)type completion:(id)completion;
- (SCAnalysisHistory)init;
@end

@implementation SCAnalysisHistory

+ (void)analysesForInterventionOnOutgoingCallToParticipants:(NSArray *)participants callType:(unint64_t)type completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = participants;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1AEAF982C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1AEB00D88;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1AEB00D98;
  v16[5] = v15;
  participantsCopy = participants;
  sub_1AEAC1C28(0, 0, v11, &unk_1AEB00DA8, v16);
}

+ (BOOL)willNeedInterventionForOutgoingCallToParticipants:(id)participants callType:(unint64_t)type error:(id *)error
{
  sub_1AEA49EF8(0, &qword_1ED98A488);
  v6 = sub_1AEAF96EC();
  sub_1AEA4F9A8(v6, type);

  return 1;
}

+ (void)shouldBlockIncomingCallFromHandles:(NSArray *)handles callType:(unint64_t)type completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = handles;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1AEAF982C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1AEB00DD0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1AEB00DD8;
  v16[5] = v15;
  handlesCopy = handles;
  sub_1AEAC1C28(0, 0, v11, &unk_1AEB00DE0, v16);
}

+ (BOOL)shouldDeclineIncomingCallFromParticipants:(id)participants callType:(unint64_t)type
{
  sub_1AEA49EF8(0, &qword_1ED98A488);
  v4 = sub_1AEAF96EC();
  v5 = sub_1AEAC3CF8(v4);

  return v5 & 1;
}

- (SCAnalysisHistory)init
{
  v3.receiver = self;
  v3.super_class = SCAnalysisHistory;
  return [(SCAnalysisHistory *)&v3 init];
}

@end