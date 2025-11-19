@interface SCAnalysisHistory
+ (BOOL)shouldDeclineIncomingCallFromParticipants:(id)a3 callType:(unint64_t)a4;
+ (BOOL)willNeedInterventionForOutgoingCallToParticipants:(id)a3 callType:(unint64_t)a4 error:(id *)a5;
+ (void)analysesForInterventionOnOutgoingCallToParticipants:(NSArray *)a3 callType:(unint64_t)a4 completion:(id)a5;
+ (void)shouldBlockIncomingCallFromHandles:(NSArray *)a3 callType:(unint64_t)a4 completion:(id)a5;
- (SCAnalysisHistory)init;
@end

@implementation SCAnalysisHistory

+ (void)analysesForInterventionOnOutgoingCallToParticipants:(NSArray *)a3 callType:(unint64_t)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
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
  v17 = a3;
  sub_1AEAC1C28(0, 0, v11, &unk_1AEB00DA8, v16);
}

+ (BOOL)willNeedInterventionForOutgoingCallToParticipants:(id)a3 callType:(unint64_t)a4 error:(id *)a5
{
  sub_1AEA49EF8(0, &qword_1ED98A488);
  v6 = sub_1AEAF96EC();
  sub_1AEA4F9A8(v6, a4);

  return 1;
}

+ (void)shouldBlockIncomingCallFromHandles:(NSArray *)a3 callType:(unint64_t)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
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
  v17 = a3;
  sub_1AEAC1C28(0, 0, v11, &unk_1AEB00DE0, v16);
}

+ (BOOL)shouldDeclineIncomingCallFromParticipants:(id)a3 callType:(unint64_t)a4
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