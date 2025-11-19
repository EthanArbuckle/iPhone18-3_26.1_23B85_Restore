@interface _HDClinicalAPIReminderEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)_clientSourceForRow:(HDSQLiteRow *)a3 error:(id *)a4;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDClinicalAPIReminderEntityEncoder

- (id)orderedProperties
{
  v4[0] = @"source_id";
  v4[1] = @"date_created";
  v4[2] = @"date_posted";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [[HDClinicalAPIReminder alloc] _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(_HDClinicalAPIReminderEntityEncoder *)self superclassEncoder];

  if (v11)
  {
    sub_A708C(a2, self);
  }

  v12 = [(_HDClinicalAPIReminderEntityEncoder *)self _clientSourceForRow:a5 error:a6];
  if (v12)
  {
    [v10 _setSource:v12];
    v13 = HDSQLiteColumnWithNameAsDate();
    [v10 _setCreationDate:v13];

    v14 = HDSQLiteColumnWithNameAsDate();
    [v10 _setPostDate:v14];
  }

  return v12 != 0;
}

- (id)_clientSourceForRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  v6 = [[HDSourceEntity alloc] initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
  v7 = [(_HDClinicalAPIReminderEntityEncoder *)self profile];
  v8 = [v7 sourceManager];
  v9 = [v8 clientSourceForSourceEntity:v6 error:a4];

  return v9;
}

@end