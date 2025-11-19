@interface ManagedOrganizationContactsClassObject
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (ManagedOrganizationContactsClassObject)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation ManagedOrganizationContactsClassObject

- (void)bindTo:(id)a3
{
  v4 = a3;
  v5 = [(ManagedOrganizationContactsClassObject *)self objectID];
  sub_1000982FC(v4, v5, @"objectID");
}

- (ManagedOrganizationContactsClassObject)initWithDatabaseRow:(id)a3
{
  v8.receiver = self;
  v8.super_class = ManagedOrganizationContactsClassObject;
  v3 = a3;
  v4 = [(ManagedOrganizationContactsClassObject *)&v8 init];
  v5 = sub_10016D778(v3, @"objectID");
  [(ManagedOrganizationContactsClassObject *)v4 setObjectID:v5, v8.receiver, v8.super_class];

  v6 = sub_10016D778(v3, @"className");

  [(ManagedOrganizationContactsClassObject *)v4 setDisplayName:v6];
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

  if (sub_1000B9298(v7, @"create view ManagedOrganizationContactsClassObject (\n    objectID,\n    className,\n    searchText\n) AS\nSELECT\n    objectID,\n    className,\n    searchText\nFROM CLSClass", 0, 0, 0))
  {
    a3 = 1;
LABEL_4:
    *a4 = a3;
    LOBYTE(a3) = 1;
  }

  return a3;
}

@end