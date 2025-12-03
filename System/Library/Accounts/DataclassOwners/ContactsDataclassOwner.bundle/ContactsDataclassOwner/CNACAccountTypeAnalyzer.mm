@interface CNACAccountTypeAnalyzer
+ (BOOL)isAccountAppleAccount:(id)account;
+ (BOOL)isAccountGenericContactsSyncingAccount:(id)account;
+ (BOOL)isAccountGenericContactsSyncingOrDirectoryAccount:(id)account;
+ (BOOL)isAccountPopularContactsSyncingAccount:(id)account;
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
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_8168(v4, os_log);
    }

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      sub_81E0(os_log2);
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAccountAppleAccount:(id)account
{
  accountType = [account accountType];
  identifier = [accountType identifier];
  v5 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

  return v5;
}

+ (BOOL)isAccountPopularContactsSyncingAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:ACAccountTypeIdentifierGmail])
  {
    v6 = 1;
  }

  else
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    if ([identifier2 isEqualToString:ACAccountTypeIdentifierYahoo])
    {
      v6 = 1;
    }

    else
    {
      accountType3 = [accountCopy accountType];
      identifier3 = [accountType3 identifier];
      if ([identifier3 isEqualToString:ACAccountTypeIdentifierExchange])
      {
        v6 = 1;
      }

      else
      {
        accountType4 = [accountCopy accountType];
        identifier4 = [accountType4 identifier];
        v6 = [identifier4 isEqualToString:ACAccountTypeIdentifierHotmail];
      }
    }
  }

  return v6;
}

+ (BOOL)isAccountGenericContactsSyncingAccount:(id)account
{
  accountCopy = account;
  if ([self isAccountPopularContactsSyncingAccount:accountCopy])
  {
    v5 = 1;
  }

  else
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v5 = [identifier isEqualToString:ACAccountTypeIdentifierCardDAV];
  }

  return v5;
}

+ (BOOL)isAccountGenericContactsSyncingOrDirectoryAccount:(id)account
{
  accountCopy = account;
  if ([self isAccountGenericContactsSyncingAccount:accountCopy])
  {
    v5 = 1;
  }

  else
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v5 = [identifier isEqualToString:ACAccountTypeIdentifierLDAP];
  }

  return v5;
}

@end