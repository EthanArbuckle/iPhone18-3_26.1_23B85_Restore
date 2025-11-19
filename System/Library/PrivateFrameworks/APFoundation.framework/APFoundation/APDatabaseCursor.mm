@interface APDatabaseCursor
- (APDatabaseCursor)initWithStatement:(sqlite3_stmt *)a3 lock:(id)a4;
@end

@implementation APDatabaseCursor

- (APDatabaseCursor)initWithStatement:(sqlite3_stmt *)a3 lock:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = APDatabaseCursor;
  v8 = [(APDatabaseCursor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_statement = a3;
    objc_storeStrong(&v8->_lock, a4);
  }

  return v9;
}

@end