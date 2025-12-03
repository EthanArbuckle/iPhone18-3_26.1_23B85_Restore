@interface ASDatabseCompetitionEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation ASDatabseCompetitionEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x277CE9070]);
  if ([(ASDatabseCompetitionEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
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
  v9 = objc_alloc_init(MEMORY[0x277CE9070]);
  if ([(ASDatabseCompetitionEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
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
  v7 = HDSQLiteColumnWithNameAsUUID();
  hk_dataForUUIDBytes = [v7 hk_dataForUUIDBytes];
  [objectCopy setFriendUUID:hk_dataForUUIDBytes];

  [objectCopy setType:HDSQLiteColumnWithNameAsInt64()];
  v9 = objc_alloc_init(MEMORY[0x277CE9050]);
  v10 = HDSQLiteColumnWithNameAsUUID();
  hk_dataForUUIDBytes2 = [v10 hk_dataForUUIDBytes];
  [v9 setUuid:hk_dataForUUIDBytes2];

  [v9 setCurrentCacheIndex:HDSQLiteColumnWithNameAsInt64()];
  v12 = objc_alloc(MEMORY[0x277CE9088]);
  v13 = HDSQLiteColumnWithNameAsData();
  v14 = [v12 initWithData:v13];

  v15 = objc_alloc(MEMORY[0x277CE9088]);
  v16 = HDSQLiteColumnWithNameAsData();
  v17 = [v15 initWithData:v16];

  [v9 setScores:objc_msgSend(v14 count:{"scores"), objc_msgSend(v14, "scoresCount")}];
  [v9 setOpponentScores:objc_msgSend(v17 count:{"scores"), objc_msgSend(v17, "scoresCount")}];
  v18 = objc_alloc(MEMORY[0x277CE9058]);
  v19 = HDSQLiteColumnWithNameAsData();
  v20 = [v18 initWithData:v19];

  v21 = objc_alloc(MEMORY[0x277CE9058]);
  v22 = HDSQLiteColumnWithNameAsData();
  v23 = [v21 initWithData:v22];

  [v9 setStartDateComponents:v20];
  [v9 setDurationDateComponents:v23];
  v24 = objc_alloc(MEMORY[0x277CE9080]);
  v25 = HDSQLiteColumnWithNameAsData();
  v26 = [v24 initWithData:v25];

  [v9 setPreferredVictoryBadgeStyles:objc_msgSend(v26 count:{"styles"), objc_msgSend(v26, "stylesCount")}];
  [v9 setMaximumNumberOfPointsPerDay:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy setCompetition:v9];

  return 1;
}

@end