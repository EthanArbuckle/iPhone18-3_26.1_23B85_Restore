@interface AccountStatusHandler
+ (id)handlerForAccount:(id)a3;
+ (id)handlerForConfigurationType:(id)a3;
- (BOOL)statusHasChangedForAccount:(id)a3 oldAccount:(id)a4;
@end

@implementation AccountStatusHandler

+ (id)handlerForConfigurationType:(id)a3
{
  v3 = a3;
  if (qword_CDA8 != -1)
  {
    sub_29E8();
  }

  if ([qword_CDA0 objectForKeyedSubscript:v3])
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)handlerForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationType"];
  if (v4)
  {
    v5 = [AccountStatusHandler handlerForConfigurationType:v4];
  }

  else
  {
    v6 = +[RMLog accountStatusHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29FC(v3, v6);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)statusHasChangedForAccount:(id)a3 oldAccount:(id)a4
{
  v6 = a4;
  v7 = [(AccountStatusHandler *)self getStatusInfoFromAccount:a3];
  v8 = [(AccountStatusHandler *)self getStatusInfoFromAccount:v6];

  LOBYTE(v6) = [v7 isEqualToDictionary:v8];
  return v6 ^ 1;
}

@end