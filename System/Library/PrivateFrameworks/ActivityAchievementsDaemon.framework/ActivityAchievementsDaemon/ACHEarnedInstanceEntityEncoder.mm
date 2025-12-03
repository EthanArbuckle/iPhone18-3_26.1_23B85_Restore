@interface ACHEarnedInstanceEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation ACHEarnedInstanceEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = [(ACHEarnedInstanceEntityEncoder *)self objectForPersistentID:d row:row error:error];
  v6 = ACHCodableFromEarnedInstance();

  return v6;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x277CE8D38]);
  if ([(ACHEarnedInstanceEntityEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
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
  [objectCopy setKey:d];
  v8 = HDSQLiteColumnWithNameAsString();
  [objectCopy setTemplateUniqueName:v8];

  v9 = HDSQLiteColumnWithNameAsDate();
  [objectCopy setCreatedDate:v9];

  v10 = HDSQLiteColumnWithNameAsString();
  v11 = ACHYearMonthDayDateComponentsFromString();
  [objectCopy setEarnedDateComponents:v11];

  [objectCopy setCreatorDevice:HDSQLiteColumnWithNameAsInt64()];
  if (HDSQLiteColumnWithNameIsNull() & 1) != 0 || (HDSQLiteColumnWithNameIsNull())
  {
    [objectCopy setValue:0];
  }

  else
  {
    v12 = HDSQLiteColumnWithNameAsString();
    HDSQLiteColumnWithNameAsDouble();
    v14 = v13;
    v15 = MEMORY[0x277CCD7E8];
    v16 = [MEMORY[0x277CCDAB0] unitFromString:v12];
    v17 = [v15 quantityWithUnit:v16 doubleValue:v14];
    [objectCopy setValue:v17];
  }

  v18 = HDSQLiteColumnWithNameAsString();
  [objectCopy setExternalIdentifier:v18];

  return 1;
}

@end