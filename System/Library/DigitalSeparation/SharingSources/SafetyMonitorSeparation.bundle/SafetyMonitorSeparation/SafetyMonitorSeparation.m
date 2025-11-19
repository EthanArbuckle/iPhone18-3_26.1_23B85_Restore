void sub_E74(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = qword_8EB0;
    if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = v7;
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to fetch shared resouces due to error: %@", buf, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
LABEL_44:
    v9();
    goto LABEL_45;
  }

  if (([v6 isActiveState] & 1) == 0)
  {
    v45 = qword_8EB0;
    if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Session not in active state, no resources to fetch.", buf, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
    goto LABEL_44;
  }

  v47 = a1;
  v51 = objc_alloc_init(CNContactStore);
  v62 = CNContactIdentifierKey;
  v50 = [NSArray arrayWithObjects:&v62 count:1];
  v46 = objc_alloc_init(SMDSSharedResource);
  v10 = [NSMutableArray alloc];
  v11 = [v6 configuration];
  v12 = [v11 conversation];
  v13 = [v12 receiverHandles];
  v52 = [v10 initWithCapacity:{objc_msgSend(v13, "count")}];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = v6;
  v14 = [v6 configuration];
  v15 = [v14 conversation];
  v16 = [v15 receiverHandles];

  obj = v16;
  v54 = [v16 countByEnumeratingWithState:&v56 objects:v61 count:16];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v54)
  {
    goto LABEL_38;
  }

  v53 = *v57;
  do
  {
    v20 = 0;
    do
    {
      if (*v57 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v56 + 1) + 8 * v20);
      v22 = objc_alloc_init(SMDSParticipant);
      v23 = objc_alloc_init(SMDSIdentity);
      v24 = [v21 primaryHandle];
      v25 = qword_8EB0;
      if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = v24;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Searching for contact with handle: %@", buf, 0xCu);
      }

      if ([CNEmailAddressUtilities isStringEmailAddress:v24, v46])
      {
        v26 = qword_8EB0;
        if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v64 = v24;
          _os_log_debug_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "Participant identifier is email: %@", buf, 0xCu);
        }

        [(SMDSIdentity *)v23 setEmailAddress:v24];
        v27 = [CNContact predicateForContactsMatchingEmailAddress:v24];
      }

      else
      {
        if (![CNPhoneNumberHelper isStringPhoneNumber:v24])
        {
          goto LABEL_22;
        }

        v28 = qword_8EB0;
        if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v64 = v24;
          _os_log_debug_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "Participant identifier is phone: %@", buf, 0xCu);
        }

        [(SMDSIdentity *)v23 setPhoneNumber:v24];
        v29 = [[CNPhoneNumber alloc] initWithStringValue:v24];
        v27 = [CNContact predicateForContactsMatchingPhoneNumber:v29];

        v17 = v29;
      }

      v17 = v27;
LABEL_22:
      v30 = qword_8EB0;
      if (v17)
      {
        if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v64 = v17;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Searching contact store with predicate: %@", buf, 0xCu);
        }

        v55 = v19;
        v31 = [v51 unifiedContactsMatchingPredicate:v17 keysToFetch:v50 error:&v55];
        v32 = v55;

        if ([v31 count])
        {
          v33 = [v31 firstObject];
          v34 = qword_8EB0;
          if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
          {
            v35 = v34;
            v36 = [v31 firstObject];
            *buf = 138412290;
            v64 = v36;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Found contact: %@", buf, 0xCu);
          }

          v37 = [v33 identifier];
          [(SMDSIdentity *)v23 setUnifiedContactIdentifier:v37];
        }

        else
        {
          v38 = qword_8EB0;
          if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "No contacts found.", buf, 2u);
          }
        }

        [(SMDSParticipant *)v22 setIdentity:v23];
        v39 = qword_8EB0;
        if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v64 = v22;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Participant info: %@", buf, 0xCu);
        }

        [v52 addObject:v22];
        v18 = v31;
        v19 = v32;
      }

      else if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v64 = v24;
        _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "Participant identifier was neither email nor phone number: %@", buf, 0xCu);
      }

      v20 = v20 + 1;
    }

    while (v54 != v20);
    v54 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  }

  while (v54);
LABEL_38:

  v40 = [v52 copy];
  v41 = v46;
  [(SMDSSharedResource *)v46 setParticipants:v40];

  v42 = qword_8EB0;
  if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v64 = v46;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Passing resource, %@", buf, 0xCu);
  }

  v43 = *(v47 + 32);
  v60 = v46;
  v44 = [NSArray arrayWithObjects:&v60 count:1, v46];
  (*(v43 + 16))(v43, v44, 0);

  v7 = 0;
  v6 = v48;
LABEL_45:
}

void sub_1714(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7 || ([v6 isValidState] & 1) == 0)
  {
    v9 = qword_8EB0;
    if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed to end session due to error fetching sessionID: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = [*(a1 + 32) safetyMonitorManager];
  v11 = [v6 configuration];
  v12 = [v11 sessionID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_18B0;
  v13[3] = &unk_41A8;
  v14 = *(a1 + 40);
  [v10 endSessionForSessionID:v12 reason:4 completion:v13];
}

void sub_18B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_8EB0;
  if (v3)
  {
    if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to end session due to error: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Ending session.", &v6, 2u);
  }

  v5 = qword_8EB0;
  if (os_log_type_enabled(qword_8EB0, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "All sharing stopped.", &v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}