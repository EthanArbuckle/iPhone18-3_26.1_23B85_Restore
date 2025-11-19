@interface CKSyncEngine
- (BOOL)automaticSyncingEnabled;
- (BOOL)hasPendingModifications;
- (BOOL)useOpportunisticPushTopic;
- (CKDatabase)database;
- (CKSyncEngineDataSource)dataSource;
- (CKSyncEngineState)state;
- (void)cancelOperationsWithCompletionHandler:(void *)completionHandler;
- (void)fetchChangesForZoneIDs:(id)a3 completionHandler:(id)a4;
- (void)fetchChangesWithCompletionHandler:(void *)completionHandler;
- (void)fetchChangesWithOptions:(CKSyncEngineFetchChangesOptions *)options completionHandler:(void *)completionHandler;
- (void)modifyPendingChangesWithCompletionHandler:(id)a3;
- (void)sendChangesWithCompletionHandler:(void *)completionHandler;
- (void)sendChangesWithOptions:(CKSyncEngineSendChangesOptions *)options completionHandler:(void *)completionHandler;
- (void)setAutomaticSyncingEnabled:(BOOL)a3;
- (void)setHasPendingModifications;
- (void)setNeedsToFetchChanges;
@end

@implementation CKSyncEngine

- (void)fetchChangesWithOptions:(CKSyncEngineFetchChangesOptions *)options completionHandler:(void *)completionHandler
{
  v6 = _Block_copy(completionHandler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_188412CC8;
  }

  v7 = options;
  v8 = self;
  sub_1883F5BF4();
  sub_1883F5BA0(v6);
}

- (void)sendChangesWithOptions:(CKSyncEngineSendChangesOptions *)options completionHandler:(void *)completionHandler
{
  v6 = _Block_copy(completionHandler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_188412CC8;
  }

  v7 = options;
  v8 = self;
  sub_1883F5BF4();
  sub_1883F5BA0(v6);
}

- (CKSyncEngineDataSource)dataSource
{
  v2 = self;
  v3 = sub_18842E11C();

  return v3;
}

- (CKSyncEngineState)state
{
  v2 = self;
  v3 = sub_18842C4D8();

  return v3;
}

- (void)setHasPendingModifications
{
  v1 = a1;
  sub_188501000();
}

- (CKDatabase)database
{
  v2 = self;
  v3 = sub_1884FBCF8();

  return v3;
}

- (void)cancelOperationsWithCompletionHandler:(void *)completionHandler
{
  v4 = _Block_copy(completionHandler);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_188504A58;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1884FF8E8();
  sub_1883F5BA0(v5);
}

- (void)fetchChangesWithCompletionHandler:(void *)completionHandler
{
  v4 = _Block_copy(completionHandler);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_188412CC8;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1884FF8E8();
  sub_1883F5BA0(v5);
}

- (void)sendChangesWithCompletionHandler:(void *)completionHandler
{
  v4 = _Block_copy(completionHandler);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_188412CC8;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1884FF8E8();
  sub_1883F5BA0(v5);
}

- (void)setNeedsToFetchChanges
{
  v2 = self;
  sub_1884FCB18();
}

- (BOOL)automaticSyncingEnabled
{
  v2 = self;
  v3 = sub_1884FCD08();

  return v3 & 1;
}

- (void)setAutomaticSyncingEnabled:(BOOL)a3
{
  v4 = self;
  sub_1884FCD94(a3);
}

- (BOOL)useOpportunisticPushTopic
{
  v2 = self;
  v3 = sub_1884FCEDC();

  return v3 & 1;
}

- (BOOL)hasPendingModifications
{
  v2 = self;
  v3 = sub_1884FF128();

  return v3 & 1;
}

- (void)fetchChangesForZoneIDs:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_188412CC8;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  sub_1884FF268(a3, v8, v7);
  sub_1883F5BA0(v8);
}

- (void)modifyPendingChangesWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_188412818;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1884FF8E8();
  sub_1883F5BA0(v5);
}

@end