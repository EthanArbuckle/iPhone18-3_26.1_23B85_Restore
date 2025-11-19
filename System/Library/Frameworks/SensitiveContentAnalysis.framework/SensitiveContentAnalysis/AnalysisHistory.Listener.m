@interface AnalysisHistory.Listener
- (_TtCC24SensitiveContentAnalysis15AnalysisHistoryP33_5B72C479793E9A28B06909F4B47E09798Listener)init;
- (void)_analysesFromMostRecentCommunicationsWith:(id)a3 completion:(id)a4;
- (void)_clearMostRecentAnalysesForParticipants:(id)a3 completion:(id)a4;
- (void)_participantsUpdated:(id)a3 participantsRemoved:(id)a4 completion:(id)a5;
- (void)_storeMostRecentAnalysis:(id)a3 forHandles:(id)a4 completion:(id)a5;
- (void)_waitForClientsToUpdate:(id)a3;
@end

@implementation AnalysisHistory.Listener

- (void)_analysesFromMostRecentCommunicationsWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  _Block_release(v5);
  sub_1AEAFA01C();
  __break(1u);
}

- (void)_storeMostRecentAnalysis:(id)a3 forHandles:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v9 = self;
  _Block_release(v7);
  sub_1AEAFA01C();
  __break(1u);
}

- (void)_clearMostRecentAnalysesForParticipants:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  _Block_release(v5);
  sub_1AEAFA01C();
  __break(1u);
}

- (void)_waitForClientsToUpdate:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  _Block_release(v4);
  sub_1AEAFA01C();
  __break(1u);
}

- (void)_participantsUpdated:(id)a3 participantsRemoved:(id)a4 completion:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = _Block_copy(a5);
  type metadata accessor for SCSensitivityAnalysis(0);
  v11 = sub_1AEAF951C();
  v12 = sub_1AEAF96EC();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = sub_1AEAF982C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1AEAF97FC();
  v15 = self;

  v16 = sub_1AEAF97EC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = v11;
  v17[6] = v12;
  v17[7] = sub_1AEA89E34;
  v17[8] = v13;
  sub_1AEA5E2A0(0, 0, v9, &unk_1AEAFDB20, v17);
}

- (_TtCC24SensitiveContentAnalysis15AnalysisHistoryP33_5B72C479793E9A28B06909F4B47E09798Listener)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC24SensitiveContentAnalysis15AnalysisHistoryP33_5B72C479793E9A28B06909F4B47E09798Listener_historyUpdated);
  v4 = type metadata accessor for AnalysisHistory.Listener();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(AnalysisHistory.Listener *)&v6 init];
}

@end