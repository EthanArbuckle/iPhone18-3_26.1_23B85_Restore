@interface _ASPasswordManagerDeleteAlertConfiguration
+ (BOOL)_isKeychainSyncEnabled;
+ (BOOL)_isPermanentlyDeletingSavedAccount:(id)a3;
+ (BOOL)_isPermanentlyDeletingSavedAccounts:(id)a3;
+ (id)_buttonTitleStringForAlertToDeleteWithAccountsSelectionInfo:(id)a3 isPermanentlyDeleting:(BOOL)a4;
+ (id)_buttonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3;
+ (id)_cancelButtonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3;
+ (id)_configurationForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)a3;
+ (id)_configurationForAlertToDeletePasswordAndPasskeyFromSavedAccount:(id)a3;
+ (id)_configurationForAlertToStopUsingSignInWithAppleFromSavedAccount:(id)a3;
+ (id)_credentialDeletionStringForAlertToDeleteNumberOfFileVaultRecoveryKeys:(unint64_t)a3;
+ (id)_credentialDeletionStringForAlertToDeleteNumberOfSiwaAccounts:(unint64_t)a3;
+ (id)_deletionStringForAlertToDeleteWithAccountsSelectionInfo:(id)a3 isPermanentlyDeleting:(BOOL)a4;
+ (id)_originalContributorDisplayNameForSavedAccount:(id)a3;
+ (id)_subtitleForDeletingNumberOfPasswordsWithVerificationCodes:(unint64_t)a3;
+ (id)_subtitleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)a3;
+ (id)_subtitleStringForAlertToDeletePasskeyFromSavedAccount:(id)a3 isUndoable:(BOOL)a4;
+ (id)_subtitleStringForAlertToDeletePasswordFromSavedAccount:(id)a3 isUndoable:(BOOL)a4;
+ (id)_subtitleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)a3 isUndoable:(BOOL)a4;
+ (id)_subtitleStringForAlertToPermanentlyDeletePasskeyFromSavedAccount:(id)a3;
+ (id)_subtitleStringForAlertToPermanentlyDeletePasswordFromSavedAccount:(id)a3;
+ (id)_subtitleStringForAlertToSoftDeletePasskeyFromSavedAccount:(id)a3;
+ (id)_subtitleStringForAlertToSoftDeletePasswordFromSavedAccount:(id)a3;
+ (id)_subtitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3;
+ (id)_titleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)a3;
+ (id)_titleStringForAlertToDeletePasskeyFromSavedAccount:(id)a3;
+ (id)_titleStringForAlertToDeletePasswordFromSavedAccount:(id)a3;
+ (id)_titleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)a3;
+ (id)_titleStringForAlertToDeleteWithAccountsSelectionInfo:(id)a3 isPermanentlyDeleting:(BOOL)a4;
+ (id)_titleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3;
+ (id)configurationForDeletingSavedAccounts:(id)a3;
+ (id)formattedRecentlyDeletedExpirationDays;
- (id)_initWithTitle:(id)a3 subtitle:(id)a4 buttonTitle:(id)a5 cancelButtonTitle:(id)a6 isPermanentlyRemovingFromRecentlyDeleted:(BOOL)a7;
@end

@implementation _ASPasswordManagerDeleteAlertConfiguration

- (id)_initWithTitle:(id)a3 subtitle:(id)a4 buttonTitle:(id)a5 cancelButtonTitle:(id)a6 isPermanentlyRemovingFromRecentlyDeleted:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v27.receiver = self;
  v27.super_class = _ASPasswordManagerDeleteAlertConfiguration;
  v16 = [(_ASPasswordManagerDeleteAlertConfiguration *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [v13 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [v14 copy];
    buttonTitle = v16->_buttonTitle;
    v16->_buttonTitle = v21;

    v23 = [v15 copy];
    cancelButtonTitle = v16->_cancelButtonTitle;
    v16->_cancelButtonTitle = v23;

    v16->_isPermanentlyRemovingFromRecentlyDeleted = a7;
    v25 = v16;
  }

  return v16;
}

+ (id)_configurationForAlertToStopUsingSignInWithAppleFromSavedAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 _titleStringForAlertToStopUsingSignInWithAppleForSavedAccount:v4];
  v6 = [a1 _subtitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:v4];
  v7 = [a1 _buttonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:v4];
  v8 = [a1 _cancelButtonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:v4];

  v9 = [[a1 alloc] _initWithTitle:v5 subtitle:v6 buttonTitle:v7 cancelButtonTitle:v8 isPermanentlyRemovingFromRecentlyDeleted:1];

  return v9;
}

+ (id)_titleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3
{
  v3 = a3;
  if ([v3 isCurrentUserOriginalContributor])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = _WBSLocalizedString();
    v6 = [v3 signInWithAppleAccount];
    v7 = [v6 localizedAppName];
    v8 = [v4 localizedStringWithFormat:v5, v7];
  }

  else
  {
    v8 = _WBSLocalizedString();
  }

  return v8;
}

+ (id)_subtitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3
{
  v4 = a3;
  if ([v4 isCurrentUserOriginalContributor])
  {
    v5 = _WBSLocalizedString();
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _WBSLocalizedString();
    v8 = [a1 _originalContributorDisplayNameForSavedAccount:v4];
    v5 = [v6 localizedStringWithFormat:v7, v8];
  }

  return v5;
}

+ (id)_originalContributorDisplayNameForSavedAccount:(id)a3
{
  v3 = a3;
  v4 = +[_ASAccountSharingGroupMemberDataManager sharedManager];
  v5 = [v3 originalContributorParticipantID];
  v6 = [v3 sharedGroupID];

  v7 = [v4 displayNameForOriginalContributorParticipantID:v5 inGroupID:v6];

  return v7;
}

+ (id)_buttonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3
{
  [a3 isCurrentUserOriginalContributor];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_cancelButtonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)a3
{
  [a3 isCurrentUserOriginalContributor];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_configurationForAlertToDeletePasswordAndPasskeyFromSavedAccount:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [a1 configurationForDeletingSavedAccounts:{v6, v10, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)configurationForDeletingSavedAccounts:(id)a3
{
  v4 = a3;
  v5 = [a1 _isPermanentlyDeletingSavedAccounts:v4];
  v6 = [[_ASPasswordManagerAccountsSelectionInfo alloc] initWithSavedAccounts:v4];
  if ([(_ASPasswordManagerAccountsSelectionInfo *)v6 isSelectedAccountSingleSignInWithApple])
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = a1;
    v9 = 3;
LABEL_5:
    v10 = [v8 configurationForDeleting:v9 fromSavedAccount:v7];
    goto LABEL_7;
  }

  if ([(_ASPasswordManagerAccountsSelectionInfo *)v6 isSelectedAccountSingleFileVaultRecoveryKey])
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = a1;
    v9 = 5;
    goto LABEL_5;
  }

  v7 = [a1 _titleStringForAlertToDeleteWithAccountsSelectionInfo:v6 isPermanentlyDeleting:v5];
  v11 = [a1 _subtitleStringForAlertToDeleteWithAccountsSelectionInfo:v6 isPermanentlyDeleting:v5];
  v12 = [a1 _buttonTitleStringForAlertToDeleteWithAccountsSelectionInfo:v6 isPermanentlyDeleting:v5];
  v13 = [a1 alloc];
  v14 = [a1 _cancelButtonTitleStringForAlertToDeleteAccount];
  v10 = [v13 _initWithTitle:v7 subtitle:v11 buttonTitle:v12 cancelButtonTitle:v14 isPermanentlyRemovingFromRecentlyDeleted:v5];

LABEL_7:

  return v10;
}

+ (BOOL)_isPermanentlyDeletingSavedAccounts:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_10];
  v6 = [v5 count];
  if (v6 == [v4 count])
  {
    v7 = v6 == 1;
  }

  else
  {
    v8 = [v4 safari_firstObjectPassingTest:&__block_literal_global_54];
    v7 = [a1 _isPermanentlyDeletingSavedAccount:v8];
  }

  return v7;
}

+ (BOOL)_isPermanentlyDeletingSavedAccount:(id)a3
{
  v3 = a3;
  v4 = ([v3 isRecentlyDeleted] & 1) != 0 || (objc_msgSend(v3, "userIsNeverSaveMarker") & 1) != 0 || objc_msgSend(v3, "credentialTypes") == 4;

  return v4;
}

+ (id)_titleStringForAlertToDeletePasswordFromSavedAccount:(id)a3
{
  [a3 isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_titleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)a3
{
  [a3 isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_titleStringForAlertToDeletePasskeyFromSavedAccount:(id)a3
{
  [a3 isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_subtitleStringForAlertToDeletePasswordFromSavedAccount:(id)a3 isUndoable:(BOOL)a4
{
  v5 = a3;
  if ([v5 isRecentlyDeleted])
  {
    [a1 _subtitleStringForAlertToPermanentlyDeletePasswordFromSavedAccount:v5];
  }

  else
  {
    [a1 _subtitleStringForAlertToSoftDeletePasswordFromSavedAccount:v5];
  }
  v6 = ;

  return v6;
}

+ (id)_subtitleStringForAlertToPermanentlyDeletePasswordFromSavedAccount:(id)a3
{
  v4 = a3;
  if ([a1 _isKeychainSyncEnabled])
  {
    [v4 isSavedInSharedGroup];
  }

  v5 = _WBSLocalizedString();

  return v5;
}

+ (id)_subtitleStringForAlertToSoftDeletePasswordFromSavedAccount:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  v7 = [a1 formattedRecentlyDeletedExpirationDays];
  v8 = [v5 localizedStringWithFormat:v6, v7];

  v9 = [v4 totpGenerators];
  v10 = [v9 count];

  if (v10)
  {
    if ([v4 hasValidWebsite])
    {
      [v4 highLevelDomain];
    }

    else
    {
      [v4 effectiveTitle];
    }
    v12 = ;
    v13 = [v4 isSavedInSharedGroup];
    v14 = MEMORY[0x1E696AEC0];
    if (v13)
    {
      v15 = _WBSLocalizedString();
      [v14 stringWithFormat:v15, v12];
    }

    else
    {
      v15 = _WBSLocalizedString();
      [v14 localizedStringWithFormat:v15, v12];
    }
    v16 = ;

    v11 = [v16 stringByAppendingFormat:@"\n\n%@", v8];
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

+ (id)_subtitleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)a3 isUndoable:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 customTitle];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v5 serviceName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 highLevelDomain];
    }

    v8 = v11;
  }

  if ([a1 _isKeychainSyncEnabled])
  {
    [v5 isSavedInSharedGroup];
  }

  [v5 hasValidWebsite];
  v12 = MEMORY[0x1E696AEC0];
  v13 = _WBSLocalizedString();
  v14 = [v12 localizedStringWithFormat:v13, v8];

  return v14;
}

+ (id)_subtitleStringForAlertToDeletePasskeyFromSavedAccount:(id)a3 isUndoable:(BOOL)a4
{
  v5 = a3;
  if ([v5 isRecentlyDeleted])
  {
    [a1 _subtitleStringForAlertToPermanentlyDeletePasskeyFromSavedAccount:v5];
  }

  else
  {
    [a1 _subtitleStringForAlertToSoftDeletePasskeyFromSavedAccount:v5];
  }
  v6 = ;

  return v6;
}

+ (id)_subtitleStringForAlertToPermanentlyDeletePasskeyFromSavedAccount:(id)a3
{
  v4 = a3;
  if ([a1 _isKeychainSyncEnabled])
  {
    [v4 isSavedInSharedGroup];
  }

  v5 = _WBSLocalizedString();

  return v5;
}

+ (id)_subtitleStringForAlertToSoftDeletePasskeyFromSavedAccount:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [a1 formattedRecentlyDeletedExpirationDays];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

+ (id)_titleStringForAlertToDeleteWithAccountsSelectionInfo:(id)a3 isPermanentlyDeleting:(BOOL)a4
{
  v4 = a3;
  if ([v4 hasOnlySignInWithAppleAccounts])
  {
    [v4 numberOfSignInWithAppleAccounts];
  }

  else if ([v4 hasOnlyFileVaultRecoveryKeys])
  {
    [v4 numberOfFileVaultRecoveryKeys];
  }

  else if (![v4 hasOnlyFileVaultRecoveryKeysAndSignInWithAppleAccounts])
  {
    if ([v4 numberOfPasswords] && objc_msgSend(v4, "numberOfPasskeys"))
    {
      if (([v4 numberOfPasswords] != 1 || objc_msgSend(v4, "numberOfPasskeys") != 1) && objc_msgSend(v4, "numberOfPasswords") != 1)
      {
        [v4 numberOfPasskeys];
      }
    }

    else if ([v4 numberOfPasskeys] != 1 && !objc_msgSend(v4, "numberOfPasskeys"))
    {
      [v4 numberOfPasswords];
    }

    [v4 hasOnlySharedAccounts];
  }

  v5 = _WBSLocalizedString();

  return v5;
}

+ (id)_credentialDeletionStringForAlertToDeleteNumberOfSiwaAccounts:(unint64_t)a3
{
  v4 = _WBSLocalizedString();

  return v4;
}

+ (id)_credentialDeletionStringForAlertToDeleteNumberOfFileVaultRecoveryKeys:(unint64_t)a3
{
  v4 = _WBSLocalizedString();

  return v4;
}

+ (id)_deletionStringForAlertToDeleteWithAccountsSelectionInfo:(id)a3 isPermanentlyDeleting:(BOOL)a4
{
  v6 = a3;
  v7 = [a1 _isKeychainSyncEnabled];
  v8 = [v6 numberOfPasswords];
  if (v7)
  {
    if (v8 == 1 && [v6 numberOfPasskeys] == 1)
    {
      if (a4)
      {
        [v6 hasOnlySharedAccounts];
LABEL_42:
        v19 = _WBSLocalizedString();
        goto LABEL_47;
      }

      v26 = MEMORY[0x1E696AEC0];
      goto LABEL_36;
    }

    if ([v6 numberOfPasswords] && objc_msgSend(v6, "numberOfPasskeys"))
    {
      if (!a4)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = _WBSLocalizedString();
        v16 = [v6 numberOfPasskeys];
        v17 = [v6 numberOfPasswords];
        v18 = [a1 formattedRecentlyDeletedExpirationDays];
        v19 = [v14 localizedStringWithFormat:v15, v16, v17, v18];

LABEL_39:
        goto LABEL_47;
      }

      [v6 hasOnlySharedAccounts];
      v9 = MEMORY[0x1E696AEC0];
      v32 = _WBSLocalizedString();
      v35 = [v6 numberOfPasskeys];
      v36 = [v6 numberOfPasswords];
      goto LABEL_44;
    }

    if ([v6 numberOfPasskeys])
    {
      if (a4)
      {
        [v6 hasOnlySharedAccounts];
        v9 = MEMORY[0x1E696AEC0];
        v32 = _WBSLocalizedString();
        v33 = [v6 numberOfPasskeys];
LABEL_43:
        v35 = v33;
LABEL_44:
        v13 = v9;
        goto LABEL_45;
      }

      v23 = MEMORY[0x1E696AEC0];
      v15 = _WBSLocalizedString();
      v24 = [v6 numberOfPasskeys];
    }

    else
    {
      if (a4)
      {
        [v6 hasOnlySharedAccounts];
        v9 = MEMORY[0x1E696AEC0];
        v32 = _WBSLocalizedString();
        v33 = [v6 numberOfPasswords];
        goto LABEL_43;
      }

      v23 = MEMORY[0x1E696AEC0];
      v15 = _WBSLocalizedString();
      v24 = [v6 numberOfPasswords];
    }

    v28 = v24;
    v29 = [a1 formattedRecentlyDeletedExpirationDays];
    v19 = [v23 localizedStringWithFormat:v15, v28, v29];

    goto LABEL_39;
  }

  if (v8 == 1 && [v6 numberOfPasskeys] == 1)
  {
    if (a4)
    {
      goto LABEL_42;
    }

    v26 = MEMORY[0x1E696AEC0];
LABEL_36:
    v15 = _WBSLocalizedString();
    v27 = [a1 formattedRecentlyDeletedExpirationDays];
    v19 = [v26 localizedStringWithFormat:v15, v27];

    goto LABEL_39;
  }

  if (![v6 numberOfPasswords] || !objc_msgSend(v6, "numberOfPasskeys"))
  {
    v11 = [v6 numberOfPasskeys];
    v10 = MEMORY[0x1E696AEC0];
    if (v11)
    {
      if (a4)
      {
        v32 = _WBSLocalizedString();
        v12 = [v6 numberOfPasskeys];
LABEL_28:
        v35 = v12;
        goto LABEL_29;
      }

      v32 = _WBSLocalizedString();
      v25 = [v6 numberOfPasskeys];
    }

    else
    {
      if (a4)
      {
        v32 = _WBSLocalizedString();
        v12 = [v6 numberOfPasswords];
        goto LABEL_28;
      }

      v32 = _WBSLocalizedString();
      v25 = [v6 numberOfPasswords];
    }

    v30 = v25;
    v31 = [a1 formattedRecentlyDeletedExpirationDays];
    v19 = [v10 localizedStringWithFormat:v32, v30, v31];

    goto LABEL_46;
  }

  v10 = MEMORY[0x1E696AEC0];
  if (a4)
  {
    v32 = _WBSLocalizedString();
    v35 = [v6 numberOfPasskeys];
    v36 = [v6 numberOfPasswords];
LABEL_29:
    v13 = v10;
LABEL_45:
    v19 = [v13 localizedStringWithFormat:v32, v35, v36];
    goto LABEL_46;
  }

  v32 = _WBSLocalizedString();
  v20 = [v6 numberOfPasskeys];
  v21 = [v6 numberOfPasswords];
  v22 = [a1 formattedRecentlyDeletedExpirationDays];
  v19 = [v10 localizedStringWithFormat:v32, v20, v21, v22];

LABEL_46:
LABEL_47:

  return v19;
}

+ (id)_subtitleForDeletingNumberOfPasswordsWithVerificationCodes:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v4 localizedStringWithFormat:v5, a3];

  return v6;
}

+ (id)_buttonTitleStringForAlertToDeleteWithAccountsSelectionInfo:(id)a3 isPermanentlyDeleting:(BOOL)a4
{
  v4 = a3;
  if ([v4 hasOnlySignInWithAppleAccounts] & 1) != 0 || (objc_msgSend(v4, "hasOnlyFileVaultRecoveryKeys") & 1) != 0 || (objc_msgSend(v4, "hasOnlyFileVaultRecoveryKeysAndSignInWithAppleAccounts"))
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ([v4 numberOfPasswords] && objc_msgSend(v4, "numberOfPasskeys"))
  {
    goto LABEL_14;
  }

  if ([v4 numberOfPasskeys] == 1)
  {
    [v4 hasOnlySharedAccounts];
LABEL_14:
    v5 = _WBSLocalizedString();
    goto LABEL_5;
  }

  if ([v4 numberOfPasskeys])
  {
    [v4 hasOnlySharedAccounts];
    v7 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    v10 = [v4 numberOfPasskeys];
  }

  else
  {
    v8 = [v4 numberOfPasswords];
    [v4 hasOnlySharedAccounts];
    if (v8 == 1)
    {
      goto LABEL_14;
    }

    v7 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    v10 = [v4 numberOfPasswords];
  }

  v5 = [v7 localizedStringWithFormat:v9, v10];

LABEL_5:

  return v5;
}

+ (BOOL)_isKeychainSyncEnabled
{
  v2 = [MEMORY[0x1E69C88B8] sharedMonitor];
  v3 = [v2 keychainSyncSettingValue] == 2;

  return v3;
}

+ (id)_configurationForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 _titleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:v4];
  v6 = [a1 _subtitleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:v4];
  v7 = _WBSLocalizedString();
  v8 = [a1 _isPermanentlyDeletingSavedAccount:v4];

  v9 = [a1 alloc];
  v10 = [a1 _cancelButtonTitleStringForAlertToDeleteAccount];
  v11 = [v9 _initWithTitle:v5 subtitle:v6 buttonTitle:v7 cancelButtonTitle:v10 isPermanentlyRemovingFromRecentlyDeleted:v8];

  return v11;
}

+ (id)_titleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)a3
{
  [a3 isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_subtitleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)a3
{
  v4 = a3;
  if ([v4 isRecentlyDeleted])
  {
    [v4 isSavedInSharedGroup];
    v10 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _WBSLocalizedString();
    v7 = [a1 formattedRecentlyDeletedExpirationDays];
    v8 = [v5 localizedStringWithFormat:v6, v7];

    if ([v4 isSavedInSharedGroup] && (objc_msgSend(v4, "isCurrentUserOriginalContributor") & 1) == 0)
    {
      v10 = v8;
    }

    else
    {
      v9 = _WBSLocalizedString();
      v10 = [v8 stringByAppendingFormat:@"\n\n%@", v9];
    }
  }

  return v10;
}

+ (id)formattedRecentlyDeletedExpirationDays
{
  v2 = [MEMORY[0x1E69C8A38] recentlyDeletedExpirationTimeInDays];
  v3 = MEMORY[0x1E696ADA0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

@end