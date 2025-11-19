@interface ACAccountMigrationState
+ (BOOL)migrationFinishedForKey:(__CFString *)a3;
+ (id)_currentSystemVersion;
+ (void)writeMigrationVersionPrefForKey:(__CFString *)a3;
@end

@implementation ACAccountMigrationState

+ (BOOL)migrationFinishedForKey:(__CFString *)a3
{
  v4 = [a1 _currentSystemVersion];
  CFPreferencesAppSynchronize(@"com.apple.accountsd");
  v5 = CFPreferencesCopyAppValue(a3, @"com.apple.accountsd");
  if (v5)
  {
    v6 = v5;
    v7 = CFStringCompare(v4, v5, 1uLL) == kCFCompareEqualTo;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_currentSystemVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x1E695E1E8]);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)writeMigrationVersionPrefForKey:(__CFString *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 _currentSystemVersion];
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "Writing Accounts ACLastMigrationSystemVersion version pref %@ for key %@", &v7, 0x16u);
  }

  if (v4)
  {
    CFPreferencesSetAppValue(a3, v4, @"com.apple.accountsd");
    CFPreferencesAppSynchronize(@"com.apple.accountsd");
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end