@interface StocksMigrator
- (BOOL)performMigration;
@end

@implementation StocksMigrator

- (BOOL)performMigration
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - Performing Stocks migration...", buf, 2u);
  }

  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.stocks"];
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - groupContainers: %@", buf, 0xCu);
    }

    v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Preferences/com.apple.stocks.plist"];
    v6 = [v3 URLByAppendingPathComponent:@"Library/Preferences/"];
    v7 = [v3 URLByAppendingPathComponent:@"Library/Preferences/group.com.apple.stocks.plist"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - source: %@", buf, 0xCu);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - destination: %@", buf, 0xCu);
    }

    v8 = [v5 path];
    v9 = [v2 fileExistsAtPath:v8];

    if (v9)
    {
      v10 = [v7 path];
      v11 = [v2 fileExistsAtPath:v10];

      if (v11)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - destination file is already present, don't overwrite", buf, 2u);
        }

        v12 = 0;
      }

      else
      {
        v21 = 0;
        v13 = [v2 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v21];
        v14 = v21;
        v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 138412290;
            v23 = v6;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - succeeded createDirectoryAtURL %@", buf, 0xCu);
          }

          v20 = v14;
          v16 = [v2 copyItemAtURL:v5 toURL:v7 error:&v20];
          v12 = v20;

          if (v16)
          {
            v17 = [v7 path];
            v18 = open([v17 fileSystemRepresentation], 0, 0);

            if (v18 != -1)
            {
              if (fcntl(v18, 64, 3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v23 = v7;
                _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - Can't set data protection class C on %@", buf, 0xCu);
              }

              close(v18);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - failed copyItemAtURL %@", buf, 0xCu);
          }
        }

        else
        {
          if (v15)
          {
            *buf = 138412290;
            v23 = v14;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - failed createDirectoryAtURL %@", buf, 0xCu);
          }

          v12 = v14;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - removing source file", buf, 2u);
      }

      [v2 removeItemAtURL:v5 error:0];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - source file does not exist, nothing to do", buf, 2u);
    }
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - no groupContainers", buf, 2u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StocksMigrator - Done with Stocks migration...", buf, 2u);
  }

  return 1;
}

@end