@interface ASDatabaseCompetitionListEntryEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation ASDatabaseCompetitionListEntryEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x277CE9078]);
  if ([(ASDatabaseCompetitionListEntryEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x277CE9078]);
  if ([(ASDatabaseCompetitionListEntryEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  v7 = HDSQLiteColumnWithNameAsData();
  [objectCopy setFriendUUID:v7];

  [objectCopy setType:HDSQLiteColumnWithNameAsInt64()];
  v8 = HDSQLiteColumnWithNameAsData();
  [objectCopy setSystemFieldsOnlyRecord:v8];

  [objectCopy setOwner:HDSQLiteColumnWithNameAsInt64()];
  return 1;
}

@end