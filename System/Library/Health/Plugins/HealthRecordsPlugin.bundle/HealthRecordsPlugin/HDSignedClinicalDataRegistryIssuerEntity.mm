@interface HDSignedClinicalDataRegistryIssuerEntity
+ (BOOL)deleteIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)entityForIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)insertOrReplaceIssuerWithIdentifier:(id)identifier title:(id)title logoURL:(id)l softwareLogoURL:(id)rL database:(id)database error:(id *)error;
@end

@implementation HDSignedClinicalDataRegistryIssuerEntity

+ (id)entityForIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForRegistryEntityWithIssuerIdentifier:identifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)insertOrReplaceIssuerWithIdentifier:(id)identifier title:(id)title logoURL:(id)l softwareLogoURL:(id)rL database:(id)database error:(id *)error
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_E4E4;
  v20[3] = &unk_105D50;
  identifierCopy = identifier;
  titleCopy = title;
  lCopy = l;
  rLCopy = rL;
  v14 = rLCopy;
  v15 = lCopy;
  v16 = titleCopy;
  v17 = identifierCopy;
  v18 = [self insertOrReplaceEntity:1 database:database properties:&off_110678 error:error bindingHandler:v20];

  return v18;
}

+ (BOOL)deleteIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E66C;
  v9[3] = &unk_105DB8;
  identifierCopy = identifier;
  v7 = identifierCopy;
  LOBYTE(error) = [database executeCachedStatementForKey:&unk_E4030 error:error SQLGenerator:&stru_105D90 bindingHandler:v9 enumerationHandler:0];

  return error;
}

@end