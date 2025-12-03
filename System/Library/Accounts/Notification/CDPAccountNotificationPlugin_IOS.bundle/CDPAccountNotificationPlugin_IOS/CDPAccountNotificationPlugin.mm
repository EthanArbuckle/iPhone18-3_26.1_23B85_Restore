@interface CDPAccountNotificationPlugin
- (unint64_t)_calculateCDPSOSCompatibilityTypeWithAccount:(id)account;
- (void)_clearFollowUpsOnAccountDeletionWithController:(id)controller;
- (void)_processAppleAcocuntChange:(id)change;
- (void)_processAuthKitAccountChange:(id)change oldAccount:(id)account;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation CDPAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v30 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  if (type == 2)
  {
    v20 = objc_msgSend_accountType(accountCopy, v12, v13);
    v23 = objc_msgSend_identifier(v20, v21, v22);
    v25 = objc_msgSend_compare_options_(v23, v24, *MEMORY[0x29EDB8248], 4);

    if (v25)
    {
      objc_msgSend__processAppleAcocuntChange_(self, v26, accountCopy);
    }

    else
    {
      objc_msgSend__processAuthKitAccountChange_oldAccount_(self, v26, accountCopy, oldAccountCopy);
    }
  }

  else if (type == 3 && objc_msgSend__isPrimaryAccount_(self, v12, oldAccountCopy))
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = oldAccountCopy;
      _os_log_impl(&dword_29C8A1000, v15, OS_LOG_TYPE_DEFAULT, "Primary iCloud account deletion detected, clearing follow ups for %@", &v28, 0xCu);
    }

    v16 = objc_alloc_init(MEMORY[0x29EDC0DD0]);
    objc_msgSend__clearFollowUpsOnAccountDeletionWithController_(self, v17, v16);
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_29C8A1000, v18, OS_LOG_TYPE_DEFAULT, "Primary iCloud account deletion detected, post local walrus state change notification.", &v28, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_CDPWalrusStateChangeDarwinNotification", 0, 0, 1u);
  }

  v27 = *MEMORY[0x29EDCA608];
}

- (void)_clearFollowUpsOnAccountDeletionWithController:(id)controller
{
  v3 = MEMORY[0x29EDC0DC8];
  controllerCopy = controller;
  v7 = objc_msgSend_contextForStateRepair(v3, v5, v6);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v8, v7, 0);

  v11 = objc_msgSend_contextForOfflinePasscodeChange(MEMORY[0x29EDC0DC8], v9, v10);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v12, v11, 0);

  v15 = objc_msgSend_contextForConfirmExistingSecret(MEMORY[0x29EDC0DC8], v13, v14);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v16, v15, 0);

  v19 = objc_msgSend_contextForRecoveryKeyRepair(MEMORY[0x29EDC0DC8], v17, v18);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v20, v19, 0);

  v22 = objc_msgSend_contextForWalrusCreatePasscodeWithCDPContext_(MEMORY[0x29EDC0DC8], v21, 0);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v23, v22, 0);

  v26 = objc_msgSend_contextForSOSCompatibilityMode(MEMORY[0x29EDC0DC8], v24, v25);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v27, v26, 0);

  v30 = objc_msgSend_contextForRecoveryKeyMismatchHealing(MEMORY[0x29EDC0DC8], v28, v29);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v31, v30, 0);

  v35 = objc_msgSend_contextForADPStateHealing(MEMORY[0x29EDC0DC8], v32, v33);
  objc_msgSend_clearFollowUpWithContext_error_(controllerCopy, v34, v35, 0);
}

- (unint64_t)_calculateCDPSOSCompatibilityTypeWithAccount:(id)account
{
  accountCopy = account;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFB38], v4, v5);
  v8 = objc_msgSend_hasSOSActiveDeviceForAccount_(v6, v7, accountCopy);
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  v12 = v11;
  if (objc_opt_respondsToSelector())
  {
    v14 = objc_msgSend_isSOSNeededForAccount_(v6, v13, accountCopy);
    v17 = objc_msgSend_BOOLValue(v14, v15, v16);

    if (v17)
    {
      v12 |= 2uLL;
    }
  }

  return v12;
}

- (void)_processAuthKitAccountChange:(id)change oldAccount:(id)account
{
  changeCopy = change;
  accountCopy = account;
  v8 = objc_alloc_init(MEMORY[0x29EDC0DE0]);
  v11 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFB38], v9, v10);
  v13 = objc_msgSend_altDSIDForAccount_(v11, v12, changeCopy);
  if (objc_opt_respondsToSelector())
  {
    v15 = objc_msgSend__calculateCDPSOSCompatibilityTypeWithAccount_(self, v14, changeCopy);
    if (v15 != objc_msgSend__calculateCDPSOSCompatibilityTypeWithAccount_(self, v16, accountCopy))
    {
      objc_msgSend_setKeyChainSyncCompatibilityState_withAltDSID_(v8, v17, v15, v13);
    }
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_29C8A2598(v18);
    }
  }
}

- (void)_processAppleAcocuntChange:(id)change
{
  v31 = *MEMORY[0x29EDCA608];
  changeCopy = change;
  v6 = objc_msgSend_accountType(changeCopy, v4, v5);
  v9 = objc_msgSend_identifier(v6, v7, v8);
  v11 = objc_msgSend_compare_options_(v9, v10, *MEMORY[0x29EDB81C8], 4);

  if (v11)
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8A25DC(v14);
    }
  }

  else
  {
    v14 = objc_msgSend_aa_altDSID(changeCopy, v12, v13);
    v16 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v15, *MEMORY[0x29EDB8370], *MEMORY[0x29EDB8360], *MEMORY[0x29EDB8368], 0);
    v19 = objc_msgSend_dirtyProperties(changeCopy, v17, v18);
    v21 = objc_msgSend_intersectsSet_(v19, v20, v16);
    v22 = _CDPLogSystem();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v28 = 1752392040;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_29C8A1000, v23, OS_LOG_TYPE_DEFAULT, "Updating keychain sync state in response to dataclass changes for %{mask.hash}@", buf, 0x16u);
      }

      v23 = objc_msgSend_contextForAccountWithAltDSID_(MEMORY[0x29EDC0DC0], v24, v14);
      objc_msgSend_synchronizeKeychainSyncForContext_withCompletion_(MEMORY[0x29EDC0DD8], v25, v23, &unk_2A23D1DA0);
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8A2620(v14, v23);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

@end