@interface CRLBoardDataStore
- (NSURL)dataDirectory;
- (_TtC22FreeformDataclassOwner17CRLBoardDataStore)init;
- (_TtC22FreeformDataclassOwner19CRLAssetFileManager)assetFileManager;
- (void)closeDatabaseWithCompletion:(id)a3;
- (void)closeDatabaseWithCompletionHandler:(id)a3;
- (void)openDatabaseWithCompletion:(id)a3;
- (void)openDatabaseWithCompletionHandler:(id)a3;
@end

@implementation CRLBoardDataStore

- (NSURL)dataDirectory
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_dataDirectory, v3);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (_TtC22FreeformDataclassOwner19CRLAssetFileManager)assetFileManager
{
  v2 = self;
  v3 = CRLBoardDataStore.assetFileManager.getter();

  return v3;
}

- (void)openDatabaseWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CRLBoardDataStore.openDatabase(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v5, &unk_4E5B0, partial apply for closure #1 in CRLBoardDataStore.openDatabase(completion:), &block_descriptor_63);
}

- (void)openDatabaseWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in CRLBoardDataStore.openDatabase();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_47Tu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_52Tu, v13);
}

- (void)closeDatabaseWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CRLBoardDataStore.openDatabase(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v5, &unk_4E498, partial apply for closure #1 in CRLBoardDataStore.closeDatabase(completion:), &block_descriptor_0);
}

- (void)closeDatabaseWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in CRLBoardDataStore.closeDatabase();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

- (_TtC22FreeformDataclassOwner17CRLBoardDataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end