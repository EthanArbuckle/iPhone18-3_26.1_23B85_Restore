@interface CLSRole
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation CLSRole

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSRole *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v7, "intValue")}];

    v8 = sub_10016D778(v4, @"privileges");
    if (v8)
    {
      v15[0] = objc_opt_class();
      v15[1] = objc_opt_class();
      v9 = [NSArray arrayWithObjects:v15 count:2];
      v10 = [NSSet setWithArray:v9];
      v11 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v10 withData:v8];
      [v6 setPrivileges:v11];
    }

    v12 = sub_10016D778(v4, @"sourceType");
    [v6 setSourceType:{objc_msgSend(v12, "intValue")}];

    v13 = sub_10016D778(v4, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v13, "BOOLValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLSRole;
  [(CLSRole *)&v12 bindTo:v4];
  v5 = [NSNumber numberWithInteger:[(CLSRole *)self type]];
  sub_1000982FC(v4, v5, @"type");

  v6 = [(CLSRole *)self privileges];

  if (v6)
  {
    v7 = [(CLSRole *)self privileges];
    v11 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v11];
    v8 = v11;

    if (v8)
    {
      [v8 cls_debug:CLSLogDatabase];
    }
  }

  sub_1000982FC(v4, v6, @"privileges");
  v9 = [NSNumber numberWithInteger:[(CLSRole *)self sourceType]];
  sub_1000982FC(v4, v9, @"sourceType");

  v10 = [NSNumber numberWithBool:[(CLSRole *)self isEditable]];
  sub_1000982FC(v4, v10, @"isEditable");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSRole(   objectID               text not null,    dateCreated            real not null,    dateLastModified       real not null,    type                   integer,    privileges             blob,    sourceType             integer,    isEditable             integer)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSRole_objectID on CLSRole (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

@end