@interface SLLastAccountManager
+ (id)_lastAccountOfTypeIdentifier:(id)identifier inStore:(id)store updatePrefs:(BOOL)prefs prefKey:(id)key prefAppID:(id)d;
+ (void)_setLastAccount:(id)account prefKey:(id)key prefAppID:(id)d;
@end

@implementation SLLastAccountManager

+ (void)_setLastAccount:(id)account prefKey:(id)key prefAppID:(id)d
{
  applicationID = d;
  keyCopy = key;
  identifier = [account identifier];
  CFPreferencesSetAppValue(keyCopy, identifier, applicationID);

  CFPreferencesAppSynchronize(applicationID);
}

+ (id)_lastAccountOfTypeIdentifier:(id)identifier inStore:(id)store updatePrefs:(BOOL)prefs prefKey:(id)key prefAppID:(id)d
{
  prefsCopy = prefs;
  identifierCopy = identifier;
  storeCopy = store;
  keyCopy = key;
  dCopy = d;
  v16 = CFPreferencesCopyAppValue(keyCopy, dCopy);
  if (!v16 || (_SLLog(v7, 7, @"SLLastAccountManager fetching account with identifier %@"), [storeCopy accountWithIdentifier:{v16, v16}], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [storeCopy accountTypeWithAccountTypeIdentifier:identifierCopy];
    v19 = [storeCopy accountsWithAccountType:v18];

    if ([v19 count])
    {
      v17 = [v19 objectAtIndex:0];
      if (prefsCopy)
      {
        [SLLastAccountManager _setLastAccount:v17 prefKey:keyCopy prefAppID:dCopy];
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