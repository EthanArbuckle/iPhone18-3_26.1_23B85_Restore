@interface DefaultMigrationManager
- (BOOL)_validateStages:(id *)a3;
- (NSArray)stages;
- (_TtC9SwiftData23DefaultMigrationManager)initWithMigrationStages:(id)a3;
@end

@implementation DefaultMigrationManager

- (NSArray)stages
{
  v2 = self;
  sub_19746D578();

  sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);
  v3 = sub_1975219BC();

  return v3;
}

- (BOOL)_validateStages:(id *)a3
{
  v3 = self;
  sub_19746D954();

  return 1;
}

- (_TtC9SwiftData23DefaultMigrationManager)initWithMigrationStages:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end