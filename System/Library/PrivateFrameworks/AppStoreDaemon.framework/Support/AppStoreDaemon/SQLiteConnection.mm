@interface SQLiteConnection
- (void)dealloc;
@end

@implementation SQLiteConnection

- (void)dealloc
{
  if (self->_database)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      options = self->_options;
      if (options)
      {
        options = objc_getProperty(options, v4, 24, 1);
      }

      v6 = options;
      *buf = 138543362;
      v9 = v6;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Connection taken down HARD, please call close before deallocating: %{public}@", buf, 0xCu);
    }

    sqlite3_close_v2(self->_database);
  }

  v7.receiver = self;
  v7.super_class = SQLiteConnection;
  [(SQLiteConnection *)&v7 dealloc];
}

@end