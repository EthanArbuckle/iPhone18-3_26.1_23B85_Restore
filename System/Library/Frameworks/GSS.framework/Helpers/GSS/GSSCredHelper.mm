@interface GSSCredHelper
+ (void)do_Acquire:(id)a3 request:(id)a4 reply:(id)a5;
+ (void)do_Refresh:(id)a3 request:(id)a4 reply:(id)a5;
@end

@implementation GSSCredHelper

+ (void)do_Acquire:(id)a3 request:(id)a4 reply:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v87 = 0;
  objc_storeStrong(&v87, a4);
  xdict = 0;
  objc_storeStrong(&xdict, a5);
  oslog = sub_100018AD4();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v30 = [location[0] bundleIdentifier];
    sub_100003F54(v111, v30);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "do_Acquire %@", v111, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  inited = 0;
  cache = 0;
  realm = 0;
  opt = 0;
  v110 = 0;
  principal = 0;
  context = 0;
  v77 = 0;
  cred_endtime = 0;
  krb5_set_home_dir_access();
  inited = krb5_init_context(&context);
  if (inited)
  {
    v75 = sub_100018AD4();
    v74 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE8(v109, inited);
      _os_log_error_impl(&_mh_execute_header, v75, v74, "Failed to initialize context: %d", v109, 8u);
    }

    objc_storeStrong(&v75, 0);
    v107 = @"status";
    v29 = [NSNumber numberWithInt:inited];
    v108 = v29;
    v73 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];

    v72 = sub_100018AD4();
    v71 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v106, v73);
      _os_log_debug_impl(&_mh_execute_header, v72, v71, "do_Acquire results: %@", v106, 0xCu);
    }

    objc_storeStrong(&v72, 0);
    value = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(xdict, "result", value);
    v69 = 1;
    objc_storeStrong(&value, 0);
    objc_storeStrong(&v73, 0);
  }

  else
  {
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = xpc_dictionary_get_value(v87, "attributes");
    v90 = _CFXPCCreateCFObjectFromXPCObject();
    v28 = v90;
    v5 = v90;
    v64 = v28;
    if (v64)
    {
      v6 = [v64 mutableCopy];
      v7 = v68;
      v68 = v6;

      [v68 removeObjectForKey:@"kHEIMAttrData"];
      v61 = sub_100018AD4();
      v60 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        sub_100003F54(v104, v68);
        _os_log_debug_impl(&_mh_execute_header, v61, v60, "attributes for acquire: %@", v104, 0xCu);
      }

      objc_storeStrong(&v61, 0);
      v26 = [v64 objectForKeyedSubscript:@"kHEIMAttrParentCredential"];
      v91 = 0;
      objc_storeStrong(&v91, v26);
      v27 = v91;
      objc_storeStrong(&v91, 0);

      uuid = v27;
      if (v27)
      {
        v56 = CFUUIDGetUUIDBytes(uuid);
        v110 = v56;
        v55 = sub_100018AD4();
        v54 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v23 = v55;
          v24 = v54;
          v89 = CFUUIDCreateString(0, uuid);
          v22 = v89;
          v8 = v89;
          v25 = v22;
          v53 = v25;
          sub_100003F54(v102, v53);
          _os_log_debug_impl(&_mh_execute_header, v23, v24, "using cache: %@", v102, 0xCu);

          objc_storeStrong(&v53, 0);
        }

        objc_storeStrong(&v55, 0);
        CFRelease(uuid);
        v9 = [v64 objectForKeyedSubscript:@"kHEIMAttrData"];
        v10 = v67;
        v67 = v9;

        if (v67)
        {
          v11 = [NSString alloc];
          v12 = [v11 initWithData:v67 encoding:4];
          v13 = v66;
          v66 = v12;

          inited = krb5_cc_resolve_by_uuid();
          if (inited)
          {
            v50 = sub_100018AD4();
            v49 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v14 = [location[0] session];
              sub_1000173F8(v100, v14, inited);
              _os_log_error_impl(&_mh_execute_header, v50, v49, "unable to find cache %u, %d", v100, 0xEu);
            }

            objc_storeStrong(&v50, 0);
          }

          else
          {
            inited = krb5_cc_get_principal(context, cache, &principal);
            if (inited)
            {
              v48 = sub_100018AD4();
              v47 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v15 = [location[0] session];
                sub_1000173F8(v99, v15, inited);
                _os_log_error_impl(&_mh_execute_header, v48, v47, "unable to retrieve principal %u, %d", v99, 0xEu);
              }

              objc_storeStrong(&v48, 0);
            }

            else
            {
              inited = krb5_get_init_creds_opt_alloc(context, &opt);
              if (!inited)
              {
                realm = krb5_principal_get_realm();
                krb5_get_init_creds_opt_set_default_flags();
                krb5_get_init_creds_opt_set_forwardable(opt, 1);
                krb5_get_init_creds_opt_set_proxiable(opt, 1);
                krb5_get_init_creds_opt_set_canonicalize(context, opt);
                krb5_get_init_creds_opt_set_win2k();
                inited = krb5_init_creds_init();
                if (inited)
                {
                  v46 = sub_100018AD4();
                  v45 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v16 = [location[0] session];
                    sub_1000173F8(v98, v16, inited);
                    _os_log_error_impl(&_mh_execute_header, v46, v45, "unable to init cred context %u, %d", v98, 0xEu);
                  }

                  objc_storeStrong(&v46, 0);
                }

                else
                {
                  v21 = v66;
                  v17 = v66;
                  [v21 UTF8String];
                  inited = krb5_init_creds_set_password();
                  objc_storeStrong(&v66, 0);
                  if (inited)
                  {
                    v44 = sub_100018AD4();
                    v43 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      v18 = [location[0] session];
                      sub_1000173F8(v97, v18, inited);
                      _os_log_error_impl(&_mh_execute_header, v44, v43, "unable to set password %u, %d", v97, 0xEu);
                    }

                    objc_storeStrong(&v44, 0);
                  }

                  else
                  {
                    inited = krb5_init_creds_get();
                    if (inited)
                    {
                      error_message = krb5_get_error_message(context, inited);
                      v41 = sub_100018AD4();
                      v40 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                      {
                        sub_100012F0C(v96, error_message);
                        _os_log_error_impl(&_mh_execute_header, v41, v40, "Failed to acquire credentials for cache: %s", v96, 0xCu);
                      }

                      objc_storeStrong(&v41, 0);
                      krb5_free_error_message(context, error_message);
                    }

                    else
                    {
                      inited = krb5_init_creds_store();
                      if (!inited)
                      {
                        inited = krb5_init_creds_store_config();
                      }

                      if (inited)
                      {
                        v39 = krb5_get_error_message(context, inited);
                        v38 = sub_100018AD4();
                        v37 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                        {
                          sub_100011EA8(v95, [location[0] session], v39);
                          _os_log_error_impl(&_mh_execute_header, v38, v37, "Failed to store credentials for cache %u: %s", v95, 0x12u);
                        }

                        objc_storeStrong(&v38, 0);
                        krb5_free_error_message(context, v39);
                      }

                      else
                      {
                        cred_endtime = _krb5_init_creds_get_cred_endtime();
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v52 = sub_100018AD4();
          v51 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_10000DDE8(v101, [location[0] session]);
            _os_log_error_impl(&_mh_execute_header, v52, v51, "unable to acquire credential without password %u", v101, 8u);
          }

          objc_storeStrong(&v52, 0);
          inited = -1765328188;
        }
      }

      else
      {
        v58 = sub_100018AD4();
        v57 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_10000DDE8(v103, [location[0] session]);
          _os_log_error_impl(&_mh_execute_header, v58, v57, "unable to acquire credential without cache uuid %u", v103, 8u);
        }

        objc_storeStrong(&v58, 0);
        inited = -1765328188;
      }
    }

    else
    {
      v63 = sub_100018AD4();
      v62 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10000DDE8(v105, [location[0] session]);
        _os_log_error_impl(&_mh_execute_header, v63, v62, "unable to acquire credential without attributes %u", v105, 8u);
      }

      objc_storeStrong(&v63, 0);
      inited = -1765328188;
    }

    if (v77)
    {
      krb5_init_creds_free();
      v77 = 0;
    }

    if (opt)
    {
      krb5_get_init_creds_opt_free(context, opt);
      opt = 0;
    }

    v93[0] = @"status";
    v20 = [NSNumber numberWithInt:inited];
    v94[0] = v20;
    v93[1] = @"expire";
    v19 = [NSNumber numberWithLong:cred_endtime];
    v94[1] = v19;
    v36 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];

    v35 = sub_100018AD4();
    v34 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v92, v36);
      _os_log_debug_impl(&_mh_execute_header, v35, v34, "do_Acquire results: %@", v92, 0xCu);
    }

    objc_storeStrong(&v35, 0);
    v33 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(xdict, "result", v33);
    krb5_cc_close(context, cache);
    krb5_free_principal(context, principal);
    krb5_free_context(context);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v68, 0);
    v69 = 0;
  }

  objc_storeStrong(&xdict, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(location, 0);
}

+ (void)do_Refresh:(id)a3 request:(id)a4 reply:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v130 = 0;
  objc_storeStrong(&v130, a4);
  xdict = 0;
  objc_storeStrong(&xdict, a5);
  oslog = sub_100018AD4();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v44 = [location[0] bundleIdentifier];
    sub_100003F54(v159, v44);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "do_Refresh %@", v159, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  inited = 0;
  memset(__b, 0, sizeof(__b));
  v124 = 0;
  memset(creds, 0, sizeof(creds));
  v122 = 0;
  realm = 0;
  v158 = 0;
  cache = 0;
  id = 0;
  context = 0;
  opt = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  krb5_set_home_dir_access();
  inited = krb5_init_context(&context);
  if (inited)
  {
    v112 = sub_100018AD4();
    v111 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE8(v157, inited);
      _os_log_error_impl(&_mh_execute_header, v112, v111, "Failed to initialize context: %d", v157, 8u);
    }

    objc_storeStrong(&v112, 0);
    v155 = @"status";
    v43 = [NSNumber numberWithInt:inited];
    v156 = v43;
    v110 = [NSDictionary dictionaryWithObjects:&v156 forKeys:&v155 count:1];

    v109 = sub_100018AD4();
    v108 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v154, v110);
      _os_log_debug_impl(&_mh_execute_header, v109, v108, "do_Refresh results: %@", v154, 0xCu);
    }

    objc_storeStrong(&v109, 0);
    value = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(xdict, "result", value);
    v106 = 1;
    objc_storeStrong(&value, 0);
    objc_storeStrong(&v110, 0);
    goto LABEL_109;
  }

  memset(__b, 0, sizeof(__b));
  v105 = xpc_dictionary_get_value(v130, "attributes");
  v133 = _CFXPCCreateCFObjectFromXPCObject();
  v42 = v133;
  v5 = v133;
  v104 = v42;
  if (v104)
  {
    v6 = [v104 mutableCopy];
    v7 = v114;
    v114 = v6;

    [v114 removeObjectForKey:@"kHEIMAttrData"];
    v101 = sub_100018AD4();
    v100 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v152, v114);
      _os_log_debug_impl(&_mh_execute_header, v101, v100, "attributes for refresh: %@", v152, 0xCu);
    }

    objc_storeStrong(&v101, 0);
    v40 = [v104 objectForKeyedSubscript:@"kHEIMAttrParentCredential"];
    v134 = 0;
    objc_storeStrong(&v134, v40);
    v41 = v134;
    objc_storeStrong(&v134, 0);

    uuid = v41;
    if (v41)
    {
      v96 = CFUUIDGetUUIDBytes(uuid);
      v158 = v96;
      v95 = sub_100018AD4();
      v94 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v37 = v95;
        v38 = v94;
        v132 = CFUUIDCreateString(0, uuid);
        v36 = v132;
        v8 = v132;
        v39 = v36;
        v93 = v39;
        sub_100003F54(v150, v93);
        _os_log_debug_impl(&_mh_execute_header, v37, v38, "using cache: %@", v150, 0xCu);

        objc_storeStrong(&v93, 0);
      }

      objc_storeStrong(&v95, 0);
      CFRelease(uuid);
      v9 = [v104 objectForKeyedSubscript:@"kHEIMAttrClientName"];
      v10 = v116;
      v116 = v9;

      if (v116)
      {
        v90 = sub_100018AD4();
        v89 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_100003F54(v148, v116);
          _os_log_debug_impl(&_mh_execute_header, v90, v89, "using clientName: %@", v148, 0xCu);
        }

        objc_storeStrong(&v90, 0);
        v35 = context;
        v34 = v116;
        v11 = v116;
        inited = krb5_parse_name(v35, [v34 UTF8String], __b);
        if (!inited)
        {
          v12 = [v104 objectForKeyedSubscript:@"kHEIMAttrServerName"];
          v13 = v115;
          v115 = v12;

          if (v115)
          {
            v85 = sub_100018AD4();
            v84 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              sub_100003F54(v147, v115);
              _os_log_debug_impl(&_mh_execute_header, v85, v84, "using serverName: %@", v147, 0xCu);
            }

            objc_storeStrong(&v85, 0);
            v31 = context;
            v30 = v115;
            v14 = v115;
            inited = krb5_parse_name(v31, [v30 UTF8String], &__b[8]);
            if (inited)
            {
              v83 = sub_100018AD4();
              v82 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                sub_100003F54(v146, v115);
                _os_log_error_impl(&_mh_execute_header, v83, v82, "Failed to copy service principal: %@", v146, 0xCu);
              }

              objc_storeStrong(&v83, 0);
              goto LABEL_98;
            }
          }

          else
          {
            realm = krb5_principal_get_realm();
            krb5_free_principal(context, *&__b[8]);
            inited = krb5_make_principal();
            if (inited)
            {
              v81 = sub_100018AD4();
              v80 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                sub_100012F0C(v145, realm);
                _os_log_error_impl(&_mh_execute_header, v81, v80, "Failed to make TGS principal for realm: %s", v145, 0xCu);
              }

              objc_storeStrong(&v81, 0);
              goto LABEL_98;
            }
          }

          inited = krb5_get_init_creds_opt_alloc(context, &opt);
          if (!inited)
          {
            krb5_get_init_creds_opt_set_default_flags();
            if (opt->flags)
            {
              *&__b[56] = time(0) + *&opt->renew_life;
            }

            if ((opt->flags & 2) != 0)
            {
              *&__b[64] = time(0) + *&opt->proxiable;
            }

            else
            {
              *&__b[64] = time(0) + 604800;
            }

            v122 = 1073742080;
            inited = krb5_cc_resolve_by_uuid();
            if (inited)
            {
              v79 = sub_100018AD4();
              v78 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v28 = v79;
                v29 = v78;
                sub_100001A10(v77);
                _os_log_error_impl(&_mh_execute_header, v28, v29, "Failed to resolve cache using uuid", v77, 2u);
              }

              objc_storeStrong(&v79, 0);
            }

            else
            {
              krb5_free_principal(context, *__b);
              *__b = 0;
              inited = krb5_cc_get_principal(context, cache, __b);
              if (inited)
              {
                v76 = sub_100018AD4();
                v75 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  v26 = v76;
                  v27 = v75;
                  sub_100001A10(v74);
                  _os_log_error_impl(&_mh_execute_header, v26, v27, "Failed to retrieve principal from cache", v74, 2u);
                }

                objc_storeStrong(&v76, 0);
              }

              else if (*__b)
              {
                memset(v70, 0, sizeof(v70));
                krb5_cc_clear_mcred();
                *&v70[8] = *&__b[8];
                *v70 = *__b;
                inited = krb5_cc_retrieve_cred(context, cache, 0, v70, creds);
                if (!inited)
                {
                  v69 = sub_100018AD4();
                  v68 = OS_LOG_TYPE_DEBUG;
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                  {
                    v22 = v69;
                    v23 = v68;
                    sub_100001A10(v67);
                    _os_log_debug_impl(&_mh_execute_header, v22, v23, "found previous ticket", v67, 2u);
                  }

                  objc_storeStrong(&v69, 0);
                  v122 = v122 & 0xFFFFFFFD | (2 * ((creds[136] & 2) != 0));
                  v122 = v122 & 0xFFFFFFF7 | (8 * ((creds[136] & 8) != 0));
                  krb5_free_cred_contents(context, creds);
                }

                krb5_cc_clear_mcred();
                inited = krb5_get_kdc_cred();
                if (inited)
                {
                  v66 = sub_100018AD4();
                  v65 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    sub_100011EFC(v144, v116, inited);
                    _os_log_error_impl(&_mh_execute_header, v66, v65, "Failed to renew credentials for cache: %@, %d", v144, 0x12u);
                  }

                  objc_storeStrong(&v66, 0);
                }

                else
                {
                  v21 = context;
                  v20 = v116;
                  v15 = v116;
                  inited = krb5_cc_new_unique(v21, "XCTEMP", [v20 UTF8String], &id);
                  if (inited)
                  {
                    v64 = sub_100018AD4();
                    v63 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                    {
                      sub_10000DDE8(v143, inited);
                      _os_log_error_impl(&_mh_execute_header, v64, v63, "error in krb5_cc_initialize: %d", v143, 8u);
                    }

                    objc_storeStrong(&v64, 0);
                  }

                  else
                  {
                    inited = krb5_cc_initialize(context, id, *__b);
                    if (inited)
                    {
                      v62 = sub_100018AD4();
                      v61 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        sub_10000DDE8(v142, inited);
                        _os_log_error_impl(&_mh_execute_header, v62, v61, "error in krb5_cc_initialize: %d", v142, 8u);
                      }

                      objc_storeStrong(&v62, 0);
                    }

                    else
                    {
                      inited = krb5_cc_store_cred(context, id, v124);
                      if (inited)
                      {
                        krb5_warn();
                        v60 = sub_100018AD4();
                        v59 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                        {
                          sub_10000DDE8(v141, inited);
                          _os_log_error_impl(&_mh_execute_header, v60, v59, "error in krb5_cc_store_cred: %d", v141, 8u);
                        }

                        objc_storeStrong(&v60, 0);
                      }

                      else
                      {
                        v58 = 0;
                        memset(v57, 0, sizeof(v57));
                        inited = krb5_cc_start_seq_get(context, cache, &v58);
                        if (inited)
                        {
                          v56 = sub_100018AD4();
                          v55 = OS_LOG_TYPE_ERROR;
                          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                          {
                            sub_10000DDE8(v140, inited);
                            _os_log_error_impl(&_mh_execute_header, v56, v55, "error in krb5_cc_start_seq_get: %d", v140, 8u);
                          }

                          objc_storeStrong(&v56, 0);
                        }

                        else
                        {
                          while (1)
                          {
                            inited = krb5_cc_next_cred(context, cache, &v58, v57);
                            if (inited)
                            {
                              break;
                            }

                            if (!krb5_is_config_principal(context, *&v57[8]))
                            {
                              inited = krb5_cc_remove_cred(context, cache, 0, v57);
                              if (inited)
                              {
                                v54 = sub_100018AD4();
                                v53 = OS_LOG_TYPE_ERROR;
                                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                                {
                                  v19 = v54;
                                  sub_10000DDE8(v139, inited);
                                  _os_log_error_impl(&_mh_execute_header, v19, v53, "error in krb5_cc_remove_cred: %d", v139, 8u);
                                }

                                objc_storeStrong(&v54, 0);
                              }
                            }

                            krb5_free_cred_contents(context, v57);
                          }

                          krb5_cc_end_seq_get(context, cache, &v58);
                          inited = krb5_cc_store_cred(context, cache, v124);
                          if (inited)
                          {
                            v52 = sub_100018AD4();
                            v51 = OS_LOG_TYPE_ERROR;
                            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                            {
                              v16 = [location[0] session];
                              sub_1000173F8(v138, v16, inited);
                              _os_log_error_impl(&_mh_execute_header, v52, v51, "unable to save cred in cache: %u, %d", v138, 0xEu);
                            }

                            objc_storeStrong(&v52, 0);
                          }

                          v113 = *&v124->times.endtime;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                inited = -1765328188;
                v73 = sub_100018AD4();
                v72 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  v24 = v73;
                  v25 = v72;
                  sub_100001A10(v71);
                  _os_log_error_impl(&_mh_execute_header, v24, v25, "Principal can not be NULL", v71, 2u);
                }

                objc_storeStrong(&v73, 0);
              }
            }
          }

          goto LABEL_98;
        }

        v88 = sub_100018AD4();
        v87 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v32 = v88;
          v33 = v87;
          sub_100001A10(v86);
          _os_log_error_impl(&_mh_execute_header, v32, v33, "Failed to parse clientname", v86, 2u);
        }

        objc_storeStrong(&v88, 0);
      }

      else
      {
        v92 = sub_100018AD4();
        v91 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          sub_10000DDE8(v149, [location[0] session]);
          _os_log_error_impl(&_mh_execute_header, v92, v91, "unable to acquire credential without principal: %u", v149, 8u);
        }

        objc_storeStrong(&v92, 0);
        inited = -1765328188;
      }
    }

    else
    {
      v98 = sub_100018AD4();
      v97 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        sub_10000DDE8(v151, [location[0] session]);
        _os_log_error_impl(&_mh_execute_header, v98, v97, "unable to acquire credential without cache uuid %u", v151, 8u);
      }

      objc_storeStrong(&v98, 0);
      inited = -1765328188;
    }
  }

  else
  {
    v103 = sub_100018AD4();
    v102 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE8(v153, [location[0] session]);
      _os_log_error_impl(&_mh_execute_header, v103, v102, "unable to acquire credential without attributes: %u", v153, 8u);
    }

    objc_storeStrong(&v103, 0);
    inited = -1765328188;
  }

LABEL_98:
  if (v124)
  {
    krb5_free_creds(context, v124);
  }

  if (opt)
  {
    krb5_get_init_creds_opt_free(context, opt);
  }

  if (cache)
  {
    krb5_cc_close(context, cache);
  }

  if (id)
  {
    krb5_cc_destroy(context, id);
  }

  krb5_free_cred_contents(context, __b);
  krb5_free_context(context);
  v136[0] = @"status";
  v18 = [NSNumber numberWithInt:inited];
  v137[0] = v18;
  v136[1] = @"expire";
  v17 = [NSNumber numberWithLong:v113];
  v137[1] = v17;
  v50 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:2];

  v49 = sub_100018AD4();
  v48 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    sub_100003F54(v135, v50);
    _os_log_debug_impl(&_mh_execute_header, v49, v48, "do_Refresh results: %@", v135, 0xCu);
  }

  objc_storeStrong(&v49, 0);
  v47 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(xdict, "result", v47);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v104, 0);
  objc_storeStrong(&v105, 0);
  v106 = 0;
LABEL_109:
  objc_storeStrong(&v114, 0);
  objc_storeStrong(&v115, 0);
  objc_storeStrong(&v116, 0);
  objc_storeStrong(&xdict, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(location, 0);
}

@end