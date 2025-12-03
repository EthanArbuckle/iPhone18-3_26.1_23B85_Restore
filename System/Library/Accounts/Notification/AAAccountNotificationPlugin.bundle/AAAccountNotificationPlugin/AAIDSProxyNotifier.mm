@interface AAIDSProxyNotifier
- (id)_saveOptionsForProxiedDeviceAuth;
- (void)_notifyIDSProxyOfAccount:(id)account store:(id)store withCommand:(id)command;
- (void)_showRedirectToBridgeAlertForAccount:(id)account;
@end

@implementation AAIDSProxyNotifier

- (void)_notifyIDSProxyOfAccount:(id)account store:(id)store withCommand:(id)command
{
  v117 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  commandCopy = command;
  v14 = objc_msgSend__shouldSendAccountChangeOverIDSProxy_(self, v11, accountCopy, v12, v13);
  if (commandCopy && v14)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v112 = commandCopy;
      _os_log_impl(&dword_29C844000, v15, OS_LOG_TYPE_DEFAULT, "Sending the account through the IDS Proxy with changetype: %@", buf, 0xCu);
    }

    v16 = *MEMORY[0x29EDB8380];
    if (objc_msgSend_isEqualToString_(commandCopy, v17, *MEMORY[0x29EDB8380], v18, v19))
    {
      v93 = v16;
      selfCopy = self;
      v95 = storeCopy;
      objc_msgSend_accountsWithAccountTypeIdentifier_(storeCopy, v20, *MEMORY[0x29EDB8248], v22, v23);
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v24 = v110 = 0u;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v107, v116, 16);
      if (v26)
      {
        v31 = v26;
        v32 = *v108;
LABEL_8:
        v33 = 0;
        while (1)
        {
          if (*v108 != v32)
          {
            objc_enumerationMutation(v24);
          }

          v34 = *(*(&v107 + 1) + 8 * v33);
          v35 = objc_msgSend_aa_altDSID(v34, v27, v28, v29, v30);
          v40 = objc_msgSend_aa_altDSID(accountCopy, v36, v37, v38, v39);
          isEqual = objc_msgSend_isEqual_(v35, v41, v40, v42, v43);

          if (isEqual)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v107, v116, 16);
            if (v31)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        v51 = v34;

        if (v51)
        {
          goto LABEL_31;
        }
      }

      else
      {
LABEL_14:
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v52 = v24;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v103, v115, 16);
      if (!v54)
      {
LABEL_29:

LABEL_36:
        v84 = _AALogSystem();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v112 = accountCopy;
          _os_log_impl(&dword_29C844000, v84, OS_LOG_TYPE_DEFAULT, "No AK account matches %@.", buf, 0xCu);
        }

        storeCopy = v95;
        goto LABEL_43;
      }

      v59 = v54;
      v60 = *v104;
      v92 = commandCopy;
LABEL_23:
      v61 = 0;
      while (1)
      {
        if (*v104 != v60)
        {
          objc_enumerationMutation(v52);
        }

        v62 = *(*(&v103 + 1) + 8 * v61);
        v63 = objc_msgSend_username(v62, v55, v56, v57, v58, v92);
        v68 = objc_msgSend_username(accountCopy, v64, v65, v66, v67);
        v72 = objc_msgSend_isEqual_(v63, v69, v68, v70, v71);

        if (v72)
        {
          break;
        }

        if (v59 == ++v61)
        {
          v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v103, v115, 16);
          commandCopy = v92;
          if (v59)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      v51 = v62;

      commandCopy = v92;
      if (!v51)
      {
        goto LABEL_36;
      }

LABEL_31:
      v73 = _AALogSystem();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v112 = v51;
        v113 = 2112;
        v114 = accountCopy;
        _os_log_impl(&dword_29C844000, v73, OS_LOG_TYPE_DEFAULT, "Using AK account %@ as match for account %@", buf, 0x16u);
      }

      v102 = 0;
      v77 = objc_msgSend_credentialWithError_(v51, v74, &v102, v75, v76);
      v78 = v102;
      v79 = _AALogSystem();
      v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
      storeCopy = v95;
      if (v77)
      {
        if (v80)
        {
          *buf = 0;
          v81 = "Successfully fetched AuthKit account credential. This bodes well.";
          v82 = v79;
          v83 = 2;
LABEL_41:
          _os_log_impl(&dword_29C844000, v82, OS_LOG_TYPE_DEFAULT, v81, buf, v83);
        }
      }

      else if (v80)
      {
        *buf = 138412290;
        v112 = v78;
        v81 = "Failed to get AuthKit account credential for transferring to paired device. Error: %@";
        v82 = v79;
        v83 = 12;
        goto LABEL_41;
      }

      v89 = objc_msgSend_remoteDeviceProxy(v95, v85, v86, v87, v88);
      v96[0] = MEMORY[0x29EDCA5F8];
      v96[1] = 3221225472;
      v96[2] = sub_29C84D848;
      v96[3] = &unk_29F329888;
      v97 = v51;
      v98 = accountCopy;
      v99 = selfCopy;
      v100 = v95;
      v101 = commandCopy;
      v84 = v51;
      objc_msgSend_sendCommand_withAccount_completion_(v89, v90, v93, v84, v96);

LABEL_43:
      goto LABEL_44;
    }

    if (accountCopy)
    {
      v24 = objc_msgSend_copy(accountCopy, v20, v21, v22, v23);
      objc_msgSend_setDirty_forProperty_(v24, v45, 0, *MEMORY[0x29EDB8350], v46);
      objc_msgSend_setDirty_forProperty_(v24, v47, 0, *MEMORY[0x29EDB8358], v48);
      objc_msgSend_notifyRemoteDevicesOfModifiedAccount_withChangeType_(storeCopy, v49, v24, commandCopy, v50);
LABEL_44:
    }
  }

  else if ((v14 & 1) == 0)
  {
    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v112 = accountCopy;
      v113 = 2112;
      v114 = commandCopy;
      _os_log_impl(&dword_29C844000, v24, OS_LOG_TYPE_DEFAULT, "Not sending data separated account %@ through the IDS Proxy for changetype: %@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  v91 = *MEMORY[0x29EDCA608];
}

- (id)_saveOptionsForProxiedDeviceAuth
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = objc_alloc_init(MEMORY[0x29EDBFB40]);
  v62 = 0;
  v6 = objc_msgSend_anisetteDataWithError_(v2, v3, &v62, v4, v5);
  v7 = v62;
  v8 = _AALogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v8, OS_LOG_TYPE_DEFAULT, "Creating parameterized Anisette data...", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v15 = objc_msgSend_machineID(v6, v11, v12, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v16, v15, *MEMORY[0x29EDBE420], v17);

    v22 = objc_msgSend_oneTimePassword(v6, v18, v19, v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v23, v22, *MEMORY[0x29EDBE428], v24);

    v25 = MEMORY[0x29EDBA070];
    v30 = objc_msgSend_routingInfo(v6, v26, v27, v28, v29);
    v34 = objc_msgSend_numberWithUnsignedLongLong_(v25, v31, v30, v32, v33);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v35, v34, *MEMORY[0x29EDBE430], v36);

    v41 = objc_msgSend_currentDevice(MEMORY[0x29EDBFB60], v37, v38, v39, v40);
    v46 = objc_msgSend_uniqueDeviceIdentifier(v41, v42, v43, v44, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v46, *MEMORY[0x29EDBE440], v48);

    v8 = objc_msgSend_currentDevice(MEMORY[0x29EDBFB60], v49, v50, v51, v52);
    v57 = objc_msgSend_serverFriendlyDescription(v8, v53, v54, v55, v56);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v58, v57, *MEMORY[0x29EDBE438], v59);
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v64 = v7;
      _os_log_impl(&dword_29C844000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch Anisette data! Error: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v60 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)_showRedirectToBridgeAlertForAccount:(id)account
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = MEMORY[0x29EDB9F48];
  accountCopy = account;
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v4, v7, v6, v8, v9);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"BRIDGE_LOGIN_ALERT_TITLE", &stru_2A23CC258, @"Localizable");
  v17 = objc_msgSend_username(accountCopy, v13, v14, v15, v16);
  v57 = objc_msgSend_stringWithFormat_(v3, v18, v12, v19, v20, v17);

  v21 = MEMORY[0x29EDBA0F8];
  v22 = MEMORY[0x29EDB9F48];
  v23 = objc_opt_class();
  v27 = objc_msgSend_bundleForClass_(v22, v24, v23, v25, v26);
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"BRIDGE_LOGIN_ALERT_MESSAGE", &stru_2A23CC258, @"Localizable");
  v34 = objc_msgSend_username(accountCopy, v30, v31, v32, v33);

  v38 = objc_msgSend_stringWithFormat_(v21, v35, v29, v36, v37, v34);

  v39 = MEMORY[0x29EDBE3D8];
  v40 = MEMORY[0x29EDB9F48];
  v41 = objc_opt_class();
  v45 = objc_msgSend_bundleForClass_(v40, v42, v41, v43, v44);
  v47 = objc_msgSend_localizedStringForKey_value_table_(v45, v46, @"BRIDGE_LOGIN_ALERT_CANCEL", &stru_2A23CC258, @"Localizable");
  v48 = MEMORY[0x29EDB9F48];
  v49 = objc_opt_class();
  v53 = objc_msgSend_bundleForClass_(v48, v50, v49, v51, v52);
  v55 = objc_msgSend_localizedStringForKey_value_table_(v53, v54, @"BRIDGE_LOGIN_ALERT_OK", &stru_2A23CC258, @"Localizable");
  objc_msgSend_showUserNotificationWithTitle_message_cancelButtonTitle_otherButtonTitle_withCompletionBlock_(v39, v56, v57, v38, v47, v55, &unk_2A23CBE98);
}

@end