@interface CLSRole
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSRole

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSRole *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v7, "intValue")}];

    v8 = sub_10016D778(rowCopy, @"privileges");
    if (v8)
    {
      v15[0] = objc_opt_class();
      v15[1] = objc_opt_class();
      v9 = [NSArray arrayWithObjects:v15 count:2];
      v10 = [NSSet setWithArray:v9];
      v11 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v10 withData:v8];
      [v6 setPrivileges:v11];
    }

    v12 = sub_10016D778(rowCopy, @"sourceType");
    [v6 setSourceType:{objc_msgSend(v12, "intValue")}];

    v13 = sub_10016D778(rowCopy, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v13, "BOOLValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v12.receiver = self;
  v12.super_class = CLSRole;
  [(CLSRole *)&v12 bindTo:toCopy];
  v5 = [NSNumber numberWithInteger:[(CLSRole *)self type]];
  sub_1000982FC(toCopy, v5, @"type");

  privileges = [(CLSRole *)self privileges];

  if (privileges)
  {
    privileges2 = [(CLSRole *)self privileges];
    v11 = 0;
    privileges = [NSKeyedArchiver archivedDataWithRootObject:privileges2 requiringSecureCoding:1 error:&v11];
    v8 = v11;

    if (v8)
    {
      [v8 cls_debug:CLSLogDatabase];
    }
  }

  sub_1000982FC(toCopy, privileges, @"privileges");
  v9 = [NSNumber numberWithInteger:[(CLSRole *)self sourceType]];
  sub_1000982FC(toCopy, v9, @"sourceType");

  v10 = [NSNumber numberWithBool:[(CLSRole *)self isEditable]];
  sub_1000982FC(toCopy, v10, @"isEditable");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSRole(   objectID               text not null,    dateCreated            real not null,    dateLastModified       real not null,    type                   integer,    privileges             blob,    sourceType             integer,    isEditable             integer)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSRole_objectID on CLSRole (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

@end