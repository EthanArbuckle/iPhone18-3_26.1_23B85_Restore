@interface ManagedOrganizationContactsPersonObject
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (ManagedOrganizationContactsPersonObject)initWithDatabaseRow:(id)row;
- (id)displayNameForRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation ManagedOrganizationContactsPersonObject

- (void)bindTo:(id)to
{
  toCopy = to;
  objectID = [(ManagedOrganizationContactsPersonObject *)self objectID];
  sub_1000982FC(toCopy, objectID, @"objectID");
}

- (ManagedOrganizationContactsPersonObject)initWithDatabaseRow:(id)row
{
  v16.receiver = self;
  v16.super_class = ManagedOrganizationContactsPersonObject;
  rowCopy = row;
  v4 = [(ManagedOrganizationContactsPersonObject *)&v16 init];
  v5 = sub_10016D778(rowCopy, @"objectID");
  [(ManagedOrganizationContactsPersonObject *)v4 setObjectID:v5, v16.receiver, v16.super_class];

  v6 = sub_10016D778(rowCopy, @"emailAddress");
  [(ManagedOrganizationContactsPersonObject *)v4 setEmailAddress:v6];

  v7 = sub_10016D778(rowCopy, @"appleID");
  [(ManagedOrganizationContactsPersonObject *)v4 setAppleID:v7];

  v8 = sub_10016D778(rowCopy, @"givenName");
  [(ManagedOrganizationContactsPersonObject *)v4 setGivenName:v8];

  v9 = sub_10016D778(rowCopy, @"middleName");
  [(ManagedOrganizationContactsPersonObject *)v4 setMiddleName:v9];

  v10 = sub_10016D778(rowCopy, @"familyName");
  [(ManagedOrganizationContactsPersonObject *)v4 setFamilyName:v10];

  v11 = [(ManagedOrganizationContactsPersonObject *)v4 displayNameForRow:rowCopy];
  [(ManagedOrganizationContactsPersonObject *)v4 setDisplayName:v11];

  v12 = sub_10016D778(rowCopy, @"phoneticGivenName");
  [(ManagedOrganizationContactsPersonObject *)v4 setPhoneticGivenName:v12];

  v13 = sub_10016D778(rowCopy, @"phoneticMiddleName");
  [(ManagedOrganizationContactsPersonObject *)v4 setPhoneticMiddleName:v13];

  v14 = sub_10016D778(rowCopy, @"phoneticFamilyName");

  [(ManagedOrganizationContactsPersonObject *)v4 setPhoneticFamilyName:v14];
  return v4;
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_4:
    if (sub_1000B9298(v8, @"DROP VIEW IF EXISTS ManagedOrganizationContactsPersonObject", 0, 0, 0) && sub_1000B9298(v8, @"create view ManagedOrganizationContactsPersonObject (\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    phoneticGivenName,\n    phoneticMiddleName,\n    phoneticFamilyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\n) AS\nSELECT\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    phoneticGivenName,\n    phoneticMiddleName,\n    phoneticFamilyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\nFROM CLSPerson", 0, 0, 0))
    {
      version = 2;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create view ManagedOrganizationContactsPersonObject (\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\n) AS\nSELECT\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\nFROM CLSPerson", 0, 0, 0))
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_7:
  *finalVersion = version;
  v9 = 1;
LABEL_9:

  return v9;
}

- (id)displayNameForRow:(id)row
{
  rowCopy = row;
  v4 = objc_alloc_init(NSPersonNameComponents);
  v5 = sub_10016D778(rowCopy, @"givenName");
  [v4 setGivenName:v5];

  v6 = sub_10016D778(rowCopy, @"middleName");
  [v4 setMiddleName:v6];

  v7 = sub_10016D778(rowCopy, @"familyName");

  [v4 setFamilyName:v7];
  v8 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v4 style:0 options:0];

  return v8;
}

@end