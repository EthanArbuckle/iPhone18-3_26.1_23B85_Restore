@interface CLSAdminRequestor
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSAdminRequestor)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSAdminRequestor

- (CLSAdminRequestor)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSAdminRequestor *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"state");
    [v6 setState:{objc_msgSend(v7, "intValue")}];

    v8 = sub_10016D778(rowCopy, @"email");
    [v6 setEmail:v8];

    v9 = sub_10016D778(rowCopy, @"verificationCode");
    [v6 setVerificationCode:v9];

    v10 = sub_10016D778(rowCopy, @"note");
    [v6 setNote:v10];

    v11 = sub_10016D778(rowCopy, @"serverRequestHeaders");
    if (v11)
    {
      v12 = [NSSet alloc];
      v13 = objc_opt_class();
      v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
      v15 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v14 withData:v11];
      [v6 setServerRequestHeaders:v15];
    }
  }

  return v6;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v16.receiver = self;
  v16.super_class = CLSAdminRequestor;
  [(CLSAdminRequestor *)&v16 bindTo:toCopy];
  v5 = [NSNumber numberWithInteger:[(CLSAdminRequestor *)self state]];
  sub_1000982FC(toCopy, v5, @"state");

  email = [(CLSAdminRequestor *)self email];
  sub_1000982FC(toCopy, email, @"email");

  verificationCode = [(CLSAdminRequestor *)self verificationCode];
  sub_1000982FC(toCopy, verificationCode, @"verificationCode");

  note = [(CLSAdminRequestor *)self note];
  sub_1000982FC(toCopy, note, @"note");

  serverRequestHeaders = [(CLSAdminRequestor *)self serverRequestHeaders];

  if (serverRequestHeaders)
  {
    serverRequestHeaders2 = [(CLSAdminRequestor *)self serverRequestHeaders];
    v11 = [CLSUtil dictionaryStrippingNSNullValues:serverRequestHeaders2];
    [(CLSAdminRequestor *)self setServerRequestHeaders:v11];

    serverRequestHeaders3 = [(CLSAdminRequestor *)self serverRequestHeaders];
    v15 = 0;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:serverRequestHeaders3 requiringSecureCoding:1 error:&v15];
    v14 = v15;

    if (v14)
    {
      [v14 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1000982FC(toCopy, v13, @"serverRequestHeaders");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSAdminRequestor (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    email                  text,\n    state                  integer,\n    verificationCode       text,\n    note                   text,\n    serverRequestHeaders   blob\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSAdminRequestor_objectID on CLSAdminRequestor (objectID)", 0, 0, 0))
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