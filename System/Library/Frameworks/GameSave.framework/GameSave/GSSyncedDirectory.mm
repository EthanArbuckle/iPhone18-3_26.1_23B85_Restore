@interface GSSyncedDirectory
+ (id)openDirectoryForContainerIdentifier:(id)a3;
+ (void)cleanupDirectoryForContainerIdentifier:(id)a3;
- (GSSyncedDirectory)init;
- (GSSyncedDirectoryState)directoryState;
- (id)init:(id)a3;
- (void)close;
- (void)finishSyncing:(UIWindow *)a3 completionHandler:(id)a4;
- (void)finishSyncingWithCompletionHandler:(id)a3;
- (void)resolveConflictsWithVersion:(id)a3;
- (void)triggerPendingUploadWithCompletionHandler:(id)a3;
@end

@implementation GSSyncedDirectory

- (id)init:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  type metadata accessor for GameSaveSyncedDirectory(0);
  v7 = static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(v4, v6, 1);

  *(&self->super.isa + OBJC_IVAR___GSSyncedDirectory_directory) = v7;
  v9.receiver = self;
  v9.super_class = GSSyncedDirectory;
  return [(GSSyncedDirectory *)&v9 init];
}

+ (id)openDirectoryForContainerIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x23EE6B6E0](v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(GSSyncedDirectory) init_];

  return v5;
}

+ (void)cleanupDirectoryForContainerIdentifier:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = v9;
  v12[6] = v10;
  v13 = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:), v12);

  OS_dispatch_group.wait()();
}

- (void)close
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectory_directory);
  v3 = self;

  GameSaveSyncedDirectory.close()();
}

- (void)finishSyncingWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
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
  v12[4] = &async function pointer to partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_40Tu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_45Tu, v13);
}

- (void)resolveConflictsWithVersion:(id)a3
{
  v3 = *(a3 + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v3)
  {
    v4 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectory_directory);
    v6 = a3;
    v7 = self;

    GameSaveSyncedDirectory.resolveConflicts(with:)(v3);
  }
}

- (void)triggerPendingUploadWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
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
  v12[4] = &async function pointer to partial apply for @objc closure #1 in GSSyncedDirectory.triggerPendingUpload();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_25Tu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_30Tu, v13);
}

- (void)finishSyncing:(UIWindow *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing(_:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTATu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTATu, v15);
}

- (GSSyncedDirectoryState)directoryState
{
  v2 = self;
  v3 = GSSyncedDirectory.directoryState.getter();

  return v3;
}

- (GSSyncedDirectory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end