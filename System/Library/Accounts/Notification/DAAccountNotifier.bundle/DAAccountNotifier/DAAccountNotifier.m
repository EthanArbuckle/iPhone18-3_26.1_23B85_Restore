id sub_29C8B01A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_accountsWithAccountTypeIdentifier_(*(a1 + 32), a2, *(a1 + 40), a4);
  v6 = MEMORY[0x29EDB8DE8];
  v10 = objc_msgSend_count(v5, v7, v8, v9);
  v41 = objc_msgSend_arrayWithCapacity_(v6, v11, v10, v12);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v5;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v42, v46, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        v23 = objc_msgSend_identifier(v22, v16, v17, v18);
        v27 = objc_msgSend_identifier(*(a1 + 48), v24, v25, v26);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v28, v27, v29);

        if ((isEqualToString & 1) == 0)
        {
          v31 = objc_msgSend_accountTypeWithIdentifier_(*(a1 + 32), v16, *(a1 + 40), v18);
          objc_msgSend_setAccountType_(v22, v32, v31, v33);

          v38 = objc_msgSend_daAccountSubclassWithBackingAccountInfo_(MEMORY[0x29EDC0ED0], v34, v22, v35);
          if (v38)
          {
            objc_msgSend_addObject_(v41, v36, v38, v37);
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v42, v46, 16);
    }

    while (v19);
  }

  v39 = *MEMORY[0x29EDCA608];

  return v41;
}

void sub_29C8B03B8()
{
  v0 = objc_opt_new();
  objc_msgSend_addObject_(v0, v1, *MEMORY[0x29EDB8480], v2);
  objc_msgSend_addObject_(v0, v3, *MEMORY[0x29EDB8498], v4);
  objc_msgSend_addObject_(v0, v5, *MEMORY[0x29EDB8488], v6);
  objc_msgSend_addObject_(v0, v7, *MEMORY[0x29EDB84A8], v8);
  objc_msgSend_addObject_(v0, v9, *MEMORY[0x29EDB8490], v10);
  v11 = qword_2A1A11330;
  qword_2A1A11330 = v0;
}

void sub_29C8B1E78(uint64_t a1, const char *a2)
{
  v10[3] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E50];
  v3 = *MEMORY[0x29EDB8350];
  v10[0] = @"username";
  v10[1] = v3;
  v10[2] = *MEMORY[0x29EDB8358];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v10, 3);
  v7 = objc_msgSend_setWithArray_(v2, v5, v4, v6);
  v8 = qword_2A1A11320;
  qword_2A1A11320 = v7;

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29C8B1F7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v50[105] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDB8E50];
  v5 = *MEMORY[0x29EDB8198];
  v50[0] = *MEMORY[0x29EDB8188];
  v50[1] = v5;
  v6 = *MEMORY[0x29EDB81B0];
  v50[2] = *MEMORY[0x29EDB81A0];
  v50[3] = v6;
  v50[4] = *MEMORY[0x29EDB81B8];
  v50[5] = @"active";
  v50[6] = @"authenticated";
  v50[7] = @"creationDate";
  v50[8] = @"credential";
  v50[9] = @"accountDescription";
  v50[10] = @"enabledDataclasses";
  v50[11] = @"identifier";
  v50[12] = @"owningBundleID";
  v50[13] = @"parentAccountIdentifier";
  v50[14] = @"provisionedDataclasses";
  v50[15] = @"supportsAuthentication";
  v50[16] = @"accountType";
  v50[17] = @"username";
  v7 = *MEMORY[0x29EDC5C20];
  v50[18] = @"visible";
  v50[19] = v7;
  v8 = *MEMORY[0x29EDC5C30];
  v50[20] = *MEMORY[0x29EDC5C28];
  v50[21] = v8;
  v9 = *MEMORY[0x29EDC5C50];
  v50[22] = *MEMORY[0x29EDC5C40];
  v50[23] = v9;
  v10 = *MEMORY[0x29EDC5C70];
  v50[24] = *MEMORY[0x29EDC5C68];
  v50[25] = v10;
  v11 = *MEMORY[0x29EDC5C80];
  v50[26] = *MEMORY[0x29EDC5C78];
  v50[27] = v11;
  v12 = *MEMORY[0x29EDC5C38];
  v50[28] = *MEMORY[0x29EDC5C88];
  v50[29] = v12;
  v13 = *MEMORY[0x29EDC5C58];
  v50[30] = *MEMORY[0x29EDC5C48];
  v50[31] = v13;
  v50[32] = *MEMORY[0x29EDC5C60];
  v50[33] = @"MCAccountIsManaged";
  v50[34] = @"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace";
  v50[35] = @"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace";
  v50[36] = @"kCalDAVCollectionSetName";
  v50[37] = @"CalAccountPropertyCalDAVLocalDataMigrationHasTakenPlace";
  v50[38] = @"kCalDAVPrincipalIsManuallyConfigured";
  v50[39] = @"kCalDAVPrincipalPathKey";
  v50[40] = @"CalAccountPropertyCalDAVSkipCredentialVerification";
  v50[41] = @"CalAccountPropertyCalDAVSyncHasTakenPlace";
  v50[42] = @"kCalDAVUseKerberos";
  v50[43] = @"kCalDAVWebServicesRecordGUID";
  v50[44] = @"kCalDAVDelegatePrincipalIsWriteableKey";
  v50[45] = @"kCalDAVDelegatePrincipalTitleKey";
  v50[46] = @"CalAccountPropertyExchangeUseExternalURL";
  v50[47] = @"kCalDAVMainPrincipalUIDKey";
  v50[48] = @"kCalDAVPrincipalIsDelegate";
  v50[49] = @"kCalDAVPrincipalsKey";
  v50[50] = @"kCalDAVPushDisabled";
  v50[51] = @"kCalDAVRefreshIntervalKey";
  v50[52] = @"DAAccountValidationDomain";
  v50[53] = @"CalDAVAccountVersion";
  v50[54] = @"CalDAVHostKey";
  v50[55] = @"CalDAVMainPrincipalUID";
  v50[56] = @"CalDAVMobileAccountCollectionSetName";
  v50[57] = @"CalDAVMobileAccountIsWritable";
  v50[58] = @"CalDAVMobileAccountOverriddenPort";
  v50[59] = @"CalDAVMobileAccountOverriddenScheme";
  v50[60] = @"CalDAVMobileAccountOverriddenServer";
  v50[61] = @"CalDAVMobileAccountSearchPropertySet";
  v50[62] = @"CalDAVMobileAccountSearchPropertySetKey_CoreDAV";
  v50[63] = @"CalDAVMobileAccountServerVersion";
  v50[64] = @"WasUpgradedFromLegacy";
  v50[65] = @"CalDAVPortKey";
  v50[66] = @"CalDAVPrincipals";
  v50[67] = @"CalDAVSchemeKey";
  v14 = objc_msgSend_CalDAVSubscribedCalendarsKey(MEMORY[0x29EDC0F30], a2, a3, a4);
  v50[68] = v14;
  v18 = objc_msgSend_DAAccountDoNotSaveReason(MEMORY[0x29EDC0F30], v15, v16, v17);
  v50[69] = v18;
  v50[70] = @"DAAccountEmailAddress";
  v50[71] = @"DAAccountHost";
  v22 = objc_msgSend_DAAccountIdentifiersToIgnoreForUniquenessCheck(MEMORY[0x29EDC0F30], v19, v20, v21);
  v50[72] = v22;
  v50[73] = @"DAOldKeychainURLs";
  v50[74] = @"DAAccountPersistentUUID";
  v50[75] = @"DAAccountPort";
  v26 = objc_msgSend_DAAccountPrincipalPath(MEMORY[0x29EDC0F30], v23, v24, v25);
  v50[77] = @"ACUIDisplayUsername";
  v50[78] = @"DAAccountUseSSL";
  v50[79] = @"DAAccountUseTrustedSSLCertificate";
  v50[80] = @"DAAccountVersion2";
  v50[81] = @"DAAcountWasUpgradedFromLegacyAccount";
  v50[82] = @"DAAccountDidAutodiscover";
  v50[83] = @"DAEASEndPointFQDN";
  v50[84] = @"DAEncryptionIdentityPersistentReference";
  v50[85] = @"DAExchangeOAuthSupportedKey";
  v50[86] = @"DAExchangeOAuthURI";
  v50[87] = @"DAExchangeOAuthTokenRequestURI";
  v50[88] = @"DAIdentityPersist";
  v50[89] = @"DAIdentityPersistIsManagedByProfile";
  v50[90] = @"DASigningIdentityPersistentReference";
  v50[91] = @"DATrustSettingsExceptions";
  v50[76] = v26;
  v50[92] = @"SubCalCalDAVURL";
  v50[93] = @"SubCalExtRep";
  v30 = objc_msgSend_SubCalFilterAlarmsKey(MEMORY[0x29EDC0F30], v27, v28, v29);
  v50[94] = v30;
  v50[95] = @"FilterAttachments";
  v50[96] = @"com.apple.ical.urlsubscribe.filtertasks";
  v50[97] = @"isManagedByServer";
  v50[98] = @"RefreshInterval";
  v50[99] = @"SubCalShouldRemoveAlarms";
  v34 = objc_msgSend_SubCalSubscriptionURLKey(MEMORY[0x29EDC0F30], v31, v32, v33);
  v50[100] = v34;
  v50[101] = @"SubCalSyncId";
  v38 = objc_msgSend_SubCalTitleKey(MEMORY[0x29EDC0F30], v35, v36, v37);
  v50[102] = v38;
  v50[103] = @"SubCalAccountVersion";
  v42 = objc_msgSend_SubCalInsecureConnectionApproved(MEMORY[0x29EDC0F30], v39, v40, v41);
  v50[104] = v42;
  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v43, v50, 105);
  v47 = objc_msgSend_setWithArray_(v4, v45, v44, v46);
  v48 = qword_2A1A11340;
  qword_2A1A11340 = v47;

  v49 = *MEMORY[0x29EDCA608];
}

void sub_29C8B2878(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a1, a2, @"DAAccountNotifier.m", 568, @"account should not be nil for a change type of modify");
}

void sub_29C8B28EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a1, a2, @"DAAccountNotifier.m", 569, @"oldAccount should not be nil for a change type of modify");
}