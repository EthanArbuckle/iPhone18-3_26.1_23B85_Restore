@interface FaceTimeVoicemailManager
- (void)dealloc;
- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4;
- (void)messagesPassingTest:(id)a3 completion:;
- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4;
- (void)reportTranscriptionProblemForVoicemail:(id)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3;
- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4;
@end

@implementation FaceTimeVoicemailManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Tip(self + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_0(v10, v11);
  v6 = *(v5 + 16);
  v7 = self;

  v6(v8, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v10);
  v9.receiver = v7;
  v9.super_class = ObjectType;
  [(FaceTimeVoicemailManager *)&v9 dealloc];
}

- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in FaceTimeVoicemailManager.message(for:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_276Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_281Tu, v14);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = self;
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(0, 3u);
  }
}

- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in FaceTimeVoicemailManager.delete(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_201Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_206Tu, v14);
}

- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in FaceTimeVoicemailManager.markAsRead(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_186Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_191Tu, v14);
}

- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in FaceTimeVoicemailManager.moveToTrash(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_171Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_176Tu, v14);
}

- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_156Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_161Tu, v14);
}

- (void)messagesPassingTest:(id)a3 completion:
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTATu;
  v15[5] = v14;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v15);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4
{
  v5 = a4;
  v6 = self;
  specialized FaceTimeVoicemailManager.reportTranscription(isAccurate:for:)();
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized FaceTimeVoicemailManager.reportTranscription(isAccurate:for:)();
}

@end