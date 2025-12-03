@interface CLSServerAlert
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashableColumnNames;
- (CLSServerAlert)initWithDatabaseRow:(id)row;
- (NSArray)immutableColumnNames;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
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
  changeHash = [(CLSServerAlert *)&v13 changeHash];
  dateExpires = [(CLSServerAlert *)self dateExpires];
  v5 = [dateExpires hash] ^ changeHash;

  v6 = v5 ^ (2 * [(CLSServerAlert *)self alertType]);
  v7 = v6 ^ (4 * [(CLSServerAlert *)self displayRoles]);
  title = [(CLSServerAlert *)self title];
  _cls_stableHash = [title _cls_stableHash];

  message = [(CLSServerAlert *)self message];
  v11 = _cls_stableHash ^ [message _cls_stableHash];

  return v7 ^ v11;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CLSServerAlert)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSServerAlert *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v7];

    v8 = sub_10016D778(rowCopy, @"alertType");
    [v6 setAlertType:{objc_msgSend(v8, "integerValue")}];

    v9 = sub_10016D778(rowCopy, @"displayRoles");
    [v6 setDisplayRoles:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v10];

    v11 = sub_10016D778(rowCopy, @"message");
    [v6 setMessage:v11];

    v12 = sub_10016D778(rowCopy, @"displayed");
    [v6 setDisplayedCount:{objc_msgSend(v12, "integerValue")}];

    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v13 = [NSArray arrayWithObjects:&v20 count:3];
    v14 = [NSSet setWithArray:v13, v20, v21];

    v15 = sub_10016D778(rowCopy, @"defaultButtonInfo");
    if (v15)
    {
      v16 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v14 withData:v15];
      [v6 setDefaultButtonInfo:v16];
    }

    v17 = sub_10016D778(rowCopy, @"otherButtonInfos");

    if (v17)
    {
      v18 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v14 withData:v17];
      [v6 setOtherButtonInfos:v18];
    }
  }

  return v6;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v19.receiver = self;
  v19.super_class = CLSServerAlert;
  [(CLSServerAlert *)&v19 bindTo:toCopy];
  v20 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v20 count:1];
  sub_1000983A8(toCopy, v5);

  v6 = [NSNumber numberWithInteger:[(CLSServerAlert *)self alertType]];
  sub_1000982FC(toCopy, v6, @"alertType");

  v7 = [NSNumber numberWithInteger:[(CLSServerAlert *)self displayRoles]];
  sub_1000982FC(toCopy, v7, @"displayRoles");

  v8 = [NSNumber numberWithInteger:[(CLSServerAlert *)self displayedCount]];
  sub_1000982FC(toCopy, v8, @"displayed");

  title = [(CLSServerAlert *)self title];
  sub_1000982FC(toCopy, title, @"title");

  message = [(CLSServerAlert *)self message];
  sub_1000982FC(toCopy, message, @"message");

  defaultButtonInfo = [(CLSServerAlert *)self defaultButtonInfo];

  if (defaultButtonInfo)
  {
    defaultButtonInfo2 = [(CLSServerAlert *)self defaultButtonInfo];
    v18 = 0;
    defaultButtonInfo = [NSKeyedArchiver archivedDataWithRootObject:defaultButtonInfo2 requiringSecureCoding:1 error:&v18];
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

  sub_1000982FC(toCopy, defaultButtonInfo, @"defaultButtonInfo");

  otherButtonInfos = [(CLSServerAlert *)self otherButtonInfos];

  if (otherButtonInfos)
  {
    otherButtonInfos2 = [(CLSServerAlert *)self otherButtonInfos];
    v17 = 0;
    v16 = [NSKeyedArchiver archivedDataWithRootObject:otherButtonInfos2 requiringSecureCoding:1 error:&v17];
    otherButtonInfos = v17;

    if (otherButtonInfos)
    {
      [otherButtonInfos cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v16 = 0;
  }

  sub_1000982FC(toCopy, v16, @"otherButtonInfos");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSServerAlert(   objectID               text not null,    dateCreated            real not null,    dateLastModified       real not null,    dateExpires            real not null,    title                  text not null,    message                text not null,    alertType              integer,    displayRoles           integer,    displayed              integer,    defaultButtonInfo      blob,    otherButtonInfos       blob)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSServerAlert_objectID on CLSServerAlert (objectID)", 0, 0, 0))
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