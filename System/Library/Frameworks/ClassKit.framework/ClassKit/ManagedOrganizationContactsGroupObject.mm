@interface ManagedOrganizationContactsGroupObject
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (ManagedOrganizationContactsGroupObject)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation ManagedOrganizationContactsGroupObject

- (void)bindTo:(id)a3
{
  v4 = a3;
  v5 = [(ManagedOrganizationContactsGroupObject *)self objectID];
  sub_1000982FC(v4, v5, @"objectID");
}

- (ManagedOrganizationContactsGroupObject)initWithDatabaseRow:(id)a3
{
  v9.receiver = self;
  v9.super_class = ManagedOrganizationContactsGroupObject;
  v3 = a3;
  v4 = [(ManagedOrganizationContactsGroupObject *)&v9 init];
  v5 = sub_10016D778(v3, @"objectID");
  [(ManagedOrganizationContactsGroupObject *)v4 setObjectID:v5, v9.receiver, v9.super_class];

  v6 = sub_10016D778(v3, @"groupName");
  [(ManagedOrganizationContactsGroupObject *)v4 setDisplayName:v6];

  v7 = sub_10016D778(v3, @"emailAddress");

  [(ManagedOrganizationContactsGroupObject *)v4 setEmailAddress:v7];
  return v4;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    goto LABEL_4;
  }

  if (sub_1000B9298(v7, @"create view ManagedOrganizationContactsGroupObject (\n    objectID,\n    groupName,\n    emailAddress,\n    searchText\n) AS\nSELECT\n    objectID,\n    groupName,\n    emailAddress,\n    searchText\nFROM CLSGroup", 0, 0, 0))
  {
    a3 = 1;
LABEL_4:
    *a4 = a3;
    LOBYTE(a3) = 1;
  }

  return a3;
}

@end