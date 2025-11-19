uint64_t sub_29C821348(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDBA108]);
  v4 = objc_msgSend_initWithTarget_selector_object_(v2, v3, *(a1 + 32), sel_parkBackgroundThread_, 0);
  v5 = qword_2A1794BF8;
  qword_2A1794BF8 = v4;

  v7 = qword_2A1794BF8;

  return MEMORY[0x2A1C70FE8](v7, sel_start, v6);
}

void sub_29C821E34(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x29EDC0F38] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_29C820000, v2, v3, "Delaying release of account %@ by terrible means", &v6, 0xCu);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_29C822314(uint64_t a1, const char *a2, uint64_t a3)
{
  v88 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (a2 != 1)
  {
    isAuthenticated = objc_msgSend_isAuthenticated(v4, a2, a3);
    v77[0] = MEMORY[0x29EDCA5F8];
    v77[1] = 3221225472;
    v77[2] = sub_29C822A00;
    v77[3] = &unk_29F3273C0;
    *&v9 = *(a1 + 40);
    *(&v9 + 1) = *(a1 + 48);
    v65 = v9;
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v78 = v65;
    v79 = v12;
    v81 = isAuthenticated;
    v80 = *(a1 + 64);
    v15 = MEMORY[0x29ED451F0](v77);
    v16 = *(a1 + 72);
    if (a2 == 2)
    {
      if ((*(a1 + 72) & 1) == 0)
      {
        v17 = DALoggingwithCategory();
        v18 = *(MEMORY[0x29EDC0F38] + 3);
        if (!os_log_type_enabled(v17, v18))
        {
LABEL_24:

          (*(*(a1 + 64) + 16))();
          goto LABEL_25;
        }

        v19 = *(a1 + 32);
        *buf = 138412290;
        v83 = v19;
        v20 = "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@ Networking Error";
LABEL_23:
        _os_log_impl(&dword_29C820000, v17, v18, v20, buf, 0xCu);
        goto LABEL_24;
      }
    }

    else if ((*(a1 + 72) & 1) == 0)
    {
      if (!objc_msgSend_isAuthenticated(*(a1 + 32), v13, v14))
      {
        if ((*(a1 + 73) & 1) == 0)
        {
          v45 = *MEMORY[0x29EDC10D8];
          v46 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v35, *MEMORY[0x29EDC10D8]);
          v49 = objc_msgSend__currentDateString(*(a1 + 48), v47, v48);
          v50 = DALoggingwithCategory();
          v51 = MEMORY[0x29EDC0F38];
          v52 = *(MEMORY[0x29EDC0F38] + 7);
          if (os_log_type_enabled(v50, v52))
          {
            v53 = *(a1 + 32);
            *buf = 138412802;
            v83 = v53;
            v84 = 2112;
            v85 = v46;
            v86 = 2112;
            v87 = v49;
            _os_log_impl(&dword_29C820000, v50, v52, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Last prompt date %@. Current date %@", buf, 0x20u);
          }

          if (v46 && objc_msgSend_isEqualToString_(v49, v54, v46))
          {
            v55 = DALoggingwithCategory();
            v56 = *(v51 + 3);
            if (os_log_type_enabled(v55, v56))
            {
              v57 = *(a1 + 32);
              *buf = 138412290;
              v83 = v57;
              _os_log_impl(&dword_29C820000, v55, v56, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Not presenting an Auth prompt.", buf, 0xCu);
            }

            (*(*(a1 + 64) + 16))();
          }

          else
          {
            v58 = DALoggingwithCategory();
            v59 = *(v51 + 3);
            if (os_log_type_enabled(v58, v59))
            {
              v60 = *(a1 + 32);
              *buf = 138412290;
              v83 = v60;
              _os_log_impl(&dword_29C820000, v58, v59, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Presenting an Auth prompt.", buf, 0xCu);
            }

            objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v61, v49, v45);
            v62 = *(a1 + 56);
            v63 = *(a1 + 32);
            v66[0] = MEMORY[0x29EDCA5F8];
            v66[1] = 3221225472;
            v66[2] = sub_29C822C00;
            v66[3] = &unk_29F327438;
            v67 = v15;
            objc_msgSend_saveAccount_withHandler_(v62, v64, v63, v66);
          }

          goto LABEL_25;
        }

        v17 = DALoggingwithCategory();
        v18 = *(MEMORY[0x29EDC0F38] + 3);
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_24;
        }

        v43 = *(a1 + 32);
        *buf = 138412290;
        v83 = v43;
        v20 = "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Reporting Credential failed error back.";
        goto LABEL_23;
      }

      v36 = DALoggingwithCategory();
      v37 = *(MEMORY[0x29EDC0F38] + 3);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(a1 + 32);
        *buf = 138412290;
        v83 = v38;
        _os_log_impl(&dword_29C820000, v36, v37, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Marking Account as UnAuthenticated and Saving.", buf, 0xCu);
      }

      objc_msgSend_setAuthenticated_(*(a1 + 32), v39, 0);
      v40 = *(a1 + 56);
      v41 = *(a1 + 32);
      v68[0] = MEMORY[0x29EDCA5F8];
      v68[1] = 3221225472;
      v68[2] = sub_29C822BD0;
      v68[3] = &unk_29F327410;
      v71 = *(a1 + 73);
      v69 = v15;
      v70 = *(a1 + 64);
      objc_msgSend_saveAccount_withHandler_(v40, v42, v41, v68);

      v34 = v69;
LABEL_15:

LABEL_25:
      v44 = *MEMORY[0x29EDCA608];
      return;
    }

    if (!objc_msgSend_migrationStatus(*(a1 + 32), v13, v14, v65))
    {
      objc_msgSend_setMigrationStatus_(*(a1 + 32), v21, 3);
    }

    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v22, v23))
    {
      v26 = *(a1 + 32);
      v27 = objc_msgSend_migrationStatusString(v26, v24, v25);
      *buf = 138412802;
      v83 = v26;
      v84 = 2048;
      v85 = a2;
      v86 = 2112;
      v87 = v27;
      _os_log_impl(&dword_29C820000, v22, v23, "Authenticator FAILED to migrate the account %@, saving with status %lu, migration state: %@", buf, 0x20u);
    }

    v28 = *(a1 + 56);
    v29 = *(a1 + 32);
    v72[0] = MEMORY[0x29EDCA5F8];
    v72[1] = 3221225472;
    v72[2] = sub_29C822AAC;
    v72[3] = &unk_29F3273E8;
    v30 = v29;
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v73 = v30;
    v74 = v31;
    v75 = v32;
    v76 = *(a1 + 64);
    objc_msgSend_saveAccount_withHandler_(v28, v33, v30, v72);

    v34 = v73;
    goto LABEL_15;
  }

  objc_msgSend_setCredential_(v4, 1, a3);
  v5 = *(*(a1 + 64) + 16);
  v6 = *MEMORY[0x29EDCA608];

  v5();
}

void sub_29C822A00(uint64_t a1, const char *a2)
{
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, *MEMORY[0x29EDB8440]);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = objc_msgSend_client(*(a1 + 56), v5, v6);
  v10 = objc_msgSend_localizedAppName(v7, v8, v9);
  objc_msgSend__displayBadCredentialsAlertForAccount_clientName_reason_accountStore_resetAuthenticatedOnAlertFailure_handler_(v3, v11, v4, v10, v12, *(a1 + 56), *(a1 + 72), *(a1 + 64));
}

void sub_29C822AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x29EDC0F38] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = @"with";
    if (!v4)
    {
      v7 = @"without";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_29C820000, v5, v6, "Account saved %@ error: %@", &v12, 0x16u);
  }

  if (objc_msgSend_migrationStatus(*(a1 + 32), v8, v9) == 1)
  {
    objc_msgSend__displayMigrationPendingAlertForAccount_accountStore_handler_(*(a1 + 40), v10, *(a1 + 32), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C822BD0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_29C8232A0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_openIDrequestURLFor_(MEMORY[0x29EDC0EA0], a2, *(a1 + 32));
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend__setNonAppInitiated_(v6, v7, 1);
  v10 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x29EDBA138], v8, v9);
  v11 = *(a1 + 40);
  v14 = objc_msgSend_identifier(*(a1 + 48), v12, v13);
  objc_msgSend__assignConnectionPropertiesToSessionConfiguration_withAccountId_(v11, v15, v10, v14);

  v17 = objc_msgSend_sessionWithConfiguration_(MEMORY[0x29EDBA130], v16, v10);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C8233DC;
  v22[3] = &unk_29F327488;
  v23 = *(a1 + 56);
  v19 = objc_msgSend_dataTaskWithRequest_completionHandler_(v17, v18, v6, v22);
  objc_msgSend_resume(v19, v20, v21);
}

void sub_29C8233DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x29EDC0EA8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 alloc];
  v35 = objc_msgSend_initWithData_urlResponse_error_(v11, v12, v10, v9, v8);

  v17 = objc_msgSend_error(v35, v13, v14);
  if (v17)
  {
    goto LABEL_2;
  }

  v22 = objc_msgSend_tokenRequestURI(v35, v15, v16);
  if (!v22)
  {
    goto LABEL_3;
  }

  v17 = v22;
  v23 = objc_msgSend_jwksURI(v35, v18, v19);
  if (!v23)
  {
LABEL_2:

LABEL_3:
    v20 = *(a1 + 32);
    v21 = objc_msgSend_error(v35, v18, v19);
    (*(v20 + 16))(v20, 0, 0, 0, v21);
    goto LABEL_4;
  }

  v26 = v23;
  v27 = objc_msgSend_issuer(v35, v24, v25);

  if (!v27)
  {
    goto LABEL_3;
  }

  v28 = *(a1 + 32);
  v21 = objc_msgSend_tokenRequestURI(v35, v18, v19);
  v31 = objc_msgSend_jwksURI(v35, v29, v30);
  v34 = objc_msgSend_issuer(v35, v32, v33);
  (*(v28 + 16))(v28, v21, v31, v34, 0);

LABEL_4:
}

void sub_29C823678(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDBA058]);
  v3 = objc_alloc(MEMORY[0x29EDB8E70]);
  v5 = objc_msgSend_initWithString_(v3, v4, *(a1 + 32));
  v7 = objc_msgSend_initWithURL_(v2, v6, v5);

  objc_msgSend__setNonAppInitiated_(v7, v8, 1);
  v11 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x29EDBA138], v9, v10);
  v12 = *(a1 + 40);
  v15 = objc_msgSend_identifier(*(a1 + 48), v13, v14);
  objc_msgSend__assignConnectionPropertiesToSessionConfiguration_withAccountId_(v12, v16, v11, v15);

  v18 = objc_msgSend_sessionWithConfiguration_(MEMORY[0x29EDBA130], v17, v11);
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = sub_29C8237CC;
  v23[3] = &unk_29F327488;
  v24 = *(a1 + 56);
  v20 = objc_msgSend_dataTaskWithRequest_completionHandler_(v18, v19, v7, v23);
  objc_msgSend_resume(v20, v21, v22);
}

void sub_29C8238F8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_emptyBearerRequestForHost_(MEMORY[0x29EDC0EB0], a2, *(a1 + 32));
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend__setNonAppInitiated_(v6, v7, 1);
  v10 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x29EDBA138], v8, v9);
  v11 = *(a1 + 40);
  v14 = objc_msgSend_identifier(*(a1 + 48), v12, v13);
  objc_msgSend__assignConnectionPropertiesToSessionConfiguration_withAccountId_(v11, v15, v10, v14);

  v17 = objc_msgSend_sessionWithConfiguration_(MEMORY[0x29EDBA130], v16, v10);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = sub_29C823A34;
  v22[3] = &unk_29F327488;
  v23 = *(a1 + 56);
  v19 = objc_msgSend_dataTaskWithRequest_completionHandler_(v17, v18, v6, v22);
  objc_msgSend_resume(v19, v20, v21);
}

void sub_29C823A34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x29EDC0EB8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 alloc];
  v17 = objc_msgSend_initWithData_urlResponse_error_(v11, v12, v10, v9, v8);

  v13 = *(a1 + 32);
  v16 = objc_msgSend_authURI(v17, v14, v15);
  (*(v13 + 16))(v13, v16, v8);
}

void sub_29C8244BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v155 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDC0E90];
  v9 = a3;
  v10 = a2;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithData_urlResponse_error_(v11, v12, v10, v9, v7);

  v18 = objc_msgSend_error(v13, v14, v15);
  if (v18 || objc_msgSend_statusCode(v13, v16, v17) != 200)
  {

    goto LABEL_8;
  }

  v21 = objc_msgSend_accessToken(v13, v19, v20);
  if (!v21 || (v24 = v21, objc_msgSend_idToken(v13, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, !v25))
  {
LABEL_8:
    if (objc_msgSend_statusCode(v13, v22, v23) >= 400 && objc_msgSend_statusCode(v13, v35, v36) <= 499)
    {
      if (objc_msgSend_migrationStatus(*(a1 + 32), v35, v36))
      {
        v39 = *(MEMORY[0x29EDC0F38] + 4);
      }

      else
      {
        v65 = objc_msgSend_errorName(v13, v37, v38);
        isEqualToString = objc_msgSend_isEqualToString_(v65, v66, @"invalid_grant");

        v68 = DALoggingwithCategory();
        v39 = *(MEMORY[0x29EDC0F38] + 4);
        v69 = os_log_type_enabled(v68, v39);
        if (isEqualToString)
        {
          if (v69)
          {
            v72 = objc_msgSend_errorName(v13, v70, v71);
            v75 = objc_msgSend_errorMessage(v13, v73, v74);
            *buf = 138412546;
            v152 = v72;
            v153 = 2112;
            v154 = v75;
            _os_log_impl(&dword_29C820000, v68, v39, "Received an invalid_grant error. %@ %@", buf, 0x16u);
          }

          v76 = DALoggingwithCategory();
          if (os_log_type_enabled(v76, v39))
          {
            *buf = 0;
            _os_log_impl(&dword_29C820000, v76, v39, "Switching migration status from 'Attempting' to 'Pending'", buf, 2u);
          }

          objc_msgSend_setMigrationStatus_(*(a1 + 32), v77, 1);
        }

        else
        {
          if (v69)
          {
            v78 = objc_msgSend_errorName(v13, v70, v71);
            v81 = objc_msgSend_errorMessage(v13, v79, v80);
            *buf = 138412546;
            v152 = v78;
            v153 = 2112;
            v154 = v81;
            _os_log_impl(&dword_29C820000, v68, v39, "Received an error. %@ %@", buf, 0x16u);
          }

          v82 = DALoggingwithCategory();
          if (os_log_type_enabled(v82, v39))
          {
            *buf = 0;
            _os_log_impl(&dword_29C820000, v82, v39, "Switching migration status from 'Attempting' to 'Failure'", buf, 2u);
          }

          objc_msgSend_setMigrationStatus_(*(a1 + 32), v83, 3);
        }
      }

      objc_msgSend_setOauthRefreshToken_(*(a1 + 48), v37, 0);
      objc_msgSend_setCredential_(*(a1 + 32), v84, *(a1 + 48));
      v85 = DALoggingwithCategory();
      if (os_log_type_enabled(v85, v39))
      {
        *buf = 138412290;
        v152 = v7;
        _os_log_impl(&dword_29C820000, v85, v39, "Received an Error: refreshing OAuth Token failed with Error %@", buf, 0xCu);
      }

      v86 = *(a1 + 32);
      v142[0] = MEMORY[0x29EDCA5F8];
      v142[1] = 3221225472;
      v142[2] = sub_29C825980;
      v142[3] = &unk_29F327438;
      v87 = *(a1 + 56);
      v143 = *(a1 + 64);
      objc_msgSend_saveAccount_withHandler_(v87, v88, v86, v142);
      v64 = v143;
LABEL_45:

      goto LABEL_46;
    }

    v40 = objc_msgSend_error(v13, v35, v36);
    if (v40)
    {
    }

    else if (objc_msgSend_statusCode(v13, v41, v42) != 200)
    {
      v55 = DALoggingwithCategory();
      v56 = *(MEMORY[0x29EDC0F38] + 4);
      if (os_log_type_enabled(v55, v56))
      {
        *buf = 138412290;
        v152 = v7;
        _os_log_impl(&dword_29C820000, v55, v56, "Received a response.error nil and response.status != 200. refreshing OAuth Token failed with Error %@", buf, 0xCu);
      }

      if (!objc_msgSend_migrationStatus(*(a1 + 32), v57, v58))
      {
        v59 = DALoggingwithCategory();
        if (os_log_type_enabled(v59, v56))
        {
          *buf = 0;
          _os_log_impl(&dword_29C820000, v59, v56, "Switching migration status from 'Attempting' to 'Failure'", buf, 2u);
        }

        objc_msgSend_setMigrationStatus_(*(a1 + 32), v60, 3);
      }

      v61 = *(a1 + 32);
      v140[0] = MEMORY[0x29EDCA5F8];
      v140[1] = 3221225472;
      v140[2] = sub_29C825998;
      v140[3] = &unk_29F327438;
      v62 = *(a1 + 56);
      v141 = *(a1 + 64);
      objc_msgSend_saveAccount_withHandler_(v62, v63, v61, v140);
      v64 = v141;
      goto LABEL_45;
    }

    v45 = *(a1 + 40);
    v46 = objc_msgSend_error(v13, v43, v44);
    isTransientNetworkError = objc_msgSend__isTransientNetworkError_(v45, v47, v46);

    v49 = DALoggingwithCategory();
    v50 = *(MEMORY[0x29EDC0F38] + 4);
    v51 = os_log_type_enabled(v49, v50);
    if (isTransientNetworkError)
    {
      if (v51)
      {
        *buf = 138412290;
        v152 = v7;
        _os_log_impl(&dword_29C820000, v49, v50, "Received a Transient Network Error: refreshing OAuth Token failed with Error %@", buf, 0xCu);
      }

      v54 = *(*(a1 + 64) + 16);
      goto LABEL_23;
    }

    if (v51)
    {
      *buf = 138412546;
      v152 = v7;
      v153 = 2048;
      v154 = objc_msgSend_code(v7, v52, v53);
      _os_log_impl(&dword_29C820000, v49, v50, "Received a unknown error %@ with code %ld. Failing Token refresh", buf, 0x16u);
    }

LABEL_22:
    v54 = *(*(a1 + 64) + 16);
LABEL_23:
    v54();
    goto LABEL_46;
  }

  v26 = objc_msgSend_accountType(*(a1 + 32), v22, v23);
  v29 = objc_msgSend_identifier(v26, v27, v28);
  v31 = objc_msgSend_isEqualToString_(v29, v30, *MEMORY[0x29EDB8240]);

  if ((v31 & 1) == 0)
  {
    v90 = objc_msgSend_accountType(*(a1 + 32), v32, v33);
    v93 = objc_msgSend_identifier(v90, v91, v92);
    v95 = objc_msgSend_isEqualToString_(v93, v94, *MEMORY[0x29EDB8210]);

    if (v95)
    {
      if (*(a1 + 80) == 1)
      {
        objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v96, *MEMORY[0x29EDC10C8]);
      }

      else
      {
        v105 = objc_msgSend__accountOAuthVersion_(*(a1 + 40), v96, *(a1 + 32));
        v107 = *MEMORY[0x29EDC10C8];
        if (v105 != 1)
        {
          v108 = MEMORY[0x29EDC0E78];
          v109 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v106, *MEMORY[0x29EDC10C8]);
          v111 = objc_msgSend_upgradeAuthorizationEndpoint_(v108, v110, v109);
          objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v112, v111, v107);

          objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v113, @"2", *MEMORY[0x29EDC10D0]);
        }

        objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v106, v107);
      }
      v34 = ;
      if (v34)
      {
        goto LABEL_57;
      }

      v98 = *(MEMORY[0x29EDC0F38] + 3);
    }

    else
    {
      v97 = DALoggingwithCategory();
      v98 = *(MEMORY[0x29EDC0F38] + 3);
      if (os_log_type_enabled(v97, v98))
      {
        v101 = objc_msgSend_accountType(*(a1 + 32), v99, v100);
        v104 = objc_msgSend_identifier(v101, v102, v103);
        *buf = 138412290;
        v152 = v104;
        _os_log_impl(&dword_29C820000, v97, v98, "Account type is neither Hotmail nor Exchange. Account type: %@", buf, 0xCu);
      }
    }

    v139 = DALoggingwithCategory();
    if (os_log_type_enabled(v139, v98))
    {
      *buf = 0;
      _os_log_impl(&dword_29C820000, v139, v98, "Cannot refresh token for account. oauthURI is nil.", buf, 2u);
    }

    goto LABEL_22;
  }

  v34 = @"https://login.microsoftonline.com/consumers/oauth2/v2.0/authorize/";
LABEL_57:
  if (*(a1 + 80))
  {
    v114 = DALoggingwithCategory();
    v115 = *(MEMORY[0x29EDC0F38] + 7);
    if (os_log_type_enabled(v114, v115))
    {
      v116 = *(a1 + 32);
      *buf = 138412290;
      v152 = v116;
      _os_log_impl(&dword_29C820000, v114, v115, "Successfully refreshed the OAuth token for on prem OAuth account %@", buf, 0xCu);
    }

    v119 = objc_msgSend_refreshToken(v13, v117, v118);
    if (!v119)
    {
      v120 = DALoggingwithCategory();
      if (os_log_type_enabled(v120, v115))
      {
        *buf = 0;
        _os_log_impl(&dword_29C820000, v120, v115, "Refresh OAuth token response does not contain a refresh token. Keeping the previous refresh token.", buf, 2u);
      }

      v119 = objc_msgSend_oauthRefreshToken(*(a1 + 48), v121, v122);
    }

    v123 = objc_alloc(MEMORY[0x29EDB83C0]);
    v126 = objc_msgSend_accessToken(v13, v124, v125);
    v129 = objc_msgSend_expiryDate(v13, v127, v128);
    refreshed = objc_msgSend_initWithOAuth2Token_refreshToken_expiryDate_(v123, v130, v126, v119, v129);

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v133 = *(a1 + 32);
    v132 = *(a1 + 40);
    v144[0] = MEMORY[0x29EDCA5F8];
    v144[1] = 3221225472;
    v144[2] = sub_29C824F4C;
    v144[3] = &unk_29F327500;
    v149 = *(a1 + 64);
    v145 = *(a1 + 32);
    v134 = v13;
    v135 = *(a1 + 40);
    v146 = v134;
    v147 = v135;
    v136 = *(a1 + 72);
    v148 = v34;
    v150 = v136;
    v137 = v34;
    objc_msgSend__retrieveOpenIDMetadataForAccount_fromURI_withCompletion_(v132, v138, v133, v137, v144);
  }

LABEL_46:

  v89 = *MEMORY[0x29EDCA608];
}

void sub_29C824F4C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v96 = *MEMORY[0x29EDCA608];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x29EDC0F38] + 3);
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_5:

      (*(*(a1 + 64) + 16))();
      goto LABEL_6;
    }

    v15 = *(a1 + 56);
    *buf = 138412546;
    v93 = v15;
    v94 = 2112;
    v95 = v12;
    v16 = "Couldn't retrieve OpenID metadata from URI: %@ Error: %@";
    v17 = v13;
    v18 = v14;
    v19 = 22;
LABEL_4:
    _os_log_impl(&dword_29C820000, v17, v18, v16, buf, v19);
    goto LABEL_5;
  }

  if (!v10)
  {
    v13 = DALoggingwithCategory();
    v62 = *(MEMORY[0x29EDC0F38] + 3);
    if (!os_log_type_enabled(v13, v62))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v16 = "Cannot refresh token for account. jwksURI is nil.";
    v17 = v13;
    v18 = v62;
    v19 = 2;
    goto LABEL_4;
  }

  v21 = sub_29C825510(*(a1 + 32));
  if (!v21)
  {
    v13 = DALoggingwithCategory();
    v69 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v13, v69))
    {
      v72 = *(a1 + 32);
      v80 = objc_msgSend_accountType(v72, v70, v71);
      v75 = objc_msgSend_identifier(v80, v73, v74);
      *buf = 138412546;
      v93 = v72;
      v94 = 2112;
      v95 = v75;
      _os_log_impl(&dword_29C820000, v13, v69, "Could not find account identifier %@ for account %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  v23 = objc_msgSend_clientIDForOAuthType_(MEMORY[0x29EDC0E70], v22, v21);
  v25 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v24, *MEMORY[0x29EDC1088]);
  v26 = objc_alloc(MEMORY[0x29EDC0E80]);
  v29 = objc_msgSend_idToken(*(a1 + 40), v27, v28);
  v31 = objc_msgSend_initWithIdToken_(v26, v30, v29);

  v79 = v25;
  if (objc_msgSend__jwksDataCacheValidForAccount_(*(a1 + 48), v32, *(a1 + 32)) && objc_msgSend_idTokenValidWithJWKS_withAudience_withIssuer_(v31, v33, v25, v23, v11))
  {
    v76 = v31;
    v77 = v23;
    v34 = DALoggingwithCategory();
    v35 = *(MEMORY[0x29EDC0F38] + 7);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(a1 + 32);
      *buf = 138412290;
      v93 = v36;
      _os_log_impl(&dword_29C820000, v34, v35, "Successfully refreshed the OAuth token for Account %@", buf, 0xCu);
    }

    v37 = objc_alloc(MEMORY[0x29EDB83C0]);
    v40 = objc_msgSend_accessToken(*(a1 + 40), v38, v39);
    v43 = objc_msgSend_refreshToken(*(a1 + 40), v41, v42);
    v46 = objc_msgSend_expiryDate(*(a1 + 40), v44, v45);
    refreshed = objc_msgSend_initWithOAuth2Token_refreshToken_expiryDate_(v37, v47, v40, v43, v46);

    if (!v11 || !v9 || !*(a1 + 56) || !v79)
    {
      sub_29C827DC8(a1, (a1 + 48), v50);
    }

    if (objc_msgSend_migrationStatus(*(a1 + 32), v49, v50) <= 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v51, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC0F10]);
      v54 = objc_msgSend_username(*(a1 + 32), v52, v53);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v55, v54, *MEMORY[0x29EDB81A0]);

      objc_msgSend_setMigrationStatus_(*(a1 + 32), v56, 2);
    }

    v57 = *(a1 + 32);
    v58 = *(a1 + 48);
    v59 = *(a1 + 56);
    v60 = objc_msgSend_objectForKeyedSubscript_(v57, v51, *MEMORY[0x29EDC1098]);
    objc_msgSend__addPropertiesToAccount_oauthURI_tokenRequestURI_jwksURI_issuer_oauthVersion_jwksData_jwksDataCacheDate_(v58, v61, v57, v59, v9, v10, v11, @"2", v79, v60);

    (*(*(a1 + 64) + 16))();
    v31 = v76;
    v23 = v77;
  }

  else
  {
    v63 = *(a1 + 48);
    v64 = *(a1 + 32);
    v81[0] = MEMORY[0x29EDCA5F8];
    v81[1] = 3221225472;
    v81[2] = sub_29C82561C;
    v81[3] = &unk_29F3274D8;
    v82 = v31;
    v83 = v23;
    v84 = v11;
    v85 = *(a1 + 32);
    v86 = *(a1 + 40);
    v87 = *(a1 + 56);
    v88 = v9;
    v65 = v10;
    v66 = *(a1 + 48);
    v89 = v65;
    v90 = v66;
    v78 = *(a1 + 64);
    v67 = v78;
    v91 = v78;
    objc_msgSend__retrieveJWKSDataForAccount_fromURI_withCompletion_(v63, v68, v64, v65, v81);

    refreshed = v82;
  }

LABEL_6:
  v20 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C825510(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_accountType(v1, v2, v3);
  v7 = objc_msgSend_identifier(v4, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x29EDB8210]);

  if (isEqualToString)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v1, v10, *MEMORY[0x29EDC10C0]);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_unsignedIntegerValue(v12, v13, v14) == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v16 = objc_msgSend_accountType(v1, v10, v11);

    v19 = objc_msgSend_identifier(v16, v17, v18);
    v21 = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x29EDB8240]);

    return v21;
  }

  return v15;
}

void sub_29C82561C(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(a1 + 88);
      *buf = 138412546;
      v57 = v10;
      v58 = 2112;
      v59 = v7;
      v11 = "Couldn't retrieve JWKS data from URI: %@ Error: %@";
      v12 = v8;
      v13 = v9;
      v14 = 22;
LABEL_17:
      _os_log_impl(&dword_29C820000, v12, v13, v11, buf, v14);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v15 = objc_msgSend_idTokenValidWithJWKS_withAudience_withIssuer_(*(a1 + 32), v6, v5, *(a1 + 40), *(a1 + 48));
  v16 = DALoggingwithCategory();
  v8 = v16;
  if (!v15)
  {
    v52 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v16, *(MEMORY[0x29EDC0F38] + 3)))
    {
      *buf = 0;
      v11 = "Could not validate the id_token received from the server";
      v12 = v8;
      v13 = v52;
      v14 = 2;
      goto LABEL_17;
    }

LABEL_18:

    (*(*(a1 + 104) + 16))();
    goto LABEL_19;
  }

  v17 = *(MEMORY[0x29EDC0F38] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(a1 + 56);
    *buf = 138412290;
    v57 = v18;
    _os_log_impl(&dword_29C820000, v8, v17, "Successfully refreshed the OAuth token for Account %@", buf, 0xCu);
  }

  v19 = objc_alloc(MEMORY[0x29EDB83C0]);
  v22 = objc_msgSend_accessToken(*(a1 + 64), v20, v21);
  v25 = objc_msgSend_refreshToken(*(a1 + 64), v23, v24);
  v28 = objc_msgSend_expiryDate(*(a1 + 64), v26, v27);
  refreshed = objc_msgSend_initWithOAuth2Token_refreshToken_expiryDate_(v19, v29, v22, v25, v28);

  if (!*(a1 + 72) || !*(a1 + 80) || !*(a1 + 88) || !v5 || !*(a1 + 48))
  {
    sub_29C827E2C(a1, v30, v31);
  }

  if (objc_msgSend_migrationStatus(*(a1 + 56), v30, v31) <= 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v32, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC0F10]);
    v36 = objc_msgSend_username(*(a1 + 56), v34, v35);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v37, v36, *MEMORY[0x29EDB81A0]);

    objc_msgSend_setMigrationStatus_(*(a1 + 56), v38, 2);
  }

  v39 = *(a1 + 80);
  v54 = *(a1 + 72);
  v41 = *(a1 + 88);
  v40 = *(a1 + 96);
  v43 = *(a1 + 48);
  v42 = *(a1 + 56);
  v44 = MEMORY[0x29EDBA070];
  v45 = objc_msgSend_date(MEMORY[0x29EDB8DB0], v32, v33);
  objc_msgSend_timeIntervalSince1970(v45, v46, v47);
  v50 = objc_msgSend_numberWithDouble_(v44, v48, v49);
  objc_msgSend__addPropertiesToAccount_oauthURI_tokenRequestURI_jwksURI_issuer_oauthVersion_jwksData_jwksDataCacheDate_(v40, v51, v42, v54, v39, v41, v43, @"2", v5, v50);

  (*(*(a1 + 104) + 16))();
LABEL_19:

  v53 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29C8259B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C8259C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v5)
  {
    if (*(a1 + 72))
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v6, v5, *MEMORY[0x29EDC10C8]);
    }

    else
    {
      v11 = objc_msgSend_upgradeAuthorizationEndpoint_(MEMORY[0x29EDC0E78], v6, v5);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v12, v11, *MEMORY[0x29EDC10C8]);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, @"2", *MEMORY[0x29EDC10D0]);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = sub_29C825B68;
    v18[3] = &unk_29F327550;
    v15 = v13;
    v23 = *(a1 + 72);
    v16 = *(a1 + 64);
    v19 = v15;
    v22 = v16;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    objc_msgSend__retrieveOpenIDMetadataForAccount_fromURI_withCompletion_(v14, v17, v15, v5, v18);
  }

  else
  {
    objc_msgSend_setMigrationStatus_(*(a1 + 32), v6, 3);
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    dispatch_semaphore_signal(*(a1 + 56));
  }
}

void sub_29C825B68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v46 = objc_msgSend_upgradeTokenEndpoint_(MEMORY[0x29EDC0E78], v4, v3);

    v6 = objc_alloc_init(MEMORY[0x29EDBA110]);
    objc_msgSend_setScheme_(v6, v7, @"https");
    v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, *MEMORY[0x29EDC0F00]);
    objc_msgSend_setHost_(v6, v10, v9);

    v13 = objc_msgSend_URL(v6, v11, v12);
    v16 = objc_msgSend_absoluteString(v13, v14, v15);
    v17 = *MEMORY[0x29EDC1078];
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v18, v16, *MEMORY[0x29EDC1078]);

    v21 = objc_msgSend_URL(v6, v19, v20);
    v24 = objc_msgSend_absoluteString(v21, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v25, v24, *MEMORY[0x29EDC1070]);

    v26 = sub_29C825510(*(a1 + 32));
    v27 = MEMORY[0x29EDC0E70];
    v29 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v28, v17);
    v31 = objc_msgSend_defaultScopeForOAuthType_withResourceIdentifier_isOnPrem_(v27, v30, v26, v29, *(a1 + 64));

    v32 = MEMORY[0x29EDC0E68];
    v35 = objc_msgSend_username(*(a1 + 32), v33, v34);
    v38 = objc_msgSend_password(*(a1 + 40), v36, v37);
    v40 = objc_msgSend_urlRequestForOAuthTokenFromUsername_tokenRequestURI_password_scope_(v32, v39, v35, v46, v38, v31);
    v41 = *(*(a1 + 56) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    dispatch_semaphore_signal(*(a1 + 48));
  }

  else
  {
    objc_msgSend_setMigrationStatus_(*(a1 + 32), v4, 3);
    v43 = *(*(a1 + 56) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = 0;

    v45 = *(a1 + 48);

    dispatch_semaphore_signal(v45);
  }
}

void sub_29C826AC0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_backgroundThread(v4, a2, a3);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C826BD4;
  v10[3] = &unk_29F3275C8;
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  v6 = v9;
  v13 = v9;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 72);
  v7 = MEMORY[0x29ED451F0](v10);
  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(v4, v8, sel_invokeAndReleaseBlock_, v5, v7, 0);
}

void sub_29C826BD4(uint64_t a1)
{
  v2 = MEMORY[0x29EDC1060];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C826CD4;
  v10[3] = &unk_29F3275A0;
  v3 = *(a1 + 64);
  v9 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v9;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v6;
  v13 = *(a1 + 72);
  objc_msgSend_showUserNotification_groupIdentifier_withCompletionBlock_(v2, v8, v3, 0, v10);
  CFRelease(*(a1 + 64));
}

uint64_t sub_29C826CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  return MEMORY[0x2A1C70FE8](*(a1 + 32), sel__handlePasswordNotification_response_callback_account_accountStore_resetAuthenticatedOnAlertFailure_, a2);
}

void sub_29C8273A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a3 != 3)
  {
    if (a3)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x29EDC0F38] + 6);
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 0;
        _os_log_impl(&dword_29C820000, v9, v10, "User requested transfer to settings from OAuth authentication alert", buf, 2u);
      }

      v11 = MEMORY[0x29EDB8E70];
      v12 = MEMORY[0x29EDBA0F8];
      v15 = objc_msgSend_identifier(*(a1 + 32), v13, v14);
      v17 = objc_msgSend_stringWithFormat_(v12, v16, @"prefs:root=MAIL&path=ACCOUNTS/%@&%@=%@", v15, @"easOAuthAction", @"showAuthSheet");
      v4 = objc_msgSend_URLWithString_(v11, v18, v17);

      v19 = DALoggingwithCategory();
      if (os_log_type_enabled(v19, v10))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_impl(&dword_29C820000, v19, v10, "Launch URL : %@", buf, 0xCu);
      }

      v22 = objc_msgSend_defaultWorkspace(MEMORY[0x29EDB9400], v20, v21);
      objc_msgSend_openSensitiveURL_withOptions_(v22, v23, v4, 0);
    }

    else
    {
      v4 = DALoggingwithCategory();
      v5 = *(MEMORY[0x29EDC0F38] + 7);
      if (os_log_type_enabled(v4, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_29C820000, v4, v5, "User cancelled out of Hotmail authentication alert", buf, 2u);
      }
    }

    goto LABEL_13;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
LABEL_13:
    (*(*(a1 + 48) + 16))();
    goto LABEL_14;
  }

  objc_msgSend_setAuthenticated_(*(a1 + 32), a2, 1);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_29C82764C;
  v25[3] = &unk_29F3275F0;
  v26 = *(a1 + 48);
  v27 = 2;
  objc_msgSend_saveAccount_withHandler_(v6, v8, v7, v25);

LABEL_14:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_29C827820(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 40) + 8) + 24), 0.0, &responseFlags);
  v2 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_29C827DC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, *(a1 + 72), *a2, @"ESAccountAuthenticator.m", 570, @"We have used these objects to fetch and verify the tokens, neither of these should be empty");
}

void sub_29C827E2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, *(a1 + 112), *(a1 + 96), @"ESAccountAuthenticator.m", 600, @"We have used these objects to fetch and verify the tokens, neither of these should be empty");
}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       - (void)showUserAlertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 textFieldTitle:(id)a7 keyboardType:(id)a8 withCompletionBlock:(id)a9
{
  v13 = a4;
  v14 = a7;
  v15 = a9;
  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x29EDB8E00], v16, a3, *MEMORY[0x29EDB9040], a5, *MEMORY[0x29EDB9060], a6, *MEMORY[0x29EDB9058], 0);
  v20 = v17;
  if (v13)
  {
    objc_msgSend_setObject_forKey_(v17, v18, v13, *MEMORY[0x29EDB9048]);
  }

  if (v14)
  {
    objc_msgSend_setObject_forKey_(v20, v18, v14, *MEMORY[0x29EDB9078]);
  }

  v21 = objc_msgSend_copy(v15, v18, v19);

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0x10000uLL, 0, v20);
  v22 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C827820;
  block[3] = &unk_29F327640;
  v25 = v21;
  v26 = v27;
  v23 = v21;
  dispatch_async(v22, block);

  _Block_object_dispose(v27, 8);
}

- (void)_handlePasswordNotification:(__CFUserNotification *)a3 response:(unint64_t)a4 callback:(id)a5 account:(id)a6 accountStore:(id)a7 resetAuthenticatedOnAlertFailure:(BOOL)a8
{
  v8 = a8;
  v95 = *MEMORY[0x29EDCA608];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = DALoggingwithCategory();
  v17 = MEMORY[0x29EDC0F38];
  v18 = *(MEMORY[0x29EDC0F38] + 6);
  if (os_log_type_enabled(v16, v18))
  {
    v21 = objc_msgSend_backingAccountInfo(v14, v19, v20);
    *buf = 134218498;
    v90 = a4;
    v91 = 2112;
    v92 = v14;
    v93 = 2112;
    v94 = v21;
    _os_log_impl(&dword_29C820000, v16, v18, "Authenticator got credential renewal prompt result of %ld for account %@, %@", buf, 0x20u);
  }

  v24 = a4 & 3;
  if (v24 != 3)
  {
    v47 = objc_msgSend_identityPersist(v14, v22, v23);
    if (v47)
    {
      v50 = v47;
      v51 = objc_msgSend_username(v14, v48, v49);
      if (v51)
      {
      }

      else
      {
        v54 = objc_msgSend_password(v14, v52, v53);

        if (!v54)
        {
          v55 = DALoggingwithCategory();
          if (os_log_type_enabled(v55, v18))
          {
            *buf = 0;
            v56 = "User responded to client cert alert";
LABEL_27:
            _os_log_impl(&dword_29C820000, v55, v18, v56, buf, 2u);
          }

LABEL_28:
          v57 = 1;
          goto LABEL_29;
        }
      }
    }

    if (v24)
    {
      if (v24 != 1)
      {
        goto LABEL_16;
      }

      v55 = DALoggingwithCategory();
      if (!os_log_type_enabled(v55, v18))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v56 = "User rejected password entry.";
      goto LABEL_27;
    }

    v58 = objc_msgSend_backingAccountInfo(v14, v48, v49);
    v61 = objc_msgSend_accountType(v58, v59, v60);
    v64 = objc_msgSend_identifier(v61, v62, v63);
    isEqualToString = objc_msgSend_isEqualToString_(v64, v65, *MEMORY[0x29EDB8298]);

    v67 = *MEMORY[0x29EDB9080];
    if (isEqualToString)
    {
      v68 = CFUserNotificationGetResponseValue(a3, *MEMORY[0x29EDB9080], 0);
      objc_msgSend_setUsername_(v14, v69, v68);

      v70 = 1;
    }

    else
    {
      v70 = 0;
    }

    v55 = CFUserNotificationGetResponseValue(a3, v67, v70);
    if (objc_msgSend_length(v55, v71, v72))
    {
      v74 = objc_msgSend_credentialWithPassword_(MEMORY[0x29EDB83C0], v73, v55);
      v77 = objc_msgSend_backingAccountInfo(v14, v75, v76);
      objc_msgSend_setCredential_(v77, v78, v74);

      v79 = MEMORY[0x29EDBDFF8];
      v82 = objc_msgSend_backingAccountInfo(v14, v80, v81);
      objc_msgSend_setCredentialForAccount_(v79, v83, v82);

      v57 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v84 = DALoggingwithCategory();
    if (os_log_type_enabled(v84, v18))
    {
      *buf = 0;
      _os_log_impl(&dword_29C820000, v84, v18, "Password rejected because it is blank", buf, 2u);
    }

    goto LABEL_28;
  }

  if (!v8)
  {
LABEL_16:
    v57 = 2;
LABEL_30:
    v13[2](v13, v57, 0);
    goto LABEL_31;
  }

  v25 = DALoggingwithCategory();
  v26 = *(v17 + 4);
  if (os_log_type_enabled(v25, v26))
  {
    v29 = objc_msgSend_backingAccountInfo(v14, v27, v28);
    v32 = objc_msgSend_identifier(v29, v30, v31);
    v35 = objc_msgSend_backingAccountInfo(v14, v33, v34);
    v38 = objc_msgSend_username(v35, v36, v37);
    *buf = 138412546;
    v90 = v32;
    v91 = 2112;
    v92 = v38;
    _os_log_impl(&dword_29C820000, v25, v26, "Calling _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", buf, 0x16u);
  }

  v41 = objc_msgSend_backingAccountInfo(v14, v39, v40);
  objc_msgSend_setAuthenticated_(v41, v42, 1);

  v45 = objc_msgSend_backingAccountInfo(v14, v43, v44);
  v86[0] = MEMORY[0x29EDCA5F8];
  v86[1] = 3221225472;
  v86[2] = sub_29C827D6C;
  v86[3] = &unk_29F3275F0;
  v87 = v13;
  v88 = 2;
  objc_msgSend_saveAccount_withHandler_(v15, v46, v45, v86);

LABEL_31:
  v85 = *MEMORY[0x29EDCA608];
}

@end