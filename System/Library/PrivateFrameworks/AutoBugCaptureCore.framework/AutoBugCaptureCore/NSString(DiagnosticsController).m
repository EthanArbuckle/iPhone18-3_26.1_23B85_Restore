@interface NSString(DiagnosticsController)
- (id)maximumLogLevelString:()DiagnosticsController;
@end

@implementation NSString(DiagnosticsController)

- (id)maximumLogLevelString:()DiagnosticsController
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a1;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v7 = v5;
    if (([v5 isEqualToString:v4] & 1) == 0)
    {
      if ([v6 isEqualToString:@"debug"])
      {
        v8 = 4;
      }

      else if ([v6 isEqualToString:@"info"])
      {
        v8 = 3;
      }

      else if ([v6 isEqualToString:@"default"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      if ([v4 isEqualToString:@"debug"])
      {
        v9 = 4;
      }

      else if ([v4 isEqualToString:@"info"])
      {
        v9 = 3;
      }

      else
      {
        v10 = [v4 isEqualToString:@"default"];
        v9 = 2;
        if (!v10)
        {
          v9 = 0;
        }
      }

      v7 = v6;
      if (v9 > v8)
      {
        v7 = v4;
      }
    }
  }

  v11 = diagcollectLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "> Choosing log level: %@", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end