@interface _HDClinicalAPIReminderEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)_clientSourceForRow:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [[HDClinicalAPIReminder alloc] _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(_HDClinicalAPIReminderEntityEncoder *)self superclassEncoder];

  if (superclassEncoder)
  {
    sub_A708C(a2, self);
  }

  v12 = [(_HDClinicalAPIReminderEntityEncoder *)self _clientSourceForRow:row error:error];
  if (v12)
  {
    [objectCopy _setSource:v12];
    v13 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setCreationDate:v13];

    v14 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setPostDate:v14];
  }

  return v12 != 0;
}

- (id)_clientSourceForRow:(HDSQLiteRow *)row error:(id *)error
{
  v6 = [[HDSourceEntity alloc] initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
  profile = [(_HDClinicalAPIReminderEntityEncoder *)self profile];
  sourceManager = [profile sourceManager];
  v9 = [sourceManager clientSourceForSourceEntity:v6 error:error];

  return v9;
}

@end