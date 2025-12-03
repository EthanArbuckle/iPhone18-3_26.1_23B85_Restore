@interface ACAccountMigrationState
+ (BOOL)migrationFinishedForKey:(__CFString *)key;
+ (id)_currentSystemVersion;
+ (void)writeMigrationVersionPrefForKey:(__CFString *)key;
@end

@implementation ACAccountMigrationState

+ (BOOL)migrationFinishedForKey:(__CFString *)key
{
  _currentSystemVersion = [self _currentSystemVersion];
  CFPreferencesAppSynchronize(@"com.apple.accountsd");
  v5 = CFPreferencesCopyAppValue(key, @"com.apple.accountsd");
  if (v5)
  {
    v6 = v5;
    v7 = CFStringCompare(_currentSystemVersion, v5, 1uLL) == kCFCompareEqualTo;
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

+ (void)writeMigrationVersionPrefForKey:(__CFString *)key
{
  v11 = *MEMORY[0x1E69E9840];
  _currentSystemVersion = [self _currentSystemVersion];
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = _currentSystemVersion;
    v9 = 2112;
    keyCopy = key;
    _os_log_impl(&dword_1AC3CD000, v5, OS_LOG_TYPE_DEFAULT, "Writing Accounts ACLastMigrationSystemVersion version pref %@ for key %@", &v7, 0x16u);
  }

  if (_currentSystemVersion)
  {
    CFPreferencesSetAppValue(key, _currentSystemVersion, @"com.apple.accountsd");
    CFPreferencesAppSynchronize(@"com.apple.accountsd");
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end