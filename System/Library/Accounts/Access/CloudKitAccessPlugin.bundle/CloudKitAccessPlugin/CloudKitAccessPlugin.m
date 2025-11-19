@interface CloudKitAccessPlugin
- (BOOL)_haveAccountsOfType:(id)a3 withStore:(id)a4;
- (id)_ckAccountInStore:(id)a3;
- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8;
- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)revokeAllAccessToAccountsOfType:(id)a3 store:(id)a4 withCompletion:(id)a5;
@end

@implementation CloudKitAccessPlugin

- (id)_ckAccountInStore:(id)a3
{
  v3 = objc_msgSend_aa_primaryAppleAccount(a3, a2, a3);
  v6 = objc_msgSend_ck_cloudKitAccount(v3, v4, v5);
  if (!v6)
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v7 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_29C7F4000, v7, OS_LOG_TYPE_ERROR, "No primary iCloud accounts found. Rejecting access request.", v9, 2u);
    }
  }

  return v6;
}

- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8
{
  v102 = *MEMORY[0x29EDCA608];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v20 = objc_msgSend_authorizationManager(v16, v18, v19);
  if (objc_msgSend_hasEntitlement_(v14, v21, *MEMORY[0x29EDB83E0]))
  {
    v24 = objc_msgSend__ckAccountInStore_(self, v22, v16);
    if (v24)
    {
      v96 = v13;
      v25 = *MEMORY[0x29EDB8338];
      v26 = objc_msgSend_objectForKeyedSubscript_(v15, v23, *MEMORY[0x29EDB8338]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_objectForKeyedSubscript_(v15, v27, v25);
        v28 = v95 = v24;
        v31 = objc_msgSend_count(v28, v29, v30);

        v24 = v95;
        if (v31)
        {
          v33 = objc_msgSend_objectForKeyedSubscript_(v15, v32, v25);
          v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0);

          v13 = v96;
          v37 = objc_msgSend_authorizationForClient_accountType_(v20, v36, v14, v96);
          v94 = v37;
          if (v37)
          {
            v40 = v37;
            if ((objc_msgSend_isGranted(v37, v38, v39) & 1) == 0)
            {
              if (*MEMORY[0x29EDB8850] != -1)
              {
                dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
              }

              v59 = *MEMORY[0x29EDB8840];
              if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v99 = v14;
                _os_log_impl(&dword_29C7F4000, v59, OS_LOG_TYPE_INFO, "%@ has been denied access via TCC, stopping now with an error", buf, 0xCu);
              }

              v43 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v60, *MEMORY[0x29EDB8300], 7, 0);
              v17[2](v17, 0, v43);
              goto LABEL_47;
            }

            v43 = objc_msgSend_grantedPermissions(v40, v41, v42);
            if (objc_msgSend_containsObject_(v43, v44, v35))
            {
              if (*MEMORY[0x29EDB8850] != -1)
              {
                dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
              }

              v45 = *MEMORY[0x29EDB8840];
              if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v99 = v35;
                _os_log_debug_impl(&dword_29C7F4000, v45, OS_LOG_TYPE_DEBUG, "Client is requesting access with pre-existing containerIdentifier: %{public}@", buf, 0xCu);
              }

              v17[2](v17, 1, 0);
LABEL_47:

              goto LABEL_26;
            }

            v91 = v20;

            v53 = v94;
          }

          else
          {
            v91 = v20;
            v51 = objc_alloc(MEMORY[0x29EDBDFF0]);
            v53 = objc_msgSend_initForClient_(v51, v52, v14);
            objc_msgSend_setIsGranted_(v53, v54, 1);
            v55 = objc_alloc_init(MEMORY[0x29EDB8E50]);
            objc_msgSend_setGrantedPermissions_(v53, v56, v55);
          }

          v61 = objc_msgSend_grantedPermissions(v53, v57, v58);
          v64 = objc_msgSend_mutableCopy(v61, v62, v63);

          objc_msgSend_addObject_(v64, v65, v35);
          v92 = v64;
          v66 = v64;
          v43 = v53;
          objc_msgSend_setGrantedPermissions_(v53, v67, v66);
          v20 = v91;
          v93 = objc_msgSend_setAuthorization_forClient_onAccountType_(v91, v68, v43, v14, v96);
          if (v93)
          {
            v71 = objc_msgSend_bundleID(v14, v69, v70);

            if (v71)
            {
              if (*MEMORY[0x29EDB8850] != -1)
              {
                dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
              }

              v72 = *MEMORY[0x29EDB8840];
              if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v99 = v93;
                _os_log_error_impl(&dword_29C7F4000, v72, OS_LOG_TYPE_ERROR, "AuthorizationManager error: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            if (*MEMORY[0x29EDB8850] != -1)
            {
              dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
            }

            v73 = 0x29EDB8000uLL;
            v74 = *MEMORY[0x29EDB8840];
            if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
            {
              v86 = v74;
              v89 = objc_msgSend_bundleID(v14, v87, v88);
              *buf = 138543618;
              v99 = v89;
              v100 = 2114;
              v101 = v35;
              _os_log_debug_impl(&dword_29C7F4000, v86, OS_LOG_TYPE_DEBUG, "Successfully set authorization for bundle id %{public}@ container id %{public}@, notifying cloudd", buf, 0x16u);

              v73 = 0x29EDB8000;
            }

            v90 = objc_msgSend_connection(self, v75, v76);
            v79 = objc_msgSend_processScopedDaemonProxy(v90, v77, v78);
            v82 = objc_msgSend_bundleID(v14, v80, v81);
            v97 = v35;
            v84 = objc_msgSend_arrayWithObjects_count_(*(v73 + 3456), v83, &v97, 1);
            objc_msgSend_accountsDidGrantAccessToBundleID_containerIdentifiers_(v79, v85, v82, v84);

            v24 = v95;
          }

          v17[2](v17, 1, 0);

          v13 = v96;
          goto LABEL_47;
        }
      }

      else
      {
      }

      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v13 = v96;
      v48 = *MEMORY[0x29EDB8840];
      if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_29C7F4000, v48, OS_LOG_TYPE_ERROR, "No container ID was passed in with the options dictionary.", buf, 2u);
      }

      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v49, *MEMORY[0x29EDB8300], 2, 0);
    }

    else
    {
      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v46 = *MEMORY[0x29EDB8840];
      if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_29C7F4000, v46, OS_LOG_TYPE_ERROR, "Could not find a CloudKit account from account store.", buf, 2u);
      }

      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v47, *MEMORY[0x29EDB8300], 6, 0);
    }
    v35 = ;
    v17[2](v17, 0, v35);
LABEL_26:

    goto LABEL_27;
  }

  v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v22, *MEMORY[0x29EDB8300], 9, 0);
  v17[2](v17, 0, v24);
LABEL_27:

  v50 = *MEMORY[0x29EDCA608];
}

- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v72 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x29EDB8850];
  if (*MEMORY[0x29EDB8850] != -1)
  {
    dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
  }

  v15 = MEMORY[0x29EDB8840];
  v16 = *MEMORY[0x29EDB8840];
  if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
  {
    v57 = v16;
    v60 = objc_msgSend_bundleID(v11, v58, v59);
    *buf = 138543362;
    v69 = v60;
    _os_log_debug_impl(&dword_29C7F4000, v57, OS_LOG_TYPE_DEBUG, "Authorizing %{public}@ for CloudKit", buf, 0xCu);
  }

  v19 = objc_msgSend_authorizationManager(v12, v17, v18);
  v22 = objc_msgSend__ckAccountInStore_(self, v20, v12);
  if (v22)
  {
    v23 = objc_msgSend_authorizationForClient_accountType_(v19, v21, v11, v10);
    v66 = v22;
    if (v23)
    {
      v26 = v23;
      if (objc_msgSend_isGranted(v23, v24, v25))
      {
        v67 = objc_msgSend_grantedPermissions(v26, v27, v28);
LABEL_16:
        objc_msgSend_setIsGranted_(v26, v27, 1);
        v39 = objc_msgSend_setAuthorization_forClient_onAccountType_(v19, v36, v26, v11, v10);
        if (v39)
        {
          v40 = objc_msgSend_bundleID(v11, v37, v38);

          if (v40)
          {
            if (*v14 != -1)
            {
              dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
            }

            v41 = *v15;
            if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v69 = v39;
              _os_log_error_impl(&dword_29C7F4000, v41, OS_LOG_TYPE_ERROR, "AuthorizationManager error: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v65 = v10;
          if (*v14 != -1)
          {
            dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
          }

          v42 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
          {
            v61 = v42;
            v64 = objc_msgSend_bundleID(v11, v62, v63);
            *buf = 138543618;
            v69 = v64;
            v70 = 2114;
            v71 = v67;
            _os_log_debug_impl(&dword_29C7F4000, v61, OS_LOG_TYPE_DEBUG, "Successfully set app level authorization for bundle id %{public}@ containerIDs %{public}@, notifying cloudd of the change", buf, 0x16u);
          }

          v45 = objc_msgSend_connection(self, v43, v44);
          v48 = objc_msgSend_processScopedDaemonProxy(v45, v46, v47);
          v51 = objc_msgSend_bundleID(v11, v49, v50);
          v54 = objc_msgSend_allObjects(v67, v52, v53);
          objc_msgSend_accountsDidGrantAccessToBundleID_containerIdentifiers_(v48, v55, v51, v54);

          v10 = v65;
        }

        v13[2](v13, 1, 0);

        v22 = v66;
        goto LABEL_28;
      }
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x29EDBDFF0]);
      v26 = objc_msgSend_initForClient_(v31, v32, v11);
      v33 = v10;
      v34 = objc_alloc_init(MEMORY[0x29EDB8E50]);
      objc_msgSend_setGrantedPermissions_(v26, v35, v34);

      v10 = v33;
    }

    v67 = 0;
    goto LABEL_16;
  }

  if (*v14 != -1)
  {
    dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
  }

  v29 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_29C7F4000, v29, OS_LOG_TYPE_ERROR, "Could not find a CloudKit account from account store.", buf, 2u);
  }

  v26 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v30, *MEMORY[0x29EDB8300], 6, 0);
  (v13)[2](v13, 0, v26);
LABEL_28:

  v56 = *MEMORY[0x29EDCA608];
}

- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v63 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (objc_msgSend__haveAccountsOfType_withStore_(self, v14, v10, v12))
  {
    v17 = objc_msgSend_authorizationManager(v12, v15, v16);
    v19 = objc_msgSend_authorizationForClient_accountType_(v17, v18, v11, v10);

    if (!v19)
    {
      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v34 = *MEMORY[0x29EDB8840];
      if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
      {
        v35 = v34;
        v38 = objc_msgSend_bundleID(v11, v36, v37);
        *buf = 138543362;
        v62 = v38;
        _os_log_debug_impl(&dword_29C7F4000, v35, OS_LOG_TYPE_DEBUG, "Client %{public}@ does not have an existing ClientAuthorization. Ignoring...", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v22 = objc_msgSend_grantedPermissions(v19, v20, v21);
    objc_msgSend_setIsGranted_(v19, v23, 0);
    v26 = objc_msgSend_authorizationManager(v12, v24, v25);
    v28 = objc_msgSend_setAuthorization_forClient_onAccountType_(v26, v27, v19, v11, v10);

    v31 = MEMORY[0x29EDB8840];
    v60 = v28;
    if (v28)
    {
      v32 = objc_msgSend_bundleID(v11, v29, v30);

      if (v32)
      {
        if (*MEMORY[0x29EDB8850] != -1)
        {
          dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
        }

        v33 = *v31;
        if (!os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v62 = v28;
        _os_log_error_impl(&dword_29C7F4000, v33, OS_LOG_TYPE_ERROR, "AuthorizationManager error: %@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v39 = *v31;
      if (!os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v40 = v39;
      v43 = objc_msgSend_bundleID(v11, v41, v42);
      *buf = 138543362;
      v62 = v43;
      _os_log_debug_impl(&dword_29C7F4000, v40, OS_LOG_TYPE_DEBUG, "Successfully revoked app level authorization for bundle id %{public}@", buf, 0xCu);
    }

    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

LABEL_19:
    v44 = *v31;
    if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29C7F4000, v44, OS_LOG_TYPE_DEBUG, "Notifying cloudd of the change", buf, 2u);
    }

    v47 = objc_msgSend_connection(self, v45, v46);
    v50 = objc_msgSend_processScopedDaemonProxy(v47, v48, v49);
    v53 = objc_msgSend_bundleID(v11, v51, v52);
    v54 = v22;
    v57 = objc_msgSend_allObjects(v22, v55, v56);
    objc_msgSend_accountsDidRevokeAccessToBundleID_containerIdentifiers_(v50, v58, v53, v57);

LABEL_22:
  }

  v13[2](v13, 1, 0);

  v59 = *MEMORY[0x29EDCA608];
}

- (void)revokeAllAccessToAccountsOfType:(id)a3 store:(id)a4 withCompletion:(id)a5
{
  v66 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v58 = self;
  if (objc_msgSend__haveAccountsOfType_withStore_(self, v11, v8, v9))
  {
    v14 = objc_msgSend_authorizationManager(v9, v12, v13);
    v16 = objc_msgSend_allAuthorizationsForAccountType_(v14, v15, v8);

    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v55 = v10;
    v17 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
    {
      v52 = v17;
      *buf = 134217984;
      v65 = objc_msgSend_count(v16, v53, v54);
      _os_log_debug_impl(&dword_29C7F4000, v52, OS_LOG_TYPE_DEBUG, "Found %lu authorized clients. Revoking all...", buf, 0xCu);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v16;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v59, v63, 16);
    if (v19)
    {
      v22 = v19;
      v57 = *v60;
      do
      {
        v23 = 0;
        do
        {
          if (*v60 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v59 + 1) + 8 * v23);
          v25 = objc_msgSend_client(v24, v20, v21, v55);
          v28 = objc_msgSend_grantedPermissions(v24, v26, v27);
          v29 = v9;
          v32 = objc_msgSend_authorizationManager(v9, v30, v31);
          v34 = objc_msgSend_removeAuthorizationForClient_accountType_(v32, v33, v25, v8);

          if (*MEMORY[0x29EDB8850] != -1)
          {
            dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
          }

          v35 = v8;
          v36 = *MEMORY[0x29EDB8840];
          if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_29C7F4000, v36, OS_LOG_TYPE_DEBUG, "Notifying cloudd of the change", buf, 2u);
          }

          v39 = objc_msgSend_connection(v58, v37, v38);
          v42 = objc_msgSend_processScopedDaemonProxy(v39, v40, v41);
          v45 = objc_msgSend_bundleID(v25, v43, v44);
          v48 = objc_msgSend_allObjects(v28, v46, v47);
          objc_msgSend_accountsDidRevokeAccessToBundleID_containerIdentifiers_(v42, v49, v45, v48);

          ++v23;
          v8 = v35;
          v9 = v29;
        }

        while (v22 != v23);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v59, v63, 16);
      }

      while (v22);
    }

    v10 = v55;
  }

  else
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v50 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29C7F4000, v50, OS_LOG_TYPE_ERROR, "No CloudKit accounts. What?", buf, 2u);
    }
  }

  v10[2](v10, 1, 0);

  v51 = *MEMORY[0x29EDCA608];
}

- (BOOL)_haveAccountsOfType:(id)a3 withStore:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_identifier(a3, v6, v7);
  v10 = objc_msgSend_accountsWithAccountTypeIdentifier_(v5, v9, v8);

  LOBYTE(v8) = objc_msgSend_count(v10, v11, v12) != 0;
  return v8;
}

@end