uint64_t sub_29C87B948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C87B988()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C87B9C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

id sub_29C87B9FC(void *a1, const char *a2)
{
  v2 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"lastAuthenticated");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_29C87BEF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v74 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v6)
  {
    v6 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v4, v5);
  }

  v7 = objc_msgSend_OSLogObject(v6, v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v70 = 138543618;
    v71 = v9;
    v72 = 2114;
    v73 = v10;
    _os_log_impl(&dword_29C87A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing the change.", &v70, 0x16u);
  }

  v12 = *(a1 + 64);
  switch(v12)
  {
    case 3:
      objc_msgSend__processAccountDeletion_inStore_(*(a1 + 32), v11, *(a1 + 56), *(a1 + 48));
      break;
    case 2:
      objc_msgSend__processAccountModification_oldAccount_inStore_(*(a1 + 32), v11, *(a1 + 40), *(a1 + 56), *(a1 + 48));
      break;
    case 1:
      objc_msgSend__processAccountAddition_inStore_(*(a1 + 32), v11, *(a1 + 40), *(a1 + 48));
      break;
  }

  objc_msgSend__processPrivacyAcknowledgementForAccount_oldAccount_(*(a1 + 32), v11, *(a1 + 40), *(a1 + 56));
  v13 = *(a1 + 40);
  if (!v13)
  {
    v13 = *(a1 + 56);
  }

  v14 = v13;
  if (objc_msgSend_ams_isiTunesAccount(v14, v15, v16))
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    objc_msgSend__postAccountsChangedNotificationsIfNeededForAccount_oldAccount_changeType_(v20, v21, *(a1 + 40), *(a1 + 56), *(a1 + 64));
    isActive = objc_msgSend_isActive(*(a1 + 56), v22, v23);
    if (isActive != objc_msgSend_isActive(*(a1 + 40), v25, v26))
    {
      v27 = *(a1 + 32);
      v28 = objc_opt_class();
      objc_msgSend__postActiveAccountChangedNotification(v28, v29, v30);
      v33 = objc_msgSend_registerTokensIfNeeded(MEMORY[0x29EDBFA20], v31, v32);
    }

    v34 = *(a1 + 32);
    v35 = objc_opt_class();
    objc_msgSend__postStorefontChangedNotificationIfNeededForAccount_oldAccount_store_(v35, v36, *(a1 + 40), *(a1 + 56), *(a1 + 48));
    if (*(a1 + 64) != 3)
    {
      v37 = *(a1 + 32);
      v38 = objc_opt_class();
      objc_msgSend__updateLocalAccountStorefrontIfNeededForAccount_store_(v38, v39, *(a1 + 40), *(a1 + 48));
      if (*(a1 + 64) == 2)
      {
        v40 = *(a1 + 32);
        v41 = objc_opt_class();
        objc_msgSend__postEligibilityOverrideNotificationIfNeededForAccount_oldAccount_(v41, v42, *(a1 + 40), *(a1 + 56));
      }
    }

    v43 = NSClassFromString(&cfstr_Amsaccountscha.isa);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_performSelector_withObject_(v43, v44, sel__processChangedAccount_, v14);
    }

    else
    {
      v57 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v44, v45);
      if (!v57)
      {
        v57 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v55, v56);
      }

      v58 = objc_msgSend_OSLogObject(v57, v55, v56);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = *(a1 + 32);
        v60 = objc_opt_class();
        v61 = AMSLogKey();
        v70 = 138543618;
        v71 = v60;
        v72 = 2114;
        v73 = v61;
        _os_log_impl(&dword_29C87A000, v58, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to notify AMSAccountsChangedObservables of the change.", &v70, 0x16u);
      }
    }
  }

  else if (objc_msgSend_ams_isiCloudAccount(v14, v17, v18))
  {
    v48 = objc_msgSend_isActive(*(a1 + 56), v46, v47);
    if (v48 != objc_msgSend_isActive(*(a1 + 40), v49, v50))
    {
      v51 = *(a1 + 32);
      v52 = objc_opt_class();
      objc_msgSend__postActiveiCloudAccountChangedNotification(v52, v53, v54);
    }
  }

  v64 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v46, v47);
  if (!v64)
  {
    v64 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v62, v63);
  }

  v65 = objc_msgSend_OSLogObject(v64, v62, v63);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(a1 + 32);
    v67 = objc_opt_class();
    v68 = AMSLogKey();
    v70 = 138543618;
    v71 = v67;
    v72 = 2114;
    v73 = v68;
    _os_log_impl(&dword_29C87A000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished processing account:didChange:.", &v70, 0x16u);
  }

  v69 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C87CC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isActive(v3, v4, v5))
  {
    isDuplicate = 0;
  }

  else
  {
    isDuplicate = objc_msgSend_ams_isDuplicate_(*(a1 + 32), v6, v3);
  }

  return isDuplicate;
}

void sub_29C87D0D4(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = a2;
  if ((objc_msgSend_isActive(v5, v6, v7) & 1) == 0 && objc_msgSend_ams_isDuplicate_(*(a1 + 32), v8, v5))
  {
    v13 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v9, v10);
    if (!v13)
    {
      v13 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v11, v12);
    }

    v14 = objc_msgSend_OSLogObject(v13, v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = *(a1 + 32);
      v19 = AMSHashIfNeeded();
      v20 = AMSHashIfNeeded();
      v23 = 138544130;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_29C87A000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found a non-active account that is a duplicate of the account we’re trying to save. Ignoring. account = %{public}@ | existingAccount = %{public}@", &v23, 0x2Au);
    }

    objc_msgSend_removeObjectAtIndex_(*(a1 + 48), v21, a3);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_29C87D984(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3221225472;
  v49[2] = sub_29C87DDF4;
  v49[3] = &unk_29F32BB18;
  v5 = v3;
  v50 = v5;
  v7 = objc_msgSend_ams_firstObjectPassingTest_(v4, v6, v49);
  v8 = *(a1 + 40);
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 3221225472;
  v46 = sub_29C87DE00;
  v47 = &unk_29F32BB18;
  v9 = v5;
  v48 = v9;
  v13 = objc_msgSend_ams_firstObjectPassingTest_(v8, v10, &v44);
  if (v7 && (objc_msgSend_containsObject_(*(a1 + 48), v11, v7, v44, v45, v46, v47) & 1) != 0 || v13 && (objc_msgSend_containsObject_(*(a1 + 48), v11, v13) & 1) != 0)
  {
    goto LABEL_33;
  }

  v14 = 0x29EDBF000uLL;
  if (!v7)
  {
    v19 = objc_msgSend_sharedAccountsOversizeConfig(MEMORY[0x29EDBF9F0], v11, v12);
    if (!v19)
    {
      v19 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v26, v27);
    }

    v20 = objc_msgSend_OSLogObject(v19, v26, v27, v44, v45, v46, v47);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v28 = *(a1 + 56);
    v29 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSHashIfNeeded();
    *buf = 138543874;
    v52 = v29;
    v14 = 0x29EDBF000uLL;
    v53 = 2114;
    v54 = v23;
    v55 = 2114;
    v56 = v24;
    _os_log_impl(&dword_29C87A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cookie ADDED. cookie = %{public}@", buf, 0x20u);
    goto LABEL_15;
  }

  if (objc_msgSend_isEqual_(v7, v11, v13))
  {
    goto LABEL_17;
  }

  v19 = objc_msgSend_sharedAccountsOversizeConfig(MEMORY[0x29EDBF9F0], v15, v16);
  if (!v19)
  {
    v19 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v17, v18);
  }

  v20 = objc_msgSend_OSLogObject(v19, v17, v18, v44, v45, v46, v47);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 56);
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSHashIfNeeded();
    v25 = AMSHashIfNeeded();
    *buf = 138544130;
    v52 = v22;
    v14 = 0x29EDBF000;
    v53 = 2114;
    v54 = v23;
    v55 = 2114;
    v56 = v24;
    v57 = 2114;
    v58 = v25;
    _os_log_impl(&dword_29C87A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cookie MODIFIED. oldCookie = %{public}@ | newCookie = %{public}@", buf, 0x2Au);

LABEL_15:
  }

LABEL_16:

LABEL_17:
  if ((objc_msgSend_ams_isExpired(v13, v15, v16, v44, v45, v46, v47) & 1) != 0 || objc_msgSend_ams_isDeleted(v13, v30, v31))
  {
    if (objc_msgSend_ams_isDeleted(v13, v30, v31))
    {
      v34 = @"DELETED";
    }

    else if (objc_msgSend_ams_isExpired(v13, v32, v33))
    {
      v34 = @"EXPIRED";
    }

    else
    {
      v34 = @"UNKNOWN";
    }

    v37 = objc_msgSend_sharedAccountsOversizeConfig(*(v14 + 2544), v32, v33);
    if (!v37)
    {
      v37 = objc_msgSend_sharedConfig(*(v14 + 2544), v35, v36);
    }

    v38 = objc_msgSend_OSLogObject(v37, v35, v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 56);
      v40 = objc_opt_class();
      v41 = AMSLogKey();
      v42 = AMSHashIfNeeded();
      *buf = 138544130;
      v52 = v40;
      v53 = 2114;
      v54 = v41;
      v55 = 2114;
      v56 = v34;
      v57 = 2114;
      v58 = v42;
      _os_log_impl(&dword_29C87A000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cookie DELETED. reason = %{public}@ | cookie = %{public}@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    objc_msgSend_addObject_(*(a1 + 48), v30, v7);
  }

  if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 48), v30, v13);
  }

LABEL_33:

  v43 = *MEMORY[0x29EDCA608];
}

void sub_29C87DED0(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if ((objc_msgSend_isEqualToString_(v5, v7, @"cookies") & 1) == 0)
  {
    v12 = objc_msgSend_sharedAccountsOversizeConfig(MEMORY[0x29EDBF9F0], v8, v9);
    if (!v12)
    {
      v12 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v10, v11);
    }

    v13 = objc_msgSend_OSLogObject(v12, v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v19 = objc_msgSend_first(v6, v17, v18);
      v20 = AMSHashIfNeeded();
      v23 = objc_msgSend_second(v6, v21, v22);
      v24 = AMSHashIfNeeded();
      v26 = 138544386;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v5;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v24;
      _os_log_impl(&dword_29C87A000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@: value = %{public}@ | oldValue = %{public}@", &v26, 0x34u);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

id sub_29C87E234(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDB9FC0];
  v3 = a2;
  v4 = [v2 alloc];
  v6 = objc_msgSend_initWithProperties_(v4, v5, v3);

  return v6;
}

void sub_29C87E28C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x29EDB9FC0];
  v4 = a2;
  v5 = [v3 alloc];
  v7 = objc_msgSend_initWithProperties_(v5, v6, v4);

  v8 = *(a1 + 32);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C87E35C;
  v12[3] = &unk_29F32BB18;
  v13 = v7;
  v9 = v7;
  objc_msgSend_ams_removeObjectsPassingTest_(v8, v10, v12);
  objc_msgSend_addObject_(*(a1 + 32), v11, v9);
}

uint64_t sub_29C87E368(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_ams_isExpired(v2, v3, v4))
  {
    isDeleted = 1;
  }

  else
  {
    isDeleted = objc_msgSend_ams_isDeleted(v2, v5, v6);
  }

  return isDeleted;
}

void sub_29C87F95C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x29EDB83C8], a2, a3);
  objc_msgSend_removeAccount_withCompletionHandler_(v5, v4, *(a1 + 32), &unk_2A23CFC48);
}

void sub_29C87FA6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x29EDB83C8], a2, a3);
  v5 = objc_msgSend_ams_saveAccount_(v6, v4, *(a1 + 32));
}

void sub_29C880630(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v5)
  {
    v5 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v3, v4);
  }

  v6 = objc_msgSend_OSLogObject(v5, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_29C87A000, v6, OS_LOG_TYPE_DEFAULT, "AMSAccountNotificationPlugin: [%{public}@] Successfully authenticated the iCloud account with iTunes.", &v9, 0xCu);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C880718(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v3, v4);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = AMSLogKey();
    v10 = AMSLogableError();
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_ERROR, "AMSAccountNotificationPlugin: [%{public}@] Failed to authenticate the iCloud account with iTunes. error = %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x29EDCA608];
}

id sub_29C880834()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_2A17957A0;
  v7 = qword_2A17957A0;
  if (!qword_2A17957A0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = sub_29C884B40;
    v3[3] = &unk_29F32BD18;
    v3[4] = &v4;
    sub_29C884B40(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_29C88A324();
  }

  v1 = *v0;

  return v1;
}

void sub_29C8808FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C880914(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v5)
  {
    v5 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v3, v4);
  }

  v6 = objc_msgSend_OSLogObject(v5, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_29C87A000, v6, OS_LOG_TYPE_DEFAULT, "AMSAccountNotificationPlugin: [%{public}@] Apple ID GDPR acknowledgement recorded.", &v9, 0xCu);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C8809FC(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v3, v4);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = AMSLogKey();
    v10 = AMSLogableError();
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_ERROR, "AMSAccountNotificationPlugin: [%{public}@] Failed to recording Apple ID GDPR acknowledgement.. error = %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_29C881B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29C881B98(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v6 = objc_msgSend_domain(v3, v4, v5);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x29EDBF968]))
  {
    v10 = objc_msgSend_code(v3, v8, v9);

    if (v10 == 7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v11, v12);
  if (!v15)
  {
    v15 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v13, v14);
  }

  v16 = objc_msgSend_OSLogObject(v15, v13, v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v18 = objc_opt_class();
    v19 = v18;
    v20 = AMSLogKey();
    v22 = 138543618;
    v23 = v18;
    v24 = 2114;
    v25 = v20;
    _os_log_impl(&dword_29C87A000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove follow-ups after signing out of an account.", &v22, 0x16u);
  }

LABEL_10:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29C881D10(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v20, v24, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = objc_msgSend_identifier(v11, v6, v7);
        v16 = objc_msgSend_account(v11, v14, v15);
        v18 = objc_msgSend_clearFollowUpWithIdentifier_account_(v12, v17, v13, v16);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v20, v24, 16);
    }

    while (v8);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_29C881F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C882444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C884AF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AMSSetLogKey();
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void *sub_29C884B40(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  if (!qword_2A17957A8)
  {
    v6[1] = MEMORY[0x29EDCA5F8];
    v6[2] = 3221225472;
    v6[3] = sub_29C884C80;
    v6[4] = &unk_29F32BD50;
    v6[5] = v6;
    v7 = xmmword_29F32BD38;
    v8 = 0;
    qword_2A17957A8 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_2A17957A8;
    if (qword_2A17957A8)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_2A17957A8;
LABEL_5:
  result = dlsym(v2, "OBPrivacyAppleIDIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A17957A0 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C884C80(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A17957A8 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class sub_29C884CF4(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A17957B8)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C884E38;
    v5[4] = &unk_29F32BD50;
    v5[5] = v5;
    v6 = xmmword_29F32BD70;
    v7 = 0;
    qword_2A17957B8 = _sl_dlopen();
    v2 = v5[0];
    if (qword_2A17957B8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RadioModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A348();
  }

  qword_2A17957B0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C884E38(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A17957B8 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class sub_29C884EAC(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A17957C8)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C884FF0;
    v5[4] = &unk_29F32BD50;
    v5[5] = v5;
    v6 = xmmword_29F32BD88;
    v7 = 0;
    qword_2A17957C8 = _sl_dlopen();
    v2 = v5[0];
    if (qword_2A17957C8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SSVSubscriptionStatusCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A370();
  }

  qword_2A17957C0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C884FF0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A17957C8 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class sub_29C885064(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A17957D8)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C8851A8;
    v5[4] = &unk_29F32BD50;
    v5[5] = v5;
    v6 = xmmword_29F32BDA0;
    v7 = 0;
    qword_2A17957D8 = _sl_dlopen();
    v2 = v5[0];
    if (qword_2A17957D8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A398();
  }

  qword_2A17957D0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C8851A8(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A17957D8 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29C88521C(void *a1, uint64_t a2, void *a3)
{
  v67 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (objc_msgSend_ams_isLocalAccount(v4, v5, v6))
  {
    v9 = MEMORY[0x29EDBF9B8];
    v10 = AMSError();
    v12 = objc_msgSend_promiseWithError_(v9, v11, v10);
  }

  else
  {
    v15 = objc_msgSend_sharedPrivacyConfig(MEMORY[0x29EDBF9F0], v7, v8);
    if (!v15)
    {
      v15 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v13, v14);
    }

    v16 = objc_msgSend_OSLogObject(v15, v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = AMSHashIfNeeded();
      v22 = objc_msgSend_ams_privacyAcknowledgement(v4, v20, v21);
      *buf = 138544130;
      v60 = v17;
      v61 = 2114;
      v62 = v18;
      v63 = 2114;
      v64 = v19;
      v65 = 2114;
      v66 = v22;
      _os_log_impl(&dword_29C87A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Syncing privacy acknowledgement. account = %{public}@ | privacyAcknowledgement = %{public}@", buf, 0x2Au);
    }

    v54 = objc_msgSend_ams_bagForProcessInfo_(MEMORY[0x29EDBF9B0], v23, 0);
    v24 = objc_alloc(MEMORY[0x29EDBFA38]);
    v26 = objc_msgSend_initWithBag_(v24, v25, v54);
    objc_msgSend_setAccount_(v26, v27, v4);
    objc_msgSend_setDialogOptions_(v26, v28, 1);
    v29 = AMSLogKey();
    objc_msgSend_setLogUUID_(v26, v30, v29);

    v31 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v34 = objc_msgSend_deviceGUID(MEMORY[0x29EDBF9D0], v32, v33);
    objc_msgSend_ams_setNullableObject_forKey_(v31, v35, v34, *MEMORY[0x29EDBF980]);

    v38 = objc_msgSend_ams_privacyAcknowledgement(v4, v36, v37);
    objc_msgSend_ams_setNullableObject_forKey_(v31, v39, v38, @"privacyAcknowledgement");

    v41 = objc_msgSend_URLForKey_(v54, v40, @"privacyAcknowledgementUrl");
    v43 = objc_msgSend_requestWithMethod_bagURL_parameters_(v26, v42, 4, v41, v31);
    v45 = objc_msgSend_thenWithBlock_(v43, v44, &unk_2A23CFCE8);
    v46 = AMSLogKey();
    objc_initWeak(buf, a1);
    v55[0] = MEMORY[0x29EDCA5F8];
    v55[1] = 3221225472;
    v55[2] = sub_29C885668;
    v55[3] = &unk_29F32BE08;
    v47 = v46;
    v56 = v47;
    objc_copyWeak(&v58, buf);
    v57 = v4;
    v49 = objc_msgSend_thenWithBlock_(v45, v48, v55);
    v12 = objc_msgSend_binaryPromiseAdapter(v49, v50, v51);

    objc_destroyWeak(&v58);
    objc_destroyWeak(buf);
  }

  v52 = *MEMORY[0x29EDCA608];

  return v12;
}

void sub_29C8855D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_29C8855F8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDBFA40];
  v3 = a2;
  v6 = objc_msgSend_defaultSession(v2, v4, v5);
  v8 = objc_msgSend_dataTaskPromiseWithRequest_(v6, v7, v3);

  return v8;
}

id sub_29C885668(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = AMSSetLogKey();
  v8 = objc_msgSend_object(v3, v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = objc_msgSend_sharedPrivacyConfig(MEMORY[0x29EDBF9F0], v10, v11);
  v15 = v12;
  if (v9)
  {
    if (!v12)
    {
      v15 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v13, v14);
    }

    v16 = objc_msgSend_OSLogObject(v15, v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v49 = 138543618;
      v50 = v18;
      v51 = 2114;
      v52 = v19;
      _os_log_impl(&dword_29C87A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully synced the privacy acknowledgement.", &v49, 0x16u);
    }

    if (objc_msgSend_ams_mergePrivacyAcknowledgement_(*(a1 + 40), v20, v9))
    {
      v25 = objc_msgSend_sharedPrivacyConfig(MEMORY[0x29EDBF9F0], v21, v22);
      if (!v25)
      {
        v25 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v23, v24);
      }

      v26 = objc_msgSend_OSLogObject(v25, v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_loadWeakRetained((a1 + 48));
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        v49 = 138543618;
        v50 = v28;
        v51 = 2114;
        v52 = v29;
        _os_log_impl(&dword_29C87A000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The server sent updated privacy acknowledgement.", &v49, 0x16u);
      }

      objc_msgSend_ams_setDisablePrivacyAcknowledgementSync_(*(a1 + 40), v30, 1);
      v33 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x29EDB83C8], v31, v32);
      v35 = objc_msgSend_ams_saveAccount_verifyCredentials_(v33, v34, *(a1 + 40), 0);
    }

    v36 = objc_msgSend_promiseWithResult_(MEMORY[0x29EDBFA18], v21, MEMORY[0x29EDB8EB0]);
  }

  else
  {
    if (!v12)
    {
      v15 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v13, v14);
    }

    v37 = objc_msgSend_OSLogObject(v15, v13, v14);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_loadWeakRetained((a1 + 48));
      v39 = objc_opt_class();
      v40 = AMSLogKey();
      v43 = objc_msgSend_object(v3, v41, v42);
      v49 = 138543874;
      v50 = v39;
      v51 = 2114;
      v52 = v40;
      v53 = 2114;
      v54 = v43;
      _os_log_impl(&dword_29C87A000, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The response was invalid. response = %{public}@", &v49, 0x20u);
    }

    v44 = MEMORY[0x29EDBFA18];
    v45 = AMSError();
    v36 = objc_msgSend_promiseWithError_(v44, v46, v45);
  }

  v47 = *MEMORY[0x29EDCA608];

  return v36;
}

void sub_29C885B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C885C68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29C885C84(uint64_t a1, void *a2)
{
  v127 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v5 = AMSSetLogKey();
  v10 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v6, v7);
  if (!v10)
  {
    v10 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v8, v9);
  }

  v11 = objc_msgSend_OSLogObject(v10, v8, v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    *buf = 138543618;
    v122 = v12;
    v123 = 2114;
    v124 = v13;
    _os_log_impl(&dword_29C87A000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Running the logout task.", buf, 0x16u);
  }

  v15 = objc_msgSend_ams_bagForProcessInfo_(MEMORY[0x29EDBF9B0], v14, 0);
  v16 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v19 = objc_msgSend_account(*(a1 + 40), v17, v18);
  isLocalAccount = objc_msgSend_ams_isLocalAccount(v19, v20, v21);

  if (isLocalAccount)
  {
    v27 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v23, v24);
    if (!v27)
    {
      v27 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v25, v26);
    }

    v28 = objc_msgSend_OSLogObject(v27, v25, v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      v33 = objc_msgSend_account(*(a1 + 40), v31, v32);
      v34 = AMSHashIfNeeded();
      *buf = 138543874;
      v122 = v29;
      v123 = 2114;
      v124 = v30;
      v125 = 2114;
      v126 = v34;
      _os_log_impl(&dword_29C87A000, v28, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Preventing attempted logout of local account. account = %{public}@", buf, 0x20u);
    }

    AMSError();
    *a2 = v35 = 0;
    goto LABEL_45;
  }

  v120 = 0;
  v35 = objc_msgSend__revokeMusicKitUserTokensWithError_(WeakRetained, v23, &v120);
  v38 = v120;
  if ((v35 & 1) == 0)
  {
    v41 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v36, v37);
    if (!v41)
    {
      v41 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v39, v40);
    }

    v42 = objc_msgSend_OSLogObject(v41, v39, v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      AMSLogKey();
      v44 = v115 = v15;
      v45 = AMSLogableError();
      *buf = 138543874;
      v122 = v43;
      v123 = 2114;
      v124 = v44;
      v125 = 2114;
      v126 = v45;
      _os_log_impl(&dword_29C87A000, v42, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error revoking user music token. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v16, v46, v38);
    v38 = 0;
  }

  v119 = v38;
  v47 = objc_msgSend__disableAutomaticDownloadKindsWithError_(WeakRetained, v36, &v119, v115);
  v48 = v119;

  if ((v47 & 1) == 0)
  {
    v53 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v49, v50);
    if (!v53)
    {
      v53 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v51, v52);
    }

    v54 = objc_msgSend_OSLogObject(v53, v51, v52);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = AMSLogKey();
      v57 = AMSLogableError();
      *buf = 138543874;
      v122 = v55;
      v123 = 2114;
      v124 = v56;
      v125 = 2114;
      v126 = v57;
      _os_log_impl(&dword_29C87A000, v54, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error disabling automatic download kinds. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v16, v58, v48);
    v35 = 0;
    v48 = 0;
  }

  v118 = v48;
  v59 = objc_msgSend__disableBookkeeperWithBag_error_(WeakRetained, v49, v15, &v118);
  v60 = v118;

  if ((v59 & 1) == 0)
  {
    v65 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v61, v62);
    if (!v65)
    {
      v65 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v63, v64);
    }

    v66 = objc_msgSend_OSLogObject(v65, v63, v64);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = objc_opt_class();
      v68 = AMSLogKey();
      v69 = AMSLogableError();
      *buf = 138543874;
      v122 = v67;
      v123 = 2114;
      v124 = v68;
      v125 = 2114;
      v126 = v69;
      _os_log_impl(&dword_29C87A000, v66, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error disabling bookkeeper. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v16, v70, v60);
    v35 = 0;
    v60 = 0;
  }

  v117 = v60;
  v71 = objc_msgSend__sendLogoutRequestWithBag_error_(WeakRetained, v61, v15, &v117);
  v72 = v117;

  if ((v71 & 1) == 0)
  {
    v77 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v73, v74);
    if (!v77)
    {
      v77 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v75, v76);
    }

    v78 = objc_msgSend_OSLogObject(v77, v75, v76);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = objc_opt_class();
      v80 = AMSLogKey();
      v81 = AMSLogableError();
      *buf = 138543874;
      v122 = v79;
      v123 = 2114;
      v124 = v80;
      v125 = 2114;
      v126 = v81;
      _os_log_impl(&dword_29C87A000, v78, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error sending logout request. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v16, v82, v72);
    v35 = 0;
    v72 = 0;
  }

  if (objc_msgSend_count(v16, v73, v74) >= 2)
  {
    v85 = AMSErrorWithMultipleUnderlyingErrors();
LABEL_39:
    v87 = v85;

    v72 = v87;
    goto LABEL_40;
  }

  if (objc_msgSend_count(v16, v83, v84) == 1)
  {
    v85 = objc_msgSend_objectAtIndexedSubscript_(v16, v86, 0);
    goto LABEL_39;
  }

LABEL_40:
  v88 = v72;
  *a2 = v72;
  v89 = objc_opt_class();
  v92 = objc_msgSend_account(WeakRetained, v90, v91);
  v95 = objc_msgSend_ams_DSID(v92, v93, v94);
  objc_msgSend__resetServerDataCacheForAccountWithDSID_(v89, v96, v95);

  v97 = objc_opt_class();
  v100 = objc_msgSend_account(WeakRetained, v98, v99);
  v103 = objc_msgSend_ams_accountID(v100, v101, v102);
  objc_msgSend__performDaemonSignOutTasksForAccountWithID_(v97, v104, v103);

  v109 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v105, v106);
  if (!v109)
  {
    v109 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v107, v108);
  }

  v110 = objc_msgSend_OSLogObject(v109, v107, v108);
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    v111 = objc_opt_class();
    v112 = AMSLogKey();
    *buf = 138543618;
    v122 = v111;
    v123 = 2114;
    v124 = v112;
    _os_log_impl(&dword_29C87A000, v110, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Finished running the logout task.", buf, 0x16u);
  }

LABEL_45:
  v113 = *MEMORY[0x29EDCA608];
  return v35;
}

Class sub_29C88706C(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A17957E8)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C8871B0;
    v5[4] = &unk_29F32BD50;
    v5[5] = v5;
    v6 = xmmword_29F32BE78;
    v7 = 0;
    qword_2A17957E8 = _sl_dlopen();
    v2 = v5[0];
    if (qword_2A17957E8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICCloudServiceStatusMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A3C0();
  }

  qword_2A17957E0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C8871B0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A17957E8 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29C887224(void *a1, const char *a2)
{
  v2 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"accountFlags");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_29C887298()
{
  v0 = sub_29C88A498();
  sub_29C888C60(v0, qword_2A1795730);
  sub_29C888BE0(v0, qword_2A1795730);
  return sub_29C88A468();
}

void sub_29C8872E4(void *a1)
{
  sub_29C88730C(a1);

  sub_29C887574();
}

uint64_t sub_29C88730C(void *a1)
{
  v3 = (*(*(sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v5 = &v16 - v4;
  v6 = [a1 ams_DSID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_29C88A508();
    sub_29C888CC4(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = v7;
    sub_29C8890A0(0, 0, v5, &unk_29C88B348, v9);
  }

  else
  {
    if (qword_2A1795728 != -1)
    {
      sub_29C888F80(&qword_2A1795728);
    }

    v11 = sub_29C88A498();
    sub_29C888BE0(v11, qword_2A1795730);
    sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
    v12 = sub_29C88A428();
    sub_29C889004(v12);
    v14 = *(v13 + 72);
    sub_29C889094();
    *(swift_allocObject() + 16) = xmmword_29C88B260;
    v15 = AMSSetLogKeyIfNeeded();
    sub_29C88A4B8();

    type metadata accessor for AccountStorefrontChangeResponder();
    sub_29C88A418();

    sub_29C88A3E8();
    sub_29C88A478();
  }
}

void sub_29C887574()
{
  v0 = [objc_opt_self() createBagForSubProfile];
  if (v0)
  {
    v1 = v0;
    if (qword_2A1795728 != -1)
    {
      sub_29C888F80(&qword_2A1795728);
    }

    v2 = sub_29C88A498();
    sub_29C888BE0(v2, qword_2A1795730);
    sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
    v3 = sub_29C88A428();
    sub_29C889004(v3);
    v5 = *(v4 + 72);
    sub_29C889094();
    *(swift_allocObject() + 16) = xmmword_29C88B260;
    v6 = AMSSetLogKeyIfNeeded();
    sub_29C88A4B8();

    type metadata accessor for AccountStorefrontChangeResponder();
    sub_29C88A418();

    sub_29C88A3E8();
    sub_29C88A488();

    v7 = [objc_allocWithZone(MEMORY[0x29EDBF9E0]) init];
    [v7 setOrigin_];
    v9 = [objc_allocWithZone(MEMORY[0x29EDBF9D8]) initWithBag_];
    v8 = [v9 syncWithRequest_];
  }
}

uint64_t sub_29C887810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x2A1C73D48](sub_29C887830, 0, 0);
}

uint64_t sub_29C887830()
{
  sub_29C889014();
  v1 = [objc_allocWithZone(MEMORY[0x29EDBFA28]) init];
  v0[5] = sub_29C888DAC();
  v0[6] = &off_2A23CFD08;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_29C8878FC;
  v3 = v0[16];

  return sub_29C887DE0(v3, (v0 + 2));
}

uint64_t sub_29C8878FC()
{
  sub_29C889014();
  sub_29C889040();
  v3 = v2;
  v4 = *(v2 + 136);
  v5 = *v1;
  sub_29C888FB0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = sub_29C887BA8;
  }

  else
  {
    sub_29C888EE0((v3 + 16));
    v7 = sub_29C887A08;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29C887A08()
{
  if (qword_2A1795728 != -1)
  {
    sub_29C888F80(&qword_2A1795728);
  }

  v1 = *(v0 + 120);
  v2 = sub_29C88A498();
  sub_29C888BE0(v2, qword_2A1795730);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v3 = sub_29C88A428();
  sub_29C889004(v3);
  v5 = *(v4 + 72);
  sub_29C889094();
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v6 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  type metadata accessor for AccountStorefrontChangeResponder();
  sub_29C88A418();

  sub_29C88A3E8();
  sub_29C88A488();

  sub_29C888FF8();

  return v7();
}

uint64_t sub_29C887BA8()
{
  sub_29C888EE0(v0 + 2);
  if (qword_2A1795728 != -1)
  {
    sub_29C888F80(&qword_2A1795728);
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = sub_29C88A498();
  sub_29C888BE0(v3, qword_2A1795730);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v4 = sub_29C88A428();
  sub_29C889004(v4);
  v6 = *(v5 + 72);
  sub_29C889094();
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v7 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  type metadata accessor for AccountStorefrontChangeResponder();
  sub_29C88A418();

  sub_29C88A518();

  swift_getErrorValue();
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[13];
  v11 = sub_29C88A528();
  MEMORY[0x29ED47170](v11);

  v0[10] = MEMORY[0x29EDC99B0];
  v0[7] = 0xD000000000000016;
  v0[8] = 0x800000029C88BD10;
  sub_29C88A408();
  sub_29C888DF0((v0 + 7));
  sub_29C88A478();

  sub_29C888FF8();

  return v12();
}

uint64_t sub_29C887DE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_29C888FA0();
}

uint64_t sub_29C887DF4()
{
  v1 = *(v0 + 24);
  v2 = v1[4];
  sub_29C888F2C(v1, v1[3]);
  v3 = *(v2 + 8);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v6 = sub_29C889020(v5);

  return v7(v6);
}

uint64_t sub_29C887F08()
{
  sub_29C889014();
  sub_29C889040();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_29C888FB0();
  *v5 = v4;

  if (v0)
  {
    sub_29C888FF8();

    return v6();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29C888024, 0, 0);
  }
}

uint64_t sub_29C888024()
{
  v1 = *(v0 + 24);
  v2 = v1[4];
  sub_29C888F2C(v1, v1[3]);
  v3 = *(v2 + 16);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v6 = sub_29C889020(v5);

  return v7(v6);
}

uint64_t sub_29C888138()
{
  sub_29C889014();
  sub_29C889040();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_29C888FB0();
  *v4 = v3;

  sub_29C888FF8();

  return v5();
}

id sub_29C888218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStorefrontChangeResponder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_29C888270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStorefrontChangeResponder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C8882A4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return sub_29C888FA0();
}

uint64_t sub_29C8882B8()
{
  sub_29C88904C();
  v4 = [sub_29C889058() setUpCacheForAccountDSID_];
  v0[20] = v4;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_29C8883B4;
  swift_continuation_init();
  v5 = sub_29C888C18(&qword_2A1795770, &qword_29C88B368);
  sub_29C888FD8(v5);
  v0[11] = 1107296256;
  sub_29C888FC0();
  [v4 resultWithCompletion_];

  return MEMORY[0x2A1C73CC0](v1);
}

uint64_t sub_29C8883B4()
{
  sub_29C889014();
  sub_29C889040();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 168) = v4;
  if (v4)
  {
    v5 = sub_29C88856C;
  }

  else
  {
    v5 = sub_29C8884BC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29C8884BC()
{
  sub_29C88904C();
  v1 = *(v0 + 176);

  if ((v1 & 1) == 0)
  {
    sub_29C88A4A8();
    sub_29C889070();

    swift_willThrow();
  }

  sub_29C888FF8();

  return v2();
}

uint64_t sub_29C88856C()
{
  sub_29C88904C();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  v3 = *(v0 + 168);
  sub_29C888FF8();

  return v4();
}

uint64_t sub_29C8885D4(uint64_t a1, char a2, void *a3)
{
  v5 = sub_29C888F2C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_29C888658(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_29C8886C4(v9, a2);
  }
}

uint64_t sub_29C888658(uint64_t a1, uint64_t a2)
{
  sub_29C888C18(&qword_2A1795778, &qword_29C88B370);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x2A1C73CE0](a1, v4);
}

uint64_t sub_29C8886E4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return sub_29C888FA0();
}

uint64_t sub_29C8886F8()
{
  sub_29C88904C();
  v4 = [sub_29C889058() tearDownCacheForAccountDSID_];
  v0[20] = v4;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_29C8887F4;
  swift_continuation_init();
  v5 = sub_29C888C18(&qword_2A1795770, &qword_29C88B368);
  sub_29C888FD8(v5);
  v0[11] = 1107296256;
  sub_29C888FC0();
  [v4 resultWithCompletion_];

  return MEMORY[0x2A1C73CC0](v1);
}

uint64_t sub_29C8887F4()
{
  sub_29C889014();
  sub_29C889040();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 168) = v4;
  if (v4)
  {
    v5 = sub_29C888F7C;
  }

  else
  {
    v5 = sub_29C8888FC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29C8888FC()
{
  sub_29C88904C();
  v1 = *(v0 + 176);

  if ((v1 & 1) == 0)
  {
    sub_29C88A4A8();
    sub_29C889070();

    swift_willThrow();
  }

  sub_29C888FF8();

  return v2();
}

uint64_t sub_29C8889AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C888F78;

  return sub_29C8886E4(a1);
}

uint64_t sub_29C888A44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C888ADC;

  return sub_29C8882A4(a1);
}

uint64_t sub_29C888ADC()
{
  sub_29C889014();
  sub_29C889040();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_29C888FB0();
  *v4 = v3;

  sub_29C888FF8();

  return v5();
}

uint64_t sub_29C888BE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29C888C18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_29C888C60(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_29C888CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C888ADC;

  return sub_29C887810(a1, v4, v5, v7, v6);
}

unint64_t sub_29C888DAC()
{
  result = qword_2A1795760;
  if (!qword_2A1795760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1795760);
  }

  return result;
}

uint64_t sub_29C888DF0(uint64_t a1)
{
  v2 = sub_29C888C18(&qword_2A1795768, &unk_29C88B3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C888E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29C888EE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_29C888F2C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29C888F80(uint64_t a1)
{

  return MEMORY[0x2A1C73598](a1, sub_29C887298);
}

void sub_29C888FC0()
{
  v1[12] = sub_29C8885D4;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_29C888FD8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x29EDCA5F8];
  return result;
}

uint64_t sub_29C888FF8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_29C889070()
{

  return AMSError();
}

uint64_t sub_29C8890A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = v25 - v10;
  sub_29C889DF8(a3, v25 - v10);
  v12 = sub_29C88A508();
  v13 = sub_29C889E68(v11, 1, v12);

  if (v13 == 1)
  {
    sub_29C88A250(v11, &qword_2A1795758, &unk_29C88B3A0);
  }

  else
  {
    sub_29C88A4F8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29C88A4E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29C88A4C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_29C88A250(a3, &qword_2A1795758, &unk_29C88B3A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29C88A250(a3, &qword_2A1795758, &unk_29C88B3A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_29C889374()
{
  v0 = sub_29C88A498();
  sub_29C888C60(v0, qword_2A1795780);
  sub_29C888BE0(v0, qword_2A1795780);
  return sub_29C88A468();
}

uint64_t static EmptyUsernameBugReport.reportEmptyUsernameBug()()
{
  v1 = (*(*(sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v3 = &v14 - v2;
  if (qword_2A1795748 != -1)
  {
    sub_29C88A2B0(&qword_2A1795748);
  }

  v4 = sub_29C88A498();
  sub_29C888BE0(v4, qword_2A1795780);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v5 = sub_29C88A428();
  sub_29C889004(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v10 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  sub_29C88A300();

  sub_29C88A3E8();
  sub_29C88A488();

  v11 = sub_29C88A508();
  sub_29C888CC4(v3, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v0;
  sub_29C8890A0(0, 0, v3, &unk_29C88B3B8, v12);
}

uint64_t sub_29C8895F0()
{
  v1 = objc_allocWithZone(sub_29C88A458());
  *(v0 + 88) = sub_29C88A438();
  v2 = *(MEMORY[0x29EDBF930] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_29C88971C;
  v4.n128_u64[0] = 0;

  return MEMORY[0x2A1C5F2D8](0, 0, 0, v4);
}

uint64_t sub_29C88971C()
{
  sub_29C889014();
  sub_29C889040();
  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  v5 = *v1;
  sub_29C888FB0();
  *v6 = v5;
  *(v8 + 104) = v7;

  if (v0)
  {
    v9 = sub_29C8899D8;
  }

  else
  {
    v9 = sub_29C88983C;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29C88983C()
{
  if (qword_2A1795748 != -1)
  {
    sub_29C88A2B0(&qword_2A1795748);
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = sub_29C88A498();
  sub_29C888BE0(v3, qword_2A1795780);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v4 = sub_29C88A428();
  sub_29C889004(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v9 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  sub_29C88A300();

  sub_29C88A3E8();
  sub_29C88A488();

  sub_29C888FF8();

  return v10();
}

uint64_t sub_29C8899D8()
{
  v1 = v0[13];
  sub_29C88A19C();
  v2 = swift_allocError();
  *v3 = v1;
  v4 = v2;
  if (qword_2A1795748 != -1)
  {
    sub_29C88A2B0(&qword_2A1795748);
  }

  v5 = v0[10];
  v6 = sub_29C88A498();
  sub_29C888BE0(v6, qword_2A1795780);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v7 = sub_29C88A428();
  sub_29C889004(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_29C88B390;
  v12 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  sub_29C88A418();

  sub_29C88A3E8();
  swift_getErrorValue();
  v13 = v0[6];
  v14 = v0[7];
  v0[5] = v14;
  v15 = sub_29C88A1F0(v0 + 2);
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  sub_29C88A3F8();
  sub_29C88A250((v0 + 2), &qword_2A1795768, &unk_29C88B3F0);
  sub_29C88A478();

  sub_29C888FF8();

  return v16();
}

uint64_t sub_29C889C38(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_29C88A2F0(v6);
  *v7 = v8;
  v7[1] = sub_29C888ADC;

  return sub_29C8895D0(a1, v3, v4, v5);
}

id EmptyUsernameBugReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmptyUsernameBugReport.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmptyUsernameBugReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C889DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C889E90(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29C889F88;

  return v7(a1);
}

uint64_t sub_29C889F88()
{
  sub_29C889014();
  sub_29C889040();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_29C888FB0();
  *v4 = v3;

  sub_29C888FF8();

  return v5();
}

uint64_t sub_29C88A06C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_29C88A2F0(v3);
  *v4 = v5;
  v6 = sub_29C88A2D0(v4);

  return v7(v6);
}

uint64_t sub_29C88A104()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_29C88A2F0(v3);
  *v4 = v5;
  v6 = sub_29C88A2D0(v4);

  return v7(v6);
}

unint64_t sub_29C88A19C()
{
  result = qword_2A1795798;
  if (!qword_2A1795798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1795798);
  }

  return result;
}

uint64_t *sub_29C88A1F0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_29C88A250(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C888C18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C88A2B0(uint64_t a1)
{

  return MEMORY[0x2A1C73598](a1, sub_29C889374);
}

uint64_t sub_29C88A2D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_29C88A300()
{

  return sub_29C88A418();
}

void sub_29C88A324()
{
  dlerror();
  v0 = abort_report_np();
  sub_29C88A348(v0);
}