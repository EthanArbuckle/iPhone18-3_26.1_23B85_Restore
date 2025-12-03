@interface AAFindMyAccountController
+ (id)_findOrphanedAccountForAccountType:(id)type forAppleAccount:(id)account withStore:(id)store;
+ (void)addDeviceLocatorChildAccountToAppleAccount:(id)account;
+ (void)addFMFChildAccountToAppleAccount:(id)account;
+ (void)updateDeviceLocatorChildAccountForAppleAccount:(id)account;
+ (void)updateFMFChildAccountForAppleAccount:(id)account;
@end

@implementation AAFindMyAccountController

+ (void)addFMFChildAccountToAppleAccount:(id)account
{
  v83 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v9 = objc_msgSend_defaultStore(MEMORY[0x29EDB83C8], v5, v6, v7, v8);
  v13 = objc_msgSend_accountTypeWithAccountTypeIdentifier_(v9, v10, *MEMORY[0x29EDB8220], v11, v12);
  v14 = objc_alloc(MEMORY[0x29EDB83B8]);
  v18 = objc_msgSend_initWithAccountType_(v14, v15, v13, v16, v17);
  v23 = objc_msgSend_username(accountCopy, v19, v20, v21, v22);
  v27 = objc_msgSend_aa_appleAccountWithUsername_(v9, v24, v23, v25, v26);

  if (v27)
  {
    v32 = objc_msgSend__findOrphanedAccountForAccountType_forAppleAccount_withStore_(self, v28, v13, v27, v9);
    v76 = v13;
    if (v32)
    {
      v33 = _AALogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = v32;
        _os_log_impl(&dword_29C844000, v33, OS_LOG_TYPE_DEFAULT, "Looks like we found an orphaned find my friends account: %@", buf, 0xCu);
      }

      v34 = v32;
      v18 = v34;
    }

    objc_msgSend_setParentAccount_(v18, v29, v27, v30, v31);
    v39 = objc_msgSend_username(v27, v35, v36, v37, v38);
    objc_msgSend_setUsername_(v18, v40, v39, v41, v42);

    v77 = accountCopy;
    v47 = objc_msgSend_credential(accountCopy, v43, v44, v45, v46);
    v48 = *MEMORY[0x29EDB8310];
    v52 = objc_msgSend_credentialItemForKey_(v47, v49, *MEMORY[0x29EDB8310], v50, v51);
    v53 = *MEMORY[0x29EDB8308];
    v59 = objc_msgSend_credentialItemForKey_(v47, v54, *MEMORY[0x29EDB8308], v55, v56);
    if (v52 | v59)
    {
      v60 = _AALogSystem();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = @"NO";
        if (v52)
        {
          v62 = @"YES";
        }

        else
        {
          v62 = @"NO";
        }

        if (v59)
        {
          v61 = @"YES";
        }

        *buf = 138412546;
        v80 = v62;
        v81 = 2112;
        v82 = v61;
        _os_log_impl(&dword_29C844000, v60, OS_LOG_TYPE_DEFAULT, "Got FMF (%@) or app (%@) tokens, creating FMF child account", buf, 0x16u);
      }

      v63 = objc_alloc_init(MEMORY[0x29EDB83C0]);
      objc_msgSend_setCredentialItem_forKey_(v63, v64, v59, v53, v65);
      objc_msgSend_setCredentialItem_forKey_(v63, v66, v52, v48, v67);
      objc_msgSend_setCredential_(v18, v68, v63, v69, v70);
    }

    v78 = 0;
    v71 = objc_msgSend_saveVerifiedAccount_error_(v9, v57, v18, &v78, v58);
    v72 = v78;
    v73 = _AALogSystem();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = @"NO";
      if (v71)
      {
        v74 = @"YES";
      }

      *buf = 138412546;
      v80 = v74;
      v81 = 2112;
      v82 = v72;
      _os_log_impl(&dword_29C844000, v73, OS_LOG_TYPE_DEFAULT, "FMF child account added successfully (%@) with error: %@", buf, 0x16u);
    }

    v13 = v76;
    accountCopy = v77;
  }

  else
  {
    v32 = _AALogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_29C84ED58(accountCopy, v32);
    }
  }

  v75 = *MEMORY[0x29EDCA608];
}

+ (void)updateFMFChildAccountForAppleAccount:(id)account
{
  v74 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v8 = objc_msgSend_credential(accountCopy, v4, v5, v6, v7);
  v9 = *MEMORY[0x29EDB8310];
  v13 = objc_msgSend_credentialItemForKey_(v8, v10, *MEMORY[0x29EDB8310], v11, v12);
  v14 = *MEMORY[0x29EDB8308];
  v18 = objc_msgSend_credentialItemForKey_(v8, v15, *MEMORY[0x29EDB8308], v16, v17);
  v22 = objc_msgSend_childAccountsWithAccountTypeIdentifier_(accountCopy, v19, *MEMORY[0x29EDB8220], v20, v21);
  v27 = objc_msgSend_firstObject(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_credential(v27, v28, v29, v30, v31);
  v36 = objc_msgSend_credentialItemForKey_(v32, v33, v9, v34, v35);
  v40 = objc_msgSend_credentialItemForKey_(v32, v37, v14, v38, v39);
  if (!objc_msgSend_isEqualToString_(v36, v41, v13, v42, v43) || (objc_msgSend_isEqualToString_(v40, v44, v18, v46, v47) & 1) == 0)
  {
    v68 = v40;
    if (objc_msgSend_isAuthenticated(accountCopy, v44, v45, v46, v47))
    {
      objc_msgSend_setAuthenticated_(v27, v48, 1, v49, v50);
    }

    v51 = _AALogSystem();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = @"YES";
      if (v13)
      {
        v53 = @"YES";
      }

      else
      {
        v53 = @"NO";
      }

      if (!v18)
      {
        v52 = @"NO";
      }

      *buf = 138412546;
      v71 = v53;
      v72 = 2112;
      v73 = v52;
      _os_log_impl(&dword_29C844000, v51, OS_LOG_TYPE_DEFAULT, "Updating FMF account's FMF (%@) and app (%@) tokens", buf, 0x16u);
    }

    if (v18)
    {
      objc_msgSend_setCredentialItem_forKey_(v32, v54, v18, v14, v55);
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    else if (!v13)
    {
      v59 = _AALogSystem();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v59, OS_LOG_TYPE_DEFAULT, "No change to FMF child account", buf, 2u);
      }

      goto LABEL_22;
    }

    objc_msgSend_setCredentialItem_forKey_(v32, v54, v13, v9, v55);
LABEL_17:
    v67 = v8;
    v58 = v36;
    v59 = objc_msgSend_defaultStore(MEMORY[0x29EDB83C8], v54, v56, v57, v55);
    v69 = 0;
    v62 = objc_msgSend_saveVerifiedAccount_error_(v59, v60, v27, &v69, v61);
    v63 = v69;
    v64 = _AALogSystem();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = @"NO";
      if (v62)
      {
        v65 = @"YES";
      }

      *buf = 138412546;
      v71 = v65;
      v72 = 2112;
      v73 = v63;
      _os_log_impl(&dword_29C844000, v64, OS_LOG_TYPE_DEFAULT, "FMF child account updated successfully (%@) with error: %@", buf, 0x16u);
    }

    v36 = v58;
    v8 = v67;
LABEL_22:
    v40 = v68;
  }

  v66 = *MEMORY[0x29EDCA608];
}

+ (id)_findOrphanedAccountForAccountType:(id)type forAppleAccount:(id)account withStore:(id)store
{
  typeCopy = type;
  accountCopy = account;
  v9 = typeCopy;
  v13 = objc_msgSend_accountsWithAccountType_(store, v10, v9, v11, v12);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = sub_29C84C70C;
  v21[3] = &unk_29F329838;
  v22 = accountCopy;
  v23 = v9;
  v14 = accountCopy;
  v15 = v9;
  v19 = objc_msgSend_aaf_firstObjectPassingTest_(v13, v16, v21, v17, v18);

  return v19;
}

+ (void)addDeviceLocatorChildAccountToAppleAccount:(id)account
{
  v113 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v9 = objc_msgSend_defaultStore(MEMORY[0x29EDB83C8], v5, v6, v7, v8);
  v13 = objc_msgSend_accountTypeWithAccountTypeIdentifier_(v9, v10, *MEMORY[0x29EDB8208], v11, v12);
  v14 = objc_alloc(MEMORY[0x29EDB83B8]);
  v18 = objc_msgSend_initWithAccountType_(v14, v15, v13, v16, v17);
  v23 = objc_msgSend_username(accountCopy, v19, v20, v21, v22);
  v27 = objc_msgSend_aa_appleAccountWithUsername_(v9, v24, v23, v25, v26);

  if (v27)
  {
    v29 = objc_msgSend__findOrphanedAccountForAccountType_forAppleAccount_withStore_(self, v28, v13, v27, v9);
    v105 = v29;
    v106 = v13;
    if (v29)
    {
      v33 = v29;
      v34 = _AALogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v110 = v33;
        _os_log_impl(&dword_29C844000, v34, OS_LOG_TYPE_DEFAULT, "Looks like we found an orphaned device locator account: %@", buf, 0xCu);
      }

      v35 = v33;
      v18 = v35;
    }

    objc_msgSend_setParentAccount_(v18, v30, v27, v31, v32);
    v40 = objc_msgSend_username(v27, v36, v37, v38, v39);
    objc_msgSend_setUsername_(v18, v41, v40, v42, v43);

    v48 = objc_msgSend_credential(accountCopy, v44, v45, v46, v47);
    v49 = objc_alloc_init(MEMORY[0x29EDB83C0]);
    v57 = objc_msgSend_findMyiPhoneToken(v48, v50, v51, v52, v53);
    if (v57)
    {
      v58 = _AALogSystem();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v58, OS_LOG_TYPE_DEFAULT, "Got an FMIP token, creating device locator child account", buf, 2u);
      }

      objc_msgSend_setToken_(v49, v59, v57, v60, v61);
    }

    v62 = *MEMORY[0x29EDB8320];
    v63 = objc_msgSend_credentialItemForKey_(v48, v54, *MEMORY[0x29EDB8320], v55, v56);
    v64 = _AALogSystem();
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
    v102 = v63;
    if (v63)
    {
      if (v65)
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v64, OS_LOG_TYPE_DEFAULT, "Setting FMIP Siri token...", buf, 2u);
      }

      objc_msgSend_setCredentialItem_forKey_(v49, v66, v63, v62, v67, v63);
    }

    else
    {
      if (v65)
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v64, OS_LOG_TYPE_DEFAULT, "No FMIP Siri token was found!", buf, 2u);
      }
    }

    v72 = *MEMORY[0x29EDB83A8];
    v73 = objc_msgSend_credentialItemForKey_(v48, v68, *MEMORY[0x29EDB83A8], v69, v70, v102);
    v74 = _AALogSystem();
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
    v107 = accountCopy;
    if (v73)
    {
      if (v75)
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v74, OS_LOG_TYPE_DEFAULT, "Setting SearchParty token...", buf, 2u);
      }

      objc_msgSend_setCredentialItem_forKey_(v49, v76, v73, v72, v77);
    }

    else
    {
      if (v75)
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v74, OS_LOG_TYPE_DEFAULT, "No SearchParty token was found!", buf, 2u);
      }
    }

    v81 = *MEMORY[0x29EDB8318];
    v82 = objc_msgSend_credentialItemForKey_(v48, v78, *MEMORY[0x29EDB8318], v79, v80);
    v83 = _AALogSystem();
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
    v104 = v57;
    if (v82)
    {
      if (v84)
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v83, OS_LOG_TYPE_DEFAULT, "Setting FMIP App token...", buf, 2u);
      }

      objc_msgSend_setCredentialItem_forKey_(v49, v85, v82, v81, v86);
    }

    else
    {
      if (v84)
      {
        *buf = 0;
        _os_log_impl(&dword_29C844000, v83, OS_LOG_TYPE_DEFAULT, "No FMIP App token was found!", buf, 2u);
      }
    }

    objc_msgSend_setCredential_(v18, v87, v49, v88, v89);
    if (objc_msgSend_isAuthenticated(v107, v90, v91, v92, v93))
    {
      objc_msgSend_setAuthenticated_(v18, v94, 1, v95, v96);
    }

    v108 = 0;
    v97 = objc_msgSend_saveVerifiedAccount_error_(v9, v94, v18, &v108, v96);
    v98 = v108;
    v99 = _AALogSystem();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v100 = @"NO";
      if (v97)
      {
        v100 = @"YES";
      }

      *buf = 138412546;
      v110 = v100;
      v111 = 2112;
      v112 = v98;
      _os_log_impl(&dword_29C844000, v99, OS_LOG_TYPE_DEFAULT, "Device locator child account added successfully (%@) with error: %@", buf, 0x16u);
    }

    v13 = v106;
    accountCopy = v107;
    v71 = v105;
  }

  else
  {
    v71 = _AALogSystem();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_29C84ED58(accountCopy, v71);
    }
  }

  v101 = *MEMORY[0x29EDCA608];
}

+ (void)updateDeviceLocatorChildAccountForAppleAccount:(id)account
{
  v100 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v7 = objc_msgSend_childAccountsWithAccountTypeIdentifier_(accountCopy, v4, *MEMORY[0x29EDB8208], v5, v6);
  v12 = objc_msgSend_firstObject(v7, v8, v9, v10, v11);

  v87 = accountCopy;
  v17 = objc_msgSend_credential(accountCopy, v13, v14, v15, v16);
  v18 = *MEMORY[0x29EDB8328];
  v22 = objc_msgSend_credentialItemForKey_(v17, v19, *MEMORY[0x29EDB8328], v20, v21);
  v23 = *MEMORY[0x29EDB8318];
  v27 = objc_msgSend_credentialItemForKey_(v17, v24, *MEMORY[0x29EDB8318], v25, v26);
  v28 = *MEMORY[0x29EDB8320];
  v88 = objc_msgSend_credentialItemForKey_(v17, v29, *MEMORY[0x29EDB8320], v30, v31);
  v32 = *MEMORY[0x29EDB83A8];
  v36 = objc_msgSend_credentialItemForKey_(v17, v33, *MEMORY[0x29EDB83A8], v34, v35);
  v41 = objc_msgSend_credential(v12, v37, v38, v39, v40);
  v45 = objc_msgSend_credentialItemForKey_(v41, v42, v18, v43, v44);
  v86 = objc_msgSend_credentialItemForKey_(v41, v46, v23, v47, v48);
  v85 = objc_msgSend_credentialItemForKey_(v41, v49, v28, v50, v51);
  v84 = objc_msgSend_credentialItemForKey_(v41, v52, v32, v53, v54);
  if (!objc_msgSend_isEqualToString_(v45, v55, v22, v56, v57) || !objc_msgSend_isEqualToString_(v86, v58, v27, v60, v61) || !objc_msgSend_isEqualToString_(v85, v58, v88, v60, v61) || (objc_msgSend_isEqualToString_(v84, v58, v36, v60, v61) & 1) == 0)
  {
    v83 = v45;
    if (objc_msgSend_isAuthenticated(v87, v58, v59, v60, v61))
    {
      objc_msgSend_setAuthenticated_(v12, v62, 1, v63, v64);
    }

    v65 = _AALogSystem();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = @"YES";
      if (v22)
      {
        v67 = @"YES";
      }

      else
      {
        v67 = @"NO";
      }

      *buf = 138413314;
      v91 = v12;
      if (v27)
      {
        v68 = @"YES";
      }

      else
      {
        v68 = @"NO";
      }

      v92 = 2112;
      v93 = v67;
      if (v88)
      {
        v69 = @"YES";
      }

      else
      {
        v69 = @"NO";
      }

      v94 = 2112;
      v95 = v68;
      if (!v36)
      {
        v66 = @"NO";
      }

      v96 = 2112;
      v97 = v69;
      v98 = 2112;
      v99 = v66;
      _os_log_impl(&dword_29C844000, v65, OS_LOG_TYPE_DEFAULT, "Updating device locator account (%@) tokens FMIP (%@), app (%@), Siri (%@), and SearchParty (%@) tokens", buf, 0x34u);
    }

    v73 = v22 != 0;
    if (v22)
    {
      objc_msgSend_setToken_(v41, v70, v22, v71, v72);
    }

    if (v27)
    {
      objc_msgSend_setCredentialItem_forKey_(v41, v70, v27, v23, v72);
      v73 = 1;
    }

    v74 = v88;
    if (v88)
    {
      objc_msgSend_setCredentialItem_forKey_(v41, v70, v88, v28, v72);
      if (!v36)
      {
        goto LABEL_29;
      }
    }

    else if (!v36)
    {
      if (!v73)
      {
        v75 = _AALogSystem();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_29C844000, v75, OS_LOG_TYPE_DEFAULT, "No change to device locator account", buf, 2u);
        }

        goto LABEL_34;
      }

LABEL_29:
      v75 = objc_msgSend_defaultStore(MEMORY[0x29EDB83C8], v70, v74, v71, v72);
      v89 = 0;
      v78 = objc_msgSend_saveVerifiedAccount_error_(v75, v76, v12, &v89, v77);
      v79 = v89;
      v80 = _AALogSystem();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = @"NO";
        if (v78)
        {
          v81 = @"YES";
        }

        *buf = 138412546;
        v91 = v81;
        v92 = 2112;
        v93 = v79;
        _os_log_impl(&dword_29C844000, v80, OS_LOG_TYPE_DEFAULT, "Device locator child account updated successfully (%@) with error: %@", buf, 0x16u);
      }

LABEL_34:
      v45 = v83;

      goto LABEL_35;
    }

    objc_msgSend_setCredentialItem_forKey_(v41, v70, v36, v32, v72);
    goto LABEL_29;
  }

LABEL_35:

  v82 = *MEMORY[0x29EDCA608];
}

@end