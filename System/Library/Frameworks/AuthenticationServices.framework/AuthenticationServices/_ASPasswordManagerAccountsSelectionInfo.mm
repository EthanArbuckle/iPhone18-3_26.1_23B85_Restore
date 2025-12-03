@interface _ASPasswordManagerAccountsSelectionInfo
- (BOOL)isSelectedAccountSingleFileVaultRecoveryKey;
- (BOOL)isSelectedAccountSingleSignInWithApple;
- (_ASPasswordManagerAccountsSelectionInfo)initWithSavedAccounts:(id)accounts;
- (int64_t)selectedCredentialTypes;
@end

@implementation _ASPasswordManagerAccountsSelectionInfo

- (_ASPasswordManagerAccountsSelectionInfo)initWithSavedAccounts:(id)accounts
{
  v27 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v25.receiver = self;
  v25.super_class = _ASPasswordManagerAccountsSelectionInfo;
  v5 = [(_ASPasswordManagerAccountsSelectionInfo *)&v25 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasOnlySharedAccounts = 1;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = accountsCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          credentialTypes = [v12 credentialTypes];
          credentialTypes2 = [v12 credentialTypes];
          p_numberOfFileVaultRecoveryKeys = &v6->_numberOfFileVaultRecoveryKeys;
          if (credentialTypes2 & 8) != 0 || (p_numberOfFileVaultRecoveryKeys = &v6->_numberOfPasswords, (credentialTypes))
          {
            ++*p_numberOfFileVaultRecoveryKeys;
          }

          if (([v12 credentialTypes] & 4) != 0)
          {
            ++v6->_numberOfSignInWithAppleAccounts;
          }

          if (([v12 credentialTypes] & 2) != 0)
          {
            ++v6->_numberOfPasskeys;
          }

          totpGenerators = [v12 totpGenerators];
          v17 = [totpGenerators count];

          if (v17)
          {
            v6->_hasAccountsWithVerificationCodes = 1;
          }

          if ([v12 isSavedInSharedGroup])
          {
            v6->_hasSharedAccounts = 1;
          }

          else
          {
            v6->_hasOnlySharedAccounts = 0;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v18 = v6;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)selectedCredentialTypes
{
  numberOfPasswords = self->_numberOfPasswords;
  v3 = numberOfPasswords == 0;
  v4 = numberOfPasswords != 0;
  v5 = 2;
  if (!v3)
  {
    v5 = 3;
  }

  if (self->_numberOfPasskeys)
  {
    v4 = v5;
  }

  if (self->_numberOfSignInWithAppleAccounts)
  {
    v4 |= 4uLL;
  }

  if (self->_numberOfFileVaultRecoveryKeys)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

- (BOOL)isSelectedAccountSingleSignInWithApple
{
  hasOnlySignInWithAppleAccounts = [(_ASPasswordManagerAccountsSelectionInfo *)self hasOnlySignInWithAppleAccounts];
  if (hasOnlySignInWithAppleAccounts)
  {
    LOBYTE(hasOnlySignInWithAppleAccounts) = [(_ASPasswordManagerAccountsSelectionInfo *)self numberOfSignInWithAppleAccounts]== 1;
  }

  return hasOnlySignInWithAppleAccounts;
}

- (BOOL)isSelectedAccountSingleFileVaultRecoveryKey
{
  hasOnlyFileVaultRecoveryKeys = [(_ASPasswordManagerAccountsSelectionInfo *)self hasOnlyFileVaultRecoveryKeys];
  if (hasOnlyFileVaultRecoveryKeys)
  {
    LOBYTE(hasOnlyFileVaultRecoveryKeys) = [(_ASPasswordManagerAccountsSelectionInfo *)self numberOfFileVaultRecoveryKeys]== 1;
  }

  return hasOnlyFileVaultRecoveryKeys;
}

@end