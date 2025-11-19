@interface PDAllowedHost
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDAllowedHost)initWithDatabaseRow:(id)a3;
- (PDDatabaseValue)identityValue;
- (void)bindTo:(id)a3;
@end

@implementation PDAllowedHost

- (PDAllowedHost)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PDAllowedHost;
  v5 = [(PDAllowedHost *)&v9 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"host");
    host = v5->_host;
    v5->_host = v6;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  if (self)
  {
    host = self->_host;
  }

  else
  {
    host = 0;
  }

  sub_1000982FC(a3, host, @"host");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_13;
        }

LABEL_11:
        if (sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?)", 0, &off_10021B9D0, 0))
        {
          a3 = 5;
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

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDAllowedHost(   host text not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDAllowedHost_host on PDAllowedHost (host)", 0, 0, 0) || !sub_1000B9298(v8, @"insert into PDAllowedHost (host) values (?), (?)", 0, &off_10021B988, 0))
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

  if (a3 == 1)
  {
    goto LABEL_8;
  }

LABEL_13:
  *a4 = a3;
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