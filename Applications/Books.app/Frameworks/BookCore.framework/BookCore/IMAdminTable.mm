@interface IMAdminTable
- (BOOL)hasDatabaseVersion;
- (IMAdminTable)initWithDatabaseHandle:(id)handle;
- (id)blobValueForKey:(id)key domain:(id)domain;
- (id)lastAccessDate;
- (id)numberValueForKey:(id)key domain:(id)domain;
- (id)stringValueForKey:(id)key domain:(id)domain;
- (int64_t)databaseVersion;
- (void)setDatabaseVersion:(int64_t)version;
- (void)setLastAccessDate:(id)date;
- (void)setProperty:(id)property forKey:(id)key domain:(id)domain;
@end

@implementation IMAdminTable

- (IMAdminTable)initWithDatabaseHandle:(id)handle
{
  handleCopy = handle;
  v10.receiver = self;
  v10.super_class = IMAdminTable;
  v6 = [(IMAdminTable *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, handle);
    v8 = [NSString stringWithFormat:@"create table if not exists admin (pk %@, domain %@, key %@, stringValue %@, intValue %@, blobValue %@)", @"integer primary key", @"text", @"text", @"text", @"integer", @"blob"];
    [(IMDatabaseHandle *)v7->_db runStatement:v8 arguments:0];
  }

  return v7;
}

- (int64_t)databaseVersion
{
  db = self->_db;
  v3 = [NSArray arrayWithObjects:@"version", @"database", 0];
  v4 = [(IMDatabaseHandle *)db arrayForQuery:@"select intValue from admin where key = ? and domain = ?" arguments:v3 rawRows:0];

  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:@"intValue"];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setDatabaseVersion:(int64_t)version
{
  v4 = [NSNumber numberWithInteger:version];
  [(IMAdminTable *)self setProperty:v4 forKey:@"version" domain:@"database"];
}

- (BOOL)hasDatabaseVersion
{
  db = self->_db;
  v3 = [NSArray arrayWithObjects:@"version", @"database", 0];
  v4 = [(IMDatabaseHandle *)db arrayForQuery:@"select count(*) from admin where key = ? and domain = ?" arguments:v3 rawRows:1];

  firstObject = [v4 firstObject];
  v5FirstObject = [firstObject firstObject];
  integerValue = [v5FirstObject integerValue];

  return integerValue > 0;
}

- (void)setLastAccessDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = +[NSDate date];
  }

  v7 = dateCopy;
  [dateCopy timeIntervalSinceReferenceDate];
  *&v5 = v5;
  v6 = [NSNumber numberWithFloat:v5];
  [(IMAdminTable *)self setProperty:v6 forKey:@"lastAccessDate" domain:@"database"];
}

- (id)lastAccessDate
{
  v2 = [(IMAdminTable *)self numberValueForKey:@"lastAccessDate" domain:@"database"];
  [v2 floatValue];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:v3];

  return v4;
}

- (void)setProperty:(id)property forKey:(id)key domain:(id)domain
{
  propertyCopy = property;
  keyCopy = key;
  domainCopy = domain;
  v10 = @"select count(*) from admin where key = ? and domain = ?";
  if (!domainCopy)
  {
    v10 = @"select count(*) from admin where key = ?";
  }

  v11 = v10;
  v12 = [[NSArray alloc] initWithObjects:{keyCopy, domainCopy, 0}];
  v13 = [(IMDatabaseHandle *)self->_db arrayForQuery:v11 arguments:v12 rawRows:1];
  firstObject = [v13 firstObject];
  v14FirstObject = [firstObject firstObject];
  integerValue = [v14FirstObject integerValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = @"blobValue";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = @"intValue";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v17 = @"stringValue";
      }

      else
      {
        v17 = 0;
      }
    }
  }

  if (integerValue)
  {
    if (domainCopy)
    {
      v18 = [NSString stringWithFormat:@"update admin set %@ = ? where key = ? and domain = ?", v17];
      v21 = domainCopy;
      v23 = 0;
    }

    else
    {
      v18 = [NSString stringWithFormat:@"update admin set %@ = ? where key = ?", v17];
      v21 = 0;
    }

    [NSArray arrayWithObjects:propertyCopy, keyCopy, v21, v23];
  }

  else
  {
    if (domainCopy)
    {
      v18 = [NSString stringWithFormat:@"insert into admin (key, domain, %@) values (?, ?, ?)", v17];
      v22 = propertyCopy;
      v23 = 0;
      v20 = domainCopy;
    }

    else
    {
      v18 = [NSString stringWithFormat:@"insert into admin (key, %@) values (?, ?)", v17];
      v20 = propertyCopy;
      v22 = 0;
    }

    [NSArray arrayWithObjects:keyCopy, v20, v22, v23];
  }
  v19 = ;

  [(IMDatabaseHandle *)self->_db runStatement:v18 arguments:v19];
}

- (id)blobValueForKey:(id)key domain:(id)domain
{
  if (domain)
  {
    v5 = [NSArray arrayWithObjects:key, domain, 0];
    v6 = @"select blobValue from admin where key = ? and domain = ?";
  }

  else
  {
    v5 = [NSArray arrayWithObject:key];
    v6 = @"select blobValue from admin where key = ?";
  }

  v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:v6 arguments:v5 rawRows:1];
  firstObject = [v7 firstObject];
  v8FirstObject = [firstObject firstObject];

  return v8FirstObject;
}

- (id)stringValueForKey:(id)key domain:(id)domain
{
  if (domain)
  {
    v5 = [NSArray arrayWithObjects:key, domain, 0];
    v6 = @"select stringValue from admin where key = ? and domain = ?";
  }

  else
  {
    v5 = [NSArray arrayWithObject:key];
    v6 = @"select stringValue from admin where key = ?";
  }

  v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:v6 arguments:v5 rawRows:1];
  firstObject = [v7 firstObject];
  v8FirstObject = [firstObject firstObject];

  return v8FirstObject;
}

- (id)numberValueForKey:(id)key domain:(id)domain
{
  if (domain)
  {
    v5 = [NSArray arrayWithObjects:key, domain, 0];
    v6 = @"select intValue from admin where key = ? and domain = ?";
  }

  else
  {
    v5 = [NSArray arrayWithObject:key];
    v6 = @"select intValue from admin where key = ?";
  }

  v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:v6 arguments:v5 rawRows:1];
  firstObject = [v7 firstObject];
  v8FirstObject = [firstObject firstObject];

  return v8FirstObject;
}

@end