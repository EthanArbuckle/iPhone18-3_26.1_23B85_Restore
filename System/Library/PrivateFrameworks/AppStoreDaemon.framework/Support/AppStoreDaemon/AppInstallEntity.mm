@interface AppInstallEntity
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)foreignDatabaseTablesToDelete;
- (BOOL)deleteFromDatabase;
@end

@implementation AppInstallEntity

- (BOOL)deleteFromDatabase
{
  v3 = sub_1003403A0(self, @"external_id");
  if (v3)
  {
    v4 = sub_100226F64();
    sub_100227180(v4, v3);
  }

  v7.receiver = self;
  v7.super_class = AppInstallEntity;
  deleteFromDatabase = [(SQLiteEntity *)&v7 deleteFromDatabase];

  return deleteFromDatabase;
}

+ (id)foreignDatabaseTablesToDelete
{
  if (qword_1005AAA50 != -1)
  {
    dispatch_once(&qword_1005AAA50, &stru_100520138);
  }

  v3 = qword_1005AAA48;

  return v3;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  v12[0] = @"COUNT(1)";
  v12[1] = @"MAX(app_install.priority)";
  v12[2] = @"MIN(app_install.priority)";
  v5 = [NSArray arrayWithObjects:v12 count:3];
  if ([v5 containsObject:propertyCopy])
  {
    v6 = propertyCopy;
  }

  else
  {
    v11[0] = @"IFNULL(app_install.bootstrapped, 2)";
    v11[1] = @"IFNULL(app_install.phase, 10)";
    v11[2] = @"IFNULL(app_install.priority, 0)";
    v7 = [NSArray arrayWithObjects:v11 count:3];
    if ([v7 containsObject:propertyCopy])
    {
      v8 = propertyCopy;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = &OBJC_METACLASS___AppInstallEntity;
      v8 = objc_msgSendSuper2(&v10, "disambiguatedSQLForProperty:", propertyCopy);
    }

    v6 = v8;
  }

  return v6;
}

@end