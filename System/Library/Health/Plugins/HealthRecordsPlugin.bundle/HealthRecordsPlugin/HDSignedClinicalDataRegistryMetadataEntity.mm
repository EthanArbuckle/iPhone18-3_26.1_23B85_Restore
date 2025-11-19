@interface HDSignedClinicalDataRegistryMetadataEntity
+ (id)entityForKey:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)numericValueForKey:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)setNumericValue:(id)a3 forKey:(id)a4 database:(id)a5 error:(id *)a6;
@end

@implementation HDSignedClinicalDataRegistryMetadataEntity

+ (id)numericValueForKey:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 entityForKey:a3 database:v8 error:a5];
  v10 = [v9 numberForProperty:@"integer" database:v8];

  return v10;
}

+ (id)entityForKey:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForEntityWithKey:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)setNumericValue:(id)a3 forKey:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v21[0] = @"key";
  v21[1] = @"integer";
  v12 = a5;
  v13 = [NSArray arrayWithObjects:v21 count:2];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_8A8D4;
  v18[3] = &unk_1065E0;
  v19 = v11;
  v20 = v10;
  v14 = v10;
  v15 = v11;
  v16 = [a1 insertOrReplaceEntity:1 database:v12 properties:v13 error:a6 bindingHandler:v18];

  return v16;
}

@end