@interface FIFitnessIntelligencePlugin
- (NSString)schemaName;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation FIFitnessIntelligencePlugin

- (id)taskServerClasses
{
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_79B90;
  *(v2 + 32) = type metadata accessor for SnapshotContainerTaskServer();
  *(v2 + 40) = type metadata accessor for InferenceRecordTaskServer();
  *(v2 + 48) = type metadata accessor for WorkoutTaskServer();
  *(v2 + 56) = type metadata accessor for SanityTaskServer();
  sub_38F8(qword_8ED08, &unk_79BE0);
  v3.super.isa = sub_75678().super.isa;

  return v3.super.isa;
}

- (NSString)schemaName
{
  v2 = sub_75598();

  return v2;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v3 = 6;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  _s25FitnessIntelligencePluginAAC16databaseEntities3forSayyXlXpGSo29HDSQLiteEntityProtectionClassV_tF_0(a3);
  sub_38F8(qword_8ED08, &unk_79BE0);
  v3.super.isa = sub_75678().super.isa;

  return v3.super.isa;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v7 = a4;
  v6 = self;
  _s25FitnessIntelligencePluginAAC22registerMigrationSteps3for8migratorySo29HDSQLiteEntityProtectionClassV_So18HDDatabaseMigratorCtF_0(a3, v7);
}

- (id)orderedSyncEntities
{
  _s25FitnessIntelligencePluginAAC19orderedSyncEntitiesSayyXlXpGyF_0();
  sub_38F8(qword_8ED08, &unk_79BE0);
  v2.super.isa = sub_75678().super.isa;

  return v2.super.isa;
}

@end