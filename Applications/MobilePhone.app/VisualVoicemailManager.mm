@interface VisualVoicemailManager
- (_TtC11MobilePhone22VisualVoicemailManager)init;
- (_TtC11MobilePhone22VisualVoicemailManager)initWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4;
- (int64_t)estimatedCount;
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)fetchMessagesWithCompletion:(id)a3;
- (void)handleVoiceMailsChangedNotificationWithNotification:(id)a3;
- (void)managerStorageUsageDidChange;
- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4;
- (void)messagesPassingTest:(id)a3 completion:;
- (void)onlineStatusDidChange;
- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4;
- (void)reportTranscriptionProblemForVoicemail:(id)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4;
- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6;
@end

@implementation VisualVoicemailManager

- (_TtC11MobilePhone22VisualVoicemailManager)initWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return VisualVoicemailManager.init(visualVoicemailManager:onVoicemailsChanged:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> (), v6);
}

- (void)fetchMessagesWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.fetchMessages();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_173Tu;
  v12[5] = v11;
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_178Tu, v12);
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.delete(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_158Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_163Tu, v14);
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.markAsRead(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_143Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_148Tu, v14);
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.moveToTrash(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_128Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_133Tu, v14);
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.removeFromTrash(_:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_113Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_118Tu, v14);
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
  v13[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.message(for:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_98Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_103Tu, v14);
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in VisualVoicemailManager.messages(filteredBy:);
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
  v6 = a4;
  v7 = self;
  VisualVoicemailManager.reportTranscription(isAccurate:for:)(a3, v6);
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  VisualVoicemailManager.reportTranscriptionProblem(for:)(v4);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  *(v11 + 40) = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)partial apply, v11);
}

- (_TtC11MobilePhone22VisualVoicemailManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleVoiceMailsChangedNotificationWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  VisualVoicemailManager.handleVoiceMailsChangedNotification(notification:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6
{
  v8 = a4;
  if (a4)
  {
    type metadata accessor for VMVoicemail();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    type metadata accessor for VMVoicemail();
    LOBYTE(a5) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    type metadata accessor for VMVoicemail();
    a6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = self;
  v13.value._rawValue = v8;
  v13.is_nil = a5;
  v14.value._rawValue = a6;
  VisualVoicemailManager.voicemailsDidChangeInitial(_:added:deleted:updated:)(a3, v13, v14, v15);
}

- (void)onlineStatusDidChange
{
  v2 = self;
  VisualVoicemailManager.onlineStatusDidChange()();
}

- (void)capabilitiesDidChange
{
  v2 = self;
  VisualVoicemailManager.capabilitiesDidChange()();
}

- (void)subscriptionStateStatusDidChange
{
  v2 = self;
  VisualVoicemailManager.subscriptionStateStatusDidChange()();
}

- (void)syncInProgresDidChange
{
  v2 = self;
  VisualVoicemailManager.syncInProgresDidChange()();
}

- (void)managerStorageUsageDidChange
{
  v2 = self;
  VisualVoicemailManager.managerStorageUsageDidChange()();
}

- (void)transcribingStatusDidChange
{
  v2 = self;
  VisualVoicemailManager.transcribingStatusDidChange()();
}

- (void)accountsDidChange
{
  v2 = self;
  VisualVoicemailManager.accountsDidChange()();
}

- (int64_t)estimatedCount
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  v8[4] = variable initialization expression of VoicemailSearchTableViewController.dataSourceNeedsReload;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed VMVoicemail) -> (@unowned Bool);
  v8[3] = &block_descriptor_49;
  v4 = _Block_copy(v8);
  v5 = self;
  v6 = [v3 countOfVoicemailsPassingTest:v4];
  _Block_release(v4);

  if ((v6 & 0x8000000000000000) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

@end