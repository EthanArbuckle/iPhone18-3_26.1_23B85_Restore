@interface CHActivityTypeKeyMigrator
- (CHActivityTypeKeyMigrator)init;
- (CHActivityTypeKeyMigrator)initWithMigrationKeys:(id)a3;
- (void)migrateIfNeeded;
@end

@implementation CHActivityTypeKeyMigrator

- (CHActivityTypeKeyMigrator)initWithMigrationKeys:(id)a3
{
  v4 = type metadata accessor for ActivityTypeKeyMigrator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = [objc_opt_self() standardUserDefaults];
  ActivityTypeKeyMigrator.init(migrationKeys:userDefaults:)();
  (*(v5 + 32))(self + OBJC_IVAR___CHActivityTypeKeyMigrator_activityTypeKeyMigrator, v7, v4);
  v9 = type metadata accessor for ActivityTypeKeyMigratorBridge();
  v11.receiver = self;
  v11.super_class = v9;
  return [(CHActivityTypeKeyMigrator *)&v11 init];
}

- (void)migrateIfNeeded
{
  v2 = self;
  ActivityTypeKeyMigrator.migrateIfNeeded()();
}

- (CHActivityTypeKeyMigrator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end