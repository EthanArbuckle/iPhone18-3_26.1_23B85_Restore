@interface ManagedOrganizationContactsGroupObject
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (ManagedOrganizationContactsGroupObject)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation ManagedOrganizationContactsGroupObject

- (void)bindTo:(id)to
{
  toCopy = to;
  objectID = [(ManagedOrganizationContactsGroupObject *)self objectID];
  sub_1000982FC(toCopy, objectID, @"objectID");
}

- (ManagedOrganizationContactsGroupObject)initWithDatabaseRow:(id)row
{
  v9.receiver = self;
  v9.super_class = ManagedOrganizationContactsGroupObject;
  rowCopy = row;
  v4 = [(ManagedOrganizationContactsGroupObject *)&v9 init];
  v5 = sub_10016D778(rowCopy, @"objectID");
  [(ManagedOrganizationContactsGroupObject *)v4 setObjectID:v5, v9.receiver, v9.super_class];

  v6 = sub_10016D778(rowCopy, @"groupName");
  [(ManagedOrganizationContactsGroupObject *)v4 setDisplayName:v6];

  v7 = sub_10016D778(rowCopy, @"emailAddress");

  [(ManagedOrganizationContactsGroupObject *)v4 setEmailAddress:v7];
  return v4;
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    goto LABEL_4;
  }

  if (sub_1000B9298(databaseCopy, @"create view ManagedOrganizationContactsGroupObject (\n    objectID,\n    groupName,\n    emailAddress,\n    searchText\n) AS\nSELECT\n    objectID,\n    groupName,\n    emailAddress,\n    searchText\nFROM CLSGroup", 0, 0, 0))
  {
    version = 1;
LABEL_4:
    *finalVersion = version;
    LOBYTE(version) = 1;
  }

  return version;
}

@end