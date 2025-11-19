@interface ACHTemplateEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
@end

@implementation ACHTemplateEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v5 = [(ACHTemplateEntityEncoder *)self objectForPersistentID:a3 row:a4 error:a5];
  v6 = ACHCodableFromTemplate();

  return v6;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = objc_alloc_init(MEMORY[0x277CE8D50]);
  if ([(ACHTemplateEntityEncoder *)self applyPropertiesToObject:v9 persistentID:a3 row:a4 error:a5])
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
  [v7 setUniqueName:v8];

  [v7 setVersion:HDSQLiteColumnWithNameAsInt64()];
  [v7 setMinimumEngineVersion:HDSQLiteColumnWithNameAsInt64()];
  v9 = HDSQLiteColumnWithNameAsDate();
  [v7 setCreatedDate:v9];

  [v7 setCreatorDevice:HDSQLiteColumnWithNameAsInt64()];
  v10 = HDSQLiteColumnWithNameAsString();
  [v7 setSourceName:v10];

  v11 = HDSQLiteColumnWithNameAsString();
  [v7 setPredicate:v11];

  v12 = HDSQLiteColumnWithNameAsString();
  [v7 setGracePredicate:v12];

  v13 = HDSQLiteColumnWithNameAsString();
  [v7 setValueExpression:v13];

  v14 = HDSQLiteColumnWithNameAsString();
  [v7 setGraceValueExpression:v14];

  v15 = HDSQLiteColumnWithNameAsString();
  [v7 setProgressExpression:v15];

  v16 = HDSQLiteColumnWithNameAsString();
  [v7 setGraceProgressExpression:v16];

  v17 = HDSQLiteColumnWithNameAsString();
  [v7 setGoalExpression:v17];

  v18 = HDSQLiteColumnWithNameAsString();
  [v7 setGraceGoalExpression:v18];

  [v7 setTriggers:HDSQLiteColumnWithNameAsInt64()];
  [v7 setEarnLimit:HDSQLiteColumnWithNameAsInt64()];
  v19 = HDSQLiteColumnWithNameAsString();
  [v7 setVisibilityPredicate:v19];

  v20 = HDSQLiteColumnWithNameAsString();
  [v7 setGraceVisibilityPredicate:v20];

  v21 = HDSQLiteColumnWithNameAsString();
  v22 = ACHYearMonthDayDateComponentsFromString();
  [v7 setVisibilityStart:v22];

  v23 = HDSQLiteColumnWithNameAsString();
  v24 = ACHYearMonthDayDateComponentsFromString();
  [v7 setVisibilityEnd:v24];

  v25 = HDSQLiteColumnWithNameAsString();
  [v7 setAvailabilityPredicate:v25];

  v26 = HDSQLiteColumnWithNameAsString();
  v27 = ACHYearMonthDayDateComponentsFromString();
  [v7 setAvailabilityStart:v27];

  v28 = HDSQLiteColumnWithNameAsString();
  v29 = ACHYearMonthDayDateComponentsFromString();
  [v7 setAvailabilityEnd:v29];

  v30 = HDSQLiteColumnWithNameAsString();
  v31 = ACHTemplateAvailableCountryCodesFromString();
  [v7 setAvailableCountryCodes:v31];

  v32 = HDSQLiteColumnWithNameAsString();
  [v7 setAlertabilityPredicate:v32];

  v33 = HDSQLiteColumnWithNameAsString();
  v34 = ACHTemplateAlertDatesFromString();
  [v7 setAlertDates:v34];

  [v7 setDuplicateRemovalStrategy:HDSQLiteColumnWithNameAsInt64()];
  [v7 setDuplicateRemovalCalendarUnit:HDSQLiteColumnWithNameAsInt64()];
  [v7 setEarnDateStrategy:HDSQLiteColumnWithNameAsInt64()];
  v35 = HDSQLiteColumnWithNameAsString();
  if ([v35 length])
  {
    v36 = [MEMORY[0x277CCDAB0] unitFromString:v35];
    [v7 setCanonicalUnit:v36];
  }

  [v7 setDisplayOrder:HDSQLiteColumnWithNameAsInt64()];
  [v7 setDisplaysEarnedInstanceCount:HDSQLiteColumnWithNameAsBoolean()];
  v37 = HDSQLiteColumnWithNameAsString();
  v38 = ACHTemplateAvailableSuffixesFromString();
  [v7 setAvailableSuffixes:v38];

  v39 = HDSQLiteColumnWithNameAsString();
  if ([v39 length])
  {
    v40 = [MEMORY[0x277CCDAB0] unitFromString:v39];
    [v7 setDailyTargetCanonicalUnit:v40];
  }

  HDSQLiteColumnWithNameAsDouble();
  [v7 setDailyTarget:?];
  v41 = HDSQLiteColumnWithNameAsString();
  [v7 setPrerequisiteTemplateName:v41];

  return 1;
}

@end