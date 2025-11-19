@interface TouchIdViewModel
- (id)alertActionsFromOptions:(id)a3 event:(int64_t)a4;
- (id)alertTintFromOptions:(id)a3;
- (id)fallbackActionFromOptions:(id)a3;
@end

@implementation TouchIdViewModel

- (id)alertActionsFromOptions:(id)a3 event:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [v6 objectForKeyedSubscript:&off_1000AF650];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [v6 objectForKeyedSubscript:&off_1000AF668];
  v12 = [v11 BOOLValue];
  v13 = v12 ^ 1 | v10;
  if ([v11 intValue] == 2 || (v14 = a4 == 1, (v13 & 1) == 0))
  {
    v14 = 1;
  }

  v15 = LALogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138544130;
    v25 = self;
    v26 = 1024;
    v27 = v13 & 1;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ buttons - cancel:%d, fallback:%d, show fallback immediately:%d", &v24, 0x1Eu);
  }

  if ((v12 & v14) == 1)
  {
    v16 = [(TouchIdViewModel *)self fallbackActionFromOptions:v6];
    if (![v16 length])
    {

LABEL_15:
      v17 = [v6 objectForKeyedSubscript:&off_1000AF698];
      v18 = [LACStringHelper truncateString:v17 maxLength:32];

      if (v18)
      {
        v19 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v20 = [v18 stringByTrimmingCharactersInSet:v19];

        if (v20)
        {
          v21 = v20;
          if ([v20 length])
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1000ADB50 table:@"MobileUI"];

LABEL_21:
      [v7 setObject:v21 forKeyedSubscript:&off_1000AF6B0];

      goto LABEL_22;
    }

    [v7 setObject:v16 forKeyedSubscript:&off_1000AF680];
  }

  if (v13)
  {
    goto LABEL_15;
  }

LABEL_22:

  return v7;
}

- (id)fallbackActionFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:&off_1000AF680];
  v4 = [LACStringHelper truncateString:v3 maxLength:32];

  if (v4 && (+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet"), v5 = objc_claimAutoreleasedReturnValue(), [v4 stringByTrimmingCharactersInSet:v5], v6 = objc_claimAutoreleasedReturnValue(), v4, v5, v6))
  {
    if (![v6 isEqualToString:@"Enter Passcode"])
    {
      goto LABEL_7;
    }

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ENTER_PASSCODE_ONLY" value:&stru_1000ADB50 table:@"MobileUI"];

    v6 = v8;
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"ENTER_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
  }

LABEL_7:

  return v6;
}

- (id)alertTintFromOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:&off_1000AF6C8];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v4 length])
      {
        v11 = 0;
        v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
        v6 = v11;
        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v9 = LALogForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(TouchIdViewModel *)v6 alertTintFromOptions:v9];
          }
        }

        v8 = v5;
      }

      else
      {
        v5 = LALogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [TouchIdViewModel alertTintFromOptions:v5];
        }

        v8 = 0;
      }
    }

    else
    {
      v4 = LALogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [TouchIdViewModel alertTintFromOptions:v4];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)alertTintFromOptions:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive tint color. Received: '%{public}@'.", &v2, 0xCu);
}

@end