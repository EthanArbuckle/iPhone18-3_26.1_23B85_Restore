@interface AAAppleAccountInformationCache
- (AAAgeAttestationStateProviding)ageAttestationStateProvider;
- (AAAppleAccountInformationCache)init;
- (BOOL)_needsMigration;
- (id)_getProfilePictureCacheURL;
- (int64_t)_fetchPrimaryAccountSignInState;
- (void)_deleteProfilePictureCache;
- (void)_setSignedInState:(int64_t)a3;
- (void)clearNonSecureAAPrefsDomain;
- (void)migrateToPrimaryAccountSignInState;
- (void)resetAccountInfoToSignedOutState;
- (void)setFullName:(id)a3;
- (void)updateAccountInfoForProtoAccount:(id)a3;
- (void)updateAccountInfoForRemovedProtoAccountWithStore:(id)a3 completion:(id)a4;
- (void)updateAccountInformationCacheForAppleAccount:(id)a3;
@end

@implementation AAAppleAccountInformationCache

- (AAAppleAccountInformationCache)init
{
  v6.receiver = self;
  v6.super_class = AAAppleAccountInformationCache;
  v2 = [(AAAppleAccountInformationCache *)&v6 init];
  if (v2)
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Initialized AppleAccount information.", v5, 2u);
    }
  }

  return v2;
}

- (int64_t)_fetchPrimaryAccountSignInState
{
  result = CFPreferencesCopyAppValue(@"AAPrimaryAccountSignInState", @"com.apple.appleaccount.informationcache");
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberNSIntegerType, &valuePtr);
      CFRelease(v3);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (AAAgeAttestationStateProviding)ageAttestationStateProvider
{
  ageAttestationStateProvider = self->_ageAttestationStateProvider;
  if (!ageAttestationStateProvider)
  {
    v4 = objc_alloc_init(AAAgeAttestationStateProvider);
    v5 = self->_ageAttestationStateProvider;
    self->_ageAttestationStateProvider = v4;

    ageAttestationStateProvider = self->_ageAttestationStateProvider;
  }

  return ageAttestationStateProvider;
}

- (void)updateAccountInformationCacheForAppleAccount:(id)a3
{
  v6 = a3;
  if ([v6 aa_isAccountClass:@"primary"])
  {
    v4 = [v6 aa_fullName];

    if (v4)
    {
      v5 = [v6 aa_fullName];
      [(AAAppleAccountInformationCache *)self setFullName:v5];
    }

    [(AAAppleAccountInformationCache *)self _setSignedInState:1];
    CFPreferencesSynchronize(@"com.apple.appleaccount.informationcache", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }
}

- (void)updateAccountInfoForProtoAccount:(id)a3
{
  v4 = a3;
  v5 = [(AAAppleAccountInformationCache *)self ageAttestationStateProvider];
  v6 = [v5 shieldSignInOrCreateFlows];

  if (v6)
  {
    v7 = _AALogSystem();
    v8 = 2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAAppleAccountInformationCache updateAccountInfoForProtoAccount:];
      v8 = 2;
    }
  }

  else
  {
    v9 = [(AAAppleAccountInformationCache *)self ageAttestationStateProvider];
    v10 = [v9 shieldSignInOrCreateFlowsForTeen];

    v7 = _AALogSystem();
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v11)
      {
        [AAAppleAccountInformationCache updateAccountInfoForProtoAccount:];
      }

      v8 = 4;
    }

    else
    {
      if (v11)
      {
        [AAAppleAccountInformationCache updateAccountInfoForProtoAccount:];
      }

      v8 = 3;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v4 proto_givenName];
    [(AAAppleAccountInformationCache *)self setFullName:v12];
  }

  [(AAAppleAccountInformationCache *)self _setSignedInState:v8];
  CFPreferencesSynchronize(@"com.apple.appleaccount.informationcache", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
}

- (void)updateAccountInfoForRemovedProtoAccountWithStore:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__AAAppleAccountInformationCache_updateAccountInfoForRemovedProtoAccountWithStore_completion___block_invoke;
  v8[3] = &unk_1E7C9C928;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 aa_primaryAppleAccountWithCompletion:v8];
}

void __94__AAAppleAccountInformationCache_updateAccountInfoForRemovedProtoAccountWithStore_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "AAAppleAccountInformationCache - Primary AppleAccount detected. Verifying correct sign in state.", buf, 2u);
    }

    if ([*(a1 + 32) _fetchPrimaryAccountSignInState] != 1)
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "AAAppleAccountInformationCache - Sign in state is incorrect. Updating sign in state.", v10, 2u);
      }

      [*(a1 + 32) updateAccountInformationCacheForAppleAccount:v5];
    }
  }

  else
  {
    [*(a1 + 32) resetAccountInfoToSignedOutState];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)migrateToPrimaryAccountSignInState
{
  if ([(AAAppleAccountInformationCache *)self _needsMigration])
  {
    v3 = CFPreferencesCopyAppValue(@"AAIsAccountSignedIn", @"com.apple.appleaccount.informationcache") == *MEMORY[0x1E695E4D0];

    [(AAAppleAccountInformationCache *)self _setSignedInState:v3];
  }
}

- (void)clearNonSecureAAPrefsDomain
{
  CFPreferencesSetAppValue(@"AAAccountUsername", 0, @"com.apple.appleaccount");
  CFPreferencesSetAppValue(@"AAAccountFullName", 0, @"com.apple.appleaccount");
  CFPreferencesSetAppValue(@"AAIsAccountSignedIn", 0, @"com.apple.appleaccount");
  CFPreferencesSetAppValue(@"AAProfilePictureCacheURL", 0, @"com.apple.appleaccount");
  CFPreferencesSynchronize(@"com.apple.appleaccount", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AAAppleAccountInformationCache clearNonSecureAAPrefsDomain];
  }
}

- (void)resetAccountInfoToSignedOutState
{
  [(AAAppleAccountInformationCache *)self clearNonSecureAAPrefsDomain];
  CFPreferencesSetAppValue(@"AAAccountFullName", 0, @"com.apple.appleaccount.informationcache");
  CFPreferencesSetAppValue(@"AAIsAccountSignedIn", *MEMORY[0x1E695E4C0], @"com.apple.appleaccount.informationcache");
  [(AAAppleAccountInformationCache *)self _setSignedInState:0];
  [(AAAppleAccountInformationCache *)self _deleteProfilePictureCache];
  CFPreferencesSynchronize(@"com.apple.appleaccount.informationcache", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "AAAppleAccountInformationCache - Reset to signed out state.", v4, 2u);
  }
}

- (void)setFullName:(id)a3
{
  CFPreferencesSetAppValue(@"AAAccountFullName", a3, @"com.apple.appleaccount.informationcache");
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.appleaccount", v3, v4);
}

- (void)_setSignedInState:(int64_t)a3
{
  valuePtr = a3;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, &valuePtr);
  CFPreferencesSetAppValue(@"AAPrimaryAccountSignInState", v3, @"com.apple.appleaccount.informationcache");
  CFRelease(v3);
  if (valuePtr == 1)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"AAIsAccountSignedIn", *v4, @"com.apple.appleaccount.informationcache");
}

- (void)_deleteProfilePictureCache
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Profile picture cache could not be deleted. Error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_getProfilePictureCacheURL
{
  v2 = CFPreferencesCopyAppValue(@"AAProfilePictureCacheURL", @"com.apple.appleaccount.informationcache");

  return v2;
}

- (BOOL)_needsMigration
{
  v2 = CFPreferencesCopyAppValue(@"AAPrimaryAccountSignInState", @"com.apple.appleaccount.informationcache");
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFNumberGetTypeID())
  {
    return 1;
  }

  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAAppleAccountInformationCache _needsMigration];
  }

  CFRelease(v3);
  return 0;
}

@end