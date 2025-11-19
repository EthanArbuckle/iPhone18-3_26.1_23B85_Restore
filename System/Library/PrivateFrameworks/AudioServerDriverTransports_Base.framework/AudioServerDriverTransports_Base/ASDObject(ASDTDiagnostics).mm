@interface ASDObject(ASDTDiagnostics)
+ (void)asdtLogComponents:()ASDTDiagnostics withSeparator:;
- (id)asdtName;
- (void)logDiagnostics:()ASDTDiagnostics;
@end

@implementation ASDObject(ASDTDiagnostics)

+ (void)asdtLogComponents:()ASDTDiagnostics withSeparator:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v7 length];
        if (([v13 length] + v14) > 0x1DF)
        {
          if (v14)
          {
            v16 = ASDTBaseLogType();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = v7;
              _os_log_impl(&dword_241659000, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }
          }

          [v7 setString:v13];
        }

        else
        {
          if (v14)
          {
            v15 = v6;
          }

          else
          {
            v15 = &stru_28534DD28;
          }

          [v7 appendFormat:@"%@%@", v15, v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v7 length])
  {
    v17 = ASDTBaseLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_241659000, v17, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logDiagnostics:()ASDTDiagnostics
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [a1 diagnosticDescriptionWithIndent:&stru_28534DD28 walkTree:1];
  v6 = MEMORY[0x277CCACA8];
  v7 = [a1 driverClassName];
  v8 = v7;
  v9 = @"(empty)";
  if (v5)
  {
    v9 = v5;
  }

  v10 = [v6 stringWithFormat:@"%@ Diags\n%@", v7, v9];

  if (a3)
  {
    v11 = MEMORY[0x277CEFB58];
    v12 = [v10 componentsSeparatedByString:@"\n"];
    [v11 asdtLogComponents:v12 withSeparator:@"\n"];
  }

  else
  {
    v13 = ASDTBaseLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)asdtName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 deviceUID];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [a1 driverClassName];
    v2 = [v3 stringWithFormat:@"%@(%p)", v4, a1];
  }

  return v2;
}

@end