@interface ManagedOrganizationContactsClassObject
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (ManagedOrganizationContactsClassObject)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation ManagedOrganizationContactsClassObject

- (void)bindTo:(id)to
{
  toCopy = to;
  objectID = [(ManagedOrganizationContactsClassObject *)self objectID];
  sub_1000982FC(toCopy, objectID, @"objectID");
}

- (ManagedOrganizationContactsClassObject)initWithDatabaseRow:(id)row
{
  v8.receiver = self;
  v8.super_class = ManagedOrganizationContactsClassObject;
  rowCopy = row;
  v4 = [(ManagedOrganizationContactsClassObject *)&v8 init];
  v5 = sub_10016D778(rowCopy, @"objectID");
  [(ManagedOrganizationContactsClassObject *)v4 setObjectID:v5, v8.receiver, v8.super_class];

  v6 = sub_10016D778(rowCopy, @"className");

  [(ManagedOrganizationContactsClassObject *)v4 setDisplayName:v6];
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

  if (sub_1000B9298(databaseCopy, @"create view ManagedOrganizationContactsClassObject (\n    objectID,\n    className,\n    searchText\n) AS\nSELECT\n    objectID,\n    className,\n    searchText\nFROM CLSClass", 0, 0, 0))
  {
    version = 1;
LABEL_4:
    *finalVersion = version;
    LOBYTE(version) = 1;
  }

  return version;
}

@end