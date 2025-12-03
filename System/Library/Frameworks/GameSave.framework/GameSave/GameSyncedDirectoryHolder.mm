@interface GameSyncedDirectoryHolder
- (NSURL)presentedItemURL;
- (void)dealloc;
- (void)presentedItemDidGainVersion:(id)version;
- (void)savePresentedItemChangesWithCompletionHandler:(id)handler;
- (void)setPresentedItemOperationQueue:(id)queue;
- (void)setPresentedItemURL:(id)l;
@end

@implementation GameSyncedDirectoryHolder

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  outlined init with copy of URL?(self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, &v14 - v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setPresentedItemURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  outlined assign with take of URL?(v8, self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL);
}

- (void)setPresentedItemOperationQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemOperationQueue) = queue;
  queueCopy = queue;
}

- (void)dealloc
{
  selfCopy = self;
  GameSyncedDirectoryHolder.stopMonitoringApplicationActivity()();
  GameSyncedDirectoryHolder.stopHoldingItem()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for GameSyncedDirectoryHolder();
  [(GameSyncedDirectoryHolder *)&v3 dealloc];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

- (void)presentedItemDidGainVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  GameSyncedDirectoryHolder.presentedItemDidGain(_:)(versionCopy);
}

@end