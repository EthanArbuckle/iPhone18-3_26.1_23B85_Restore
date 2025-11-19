@interface SQLiteDatabase
- (BOOL)connectionNeedsResetForCorruption:(id)a3;
- (BOOL)connectionNeedsResetForReopen:(id)a3;
- (_TtC20AttributionKitDaemon14SQLiteDatabase)init;
@end

@implementation SQLiteDatabase

- (_TtC20AttributionKitDaemon14SQLiteDatabase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)connectionNeedsResetForReopen:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000625CC(v4);

  return 1;
}

- (BOOL)connectionNeedsResetForCorruption:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000628C4(v4);
}

@end