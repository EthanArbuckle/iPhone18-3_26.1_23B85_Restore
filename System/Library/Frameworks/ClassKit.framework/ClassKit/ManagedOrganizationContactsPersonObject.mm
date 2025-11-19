@interface ManagedOrganizationContactsPersonObject
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (ManagedOrganizationContactsPersonObject)initWithDatabaseRow:(id)a3;
- (id)displayNameForRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation ManagedOrganizationContactsPersonObject

- (void)bindTo:(id)a3
{
  v4 = a3;
  v5 = [(ManagedOrganizationContactsPersonObject *)self objectID];
  sub_1000982FC(v4, v5, @"objectID");
}

- (ManagedOrganizationContactsPersonObject)initWithDatabaseRow:(id)a3
{
  v16.receiver = self;
  v16.super_class = ManagedOrganizationContactsPersonObject;
  v3 = a3;
  v4 = [(ManagedOrganizationContactsPersonObject *)&v16 init];
  v5 = sub_10016D778(v3, @"objectID");
  [(ManagedOrganizationContactsPersonObject *)v4 setObjectID:v5, v16.receiver, v16.super_class];

  v6 = sub_10016D778(v3, @"emailAddress");
  [(ManagedOrganizationContactsPersonObject *)v4 setEmailAddress:v6];

  v7 = sub_10016D778(v3, @"appleID");
  [(ManagedOrganizationContactsPersonObject *)v4 setAppleID:v7];

  v8 = sub_10016D778(v3, @"givenName");
  [(ManagedOrganizationContactsPersonObject *)v4 setGivenName:v8];

  v9 = sub_10016D778(v3, @"middleName");
  [(ManagedOrganizationContactsPersonObject *)v4 setMiddleName:v9];

  v10 = sub_10016D778(v3, @"familyName");
  [(ManagedOrganizationContactsPersonObject *)v4 setFamilyName:v10];

  v11 = [(ManagedOrganizationContactsPersonObject *)v4 displayNameForRow:v3];
  [(ManagedOrganizationContactsPersonObject *)v4 setDisplayName:v11];

  v12 = sub_10016D778(v3, @"phoneticGivenName");
  [(ManagedOrganizationContactsPersonObject *)v4 setPhoneticGivenName:v12];

  v13 = sub_10016D778(v3, @"phoneticMiddleName");
  [(ManagedOrganizationContactsPersonObject *)v4 setPhoneticMiddleName:v13];

  v14 = sub_10016D778(v3, @"phoneticFamilyName");

  [(ManagedOrganizationContactsPersonObject *)v4 setPhoneticFamilyName:v14];
  return v4;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_4:
    if (sub_1000B9298(v8, @"DROP VIEW IF EXISTS ManagedOrganizationContactsPersonObject", 0, 0, 0) && sub_1000B9298(v8, @"create view ManagedOrganizationContactsPersonObject (\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    phoneticGivenName,\n    phoneticMiddleName,\n    phoneticFamilyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\n) AS\nSELECT\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    phoneticGivenName,\n    phoneticMiddleName,\n    phoneticFamilyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\nFROM CLSPerson", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create view ManagedOrganizationContactsPersonObject (\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\n) AS\nSELECT\n    objectID,\n    givenName,\n    middleName,\n    familyName,\n    appleID,\n    emailAddress,\n    searchText,\n    isSearchable\nFROM CLSPerson", 0, 0, 0))
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_7:
  *a4 = a3;
  v9 = 1;
LABEL_9:

  return v9;
}

- (id)displayNameForRow:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSPersonNameComponents);
  v5 = sub_10016D778(v3, @"givenName");
  [v4 setGivenName:v5];

  v6 = sub_10016D778(v3, @"middleName");
  [v4 setMiddleName:v6];

  v7 = sub_10016D778(v3, @"familyName");

  [v4 setFamilyName:v7];
  v8 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v4 style:0 options:0];

  return v8;
}

@end