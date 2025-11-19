@interface IMAdminTable
- (BOOL)hasDatabaseVersion;
- (IMAdminTable)initWithDatabaseHandle:(id)a3;
- (id)blobValueForKey:(id)a3 domain:(id)a4;
- (id)lastAccessDate;
- (id)numberValueForKey:(id)a3 domain:(id)a4;
- (id)stringValueForKey:(id)a3 domain:(id)a4;
- (int64_t)databaseVersion;
- (void)setDatabaseVersion:(int64_t)a3;
- (void)setLastAccessDate:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4 domain:(id)a5;
@end

@implementation IMAdminTable

- (IMAdminTable)initWithDatabaseHandle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IMAdminTable;
  v6 = [(IMAdminTable *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, a3);
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
  v7 = [v6 integerValue];

  return v7;
}

- (void)setDatabaseVersion:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(IMAdminTable *)self setProperty:v4 forKey:@"version" domain:@"database"];
}

- (BOOL)hasDatabaseVersion
{
  db = self->_db;
  v3 = [NSArray arrayWithObjects:@"version", @"database", 0];
  v4 = [(IMDatabaseHandle *)db arrayForQuery:@"select count(*) from admin where key = ? and domain = ?" arguments:v3 rawRows:1];

  v5 = [v4 firstObject];
  v6 = [v5 firstObject];
  v7 = [v6 integerValue];

  return v7 > 0;
}

- (void)setLastAccessDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[NSDate date];
  }

  v7 = v4;
  [v4 timeIntervalSinceReferenceDate];
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

- (void)setProperty:(id)a3 forKey:(id)a4 domain:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = @"select count(*) from admin where key = ? and domain = ?";
  if (!v9)
  {
    v10 = @"select count(*) from admin where key = ?";
  }

  v11 = v10;
  v12 = [[NSArray alloc] initWithObjects:{v8, v9, 0}];
  v13 = [(IMDatabaseHandle *)self->_db arrayForQuery:v11 arguments:v12 rawRows:1];
  v14 = [v13 firstObject];
  v15 = [v14 firstObject];
  v16 = [v15 integerValue];

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

  if (v16)
  {
    if (v9)
    {
      v18 = [NSString stringWithFormat:@"update admin set %@ = ? where key = ? and domain = ?", v17];
      v21 = v9;
      v23 = 0;
    }

    else
    {
      v18 = [NSString stringWithFormat:@"update admin set %@ = ? where key = ?", v17];
      v21 = 0;
    }

    [NSArray arrayWithObjects:v24, v8, v21, v23];
  }

  else
  {
    if (v9)
    {
      v18 = [NSString stringWithFormat:@"insert into admin (key, domain, %@) values (?, ?, ?)", v17];
      v22 = v24;
      v23 = 0;
      v20 = v9;
    }

    else
    {
      v18 = [NSString stringWithFormat:@"insert into admin (key, %@) values (?, ?)", v17];
      v20 = v24;
      v22 = 0;
    }

    [NSArray arrayWithObjects:v8, v20, v22, v23];
  }
  v19 = ;

  [(IMDatabaseHandle *)self->_db runStatement:v18 arguments:v19];
}

- (id)blobValueForKey:(id)a3 domain:(id)a4
{
  if (a4)
  {
    v5 = [NSArray arrayWithObjects:a3, a4, 0];
    v6 = @"select blobValue from admin where key = ? and domain = ?";
  }

  else
  {
    v5 = [NSArray arrayWithObject:a3];
    v6 = @"select blobValue from admin where key = ?";
  }

  v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:v6 arguments:v5 rawRows:1];
  v8 = [v7 firstObject];
  v9 = [v8 firstObject];

  return v9;
}

- (id)stringValueForKey:(id)a3 domain:(id)a4
{
  if (a4)
  {
    v5 = [NSArray arrayWithObjects:a3, a4, 0];
    v6 = @"select stringValue from admin where key = ? and domain = ?";
  }

  else
  {
    v5 = [NSArray arrayWithObject:a3];
    v6 = @"select stringValue from admin where key = ?";
  }

  v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:v6 arguments:v5 rawRows:1];
  v8 = [v7 firstObject];
  v9 = [v8 firstObject];

  return v9;
}

- (id)numberValueForKey:(id)a3 domain:(id)a4
{
  if (a4)
  {
    v5 = [NSArray arrayWithObjects:a3, a4, 0];
    v6 = @"select intValue from admin where key = ? and domain = ?";
  }

  else
  {
    v5 = [NSArray arrayWithObject:a3];
    v6 = @"select intValue from admin where key = ?";
  }

  v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:v6 arguments:v5 rawRows:1];
  v8 = [v7 firstObject];
  v9 = [v8 firstObject];

  return v9;
}

@end