sec_identity_t nw_utilities_identity_for_key_pair_with_subject_and_parameters(__SecKey *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SecKeyCopyPublicKey(a1);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (v7)
  {
    CFRelease(v7);
  }

  if (!SelfSignedCertificate)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v12, &type, &v33))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s SecGenerateSelfSignedCertificate failed", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v33 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s SecGenerateSelfSignedCertificate failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v20 = type;
    v21 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s SecGenerateSelfSignedCertificate failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v21)
    {
      *buf = 136446466;
      v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s SecGenerateSelfSignedCertificate failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v9 = SecIdentityCreate();
  CFRelease(SelfSignedCertificate);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v12, &type, &v33))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s SecIdentityCreate failed", buf, 0xCu);
      }

LABEL_55:

LABEL_56:
      if (!v12)
      {
LABEL_58:
        v10 = 0;
        goto LABEL_59;
      }

LABEL_57:
      free(v12);
      goto LABEL_58;
    }

    if (v33 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v29 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v29, "%{public}s SecIdentityCreate failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v22 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s SecIdentityCreate failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v23)
    {
      *buf = 136446466;
      v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
      v37 = 2082;
      v38 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s SecIdentityCreate failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_30:

    free(backtrace_string);
    if (!v12)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v10 = sec_identity_create(v9);
  CFRelease(v9);
  if (!v10)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v12, &type, &v33))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s sec_identity_create failed", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v25 = __nw_create_backtrace_string();
      if (v25)
      {
        v26 = v25;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446466;
          v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
          v37 = 2082;
          v38 = v26;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s sec_identity_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        if (!v12)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v13 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v31, "%{public}s sec_identity_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v36 = "nw_utilities_identity_for_key_pair_with_subject_and_parameters";
        _os_log_impl(&dword_181A37000, v13, v30, "%{public}s sec_identity_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_55;
  }

LABEL_59:

  return v10;
}

uint64_t nw_utilities_trust_ref_matches_public_key(void *a1, void *a2, _BYTE *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = sec_trust_copy_ref(v5);
  v8 = v7;
  if (!v7)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_utilities_trust_ref_matches_public_key";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v26, &type, &v52))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null trustRef", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v27, type);
      if (backtrace_string)
      {
        if (v37)
        {
          *buf = 136446466;
          v56 = "nw_utilities_trust_ref_matches_public_key";
          v57 = 2082;
          v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v36, "%{public}s called with null trustRef, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v26)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (v37)
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v27, v36, "%{public}s called with null trustRef, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v27, v44, "%{public}s called with null trustRef, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_70;
  }

  v9 = SecTrustCopyKey(v7);
  CFRelease(v8);
  if (!v9)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v56 = "nw_utilities_trust_ref_matches_public_key";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v26, &type, &v52))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null publicKey", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v38 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v27, type);
      if (v38)
      {
        if (v40)
        {
          *buf = 136446466;
          v56 = "nw_utilities_trust_ref_matches_public_key";
          v57 = 2082;
          v58 = v38;
          _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null publicKey, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
LABEL_71:
        if (!v26)
        {
LABEL_73:
          v21 = 0;
          goto LABEL_24;
        }

LABEL_72:
        free(v26);
        goto LABEL_73;
      }

      if (v40)
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null publicKey, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null publicKey, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_70:

    goto LABEL_71;
  }

  v10 = SecKeyCopySubjectPublicKeyInfo();
  v47 = v5;
  CFRelease(v9);
  if (v10)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v49;
      while (2)
      {
        v16 = 0;
        v17 = v14;
        v14 += v13;
        do
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v48 + 1) + 8 * v16);
          if ([v18 isEqual:v10])
          {
            if (a3)
            {
              *a3 = v17;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            v5 = v47;
            v6 = v11;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = [v18 hash];
              *buf = 136446466;
              v56 = "nw_utilities_trust_ref_matches_public_key";
              v57 = 2048;
              v58 = v23;
              _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s Matches key: #0x%lx", buf, 0x16u);
            }

            v21 = 1;
            goto LABEL_23;
          }

          ++v17;
          ++v16;
        }

        while (v13 != v16);
        v13 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v5 = v47;
    v6 = v11;
    if (a3)
    {
      *a3 = -1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v10 hash];
      *buf = 136446466;
      v56 = "nw_utilities_trust_ref_matches_public_key";
      v57 = 2048;
      v58 = v20;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s No match for peer key #0x%lx, returning false", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v31 = __nwlog_obj();
  *buf = 136446210;
  v56 = "nw_utilities_trust_ref_matches_public_key";
  v32 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v32, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null keyInfo", buf, 0xCu);
      }

LABEL_76:

      goto LABEL_77;
    }

    if (v52 != 1)
    {
      v33 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v33, v46, "%{public}s called with null keyInfo, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_76;
    }

    v41 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v42 = type;
    v43 = os_log_type_enabled(v33, type);
    if (!v41)
    {
      if (v43)
      {
        *buf = 136446210;
        v56 = "nw_utilities_trust_ref_matches_public_key";
        _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null keyInfo, no backtrace", buf, 0xCu);
      }

      goto LABEL_76;
    }

    if (v43)
    {
      *buf = 136446466;
      v56 = "nw_utilities_trust_ref_matches_public_key";
      v57 = 2082;
      v58 = v41;
      _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null keyInfo, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_77:
  if (v32)
  {
    free(v32);
    v21 = 0;
    goto LABEL_23;
  }

LABEL_17:
  v21 = 0;
LABEL_23:

LABEL_24:
  return v21;
}

uint64_t nw_utilities_cidr_string_to_subnet_and_mask(const char *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v52 = __nwlog_obj();
    __dst = 136446210;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v53 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v53, &type, &v68))
    {
      goto LABEL_196;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v68 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v55 = type;
        v61 = os_log_type_enabled(v54, type);
        if (backtrace_string)
        {
          if (v61)
          {
            __dst = 136446466;
            v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
            v72 = 2082;
            v73 = backtrace_string;
            _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null netstr, dumping backtrace:%{public}s", &__dst, 0x16u);
          }

          free(backtrace_string);
LABEL_196:
          if (!v53)
          {
            return 0;
          }

LABEL_197:
          free(v53);
          return 0;
        }

        if (v61)
        {
          __dst = 136446210;
          v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
          v56 = "%{public}s called with null netstr, no backtrace";
          goto LABEL_194;
        }
      }

      else
      {
        v54 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v54, type))
        {
          __dst = 136446210;
          v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
          v56 = "%{public}s called with null netstr, backtrace limit exceeded";
          goto LABEL_194;
        }
      }

      goto LABEL_195;
    }

    v54 = __nwlog_obj();
    v55 = type;
    if (!os_log_type_enabled(v54, type))
    {
      goto LABEL_195;
    }

    __dst = 136446210;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v56 = "%{public}s called with null netstr";
    goto LABEL_194;
  }

  if (!a2)
  {
    v57 = __nwlog_obj();
    __dst = 136446210;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v53 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v53, &type, &v68))
    {
      goto LABEL_196;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v68 != 1)
      {
        v54 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v54, type))
        {
          __dst = 136446210;
          v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
          v56 = "%{public}s called with null network, backtrace limit exceeded";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      v62 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v55 = type;
      v63 = os_log_type_enabled(v54, type);
      if (!v62)
      {
        if (v63)
        {
          __dst = 136446210;
          v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
          v56 = "%{public}s called with null network, no backtrace";
          goto LABEL_194;
        }

        goto LABEL_195;
      }

      if (!v63)
      {
        goto LABEL_176;
      }

      __dst = 136446466;
      v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
      v72 = 2082;
      v73 = v62;
      v64 = "%{public}s called with null network, dumping backtrace:%{public}s";
      goto LABEL_175;
    }

    v54 = __nwlog_obj();
    v55 = type;
    if (!os_log_type_enabled(v54, type))
    {
      goto LABEL_195;
    }

    __dst = 136446210;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v56 = "%{public}s called with null network";
LABEL_194:
    _os_log_impl(&dword_181A37000, v54, v55, v56, &__dst, 0xCu);
    goto LABEL_195;
  }

  if (!a3)
  {
    v58 = __nwlog_obj();
    __dst = 136446210;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v53 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v53, &type, &v68))
    {
      goto LABEL_196;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type;
      if (!os_log_type_enabled(v54, type))
      {
        goto LABEL_195;
      }

      __dst = 136446210;
      v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
      v56 = "%{public}s called with null mask";
      goto LABEL_194;
    }

    if (v68 != 1)
    {
      v54 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v54, type))
      {
        __dst = 136446210;
        v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
        v56 = "%{public}s called with null mask, backtrace limit exceeded";
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    v62 = __nw_create_backtrace_string();
    v54 = __nwlog_obj();
    v55 = type;
    v65 = os_log_type_enabled(v54, type);
    if (!v62)
    {
      if (v65)
      {
        __dst = 136446210;
        v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
        v56 = "%{public}s called with null mask, no backtrace";
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    if (!v65)
    {
      goto LABEL_176;
    }

    __dst = 136446466;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v72 = 2082;
    v73 = v62;
    v64 = "%{public}s called with null mask, dumping backtrace:%{public}s";
LABEL_175:
    _os_log_impl(&dword_181A37000, v54, v55, v64, &__dst, 0x16u);
    goto LABEL_176;
  }

  if (!a4)
  {
    v59 = __nwlog_obj();
    __dst = 136446210;
    v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
    v53 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v53, &type, &v68))
    {
      goto LABEL_196;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v54, type))
      {
        __dst = 136446210;
        v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
        v56 = "%{public}s called with null prefix";
        goto LABEL_194;
      }

LABEL_195:

      goto LABEL_196;
    }

    if (v68 != 1)
    {
      v54 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v54, type))
      {
        __dst = 136446210;
        v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
        v56 = "%{public}s called with null prefix, backtrace limit exceeded";
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    v62 = __nw_create_backtrace_string();
    v54 = __nwlog_obj();
    v55 = type;
    v66 = os_log_type_enabled(v54, type);
    if (!v62)
    {
      if (v66)
      {
        __dst = 136446210;
        v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
        v56 = "%{public}s called with null prefix, no backtrace";
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    if (v66)
    {
      __dst = 136446466;
      v71 = "nw_utilities_cidr_string_to_subnet_and_mask";
      v72 = 2082;
      v73 = v62;
      v64 = "%{public}s called with null prefix, dumping backtrace:%{public}s";
      goto LABEL_175;
    }

LABEL_176:

    free(v62);
    if (!v53)
    {
      return 0;
    }

    goto LABEL_197;
  }

  v8 = strlen(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = *a1;
  v10 = (v9 - 46);
  if (v10 > 0x38)
  {
    goto LABEL_31;
  }

  if (((1 << (v9 - 46)) & 0x1F8000001F80000) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 1;
    goto LABEL_9;
  }

  v26 = 0;
  if (((1 << (v9 - 46)) & 3) != 0)
  {
    return v26;
  }

  if (v10 == 12)
  {
    v13 = 0;
    v14 = 0;
    v11 = 1;
    v12 = 1;
  }

  else
  {
LABEL_31:
    if ((v9 - 48) > 9)
    {
      return 0;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

LABEL_9:
  if (v8 != 1)
  {
    v18 = *(a1 + 1);
    v19 = (v18 - 47);
    if (v19 <= 0x37)
    {
      if (((1 << (v18 - 47)) & 0xFC000000FC0000) != 0)
      {
        v15 = 0;
        v16 = 0;
        ++v14;
        goto LABEL_15;
      }

      if (v18 == 47)
      {
        v15 = 0;
        v16 = 0;
        v20 = 1;
        v21 = 1;
        if (v8 == 2)
        {
          goto LABEL_74;
        }

LABEL_17:
        v22 = *(a1 + 2);
        v23 = (v22 - 47);
        if (v23 > 0x37)
        {
          goto LABEL_105;
        }

        if (((1 << (v22 - 47)) & 0xFC000000FC0000) != 0)
        {
          v24 = v20 ^ 1;
          if (v21 < 3)
          {
            v24 = 1;
          }

          if (v24)
          {
            return 0;
          }

          v15 = 0;
          ++v14;
          goto LABEL_23;
        }

        if (v22 == 47)
        {
          v26 = 0;
          if (v18 == 46)
          {
            v39 = v20;
          }

          else
          {
            v39 = 1;
          }

          if (v21 < 3 || (v39 & 1) == 0)
          {
            return v26;
          }

          v21 = 2;
          goto LABEL_23;
        }

        if (v23 == 11)
        {
          v29 = v20 ^ 1;
          if (v21 < 3)
          {
            v29 = 1;
          }

          if (v29)
          {
            return 0;
          }

          ++v12;
          if (v18 == 58)
          {
            if (v16)
            {
              return 0;
            }

            v15 = 0;
            v16 = 1;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
LABEL_105:
          if (v22 == 46)
          {
            v26 = 0;
            if (v14 || v12 || v21 < 3)
            {
              return v26;
            }

            v12 = 0;
            v14 = 0;
            ++v15;
          }

          else if ((v22 - 48) > 9)
          {
            return 0;
          }
        }

LABEL_23:
        if (v8 != 3)
        {
          v25 = 0;
          while (1)
          {
            v17 = v25 + 3;
            v27 = a1[v25 + 3];
            v28 = (v27 - 47);
            if (v28 > 0x37)
            {
              goto LABEL_50;
            }

            if (((1 << (v27 - 47)) & 0xFC000000FC0000) != 0)
            {
              v26 = 0;
              if (v15 || v21 <= v17)
              {
                return v26;
              }

              v15 = 0;
              ++v14;
              v17 = v21;
              goto LABEL_37;
            }

            if (v27 != 47)
            {
              break;
            }

            if (v21 <= v17 || v15 && a1[v25 + 2] == 46 || v12 && a1[v25 + 2] == 58 && a1[v25 + 1] != 58)
            {
              return 0;
            }

LABEL_37:
            ++v25;
            v21 = v17;
            if (v8 - 3 == v25)
            {
              goto LABEL_75;
            }
          }

          if (v28 == 11)
          {
            v26 = 0;
            if (v15 || v21 <= v17)
            {
              return v26;
            }

            ++v12;
            if (a1[v25 + 2] == 58)
            {
              if (v16)
              {
                return 0;
              }

              v15 = 0;
              v16 = 1;
              v17 = v21;
            }

            else
            {
              v15 = 0;
              v17 = v21;
            }

            goto LABEL_37;
          }

LABEL_50:
          if (v27 == 46)
          {
            v26 = 0;
            if (v14 || v12 || v21 <= v17)
            {
              return v26;
            }

            v12 = 0;
            v14 = 0;
            ++v15;
            v17 = v21;
          }

          else
          {
            v17 = v21;
            if ((v27 - 48) > 9)
            {
              return 0;
            }
          }

          goto LABEL_37;
        }

LABEL_74:
        v17 = v21;
        goto LABEL_75;
      }

      if (v19 == 11)
      {
        v15 = 0;
        ++v12;
        v16 = v9 == 58;
        goto LABEL_15;
      }
    }

    if (v18 == 46)
    {
      if ((v13 | v11))
      {
        return 0;
      }

      v20 = 0;
      v12 = 0;
      v16 = 0;
      v14 = 0;
      v15 = 1;
LABEL_16:
      v21 = v8;
      if (v8 == 2)
      {
        goto LABEL_74;
      }

      goto LABEL_17;
    }

    if ((v18 - 48) > 9)
    {
      return 0;
    }

    v15 = 0;
    v16 = 0;
LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }

  v15 = 0;
  v16 = 0;
  v17 = 1;
LABEL_75:
  v30 = v14 == 0;
  if (v17 >= v8)
  {
    return 0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v31 = v17 + 1;
  *a4 = 0;
  v32 = strtol(&a1[v17 + 1], 0, 0);
  if (v32 < 1)
  {
    return 0;
  }

  if (v12)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  if (v33)
  {
    if (v32 > 0x20)
    {
      return 0;
    }

    *(a3 + 1) = 2;
    *(a2 + 1) = 2;
    *a3 = 16;
    *a2 = 16;
    if (v17 > 0xE)
    {
      return 0;
    }

    v34 = v32;
    v35 = (a3 + 4);
    memcpy(&__dst, a1, v17);
    if (v15 > 2 || v17 == 14)
    {
      goto LABEL_120;
    }

    v36 = v17 + 2;
    *(&__dst + v17) = 46;
    *(&__dst + v31) = 48;
    if (v15 > 1 || v17 > 0xB)
    {
      goto LABEL_110;
    }

    v37 = v17 + 4;
    *(&__dst + v36) = 46;
    *(&__dst + v17 + 3) = 48;
    if (v15 <= 0 && v17 <= 9)
    {
      v36 = v17 + 6;
      *(&__dst + v37) = 46;
      *(&__dst + v17 + 5) = 48;
      if ((v15 & 0x80000000) == 0 || v17 > 7)
      {
        goto LABEL_110;
      }

      v37 = v17 | 8;
      *(&__dst + v36) = 46;
      *(&__dst + v17 + 7) = 48;
      if (v15 <= -2 && v17 <= 5)
      {
        v36 = v17 + 10;
        *(&__dst + v37) = 46;
        *(&__dst + v17 + 9) = 48;
        if (v15 <= -3 && v37 <= 0xB)
        {
          v37 = v17 + 12;
          *(&__dst + v36) = 46;
          *(&__dst + v17 + 11) = 48;
          if (v15 <= -4 && v17 <= 1)
          {
            v38 = &__dst + v17;
            v17 |= 0xEuLL;
            *(&__dst + v37) = 46;
            v38[13] = 48;
            goto LABEL_120;
          }

          goto LABEL_119;
        }

LABEL_110:
        v17 = v36;
        goto LABEL_120;
      }
    }

LABEL_119:
    v17 = v37;
LABEL_120:
    *(&__dst + v17) = 0;
    if (inet_pton(2, &__dst, (a2 + 4)) == 1)
    {
      goto LABEL_121;
    }

    return 0;
  }

  if (v32 > 0x80)
  {
    return 0;
  }

  *(a3 + 1) = 30;
  *(a2 + 1) = 30;
  *a3 = 28;
  *a2 = 28;
  if (v17 > 0x26)
  {
    return 0;
  }

  v34 = v32;
  memcpy(&__dst, a1, v17);
  if (!v16 && v12 <= 6)
  {
    if (v17 - 37 < 0xFFFFFFFFFFFFFFD8)
    {
      return 0;
    }

    *(&__dst + v17) = 58;
    *(&__dst + v31) = 58;
    v17 += 2;
  }

  *(&__dst + v17) = 0;
  if (inet_pton(30, &__dst, (a2 + 8)) != 1)
  {
    return 0;
  }

  v35 = (a3 + 8);
LABEL_121:
  *a4 = v34;
  v40 = 8;
  if (v34 < 8)
  {
    v40 = v34;
  }

  v41 = v34 - v40 + 7;
  if (v41 >= 8)
  {
    v43 = (v41 >> 3) + 1;
    v44 = v43 & 0x3FFFFFFFFFFFFFFELL;
    v42 = v34 - 8 * (v43 & 0x3FFFFFFFFFFFFFFELL);
    v45 = v35 + 1;
    v46 = v43 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v47 = v34 - 8;
      if (v34 >= 8)
      {
        v48 = 8;
      }

      else
      {
        v48 = v34;
      }

      if (v47 >= 8)
      {
        v47 = 8;
      }

      v49 = nw_utilities_cidr_string_to_subnet_and_mask::bb[v47 - 1];
      *(v45 - 1) = nw_utilities_cidr_string_to_subnet_and_mask::bb[v48 - 1];
      *v45 = v49;
      v45 += 2;
      v34 -= 16;
      v46 -= 2;
    }

    while (v46);
    if (v43 == v44)
    {
      return 1;
    }

    v35 += v44;
  }

  else
  {
    v42 = v34;
  }

  v26 = 1;
  do
  {
    v51 = v42 - 8;
    v50 = v42 <= 8;
    if (v42 >= 8)
    {
      v42 = 8;
    }

    *v35++ = nw_utilities_cidr_string_to_subnet_and_mask::bb[v42 - 1];
    v42 = v51;
  }

  while (!v50);
  return v26;
}

BOOL nw_string_is_ip_address(const char *a1, void *a2, size_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_string_is_ip_address";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v17, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_string_is_ip_address";
          v20 = "%{public}s called with null str";
LABEL_42:
          _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }

      if (v26 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_string_is_ip_address";
          v20 = "%{public}s called with null str, backtrace limit exceeded";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v23 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          *&buf[4] = "nw_string_is_ip_address";
          v20 = "%{public}s called with null str, no backtrace";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (!v23)
      {
        goto LABEL_33;
      }

      *buf = 136446466;
      *&buf[4] = "nw_string_is_ip_address";
      v29 = 2082;
      v30 = backtrace_string;
      v24 = "%{public}s called with null str, dumping backtrace:%{public}s";
      goto LABEL_32;
    }

LABEL_44:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_string_is_ip_address";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v17, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_string_is_ip_address";
          v20 = "%{public}s called with null addr";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (v26 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_string_is_ip_address";
          v20 = "%{public}s called with null addr, backtrace limit exceeded";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v25 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          *&buf[4] = "nw_string_is_ip_address";
          v20 = "%{public}s called with null addr, no backtrace";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (!v25)
      {
        goto LABEL_33;
      }

      *buf = 136446466;
      *&buf[4] = "nw_string_is_ip_address";
      v29 = 2082;
      v30 = backtrace_string;
      v24 = "%{public}s called with null addr, dumping backtrace:%{public}s";
LABEL_32:
      _os_log_impl(&dword_181A37000, v18, v19, v24, buf, 0x16u);
LABEL_33:

      free(backtrace_string);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  *buf = 0;
  v5 = getaddrinfo(a1, 0, &nw_string_is_ip_address::hints, buf);
  v6 = v5 == 0;
  if (!v5)
  {
    v7 = *buf;
    if (*buf)
    {
      v8 = v6;
      v9 = *buf;
      while (1)
      {
        v10 = *(v9 + 32);
        v11 = v10[1];
        if (v11 == 30 || v11 == 2)
        {
          break;
        }

        v9 = *(v9 + 40);
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      v13 = *v10;
      if (v13 <= a3)
      {
        v14 = *buf;
        memcpy(a2, v10, v13);
        v7 = v14;
      }

LABEL_14:
      freeaddrinfo(v7);
      return v8;
    }
  }

  return v6;
}

void nw_utilities_get_c_string_from_cfstring(const __CFString *a1, CFStringEncoding a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_utilities_get_c_string_from_cfstring";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v10, &type, &v39))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v12, v29, "%{public}s called with null stringRef", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v39 != 1)
    {
      v12 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v12, v37, "%{public}s called with null stringRef, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v33 = type;
    v34 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v12, v33, "%{public}s called with null stringRef, no backtrace", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v34)
    {
      *buf = 136446466;
      v42 = "nw_utilities_get_c_string_from_cfstring";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v33, "%{public}s called with null stringRef, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  if (!v5)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_utilities_get_c_string_from_cfstring";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v10, &type, &v39))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null access_block", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v39 != 1)
    {
      v12 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v12, v38, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v35 = type;
    v36 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v12, v35, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v36)
    {
      *buf = 136446466;
      v42 = "nw_utilities_get_c_string_from_cfstring";
      v43 = 2082;
      v44 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v35, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(backtrace_string);
    if (!v10)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (CFStringGetCStringPtr(a1, a2))
  {
    v6[2](v6);
    goto LABEL_46;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
  if (MaximumSizeForEncoding != -1)
  {
    v9 = MaximumSizeForEncoding;
    v10 = nw_calloc_type<unsigned char>(MaximumSizeForEncoding + 1);
    if (CFStringGetCString(a1, v10, v9 + 1, a2))
    {
      (v6[2])(v6, v10);
      goto LABEL_44;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v42 = "nw_utilities_get_c_string_from_cfstring";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v15, &type, &v39))
    {
LABEL_42:
      if (!v15)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s CFStringGetCString failed", buf, 0xCu);
      }

LABEL_41:

      goto LABEL_42;
    }

    if (v39 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s CFStringGetCString failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v22 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v16, type);
    if (!v22)
    {
      if (v24)
      {
        *buf = 136446210;
        v42 = "nw_utilities_get_c_string_from_cfstring";
        _os_log_impl(&dword_181A37000, v16, v23, "%{public}s CFStringGetCString failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if (v24)
    {
      *buf = 136446466;
      v42 = "nw_utilities_get_c_string_from_cfstring";
      v43 = 2082;
      v44 = v22;
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s CFStringGetCString failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v22);
    if (v15)
    {
LABEL_43:
      free(v15);
    }

LABEL_44:
    if (!v10)
    {
      goto LABEL_46;
    }

LABEL_45:
    free(v10);
    goto LABEL_46;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446210;
  v42 = "nw_utilities_get_c_string_from_cfstring";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v10, &type, &v39))
  {
    goto LABEL_44;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v42 = "nw_utilities_get_c_string_from_cfstring";
      _os_log_impl(&dword_181A37000, v12, v13, "%{public}s CFStringGetMaximumSizeForEncoding failed", buf, 0xCu);
    }

LABEL_79:

    goto LABEL_44;
  }

  if (v39 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v25 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v42 = "nw_utilities_get_c_string_from_cfstring";
      _os_log_impl(&dword_181A37000, v12, v25, "%{public}s CFStringGetMaximumSizeForEncoding failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_79;
  }

  v18 = __nw_create_backtrace_string();
  if (!v18)
  {
    v12 = __nwlog_obj();
    v27 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v42 = "nw_utilities_get_c_string_from_cfstring";
      _os_log_impl(&dword_181A37000, v12, v27, "%{public}s CFStringGetMaximumSizeForEncoding failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_79;
  }

  v19 = v18;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  v21 = type;
  if (os_log_type_enabled(v20, type))
  {
    *buf = 136446466;
    v42 = "nw_utilities_get_c_string_from_cfstring";
    v43 = 2082;
    v44 = v19;
    _os_log_impl(&dword_181A37000, v20, v21, "%{public}s CFStringGetMaximumSizeForEncoding failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v10)
  {
    goto LABEL_45;
  }

LABEL_46:
}

void nw_utf8_validator_init(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    *(a1 + 2) = 0;
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_utf8_validator_init";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_utf8_validator_init";
        v5 = "%{public}s called with null state";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_utf8_validator_init";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v7)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v11 = "nw_utf8_validator_init";
        v5 = "%{public}s called with null state, no backtrace";
        goto LABEL_17;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_utf8_validator_init";
        v5 = "%{public}s called with null state, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_utf8_validator_parse(char *a1, uint64_t a2, unint64_t a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_utf8_validator_parse";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v15, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v27 = "nw_utf8_validator_parse";
          v18 = "%{public}s called with null state";
LABEL_87:
          _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
        }

LABEL_88:

        goto LABEL_89;
      }

      if (v24 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v27 = "nw_utf8_validator_parse";
          v18 = "%{public}s called with null state, backtrace limit exceeded";
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v21 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_utf8_validator_parse";
          v18 = "%{public}s called with null state, no backtrace";
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (!v21)
      {
        goto LABEL_78;
      }

      *buf = 136446466;
      v27 = "nw_utf8_validator_parse";
      v28 = 2082;
      v29 = backtrace_string;
      v22 = "%{public}s called with null state, dumping backtrace:%{public}s";
      goto LABEL_77;
    }

LABEL_89:
    if (v15)
    {
      free(v15);
    }

    return 0;
  }

  if (!a2)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_utf8_validator_parse";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v15, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v27 = "nw_utf8_validator_parse";
          v18 = "%{public}s called with null buffer";
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (v24 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v27 = "nw_utf8_validator_parse";
          v18 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v23 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v27 = "nw_utf8_validator_parse";
          v18 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (!v23)
      {
        goto LABEL_78;
      }

      *buf = 136446466;
      v27 = "nw_utf8_validator_parse";
      v28 = 2082;
      v29 = backtrace_string;
      v22 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_77:
      _os_log_impl(&dword_181A37000, v16, v17, v22, buf, 0x16u);
LABEL_78:

      free(backtrace_string);
      goto LABEL_89;
    }

    goto LABEL_89;
  }

  v4 = *a1;
  if ((v4 & 0x80000000) == 0 && a3)
  {
    v5 = 0;
    while (!v4)
    {
      v9 = *(a2 + v5);
      if ((v9 & 0x80000000) == 0)
      {
        LOBYTE(v4) = 0;
        goto LABEL_49;
      }

      a1[1] = v9;
      v10 = *(a2 + v5);
      if ((v10 - 194) > 0x1D)
      {
        if ((v10 & 0xF0) == 0xE0)
        {
          LOBYTE(v4) = 2;
        }

        else
        {
          if ((v10 - 240) > 4)
          {
LABEL_54:
            LOBYTE(v4) = -1;
            *a1 = -1;
LABEL_55:
            LODWORD(v12) = a4 ^ 1;
            if (v4 > 0)
            {
              v12 = v12;
            }

            else
            {
              v12 = 0;
            }

            if (a4)
            {
              goto LABEL_59;
            }

LABEL_53:
            a1[2] = 1;
            return v12;
          }

          LOBYTE(v4) = 3;
        }
      }

      else
      {
        LOBYTE(v4) = 1;
      }

LABEL_20:
      *a1 = v4;
LABEL_49:
      if ((v4 & 0x80) == 0 && ++v5 < a3)
      {
        continue;
      }

      goto LABEL_51;
    }

    v6 = a1[1];
    if (!a1[1])
    {
      goto LABEL_54;
    }

    if (v6 <= 0xDF)
    {
LABEL_9:
      v7 = *(a2 + v5);
      goto LABEL_10;
    }

    if (v6 == 224)
    {
      v7 = *(a2 + v5);
      if (v4 == 2)
      {
        if ((v7 - 192) < 0xFFFFFFE0)
        {
          v8 = -1;
        }

        else
        {
          v8 = 2;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v6 <= 0xEC)
      {
        goto LABEL_9;
      }

      if (v6 == 237)
      {
        v7 = *(a2 + v5);
        if (v4 == 2)
        {
          if (v7 > -97)
          {
            v8 = -1;
          }

          else
          {
            v8 = 2;
          }

          goto LABEL_19;
        }

        goto LABEL_10;
      }

      if (v6 <= 0xEF)
      {
        goto LABEL_9;
      }

      if (v6 != 240)
      {
        if (v6 > 0xF3)
        {
          if (v6 != 244)
          {
            goto LABEL_47;
          }

          v11 = *(a2 + v5);
          if (v4 == 3)
          {
            if (v11 > -113)
            {
              v8 = -1;
            }

            else
            {
              v8 = 3;
            }

            goto LABEL_19;
          }

          if (v11 < -64)
          {
LABEL_47:
            LOBYTE(v4) = v4 - 1;
            *a1 = v4;
            if (!v4)
            {
              LOBYTE(v4) = 0;
              a1[1] = 0;
            }

            goto LABEL_49;
          }

          goto LABEL_11;
        }

        goto LABEL_9;
      }

      v7 = *(a2 + v5);
      if (v4 == 3)
      {
        if ((v7 - 192) < 0xFFFFFFD0)
        {
          v8 = -1;
        }

        else
        {
          v8 = 3;
        }

        goto LABEL_19;
      }
    }

    v7 = v7;
LABEL_10:
    if (v7 <= -65)
    {
      goto LABEL_47;
    }

LABEL_11:
    v8 = -1;
LABEL_19:
    LOBYTE(v4) = v8 - 1;
    goto LABEL_20;
  }

LABEL_51:
  if (v4)
  {
    goto LABEL_55;
  }

  v12 = 1;
  if (!a4)
  {
    goto LABEL_53;
  }

LABEL_59:
  *a1 = 0;
  a1[2] = 0;
  return v12;
}

uint64_t nw_utf8_validator_is_parsing(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 2);
    return v1 & 1;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_utf8_validator_is_parsing";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_utf8_validator_is_parsing";
        v7 = "%{public}s called with null state";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_utf8_validator_is_parsing";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v13 = "nw_utf8_validator_is_parsing";
        v7 = "%{public}s called with null state, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_utf8_validator_is_parsing";
        v7 = "%{public}s called with null state, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v4)
  {
    free(v4);
  }

  v1 = 0;
  return v1 & 1;
}

void nw_utilities_get_uuid_for_pid(int pid, _OWORD *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!pid)
  {
    v5 = __nwlog_obj();
    LODWORD(buffer[0]) = 136446210;
    *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
    v6 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v16 = 0;
    if (!__nwlog_fault(v6, buf, &v16))
    {
      goto LABEL_44;
    }

    if (buf[0] == 17)
    {
      v7 = __nwlog_obj();
      v8 = buf[0];
      if (os_log_type_enabled(v7, buf[0]))
      {
        LODWORD(buffer[0]) = 136446210;
        *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
        v9 = "%{public}s called with null pid";
LABEL_42:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buffer, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = buf[0];
      v12 = os_log_type_enabled(v7, buf[0]);
      if (backtrace_string)
      {
        if (v12)
        {
          LODWORD(buffer[0]) = 136446466;
          *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
          WORD6(buffer[0]) = 2082;
          *(buffer + 14) = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null pid, dumping backtrace:%{public}s", buffer, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v6)
        {
          return;
        }

LABEL_45:
        free(v6);
        return;
      }

      if (v12)
      {
        LODWORD(buffer[0]) = 136446210;
        *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
        v9 = "%{public}s called with null pid, no backtrace";
        goto LABEL_42;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = buf[0];
      if (os_log_type_enabled(v7, buf[0]))
      {
        LODWORD(buffer[0]) = 136446210;
        *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
        v9 = "%{public}s called with null pid, backtrace limit exceeded";
        goto LABEL_42;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (a2)
  {
    if (pid >= 1)
    {
      v26 = 0;
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo(pid, 17, 1uLL, buffer, 56) == 56)
      {
        if (!uuid_is_null(buffer))
        {
          if (gLogDatapath == 1)
          {
            v15 = __nwlog_obj();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              v18 = "nw_utilities_get_uuid_for_pid";
              v19 = 1024;
              v20 = pid;
              v21 = 1040;
              v22 = 16;
              v23 = 2096;
              v24 = buffer;
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Looked up PID (%d) -> UUID (%{uuid_t}.16P)", buf, 0x22u);
            }
          }

          *a2 = buffer[0];
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v18 = "nw_utilities_get_uuid_for_pid";
          v19 = 1024;
          v20 = pid;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Failed to convert from PID (%d) to UUID", buf, 0x12u);
        }
      }
    }

    return;
  }

  v10 = __nwlog_obj();
  LODWORD(buffer[0]) = 136446210;
  *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
  v6 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v16 = 0;
  if (!__nwlog_fault(v6, buf, &v16))
  {
    goto LABEL_44;
  }

  if (buf[0] == 17)
  {
    v7 = __nwlog_obj();
    v8 = buf[0];
    if (os_log_type_enabled(v7, buf[0]))
    {
      LODWORD(buffer[0]) = 136446210;
      *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
      v9 = "%{public}s called with null out_uuid";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v16 != 1)
  {
    v7 = __nwlog_obj();
    v8 = buf[0];
    if (os_log_type_enabled(v7, buf[0]))
    {
      LODWORD(buffer[0]) = 136446210;
      *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
      v9 = "%{public}s called with null out_uuid, backtrace limit exceeded";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = buf[0];
  v14 = os_log_type_enabled(v7, buf[0]);
  if (!v13)
  {
    if (v14)
    {
      LODWORD(buffer[0]) = 136446210;
      *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
      v9 = "%{public}s called with null out_uuid, no backtrace";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v14)
  {
    LODWORD(buffer[0]) = 136446466;
    *(buffer + 4) = "nw_utilities_get_uuid_for_pid";
    WORD6(buffer[0]) = 2082;
    *(buffer + 14) = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buffer, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_45;
  }
}

uint64_t nw_utilities_copy_bundle_id_for_uuid(const unsigned __int8 *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (uuid_is_null(a1))
  {
    v8 = __nwlog_obj();
    *buf = 136446466;
    v22 = "nw_utilities_copy_bundle_id_for_uuid";
    v23 = 2080;
    *v24 = "nw_utilities_copy_bundle_id_for_uuid";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446466;
          v22 = "nw_utilities_copy_bundle_id_for_uuid";
          v23 = 2080;
          *v24 = "nw_utilities_copy_bundle_id_for_uuid";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s NULL uuid passed to %s", buf, 0x16u);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v14 = type;
        v15 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446722;
            v22 = "nw_utilities_copy_bundle_id_for_uuid";
            v23 = 2080;
            *v24 = "nw_utilities_copy_bundle_id_for_uuid";
            *&v24[8] = 2082;
            *&v24[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v14, "%{public}s NULL uuid passed to %s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v15)
        {
          *buf = 136446466;
          v22 = "nw_utilities_copy_bundle_id_for_uuid";
          v23 = 2080;
          *v24 = "nw_utilities_copy_bundle_id_for_uuid";
          _os_log_impl(&dword_181A37000, v10, v14, "%{public}s NULL uuid passed to %s, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446466;
          v22 = "nw_utilities_copy_bundle_id_for_uuid";
          v23 = 2080;
          *v24 = "nw_utilities_copy_bundle_id_for_uuid";
          _os_log_impl(&dword_181A37000, v10, v16, "%{public}s NULL uuid passed to %s, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_35:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  v2 = NEHelperCacheCopySigningIdentifierMapping();
  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "nw_utilities_copy_bundle_id_for_uuid";
      v23 = 2112;
      *v24 = v2;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s NEHelperCacheCopySigningIdentifierMapping returned %@", buf, 0x16u);
    }
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  if (object_getClass(v2) != MEMORY[0x1E69E9F10])
  {
    goto LABEL_5;
  }

  string_ptr = xpc_string_get_string_ptr(v2);
  if (!string_ptr)
  {
    goto LABEL_5;
  }

  if (gLogDatapath == 1)
  {
    v17 = string_ptr;
    v18 = __nwlog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v22 = "nw_utilities_copy_bundle_id_for_uuid";
      v23 = 1040;
      *v24 = 16;
      *&v24[4] = 2096;
      *&v24[6] = a1;
      *&v24[14] = 2080;
      *&v24[16] = v17;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s Looked up UUID (%{uuid_t}.16P) -> Bundle ID (%s)", buf, 0x26u);
    }

    string_ptr = v17;
  }

  v3 = strdup(string_ptr);
  if (v3)
  {
    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v22 = "strict_strdup";
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
LABEL_5:
    v3 = 0;
LABEL_6:

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t nw_utilities_copy_bundle_id_for_pid(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *uu = 136446210;
    *&uu[4] = "nw_utilities_copy_bundle_id_for_pid";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *uu = 136446210;
        *&uu[4] = "nw_utilities_copy_bundle_id_for_pid";
        v7 = "%{public}s called with null pid";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, uu, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *uu = 136446466;
            *&uu[4] = "nw_utilities_copy_bundle_id_for_pid";
            *&uu[12] = 2082;
            *&uu[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null pid, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *uu = 136446210;
        *&uu[4] = "nw_utilities_copy_bundle_id_for_pid";
        v7 = "%{public}s called with null pid, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *uu = 136446210;
        *&uu[4] = "nw_utilities_copy_bundle_id_for_pid";
        v7 = "%{public}s called with null pid, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:

LABEL_20:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  if (a1 < 1)
  {
    return 0;
  }

  *uu = 0;
  *&uu[8] = 0;
  nw_utilities_get_uuid_for_pid(a1, uu);
  is_null = uuid_is_null(uu);
  result = 0;
  if (!is_null)
  {
    return nw_utilities_copy_bundle_id_for_uuid(uu);
  }

  return result;
}

uint64_t nw_utilities_copy_bundle_id_for_audit_token(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v1;
  if (!(*buf | *&buf[8] | v1 | *(&v1 + 1)))
  {
    v4 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_utilities_copy_bundle_id_for_audit_token";
    *&buf[12] = 2080;
    *&buf[14] = "nw_utilities_copy_bundle_id_for_audit_token";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446466;
        *&buf[4] = "nw_utilities_copy_bundle_id_for_audit_token";
        *&buf[12] = 2080;
        *&buf[14] = "nw_utilities_copy_bundle_id_for_audit_token";
        v8 = "%{public}s NULL audit_token passed to %s";
LABEL_21:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0x16u);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v12 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446722;
            *&buf[4] = "nw_utilities_copy_bundle_id_for_audit_token";
            *&buf[12] = 2080;
            *&buf[14] = "nw_utilities_copy_bundle_id_for_audit_token";
            *&buf[22] = 2082;
            *&buf[24] = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s NULL audit_token passed to %s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v12)
        {
          goto LABEL_22;
        }

        *buf = 136446466;
        *&buf[4] = "nw_utilities_copy_bundle_id_for_audit_token";
        *&buf[12] = 2080;
        *&buf[14] = "nw_utilities_copy_bundle_id_for_audit_token";
        v8 = "%{public}s NULL audit_token passed to %s, no backtrace";
        goto LABEL_21;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446466;
        *&buf[4] = "nw_utilities_copy_bundle_id_for_audit_token";
        *&buf[12] = 2080;
        *&buf[14] = "nw_utilities_copy_bundle_id_for_audit_token";
        v8 = "%{public}s NULL audit_token passed to %s, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:

LABEL_23:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  v2 = *(a1 + 20);
  if (v2 < 1)
  {
    return 0;
  }

  if (gLogDatapath == 1)
  {
    v9 = v2;
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_utilities_copy_bundle_id_for_audit_token";
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s Looked up Audit Token -> PID (%d)", buf, 0x12u);
    }

    v2 = v9;
  }

  return nw_utilities_copy_bundle_id_for_pid(v2);
}

void nw_utilities_get_self_uuid(_OWORD *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_utilities_get_self_uuid::onceToken != -1)
    {
      v6 = a1;
      dispatch_once(&nw_utilities_get_self_uuid::onceToken, &__block_literal_global_7_47223);
      a1 = v6;
    }

    if (gLogDatapath == 1)
    {
      v7 = a1;
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v14 = "nw_utilities_get_self_uuid";
        v15 = 1024;
        *v16 = nw_utilities_get_self_uuid::self_pid;
        *&v16[4] = 1040;
        *&v16[6] = 16;
        v17 = 2096;
        v18 = &nw_utilities_get_self_uuid::self_uuid;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Self UUID for pid %d: %{uuid_t}.16P", buf, 0x22u);
      }

      a1 = v7;
    }

    *a1 = nw_utilities_get_self_uuid::self_uuid;
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_utilities_get_self_uuid";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v2, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v14 = "nw_utilities_get_self_uuid";
        v5 = "%{public}s called with null out_uuid";
LABEL_23:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v10 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_utilities_get_self_uuid";
            v15 = 2082;
            *v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v10)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v14 = "nw_utilities_get_self_uuid";
        v5 = "%{public}s called with null out_uuid, no backtrace";
        goto LABEL_23;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v14 = "nw_utilities_get_self_uuid";
        v5 = "%{public}s called with null out_uuid, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v2)
  {
    free(v2);
  }
}

void __nw_utilities_get_self_uuid_block_invoke()
{
  v0 = getpid();
  nw_utilities_get_self_uuid::self_pid = v0;
  if (v0)
  {

    nw_utilities_get_uuid_for_pid(v0, &nw_utilities_get_self_uuid::self_uuid);
  }
}

uint64_t nw_utilities_get_self_bundle_id()
{
  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  return nw_utilities_get_self_bundle_id::bundle_identifier_string;
}

uint64_t nw_utilities_get_self_name()
{
  if (nw_utilities_get_self_name::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_name::onceToken, &__block_literal_global_11_47232);
  }

  return nw_utilities_get_self_name::name;
}

uint64_t nw_utilities_get_user_agent()
{
  if (nw_utilities_get_user_agent::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_user_agent::onceToken, &__block_literal_global_13_47236);
  }

  return nw_utilities_get_user_agent::user_agent_string;
}

void __nw_utilities_get_user_agent_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    goto LABEL_14;
  }

  v3 = MainBundle;
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  if (InfoDictionary)
  {
    Value = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x1E695E4F8]);
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v3, *MEMORY[0x1E695E500]);
    if (Value)
    {
      if (ValueForInfoDictionaryKey)
      {
        CFStringAppendFormat(Mutable, 0, @"%@/%@", Value, ValueForInfoDictionaryKey);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"%@", Value);
      }

      goto LABEL_14;
    }
  }

  else
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v3, *MEMORY[0x1E695E500]);
  }

  if (nw_utilities_get_self_name::onceToken != -1)
  {
    v14 = ValueForInfoDictionaryKey;
    dispatch_once(&nw_utilities_get_self_name::onceToken, &__block_literal_global_11_47232);
    ValueForInfoDictionaryKey = v14;
  }

  if (nw_utilities_get_self_name::name)
  {
    if (ValueForInfoDictionaryKey)
    {
      CFStringAppendFormat(Mutable, 0, @"%s/%@", nw_utilities_get_self_name::name, ValueForInfoDictionaryKey);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%s", nw_utilities_get_self_name::name);
    }
  }

LABEL_14:
  if (CFStringGetLength(Mutable) <= 0)
  {
    v7 = "";
  }

  else
  {
    v7 = " ";
  }

  CFStringAppendFormat(Mutable, 0, @"%sNetwork/%s", v7, "5569.42.2");
  v8 = MGCopyAnswer();
  v9 = MGCopyAnswer();
  if (v8)
  {
    if (CFStringGetLength(Mutable) <= 0)
    {
      v10 = "";
    }

    else
    {
      v10 = " ";
    }

    if (v9)
    {
      CFStringAppendFormat(Mutable, 0, @"%s%@/%@", v10, v8, v9);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%s%@", v10, 0);
    }

    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  URLPathAllowedCharacterSet = _CFURLComponentsGetURLPathAllowedCharacterSet();
  MutableCopy = CFCharacterSetCreateMutableCopy(v0, URLPathAllowedCharacterSet);
  CFCharacterSetAddCharactersInString(MutableCopy, @" ");
  v13 = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (CFStringGetLength(v13) >= 1)
  {
    nw_utilities_get_user_agent::user_agent_string = nw_utilities_create_c_string_from_cfstring(v13);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!nw_utilities_get_user_agent::user_agent_string)
  {
    nw_utilities_get_user_agent::user_agent_string = "Unknown";
  }
}

uint64_t nw_utilities_get_self_is_daemon()
{
  if (nw_utilities_get_self_is_daemon::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_is_daemon::onceToken, &__block_literal_global_49);
  }

  return nw_utilities_get_self_is_daemon::is_daemon;
}

void __nw_utilities_get_self_is_daemon_block_invoke(double a1)
{
  v10 = *MEMORY[0x1E69E9840];
  gotLoadHelper_x19__OBJC_CLASS___RBSProcessHandle(a1);
  if (objc_opt_class() && ([*(v1 + 1480) currentProcess], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isDaemon"), v2, (v3 & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    if (nw_utilities_get_self_bundle_id::onceToken != -1)
    {
      dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
    }

    v4 = nw_utilities_get_self_bundle_id::bundle_identifier_string == 0;
  }

  nw_utilities_get_self_is_daemon::is_daemon = v4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136446466;
    v7 = "nw_utilities_get_self_is_daemon_block_invoke";
    v8 = 1024;
    v9 = nw_utilities_get_self_is_daemon::is_daemon;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s is_daemon: %{BOOL}d", &v6, 0x12u);
  }
}

uint64_t nw_utilities_convert_hex_string_to_bytes(const char *a1, size_t *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = strlen(a1);
      *a2 = 0;
      if (v4 <= 1)
      {
        v22 = __nwlog_obj();
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v31 = "nw_utilities_convert_hex_string_to_bytes";
        v23 = _os_log_send_and_compose_impl();

        result = __nwlog_should_abort(v23);
        if (result)
        {
          goto LABEL_59;
        }

        free(v23);
      }

      result = malloc_type_calloc(1uLL, v4 >> 1, 0xEF71967AuLL);
      if (result)
      {
        if (!v4)
        {
          goto LABEL_20;
        }

LABEL_9:
        v8 = 0;
        while (1)
        {
          v10 = a1[v8];
          v11 = v10 - 48;
          if ((v10 - 48) < 0xA)
          {
            goto LABEL_15;
          }

          if ((v10 - 97) <= 5)
          {
            break;
          }

          if ((v10 - 65) > 5)
          {
            v13 = result;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = a1[v8];
              *buf = 136446466;
              v31 = "nw_utilities_convert_hex_string_to_bytes";
              v32 = 1024;
              LODWORD(v33) = v15;
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Not hex character: %c", buf, 0x12u);
            }

            result = v13;
            if (v13)
            {
              free(v13);
              return 0;
            }

            return result;
          }

          v11 = v10 - 55;
          v12 = v8 >> 1;
          if ((v8 & 1) == 0)
          {
LABEL_16:
            v9 = 16 * v11;
            goto LABEL_11;
          }

LABEL_10:
          v9 = *(result + v12) | v11;
LABEL_11:
          *(result + v12) = v9;
          if (v4 == ++v8)
          {
            goto LABEL_20;
          }
        }

        v11 = v10 - 87;
LABEL_15:
        v12 = v8 >> 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v31 = "nw_utilities_convert_hex_string_to_bytes";
      v32 = 2048;
      v33 = 1;
      v34 = 2048;
      v35 = v4 >> 1;
      v7 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v7);
      if (!result)
      {
        free(v7);
        result = 0;
        if (!v4)
        {
LABEL_20:
          *a2 = v4 >> 1;
          return result;
        }

        goto LABEL_9;
      }

LABEL_59:
      __break(1u);
      return result;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_utilities_convert_hex_string_to_bytes";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v17, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v31 = "nw_utilities_convert_hex_string_to_bytes";
          v20 = "%{public}s called with null output_buffer_length";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (v28 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v31 = "nw_utilities_convert_hex_string_to_bytes";
          v20 = "%{public}s called with null output_buffer_length, backtrace limit exceeded";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v27 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v31 = "nw_utilities_convert_hex_string_to_bytes";
          v20 = "%{public}s called with null output_buffer_length, no backtrace";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (!v27)
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      v31 = "nw_utilities_convert_hex_string_to_bytes";
      v32 = 2082;
      v33 = backtrace_string;
      v26 = "%{public}s called with null output_buffer_length, dumping backtrace:%{public}s";
LABEL_44:
      _os_log_impl(&dword_181A37000, v18, v19, v26, buf, 0x16u);
LABEL_45:

      free(backtrace_string);
    }
  }

  else
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_utilities_convert_hex_string_to_bytes";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v17, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v31 = "nw_utilities_convert_hex_string_to_bytes";
          v20 = "%{public}s called with null hex_string";
LABEL_54:
          _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        }

LABEL_55:

        goto LABEL_56;
      }

      if (v28 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v31 = "nw_utilities_convert_hex_string_to_bytes";
          v20 = "%{public}s called with null hex_string, backtrace limit exceeded";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v25 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v31 = "nw_utilities_convert_hex_string_to_bytes";
          v20 = "%{public}s called with null hex_string, no backtrace";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (!v25)
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      v31 = "nw_utilities_convert_hex_string_to_bytes";
      v32 = 2082;
      v33 = backtrace_string;
      v26 = "%{public}s called with null hex_string, dumping backtrace:%{public}s";
      goto LABEL_44;
    }
  }

LABEL_56:
  if (v17)
  {
    free(v17);
  }

  return 0;
}

unint64_t nw_utilities_round_to_2_significant_figures(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = log10(result);
    v3 = __exp10((2 - vcvtpd_s64_f64(v2)));
    return (round(v3 * v1) / v3);
  }

  return result;
}

uint64_t nw_utilities_execute_block_as_persona(const unsigned __int8 *a1, void *a2)
{
  *&v30[13] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!v4)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_utilities_execute_block_as_persona";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v17, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v28 = "nw_utilities_execute_block_as_persona";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null block", buf, 0xCu);
        }
      }

      else if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v21 = type;
        v22 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v28 = "nw_utilities_execute_block_as_persona";
            v29 = 2082;
            *v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v22)
        {
          *buf = 136446210;
          v28 = "nw_utilities_execute_block_as_persona";
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null block, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v28 = "nw_utilities_execute_block_as_persona";
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v17)
    {
      free(v17);
    }

    goto LABEL_4;
  }

  if (uuid_is_null(a1) || (gotLoadHelper_x22__OBJC_CLASS___UMUserPersona(v5), !objc_opt_class()))
  {
    v4[2](v4);
LABEL_4:
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a1];
  v8 = [v7 UUIDString];
  v9 = [*(v2 + 112) currentPersona];
  v24 = 0;
  v10 = [v9 copyCurrentPersonaContextWithError:&v24];
  v11 = v24;
  v12 = [v9 generateAndRestorePersonaContextWithPersonaUniqueString:v8];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v28 = "nw_utilities_execute_block_as_persona";
    v29 = 1040;
    *v30 = 16;
    v30[2] = 2096;
    *&v30[3] = a1;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Executing block as persona %{uuid_t}.16P", buf, 0x1Cu);
  }

  v4[2](v4);
  v14 = [v9 restorePersonaWithSavedPersonaContext:v10];

  v6 = 1;
LABEL_9:

  return v6;
}

void *nw_protocol_socksv4_copy_definition()
{
  if (nw_protocol_socksv4_copy_definition::onceToken != -1)
  {
    dispatch_once(&nw_protocol_socksv4_copy_definition::onceToken, &__block_literal_global_47340);
  }

  result = nw_protocol_socksv4_copy_definition::definition;
  if (nw_protocol_socksv4_copy_definition::definition)
  {

    return os_retain(result);
  }

  return result;
}

uint64_t __nw_protocol_socksv4_copy_definition_block_invoke_2(uint64_t a1, NSObject *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0xA26DA7C5uLL);
  if (v3)
  {
LABEL_4:
    v3[2] = 0;
    v6 = nw_framer_copy_parameters(a2);
    if (v6)
    {
      v7 = v6;
      v8 = _nw_parameters_copy_effective_proxy_config(v6);
      if (v8)
      {
        v9 = v8;
        v10 = v9[13];

        if (v10)
        {
          v11 = v10;
          v12 = v11[2];

          if (v12)
          {
            *v3 = xpc_string_create(v12);
          }
        }

        os_release(v9);
      }

      os_release(v7);
    }

    input_handler[0] = MEMORY[0x1E69E9820];
    input_handler[1] = 0x40000000;
    input_handler[2] = __nw_protocol_socksv4_copy_definition_block_invoke_10;
    input_handler[3] = &__block_descriptor_tmp_15_47350;
    input_handler[4] = v3;
    input_handler[5] = a2;
    nw_framer_set_input_handler(a2, input_handler);
    output_handler[0] = MEMORY[0x1E69E9820];
    output_handler[1] = 0x40000000;
    output_handler[2] = __nw_protocol_socksv4_copy_definition_block_invoke_2_16;
    output_handler[3] = &__block_descriptor_tmp_18_47351;
    output_handler[4] = v3;
    nw_framer_set_output_handler(a2, output_handler);
    cleanup_handler[0] = MEMORY[0x1E69E9820];
    cleanup_handler[1] = 0x40000000;
    cleanup_handler[2] = __nw_protocol_socksv4_copy_definition_block_invoke_3;
    cleanup_handler[3] = &__block_descriptor_tmp_20_47352;
    cleanup_handler[4] = v3;
    nw_framer_set_cleanup_handler(a2, cleanup_handler);
    if (!a2)
    {
      __nwlog_obj();
      *output_buffer = 136446210;
      v73 = "nw_socksv4_send_connect";
      v47 = _os_log_send_and_compose_impl();
      buf[0] = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v47, buf, type))
      {
        goto LABEL_122;
      }

      if (buf[0] == 17)
      {
        v48 = __nwlog_obj();
        v49 = buf[0];
        if (!os_log_type_enabled(v48, buf[0]))
        {
          goto LABEL_122;
        }

        *output_buffer = 136446210;
        v73 = "nw_socksv4_send_connect";
        v50 = "%{public}s called with null framer";
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v49 = buf[0];
        v52 = os_log_type_enabled(v48, buf[0]);
        if (backtrace_string)
        {
          if (v52)
          {
            *output_buffer = 136446466;
            v73 = "nw_socksv4_send_connect";
            v74 = 2082;
            v75 = backtrace_string;
            _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null framer, dumping backtrace:%{public}s", output_buffer, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_122;
        }

        if (!v52)
        {
          goto LABEL_122;
        }

        *output_buffer = 136446210;
        v73 = "nw_socksv4_send_connect";
        v50 = "%{public}s called with null framer, no backtrace";
      }

      else
      {
        v48 = __nwlog_obj();
        v49 = buf[0];
        if (!os_log_type_enabled(v48, buf[0]))
        {
          goto LABEL_122;
        }

        *output_buffer = 136446210;
        v73 = "nw_socksv4_send_connect";
        v50 = "%{public}s called with null framer, backtrace limit exceeded";
      }

      v56 = output_buffer;
LABEL_121:
      _os_log_impl(&dword_181A37000, v48, v49, v50, v56, 0xCu);
      goto LABEL_122;
    }

    v13 = nw_framer_copy_remote_endpoint(a2);
    v14 = nw_endpoint_copy_proxy_original_endpoint(v13);
    if (v13)
    {
      os_release(v13);
    }

    v15 = nw_endpoint_get_type(v14);
    bzero(&v73, 0x204uLL);
    *output_buffer = 260;
    *&output_buffer[2] = __rev16(nw_endpoint_get_port(v14));
    if (v15 == nw_endpoint_type_address)
    {
      *type = 0;
      v63 = 0;
      v65 = 0;
      v64 = 0;
      if (nw_endpoint_fillout_v4v6_address(v14, type))
      {
        if (type[1] == 30)
        {
          if (gLogDatapath == 1)
          {
            v53 = __nwlog_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              v67 = "nw_socksv4_send_connect";
              _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s IPv6 is not supported with SOCKSv4", buf, 0xCu);
            }
          }

          nw_framer_mark_failed_with_error(a2, 43);
          if (!v14)
          {
            return 2;
          }

          goto LABEL_88;
        }

        LODWORD(v73) = *&type[4];
        if (!*v3)
        {
          goto LABEL_84;
        }

        string_ptr = xpc_string_get_string_ptr(*v3);
        if (!string_ptr)
        {
          goto LABEL_84;
        }

        v25 = string_ptr;
        v26 = strlen(string_ptr);
        v27 = v26;
        if (!v26)
        {
          goto LABEL_85;
        }

        if (v26 < 0xFF)
        {
          memcpy(&v73 + 4, v25, v26);
          goto LABEL_85;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        v67 = "nw_socksv4_send_connect";
        v68 = 2048;
        v69 = v27;
        v28 = _os_log_send_and_compose_impl();
        v61 = OS_LOG_TYPE_ERROR;
        v60 = 0;
        if (__nwlog_fault(v28, &v61, &v60))
        {
          if (v61 == OS_LOG_TYPE_FAULT)
          {
            v29 = __nwlog_obj();
            v30 = v61;
            if (!os_log_type_enabled(v29, v61))
            {
              goto LABEL_82;
            }

            *buf = 136446466;
            v67 = "nw_socksv4_send_connect";
            v68 = 2048;
            v69 = v27;
            v31 = "%{public}s SOCKS (by address) username has invalid length %zu";
            goto LABEL_81;
          }

          if (v60 != 1)
          {
            v29 = __nwlog_obj();
            v30 = v61;
            if (!os_log_type_enabled(v29, v61))
            {
              goto LABEL_82;
            }

            *buf = 136446466;
            v67 = "nw_socksv4_send_connect";
            v68 = 2048;
            v69 = v27;
            v31 = "%{public}s SOCKS (by address) username has invalid length %zu, backtrace limit exceeded";
            goto LABEL_81;
          }

          v34 = __nw_create_backtrace_string();
          v29 = __nwlog_obj();
          v30 = v61;
          v35 = os_log_type_enabled(v29, v61);
          if (v34)
          {
            if (v35)
            {
              *buf = 136446722;
              v67 = "nw_socksv4_send_connect";
              v68 = 2048;
              v69 = v27;
              v70 = 2082;
              v71 = v34;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s SOCKS (by address) username has invalid length %zu, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v34);
            goto LABEL_82;
          }

          if (v35)
          {
            *buf = 136446466;
            v67 = "nw_socksv4_send_connect";
            v68 = 2048;
            v69 = v27;
            v31 = "%{public}s SOCKS (by address) username has invalid length %zu, no backtrace";
LABEL_81:
            _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0x16u);
          }
        }

LABEL_82:
        if (v28)
        {
          free(v28);
        }

LABEL_84:
        LODWORD(v27) = 0;
        goto LABEL_85;
      }

      __nwlog_obj();
      *buf = 136446210;
      v67 = "nw_socksv4_send_connect";
      v47 = _os_log_send_and_compose_impl();
      v61 = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (!__nwlog_fault(v47, &v61, &v60))
      {
        goto LABEL_122;
      }

      if (v61 == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = v61;
        if (!os_log_type_enabled(v48, v61))
        {
          goto LABEL_122;
        }

        *buf = 136446210;
        v67 = "nw_socksv4_send_connect";
        v50 = "%{public}s called with null success";
        goto LABEL_120;
      }

      if (v60 != 1)
      {
        v48 = __nwlog_obj();
        v49 = v61;
        if (!os_log_type_enabled(v48, v61))
        {
          goto LABEL_122;
        }

        *buf = 136446210;
        v67 = "nw_socksv4_send_connect";
        v50 = "%{public}s called with null success, backtrace limit exceeded";
        goto LABEL_120;
      }

      v54 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = v61;
      v55 = os_log_type_enabled(v48, v61);
      if (v54)
      {
        if (v55)
        {
          *buf = 136446466;
          v67 = "nw_socksv4_send_connect";
          v68 = 2082;
          v69 = v54;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        if (!v47)
        {
          return 2;
        }

        goto LABEL_123;
      }

      if (v55)
      {
        *buf = 136446210;
        v67 = "nw_socksv4_send_connect";
        v50 = "%{public}s called with null success, no backtrace";
LABEL_120:
        v56 = buf;
        goto LABEL_121;
      }

LABEL_122:
      if (!v47)
      {
        return 2;
      }

LABEL_123:
      free(v47);
      return 2;
    }

    LODWORD(v73) = 0x10000000;
    if (!*v3)
    {
      goto LABEL_57;
    }

    v16 = xpc_string_get_string_ptr(*v3);
    if (!v16)
    {
      goto LABEL_57;
    }

    v17 = v16;
    v18 = strlen(v16);
    v19 = v18;
    if (v18)
    {
      if (v18 >= 0xFF)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        v67 = "nw_socksv4_send_connect";
        v68 = 2048;
        v69 = v19;
        v20 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v61 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v20, type, &v61))
        {
          goto LABEL_55;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_55;
          }

          *buf = 136446466;
          v67 = "nw_socksv4_send_connect";
          v68 = 2048;
          v69 = v19;
          v23 = "%{public}s SOCKS (by host) username has invalid length %zu";
        }

        else if (v61 == OS_LOG_TYPE_INFO)
        {
          v32 = __nw_create_backtrace_string();
          v21 = __nwlog_obj();
          v22 = type[0];
          v33 = os_log_type_enabled(v21, type[0]);
          if (v32)
          {
            if (v33)
            {
              *buf = 136446722;
              v67 = "nw_socksv4_send_connect";
              v68 = 2048;
              v69 = v19;
              v70 = 2082;
              v71 = v32;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s SOCKS (by host) username has invalid length %zu, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v32);
            goto LABEL_55;
          }

          if (!v33)
          {
LABEL_55:
            if (v20)
            {
              free(v20);
            }

LABEL_57:
            LODWORD(v19) = 0;
            goto LABEL_58;
          }

          *buf = 136446466;
          v67 = "nw_socksv4_send_connect";
          v68 = 2048;
          v69 = v19;
          v23 = "%{public}s SOCKS (by host) username has invalid length %zu, no backtrace";
        }

        else
        {
          v21 = __nwlog_obj();
          v22 = type[0];
          if (!os_log_type_enabled(v21, type[0]))
          {
            goto LABEL_55;
          }

          *buf = 136446466;
          v67 = "nw_socksv4_send_connect";
          v68 = 2048;
          v69 = v19;
          v23 = "%{public}s SOCKS (by host) username has invalid length %zu, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0x16u);
        goto LABEL_55;
      }

      memcpy(&v73 + 4, v17, v18);
    }

LABEL_58:
    *(&v73 + v19 + 4) = 0;
    LODWORD(v27) = v19 + 1;
    hostname = nw_endpoint_get_hostname(v14);
    if (!hostname)
    {
      goto LABEL_85;
    }

    v37 = hostname;
    v38 = strlen(hostname);
    if (!v38)
    {
      goto LABEL_85;
    }

    v39 = v38;
    if (v38 < 0xFF)
    {
      memcpy(&v73 + v27 + 4, v37, v38);
      LODWORD(v27) = v27 + v39;
      goto LABEL_85;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v67 = "nw_socksv4_send_connect";
    v68 = 2048;
    v69 = v39;
    v40 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v61 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v40, type, &v61))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        v42 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_76;
        }

        *buf = 136446466;
        v67 = "nw_socksv4_send_connect";
        v68 = 2048;
        v69 = v39;
        v43 = "%{public}s SOCKS hostname has invalid length %zu";
        goto LABEL_75;
      }

      if (v61 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        v42 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_76;
        }

        *buf = 136446466;
        v67 = "nw_socksv4_send_connect";
        v68 = 2048;
        v69 = v39;
        v43 = "%{public}s SOCKS hostname has invalid length %zu, backtrace limit exceeded";
        goto LABEL_75;
      }

      v44 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      v42 = type[0];
      v45 = os_log_type_enabled(gLogObj, type[0]);
      if (v44)
      {
        if (v45)
        {
          *buf = 136446722;
          v67 = "nw_socksv4_send_connect";
          v68 = 2048;
          v69 = v39;
          v70 = 2082;
          v71 = v44;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s SOCKS hostname has invalid length %zu, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v44);
        goto LABEL_76;
      }

      if (v45)
      {
        *buf = 136446466;
        v67 = "nw_socksv4_send_connect";
        v68 = 2048;
        v69 = v39;
        v43 = "%{public}s SOCKS hostname has invalid length %zu, no backtrace";
LABEL_75:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0x16u);
      }
    }

LABEL_76:
    if (v40)
    {
      free(v40);
    }

LABEL_85:
    *(&v73 + v27 + 4) = 0;
    nw_framer_write_output(a2, output_buffer, (v27 + 9));
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v67 = "nw_socksv4_send_connect";
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Sent client request", buf, 0xCu);
    }

    v3[2] = 1;
    if (!v14)
    {
      return 2;
    }

LABEL_88:
    os_release(v14);
    return 2;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *output_buffer = 136446722;
  v73 = "nw_protocol_socksv4_copy_definition_block_invoke_2";
  v74 = 2048;
  v75 = 1;
  v76 = 2048;
  v77 = 16;
  v4 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t __nw_protocol_socksv4_copy_definition_block_invoke_10(uint64_t a1, nw_framer_t framer)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  if (v5 == 1)
  {
    *temp_buffer = 0;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v16 = ___ZL24nw_socksv4_parse_connectP9nw_framerP10nw_socksv4_block_invoke;
    v17 = &__block_descriptor_tmp_27_47384;
    v18 = framer;
    v19 = v4;
    v7 = nw_framer_parse_input(framer, 8uLL, 8uLL, temp_buffer, &buf);
    result = 8;
    if (!v7)
    {
      return result;
    }

    v5 = *(*(a1 + 32) + 8);
    goto LABEL_7;
  }

  if (v5)
  {
LABEL_7:
    if (v5 == 2)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v16 = 0x2000000000;
      v17 = 0;
      *temp_buffer = 0;
      v12 = temp_buffer;
      v13 = 0x2000000000;
      v14 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __nw_protocol_socksv4_copy_definition_block_invoke_11;
      v10[3] = &unk_1E6A336C0;
      v10[4] = &buf;
      v10[5] = temp_buffer;
      nw_framer_parse_input(framer, 1uLL, 0xFFFFFFFFuLL, 0, v10);
      v9 = nw_framer_message_create(*(a1 + 40));
      nw_framer_deliver_input_no_copy(framer, *(*(&buf + 1) + 24), v9, v12[24]);
      if (v9)
      {
        os_release(v9);
      }

      _Block_object_dispose(temp_buffer, 8);
      _Block_object_dispose(&buf, 8);
    }

    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "nw_protocol_socksv4_copy_definition_block_invoke";
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Reading packets in initial state", &buf, 0xCu);
  }

  return 0;
}

BOOL __nw_protocol_socksv4_copy_definition_block_invoke_2_16(_BOOL8 result, nw_framer_t framer, int a3, size_t output_length)
{
  if (*(*(result + 32) + 8) == 2)
  {
    return nw_framer_write_output_no_copy(framer, output_length);
  }

  return result;
}

void __nw_protocol_socksv4_copy_definition_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    xpc_release(*v2);
    v2 = *(a1 + 32);
    *v2 = 0;
  }

  free(v2);
}

uint64_t ___ZL24nw_socksv4_parse_connectP9nw_framerP10nw_socksv4_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v5 = *a2;
      v12 = 136446466;
      v13 = "nw_socksv4_parse_connect_block_invoke";
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s SOCKSv4 replies must start will a NULL byte, received 0x%x", &v12, 0x12u);
    }

    v6 = *(a1 + 32);
    v7 = 100;
LABEL_12:
    nw_framer_mark_failed_with_error(v6, v7);
    return 8;
  }

  v8 = a2[1];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (v8 != 90)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v10 = a2[1];
      v12 = 136446466;
      v13 = "nw_socksv4_parse_connect_block_invoke";
      v14 = 1024;
      v15 = v10;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Received SOCKS connect status %d, failing", &v12, 0x12u);
    }

    v6 = *(a1 + 32);
    v7 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136446210;
    v13 = "nw_socksv4_parse_connect_block_invoke";
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Received complete connect message from SOCKS server", &v12, 0xCu);
  }

  *(*(a1 + 40) + 8) = 2;
  nw_framer_pass_through_input(*(a1 + 32));
  nw_framer_pass_through_output(*(a1 + 32));
  nw_framer_mark_ready(*(a1 + 32));
  return 8;
}

uint64_t __nw_protocol_socksv4_copy_definition_block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 40) + 8) + 24) = a4;
  return 0;
}

uint64_t __nwlog_fault(const char *a1, _BYTE *a2, _BYTE *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if (sNWIsBetweenForkAndExec == 1 && (sNWParentAllowedDispatch & 1) != 0)
  {
    return 0;
  }

  if (sNWDispatchAllowedNow)
  {
    v7 = 0;
    v6 = 0;
    if (!a3)
    {
      return v6;
    }
  }

  else if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0 && (_dispatch_is_multithreaded() & 1) != 0 || (getpid(), sandbox_check() == 1))
  {
    v7 = 0;
    sNWDispatchAllowedNow = 1;
    v6 = 0;
    if (!a3)
    {
      return v6;
    }
  }

  else
  {
    v7 = sNWDispatchAllowedNow ^ 1;
    v6 = 0;
    if (!a3)
    {
      return v6;
    }
  }

  if (a2 && (v7 & 1) == 0)
  {
    *a2 = 16;
    *a3 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3802000000;
    v26 = __Block_byref_object_copy__47393;
    v27 = __Block_byref_object_dispose__47394;
    aBlock = 0;
    v29 = -1;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ____nwlog_fault_block_invoke;
    v22[3] = &unk_1E6A33768;
    v22[4] = &v23;
    os_unfair_lock_lock(&gLogLock);
    ____nwlog_fault_block_invoke(v22);
    os_unfair_lock_unlock(&gLogLock);
    v8 = v24[5];
    if (v8)
    {
      v8 = (*(v8 + 16))(v8, a1);
      if (v8)
      {
        v6 = 0;
LABEL_44:
        _Block_object_dispose(&v23, 8);
        if ((v29 & 1) != 0 && aBlock)
        {
          _Block_release(aBlock);
        }

        return v6;
      }
    }

    if (a1)
    {
      v8 = pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
      if (sNWIsBetweenForkAndExec != 1 || (sNWParentAllowedDispatch & 1) == 0)
      {
        if (sNWDispatchAllowedNow)
        {
LABEL_27:
          pthread_mutex_lock(&__nwlog_fault_add_description_to_list(char const*)::mutex);
          v9 = __nwlog_fault_add_description_to_list(char const*)::known_faults;
          if (__nwlog_fault_add_description_to_list(char const*)::known_faults || (v9 = xpc_dictionary_create(0, 0, 0), (__nwlog_fault_add_description_to_list(char const*)::known_faults = v9) != 0))
          {
            if (xpc_dictionary_get_BOOL(v9, a1))
            {
              v10 = 1;
LABEL_34:
              v8 = pthread_mutex_unlock(&__nwlog_fault_add_description_to_list(char const*)::mutex);
LABEL_35:
              v11 = nw_setting_tcpconn_disable_simulate_crash;
              networkd_settings_init(v8);
              if (sCachedSettings)
              {
                pthread_mutex_lock(&sSettingsMutex);
                v12 = sCachedSettings;
                if (sCachedSettings && (Class = object_getClass(sCachedSettings), v11) && Class == MEMORY[0x1E69E9E80] && (v14 = xpc_dictionary_get_value(v12, v11)) != 0 && (v15 = v14, object_getClass(v14) == MEMORY[0x1E69E9E58]))
                {
                  value = xpc_BOOL_get_value(v15);
                  pthread_mutex_unlock(&sSettingsMutex);
                  if (value)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  pthread_mutex_unlock(&sSettingsMutex);
                }
              }

              v20[0] = MEMORY[0x1E69E9820];
              v20[1] = 0x40000000;
              v20[2] = ____nwlog_fault_block_invoke_2;
              v20[3] = &__block_descriptor_tmp_1_47397;
              v21 = v10;
              v20[4] = a2;
              v20[5] = a3;
              os_unfair_lock_lock(&gLogLock);
              ____nwlog_fault_block_invoke_2(v20);
              os_unfair_lock_unlock(&gLogLock);
LABEL_43:
              v6 = 1;
              goto LABEL_44;
            }

            xpc_dictionary_set_BOOL(__nwlog_fault_add_description_to_list(char const*)::known_faults, a1, 1);
          }

          else
          {
            v17 = pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init(v17);
            v18 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v31 = "__nwlog_fault_add_description_to_list";
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
            }
          }

          v10 = 0;
          goto LABEL_34;
        }

        if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0 && (_dispatch_is_multithreaded() & 1) != 0 || (getpid(), v8 = sandbox_check(), v8 == 1))
        {
          sNWDispatchAllowedNow = 1;
          goto LABEL_27;
        }

        if (sNWDispatchAllowedNow == 1)
        {
          goto LABEL_27;
        }
      }
    }

    v10 = 0;
    goto LABEL_35;
  }

  return v6;
}

uint64_t __Block_byref_object_copy__47393(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__47394(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    _Block_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void *____nwlog_fault_block_invoke(uint64_t a1)
{
  result = s_override_fault_handler;
  if (s_override_fault_handler)
  {
    result = _Block_copy(s_override_fault_handler);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 48);
    if (v4)
    {
      if (*(v3 + 40))
      {
        v5 = result;
        _Block_release(*(v3 + 40));
        result = v5;
        v4 = *(v3 + 48);
      }
    }

    *(v3 + 40) = result;
    *(v3 + 48) = v4 | 1;
  }

  return result;
}

uint64_t ____nwlog_fault_block_invoke_2(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    v1 = __nwlog_fault::num_faults;
    if (__nwlog_fault::num_faults <= 0x18)
    {
      **(result + 32) = 17;
      __nwlog_fault::num_faults = v1 + 1;
    }

    v2 = __nwlog_fault::num_backtraces;
    if (__nwlog_fault::num_backtraces <= 0x63)
    {
      **(result + 40) = 1;
      __nwlog_fault::num_backtraces = v2 + 1;
    }
  }

  return result;
}

uint64_t __nwlog_should_abort(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3002000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ____nwlog_should_abort_block_invoke;
  v7[3] = &unk_1E6A337B0;
  v7[4] = &v8;
  os_unfair_lock_lock(&gLogLock);
  ____nwlog_should_abort_block_invoke(v7);
  os_unfair_lock_unlock(&gLogLock);
  v2 = v9[5];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (*(v2 + 16))(v2, a1);
  v4 = v9[5];
  if (!v4)
  {
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_6:
    qword_1EA83EA90 = a1;
    v5 = 1;
    goto LABEL_7;
  }

  _Block_release(v4);
  v9[5] = 0;
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v5 = 0;
LABEL_7:
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *____nwlog_should_abort_block_invoke(uint64_t a1)
{
  result = s_abort_override_handler;
  if (s_abort_override_handler)
  {
    result = _Block_copy(s_abort_override_handler);
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

const char *__nw_create_backtrace_string()
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = 0;
  nw_append_format(&v8, "\n        [%s]%s libnetcore%s%s%s%s", "arm64", "", "-", "5569.42.2", "", "");
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v0 = backtrace(v9, 128);
  v1 = backtrace_symbols(v9, v0);
  v2 = v1;
  if (v0 >= 1)
  {
    v3 = v0 - 1;
    v4 = v1;
    do
    {
      v5 = *v4++;
      nw_append_format(&v8, "\n    %s", v5);
      if (v8)
      {
        v6 = v3 == 0;
      }

      else
      {
        v6 = 1;
      }

      --v3;
    }

    while (!v6);
    goto LABEL_10;
  }

  if (v1)
  {
LABEL_10:
    free(v2);
  }

  return v8;
}

uint64_t __nw_should_log_backtrace()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ____nw_should_log_backtrace_block_invoke;
  v2[3] = &unk_1E6A337D8;
  v2[4] = &v3;
  os_unfair_lock_lock(&__nw_should_log_backtrace::backtrace_lock);
  ____nw_should_log_backtrace_block_invoke(v2);
  os_unfair_lock_unlock(&__nw_should_log_backtrace::backtrace_lock);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t ____nw_should_log_backtrace_block_invoke(uint64_t result)
{
  v1 = __nw_should_log_backtrace::num_backtraces;
  if (__nw_should_log_backtrace::num_backtraces <= 0x31)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    __nw_should_log_backtrace::num_backtraces = v1 + 1;
  }

  return result;
}

uint64_t __nwlog_override_fault_block(uint64_t a1, const void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&s_fault_lock);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3802000000;
  v16 = __Block_byref_object_copy__47393;
  v17 = __Block_byref_object_dispose__47394;
  aBlock = 0;
  v19 = -1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = ____nwlog_set_override_fault_handler_block_invoke;
  v11 = &unk_1E6A33800;
  v12 = a2;
  p_buf = &buf;
  os_unfair_lock_lock(&gLogLock);
  ____nwlog_set_override_fault_handler_block_invoke(&v8);
  os_unfair_lock_unlock(&gLogLock);
  v4 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = 0;
  _Block_object_dispose(&buf, 8);
  if ((v19 & 1) != 0 && aBlock)
  {
    _Block_release(aBlock);
  }

  (*(a1 + 16))(a1);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3802000000;
  v16 = __Block_byref_object_copy__47393;
  v17 = __Block_byref_object_dispose__47394;
  aBlock = 0;
  v19 = -1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = ____nwlog_set_override_fault_handler_block_invoke;
  v11 = &unk_1E6A33800;
  v12 = v4;
  p_buf = &buf;
  os_unfair_lock_lock(&gLogLock);
  v10(&v8);
  os_unfair_lock_unlock(&gLogLock);
  v5 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = 0;
  _Block_object_dispose(&buf, 8);
  if ((v19 & 1) != 0 && aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_release(v4);
  if (v5 != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "__nwlog_override_fault_block";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s __nwlog_set_override_fault_handler called while in block", &buf, 0xCu);
    }
  }

  _Block_release(v5);
  return pthread_rwlock_unlock(&s_fault_lock);
}

void ____nwlog_set_override_fault_handler_block_invoke(uint64_t a1)
{
  if (s_override_fault_handler)
  {
    v2 = _Block_copy(s_override_fault_handler);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = *(v3 + 40);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 48);
    }
  }

  *(v3 + 40) = v2;
  *(v3 + 48) = v4 | 1;
  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = 0;
    v8 = s_override_fault_handler;
    if (!s_override_fault_handler)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = _Block_copy(v6);
  v8 = s_override_fault_handler;
  if (s_override_fault_handler)
  {
LABEL_9:
    _Block_release(v8);
  }

LABEL_10:
  s_override_fault_handler = v7;
}

uint64_t __nwlog_set_override_fault_handler(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3802000000;
  v7 = __Block_byref_object_copy__47393;
  v8 = __Block_byref_object_dispose__47394;
  aBlock = 0;
  v10 = -1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ____nwlog_set_override_fault_handler_block_invoke;
  v3[3] = &unk_1E6A33800;
  v3[4] = a1;
  v3[5] = &v4;
  os_unfair_lock_lock(&gLogLock);
  ____nwlog_set_override_fault_handler_block_invoke(v3);
  os_unfair_lock_unlock(&gLogLock);
  v1 = v5[5];
  v5[5] = 0;
  _Block_object_dispose(&v4, 8);
  if ((v10 & 1) != 0 && aBlock)
  {
    _Block_release(aBlock);
  }

  return v1;
}

void __nwlog_override_abort_block(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ____nwlog_override_abort_block_block_invoke;
  v3[3] = &unk_1E6A33828;
  v3[4] = a2;
  os_unfair_lock_lock(&gLogLock);
  ____nwlog_override_abort_block_block_invoke(v3);
  os_unfair_lock_unlock(&gLogLock);
  (*(a1 + 16))(a1);
  os_unfair_lock_lock(&gLogLock);
  ____nwlog_override_abort_block_block_invoke_2();
  os_unfair_lock_unlock(&gLogLock);
}

uint64_t __nwlog_activity_log()
{
  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  return gactivityLogObj;
}

uint64_t __nwlog_browser_log()
{
  if (__nwlog_browser_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
  }

  return gbrowserLogObj;
}

void ____nwlog_browser_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gbrowserLogObj = os_log_create(nw_oslog_subsystem, "browser");
  }
}

uint64_t __nwlog_candidate_manager_log()
{
  if (__nwlog_candidate_manager_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_candidate_manager_log::onceToken, &__block_literal_global_24_47429);
  }

  return gcandidate_managerLogObj;
}

void ____nwlog_candidate_manager_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gcandidate_managerLogObj = os_log_create(nw_oslog_subsystem, "candidate_manager");
  }
}

uint64_t __nwlog_connection_log()
{
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  return gconnectionLogObj;
}

uint64_t __nwlog_connection_group_log()
{
  if (__nwlog_connection_group_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
  }

  return gconnection_groupLogObj;
}

void ____nwlog_connection_group_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gconnection_groupLogObj = os_log_create(nw_oslog_subsystem, "connection_group");
  }
}

uint64_t __nwlog_http_log()
{
  if (__nwlog_http_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
  }

  return ghttpLogObj;
}

void ____nwlog_http_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    ghttpLogObj = os_log_create(nw_oslog_subsystem, "http");
  }
}

uint64_t __nwlog_http_diagnostics_log()
{
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  return ghttp_diagnosticsLogObj;
}

void ____nwlog_http_diagnostics_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    ghttp_diagnosticsLogObj = os_log_create(nw_oslog_subsystem, "http_diagnostics");
  }
}

uint64_t __nwlog_listener_log()
{
  if (__nwlog_listener_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
  }

  return glistenerLogObj;
}

uint64_t __nwlog_metrics_log()
{
  if (__nwlog_metrics_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_metrics_log::onceToken, &__block_literal_global_48);
  }

  return gmetricsLogObj;
}

void ____nwlog_metrics_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gmetricsLogObj = os_log_create(nw_oslog_subsystem, "metrics");
  }
}

uint64_t __nwlog_path_log()
{
  if (__nwlog_path_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
  }

  return gpathLogObj;
}

uint64_t __nwlog_privacy_proxy_log()
{
  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  return gprivacy_proxyLogObj;
}

void ____nwlog_privacy_proxy_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gprivacy_proxyLogObj = os_log_create(nw_oslog_subsystem, "privacy_proxy");
  }
}

uint64_t __nwlog_network_test_log()
{
  if (__nwlog_network_test_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_network_test_log::onceToken, &__block_literal_global_64_47471);
  }

  return gnetwork_testLogObj;
}

void ____nwlog_network_test_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gnetwork_testLogObj = os_log_create(nw_oslog_subsystem, "network_test");
  }
}

uint64_t __nwlog_metricstream_log()
{
  if (__nwlog_metricstream_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_metricstream_log::onceToken, &__block_literal_global_68);
  }

  return gmetricstreamLogObj;
}

void ____nwlog_metricstream_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gmetricstreamLogObj = os_log_create(nw_oslog_subsystem, "metricstream");
  }
}

uint64_t __nwlog_url_log()
{
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  return gurlLogObj;
}

void ____nwlog_url_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gurlLogObj = os_log_create(nw_oslog_subsystem, "url");
  }
}

uint64_t __nwlog_network_relay_log()
{
  if (__nwlog_network_relay_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_network_relay_log::onceToken, &__block_literal_global_76);
  }

  return gnetwork_relayLogObj;
}

void ____nwlog_network_relay_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gnetwork_relayLogObj = os_log_create(nw_oslog_subsystem, "network_relay");
  }
}

uint64_t nwlog_get_private_redacted()
{
  if (nwlog_get_private_redacted::onceToken != -1)
  {
    dispatch_once(&nwlog_get_private_redacted::onceToken, &__block_literal_global_80_47487);
  }

  return nwlog_get_private_redacted::privateRedacted;
}

void __nwlog_handle_composed(uint64_t a1, uint64_t a2)
{
  if (gLogFDOverride != -1)
  {
    v10 = v2;
    v11 = v3;
    if (a2)
    {
      v4 = 1000 * *(a2 + 8);
      *&v9 = *a2;
      *(&v9 + 1) = v4;
    }

    else
    {
      v5 = a1;
      mach_get_times();
      a1 = v5;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ____nwlog_handle_composed_block_invoke;
    v6[3] = &__block_descriptor_tmp_88_47497;
    v7 = v9;
    v8 = a1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_unfair_lock_lock(&gLogLock);
    ____nwlog_handle_composed_block_invoke(v6);
    os_unfair_lock_unlock(&gLogLock);
  }
}

uint64_t ____nwlog_handle_composed_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((_ZZZ23__nwlog_handle_composedEUb_E9tz_is_set & 1) == 0)
  {
    tzset();
    _ZZZ23__nwlog_handle_composedEUb_E9tz_is_set = 1;
  }

  memset(&v4, 0, sizeof(v4));
  v2 = localtime_r((a1 + 32), &v4);
  if (!strftime(v5, 9uLL, "%T", v2))
  {
    return dprintf(gLogFDOverride, "%s\n");
  }

  v5[8] = 0;
  return dprintf(gLogFDOverride, "%s.%06lu %s\n");
}

void __nwlog_run_with_lock(uint64_t a1)
{
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_unfair_lock_lock(&gLogLock);
  (*(a1 + 16))(a1);

  os_unfair_lock_unlock(&gLogLock);
}

uint64_t __nwlog_override_fd(int a1)
{
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_unfair_lock_lock(&gLogLock);
  v2 = gLogFDOverride;
  gLogFDOverride = a1;
  if ((a1 & 0x80000000) == 0)
  {
    gLogDatapath = 1;
    gLogDatapathOverridden = 1;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __nw_utilities_set_log_intercept_block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a1 >= 0;
  os_unfair_lock_lock(&nw_utilities_set_log_intercept::lock);
  __nw_utilities_set_log_intercept_block_invoke(v4);
  os_unfair_lock_unlock(&nw_utilities_set_log_intercept::lock);
  os_unfair_lock_unlock(&gLogLock);
  return v2;
}

uint64_t __nwlog_override_datapath(char a1)
{
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_unfair_lock_lock(&gLogLock);
  v2 = gLogDatapath;
  gLogDatapath = a1;
  gLogDatapathOverridden = 1;
  os_unfair_lock_unlock(&gLogLock);
  return v2;
}

uint64_t __nwlog_register_helper()
{
  if ((gIsHelper & 1) == 0)
  {
    gIsHelper = 1;
    nw_allow_use_of_dispatch_internal();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);

    return networkd_settings_init();
  }

  return result;
}

const char *__nwlog_salted_hostname_hash(const char *a1, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = strlen(a1);
    v5 = v4;
    if (v4 >= 2)
    {
      v5 = v4 - (a1[v4 - 1] == 46);
    }

    __nwlog_salted_hash(a1, v5, a2);
    return a2;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "__nwlog_salted_hostname_hash";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "__nwlog_salted_hostname_hash";
        v10 = "%{public}s called with null hostname";
LABEL_19:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v16 = "__nwlog_salted_hostname_hash";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null hostname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v16 = "__nwlog_salted_hostname_hash";
        v10 = "%{public}s called with null hostname, no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "__nwlog_salted_hostname_hash";
        v10 = "%{public}s called with null hostname, backtrace limit exceeded";
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  return "???";
}

void nwlog_send_copy_to_fd(int a1)
{
  if (os_variant_has_internal_content())
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_unfair_lock_lock(&gLogLock);
    gLogFDOverride = a1;
    if ((a1 & 0x80000000) == 0)
    {
      gLogDatapath = 1;
      gLogDatapathOverridden = 1;
    }

    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __nw_utilities_set_log_intercept_block_invoke;
    v2[3] = &__block_descriptor_33_e5_v8__0l;
    v3 = a1 >= 0;
    os_unfair_lock_lock(&nw_utilities_set_log_intercept::lock);
    __nw_utilities_set_log_intercept_block_invoke(v2);
    os_unfair_lock_unlock(&nw_utilities_set_log_intercept::lock);

    os_unfair_lock_unlock(&gLogLock);
  }
}

uint64_t nwlog_get_signposts_enabled()
{
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_35_93832);
  }

  return _nw_signposts_enabled;
}

uint64_t nw_mpkl_log_init_once(void)
{
  result = pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  if ((gMpklHasForked & 1) == 0)
  {
    result = os_log_create("com.apple.magnetpacketlog", "libnetcore");
    gMpklLogObj = result;
  }

  return result;
}

uint64_t nw_ws_copy_response_for_challenge(const __CFString *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = MaximumSizeForEncoding + 1;
  if (MaximumSizeForEncoding == -1)
  {
    v26 = __nwlog_obj();
    os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_ws_copy_response_for_challenge";
    v27 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v27);
    if (result)
    {
      goto LABEL_40;
    }

    free(v27);
  }

  v5 = malloc_type_malloc(v4, 0xECDB8828uLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_ws_copy_response_for_challenge";
    v7 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v7);
    if (result)
    {
      goto LABEL_40;
    }

    free(v7);
  }

  CString = CFStringGetCString(a1, v5, v4, 0x8000100u);
  if (v5 && !CString)
  {
    free(v5);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_ws_copy_response_for_challenge";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v29[0]) = 0;
    if (__nwlog_fault(v11, type, v29))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_copy_response_for_challenge";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s CFStringGetCString failed", buf, 0xCu);
        }
      }

      else if (LOBYTE(v29[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v23 = type[0];
        v24 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            *&buf[4] = "nw_ws_copy_response_for_challenge";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v23, "%{public}s CFStringGetCString failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v11)
          {
            return 0;
          }

          goto LABEL_13;
        }

        if (v24)
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_copy_response_for_challenge";
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s CFStringGetCString failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_copy_response_for_challenge";
          _os_log_impl(&dword_181A37000, v12, v25, "%{public}s CFStringGetCString failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v11)
    {
      return 0;
    }

LABEL_13:
    free(v11);
    return 0;
  }

  v28 = 0;
  v15 = asprintf(&v28, "%s%s", v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
  if (v5)
  {
    free(v5);
  }

  if (v15 != -1)
  {
LABEL_20:
    *md = 0;
    v39 = 0;
    v40 = 0;
    CC_SHA1(v28, v15, md);
    if (v28)
    {
      free(v28);
      v28 = 0;
    }

    v18 = dispatch_get_global_queue(0, 0);
    v19 = dispatch_data_create(md, 0x14uLL, v18, &__block_literal_global_47543);

    v20 = dispatch_data_create_with_transform();
    v21 = v20;
    *bytes = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    *type = 0;
    v31 = type;
    v32 = 0x2000000000;
    v33 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2000000000;
    v29[3] = bytes;
    if (v20)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
      v42 = &unk_1E6A34348;
      v44 = v29;
      v45 = 28;
      v43 = type;
      dispatch_data_apply(v20, buf);
    }

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(type, 8);
    v14 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 28, 0x8000100u, 0);

    return v14;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_ws_copy_response_for_challenge";
  v17 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v17);
  if (!result)
  {
    free(v17);
    goto LABEL_20;
  }

LABEL_40:
  __break(1u);
  return result;
}

CFDataRef nw_ws_create_client_request(uint64_t a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      if (v6)
      {
        v8 = v6;
        v9 = _nw_endpoint_copy_cfurl(v8);

        if (v9)
        {
          v10 = *MEMORY[0x1E695E480];
          Request = CFHTTPMessageCreateRequest(*MEMORY[0x1E695E480], @"GET", v9, *MEMORY[0x1E695ADB8]);
          if (Request)
          {
            v12 = CFURLCopyHostName(v9);
            if (v12)
            {
              CFHTTPMessageSetHeaderFieldValue(Request, @"Host", v12);
              CFRelease(v12);
              CFRelease(v9);
              CFHTTPMessageSetHeaderFieldValue(Request, @"Upgrade", @"WebSocket");
              CFHTTPMessageSetHeaderFieldValue(Request, @"Connection", @"Upgrade");
              __buf[0] = 0;
              __buf[1] = 0;
              arc4random_buf(__buf, 0x10uLL);
              v13 = dispatch_get_global_queue(0, 0);
              v14 = dispatch_data_create(__buf, 0x10uLL, v13, &__block_literal_global_21_47582);

              v15 = dispatch_data_create_with_transform();
              v16 = v15;
              *bytes = 0;
              v86 = 0;
              v87 = 0;
              *type = 0;
              v82 = type;
              v83 = 0x2000000000;
              v84 = 0;
              v80[0] = 0;
              v80[1] = v80;
              v80[2] = 0x2000000000;
              v80[3] = bytes;
              if (v15)
              {
                *applier = MEMORY[0x1E69E9820];
                *&applier[8] = 0x40000000;
                *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
                v90 = &unk_1E6A34348;
                v92 = v80;
                v93 = 24;
                v91 = type;
                dispatch_data_apply(v15, applier);
              }

              _Block_object_dispose(v80, 8);
              _Block_object_dispose(type, 8);
              v17 = CFStringCreateWithBytes(v10, bytes, 24, 0x8000100u, 0);
              if (v17)
              {
                CFHTTPMessageSetHeaderFieldValue(Request, @"Sec-WebSocket-Key", v17);
                *(a1 + 8) = v17;
                v18 = nw_framer_copy_options(v5);
                v79[0] = MEMORY[0x1E69E9820];
                v79[1] = 3221225472;
                v79[2] = __nw_ws_create_client_request_block_invoke_25;
                v79[3] = &__block_descriptor_48_e9_B16__0_v8l;
                v79[4] = Request;
                v79[5] = a1;
                v19 = nw_protocol_options_access_handle(v18, v79);

                if (v19)
                {
                  v20 = CFHTTPMessageCopySerializedMessage(Request);
                  CFRelease(Request);
                  if (v20)
                  {
LABEL_104:

                    goto LABEL_105;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v21 = gLogObj;
                  *applier = 136446210;
                  *&applier[4] = "nw_ws_create_client_request";
                  v22 = _os_log_send_and_compose_impl();

                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v80[0]) = 0;
                  if (!__nwlog_fault(v22, type, v80))
                  {
                    goto LABEL_112;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v23 = __nwlog_obj();
                    v24 = type[0];
                    if (os_log_type_enabled(v23, type[0]))
                    {
                      *applier = 136446210;
                      *&applier[4] = "nw_ws_create_client_request";
                      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s ws.output.client: CFHTTPMessageCopySerializedMessage failed", applier, 0xCu);
                    }
                  }

                  else if (LOBYTE(v80[0]) == 1)
                  {
                    backtrace_string = __nw_create_backtrace_string();
                    v23 = __nwlog_obj();
                    v59 = type[0];
                    v60 = os_log_type_enabled(v23, type[0]);
                    if (backtrace_string)
                    {
                      if (v60)
                      {
                        *applier = 136446466;
                        *&applier[4] = "nw_ws_create_client_request";
                        *&applier[12] = 2082;
                        *&applier[14] = backtrace_string;
                        _os_log_impl(&dword_181A37000, v23, v59, "%{public}s ws.output.client: CFHTTPMessageCopySerializedMessage failed, dumping backtrace:%{public}s", applier, 0x16u);
                      }

                      free(backtrace_string);
                      goto LABEL_112;
                    }

                    if (v60)
                    {
                      *applier = 136446210;
                      *&applier[4] = "nw_ws_create_client_request";
                      _os_log_impl(&dword_181A37000, v23, v59, "%{public}s ws.output.client: CFHTTPMessageCopySerializedMessage failed, no backtrace", applier, 0xCu);
                    }
                  }

                  else
                  {
                    v23 = __nwlog_obj();
                    v63 = type[0];
                    if (os_log_type_enabled(v23, type[0]))
                    {
                      *applier = 136446210;
                      *&applier[4] = "nw_ws_create_client_request";
                      _os_log_impl(&dword_181A37000, v23, v63, "%{public}s ws.output.client: CFHTTPMessageCopySerializedMessage failed, backtrace limit exceeded", applier, 0xCu);
                    }
                  }

LABEL_112:
                  if (v22)
                  {
                    free(v22);
                  }

                  goto LABEL_103;
                }

                CFRelease(Request);
LABEL_103:
                v20 = 0;
                goto LABEL_104;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v44 = gLogObj;
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              v45 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v80[0]) = 0;
              if (__nwlog_fault(v45, type, v80))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v46 = gLogObj;
                  v47 = type[0];
                  if (os_log_type_enabled(v46, type[0]))
                  {
                    *applier = 136446210;
                    *&applier[4] = "nw_ws_create_client_request";
                    _os_log_impl(&dword_181A37000, v46, v47, "%{public}s CFStringCreateWithBytes failed", applier, 0xCu);
                  }
                }

                else if (LOBYTE(v80[0]) == 1)
                {
                  v53 = __nw_create_backtrace_string();
                  v46 = __nwlog_obj();
                  v54 = type[0];
                  v55 = os_log_type_enabled(v46, type[0]);
                  if (v53)
                  {
                    if (v55)
                    {
                      *applier = 136446466;
                      *&applier[4] = "nw_ws_create_client_request";
                      *&applier[12] = 2082;
                      *&applier[14] = v53;
                      _os_log_impl(&dword_181A37000, v46, v54, "%{public}s CFStringCreateWithBytes failed, dumping backtrace:%{public}s", applier, 0x16u);
                    }

                    free(v53);
                    if (!v45)
                    {
                      goto LABEL_102;
                    }

                    goto LABEL_101;
                  }

                  if (v55)
                  {
                    *applier = 136446210;
                    *&applier[4] = "nw_ws_create_client_request";
                    _os_log_impl(&dword_181A37000, v46, v54, "%{public}s CFStringCreateWithBytes failed, no backtrace", applier, 0xCu);
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v46 = gLogObj;
                  v57 = type[0];
                  if (os_log_type_enabled(v46, type[0]))
                  {
                    *applier = 136446210;
                    *&applier[4] = "nw_ws_create_client_request";
                    _os_log_impl(&dword_181A37000, v46, v57, "%{public}s CFStringCreateWithBytes failed, backtrace limit exceeded", applier, 0xCu);
                  }
                }
              }

              if (!v45)
              {
LABEL_102:
                CFRelease(Request);
                goto LABEL_103;
              }

LABEL_101:
              free(v45);
              goto LABEL_102;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v36 = gLogObj;
            *applier = 136446210;
            *&applier[4] = "nw_ws_create_client_request";
            v37 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v80[0]) = 0;
            if (__nwlog_fault(v37, type, v80))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v38 = gLogObj;
                v39 = type[0];
                if (os_log_type_enabled(v38, type[0]))
                {
                  *applier = 136446210;
                  *&applier[4] = "nw_ws_create_client_request";
                  _os_log_impl(&dword_181A37000, v38, v39, "%{public}s CFURLCopyHostName failed", applier, 0xCu);
                }
              }

              else if (LOBYTE(v80[0]) == 1)
              {
                v48 = __nw_create_backtrace_string();
                if (v48)
                {
                  v49 = v48;
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v50 = gLogObj;
                  v51 = type[0];
                  if (os_log_type_enabled(v50, type[0]))
                  {
                    *applier = 136446466;
                    *&applier[4] = "nw_ws_create_client_request";
                    *&applier[12] = 2082;
                    *&applier[14] = v49;
                    _os_log_impl(&dword_181A37000, v50, v51, "%{public}s CFURLCopyHostName failed, dumping backtrace:%{public}s", applier, 0x16u);
                  }

                  free(v49);
                  if (!v37)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                }

                v38 = __nwlog_obj();
                v61 = type[0];
                if (os_log_type_enabled(v38, type[0]))
                {
                  *applier = 136446210;
                  *&applier[4] = "nw_ws_create_client_request";
                  _os_log_impl(&dword_181A37000, v38, v61, "%{public}s CFURLCopyHostName failed, no backtrace", applier, 0xCu);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v38 = gLogObj;
                v56 = type[0];
                if (os_log_type_enabled(v38, type[0]))
                {
                  *applier = 136446210;
                  *&applier[4] = "nw_ws_create_client_request";
                  _os_log_impl(&dword_181A37000, v38, v56, "%{public}s CFURLCopyHostName failed, backtrace limit exceeded", applier, 0xCu);
                }
              }
            }

            if (!v37)
            {
LABEL_95:
              CFRelease(Request);
              CFRelease(v9);
              goto LABEL_96;
            }

LABEL_94:
            free(v37);
            goto LABEL_95;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          *applier = 136446210;
          *&applier[4] = "nw_ws_create_client_request";
          v30 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v80[0]) = 0;
          if (__nwlog_fault(v30, type, v80))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v31 = gLogObj;
              v32 = type[0];
              if (os_log_type_enabled(v31, type[0]))
              {
                *applier = 136446210;
                *&applier[4] = "nw_ws_create_client_request";
                _os_log_impl(&dword_181A37000, v31, v32, "%{public}s CFHTTPMessageCreateRequest failed", applier, 0xCu);
              }
            }

            else if (LOBYTE(v80[0]) == 1)
            {
              v40 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v31 = gLogObj;
              v41 = type[0];
              v42 = os_log_type_enabled(v31, type[0]);
              if (v40)
              {
                if (v42)
                {
                  *applier = 136446466;
                  *&applier[4] = "nw_ws_create_client_request";
                  *&applier[12] = 2082;
                  *&applier[14] = v40;
                  _os_log_impl(&dword_181A37000, v31, v41, "%{public}s CFHTTPMessageCreateRequest failed, dumping backtrace:%{public}s", applier, 0x16u);
                }

                free(v40);
                if (!v30)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }

              if (v42)
              {
                *applier = 136446210;
                *&applier[4] = "nw_ws_create_client_request";
                _os_log_impl(&dword_181A37000, v31, v41, "%{public}s CFHTTPMessageCreateRequest failed, no backtrace", applier, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v31 = gLogObj;
              v52 = type[0];
              if (os_log_type_enabled(v31, type[0]))
              {
                *applier = 136446210;
                *&applier[4] = "nw_ws_create_client_request";
                _os_log_impl(&dword_181A37000, v31, v52, "%{public}s CFHTTPMessageCreateRequest failed, backtrace limit exceeded", applier, 0xCu);
              }
            }
          }

          if (!v30)
          {
LABEL_84:
            CFRelease(v9);
            goto LABEL_96;
          }

LABEL_83:
          free(v30);
          goto LABEL_84;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        *applier = 136446210;
        *&applier[4] = "nw_ws_create_client_request";
        v26 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v80[0]) = 0;
        if (__nwlog_fault(v26, type, v80))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v27 = gLogObj;
            v28 = type[0];
            if (os_log_type_enabled(v27, type[0]))
            {
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              _os_log_impl(&dword_181A37000, v27, v28, "%{public}s CFURLCreateWithString failed", applier, 0xCu);
            }

LABEL_73:

            goto LABEL_74;
          }

          if (LOBYTE(v80[0]) != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v27 = gLogObj;
            v43 = type[0];
            if (os_log_type_enabled(v27, type[0]))
            {
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              _os_log_impl(&dword_181A37000, v27, v43, "%{public}s CFURLCreateWithString failed, backtrace limit exceeded", applier, 0xCu);
            }

            goto LABEL_73;
          }

          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v34 = type[0];
          v35 = os_log_type_enabled(v27, type[0]);
          if (!v33)
          {
            if (v35)
            {
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              _os_log_impl(&dword_181A37000, v27, v34, "%{public}s CFURLCreateWithString failed, no backtrace", applier, 0xCu);
            }

            goto LABEL_73;
          }

          if (v35)
          {
            *applier = 136446466;
            *&applier[4] = "nw_ws_create_client_request";
            *&applier[12] = 2082;
            *&applier[14] = v33;
            _os_log_impl(&dword_181A37000, v27, v34, "%{public}s CFURLCreateWithString failed, dumping backtrace:%{public}s", applier, 0x16u);
          }

LABEL_31:

          free(v33);
          if (!v26)
          {
            goto LABEL_96;
          }

          goto LABEL_75;
        }
      }

      else
      {
        v68 = __nwlog_obj();
        *applier = 136446210;
        *&applier[4] = "nw_ws_create_client_request";
        v26 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v80[0]) = 0;
        if (__nwlog_fault(v26, type, v80))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v27 = __nwlog_obj();
            v69 = type[0];
            if (os_log_type_enabled(v27, type[0]))
            {
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              _os_log_impl(&dword_181A37000, v27, v69, "%{public}s called with null endpoint", applier, 0xCu);
            }

            goto LABEL_73;
          }

          if (LOBYTE(v80[0]) != 1)
          {
            v27 = __nwlog_obj();
            v78 = type[0];
            if (os_log_type_enabled(v27, type[0]))
            {
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              _os_log_impl(&dword_181A37000, v27, v78, "%{public}s called with null endpoint, backtrace limit exceeded", applier, 0xCu);
            }

            goto LABEL_73;
          }

          v33 = __nw_create_backtrace_string();
          v27 = __nwlog_obj();
          v74 = type[0];
          v75 = os_log_type_enabled(v27, type[0]);
          if (!v33)
          {
            if (v75)
            {
              *applier = 136446210;
              *&applier[4] = "nw_ws_create_client_request";
              _os_log_impl(&dword_181A37000, v27, v74, "%{public}s called with null endpoint, no backtrace", applier, 0xCu);
            }

            goto LABEL_73;
          }

          if (v75)
          {
            *applier = 136446466;
            *&applier[4] = "nw_ws_create_client_request";
            *&applier[12] = 2082;
            *&applier[14] = v33;
            _os_log_impl(&dword_181A37000, v27, v74, "%{public}s called with null endpoint, dumping backtrace:%{public}s", applier, 0x16u);
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      v66 = __nwlog_obj();
      *applier = 136446210;
      *&applier[4] = "nw_ws_create_client_request";
      v26 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v80[0]) = 0;
      if (__nwlog_fault(v26, type, v80))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v67 = type[0];
          if (os_log_type_enabled(v27, type[0]))
          {
            *applier = 136446210;
            *&applier[4] = "nw_ws_create_client_request";
            _os_log_impl(&dword_181A37000, v27, v67, "%{public}s called with null framer", applier, 0xCu);
          }

          goto LABEL_73;
        }

        if (LOBYTE(v80[0]) != 1)
        {
          v27 = __nwlog_obj();
          v77 = type[0];
          if (os_log_type_enabled(v27, type[0]))
          {
            *applier = 136446210;
            *&applier[4] = "nw_ws_create_client_request";
            _os_log_impl(&dword_181A37000, v27, v77, "%{public}s called with null framer, backtrace limit exceeded", applier, 0xCu);
          }

          goto LABEL_73;
        }

        v33 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v72 = type[0];
        v73 = os_log_type_enabled(v27, type[0]);
        if (!v33)
        {
          if (v73)
          {
            *applier = 136446210;
            *&applier[4] = "nw_ws_create_client_request";
            _os_log_impl(&dword_181A37000, v27, v72, "%{public}s called with null framer, no backtrace", applier, 0xCu);
          }

          goto LABEL_73;
        }

        if (v73)
        {
          *applier = 136446466;
          *&applier[4] = "nw_ws_create_client_request";
          *&applier[12] = 2082;
          *&applier[14] = v33;
          _os_log_impl(&dword_181A37000, v27, v72, "%{public}s called with null framer, dumping backtrace:%{public}s", applier, 0x16u);
        }

        goto LABEL_31;
      }
    }
  }

  else
  {
    v64 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_ws_create_client_request";
    v26 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v80[0]) = 0;
    if (__nwlog_fault(v26, type, v80))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v65 = type[0];
        if (os_log_type_enabled(v27, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_ws_create_client_request";
          _os_log_impl(&dword_181A37000, v27, v65, "%{public}s called with null state", applier, 0xCu);
        }

        goto LABEL_73;
      }

      if (LOBYTE(v80[0]) != 1)
      {
        v27 = __nwlog_obj();
        v76 = type[0];
        if (os_log_type_enabled(v27, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_ws_create_client_request";
          _os_log_impl(&dword_181A37000, v27, v76, "%{public}s called with null state, backtrace limit exceeded", applier, 0xCu);
        }

        goto LABEL_73;
      }

      v33 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v70 = type[0];
      v71 = os_log_type_enabled(v27, type[0]);
      if (!v33)
      {
        if (v71)
        {
          *applier = 136446210;
          *&applier[4] = "nw_ws_create_client_request";
          _os_log_impl(&dword_181A37000, v27, v70, "%{public}s called with null state, no backtrace", applier, 0xCu);
        }

        goto LABEL_73;
      }

      if (v71)
      {
        *applier = 136446466;
        *&applier[4] = "nw_ws_create_client_request";
        *&applier[12] = 2082;
        *&applier[14] = v33;
        _os_log_impl(&dword_181A37000, v27, v70, "%{public}s called with null state, dumping backtrace:%{public}s", applier, 0x16u);
      }

      goto LABEL_31;
    }
  }

LABEL_74:
  if (v26)
  {
LABEL_75:
    free(v26);
  }

LABEL_96:
  v20 = 0;
LABEL_105:

  return v20;
}

uint64_t __nw_ws_create_client_request_block_invoke_25(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    v47 = "nw_ws_create_client_request_block_invoke";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v24, &type, &v44))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v47 = "nw_ws_create_client_request_block_invoke";
      v27 = "%{public}s nw_ws_options_get_version failed";
    }

    else
    {
      if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v47 = "nw_ws_create_client_request_block_invoke";
            v48 = 2082;
            v49 = backtrace_string;
            v31 = "%{public}s nw_ws_options_get_version failed, dumping backtrace:%{public}s";
LABEL_49:
            _os_log_impl(&dword_181A37000, v25, v29, v31, buf, 0x16u);
          }

LABEL_50:

          free(backtrace_string);
          goto LABEL_77;
        }

        if (!v30)
        {
LABEL_42:

          if (!v24)
          {
            return 0;
          }

          goto LABEL_78;
        }

        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v27 = "%{public}s nw_ws_options_get_version failed, no backtrace";
        v35 = v25;
        v36 = v29;
LABEL_41:
        _os_log_impl(&dword_181A37000, v35, v36, v27, buf, 0xCu);
        goto LABEL_42;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v47 = "nw_ws_create_client_request_block_invoke";
      v27 = "%{public}s nw_ws_options_get_version failed, backtrace limit exceeded";
    }

    v35 = v25;
    v36 = v26;
    goto LABEL_41;
  }

  CFHTTPMessageSetHeaderFieldValue(*(a1 + 32), @"Sec-WebSocket-Version", @"13");
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136446210;
    v47 = "nw_ws_create_client_request_block_invoke";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v24, &type, &v44))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v33 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v34 = "%{public}s CFStringCreateMutable failed";
LABEL_74:
        v41 = v25;
        v42 = v33;
        goto LABEL_75;
      }

LABEL_76:

      goto LABEL_77;
    }

    if (v44 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v33 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v34 = "%{public}s CFStringCreateMutable failed, backtrace limit exceeded";
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v29 = type;
    v37 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v34 = "%{public}s CFStringCreateMutable failed, no backtrace";
        v41 = v25;
        v42 = v29;
LABEL_75:
        _os_log_impl(&dword_181A37000, v41, v42, v34, buf, 0xCu);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    if (v37)
    {
      *buf = 136446466;
      v47 = "nw_ws_create_client_request_block_invoke";
      v48 = 2082;
      v49 = backtrace_string;
      v31 = "%{public}s CFStringCreateMutable failed, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  v5 = Mutable;
  if (*a2)
  {
    v6 = xpc_copy(*a2);
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    v9 = *a2;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __nw_ws_create_client_request_block_invoke_32;
    applier[3] = &__block_descriptor_48_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
    applier[4] = v5;
    applier[5] = a2;
    if (!xpc_array_apply(v9, applier))
    {
      CFRelease(v5);
      return 0;
    }
  }

  if (CFStringGetLength(v5) >= 1)
  {
    CFHTTPMessageSetHeaderFieldValue(*(a1 + 32), @"Sec-WebSocket-Protocol", v5);
  }

  CFRelease(v5);
  if ((*(a2 + 70) & 8) != 0)
  {
    v10 = CFStringCreateMutable(0, 0);
    CFStringAppendCString(v10, "permessage-deflate", 0x8000100u);
    v11 = *(a2 + 70);
    if ((v11 & 0x10) == 0)
    {
      CFStringAppendCString(v10, "; server_no_context_takeover", 0x8000100u);
      v11 = *(a2 + 70);
    }

    if ((v11 & 0x20) == 0)
    {
      CFStringAppendCString(v10, "; client_no_context_takeover", 0x8000100u);
    }

    if ((*(a2 + 68) & 0xF8) == 8)
    {
      CFStringAppendFormat(v10, 0, @"; server_max_window_bits=%d", *(a2 + 68));
    }

    if ((*(a2 + 69) & 0xF8) == 8)
    {
      CFStringAppendFormat(v10, 0, @"; client_max_window_bits=%d", *(a2 + 69));
    }

    CFHTTPMessageSetHeaderFieldValue(*(a1 + 32), @"Sec-WebSocket-Extensions", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  count = xpc_array_get_count(*(a2 + 8));
  if (!count)
  {
    return 1;
  }

  v13 = count;
  v14 = 0;
  v15 = *MEMORY[0x1E695E480];
  while (1)
  {
    string = xpc_array_get_string(*(a2 + 8), v14);
    v17 = xpc_array_get_string(*(a2 + 16), v14);
    v18 = CFStringCreateWithCString(v15, string, 0x600u);
    v19 = CFStringCreateWithCString(v15, v17, 0x600u);
    v20 = v19;
    if (!v18 || v19 == 0)
    {
      break;
    }

    CFHTTPMessageSetHeaderFieldValue(*(a1 + 32), v18, v19);
    CFRelease(v18);
    CFRelease(v20);
    if (v13 == ++v14)
    {
      return 1;
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v38 = gLogObj;
  *buf = 136446210;
  v47 = "nw_ws_create_client_request_block_invoke";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v24, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v33 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v34 = "%{public}s CFStringCreateWithCString failed";
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    if (v44 != 1)
    {
      v25 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v34 = "%{public}s CFStringCreateWithCString failed, backtrace limit exceeded";
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    v39 = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v33 = type;
    v40 = os_log_type_enabled(v25, type);
    if (!v39)
    {
      if (v40)
      {
        *buf = 136446210;
        v47 = "nw_ws_create_client_request_block_invoke";
        v34 = "%{public}s CFStringCreateWithCString failed, no backtrace";
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    if (v40)
    {
      *buf = 136446466;
      v47 = "nw_ws_create_client_request_block_invoke";
      v48 = 2082;
      v49 = v39;
      _os_log_impl(&dword_181A37000, v25, v33, "%{public}s CFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v39);
  }

LABEL_77:
  if (v24)
  {
LABEL_78:
    free(v24);
  }

  return 0;
}

BOOL __nw_ws_create_client_request_block_invoke_32(uint64_t a1, size_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  string_ptr = xpc_string_get_string_ptr(v5);
  v7 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  if (v7)
  {
    CFStringAppend(*(a1 + 32), v7);
    CFRelease(v7);
    if (xpc_array_get_count(**(a1 + 40)) - 1 > a2)
    {
      CFStringAppend(*(a1 + 32), @",");
    }

    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446210;
  v20 = "nw_ws_create_client_request_block_invoke";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v9, &type, &v17))
  {
    goto LABEL_9;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v20 = "nw_ws_create_client_request_block_invoke";
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s CFStringCreatewithCString failed", buf, 0xCu);
    }

LABEL_8:

LABEL_9:
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v9);
    goto LABEL_11;
  }

  if (v17 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v16 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v20 = "nw_ws_create_client_request_block_invoke";
      _os_log_impl(&dword_181A37000, v10, v16, "%{public}s CFStringCreatewithCString failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_8;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(v10, type);
  if (!backtrace_string)
  {
    if (v15)
    {
      *buf = 136446210;
      v20 = "nw_ws_create_client_request_block_invoke";
      _os_log_impl(&dword_181A37000, v10, v14, "%{public}s CFStringCreatewithCString failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "nw_ws_create_client_request_block_invoke";
    v21 = 2082;
    v22 = backtrace_string;
    _os_log_impl(&dword_181A37000, v10, v14, "%{public}s CFStringCreatewithCString failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v7 != 0;
}

uint64_t nw_ws_validate_client_request(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 24);
  v5 = CFHTTPMessageCopyHeaderFieldValue(v4, @"Upgrade");
  v6 = v5;
  if (!v5)
  {
LABEL_4:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      v8 = 0;
      goto LABEL_7;
    }

LABEL_5:
    *buf = 136446466;
    v32 = "nw_ws_validate_client_request";
    v33 = 2082;
    v34 = (a1 + 227);
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s client request doesn't match expected value", buf, 0x16u);
    goto LABEL_6;
  }

  if (CFStringCompare(v5, @"WebSocket", 1uLL))
  {
    CFRelease(v6);
    goto LABEL_4;
  }

  CFRelease(v6);
  v10 = CFHTTPMessageCopyHeaderFieldValue(v4, @"Connection");
  v11 = v10;
  if (!v10)
  {
LABEL_11:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (CFStringCompare(v10, @"Upgrade", 1uLL))
  {
    CFRelease(v11);
    goto LABEL_11;
  }

  CFRelease(v11);
  if ((*(a1 + 225) & 0x40) != 0)
  {
    v12 = CFHTTPMessageCopyHeaderFieldValue(v4, @"Sec-WebSocket-Extensions");
    if (v12)
    {
      *(a1 + 225) &= ~0x40u;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v12, @",");
      CFRelease(v12);
      v14 = 0;
      v15 = 0;
      while (v14 < CFArrayGetCount(ArrayBySeparatingStrings))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v14);
        if (v15)
        {
          CFRelease(v15);
        }

        v17 = nw_ws_copy_extension_decl_as_array(ValueAtIndex);
        v15 = v17;
        if (v17)
        {
          if (CFArrayGetCount(v17) >= 1)
          {
            v18 = CFArrayGetValueAtIndex(v15, 0);
            if (CFStringCompare(v18, @"permessage-deflate", 1uLL) == kCFCompareEqualTo)
            {
              v19 = 0;
              v20 = 1;
              *(a1 + 225) |= 0x40u;
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    if (v20 >= CFArrayGetCount(v15))
                    {
                      goto LABEL_76;
                    }

                    v21 = CFArrayGetValueAtIndex(v15, v20);
                    v30 = -1;
                    if (CFStringCompare(v21, @"server_no_context_takeover", 1uLL))
                    {
                      break;
                    }

                    if (v19)
                    {
                      v22 = __nwlog_obj();
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v32 = "nw_ws_validate_client_request";
                        v33 = 2082;
                        v34 = (a1 + 227);
                        v23 = "%{public}s %{public}s Duplicate value for server_no_context_takeover";
                        goto LABEL_68;
                      }

                      goto LABEL_75;
                    }

                    v19 |= 1u;
                    *(a1 + 225) &= ~0x80u;
                    ++v20;
                  }

                  if (CFStringCompare(v21, @"client_no_context_takeover", 1uLL) == kCFCompareEqualTo)
                  {
                    break;
                  }

                  if (nw_ws_get_extension_parameter(v21, @"server_max_window_bits", &v30))
                  {
                    if ((v19 & 4) != 0)
                    {
                      v22 = __nwlog_obj();
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        v24 = "";
                        if (a1)
                        {
                          v24 = (a1 + 227);
                        }

                        goto LABEL_67;
                      }

                      goto LABEL_75;
                    }

                    if ((v30 & 0xFFFFFFFFFFFFFFF8) != 8)
                    {
                      v22 = __nwlog_obj();
                      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_75;
                      }

                      v25 = "";
                      v32 = "nw_ws_validate_client_request";
                      *buf = 136446722;
                      if (a1)
                      {
                        v25 = (a1 + 227);
                      }

                      v33 = 2082;
                      v34 = v25;
                      v35 = 2048;
                      v36 = v30;
                      v23 = "%{public}s %{public}s Invalid value for server_max_window_bits (%llu)";
LABEL_73:
                      v27 = v22;
                      v28 = 32;
                      goto LABEL_74;
                    }

                    v19 |= 4u;
                    *(a1 + 220) = v30;
                    ++v20;
                  }

                  else if (CFStringCompare(v21, @"client_max_window_bits", 1uLL))
                  {
                    if (!nw_ws_get_extension_parameter(v21, @"client_max_window_bits", &v30))
                    {
                      v22 = __nwlog_obj();
                      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_75;
                      }

                      v26 = (a1 + 227);
                      v32 = "nw_ws_validate_client_request";
                      *buf = 136446722;
                      if (!a1)
                      {
                        v26 = "";
                      }

                      v33 = 2082;
                      v34 = v26;
                      v35 = 2112;
                      v36 = v21;
                      v23 = "%{public}s %{public}s Invalid parameter in permessage-deflate extension (%@)";
                      goto LABEL_73;
                    }

                    if ((v19 & 8) != 0)
                    {
                      v22 = __nwlog_obj();
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        v24 = "";
                        if (a1)
                        {
                          v24 = (a1 + 227);
                        }

                        goto LABEL_67;
                      }

                      goto LABEL_75;
                    }

                    v19 |= 8u;
                    if (v30 == -1)
                    {
                      *(a1 + 221) = 15;
                      ++v20;
                    }

                    else
                    {
                      if ((v30 & 0xFFFFFFFFFFFFFFF8) != 8)
                      {
                        v22 = __nwlog_obj();
                        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_75;
                        }

                        v29 = "";
                        v32 = "nw_ws_validate_client_request";
                        *buf = 136446722;
                        if (a1)
                        {
                          v29 = (a1 + 227);
                        }

                        v33 = 2082;
                        v34 = v29;
                        v35 = 2048;
                        v36 = v30;
                        v23 = "%{public}s %{public}s Invalid value for client_max_window_bits (%llu)";
                        goto LABEL_73;
                      }

                      *(a1 + 221) = v30;
                      ++v20;
                    }
                  }

                  else
                  {
                    if ((v19 & 8) != 0)
                    {
                      v22 = __nwlog_obj();
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        v24 = "";
                        if (a1)
                        {
                          v24 = (a1 + 227);
                        }

LABEL_67:
                        *buf = 136446466;
                        v32 = "nw_ws_validate_client_request";
                        v33 = 2082;
                        v34 = v24;
                        v23 = "%{public}s %{public}s Duplicate value for server_max_window_bits";
LABEL_68:
                        v27 = v22;
                        v28 = 22;
LABEL_74:
                        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, v23, buf, v28);
                      }

LABEL_75:

                      *(a1 + 225) &= ~0x40u;
                      goto LABEL_76;
                    }

                    v19 |= 8u;
                    *(a1 + 221) = 8;
                    ++v20;
                  }
                }

                if ((v19 & 2) != 0)
                {
                  v22 = __nwlog_obj();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v32 = "nw_ws_validate_client_request";
                    v33 = 2082;
                    v34 = (a1 + 227);
                    v23 = "%{public}s %{public}s Duplicate value for client_no_context_takeover";
                    goto LABEL_68;
                  }

                  goto LABEL_75;
                }

                v19 |= 2u;
                *(a1 + 225) &= ~0x100u;
                ++v20;
              }
            }
          }
        }

        ++v14;
      }

LABEL_76:
      if (v15)
      {
        CFRelease(v15);
      }

      if (ArrayBySeparatingStrings)
      {
        CFRelease(ArrayBySeparatingStrings);
      }
    }
  }

  v8 = 1;
LABEL_7:

  return v8;
}

const __CFArray *nw_ws_copy_extension_decl_as_array(CFStringRef theString)
{
  v1 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @";");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  MutableCopy = CFArrayCreateMutableCopy(v1, Count, ArrayBySeparatingStrings);
  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  for (i = 0; i < CFArrayGetCount(MutableCopy); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
    Length = CFStringGetLength(ValueAtIndex);
    v8 = CFStringCreateMutableCopy(v1, Length, ValueAtIndex);
    CFStringTrimWhitespace(v8);
    CFArraySetValueAtIndex(MutableCopy, i, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return MutableCopy;
}

BOOL nw_ws_get_extension_parameter(CFStringRef theString, CFStringRef theString2, unint64_t *a3)
{
  if (!a3)
  {
    return CFStringCompare(theString, theString2, 1uLL) == kCFCompareEqualTo;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @"=");
  if (CFArrayGetCount(ArrayBySeparatingStrings) == 2 && (v6 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), CFStringCompare(v6, theString2, 1uLL) == kCFCompareEqualTo))
  {
    v7 = 1;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
    c_string_from_cfstring = nw_utilities_create_c_string_from_cfstring(ValueAtIndex);
    if (c_string_from_cfstring)
    {
      v11 = c_string_from_cfstring;
      *a3 = atoi(c_string_from_cfstring);
      free(v11);
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  return v7;
}

void nw_ws_present_request_to_user(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 24);
  v5 = objc_alloc_init(NWConcrete_nw_ws_request);
  v6 = CFHTTPMessageCopyAllHeaderFields(v4);
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v30 = "nw_ws_present_request_to_user";
    v8 = _os_log_send_and_compose_impl();

    v28 = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v8, &v28, &v27))
    {
      if (v28 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = v28;
        if (os_log_type_enabled(v9, v28))
        {
          *buf = 136446210;
          v30 = "nw_ws_present_request_to_user";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s CFHTTPMessageCopyAllHeaderFields failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v12 = v28;
        v13 = os_log_type_enabled(v9, v28);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v30 = "nw_ws_present_request_to_user";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s CFHTTPMessageCopyAllHeaderFields failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (v13)
        {
          *buf = 136446210;
          v30 = "nw_ws_present_request_to_user";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s CFHTTPMessageCopyAllHeaderFields failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v14 = v28;
        if (os_log_type_enabled(v9, v28))
        {
          *buf = 136446210;
          v30 = "nw_ws_present_request_to_user";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s CFHTTPMessageCopyAllHeaderFields failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_21:
      nw_framer_mark_failed_with_error(v3, 14);
      goto LABEL_22;
    }

LABEL_20:
    free(v8);
    goto LABEL_21;
  }

LABEL_22:
  v15 = CFHTTPMessageCopyRequestURL(v4);
  v16 = v15;
  if (v15)
  {
    v17 = CFURLCopyPath(v15);
    if (v17)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __nw_ws_present_request_to_user_block_invoke;
      v25[3] = &unk_1E6A33B10;
      v26 = v5;
      nw_utilities_get_c_string_from_cfstring(v17, 0x8000100u, v25);
      CFRelease(v17);
    }

    CFRelease(v16);
  }

  CFDictionaryApplyFunction(v6, nw_ws_copy_headers_into_ws_request, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  v18 = nw_framer_copy_options(v3);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __nw_ws_present_request_to_user_block_invoke_2;
  v21[3] = &unk_1E6A33B38;
  v19 = v5;
  v22 = v19;
  v20 = v3;
  v23 = v20;
  v24 = a1;
  nw_protocol_options_access_handle(v18, v21);
}

void __nw_ws_present_request_to_user_block_invoke(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_ws_request_set_path";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v6, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v24 = "nw_ws_request_set_path";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null request", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "nw_ws_request_set_path";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v6)
        {
          goto LABEL_5;
        }

LABEL_42:
        free(v6);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_ws_request_set_path";
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v24 = "nw_ws_request_set_path";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_ws_request_set_path";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v6, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v24 = "nw_ws_request_set_path";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v7, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_ws_request_set_path";
          v25 = 2082;
          v26 = v16;
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        if (!v6)
        {
          goto LABEL_5;
        }

        goto LABEL_42;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_ws_request_set_path";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v24 = "nw_ws_request_set_path";
        _os_log_impl(&dword_181A37000, v7, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

  v4 = strdup(a2);
  if (v4)
  {
LABEL_4:
    v3[1] = v4;
LABEL_5:

    return;
  }

  v11 = __nwlog_obj();
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v24 = "strict_strdup";
  v12 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v12))
  {
    free(v12);
    v4 = 0;
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t __nw_ws_present_request_to_user_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2 && *(a2 + 40))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __nw_ws_present_request_to_user_block_invoke_3;
    v7[3] = &unk_1E6A35A40;
    v10 = a2;
    v8 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = v4;
    v11 = v5;
    dispatch_async(v2, v7);
  }

  else
  {
    nw_ws_write_server_response(*(a1 + 48), *(a1 + 40), 0);
  }

  return 1;
}

void __nw_ws_present_request_to_user_block_invoke_3(void *a1)
{
  v2 = (*(*(a1[6] + 40) + 16))();
  v3 = a1[5];
  async_block[0] = MEMORY[0x1E69E9820];
  async_block[1] = 3221225472;
  async_block[2] = __nw_ws_present_request_to_user_block_invoke_4;
  async_block[3] = &unk_1E6A3BCF0;
  v8 = a1[7];
  v6 = v3;
  v7 = v2;
  v4 = v2;
  nw_framer_async(v6, async_block);
}

void nw_ws_write_server_response(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6[2];
    if (v8 >= 2)
    {
      if (v8 != 2)
      {
        Response = 0;
        goto LABEL_43;
      }

      Response = CFHTTPMessageCreateResponse(*MEMORY[0x1E695E480], 400, @"Bad Request", *MEMORY[0x1E695ADB8]);
      if (Response)
      {
LABEL_43:
        objc_storeStrong((a1 + 48), a3);
        v29 = CFHTTPMessageCopySerializedMessage(Response);
        if (Response)
        {
          CFRelease(Response);
        }

        if (v29)
        {
          goto LABEL_93;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        v31 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v64 = 0;
        if (__nwlog_fault(v31, &type, &v64))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            v33 = type;
            if (os_log_type_enabled(v32, type))
            {
              *buf = 136446210;
              v67 = "nw_ws_write_server_response";
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s CFHTTPMessageCopySerializedMessage failed", buf, 0xCu);
            }
          }

          else if (v64 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            if (backtrace_string)
            {
              v40 = backtrace_string;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v41 = gLogObj;
              v42 = type;
              if (os_log_type_enabled(v41, type))
              {
                *buf = 136446466;
                v67 = "nw_ws_write_server_response";
                v68 = 2082;
                v69 = v40;
                _os_log_impl(&dword_181A37000, v41, v42, "%{public}s CFHTTPMessageCopySerializedMessage failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v40);
              if (!v31)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }

            v32 = __nwlog_obj();
            v49 = type;
            if (os_log_type_enabled(v32, type))
            {
              *buf = 136446210;
              v67 = "nw_ws_write_server_response";
              _os_log_impl(&dword_181A37000, v32, v49, "%{public}s CFHTTPMessageCopySerializedMessage failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            v43 = type;
            if (os_log_type_enabled(v32, type))
            {
              *buf = 136446210;
              v67 = "nw_ws_write_server_response";
              _os_log_impl(&dword_181A37000, v32, v43, "%{public}s CFHTTPMessageCopySerializedMessage failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v31)
        {
LABEL_92:
          nw_framer_mark_failed_with_error(v5, 14);
LABEL_93:
          BytePtr = CFDataGetBytePtr(v29);
          Length = CFDataGetLength(v29);
          nw_framer_write_output(v5, BytePtr, Length);
          if (v29)
          {
            CFRelease(v29);
          }

          if (gLogDatapath == 1)
          {
            v60 = __nwlog_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v61 = "server";
              v62 = *(a1 + 225);
              v67 = "nw_ws_write_server_response";
              *buf = 136446722;
              v68 = 2082;
              if ((v62 & 4) == 0)
              {
                v61 = "client";
              }

              v69 = (a1 + 227);
              v70 = 2082;
              v71 = v61;
              _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s handshake complete", buf, 0x20u);
            }
          }

          *(a1 + 180) = 2;
          *(a1 + 188) = 2;
          *(a1 + 225) &= ~2u;
          nw_framer_mark_ready(v5);
          goto LABEL_108;
        }

LABEL_91:
        free(v31);
        goto LABEL_92;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      *buf = 136446210;
      v67 = "nw_ws_write_server_response";
      v23 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v64 = 0;
      if (!__nwlog_fault(v23, &type, &v64))
      {
LABEL_105:
        if (!v23)
        {
LABEL_107:
          nw_framer_mark_failed_with_error(v5, 14);
          goto LABEL_108;
        }

LABEL_106:
        free(v23);
        goto LABEL_107;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v67 = "nw_ws_write_server_response";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s CFHTTPMessageCreateResponse failed", buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        v44 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v45 = type;
        v46 = os_log_type_enabled(v24, type);
        if (v44)
        {
          if (v46)
          {
            *buf = 136446466;
            v67 = "nw_ws_write_server_response";
            v68 = 2082;
            v69 = v44;
            _os_log_impl(&dword_181A37000, v24, v45, "%{public}s CFHTTPMessageCreateResponse failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v44);
          if (!v23)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        if (v46)
        {
          *buf = 136446210;
          v67 = "nw_ws_write_server_response";
          _os_log_impl(&dword_181A37000, v24, v45, "%{public}s CFHTTPMessageCreateResponse failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v48 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v67 = "nw_ws_write_server_response";
          _os_log_impl(&dword_181A37000, v24, v48, "%{public}s CFHTTPMessageCreateResponse failed, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_104:

      goto LABEL_105;
    }
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = CFHTTPMessageCreateResponse(*MEMORY[0x1E695E480], 101, @"Switching Protocols", *MEMORY[0x1E695ADB8]);
  Response = v10;
  if (!v10)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v67 = "nw_ws_write_server_response";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v23, &type, &v64))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s CFHTTPMessageCreateResponse failed", buf, 0xCu);
      }
    }

    else if (v64 == 1)
    {
      v34 = __nw_create_backtrace_string();
      if (v34)
      {
        v35 = v34;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          *buf = 136446466;
          v67 = "nw_ws_write_server_response";
          v68 = 2082;
          v69 = v35;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s CFHTTPMessageCreateResponse failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        if (!v23)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      }

      v24 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        _os_log_impl(&dword_181A37000, v24, v47, "%{public}s CFHTTPMessageCreateResponse failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v38 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        _os_log_impl(&dword_181A37000, v24, v38, "%{public}s CFHTTPMessageCreateResponse failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_104;
  }

  CFHTTPMessageSetHeaderFieldValue(v10, @"Upgrade", @"WebSocket");
  CFHTTPMessageSetHeaderFieldValue(Response, @"Connection", @"Upgrade");
  v12 = *(a1 + 24);
  if (!v12)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "nw_ws_write_server_response";
      v68 = 2082;
      v69 = (a1 + 227);
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s client_request should not be nil", buf, 0x16u);
    }

    goto LABEL_65;
  }

  v13 = CFHTTPMessageCopyHeaderFieldValue(v12, @"Sec-WebSocket-Key");
  v14 = v13;
  if (!v13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "nw_ws_write_server_response";
      v68 = 2082;
      v69 = (a1 + 227);
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s keyRef should not be nil", buf, 0x16u);
    }

    goto LABEL_65;
  }

  v15 = nw_ws_copy_response_for_challenge(v13);
  CFRelease(v14);
  if (!v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "nw_ws_write_server_response";
      v68 = 2082;
      v69 = (a1 + 227);
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s acceptRef should not be nil", buf, 0x16u);
    }

LABEL_65:

    CFRelease(Response);
    nw_framer_mark_failed_with_error(v5, 14);
    goto LABEL_108;
  }

  CFHTTPMessageSetHeaderFieldValue(Response, @"Sec-WebSocket-Accept", v15);
  CFRelease(v15);
  if ((*(a1 + 225) & 0x40) != 0)
  {
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendCString(Mutable, "permessage-deflate", 0x8000100u);
    v17 = *(a1 + 225);
    if ((v17 & 0x80) == 0)
    {
      CFStringAppendCString(Mutable, "; server_no_context_takeover", 0x8000100u);
      v17 = *(a1 + 225);
    }

    if ((v17 & 0x100) == 0)
    {
      CFStringAppendCString(Mutable, "; client_no_context_takeover", 0x8000100u);
    }

    if ((*(a1 + 220) & 0xF8) == 8)
    {
      CFStringAppendFormat(Mutable, 0, @"; server_max_window_bits=%d", *(a1 + 220));
    }

    if ((*(a1 + 221) & 0xF8) == 8)
    {
      CFStringAppendFormat(Mutable, 0, @"; client_max_window_bits=%d", *(a1 + 221));
    }

    CFHTTPMessageSetHeaderFieldValue(Response, @"Sec-WebSocket-Extensions", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (!v7)
  {
    goto LABEL_43;
  }

  v18 = v7;
  isa = v18[2].isa;

  if (!isa || !*isa)
  {
    goto LABEL_23;
  }

  v20 = CFStringCreateWithCString(v9, isa, 0x8000100u);
  if (v20)
  {
    CFHTTPMessageSetHeaderFieldValue(Response, @"Sec-WebSocket-Protocol", v20);
    CFRelease(v20);
LABEL_23:
    enumerator[0] = MEMORY[0x1E69E9820];
    enumerator[1] = 3221225472;
    enumerator[2] = ___ZL27nw_ws_write_server_responseP13nw_ws_state_tPU23objcproto12OS_nw_framer8NSObjectPU28objcproto17OS_nw_ws_responseS1__block_invoke;
    enumerator[3] = &__block_descriptor_40_e13_B24__0r_8r_16l;
    enumerator[4] = Response;
    if (!nw_ws_response_enumerate_additional_headers(v18, enumerator))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v67 = "nw_ws_write_server_response";
        v68 = 2082;
        v69 = (a1 + 227);
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to set all additional headers", buf, 0x16u);
      }

      CFRelease(Response);
      nw_framer_mark_failed_with_error(v5, 14);
      goto LABEL_108;
    }

    goto LABEL_43;
  }

  v52 = __nwlog_obj();
  *buf = 136446210;
  v67 = "nw_ws_write_server_response";
  v53 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v64 = 0;
  if (__nwlog_fault(v53, &type, &v64))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v54, type))
      {
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        _os_log_impl(&dword_181A37000, v54, v55, "%{public}s CFStringCreateWithCString failed", buf, 0xCu);
      }
    }

    else if (v64 == 1)
    {
      v56 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v57 = type;
      v58 = os_log_type_enabled(v54, type);
      if (v56)
      {
        if (v58)
        {
          *buf = 136446466;
          v67 = "nw_ws_write_server_response";
          v68 = 2082;
          v69 = v56;
          _os_log_impl(&dword_181A37000, v54, v57, "%{public}s CFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v56);
        goto LABEL_120;
      }

      if (v58)
      {
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        _os_log_impl(&dword_181A37000, v54, v57, "%{public}s CFStringCreateWithCString failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v54 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v54, type))
      {
        *buf = 136446210;
        v67 = "nw_ws_write_server_response";
        _os_log_impl(&dword_181A37000, v54, v59, "%{public}s CFStringCreateWithCString failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_120:
  if (v53)
  {
    free(v53);
  }

  CFRelease(Response);
  nw_framer_mark_failed_with_error(v5, 14);
LABEL_108:
}

uint64_t ___ZL27nw_ws_write_server_responseP13nw_ws_state_tPU23objcproto12OS_nw_framer8NSObjectPU28objcproto17OS_nw_ws_responseS1__block_invoke(uint64_t a1, const char *a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = CFStringCreateWithCString(v5, a3, 0x8000100u);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v25 = "nw_ws_write_server_response_block_invoke";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v12, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        v25 = "nw_ws_write_server_response_block_invoke";
        v15 = "%{public}s CFStringCreateWithCString failed";
LABEL_27:
        v20 = v13;
        v21 = v14;
        goto LABEL_28;
      }

      if (v22 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        v25 = "nw_ws_write_server_response_block_invoke";
        v15 = "%{public}s CFStringCreateWithCString failed, backtrace limit exceeded";
        goto LABEL_27;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
LABEL_29:

          if (!v12)
          {
            return v10;
          }

          goto LABEL_23;
        }

        *buf = 136446210;
        v25 = "nw_ws_write_server_response_block_invoke";
        v15 = "%{public}s CFStringCreateWithCString failed, no backtrace";
        v20 = v13;
        v21 = v17;
LABEL_28:
        _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
        goto LABEL_29;
      }

      if (v18)
      {
        *buf = 136446466;
        v25 = "nw_ws_write_server_response_block_invoke";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s CFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v12)
    {
      return v10;
    }

LABEL_23:
    free(v12);
    return v10;
  }

  CFHTTPMessageSetHeaderFieldValue(*(a1 + 32), v6, v7);
  CFRelease(v6);
  CFRelease(v8);
  return v10;
}

void nw_ws_copy_headers_into_ws_request(const __CFString *a1, const __CFString *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (CFStringCompare(a1, @"Sec-WebSocket-Version", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"Upgrade", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"Connection", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"Sec-WebSocket-Key", 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_44;
  }

  if (CFStringCompare(a1, @"Sec-WebSocket-Protocol", 1uLL))
  {
    c_string_from_cfstring = nw_utilities_create_c_string_from_cfstring(a1);
    v7 = nw_utilities_create_c_string_from_cfstring(a2);
    v8 = v7;
    if (!c_string_from_cfstring || !v7)
    {
      if (!c_string_from_cfstring)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v9 = v5;
    v10 = v9;
    if (v9)
    {
      v11 = v9[3];
      v12 = xpc_string_create(c_string_from_cfstring);
      xpc_array_append_value(v11, v12);

      v13 = v10[4];
      v14 = xpc_string_create(v8);
      xpc_array_append_value(v13, v14);

LABEL_10:
LABEL_41:
      free(c_string_from_cfstring);
LABEL_42:
      if (v8)
      {
        free(v8);
      }

      goto LABEL_44;
    }

    v32 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_ws_request_add_additional_header";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v33, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v46 = "nw_ws_request_add_additional_header";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v34, type);
        if (backtrace_string)
        {
          if (v38)
          {
            *buf = 136446466;
            v46 = "nw_ws_request_add_additional_header";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_61;
        }

        if (v38)
        {
          *buf = 136446210;
          v46 = "nw_ws_request_add_additional_header";
          _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v34 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v46 = "nw_ws_request_add_additional_header";
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_61:
    if (v33)
    {
      free(v33);
    }

    goto LABEL_10;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @",");
  v16 = 0;
  while (v16 < CFArrayGetCount(ArrayBySeparatingStrings))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v16);
    v18 = nw_utilities_create_c_string_from_cfstring(ValueAtIndex);
    if (v18)
    {
      v19 = v5;
      if (v5)
      {
        v20 = v5[2];
        v21 = xpc_string_create(v18);
        xpc_array_append_value(v20, v21);

        goto LABEL_16;
      }

      v23 = __nwlog_obj();
      *buf = 136446210;
      v46 = "nw_ws_request_add_subprotocol";
      v24 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (__nwlog_fault(v24, &type, &v43))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          log = v24;
          v25 = __nwlog_obj();
          v26 = type;
          v27 = v25;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v46 = "nw_ws_request_add_subprotocol";
            _os_log_impl(&dword_181A37000, v27, v26, "%{public}s called with null request", buf, 0xCu);
          }
        }

        else
        {
          if (v43 == 1)
          {
            v28 = __nw_create_backtrace_string();
            loga = __nwlog_obj();
            v40 = type;
            v29 = os_log_type_enabled(loga, type);
            if (v28)
            {
              if (v29)
              {
                *buf = 136446466;
                v46 = "nw_ws_request_add_subprotocol";
                v47 = 2082;
                v48 = v28;
                _os_log_impl(&dword_181A37000, loga, v40, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v28);
            }

            else
            {
              if (v29)
              {
                *buf = 136446210;
                v46 = "nw_ws_request_add_subprotocol";
                _os_log_impl(&dword_181A37000, loga, v40, "%{public}s called with null request, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_36;
          }

          log = v24;
          v30 = __nwlog_obj();
          v31 = type;
          v27 = v30;
          if (os_log_type_enabled(v30, type))
          {
            *buf = 136446210;
            v46 = "nw_ws_request_add_subprotocol";
            _os_log_impl(&dword_181A37000, v27, v31, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
          }
        }

        v24 = log;
      }

LABEL_36:
      if (v24)
      {
        free(v24);
      }

LABEL_16:

      free(v18);
      ++v16;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v46 = "nw_ws_copy_headers_into_ws_request";
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s failed to add subprotocol to websocket request", buf, 0xCu);
      }

      ++v16;
    }
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_44:
}

uint64_t nw_ws_validate_server_response_with_protocol_options(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x16812000000;
      v29 = __Block_byref_object_copy__47748;
      v30 = __Block_byref_object_dispose__47749;
      v31 = "!0!2/\x130";
      v32 = 0;
      v34 = 0;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      memset(v52, 0, sizeof(v52));
      v33 = a2;
      v35 = a1;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __nw_ws_validate_server_response_with_protocol_options_block_invoke;
      v25[3] = &unk_1E6A3A858;
      v25[4] = buf;
      nw_protocol_options_access_handle(v7, v25);
      v9 = nw_ws_validate_server_response(*&buf[8] + 48);
      v10 = *&buf[8];
      if (a4)
      {
        *a4 = *(*&buf[8] + 260);
      }

      nw_ws_options_set_permessage_deflate(v8, (*(v10 + 273) & 0x40) != 0);
      nw_ws_options_set_permessage_deflate_client_context_takeover(v8, HIBYTE(*(*&buf[8] + 273)) & 1);
      nw_ws_options_set_permessage_deflate_server_context_takeover(v8, (*(*&buf[8] + 273) & 0x80) != 0);
      nw_ws_options_set_permessage_deflate_client_max_window_bits(v8, *(*&buf[8] + 269));
      nw_ws_options_set_permessage_deflate_server_max_window_bits(v8, *(*&buf[8] + 268));
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v13, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null options", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v26 != 1)
      {
        v14 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22)
      {
        *buf = 136446466;
        *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v13, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null response", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v26 != 1)
      {
        v14 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
          _os_log_impl(&dword_181A37000, v14, v23, "%{public}s called with null response, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null response, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v20)
      {
        *buf = 136446466;
        *&buf[4] = "nw_ws_validate_server_response_with_protocol_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v13)
  {
    free(v13);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

void sub_1827C8D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  nw_ws_state_t::~nw_ws_state_t((v12 + 48));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__47748(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 88) = v3;
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  *(a1 + 128) = v5;
  *(a1 + 144) = v6;
  v8 = *(a2 + 192);
  v9 = *(a2 + 208);
  v10 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v9;
  *(a1 + 224) = v10;
  *(a1 + 192) = v8;
  v11 = *(a2 + 244);
  *(a2 + 244) = 0;
  *(a1 + 244) = v11;
  v12 = *(a2 + 252);
  v13 = *(a2 + 284);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 284) = v13;
  *(a1 + 252) = v12;
  result = *(a2 + 300);
  v15 = *(a2 + 316);
  v16 = *(a2 + 332);
  *(a1 + 343) = *(a2 + 343);
  *(a1 + 316) = v15;
  *(a1 + 332) = v16;
  *(a1 + 300) = result;
  return result;
}

void __Block_byref_object_dispose__47749(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t __nw_ws_validate_server_response_with_protocol_options_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 144) = *(a2 + 32);
  v2 = (*(*(a1 + 32) + 8) + 273);
  *v2 = *v2 & 0xFFFE | ((*(a2 + 70) & 4) != 0);
  v3 = (*(*(a1 + 32) + 8) + 273);
  *v3 &= ~4u;
  v4 = (*(*(a1 + 32) + 8) + 273);
  *v4 = *v4 & 0xFFBF | (8 * *(a2 + 70)) & 0x40;
  v5 = (*(*(a1 + 32) + 8) + 273);
  *v5 = *v5 & 0xFF7F | (8 * *(a2 + 70)) & 0x80;
  v6 = (*(*(a1 + 32) + 8) + 273);
  *v6 = *v6 & 0xFEFF | (((*(a2 + 70) & 0x20) != 0) << 8);
  *(*(*(a1 + 32) + 8) + 268) = *(a2 + 68);
  *(*(*(a1 + 32) + 8) + 269) = *(a2 + 69);
  v7 = *(a2 + 60);
  *(*(*(a1 + 32) + 8) + 200) = *(a2 + 64);
  *(*(*(a1 + 32) + 8) + 192) = v7;
  objc_storeStrong((*(*(a1 + 32) + 8) + 64), *a2);
  return 1;
}

uint64_t nw_ws_validate_server_response(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4 = CFHTTPMessageCopyVersion(v2);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_ws_validate_server_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 227;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response didn't contain http version", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v5 = v4;
  if (CFStringCompare(v4, *MEMORY[0x1E695ADB0], 1uLL) == kCFCompareEqualTo)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_ws_validate_server_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 227;
      *&buf[22] = 2112;
      v76 = v5;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response has invalid http version %@", buf, 0x20u);
    }

    CFRelease(v5);
LABEL_19:
    result = 0;
    v18 = 1;
LABEL_20:
    *(a1 + 212) = v18;
    return result;
  }

  v6 = CFStringCompare(v5, *MEMORY[0x1E695ADB8], 1uLL);
  CFRelease(v5);
  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v2);
  v8 = 200;
  if (v6 == kCFCompareEqualTo)
  {
    v8 = 101;
  }

  if (ResponseStatusCode != v8)
  {
    v19 = nw_ws_response_create(nw_ws_response_status_reject, 0);
    v20 = *(a1 + 48);
    *(a1 + 48) = v19;

    result = 0;
    *(a1 + 212) = 0;
    return result;
  }

  v9 = ResponseStatusCode;
  v10 = nw_ws_response_create(nw_ws_response_status_accept, 0);
  v11 = *(a1 + 48);
  *(a1 + 48) = v10;

  if (gLogDatapath)
  {
    v65 = __nwlog_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_ws_validate_server_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 227;
      *&buf[22] = 2048;
      v76 = v9;
      _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Got %ld response", buf, 0x20u);
    }
  }

  if (v6 == kCFCompareEqualTo)
  {
    v21 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Upgrade");
    v22 = v21;
    if (!v21 || (v23 = CFStringCompare(v21, @"WebSocket", 1uLL) == kCFCompareEqualTo, CFRelease(v22), !v23))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_ws_validate_server_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 227;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response doesn't match expected value", buf, 0x16u);
      }

      result = 0;
      v18 = 3;
      goto LABEL_20;
    }

    v40 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Connection");
    v41 = v40;
    if (!v40 || (v42 = CFStringCompare(v40, @"Upgrade", 1uLL) == kCFCompareEqualTo, CFRelease(v41), !v42))
    {
      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_ws_validate_server_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 227;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response doesn't match expected value", buf, 0x16u);
      }

      result = 0;
      v18 = 2;
      goto LABEL_20;
    }

    if (v3)
    {
      v58 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Sec-WebSocket-Accept");
      if (!v58)
      {
        v63 = __nwlog_obj();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "nw_ws_validate_server_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 227;
          _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Sec-WebSocket-Accept has no value!", buf, 0x16u);
        }

        goto LABEL_135;
      }

      v59 = nw_ws_copy_response_for_challenge(v3);
      v60 = v59;
      if (!v59)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "nw_ws_validate_server_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 227;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, "%{public}s %{public}s nw_ws_copy_response_for_challenge", buf, 0x16u);
        }

        CFRelease(v58);
        goto LABEL_135;
      }

      if (CFStringCompare(v59, v58, 1uLL))
      {
        v61 = __nwlog_obj();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "nw_ws_validate_server_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 227;
          _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response doesn't match expected value", buf, 0x16u);
        }

        CFRelease(v60);
        CFRelease(v58);
LABEL_135:
        result = 0;
        v18 = 5;
        goto LABEL_20;
      }

      CFRelease(v60);
      CFRelease(v58);
    }
  }

  v12 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Sec-WebSocket-Protocol");
  v13 = v12;
  if (!v12)
  {
LABEL_29:
    v26 = CFHTTPMessageCopyHeaderFieldValue(v2, @"Sec-WebSocket-Extensions");
    if (v26)
    {
      theArray = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v26, @",");
      CFRelease(v26);
      v27 = 0;
      v66 = 1;
LABEL_31:
      while (v27 < CFArrayGetCount(theArray))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v27);
        v29 = nw_ws_copy_extension_decl_as_array(ValueAtIndex);
        v30 = v29;
        if (!v29)
        {
          v45 = 0;
LABEL_85:
          v46 = __nwlog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_ws_validate_server_response";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 227;
            *&buf[22] = 2112;
            v76 = ValueAtIndex;
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response contains an extension that was not negotiated (%@", buf, 0x20u);
          }

          if (v30)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        if (CFArrayGetCount(v29) < 1 || (v31 = CFArrayGetValueAtIndex(v30, 0), CFStringCompare(v31, @"permessage-deflate", 1uLL)))
        {
          v45 = v30;
          goto LABEL_85;
        }

        if ((*(a1 + 225) & 0x40) == 0)
        {
          v47 = __nwlog_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_ws_validate_server_response";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 227;
            v48 = "%{public}s %{public}s server response contains a permessage-deflate extension that was not negotiated";
            goto LABEL_93;
          }

LABEL_94:

          v45 = v30;
LABEL_95:
          CFRelease(v45);
LABEL_96:
          v66 = 0;
          break;
        }

        if (v27 == 1)
        {
          v47 = __nwlog_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_ws_validate_server_response";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 227;
            v48 = "%{public}s %{public}s server response contains multiple permessage-deflate extensions";
LABEL_93:
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x16u);
          }

          goto LABEL_94;
        }

        v32 = 0;
        for (i = 1; ; ++i)
        {
          while (1)
          {
            while (1)
            {
              if (i >= CFArrayGetCount(v30))
              {
                CFRelease(v30);
                ++v27;
                goto LABEL_31;
              }

              v34 = CFArrayGetValueAtIndex(v30, i);
              *v70 = 0;
              if (CFStringCompare(v34, @"server_no_context_takeover", 1uLL))
              {
                break;
              }

              if (v32)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v35 = gLogObj;
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                *buf = 136446466;
                *&buf[4] = "nw_ws_validate_server_response";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 227;
                v36 = v35;
                v37 = "%{public}s %{public}s Duplicate use of parameter server_no_context_takeover";
                v38 = 22;
                goto LABEL_69;
              }

              v32 |= 1u;
              *(a1 + 225) &= ~0x80u;
              ++i;
            }

            if (CFStringCompare(v34, @"client_no_context_takeover", 1uLL) == kCFCompareEqualTo)
            {
              break;
            }

            if (nw_ws_get_extension_parameter(v34, @"server_max_window_bits", v70))
            {
              if ((v32 & 4) != 0)
              {
                v35 = __nwlog_obj();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

LABEL_59:
                *buf = 136446466;
                *&buf[4] = "nw_ws_validate_server_response";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 227;
                v36 = v35;
                v37 = "%{public}s %{public}s Duplicate use of parameter server_max_window_bits";
                v38 = 22;
                goto LABEL_69;
              }

              if ((*v70 & 0xFFFFFFFFFFFFFFF8) != 8)
              {
                v35 = __nwlog_obj();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                *buf = 136446722;
                *&buf[4] = "nw_ws_validate_server_response";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 227;
                *&buf[22] = 2048;
                v76 = *v70;
                v36 = v35;
                v37 = "%{public}s %{public}s Invalid value for server_max_window_bits (%llu)";
LABEL_68:
                v38 = 32;
                goto LABEL_69;
              }

              v32 |= 4u;
              *(a1 + 220) = v70[0];
              ++i;
            }

            else
            {
              if (!nw_ws_get_extension_parameter(v34, @"client_max_window_bits", v70))
              {
                v35 = __nwlog_obj();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                *buf = 136446722;
                *&buf[4] = "nw_ws_validate_server_response";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 227;
                *&buf[22] = 2112;
                v76 = v34;
                v36 = v35;
                v37 = "%{public}s %{public}s Invalid parameter in server permessage-deflate response (%@)";
                goto LABEL_68;
              }

              if ((v32 & 8) != 0)
              {
                v35 = __nwlog_obj();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                goto LABEL_59;
              }

              if ((*v70 & 0xFFFFFFFFFFFFFFF8) != 8)
              {
                v35 = __nwlog_obj();
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                *buf = 136446722;
                *&buf[4] = "nw_ws_validate_server_response";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 227;
                *&buf[22] = 2048;
                v76 = *v70;
                v36 = v35;
                v37 = "%{public}s %{public}s Invalid value for client_max_window_bits (%llu)";
                goto LABEL_68;
              }

              v32 |= 8u;
              *(a1 + 221) = v70[0];
              ++i;
            }
          }

          if ((v32 & 2) != 0)
          {
            break;
          }

          v32 |= 2u;
          *(a1 + 225) &= ~0x100u;
        }

        v35 = __nwlog_obj();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        *buf = 136446466;
        *&buf[4] = "nw_ws_validate_server_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 227;
        v36 = v35;
        v37 = "%{public}s %{public}s Duplicate use of parameter client_no_context_takeover";
        v38 = 22;
LABEL_69:
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, v37, buf, v38);
LABEL_70:

        CFRelease(v30);
        v66 = 0;
        ++v27;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if ((v66 & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if ((*(a1 + 225) & 0x40) != 0)
    {
      v39 = __nwlog_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ws_validate_server_response";
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s Not using per-message-deflate compression because server response did not include it in negotiated extensions", buf, 0xCu);
      }

      *(a1 + 225) &= ~0x40u;
    }

    v49 = CFHTTPMessageCopyAllHeaderFields(v2);
    v50 = v49;
    if (v49)
    {
      CFDictionaryApplyFunction(v49, nw_ws_copy_headers_into_ws_response, *(a1 + 48));
      CFRelease(v50);
      return 1;
    }

    v51 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ws_validate_server_response";
    v52 = _os_log_send_and_compose_impl();

    v70[0] = 16;
    v68 = 0;
    if (!__nwlog_fault(v52, v70, &v68))
    {
      goto LABEL_126;
    }

    if (v70[0] == 17)
    {
      v53 = __nwlog_obj();
      v54 = v70[0];
      if (os_log_type_enabled(v53, v70[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ws_validate_server_response";
        _os_log_impl(&dword_181A37000, v53, v54, "%{public}s CFHTTPMessageCopyAllHeaderFields failed", buf, 0xCu);
      }
    }

    else if (v68 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v56 = v70[0];
      v57 = os_log_type_enabled(v53, v70[0]);
      if (backtrace_string)
      {
        if (v57)
        {
          *buf = 136446466;
          *&buf[4] = "nw_ws_validate_server_response";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v53, v56, "%{public}s CFHTTPMessageCopyAllHeaderFields failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_126;
      }

      if (v57)
      {
        *buf = 136446210;
        *&buf[4] = "nw_ws_validate_server_response";
        _os_log_impl(&dword_181A37000, v53, v56, "%{public}s CFHTTPMessageCopyAllHeaderFields failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v53 = __nwlog_obj();
      v62 = v70[0];
      if (os_log_type_enabled(v53, v70[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ws_validate_server_response";
        _os_log_impl(&dword_181A37000, v53, v62, "%{public}s CFHTTPMessageCopyAllHeaderFields failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_126:
    if (v52)
    {
      free(v52);
    }

    return 0;
  }

  if (CFStringFind(v12, @",", 0).location != -1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_ws_validate_server_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 227;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response contains multiple Sec-WebSocket-Protocol values", buf, 0x16u);
    }

    CFRelease(v13);
LABEL_102:
    result = 0;
    v18 = 4;
    goto LABEL_20;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v76) = 0;
  v25 = *(a1 + 16);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __nw_ws_validate_server_response_block_invoke;
  applier[3] = &unk_1E6A38718;
  applier[4] = buf;
  applier[5] = v13;
  xpc_array_apply(v25, applier);
  if (*(*&buf[8] + 24))
  {
    CFRelease(v13);
    _Block_object_dispose(buf, 8);
    goto LABEL_29;
  }

  v44 = __nwlog_obj();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *v70 = 136446722;
    *&v70[4] = "nw_ws_validate_server_response";
    v71 = 2082;
    v72 = a1 + 227;
    v73 = 2112;
    v74 = v13;
    _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s server response contains a Sec-WebSocket-Protocol value that was not advertised (%@)", v70, 0x20u);
  }

  CFRelease(v13);
  *(a1 + 212) = 4;
  _Block_object_dispose(buf, 8);
  return 0;
}