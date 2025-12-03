@interface HDSignedClinicalDataRegistryMetadataEntity
+ (id)entityForKey:(id)key database:(id)database error:(id *)error;
+ (id)numericValueForKey:(id)key database:(id)database error:(id *)error;
+ (id)setNumericValue:(id)value forKey:(id)key database:(id)database error:(id *)error;
@end

@implementation HDSignedClinicalDataRegistryMetadataEntity

+ (id)numericValueForKey:(id)key database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self entityForKey:key database:databaseCopy error:error];
  v10 = [v9 numberForProperty:@"integer" database:databaseCopy];

  return v10;
}

+ (id)entityForKey:(id)key database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForEntityWithKey:key];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)setNumericValue:(id)value forKey:(id)key database:(id)database error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v21[0] = @"key";
  v21[1] = @"integer";
  databaseCopy = database;
  v13 = [NSArray arrayWithObjects:v21 count:2];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_8A8D4;
  v18[3] = &unk_1065E0;
  v19 = keyCopy;
  v20 = valueCopy;
  v14 = valueCopy;
  v15 = keyCopy;
  v16 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v13 error:error bindingHandler:v18];

  return v16;
}

@end