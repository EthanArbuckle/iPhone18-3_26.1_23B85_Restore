@interface SQLiteConnection
- (void)dealloc;
@end

@implementation SQLiteConnection

- (void)dealloc
{
  if (self->_database)
  {
    v3 = os_log_create("com.apple.AdAttributionKit", "SQL");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100006B9C(self, v3);
    }

    sqlite3_close_v2(self->_database);
  }

  v4.receiver = self;
  v4.super_class = SQLiteConnection;
  [(SQLiteConnection *)&v4 dealloc];
}

@end