@interface SQLiteDatabase
- (BOOL)connectionNeedsResetForCorruption:(id)corruption;
- (BOOL)connectionNeedsResetForReopen:(id)reopen;
- (_TtC20AttributionKitDaemon14SQLiteDatabase)init;
@end

@implementation SQLiteDatabase

- (_TtC20AttributionKitDaemon14SQLiteDatabase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)connectionNeedsResetForReopen:(id)reopen
{
  reopenCopy = reopen;
  selfCopy = self;
  sub_1000625CC(reopenCopy);

  return 1;
}

- (BOOL)connectionNeedsResetForCorruption:(id)corruption
{
  corruptionCopy = corruption;
  selfCopy = self;
  sub_1000628C4(corruptionCopy);
}

@end