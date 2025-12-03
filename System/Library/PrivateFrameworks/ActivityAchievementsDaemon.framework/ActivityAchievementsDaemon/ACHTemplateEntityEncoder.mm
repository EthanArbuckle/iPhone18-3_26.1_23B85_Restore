@interface ACHTemplateEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
@end

@implementation ACHTemplateEntityEncoder

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = [(ACHTemplateEntityEncoder *)self objectForPersistentID:d row:row error:error];
  v6 = ACHCodableFromTemplate();

  return v6;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x277CE8D50]);
  if ([(ACHTemplateEntityEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
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
  [objectCopy setUniqueName:v8];

  [objectCopy setVersion:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy setMinimumEngineVersion:HDSQLiteColumnWithNameAsInt64()];
  v9 = HDSQLiteColumnWithNameAsDate();
  [objectCopy setCreatedDate:v9];

  [objectCopy setCreatorDevice:HDSQLiteColumnWithNameAsInt64()];
  v10 = HDSQLiteColumnWithNameAsString();
  [objectCopy setSourceName:v10];

  v11 = HDSQLiteColumnWithNameAsString();
  [objectCopy setPredicate:v11];

  v12 = HDSQLiteColumnWithNameAsString();
  [objectCopy setGracePredicate:v12];

  v13 = HDSQLiteColumnWithNameAsString();
  [objectCopy setValueExpression:v13];

  v14 = HDSQLiteColumnWithNameAsString();
  [objectCopy setGraceValueExpression:v14];

  v15 = HDSQLiteColumnWithNameAsString();
  [objectCopy setProgressExpression:v15];

  v16 = HDSQLiteColumnWithNameAsString();
  [objectCopy setGraceProgressExpression:v16];

  v17 = HDSQLiteColumnWithNameAsString();
  [objectCopy setGoalExpression:v17];

  v18 = HDSQLiteColumnWithNameAsString();
  [objectCopy setGraceGoalExpression:v18];

  [objectCopy setTriggers:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy setEarnLimit:HDSQLiteColumnWithNameAsInt64()];
  v19 = HDSQLiteColumnWithNameAsString();
  [objectCopy setVisibilityPredicate:v19];

  v20 = HDSQLiteColumnWithNameAsString();
  [objectCopy setGraceVisibilityPredicate:v20];

  v21 = HDSQLiteColumnWithNameAsString();
  v22 = ACHYearMonthDayDateComponentsFromString();
  [objectCopy setVisibilityStart:v22];

  v23 = HDSQLiteColumnWithNameAsString();
  v24 = ACHYearMonthDayDateComponentsFromString();
  [objectCopy setVisibilityEnd:v24];

  v25 = HDSQLiteColumnWithNameAsString();
  [objectCopy setAvailabilityPredicate:v25];

  v26 = HDSQLiteColumnWithNameAsString();
  v27 = ACHYearMonthDayDateComponentsFromString();
  [objectCopy setAvailabilityStart:v27];

  v28 = HDSQLiteColumnWithNameAsString();
  v29 = ACHYearMonthDayDateComponentsFromString();
  [objectCopy setAvailabilityEnd:v29];

  v30 = HDSQLiteColumnWithNameAsString();
  v31 = ACHTemplateAvailableCountryCodesFromString();
  [objectCopy setAvailableCountryCodes:v31];

  v32 = HDSQLiteColumnWithNameAsString();
  [objectCopy setAlertabilityPredicate:v32];

  v33 = HDSQLiteColumnWithNameAsString();
  v34 = ACHTemplateAlertDatesFromString();
  [objectCopy setAlertDates:v34];

  [objectCopy setDuplicateRemovalStrategy:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy setDuplicateRemovalCalendarUnit:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy setEarnDateStrategy:HDSQLiteColumnWithNameAsInt64()];
  v35 = HDSQLiteColumnWithNameAsString();
  if ([v35 length])
  {
    v36 = [MEMORY[0x277CCDAB0] unitFromString:v35];
    [objectCopy setCanonicalUnit:v36];
  }

  [objectCopy setDisplayOrder:HDSQLiteColumnWithNameAsInt64()];
  [objectCopy setDisplaysEarnedInstanceCount:HDSQLiteColumnWithNameAsBoolean()];
  v37 = HDSQLiteColumnWithNameAsString();
  v38 = ACHTemplateAvailableSuffixesFromString();
  [objectCopy setAvailableSuffixes:v38];

  v39 = HDSQLiteColumnWithNameAsString();
  if ([v39 length])
  {
    v40 = [MEMORY[0x277CCDAB0] unitFromString:v39];
    [objectCopy setDailyTargetCanonicalUnit:v40];
  }

  HDSQLiteColumnWithNameAsDouble();
  [objectCopy setDailyTarget:?];
  v41 = HDSQLiteColumnWithNameAsString();
  [objectCopy setPrerequisiteTemplateName:v41];

  return 1;
}

@end