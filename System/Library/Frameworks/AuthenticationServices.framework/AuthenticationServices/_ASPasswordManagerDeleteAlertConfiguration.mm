@interface _ASPasswordManagerDeleteAlertConfiguration
+ (BOOL)_isKeychainSyncEnabled;
+ (BOOL)_isPermanentlyDeletingSavedAccount:(id)account;
+ (BOOL)_isPermanentlyDeletingSavedAccounts:(id)accounts;
+ (id)_buttonTitleStringForAlertToDeleteWithAccountsSelectionInfo:(id)info isPermanentlyDeleting:(BOOL)deleting;
+ (id)_buttonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account;
+ (id)_cancelButtonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account;
+ (id)_configurationForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)account;
+ (id)_configurationForAlertToDeletePasswordAndPasskeyFromSavedAccount:(id)account;
+ (id)_configurationForAlertToStopUsingSignInWithAppleFromSavedAccount:(id)account;
+ (id)_credentialDeletionStringForAlertToDeleteNumberOfFileVaultRecoveryKeys:(unint64_t)keys;
+ (id)_credentialDeletionStringForAlertToDeleteNumberOfSiwaAccounts:(unint64_t)accounts;
+ (id)_deletionStringForAlertToDeleteWithAccountsSelectionInfo:(id)info isPermanentlyDeleting:(BOOL)deleting;
+ (id)_originalContributorDisplayNameForSavedAccount:(id)account;
+ (id)_subtitleForDeletingNumberOfPasswordsWithVerificationCodes:(unint64_t)codes;
+ (id)_subtitleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)account;
+ (id)_subtitleStringForAlertToDeletePasskeyFromSavedAccount:(id)account isUndoable:(BOOL)undoable;
+ (id)_subtitleStringForAlertToDeletePasswordFromSavedAccount:(id)account isUndoable:(BOOL)undoable;
+ (id)_subtitleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)account isUndoable:(BOOL)undoable;
+ (id)_subtitleStringForAlertToPermanentlyDeletePasskeyFromSavedAccount:(id)account;
+ (id)_subtitleStringForAlertToPermanentlyDeletePasswordFromSavedAccount:(id)account;
+ (id)_subtitleStringForAlertToSoftDeletePasskeyFromSavedAccount:(id)account;
+ (id)_subtitleStringForAlertToSoftDeletePasswordFromSavedAccount:(id)account;
+ (id)_subtitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account;
+ (id)_titleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)account;
+ (id)_titleStringForAlertToDeletePasskeyFromSavedAccount:(id)account;
+ (id)_titleStringForAlertToDeletePasswordFromSavedAccount:(id)account;
+ (id)_titleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)account;
+ (id)_titleStringForAlertToDeleteWithAccountsSelectionInfo:(id)info isPermanentlyDeleting:(BOOL)deleting;
+ (id)_titleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account;
+ (id)configurationForDeletingSavedAccounts:(id)accounts;
+ (id)formattedRecentlyDeletedExpirationDays;
- (id)_initWithTitle:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle isPermanentlyRemovingFromRecentlyDeleted:(BOOL)deleted;
@end

@implementation _ASPasswordManagerDeleteAlertConfiguration

- (id)_initWithTitle:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle isPermanentlyRemovingFromRecentlyDeleted:(BOOL)deleted
{
  titleCopy = title;
  subtitleCopy = subtitle;
  buttonTitleCopy = buttonTitle;
  cancelButtonTitleCopy = cancelButtonTitle;
  v27.receiver = self;
  v27.super_class = _ASPasswordManagerDeleteAlertConfiguration;
  v16 = [(_ASPasswordManagerDeleteAlertConfiguration *)&v27 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [buttonTitleCopy copy];
    buttonTitle = v16->_buttonTitle;
    v16->_buttonTitle = v21;

    v23 = [cancelButtonTitleCopy copy];
    cancelButtonTitle = v16->_cancelButtonTitle;
    v16->_cancelButtonTitle = v23;

    v16->_isPermanentlyRemovingFromRecentlyDeleted = deleted;
    v25 = v16;
  }

  return v16;
}

+ (id)_configurationForAlertToStopUsingSignInWithAppleFromSavedAccount:(id)account
{
  accountCopy = account;
  v5 = [self _titleStringForAlertToStopUsingSignInWithAppleForSavedAccount:accountCopy];
  v6 = [self _subtitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:accountCopy];
  v7 = [self _buttonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:accountCopy];
  v8 = [self _cancelButtonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:accountCopy];

  v9 = [[self alloc] _initWithTitle:v5 subtitle:v6 buttonTitle:v7 cancelButtonTitle:v8 isPermanentlyRemovingFromRecentlyDeleted:1];

  return v9;
}

+ (id)_titleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isCurrentUserOriginalContributor])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = _WBSLocalizedString();
    signInWithAppleAccount = [accountCopy signInWithAppleAccount];
    localizedAppName = [signInWithAppleAccount localizedAppName];
    v8 = [v4 localizedStringWithFormat:v5, localizedAppName];
  }

  else
  {
    v8 = _WBSLocalizedString();
  }

  return v8;
}

+ (id)_subtitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isCurrentUserOriginalContributor])
  {
    v5 = _WBSLocalizedString();
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _WBSLocalizedString();
    v8 = [self _originalContributorDisplayNameForSavedAccount:accountCopy];
    v5 = [v6 localizedStringWithFormat:v7, v8];
  }

  return v5;
}

+ (id)_originalContributorDisplayNameForSavedAccount:(id)account
{
  accountCopy = account;
  v4 = +[_ASAccountSharingGroupMemberDataManager sharedManager];
  originalContributorParticipantID = [accountCopy originalContributorParticipantID];
  sharedGroupID = [accountCopy sharedGroupID];

  v7 = [v4 displayNameForOriginalContributorParticipantID:originalContributorParticipantID inGroupID:sharedGroupID];

  return v7;
}

+ (id)_buttonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account
{
  [account isCurrentUserOriginalContributor];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_cancelButtonTitleStringForAlertToStopUsingSignInWithAppleForSavedAccount:(id)account
{
  [account isCurrentUserOriginalContributor];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_configurationForAlertToDeletePasswordAndPasskeyFromSavedAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v4 = MEMORY[0x1E695DEC8];
  accountCopy2 = account;
  v6 = [v4 arrayWithObjects:&accountCopy count:1];

  v7 = [self configurationForDeletingSavedAccounts:{v6, accountCopy, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)configurationForDeletingSavedAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = [self _isPermanentlyDeletingSavedAccounts:accountsCopy];
  v6 = [[_ASPasswordManagerAccountsSelectionInfo alloc] initWithSavedAccounts:accountsCopy];
  if ([(_ASPasswordManagerAccountsSelectionInfo *)v6 isSelectedAccountSingleSignInWithApple])
  {
    v7 = [accountsCopy objectAtIndexedSubscript:0];
    selfCopy2 = self;
    v9 = 3;
LABEL_5:
    v10 = [selfCopy2 configurationForDeleting:v9 fromSavedAccount:v7];
    goto LABEL_7;
  }

  if ([(_ASPasswordManagerAccountsSelectionInfo *)v6 isSelectedAccountSingleFileVaultRecoveryKey])
  {
    v7 = [accountsCopy objectAtIndexedSubscript:0];
    selfCopy2 = self;
    v9 = 5;
    goto LABEL_5;
  }

  v7 = [self _titleStringForAlertToDeleteWithAccountsSelectionInfo:v6 isPermanentlyDeleting:v5];
  v11 = [self _subtitleStringForAlertToDeleteWithAccountsSelectionInfo:v6 isPermanentlyDeleting:v5];
  v12 = [self _buttonTitleStringForAlertToDeleteWithAccountsSelectionInfo:v6 isPermanentlyDeleting:v5];
  v13 = [self alloc];
  _cancelButtonTitleStringForAlertToDeleteAccount = [self _cancelButtonTitleStringForAlertToDeleteAccount];
  v10 = [v13 _initWithTitle:v7 subtitle:v11 buttonTitle:v12 cancelButtonTitle:_cancelButtonTitleStringForAlertToDeleteAccount isPermanentlyRemovingFromRecentlyDeleted:v5];

LABEL_7:

  return v10;
}

+ (BOOL)_isPermanentlyDeletingSavedAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = [accountsCopy safari_filterObjectsUsingBlock:&__block_literal_global_10];
  v6 = [v5 count];
  if (v6 == [accountsCopy count])
  {
    v7 = v6 == 1;
  }

  else
  {
    v8 = [accountsCopy safari_firstObjectPassingTest:&__block_literal_global_54];
    v7 = [self _isPermanentlyDeletingSavedAccount:v8];
  }

  return v7;
}

+ (BOOL)_isPermanentlyDeletingSavedAccount:(id)account
{
  accountCopy = account;
  v4 = ([accountCopy isRecentlyDeleted] & 1) != 0 || (objc_msgSend(accountCopy, "userIsNeverSaveMarker") & 1) != 0 || objc_msgSend(accountCopy, "credentialTypes") == 4;

  return v4;
}

+ (id)_titleStringForAlertToDeletePasswordFromSavedAccount:(id)account
{
  [account isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_titleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)account
{
  [account isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_titleStringForAlertToDeletePasskeyFromSavedAccount:(id)account
{
  [account isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_subtitleStringForAlertToDeletePasswordFromSavedAccount:(id)account isUndoable:(BOOL)undoable
{
  accountCopy = account;
  if ([accountCopy isRecentlyDeleted])
  {
    [self _subtitleStringForAlertToPermanentlyDeletePasswordFromSavedAccount:accountCopy];
  }

  else
  {
    [self _subtitleStringForAlertToSoftDeletePasswordFromSavedAccount:accountCopy];
  }
  v6 = ;

  return v6;
}

+ (id)_subtitleStringForAlertToPermanentlyDeletePasswordFromSavedAccount:(id)account
{
  accountCopy = account;
  if ([self _isKeychainSyncEnabled])
  {
    [accountCopy isSavedInSharedGroup];
  }

  v5 = _WBSLocalizedString();

  return v5;
}

+ (id)_subtitleStringForAlertToSoftDeletePasswordFromSavedAccount:(id)account
{
  accountCopy = account;
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  formattedRecentlyDeletedExpirationDays = [self formattedRecentlyDeletedExpirationDays];
  v8 = [v5 localizedStringWithFormat:v6, formattedRecentlyDeletedExpirationDays];

  totpGenerators = [accountCopy totpGenerators];
  v10 = [totpGenerators count];

  if (v10)
  {
    if ([accountCopy hasValidWebsite])
    {
      [accountCopy highLevelDomain];
    }

    else
    {
      [accountCopy effectiveTitle];
    }
    v12 = ;
    isSavedInSharedGroup = [accountCopy isSavedInSharedGroup];
    v14 = MEMORY[0x1E696AEC0];
    if (isSavedInSharedGroup)
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

+ (id)_subtitleStringForAlertToDeleteVerificationCodeFromSavedAccount:(id)account isUndoable:(BOOL)undoable
{
  accountCopy = account;
  customTitle = [accountCopy customTitle];
  v7 = customTitle;
  if (customTitle)
  {
    v8 = customTitle;
  }

  else
  {
    serviceName = [accountCopy serviceName];
    v10 = serviceName;
    if (serviceName)
    {
      highLevelDomain = serviceName;
    }

    else
    {
      highLevelDomain = [accountCopy highLevelDomain];
    }

    v8 = highLevelDomain;
  }

  if ([self _isKeychainSyncEnabled])
  {
    [accountCopy isSavedInSharedGroup];
  }

  [accountCopy hasValidWebsite];
  v12 = MEMORY[0x1E696AEC0];
  v13 = _WBSLocalizedString();
  v14 = [v12 localizedStringWithFormat:v13, v8];

  return v14;
}

+ (id)_subtitleStringForAlertToDeletePasskeyFromSavedAccount:(id)account isUndoable:(BOOL)undoable
{
  accountCopy = account;
  if ([accountCopy isRecentlyDeleted])
  {
    [self _subtitleStringForAlertToPermanentlyDeletePasskeyFromSavedAccount:accountCopy];
  }

  else
  {
    [self _subtitleStringForAlertToSoftDeletePasskeyFromSavedAccount:accountCopy];
  }
  v6 = ;

  return v6;
}

+ (id)_subtitleStringForAlertToPermanentlyDeletePasskeyFromSavedAccount:(id)account
{
  accountCopy = account;
  if ([self _isKeychainSyncEnabled])
  {
    [accountCopy isSavedInSharedGroup];
  }

  v5 = _WBSLocalizedString();

  return v5;
}

+ (id)_subtitleStringForAlertToSoftDeletePasskeyFromSavedAccount:(id)account
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  formattedRecentlyDeletedExpirationDays = [self formattedRecentlyDeletedExpirationDays];
  v7 = [v4 localizedStringWithFormat:v5, formattedRecentlyDeletedExpirationDays];

  return v7;
}

+ (id)_titleStringForAlertToDeleteWithAccountsSelectionInfo:(id)info isPermanentlyDeleting:(BOOL)deleting
{
  infoCopy = info;
  if ([infoCopy hasOnlySignInWithAppleAccounts])
  {
    [infoCopy numberOfSignInWithAppleAccounts];
  }

  else if ([infoCopy hasOnlyFileVaultRecoveryKeys])
  {
    [infoCopy numberOfFileVaultRecoveryKeys];
  }

  else if (![infoCopy hasOnlyFileVaultRecoveryKeysAndSignInWithAppleAccounts])
  {
    if ([infoCopy numberOfPasswords] && objc_msgSend(infoCopy, "numberOfPasskeys"))
    {
      if (([infoCopy numberOfPasswords] != 1 || objc_msgSend(infoCopy, "numberOfPasskeys") != 1) && objc_msgSend(infoCopy, "numberOfPasswords") != 1)
      {
        [infoCopy numberOfPasskeys];
      }
    }

    else if ([infoCopy numberOfPasskeys] != 1 && !objc_msgSend(infoCopy, "numberOfPasskeys"))
    {
      [infoCopy numberOfPasswords];
    }

    [infoCopy hasOnlySharedAccounts];
  }

  v5 = _WBSLocalizedString();

  return v5;
}

+ (id)_credentialDeletionStringForAlertToDeleteNumberOfSiwaAccounts:(unint64_t)accounts
{
  v4 = _WBSLocalizedString();

  return v4;
}

+ (id)_credentialDeletionStringForAlertToDeleteNumberOfFileVaultRecoveryKeys:(unint64_t)keys
{
  v4 = _WBSLocalizedString();

  return v4;
}

+ (id)_deletionStringForAlertToDeleteWithAccountsSelectionInfo:(id)info isPermanentlyDeleting:(BOOL)deleting
{
  infoCopy = info;
  _isKeychainSyncEnabled = [self _isKeychainSyncEnabled];
  numberOfPasswords = [infoCopy numberOfPasswords];
  if (_isKeychainSyncEnabled)
  {
    if (numberOfPasswords == 1 && [infoCopy numberOfPasskeys] == 1)
    {
      if (deleting)
      {
        [infoCopy hasOnlySharedAccounts];
LABEL_42:
        v19 = _WBSLocalizedString();
        goto LABEL_47;
      }

      v26 = MEMORY[0x1E696AEC0];
      goto LABEL_36;
    }

    if ([infoCopy numberOfPasswords] && objc_msgSend(infoCopy, "numberOfPasskeys"))
    {
      if (!deleting)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = _WBSLocalizedString();
        numberOfPasskeys = [infoCopy numberOfPasskeys];
        numberOfPasswords2 = [infoCopy numberOfPasswords];
        formattedRecentlyDeletedExpirationDays = [self formattedRecentlyDeletedExpirationDays];
        v19 = [v14 localizedStringWithFormat:v15, numberOfPasskeys, numberOfPasswords2, formattedRecentlyDeletedExpirationDays];

LABEL_39:
        goto LABEL_47;
      }

      [infoCopy hasOnlySharedAccounts];
      v9 = MEMORY[0x1E696AEC0];
      v32 = _WBSLocalizedString();
      numberOfPasskeys2 = [infoCopy numberOfPasskeys];
      numberOfPasswords3 = [infoCopy numberOfPasswords];
      goto LABEL_44;
    }

    if ([infoCopy numberOfPasskeys])
    {
      if (deleting)
      {
        [infoCopy hasOnlySharedAccounts];
        v9 = MEMORY[0x1E696AEC0];
        v32 = _WBSLocalizedString();
        numberOfPasskeys3 = [infoCopy numberOfPasskeys];
LABEL_43:
        numberOfPasskeys2 = numberOfPasskeys3;
LABEL_44:
        v13 = v9;
        goto LABEL_45;
      }

      v23 = MEMORY[0x1E696AEC0];
      v15 = _WBSLocalizedString();
      numberOfPasskeys4 = [infoCopy numberOfPasskeys];
    }

    else
    {
      if (deleting)
      {
        [infoCopy hasOnlySharedAccounts];
        v9 = MEMORY[0x1E696AEC0];
        v32 = _WBSLocalizedString();
        numberOfPasskeys3 = [infoCopy numberOfPasswords];
        goto LABEL_43;
      }

      v23 = MEMORY[0x1E696AEC0];
      v15 = _WBSLocalizedString();
      numberOfPasskeys4 = [infoCopy numberOfPasswords];
    }

    v28 = numberOfPasskeys4;
    formattedRecentlyDeletedExpirationDays2 = [self formattedRecentlyDeletedExpirationDays];
    v19 = [v23 localizedStringWithFormat:v15, v28, formattedRecentlyDeletedExpirationDays2];

    goto LABEL_39;
  }

  if (numberOfPasswords == 1 && [infoCopy numberOfPasskeys] == 1)
  {
    if (deleting)
    {
      goto LABEL_42;
    }

    v26 = MEMORY[0x1E696AEC0];
LABEL_36:
    v15 = _WBSLocalizedString();
    formattedRecentlyDeletedExpirationDays3 = [self formattedRecentlyDeletedExpirationDays];
    v19 = [v26 localizedStringWithFormat:v15, formattedRecentlyDeletedExpirationDays3];

    goto LABEL_39;
  }

  if (![infoCopy numberOfPasswords] || !objc_msgSend(infoCopy, "numberOfPasskeys"))
  {
    numberOfPasskeys5 = [infoCopy numberOfPasskeys];
    v10 = MEMORY[0x1E696AEC0];
    if (numberOfPasskeys5)
    {
      if (deleting)
      {
        v32 = _WBSLocalizedString();
        numberOfPasskeys6 = [infoCopy numberOfPasskeys];
LABEL_28:
        numberOfPasskeys2 = numberOfPasskeys6;
        goto LABEL_29;
      }

      v32 = _WBSLocalizedString();
      numberOfPasskeys7 = [infoCopy numberOfPasskeys];
    }

    else
    {
      if (deleting)
      {
        v32 = _WBSLocalizedString();
        numberOfPasskeys6 = [infoCopy numberOfPasswords];
        goto LABEL_28;
      }

      v32 = _WBSLocalizedString();
      numberOfPasskeys7 = [infoCopy numberOfPasswords];
    }

    v30 = numberOfPasskeys7;
    formattedRecentlyDeletedExpirationDays4 = [self formattedRecentlyDeletedExpirationDays];
    v19 = [v10 localizedStringWithFormat:v32, v30, formattedRecentlyDeletedExpirationDays4];

    goto LABEL_46;
  }

  v10 = MEMORY[0x1E696AEC0];
  if (deleting)
  {
    v32 = _WBSLocalizedString();
    numberOfPasskeys2 = [infoCopy numberOfPasskeys];
    numberOfPasswords3 = [infoCopy numberOfPasswords];
LABEL_29:
    v13 = v10;
LABEL_45:
    v19 = [v13 localizedStringWithFormat:v32, numberOfPasskeys2, numberOfPasswords3];
    goto LABEL_46;
  }

  v32 = _WBSLocalizedString();
  numberOfPasskeys8 = [infoCopy numberOfPasskeys];
  numberOfPasswords4 = [infoCopy numberOfPasswords];
  formattedRecentlyDeletedExpirationDays5 = [self formattedRecentlyDeletedExpirationDays];
  v19 = [v10 localizedStringWithFormat:v32, numberOfPasskeys8, numberOfPasswords4, formattedRecentlyDeletedExpirationDays5];

LABEL_46:
LABEL_47:

  return v19;
}

+ (id)_subtitleForDeletingNumberOfPasswordsWithVerificationCodes:(unint64_t)codes
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  codes = [v4 localizedStringWithFormat:v5, codes];

  return codes;
}

+ (id)_buttonTitleStringForAlertToDeleteWithAccountsSelectionInfo:(id)info isPermanentlyDeleting:(BOOL)deleting
{
  infoCopy = info;
  if ([infoCopy hasOnlySignInWithAppleAccounts] & 1) != 0 || (objc_msgSend(infoCopy, "hasOnlyFileVaultRecoveryKeys") & 1) != 0 || (objc_msgSend(infoCopy, "hasOnlyFileVaultRecoveryKeysAndSignInWithAppleAccounts"))
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ([infoCopy numberOfPasswords] && objc_msgSend(infoCopy, "numberOfPasskeys"))
  {
    goto LABEL_14;
  }

  if ([infoCopy numberOfPasskeys] == 1)
  {
    [infoCopy hasOnlySharedAccounts];
LABEL_14:
    v5 = _WBSLocalizedString();
    goto LABEL_5;
  }

  if ([infoCopy numberOfPasskeys])
  {
    [infoCopy hasOnlySharedAccounts];
    v7 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    numberOfPasskeys = [infoCopy numberOfPasskeys];
  }

  else
  {
    numberOfPasswords = [infoCopy numberOfPasswords];
    [infoCopy hasOnlySharedAccounts];
    if (numberOfPasswords == 1)
    {
      goto LABEL_14;
    }

    v7 = MEMORY[0x1E696AEC0];
    v9 = _WBSLocalizedString();
    numberOfPasskeys = [infoCopy numberOfPasswords];
  }

  v5 = [v7 localizedStringWithFormat:v9, numberOfPasskeys];

LABEL_5:

  return v5;
}

+ (BOOL)_isKeychainSyncEnabled
{
  mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
  v3 = [mEMORY[0x1E69C88B8] keychainSyncSettingValue] == 2;

  return v3;
}

+ (id)_configurationForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)account
{
  accountCopy = account;
  v5 = [self _titleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:accountCopy];
  v6 = [self _subtitleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:accountCopy];
  v7 = _WBSLocalizedString();
  v8 = [self _isPermanentlyDeletingSavedAccount:accountCopy];

  v9 = [self alloc];
  _cancelButtonTitleStringForAlertToDeleteAccount = [self _cancelButtonTitleStringForAlertToDeleteAccount];
  v11 = [v9 _initWithTitle:v5 subtitle:v6 buttonTitle:v7 cancelButtonTitle:_cancelButtonTitleStringForAlertToDeleteAccount isPermanentlyRemovingFromRecentlyDeleted:v8];

  return v11;
}

+ (id)_titleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)account
{
  [account isSavedInSharedGroup];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_subtitleStringForAlertToDeleteFileVaultRecoveryKeyWithSavedAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isRecentlyDeleted])
  {
    [accountCopy isSavedInSharedGroup];
    v10 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _WBSLocalizedString();
    formattedRecentlyDeletedExpirationDays = [self formattedRecentlyDeletedExpirationDays];
    v8 = [v5 localizedStringWithFormat:v6, formattedRecentlyDeletedExpirationDays];

    if ([accountCopy isSavedInSharedGroup] && (objc_msgSend(accountCopy, "isCurrentUserOriginalContributor") & 1) == 0)
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
  recentlyDeletedExpirationTimeInDays = [MEMORY[0x1E69C8A38] recentlyDeletedExpirationTimeInDays];
  v3 = MEMORY[0x1E696ADA0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:recentlyDeletedExpirationTimeInDays];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

@end