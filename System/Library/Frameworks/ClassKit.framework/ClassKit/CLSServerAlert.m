@interface CLSServerAlert
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashableColumnNames;
- (CLSServerAlert)initWithDatabaseRow:(id)a3;
- (NSArray)immutableColumnNames;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
@end

@implementation CLSServerAlert

+ (id)hashableColumnNames
{
  v4[0] = @"dateLastModified";
  v4[1] = @"dateExpires";
  v4[2] = @"alertType";
  v4[3] = @"displayRoles";
  v4[4] = @"title";
  v4[5] = @"message";
  v4[6] = @"defaultButtonInfo";
  v4[7] = @"otherButtonInfos";
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

- (unint64_t)changeHash
{
  v13.receiver = self;
  v13.super_class = CLSServerAlert;
  v3 = [(CLSServerAlert *)&v13 changeHash];
  v4 = [(CLSServerAlert *)self dateExpires];
  v5 = [v4 hash] ^ v3;

  v6 = v5 ^ (2 * [(CLSServerAlert *)self alertType]);
  v7 = v6 ^ (4 * [(CLSServerAlert *)self displayRoles]);
  v8 = [(CLSServerAlert *)self title];
  v9 = [v8 _cls_stableHash];

  v10 = [(CLSServerAlert *)self message];
  v11 = v9 ^ [v10 _cls_stableHash];

  return v7 ^ v11;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSServerAlert)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSServerAlert *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"title");
    [v6 setTitle:v7];

    v8 = sub_10016D778(v4, @"alertType");
    [v6 setAlertType:{objc_msgSend(v8, "integerValue")}];

    v9 = sub_10016D778(v4, @"displayRoles");
    [v6 setDisplayRoles:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(v4, @"title");
    [v6 setTitle:v10];

    v11 = sub_10016D778(v4, @"message");
    [v6 setMessage:v11];

    v12 = sub_10016D778(v4, @"displayed");
    [v6 setDisplayedCount:{objc_msgSend(v12, "integerValue")}];

    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v13 = [NSArray arrayWithObjects:&v20 count:3];
    v14 = [NSSet setWithArray:v13, v20, v21];

    v15 = sub_10016D778(v4, @"defaultButtonInfo");
    if (v15)
    {
      v16 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v14 withData:v15];
      [v6 setDefaultButtonInfo:v16];
    }

    v17 = sub_10016D778(v4, @"otherButtonInfos");

    if (v17)
    {
      v18 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v14 withData:v17];
      [v6 setOtherButtonInfos:v18];
    }
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CLSServerAlert;
  [(CLSServerAlert *)&v19 bindTo:v4];
  v20 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v20 count:1];
  sub_1000983A8(v4, v5);

  v6 = [NSNumber numberWithInteger:[(CLSServerAlert *)self alertType]];
  sub_1000982FC(v4, v6, @"alertType");

  v7 = [NSNumber numberWithInteger:[(CLSServerAlert *)self displayRoles]];
  sub_1000982FC(v4, v7, @"displayRoles");

  v8 = [NSNumber numberWithInteger:[(CLSServerAlert *)self displayedCount]];
  sub_1000982FC(v4, v8, @"displayed");

  v9 = [(CLSServerAlert *)self title];
  sub_1000982FC(v4, v9, @"title");

  v10 = [(CLSServerAlert *)self message];
  sub_1000982FC(v4, v10, @"message");

  v11 = [(CLSServerAlert *)self defaultButtonInfo];

  if (v11)
  {
    v12 = [(CLSServerAlert *)self defaultButtonInfo];
    v18 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v18];
    v13 = v18;

    if (v13)
    {
      [v13 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1000982FC(v4, v11, @"defaultButtonInfo");

  v14 = [(CLSServerAlert *)self otherButtonInfos];

  if (v14)
  {
    v15 = [(CLSServerAlert *)self otherButtonInfos];
    v17 = 0;
    v16 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v17];
    v14 = v17;

    if (v14)
    {
      [v14 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v16 = 0;
  }

  sub_1000982FC(v4, v16, @"otherButtonInfos");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSServerAlert(   objectID               text not null,    dateCreated            real not null,    dateLastModified       real not null,    dateExpires            real not null,    title                  text not null,    message                text not null,    alertType              integer,    displayRoles           integer,    displayed              integer,    defaultButtonInfo      blob,    otherButtonInfos       blob)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSServerAlert_objectID on CLSServerAlert (objectID)", 0, 0, 0))
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