@interface PDAllowedHost
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDAllowedHost)initWithDatabaseRow:(id)row;
- (PDDatabaseValue)identityValue;
- (void)bindTo:(id)to;
@end

@implementation PDAllowedHost

- (PDAllowedHost)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v9.receiver = self;
  v9.super_class = PDAllowedHost;
  v5 = [(PDAllowedHost *)&v9 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"host");
    host = v5->_host;
    v5->_host = v6;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  if (self)
  {
    host = self->_host;
  }

  else
  {
    host = 0;
  }

  sub_1000982FC(to, host, @"host");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version > 1)
  {
    if (version != 2)
    {
      if (version != 3)
      {
        if (version != 4)
        {
          goto LABEL_13;
        }

LABEL_11:
        if (sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?)", 0, &off_10021B9D0, 0))
        {
          version = 5;
          goto LABEL_13;
        }

LABEL_17:
        v11 = 0;
        goto LABEL_18;
      }

LABEL_10:
      if (!sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?)", 0, &off_10021B9B8, 0))
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

LABEL_9:
    v13 = @"ws-ee-maidsvc.icloud.com";
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    v10 = sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?)", 0, v9, 0);

    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDAllowedHost(   host text not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDAllowedHost_host on PDAllowedHost (host)", 0, 0, 0) || !sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?), (?)", 0, &off_10021B988, 0))
    {
      goto LABEL_17;
    }

LABEL_8:
    if (!sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?), (?)", 0, &off_10021B9A0, 0))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (version == 1)
  {
    goto LABEL_8;
  }

LABEL_13:
  *finalVersion = version;
  v11 = 1;
LABEL_18:

  return v11;
}

- (PDDatabaseValue)identityValue
{
  if (self)
  {
    self = self->_host;
  }

  return self;
}

@end