@interface APDatabaseCursor
- (APDatabaseCursor)initWithStatement:(sqlite3_stmt *)statement lock:(id)lock;
@end

@implementation APDatabaseCursor

- (APDatabaseCursor)initWithStatement:(sqlite3_stmt *)statement lock:(id)lock
{
  lockCopy = lock;
  v11.receiver = self;
  v11.super_class = APDatabaseCursor;
  v8 = [(APDatabaseCursor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_statement = statement;
    objc_storeStrong(&v8->_lock, lock);
  }

  return v9;
}

@end