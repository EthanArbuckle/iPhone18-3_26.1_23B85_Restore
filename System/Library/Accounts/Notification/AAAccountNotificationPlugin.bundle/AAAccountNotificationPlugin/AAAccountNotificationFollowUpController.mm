@interface AAAccountNotificationFollowUpController
+ (id)_secondaryAccountTypes;
- (AAAccountNotificationFollowUpController)init;
- (BOOL)_didAddAccount:(id)account oldAccount:(id)oldAccount;
- (BOOL)_didDeleteAccount:(id)account oldAccount:(id)oldAccount;
- (void)_dismissAgeMigrationFollowUp;
- (void)_dismissChildOrTeenProtoConnectFollowUp;
- (void)_dismissStartUsingFollowUp;
- (void)_updateStartUsingiCloudFollowupForAccountStore:(id)store account:(id)account oldAccount:(id)oldAccount;
- (void)_updateVerifyTermsFollowupForAccountStore:(id)store account:(id)account oldAccount:(id)oldAccount;
- (void)updateAgeMigrationFollowUpForAccount:(id)account oldAccount:(id)oldAccount;
- (void)updateChildOrTeenProtoConnectFollowupForAccountStore:(id)store account:(id)account oldAccount:(id)oldAccount;
@end

@implementation AAAccountNotificationFollowUpController

- (AAAccountNotificationFollowUpController)init
{
  v12.receiver = self;
  v12.super_class = AAAccountNotificationFollowUpController;
  v2 = [(AAAccountNotificationFollowUpController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDBE340]);
    followUpController = v2->_followUpController;
    v2->_followUpController = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.AppleAccount.AAAccountNotificationFollowUp.RemoveChildConnect", v5);
    childOrTeenConnectRemovalQueue = v2->_childOrTeenConnectRemovalQueue;
    v2->_childOrTeenConnectRemovalQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AppleAccount.AAAccountNotificationFollowUp.RemoveChildMigationCFU", v8);
    ageMigrationCFURemovalQueue = v2->_ageMigrationCFURemovalQueue;
    v2->_ageMigrationCFURemovalQueue = v9;
  }

  return v2;
}

- (void)_updateStartUsingiCloudFollowupForAccountStore:(id)store account:(id)account oldAccount:(id)oldAccount
{
  storeCopy = store;
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v11 = oldAccountCopy;
  if (accountCopy)
  {
    v12 = accountCopy;
  }

  else
  {
    v12 = oldAccountCopy;
  }

  v13 = v12;
  v18 = objc_msgSend_accountType(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_identifier(v18, v19, v20, v21, v22);

  v24 = *MEMORY[0x29EDBE2C0];
  if (objc_msgSend_aa_isAccountClass_(accountCopy, v25, *MEMORY[0x29EDBE2C0], v26, v27) && (objc_msgSend_aa_isAccountClass_(v11, v28, v24, v29, v30) & 1) == 0)
  {
    v31 = _AALogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v31, OS_LOG_TYPE_DEFAULT, "Notification Plugin (didChangeWithType): iCloud account added or became primary", buf, 2u);
    }

    objc_msgSend__dismissStartUsingFollowUp(self, v32, v33, v34, v35);
  }

  if (objc_msgSend__didAddAccount_oldAccount_(self, v28, accountCopy, v11, v30))
  {
    v38 = objc_opt_class();
    v43 = objc_msgSend__secondaryAccountTypes(v38, v39, v40, v41, v42);
    v47 = objc_msgSend_containsObject_(v43, v44, v23, v45, v46);

    if (v47)
    {
      v48 = _AALogSystem();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v48, OS_LOG_TYPE_DEFAULT, "Spyglass account type added, looking for primary apple account...", buf, 2u);
      }

      v77[0] = MEMORY[0x29EDCA5F8];
      v77[1] = 3221225472;
      v77[2] = sub_29C8489A8;
      v77[3] = &unk_29F3296A0;
      v77[4] = self;
      v78 = v13;
      objc_msgSend_aa_primaryAppleAccountWithCompletion_(storeCopy, v49, v77, v50, v51);
    }
  }

  if (objc_msgSend__didDeleteAccount_oldAccount_(self, v36, accountCopy, v11, v37))
  {
    v52 = objc_opt_class();
    v57 = objc_msgSend__secondaryAccountTypes(v52, v53, v54, v55, v56);
    v61 = objc_msgSend_containsObject_(v57, v58, v23, v59, v60);

    if (v61)
    {
      v62 = _AALogSystem();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v62, OS_LOG_TYPE_DEFAULT, "Detected secondary account deletion, determining if we should remove StartUsing follow up...", buf, 2u);
      }

      v63 = objc_opt_class();
      v68 = objc_msgSend__secondaryAccountTypes(v63, v64, v65, v66, v67);
      v73 = objc_msgSend_allObjects(v68, v69, v70, v71, v72);
      v76[0] = MEMORY[0x29EDCA5F8];
      v76[1] = 3221225472;
      v76[2] = sub_29C848ACC;
      v76[3] = &unk_29F3296C8;
      v76[4] = self;
      objc_msgSend_accountsWithAccountTypeIdentifiers_completion_(storeCopy, v74, v73, v76, v75);
    }
  }
}

- (void)_updateVerifyTermsFollowupForAccountStore:(id)store account:(id)account oldAccount:(id)oldAccount
{
  v63 = *MEMORY[0x29EDCA608];
  storeCopy = store;
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v51 = MEMORY[0x29EDCA5F8];
  v52 = 3221225472;
  v53 = sub_29C849008;
  v54 = &unk_29F329710;
  v11 = storeCopy;
  v55 = v11;
  selfCopy = self;
  v12 = MEMORY[0x29ED46160](&v51);
  if (objc_msgSend_aa_needsToVerifyTerms(accountCopy, v13, v14, v15, v16, v51, v52, v53, v54))
  {
    v21 = objc_msgSend_aa_needsToVerifyTerms(oldAccountCopy, v17, v18, v19, v20) ^ 1;
  }

  else
  {
    v21 = 0;
  }

  if (objc_msgSend_aa_hasOptionalTerms(accountCopy, v17, v18, v19, v20))
  {
    v26 = objc_msgSend_aa_hasOptionalTerms(oldAccountCopy, v22, v23, v24, v25) ^ 1;
  }

  else
  {
    v26 = 0;
  }

  if ((v21 | v26))
  {
    v27 = _AALogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v27, OS_LOG_TYPE_DEFAULT, "Notification Plugin (didChangeWithType): needs to verify terms", buf, 2u);
    }

    objc_msgSend_postFollowUpWithIdentifier_forAccount_userInfo_completion_(self->_followUpController, v28, *MEMORY[0x29EDBE2E8], accountCopy, 0, 0);
  }

  if (objc_msgSend_aa_needsToVerifyTerms(accountCopy, v22, v23, v24, v25))
  {
    hasOptionalTerms = 1;
  }

  else
  {
    hasOptionalTerms = objc_msgSend_aa_hasOptionalTerms(accountCopy, v29, v30, v31, v32);
  }

  if (objc_msgSend_aa_needsToVerifyTerms(oldAccountCopy, v29, v30, v31, v32))
  {
    v38 = 1;
    if (!accountCopy)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v38 = objc_msgSend_aa_hasOptionalTerms(oldAccountCopy, v34, v35, v36, v37);
    if (!accountCopy)
    {
      goto LABEL_27;
    }
  }

  if (hasOptionalTerms != v38)
  {
    v39 = _AALogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_msgSend_username(accountCopy, v40, v41, v42, v43);
      v45 = v44;
      v46 = @"NO";
      if (v38)
      {
        v47 = @"YES";
      }

      else
      {
        v47 = @"NO";
      }

      *buf = 138412802;
      v58 = v44;
      v60 = v47;
      v59 = 2112;
      if (hasOptionalTerms)
      {
        v46 = @"YES";
      }

      v61 = 2112;
      v62 = v46;
      _os_log_impl(&dword_29C844000, v39, OS_LOG_TYPE_DEFAULT, "Terms changed for %@ from %@ to %@", buf, 0x20u);
    }
  }

LABEL_27:
  if (!(hasOptionalTerms & 1 | ((v38 & 1) == 0)))
  {
    v48 = _AALogSystem();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v48, OS_LOG_TYPE_DEFAULT, "Notification Plugin (didChangeWithType): terms verified", buf, 2u);
    }

    v12[2](v12);
  }

  if (objc_msgSend__didDeleteAccount_oldAccount_(self, v34, accountCopy, oldAccountCopy, v37))
  {
    v49 = _AALogSystem();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v49, OS_LOG_TYPE_DEFAULT, "Notification Plugin (didChangeWithType): did delete account", buf, 2u);
    }

    v12[2](v12);
  }

  v50 = *MEMORY[0x29EDCA608];
}

- (void)updateChildOrTeenProtoConnectFollowupForAccountStore:(id)store account:(id)account oldAccount:(id)oldAccount
{
  storeCopy = store;
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v15 = oldAccountCopy;
  if (!accountCopy && oldAccountCopy)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      v17 = "Proto account is being removed - Remove follow ups.";
      v18 = &v31;
LABEL_23:
      _os_log_impl(&dword_29C844000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (!accountCopy)
  {
    isTeenProtoAccount = 0;
    if (oldAccountCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if ((objc_msgSend_aa_isChildProtoAccount(accountCopy, v11, v12, v13, v14) & 1) == 0)
  {
    isTeenProtoAccount = objc_msgSend_aa_isTeenProtoAccount(accountCopy, v11, v12, v13, v14);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_16;
  }

  isTeenProtoAccount = 1;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (objc_msgSend_aa_isChildProtoAccount(v15, v11, v12, v13, v14))
  {
    v23 = 1;
  }

  else
  {
    v23 = objc_msgSend_aa_isTeenProtoAccount(v15, v11, v20, v21, v22);
  }

  if (!(isTeenProtoAccount & 1 | ((v23 & 1) == 0)))
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Proto account age range has been modified and is no longer a child or teen - Remove follow ups.";
      v18 = buf;
      goto LABEL_23;
    }

LABEL_24:

    objc_msgSend__dismissChildOrTeenProtoConnectFollowUp(self, v25, v26, v27, v28);
    goto LABEL_25;
  }

LABEL_16:
  if ((v23 | isTeenProtoAccount))
  {
    objc_msgSend_postFollowUpWithIdentifier_forAccount_userInfo_completion_(self->_followUpController, v11, *MEMORY[0x29EDBE2D0], accountCopy, 0, 0);
  }

  else
  {
    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_29C844000, v24, OS_LOG_TYPE_DEFAULT, "A non-child or teen proto account was modified, but we don't care.", v29, 2u);
    }
  }

LABEL_25:
}

- (void)updateAgeMigrationFollowUpForAccount:(id)account oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v12 = oldAccountCopy;
  if (!accountCopy && oldAccountCopy)
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v51 = 0;
      v14 = "AppleAccount is being removed - Remove follow ups.";
      v15 = &v51;
LABEL_10:
      _os_log_impl(&dword_29C844000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (accountCopy)
  {
    v16 = objc_msgSend_aa_pendingDOB(accountCopy, v8, v9, v10, v11);
    v17 = v16 != 0;

    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 1;
    if (oldAccountCopy)
    {
LABEL_7:
      v18 = objc_msgSend_aa_pendingDOB(v12, v8, v9, v10, v11);
      v19 = v18 == 0;

      if (!v19 && !v17)
      {
        v13 = _AALogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 0;
          v14 = "Pending DOB has been removed. Removing related follow ups";
          v15 = &v50;
          goto LABEL_10;
        }

LABEL_11:

        objc_msgSend__dismissAgeMigrationFollowUp(self, v20, v21, v22, v23);
        goto LABEL_28;
      }

      goto LABEL_14;
    }
  }

  LOBYTE(v19) = 1;
LABEL_14:
  if (!accountCopy)
  {
    goto LABEL_23;
  }

  v24 = objc_msgSend_aa_pendingDOB(accountCopy, v8, v9, v10, v11);

  if (v24)
  {
    v25 = v19;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v35 = _AALogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_29C84E7D8(v35, v43, v44, v45, v46, v47, v48, v49);
    }

    goto LABEL_27;
  }

  if (!v24)
  {
LABEL_23:
    v35 = _AALogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_29C84E848(v35, v36, v37, v38, v39, v40, v41, v42);
    }

LABEL_27:

    goto LABEL_28;
  }

  v26 = _AALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_29C84E810(v26, v27, v28, v29, v30, v31, v32, v33);
  }

  objc_msgSend_postFollowUpWithIdentifier_forAccount_userInfo_completion_(self->_followUpController, v34, *MEMORY[0x29EDBE2C8], accountCopy, 0, 0);
LABEL_28:
}

- (void)_dismissChildOrTeenProtoConnectFollowUp
{
  v3 = os_transaction_create();
  childOrTeenConnectRemovalQueue = self->_childOrTeenConnectRemovalQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8495EC;
  block[3] = &unk_29F329760;
  v7 = v3;
  v5 = v3;
  dispatch_async(childOrTeenConnectRemovalQueue, block);
}

- (void)_dismissAgeMigrationFollowUp
{
  v3 = os_transaction_create();
  ageMigrationCFURemovalQueue = self->_ageMigrationCFURemovalQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C849730;
  block[3] = &unk_29F329760;
  v7 = v3;
  v5 = v3;
  dispatch_async(ageMigrationCFURemovalQueue, block);
}

- (void)_dismissStartUsingFollowUp
{
  objc_msgSend_dismissFollowUpWithIdentifier_completion_(self->_followUpController, a2, *MEMORY[0x29EDBE2E0], 0, v2);

  MEMORY[0x2A1C70FE8](AABridgeFollowUpController, sel_dismissBridgeAppleIDFollowUp, v3, v4, v5);
}

+ (id)_secondaryAccountTypes
{
  if (qword_2A1795048 != -1)
  {
    sub_29C84E880();
  }

  v3 = qword_2A1795040;

  return v3;
}

- (BOOL)_didAddAccount:(id)account oldAccount:(id)oldAccount
{
  oldAccountCopy = oldAccount;
  if (objc_msgSend_isActive(account, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_isActive(oldAccountCopy, v10, v11, v12, v13) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)_didDeleteAccount:(id)account oldAccount:(id)oldAccount
{
  oldAccountCopy = oldAccount;
  if (objc_msgSend_isActive(account, v6, v7, v8, v9))
  {
    isActive = 0;
  }

  else
  {
    isActive = objc_msgSend_isActive(oldAccountCopy, v10, v11, v12, v13);
  }

  return isActive;
}

@end