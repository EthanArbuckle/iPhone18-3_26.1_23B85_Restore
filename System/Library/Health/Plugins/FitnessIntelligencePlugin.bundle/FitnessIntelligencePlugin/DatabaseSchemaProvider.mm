@interface DatabaseSchemaProvider
- (NSString)schemaName;
- (_TtC25FitnessIntelligencePlugin22DatabaseSchemaProvider)init;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation DatabaseSchemaProvider

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
  v6 = a4;
  v7 = self;
  _s25FitnessIntelligencePluginAAC22registerMigrationSteps3for8migratorySo29HDSQLiteEntityProtectionClassV_So18HDDatabaseMigratorCtF_0(a3, v6);
}

- (_TtC25FitnessIntelligencePlugin22DatabaseSchemaProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DatabaseSchemaProvider();
  return [(DatabaseSchemaProvider *)&v3 init];
}

@end