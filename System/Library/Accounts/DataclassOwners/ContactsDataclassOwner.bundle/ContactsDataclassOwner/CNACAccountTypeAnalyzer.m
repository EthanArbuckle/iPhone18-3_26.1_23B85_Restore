@interface CNACAccountTypeAnalyzer
+ (BOOL)isAccountAppleAccount:(id)a3;
+ (BOOL)isAccountGenericContactsSyncingAccount:(id)a3;
+ (BOOL)isAccountGenericContactsSyncingOrDirectoryAccount:(id)a3;
+ (BOOL)isAccountPopularContactsSyncingAccount:(id)a3;
+ (BOOL)isiCloudSignoutRestrictionEnabled;
+ (id)os_log;
@end

@implementation CNACAccountTypeAnalyzer

+ (id)os_log
{
  if (qword_15950 != -1)
  {
    sub_8154();
  }

  v3 = qword_15958;

  return v3;
}

+ (BOOL)isiCloudSignoutRestrictionEnabled
{
  v2 = objc_alloc_init(off_15918());
  v9 = 0;
  v3 = [v2 requestiCloudLogoutPolicyWithError:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [v3 integerValue] != 0;
  }

  else
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_8168(v4, v6);
    }

    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_81E0(v7);
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAccountAppleAccount:(id)a3
{
  v3 = [a3 accountType];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:ACAccountTypeIdentifierAppleAccount];

  return v5;
}

+ (BOOL)isAccountPopularContactsSyncingAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:ACAccountTypeIdentifierGmail])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 accountType];
    v8 = [v7 identifier];
    if ([v8 isEqualToString:ACAccountTypeIdentifierYahoo])
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 accountType];
      v10 = [v9 identifier];
      if ([v10 isEqualToString:ACAccountTypeIdentifierExchange])
      {
        v6 = 1;
      }

      else
      {
        v11 = [v3 accountType];
        v12 = [v11 identifier];
        v6 = [v12 isEqualToString:ACAccountTypeIdentifierHotmail];
      }
    }
  }

  return v6;
}

+ (BOOL)isAccountGenericContactsSyncingAccount:(id)a3
{
  v4 = a3;
  if ([a1 isAccountPopularContactsSyncingAccount:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 accountType];
    v7 = [v6 identifier];
    v5 = [v7 isEqualToString:ACAccountTypeIdentifierCardDAV];
  }

  return v5;
}

+ (BOOL)isAccountGenericContactsSyncingOrDirectoryAccount:(id)a3
{
  v4 = a3;
  if ([a1 isAccountGenericContactsSyncingAccount:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 accountType];
    v7 = [v6 identifier];
    v5 = [v7 isEqualToString:ACAccountTypeIdentifierLDAP];
  }

  return v5;
}

@end