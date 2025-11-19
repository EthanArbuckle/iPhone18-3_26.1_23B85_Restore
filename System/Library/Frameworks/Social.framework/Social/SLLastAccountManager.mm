@interface SLLastAccountManager
+ (id)_lastAccountOfTypeIdentifier:(id)a3 inStore:(id)a4 updatePrefs:(BOOL)a5 prefKey:(id)a6 prefAppID:(id)a7;
+ (void)_setLastAccount:(id)a3 prefKey:(id)a4 prefAppID:(id)a5;
@end

@implementation SLLastAccountManager

+ (void)_setLastAccount:(id)a3 prefKey:(id)a4 prefAppID:(id)a5
{
  applicationID = a5;
  v7 = a4;
  v8 = [a3 identifier];
  CFPreferencesSetAppValue(v7, v8, applicationID);

  CFPreferencesAppSynchronize(applicationID);
}

+ (id)_lastAccountOfTypeIdentifier:(id)a3 inStore:(id)a4 updatePrefs:(BOOL)a5 prefKey:(id)a6 prefAppID:(id)a7
{
  v10 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = CFPreferencesCopyAppValue(v14, v15);
  if (!v16 || (_SLLog(v7, 7, @"SLLastAccountManager fetching account with identifier %@"), [v13 accountWithIdentifier:{v16, v16}], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [v13 accountTypeWithAccountTypeIdentifier:v12];
    v19 = [v13 accountsWithAccountType:v18];

    if ([v19 count])
    {
      v17 = [v19 objectAtIndex:0];
      if (v10)
      {
        [SLLastAccountManager _setLastAccount:v17 prefKey:v14 prefAppID:v15];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

@end