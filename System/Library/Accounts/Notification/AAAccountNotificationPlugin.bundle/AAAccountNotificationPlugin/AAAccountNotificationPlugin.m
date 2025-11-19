void sub_29C845260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C84527C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C845294(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_29C8455F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_urlConfiguration(AASetupAssistantService, a2, a3, a4, a5);
  (*(*(a1 + 32) + 16))();
}

void sub_29C845714(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v7 = objc_alloc(MEMORY[0x29EDBE390]);
  v8 = *(a1 + 32);
  if (v2)
  {
    v9 = objc_msgSend_initWithAccount_(v7, v3, v8[5], v5, v6);
    v10 = objc_alloc(MEMORY[0x29EDBE338]);
    v14 = objc_msgSend_initWithAccount_(v10, v11, *(*(a1 + 32) + 40), v12, v13);
    objc_msgSend_addProvisioningInfoToAARequest_(v14, v15, v9, v16, v17);
  }

  else
  {
    v14 = objc_msgSend_appleID(v8, v3, v4, v5, v6);
    v22 = objc_msgSend_password(*(a1 + 32), v18, v19, v20, v21);
    v9 = objc_msgSend_initWithUsername_password_(v7, v23, v14, v22, v24);
  }

  objc_msgSend_setCookieStorage_(v9, v25, *(*(a1 + 32) + 48), v26, v27);
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = sub_29C84584C;
  v31[3] = &unk_29F329588;
  v32 = *(a1 + 40);
  objc_msgSend_performRequestWithHandler_(v9, v28, v31, v29, v30);
}

void sub_29C84584C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C8458FC;
  v6[3] = &unk_29F329560;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x29EDCA578], v6);
}

void sub_29C8458FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_msgSend_error(v6, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_29C845A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a4, a6);
  }

  return result;
}

void sub_29C845B54(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_mutableCopy(a1[4], a2, a3, a4, a5);
  v11 = objc_msgSend_appleID(a1[5], v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"apple-id", v13);

  v18 = objc_msgSend_password(a1[5], v14, v15, v16, v17);
  objc_msgSend_setValue_forKey_(v6, v19, v18, @"password", v20);

  v25 = objc_msgSend_appleIDClientIdentifier(MEMORY[0x29EDBE330], v21, v22, v23, v24);
  objc_msgSend_setValue_forKey_(v6, v26, v25, @"client-id", v27);

  v28 = objc_alloc(MEMORY[0x29EDBE3A0]);
  v29 = a1[5];
  v30 = v29[5];
  v35 = objc_msgSend__signingSession(v29, v31, v32, v33, v34);
  v37 = objc_msgSend_initWithAccount_withAppleIDParameters_signingSession_(v28, v36, v30, v6, v35);

  v42 = *(a1[5] + 5);
  if (v42)
  {
    v43 = objc_msgSend_aa_personID(v42, v38, v39, v40, v41);

    if (v43)
    {
      v44 = objc_alloc(MEMORY[0x29EDBE338]);
      v48 = objc_msgSend_initWithAccount_(v44, v45, *(a1[5] + 5), v46, v47);
      objc_msgSend_addProvisioningInfoToAARequest_(v48, v49, v37, v50, v51);
    }
  }

  objc_msgSend_setCookieStorage_(v37, v38, *(a1[5] + 6), v40, v41);
  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v55[2] = sub_29C845D18;
  v55[3] = &unk_29F329588;
  v56 = a1[6];
  objc_msgSend_performRequestWithHandler_(v37, v52, v55, v53, v54);
}

void sub_29C845D18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_statusCode(v6, v8, v9, v10, v11) != 401)
  {
    if (!v6)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v13 = v7;
      goto LABEL_13;
    }

    v17 = v6;
    v22 = objc_msgSend_status(v17, v18, v19, v20, v21);
    if (v22 && (v27 = v22, objc_msgSend_status(v17, v23, v24, v25, v26), v28 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend_intValue(v28, v29, v30, v31, v32), v28, v27, !v33))
    {
      v15 = objc_msgSend_personID(v17, v23, v24, v25, v26);
      v14 = objc_msgSend_appleID(v17, v58, v59, v60, v61);
      v16 = 1;
    }

    else
    {
      v15 = objc_msgSend_statusMessage(v17, v23, v24, v25, v26);

      if (v15)
      {
        v38 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v34, v35, v36, v37);
        v43 = objc_msgSend_statusMessage(v17, v39, v40, v41, v42);
        objc_msgSend_setObject_forKey_(v38, v44, v43, *MEMORY[0x29EDB9ED8], v45);

        v46 = MEMORY[0x29EDB9FA0];
        v51 = objc_msgSend_status(v17, v47, v48, v49, v50);
        v56 = objc_msgSend_intValue(v51, v52, v53, v54, v55);
        v13 = objc_msgSend_errorWithDomain_code_userInfo_(v46, v57, @"com.apple.appleaccount", v56, v38);

        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_12;
      }

      v14 = 0;
      v16 = 0;
    }

    v13 = v7;
    goto LABEL_12;
  }

  v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v12, @"com.apple.appleaccount", 401, 0);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v7;
LABEL_12:

LABEL_13:
  v62 = _AALogSystem();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v64[0] = 67109378;
    v64[1] = v16;
    v65 = 2112;
    v66 = v13;
    _os_log_impl(&dword_29C844000, v62, OS_LOG_TYPE_DEFAULT, "createAppleIDWithParameters calling handler with success %d error %@", v64, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v63 = *MEMORY[0x29EDCA608];
}

void sub_29C8460D4(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_mutableCopy(a1[4], a2, a3, a4, a5);
  v11 = objc_msgSend_appleID(a1[5], v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"apple-id", v13);

  v18 = objc_msgSend_password(a1[5], v14, v15, v16, v17);
  objc_msgSend_setValue_forKey_(v6, v19, v18, @"password", v20);

  v25 = objc_msgSend_appleIDClientIdentifier(MEMORY[0x29EDBE330], v21, v22, v23, v24);
  objc_msgSend_setValue_forKey_(v6, v26, v25, @"client-id", v27);

  v28 = objc_alloc(MEMORY[0x29EDBE3B8]);
  v29 = a1[5];
  v30 = v29[5];
  v35 = objc_msgSend__signingSession(v29, v31, v32, v33, v34);
  v37 = objc_msgSend_initWithAccount_withAppleIDParameters_signingSession_(v28, v36, v30, v6, v35);

  v41 = a1[5];
  if (v41[5])
  {
    v42 = objc_alloc(MEMORY[0x29EDBE338]);
    v46 = objc_msgSend_initWithAccount_(v42, v43, *(a1[5] + 5), v44, v45);
    objc_msgSend_addProvisioningInfoToAARequest_(v46, v47, v37, v48, v49);

    v41 = a1[5];
  }

  objc_msgSend_setCookieStorage_(v37, v38, v41[6], v39, v40);
  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 3221225472;
  v53[2] = sub_29C846284;
  v53[3] = &unk_29F329588;
  v54 = a1[6];
  objc_msgSend_performRequestWithHandler_(v37, v50, v53, v51, v52);
}

void sub_29C846284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x29EDCA608];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v54 = 0;
    v28 = 0;
    v55 = 0;
    v53 = v9;
    goto LABEL_11;
  }

  v11 = v8;
  v16 = objc_msgSend_status(v11, v12, v13, v14, v15);
  if (v16)
  {
    v21 = v16;
    v22 = objc_msgSend_status(v11, v17, v18, v19, v20);
    v27 = objc_msgSend_intValue(v22, v23, v24, v25, v26);

    if (!v27)
    {
      v28 = objc_msgSend_personID(v11, v17, v18, v19, v20);
      v54 = objc_msgSend_appleID(v11, v56, v57, v58, v59);
      v55 = 1;
      goto LABEL_9;
    }
  }

  v28 = objc_msgSend_statusMessage(v11, v17, v18, v19, v20);

  if (!v28)
  {
    v54 = 0;
    v55 = 0;
LABEL_9:
    v53 = v10;
    goto LABEL_10;
  }

  v33 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v29, v30, v31, v32);
  v38 = objc_msgSend_statusMessage(v11, v34, v35, v36, v37);
  objc_msgSend_setObject_forKey_(v33, v39, v38, *MEMORY[0x29EDB9ED8], v40);

  v41 = MEMORY[0x29EDB9FA0];
  v46 = objc_msgSend_status(v11, v42, v43, v44, v45);
  v51 = objc_msgSend_intValue(v46, v47, v48, v49, v50);
  v53 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v52, @"com.apple.appleaccount", v51, v33);

  v54 = 0;
  v28 = 0;
  v55 = 0;
LABEL_10:

LABEL_11:
  v60 = _AALogSystem();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v62[0] = 67109378;
    v62[1] = v55;
    v63 = 2112;
    v64 = v53;
    _os_log_impl(&dword_29C844000, v60, OS_LOG_TYPE_DEFAULT, "updateAppleIDWithParameters calling handler with success %d error %@", v62, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v61 = *MEMORY[0x29EDCA608];
}

void sub_29C84660C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  objc_msgSend_setValue_forKey_(v2, v3, *(a1 + 32), @"delegates", v4);
  v9 = objc_msgSend_appleID(*(a1 + 40), v5, v6, v7, v8);
  objc_msgSend_setValue_forKey_(v2, v10, v9, @"apple-id", v11);

  v16 = objc_msgSend_password(*(a1 + 40), v12, v13, v14, v15);
  objc_msgSend_setValue_forKey_(v2, v17, v16, @"password", v18);

  v23 = objc_msgSend_emailChoice(*(a1 + 40), v19, v20, v21, v22);
  objc_msgSend_setValue_forKey_(v2, v24, v23, @"email-choice", v25);

  v30 = objc_msgSend_appleIDClientIdentifier(MEMORY[0x29EDBE330], v26, v27, v28, v29);
  objc_msgSend_setValue_forKey_(v2, v31, v30, @"client-id", v32);

  v33 = objc_alloc(MEMORY[0x29EDBE3A8]);
  v34 = *(a1 + 40);
  v35 = v34[5];
  v40 = objc_msgSend__signingSession(v34, v36, v37, v38, v39);
  v42 = objc_msgSend_initWithAccount_withSetupParameters_signingSession_(v33, v41, v35, v2, v40);

  v46 = *(a1 + 40);
  if (*(v46 + 40))
  {
    v47 = objc_alloc(MEMORY[0x29EDBE338]);
    v51 = objc_msgSend_initWithAccount_(v47, v48, *(*(a1 + 40) + 40), v49, v50);
    objc_msgSend_addProvisioningInfoToAARequest_(v51, v52, v42, v53, v54);

    v46 = *(a1 + 40);
  }

  objc_msgSend_setCookieStorage_(v42, v43, *(v46 + 48), v44, v45);
  v58[0] = MEMORY[0x29EDCA5F8];
  v58[1] = 3221225472;
  v58[2] = sub_29C8467F8;
  v58[3] = &unk_29F329588;
  v59 = *(a1 + 48);
  objc_msgSend_performRequestWithHandler_(v42, v55, v58, v56, v57);
}

void sub_29C8467F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x29EDCA608];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v54 = 0;
    v53 = v9;
    goto LABEL_11;
  }

  v11 = v8;
  v16 = objc_msgSend_status(v11, v12, v13, v14, v15);
  if (v16)
  {
    v21 = v16;
    v22 = objc_msgSend_status(v11, v17, v18, v19, v20);
    v27 = objc_msgSend_intValue(v22, v23, v24, v25, v26);

    if (!v27)
    {
      v54 = objc_msgSend_responseParameters(v11, v17, v18, v19, v20);
      goto LABEL_9;
    }
  }

  v28 = objc_msgSend_statusMessage(v11, v17, v18, v19, v20);

  if (!v28)
  {
    v54 = 0;
LABEL_9:
    v53 = v10;
    goto LABEL_10;
  }

  v33 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v29, v30, v31, v32);
  v38 = objc_msgSend_statusMessage(v11, v34, v35, v36, v37);
  objc_msgSend_setObject_forKey_(v33, v39, v38, *MEMORY[0x29EDB9ED8], v40);

  v41 = MEMORY[0x29EDB9FA0];
  v46 = objc_msgSend_status(v11, v42, v43, v44, v45);
  v51 = objc_msgSend_intValue(v46, v47, v48, v49, v50);
  v53 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v52, @"com.apple.appleaccount", v51, v33);

  v54 = 0;
LABEL_10:

LABEL_11:
  v55 = _AALogSystem();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 138412290;
    v58 = v53;
    _os_log_impl(&dword_29C844000, v55, OS_LOG_TYPE_DEFAULT, "setupDelegateAccountsWithParameters calling handler with error %@", &v57, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v56 = *MEMORY[0x29EDCA608];
}

void sub_29C846B38(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  objc_msgSend_setValue_forKey_(v2, v3, *(a1 + 32), @"delegates", v4);
  v9 = objc_msgSend_appleID(*(a1 + 40), v5, v6, v7, v8);
  objc_msgSend_setValue_forKey_(v2, v10, v9, @"apple-id", v11);

  v16 = objc_msgSend_password(*(a1 + 40), v12, v13, v14, v15);
  objc_msgSend_setValue_forKey_(v2, v17, v16, @"password", v18);

  v23 = objc_msgSend_emailChoice(*(a1 + 40), v19, v20, v21, v22);
  objc_msgSend_setValue_forKey_(v2, v24, v23, @"email-choice", v25);

  v30 = objc_msgSend_appleIDClientIdentifier(MEMORY[0x29EDBE330], v26, v27, v28, v29);
  objc_msgSend_setValue_forKey_(v2, v31, v30, @"client-id", v32);

  v33 = objc_alloc(MEMORY[0x29EDBE368]);
  v34 = *(a1 + 40);
  v35 = v34[5];
  v40 = objc_msgSend__signingSession(v34, v36, v37, v38, v39);
  v42 = objc_msgSend_initWithAccount_parameters_signingSession_(v33, v41, v35, v2, v40);

  v46 = *(a1 + 40);
  if (*(v46 + 40))
  {
    v47 = objc_alloc(MEMORY[0x29EDBE338]);
    v51 = objc_msgSend_initWithAccount_(v47, v48, *(*(a1 + 40) + 40), v49, v50);
    objc_msgSend_addProvisioningInfoToAARequest_(v51, v52, v42, v53, v54);

    v46 = *(a1 + 40);
  }

  objc_msgSend_setCookieStorage_(v42, v43, *(v46 + 48), v44, v45);
  v58[0] = MEMORY[0x29EDCA5F8];
  v58[1] = 3221225472;
  v58[2] = sub_29C846D24;
  v58[3] = &unk_29F329588;
  v59 = *(a1 + 48);
  objc_msgSend_performRequestWithHandler_(v42, v55, v58, v56, v57);
}

void sub_29C846D24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54[1] = *MEMORY[0x29EDCA608];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v15 = v9;
  v16 = v15;
  if (v10)
  {
    v17 = objc_msgSend_status(v10, v11, v12, v13, v14);
    if (!v17 || (v22 = v17, objc_msgSend_status(v10, v18, v19, v20, v21), v23 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend_intValue(v23, v24, v25, v26, v27), v23, v22, v16 = v15, v28))
    {
      v29 = objc_msgSend_statusMessage(v10, v18, v19, v20, v21);

      v16 = v15;
      if (v29)
      {
        v53 = *MEMORY[0x29EDB9ED8];
        v34 = objc_msgSend_statusMessage(v10, v30, v31, v32, v33);
        v54[0] = v34;
        v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v35, v54, &v53, 1);

        v37 = MEMORY[0x29EDB9FA0];
        v42 = objc_msgSend_status(v10, v38, v39, v40, v41);
        v47 = objc_msgSend_intValue(v42, v43, v44, v45, v46);
        v16 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v48, @"com.apple.appleaccount", v47, v36);
      }
    }
  }

  v49 = _AALogSystem();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 138412290;
    v52 = v16;
    _os_log_impl(&dword_29C844000, v49, OS_LOG_TYPE_DEFAULT, "loginDelegatesWithParameters calling completion handler with error %@", &v51, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v50 = *MEMORY[0x29EDCA608];
}

void sub_29C847144(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDBE3B0]);
  v9 = objc_msgSend_initWithAccount_(v2, v3, *(*(a1 + 32) + 40), v4, v5);
  if (*(*(a1 + 32) + 40))
  {
    v10 = objc_alloc(MEMORY[0x29EDBE338]);
    v14 = objc_msgSend_initWithAccount_(v10, v11, *(*(a1 + 32) + 40), v12, v13);
    objc_msgSend_addProvisioningInfoToAARequest_(v14, v15, v9, v16, v17);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    objc_msgSend_setCustomHeaders_(v9, v6, v18, v7, v8);
  }

  objc_msgSend_setCookieStorage_(v9, v6, *(*(a1 + 32) + 48), v7, v8);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C84724C;
  v22[3] = &unk_29F329588;
  v23 = *(a1 + 48);
  objc_msgSend_performRequestWithHandler_(v9, v19, v22, v20, v21);
}

void sub_29C84724C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v11 = a4;
  if (v6)
  {
    v12 = objc_msgSend_xmlUIData(v6, v7, v8, v9, v10);
    v13 = _AALogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_29C844000, v13, OS_LOG_TYPE_DEFAULT, "We got the new iCloud Terms from the server", &v17, 2u);
      }
    }

    else if (v14)
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_29C844000, v13, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Terms failed with error: %@", &v17, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_29C844000, v15, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Terms failed with error: %@", &v17, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29C8475DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
    v13 = objc_msgSend_upgradeStatus(v8, v9, v10, v11, v12);
    v14 = _AALogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_29C844000, v14, OS_LOG_TYPE_DEFAULT, "We got the upgrade status from the server", &v29, 2u);
      }

      v20 = *(a1 + 32);
      v25 = objc_msgSend_BOOLValue(v13, v21, v22, v23, v24);
      (*(v20 + 16))(v20, v25, v7);
    }

    else
    {
      if (v15)
      {
        v27 = objc_msgSend_responseDictionary(v8, v16, v17, v18, v19);
        v29 = 138412546;
        v30 = v7;
        v31 = 2112;
        v32 = v27;
        _os_log_impl(&dword_29C844000, v14, OS_LOG_TYPE_DEFAULT, "Fetching upgrade status failed with error: %@ response: %@", &v29, 0x16u);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 1, v7);
    }
  }

  else
  {
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v7;
      _os_log_impl(&dword_29C844000, v26, OS_LOG_TYPE_DEFAULT, "Fetching upgrade status got no response and error: %@", &v29, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v28 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C847E30()
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_2A1795018;
  v6 = qword_2A1795018;
  if (!qword_2A1795018)
  {
    v7 = xmmword_29F329620;
    v8 = *off_29F329630;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_2A1795018 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

void sub_29C847F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C847F5C(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1795018 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C847FF4()
{
  v5 = 0;
  result = sub_29C847E30();
  if (!result)
  {
    sub_29C84E484(&v5, v1, v2, v3, v4);
  }

  return result;
}

uint64_t sub_29C848048()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_2A1795020;
  v6 = qword_2A1795020;
  if (!qword_2A1795020)
  {
    v1 = sub_29C847FF4();
    v4[3] = dlsym(v1, "BYSetupAssistantIsRunningSilentTokenUpgrade");
    qword_2A1795020 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_29C84811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_29C848134(uint64_t a1)
{
  v2 = sub_29C847FF4();
  result = dlsym(v2, "BYSetupAssistantIsRunningSilentTokenUpgrade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1795020 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C848184()
{
  v0 = sub_29C848048();
  if (!v0)
  {
    sub_29C84E504(0, v1, v2, v3, v4);
  }

  return v0();
}

uint64_t sub_29C8481B4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_2A1795028;
  v6 = qword_2A1795028;
  if (!qword_2A1795028)
  {
    v1 = sub_29C847FF4();
    v4[3] = dlsym(v1, "BYSetupAssistantHasCompletedInitialRun");
    qword_2A1795028 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_29C848288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_29C8482A0(uint64_t a1)
{
  v2 = sub_29C847FF4();
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1795028 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C8482F0()
{
  v0 = sub_29C8481B4();
  if (!v0)
  {
    sub_29C84E57C(0, v1, v2, v3, v4);
  }

  return v0();
}

id sub_29C848320()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2A1795030;
  v7 = qword_2A1795030;
  if (!qword_2A1795030)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = sub_29C848400;
    v3[3] = &unk_29F329678;
    v3[4] = &v4;
    sub_29C848400(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29C8483E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_29C848400(uint64_t a1)
{
  sub_29C847FF4();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C84E5F4(result, v3, v4, v5, v6);
  }

  qword_2A1795030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C848458()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_2A1795038;
  v6 = qword_2A1795038;
  if (!qword_2A1795038)
  {
    v1 = sub_29C847FF4();
    v4[3] = dlsym(v1, "BYFlowSkipIdentifierAppleID");
    qword_2A1795038 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_29C84852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_29C848544(uint64_t a1)
{
  v2 = sub_29C847FF4();
  result = dlsym(v2, "BYFlowSkipIdentifierAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1795038 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_29C848594()
{
  v0 = sub_29C848458();
  if (!v0)
  {
    sub_29C84E670(0, v1, v2, v3, v4);
  }

  v5 = *v0;

  return v5;
}

void sub_29C8489A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C844000, v7, OS_LOG_TYPE_DEFAULT, "Found primary apple account, no reason to follow up.", buf, 2u);
    }
  }

  else
  {
    v8 = _AALogSystem();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_29C84E6E8(v6, v9);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_29C844000, v9, OS_LOG_TYPE_DEFAULT, "No primary apple account found, following up with user!", v11, 2u);
      }

      objc_msgSend_postFollowUpWithIdentifier_forAccount_userInfo_completion_(*(*(a1 + 32) + 8), v10, *MEMORY[0x29EDBE2E0], *(a1 + 40), 0, 0);
    }
  }
}

void sub_29C848ACC(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C84E760(v6, v7);
    }

LABEL_4:
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v5;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
    if (v11)
    {
      v16 = v11;
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v9);
          }

          if (objc_msgSend_isActive(*(*(&v25 + 1) + 8 * i), v12, v13, v14, v15))
          {

            v7 = _AALogSystem();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *v24 = 0;
              _os_log_impl(&dword_29C844000, v7, OS_LOG_TYPE_DEFAULT, "Secondary accounts still present, leaving the follow up", v24, 2u);
            }

            goto LABEL_4;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v25, v29, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_29C844000, v19, OS_LOG_TYPE_DEFAULT, "No active secondary accounts found, removing our follow up.", v24, 2u);
    }

    objc_msgSend__dismissStartUsingFollowUp(*(a1 + 32), v20, v21, v22, v23);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C849008(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_aa_appleAccounts(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_aaf_firstObjectPassingTest_(v6, v7, &unk_2A23CBE18, v8, v9);

  v11 = _AALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_29C844000, v11, OS_LOG_TYPE_DEFAULT, "Found another account needing terms: %@", &v17, 0xCu);
    }

    objc_msgSend_postFollowUpWithIdentifier_forAccount_userInfo_completion_(*(*(a1 + 40) + 8), v13, *MEMORY[0x29EDBE2E8], v10, 0, 0);
  }

  else
  {
    if (v12)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_29C844000, v11, OS_LOG_TYPE_DEFAULT, "No other accounts need terms, dismissing...", &v17, 2u);
    }

    objc_msgSend_dismissFollowUpWithIdentifier_completion_(*(*(a1 + 40) + 8), v14, *MEMORY[0x29EDBE2E8], 0, v15);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C849158(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_aa_needsToVerifyTerms(v2, v3, v4, v5, v6))
  {
    hasOptionalTerms = 1;
  }

  else
  {
    hasOptionalTerms = objc_msgSend_aa_hasOptionalTerms(v2, v7, v8, v9, v10);
  }

  return hasOptionalTerms;
}

void sub_29C8495EC(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDBE320]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = nullsub_1;
  v6[3] = &unk_29F329738;
  v7 = *(a1 + 32);
  objc_msgSend_removeChildOrTeenConnectFollowUpWithCompletion_(v2, v3, v6, v4, v5);
}

void sub_29C849730(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDBE300]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C8497D0;
  v6[3] = &unk_29F329738;
  v7 = *(a1 + 32);
  objc_msgSend_clearAgeMigrationFollowUpWithCompletion_(v2, v3, v6, v4, v5);
}

void sub_29C8497D0(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_29C844000, v3, OS_LOG_TYPE_DEFAULT, "Dismissed child migration followup with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29C849904(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDB8E50];
  v6 = *MEMORY[0x29EDB82D8];
  v14[0] = *MEMORY[0x29EDB8230];
  v14[1] = v6;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v14, 2, a5);
  v11 = objc_msgSend_setWithArray_(v5, v8, v7, v9, v10);
  v12 = qword_2A1795040;
  qword_2A1795040 = v11;

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29C849AA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_29C84A470(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDBE320]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = nullsub_2;
  v6[3] = &unk_29F329738;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_msgSend_handleAppleAccountDeleteForAccount_completion_(v2, v4, v3, v6, v5);
}

void sub_29C84AECC(uint64_t a1)
{
  v13 = objc_alloc_init(MEMORY[0x29EDBFB50]);
  v6 = objc_msgSend_aa_altDSID(*(a1 + 32), v2, v3, v4, v5);
  objc_msgSend_setAppleIDWithAltDSID_inUse_forService_(v13, v7, v6, 1, 1);

  v8 = objc_alloc_init(sub_29C848320());
  v9 = sub_29C848594();
  objc_msgSend_didCompleteFlow_(v8, v10, v9, v11, v12);
}

void sub_29C84AF6C(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x29EDBFB50]);
  v6 = objc_msgSend_aa_altDSID(*(a1 + 32), v2, v3, v4, v5);
  objc_msgSend_setAppleIDWithAltDSID_inUse_forService_(v8, v7, v6, 0, 1);
}

void sub_29C84B1BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x29EDCA608];
  objc_msgSend_setWarmingUp_(*(a1 + 32), a2, 0, a4, a5);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = 0;
  v10 = objc_msgSend_saveVerifiedAccount_error_(v6, v8, v7, &v16, v9);
  v11 = v16;
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = @"NO";
    *buf = 138412802;
    if (v10)
    {
      v14 = @"YES";
    }

    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_29C844000, v12, OS_LOG_TYPE_DEFAULT, "Ended account warmup for account %@ with success: %@, error: %@", buf, 0x20u);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C84B42C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_childAccountsWithAccountTypeIdentifier_(*(a1 + 32), a2, *MEMORY[0x29EDB8208], a4, a5);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11)
  {
    v14 = *(a1 + 32);
    v15 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C70FE8](AAFindMyAccountController, sel_updateDeviceLocatorChildAccountForAppleAccount_, v14, v12, v13);
  }

  else
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v23 = 138412290;
      v24 = v17;
      _os_log_impl(&dword_29C844000, v16, OS_LOG_TYPE_DEFAULT, "AppleAccount (%@) does not have a device locator child account.", &v23, 0xCu);
    }

    result = objc_msgSend_addDeviceLocatorChildAccountToAppleAccount_(AAFindMyAccountController, v18, *(a1 + 32), v19, v20);
    v21 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_29C84B560(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_childAccountsWithAccountTypeIdentifier_(*(a1 + 32), a2, *MEMORY[0x29EDB8220], a4, a5);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11)
  {
    v14 = *(a1 + 32);
    v15 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C70FE8](AAFindMyAccountController, sel_updateFMFChildAccountForAppleAccount_, v14, v12, v13);
  }

  else
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v23 = 138412290;
      v24 = v17;
      _os_log_impl(&dword_29C844000, v16, OS_LOG_TYPE_DEFAULT, "AppleAccount (%@) does not have a FMF child account.", &v23, 0xCu);
    }

    result = objc_msgSend_addFMFChildAccountToAppleAccount_(AAFindMyAccountController, v18, *(a1 + 32), v19, v20);
    v21 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void sub_29C84B968(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[12] = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDB8E50];
  v6 = *MEMORY[0x29EDB8230];
  v19[0] = *MEMORY[0x29EDB81C8];
  v19[1] = v6;
  v7 = *MEMORY[0x29EDB8268];
  v19[2] = *MEMORY[0x29EDB82D8];
  v19[3] = v7;
  v8 = *MEMORY[0x29EDB8248];
  v19[4] = *MEMORY[0x29EDB81F8];
  v19[5] = v8;
  v9 = *MEMORY[0x29EDB8218];
  v19[6] = *MEMORY[0x29EDB81D0];
  v19[7] = v9;
  v10 = *MEMORY[0x29EDB8258];
  v19[8] = *MEMORY[0x29EDB8260];
  v19[9] = v10;
  v11 = *MEMORY[0x29EDB81E8];
  v19[10] = *MEMORY[0x29EDB81F0];
  v19[11] = v11;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v19, 12, a5);
  v16 = objc_msgSend_setWithArray_(v5, v13, v12, v14, v15);
  v17 = qword_2A1795050;
  qword_2A1795050 = v16;

  v18 = *MEMORY[0x29EDCA608];
}

void sub_29C84BCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C84BCC0(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v6, a2, v7, v8);
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_29C844000, v5, OS_LOG_TYPE_DEFAULT, "clearBridgeAppleIDFollowUp result : %@ error: %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

Class sub_29C84BDA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v12[0] = 0;
  if (!qword_2A1795068)
  {
    v12[1] = MEMORY[0x29EDCA5F8];
    v12[2] = 3221225472;
    v12[3] = sub_29C84BECC;
    v12[4] = &unk_29F329810;
    v12[5] = v12;
    v13 = xmmword_29F3297F8;
    v14 = 0;
    qword_2A1795068 = _sl_dlopen();
  }

  if (!qword_2A1795068)
  {
    sub_29C84ECD8(v12, a2, a3, a4, a5);
  }

  if (v12[0])
  {
    free(v12[0]);
  }

  result = objc_getClass("FLFollowUpController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C84EC5C(result, v7, v8, v9, v10);
  }

  qword_2A1795060 = *(*(*(a1 + 32) + 8) + 24);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C84BECC(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A1795068 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C84C70C(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v8 = objc_msgSend_parentAccountIdentifier(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_identifier(*(a1 + 32), v9, v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v14, v13, v15, v16);

  if (isEqualToString)
  {
    goto LABEL_2;
  }

  v23 = objc_msgSend_username(v3, v18, v19, v20, v21);
  v28 = objc_msgSend_username(*(a1 + 32), v24, v25, v26, v27);
  v32 = objc_msgSend_isEqualToString_(v23, v29, v28, v30, v31);

  if (v32)
  {
    v37 = _AALogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 32);
      v38 = *(a1 + 40);
      v55 = 138412546;
      v56 = v38;
      v57 = 2112;
      v58 = v39;
      v40 = "Found an orphaned accountType %@ for username of AppleAccount %@";
LABEL_9:
      _os_log_impl(&dword_29C844000, v37, OS_LOG_TYPE_DEFAULT, v40, &v55, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v41 = objc_msgSend_aa_appleIDAliases(*(a1 + 32), v33, v34, v35, v36);
  v46 = objc_msgSend_username(v3, v42, v43, v44, v45);
  v50 = objc_msgSend_containsObject_(v41, v47, v46, v48, v49);

  if (v50)
  {
    v37 = _AALogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v52 = *(a1 + 32);
      v51 = *(a1 + 40);
      v55 = 138412546;
      v56 = v51;
      v57 = 2112;
      v58 = v52;
      v40 = "Found an orphaned accountType %@ for alias of AppleAccount %@";
      goto LABEL_9;
    }

LABEL_10:

    v22 = 1;
    goto LABEL_11;
  }

LABEL_2:
  v22 = 0;
LABEL_11:

  v53 = *MEMORY[0x29EDCA608];
  return v22;
}

void sub_29C84D848(uint64_t a1, int a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  v9 = _AALogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v56 = v11;
      v12 = "Successfully sent AK account %@. Now moving on to main account.";
      v13 = v9;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_29C844000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else if (v10)
  {
    v15 = *(a1 + 32);
    *buf = 138412546;
    v56 = v15;
    v57 = 2112;
    v58 = v8;
    v12 = "Failed to send AK account %@ to paired device. Error: %@";
    v13 = v9;
    v14 = 22;
    goto LABEL_6;
  }

  v20 = objc_msgSend_copy(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend__aa_rawPassword(*(a1 + 40), v21, v22, v23, v24);
  objc_msgSend__aa_setRawPassword_(v20, v26, v25, v27, v28);

  objc_msgSend_setAuthenticated_(v20, v29, 0, v30, v31);
  v36 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFB38], v32, v33, v34, v35);
  v40 = objc_msgSend_securityLevelForAccount_(v36, v37, *(a1 + 32), v38, v39);

  v45 = 0;
  if (a2 && v40 == 4)
  {
    v45 = objc_msgSend__saveOptionsForProxiedDeviceAuth(*(a1 + 48), v41, v42, v43, v44);
  }

  v46 = objc_msgSend_remoteDeviceProxy(*(a1 + 56), v41, v42, v43, v44);
  v47 = *(a1 + 64);
  v52[0] = MEMORY[0x29EDCA5F8];
  v52[1] = 3221225472;
  v52[2] = sub_29C84DA84;
  v52[3] = &unk_29F329860;
  v48 = *(a1 + 40);
  v49 = *(a1 + 48);
  v53 = v48;
  v54 = v49;
  objc_msgSend_sendCommand_withAccount_options_completion_(v46, v50, v47, v20, v45, v52);

  v51 = *MEMORY[0x29EDCA608];
}

void sub_29C84DA84(uint64_t a1, int a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  v13 = v8;
  if (a2)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v35 = 138412290;
      v36 = v15;
      v16 = "Successfully signed in with account %@ on remote device!";
      v17 = v14;
      v18 = 12;
LABEL_12:
      _os_log_impl(&dword_29C844000, v17, OS_LOG_TYPE_DEFAULT, v16, &v35, v18);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v19 = objc_msgSend_domain(v8, v9, v10, v11, v12);
  if (!objc_msgSend_isEqualToString_(v19, v20, @"com.apple.appleaccount", v21, v22))
  {

LABEL_10:
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 32);
      v35 = 138412546;
      v36 = v33;
      v37 = 2112;
      v38 = v13;
      v16 = "Error encountered with signing in with account %@ on remote device: %@";
      v17 = v14;
      v18 = 22;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  v27 = objc_msgSend_code(v13, v23, v24, v25, v26);

  if (v27 != -5)
  {
    goto LABEL_10;
  }

  v28 = _AALogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 32);
    v35 = 138412290;
    v36 = v29;
    _os_log_impl(&dword_29C844000, v28, OS_LOG_TYPE_DEFAULT, "Error! Cannot sign in with account %@. Two-factor auth is required.", &v35, 0xCu);
  }

  objc_msgSend__showRedirectToBridgeAlertForAccount_(*(a1 + 40), v30, *(a1 + 32), v31, v32);
LABEL_14:

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29C84E0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v15 = v3;
    v16 = v4;
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_29C844000, v5, OS_LOG_TYPE_DEFAULT, "We're sending the user to Bridge... wheeeeeeee!", v14, 2u);
    }

    v9 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], v6, @"bridge:tab=SETTINGS&root=GENERAL_LINK&path=LINK_WITH_ICLOUD_LINK", v7, v8);
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C84E20C;
    block[3] = &unk_29F329760;
    v13 = v9;
    v11 = v9;
    dispatch_async(v10, block);
  }
}

void sub_29C84E20C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_defaultWorkspace(MEMORY[0x29EDB9400], a2, a3, a4, a5);
  objc_msgSend_openSensitiveURL_withOptions_(v8, v6, *(a1 + 32), 0, v7);
}

void sub_29C84E268()
{
  sub_29C847E18();
  v9 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1, v2, v3);
  sub_29C847E24();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 479);
}

void sub_29C84E2D4()
{
  sub_29C847E18();
  v9 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1, v2, v3);
  sub_29C847E24();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 480);
}

void sub_29C84E340()
{
  sub_29C847E18();
  v9 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1, v2, v3);
  sub_29C847E24();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 496);
}

void sub_29C84E3AC()
{
  sub_29C847E18();
  v9 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1, v2, v3);
  sub_29C847E24();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 497);
}

void sub_29C84E418()
{
  sub_29C847E18();
  v9 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1, v2, v3);
  sub_29C847E24();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 512);
}

void sub_29C84E484(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v7, "void *SetupAssistantLibrary(void)", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"AASetupAssistantSoftLink.m", 12, @"%s", *a1);

  __break(1u);
}

void sub_29C84E504(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, "BOOL SBYSetupAssistantIsRunningSilentTokenUpgrade(void)", v7, v8);
  v10 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v11, v9, @"AASetupAssistantSoftLink.m", 13, @"%s", v10);

  __break(1u);
}

void sub_29C84E57C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, "BOOL SBYSetupAssistantHasCompletedInitialRun(void)", v7, v8);
  v10 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v11, v9, @"AASetupAssistantSoftLink.m", 14, @"%s", v10);

  __break(1u);
}

void sub_29C84E5F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, "Class getBYFlowSkipControllerClass(void)_block_invoke", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v10, v9, @"AASetupAssistantSoftLink.m", 17, @"Unable to find class %s", "BYFlowSkipController");

  __break(1u);
}

void sub_29C84E670(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, "typeof (((typeof (BYFlowSkipIdentifierAppleID) (*)(void))0)()) getBYFlowSkipIdentifierAppleID(void)", v7, v8);
  v10 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v11, v9, @"AASetupAssistantSoftLink.m", 18, @"%s", v10);

  __break(1u);
}

void sub_29C84E6E8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C844000, a2, OS_LOG_TYPE_ERROR, "Failed to query for primary account, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C84E760(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C844000, a2, OS_LOG_TYPE_ERROR, "Failed to determine if we have any secondary accounts, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C84E894()
{
  sub_29C84BB1C();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C84E8D0()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C84BB28();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C84E940()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C84BB28();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C84E9B0()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C84BB28();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C84EA20()
{
  sub_29C84BB1C();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C84EA5C()
{
  sub_29C84BB1C();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C84EA98(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x29EDCA608];
  v7 = objc_msgSend_aa_accountClass(a1, a2, a3, a4, a5);
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_29C844000, a2, OS_LOG_TYPE_DEBUG, "Updated account class for account: %@ (%@)", &v9, 0x16u);

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C84EB88()
{
  sub_29C84BB1C();
  sub_29C84BB10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C84EBC4()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29C84BB28();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_29C844000, v1, OS_LOG_TYPE_ERROR, "Error deleting unsupported account (%@): %@", v3, 0x16u);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C84EC5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, "Class getFLFollowUpControllerClass(void)_block_invoke", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v10, v9, @"AABridgeFollowUpController.m", 20, @"Unable to find class %s", "FLFollowUpController");

  __break(1u);
}

void sub_29C84ECD8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v7, "void *CoreFollowUpLibrary(void)", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"AABridgeFollowUpController.m", 19, @"%s", *a1);

  __break(1u);
}

void sub_29C84ED58(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C844000, a2, OS_LOG_TYPE_ERROR, "AppleAccount for %@ is not on disk. Unable to assign parent. Stopping.", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}