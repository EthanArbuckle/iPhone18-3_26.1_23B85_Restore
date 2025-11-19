@interface ACHEarnedInstanceEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
@end

@implementation ACHEarnedInstanceEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v5 = [(ACHEarnedInstanceEntityEncoder *)self objectForPersistentID:a3 row:a4 error:a5];
  v6 = ACHCodableFromEarnedInstance();

  return v6;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = objc_alloc_init(MEMORY[0x277CE8D38]);
  if ([(ACHEarnedInstanceEntityEncoder *)self applyPropertiesToObject:v9 persistentID:a3 row:a4 error:a5])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v7 = a3;
  [v7 setKey:a4];
  v8 = HDSQLiteColumnWithNameAsString();
  [v7 setTemplateUniqueName:v8];

  v9 = HDSQLiteColumnWithNameAsDate();
  [v7 setCreatedDate:v9];

  v10 = HDSQLiteColumnWithNameAsString();
  v11 = ACHYearMonthDayDateComponentsFromString();
  [v7 setEarnedDateComponents:v11];

  [v7 setCreatorDevice:HDSQLiteColumnWithNameAsInt64()];
  if (HDSQLiteColumnWithNameIsNull() & 1) != 0 || (HDSQLiteColumnWithNameIsNull())
  {
    [v7 setValue:0];
  }

  else
  {
    v12 = HDSQLiteColumnWithNameAsString();
    HDSQLiteColumnWithNameAsDouble();
    v14 = v13;
    v15 = MEMORY[0x277CCD7E8];
    v16 = [MEMORY[0x277CCDAB0] unitFromString:v12];
    v17 = [v15 quantityWithUnit:v16 doubleValue:v14];
    [v7 setValue:v17];
  }

  v18 = HDSQLiteColumnWithNameAsString();
  [v7 setExternalIdentifier:v18];

  return 1;
}

@end