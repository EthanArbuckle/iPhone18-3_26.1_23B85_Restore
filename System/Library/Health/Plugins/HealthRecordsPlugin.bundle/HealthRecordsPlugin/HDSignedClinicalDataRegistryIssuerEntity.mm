@interface HDSignedClinicalDataRegistryIssuerEntity
+ (BOOL)deleteIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)entityForIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)insertOrReplaceIssuerWithIdentifier:(id)a3 title:(id)a4 logoURL:(id)a5 softwareLogoURL:(id)a6 database:(id)a7 error:(id *)a8;
@end

@implementation HDSignedClinicalDataRegistryIssuerEntity

+ (id)entityForIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForRegistryEntityWithIssuerIdentifier:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)insertOrReplaceIssuerWithIdentifier:(id)a3 title:(id)a4 logoURL:(id)a5 softwareLogoURL:(id)a6 database:(id)a7 error:(id *)a8
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_E4E4;
  v20[3] = &unk_105D50;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v14 = v24;
  v15 = v23;
  v16 = v22;
  v17 = v21;
  v18 = [a1 insertOrReplaceEntity:1 database:a7 properties:&off_110678 error:a8 bindingHandler:v20];

  return v18;
}

+ (BOOL)deleteIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E66C;
  v9[3] = &unk_105DB8;
  v10 = a3;
  v7 = v10;
  LOBYTE(a5) = [a4 executeCachedStatementForKey:&unk_E4030 error:a5 SQLGenerator:&stru_105D90 bindingHandler:v9 enumerationHandler:0];

  return a5;
}

@end