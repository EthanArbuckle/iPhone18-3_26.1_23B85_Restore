@interface MCUserEnrollmentAccountNotificationPlugin
- (BOOL)canSaveAccount:(id)a3 inStore:(id)a4 error:(id *)a5;
@end

@implementation MCUserEnrollmentAccountNotificationPlugin

- (BOOL)canSaveAccount:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  if (![v7 length])
  {
    v10 = _ACLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_DC8(v6, v10);
    }

    goto LABEL_7;
  }

  v8 = [DMCPersonaHelper personaWithUniqueIdentifierExists:v7];
  v9 = _ACLogSystem();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_CC0(v7, v6, v10);
    }

LABEL_7:
    v11 = 1;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 username];
    v13 = [v6 accountType];
    v14 = [v13 accountTypeDescription];
    v15 = [v6 identifier];
    v17 = 138413058;
    v18 = v7;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "MCUserEnrollmentAccountNotificationPlugin: Persona with identifier:%@ doesn't exist, reject account(%@, %@, %@) saving", &v17, 0x2Au);
  }

  if (a5)
  {
    *a5 = [NSError errorWithDomain:ACErrorDomain code:4 userInfo:0];
  }

  v10 = +[ACAccountStore defaultStore];
  [v10 dmc_removeMAIDRelatedAccountsWithPersonaID:v7 asynchronous:1];
  v11 = 0;
LABEL_13:

  return v11;
}

@end