@interface NWURLSessionTaskConfiguration
- (NWConcrete_nw_http_cookie_storage)HTTPCookieStorage;
- (id)activity;
- (id)connectionStateStorage;
- (id)createRegistrableDomain:(void *)a1;
- (id)initWithConfiguration:(void *)a3 task:(void *)a4 request:;
- (id)sourceApplicationBundleIdentifier;
- (void)URLCredentialStorage;
- (void)configureConnection:(uint64_t)a1;
- (void)configureParameters:(id *)a1;
- (void)configureSecProtocolOptions:(int)a3 QUIC:;
- (void)updateRequest:(uint64_t)a1;
@end

@implementation NWURLSessionTaskConfiguration

- (id)connectionStateStorage
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      v2 = *(v1 + 416);
      v3 = v2;
      if (v2)
      {
        v4 = *(v2 + 9);
        if (!v4)
        {
          v5 = [*(v2 + 12) _alternativeServicesStorage];
          v6 = v5;
          if (v5)
          {
            ns = nw_http_connection_state_storage_create_ns(v5);
            v8 = v3[9];
            v3[9] = ns;
          }

          v4 = v3[9];
        }

        v9 = v4;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
    }

    v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (NWConcrete_nw_http_cookie_storage)HTTPCookieStorage
{
  if (a1)
  {
    v2 = a1;
    cookieStorage = a1[1].cookieStorage;
    if (cookieStorage && BYTE2(cookieStorage[1]._internal) == 1)
    {
      a1 = cookieStorage[28].super.isa;
LABEL_20:
      v1 = vars8;
      goto LABEL_21;
    }

    if (a1[2].super.isa)
    {
      v4 = CFURLRequestCopyHTTPCookieStorage();
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
    v6 = v5;
    if (v4)
    {
      if (v4 != [v5 _cookieStorage])
      {
        v7 = [objc_alloc(MEMORY[0x1E695AC00]) _initWithCFHTTPCookieStorage:v4];
        CFRelease(v4);
        v8 = v7;
        v9 = objc_alloc_init(NWConcrete_nw_http_cookie_storage);
        v10 = v9->cookieStorage;
        v11 = v9;
        v9->cookieStorage = v8;

        goto LABEL_19;
      }

      CFRelease(v4);
    }

    v12 = v2[1].cookieStorage;
    if (v12)
    {
      v13 = v12[26].super.isa;
      v8 = v13;
      if (v13)
      {
        isa = v13[3].super.isa;
        if (!isa)
        {
          v15 = [(objc_class *)v13[6].super.isa HTTPCookieStorage];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
            v18 = objc_alloc_init(NWConcrete_nw_http_cookie_storage);
            v19 = v18->cookieStorage;
            v18->cookieStorage = v17;

            v20 = v8[3].super.isa;
            v8[3].super.isa = v18;
          }

          isa = v8[3].super.isa;
        }

        v11 = isa;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = 0;
LABEL_19:

    a1 = v11;
    goto LABEL_20;
  }

LABEL_21:

  return a1;
}

- (void)URLCredentialStorage
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      if (*(v2 + 27))
      {
        a1 = 0;
LABEL_12:
        v1 = vars8;
        goto LABEL_13;
      }

      v3 = *(v2 + 416);
      v4 = v3;
      if (v3)
      {
        v5 = *(v3 + 7);
        if (!v5)
        {
          v6 = [*(v3 + 12) URLCredentialStorage];
          v7 = v6;
          if (v6)
          {
            v8 = v6;
            v9 = objc_alloc_init(NWConcrete_nw_authentication_credential_storage);
            credentialStorage = v9->credentialStorage;
            v9->credentialStorage = v8;

            v11 = v4[7];
            v4[7] = v9;
          }

          v5 = v4[7];
        }

        v12 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
LABEL_11:

    a1 = v12;
    goto LABEL_12;
  }

LABEL_13:

  return a1;
}

- (id)activity
{
  if (a1)
  {
    v2 = (a1 + 40);
    v1 = *(a1 + 40);
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v4 = *(a1 + 24);
      v3 = [v4 _nw_activity];

      if (!v3)
      {
        v3 = nw_activity_create(12, 2);
        nw_activity_activate(v3);
      }

      objc_storeStrong(v2, v3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)initWithConfiguration:(void *)a3 task:(void *)a4 request:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NWURLSessionTaskConfiguration;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      if ([a1[4] _explicitlySetTimeoutInterval])
      {
        [a1[4] timeoutInterval];
      }

      else
      {
        [a1[2] timeoutIntervalForRequest];
      }

      a1[6] = v12;
    }
  }

  return a1;
}

- (void)updateRequest:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v6 = v4;
    objc_storeStrong((a1 + 32), a2);
    if ([*(a1 + 32) _explicitlySetTimeoutInterval])
    {
      [*(a1 + 32) timeoutInterval];
    }

    else
    {
      [*(a1 + 16) timeoutIntervalForRequest];
    }

    *(a1 + 48) = v5;
    v4 = v6;
  }
}

- (void)configureParameters:(id *)a1
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_125;
  }

  v4 = a1[3];
  v5 = v4;
  if (v4)
  {
    v6 = v4[52];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_184;
    }

    v8 = *(v6 + 20);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  while (1)
  {
    v9 = v8;
    nw_parameters_set_context(v3, v9);

    v10 = a1 + 4;
    v11 = [a1[4] _explicitlySetNetworkServiceType];
    v12 = a1 + 2;
    v13 = 2;
    if (v11)
    {
      v13 = 4;
    }

    v14 = [a1[v13] networkServiceType];
    if (v14 > 0xB)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_182B08FC4[v14];
    }

    nw_parameters_set_traffic_class(v3, v15);
    if ([*v10 _explicitlySetAllowsCellularAccess])
    {
      v16 = a1 + 4;
    }

    else
    {
      v16 = a1 + 2;
    }

    if (([*v16 allowsCellularAccess] & 1) == 0)
    {
      nw_parameters_prohibit_interface_type(v3, nw_interface_type_cellular);
    }

    if ([*v10 _explicitlySetAllowsExpensiveNetworkAccess])
    {
      v17 = a1 + 4;
    }

    else
    {
      v17 = a1 + 2;
    }

    if (([*v17 allowsExpensiveNetworkAccess] & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v3, 1);
    }

    if ([*v10 _explicitlySetAllowsConstrainedNetworkAccess])
    {
      v18 = a1 + 4;
    }

    else
    {
      v18 = a1 + 2;
    }

    if (([*v18 allowsConstrainedNetworkAccess] & 1) == 0)
    {
      nw_parameters_set_prohibit_constrained(v3, 1);
    }

    v19 = *v10;
    if ([v19 _explicitlySetAllowsUCA])
    {
    }

    else
    {
      v20 = [*v12 _explicitlySetAllowsUCA];

      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v21 = [*v10 _explicitlySetAllowsUCA] ? a1 + 4 : a1 + 2;
    nw_parameters_set_allow_ultra_constrained(v3, [*v21 _allowsUCA]);
LABEL_32:
    if ([*v10 _explicitlySetRequiresDNSSECValidation])
    {
      v22 = a1 + 4;
    }

    else
    {
      v22 = a1 + 2;
    }

    if ([*v22 requiresDNSSECValidation])
    {
      nw_parameters_set_requires_dnssec_validation(v3, 1);
    }

    if (([*v12 waitsForConnectivity] & 1) == 0)
    {
      nw_parameters_set_indefinite(v3);
    }

    if (*v10)
    {
      v23 = CFURLRequestGetProxySettings();
      if (v23)
      {
        v24 = v23;
        *objects = _CFXPCCreateXPCObjectFromCFObject();
        v25 = xpc_array_create(objects, 1uLL);
        v26 = v25;
        v5 = v25 ? nw_proxy_configs_create_with_schema_array(v25) : 0;

        if (v5)
        {
          goto LABEL_55;
        }
      }
    }

    v27 = a1[3];
    if (v27)
    {
      v28 = v27[52];
      v29 = v28;
      if (v28)
      {
        v30 = *(v28 + 10);
        if (!v30)
        {
          v31 = [*(v28 + 12) connectionProxyDictionary];
          if (v31)
          {
            *objects = _CFXPCCreateXPCObjectFromCFObject();
            v32 = xpc_array_create(objects, 1uLL);
            v33 = v32;
            if (v32)
            {
              v34 = nw_proxy_configs_create_with_schema_array(v32);
              v35 = v29[10];
              v29[10] = v34;
            }
          }

          v30 = v29[10];
        }

        v5 = v30;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v29 = 0;
      v5 = 0;
    }

    if (v5)
    {
LABEL_55:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__NWURLSessionTaskConfiguration_configureParameters___block_invoke;
      aBlock[3] = &unk_1E6A3CCB8;
      v106 = v3;
      _nw_array_apply(v5, aBlock);
    }

    nw_parameters_set_multipath_service(v3, [a1[2] multipathServiceType]);
    v36 = [(NWURLSessionTaskConfiguration *)a1 sourceApplicationBundleIdentifier];

    if (v36)
    {
      v37 = [(NWURLSessionTaskConfiguration *)a1 sourceApplicationBundleIdentifier];
      v38 = [a1[2] _sourceApplicationAuditTokenData];

      v39 = [v37 UTF8String];
      if (v38)
      {
        nw_parameters_set_effective_bundle_id(v3, v39);
      }

      else
      {
        nw_parameters_set_source_application_by_bundle_id_internal(v3, v39);
      }
    }

    v40 = [*v12 _sourceApplicationSecondaryIdentifier];

    if (v40)
    {
      v41 = [*v12 _sourceApplicationSecondaryIdentifier];
      nw_parameters_set_account_id(v3, [v41 UTF8String]);
    }

    v42 = [*v12 _sourceApplicationAuditTokenData];

    if (!v42)
    {
      goto LABEL_66;
    }

    v7 = [*v12 _sourceApplicationAuditTokenData];
    if ([v7 length] == 32)
    {
      break;
    }

    _os_crash();
    __break(1u);
LABEL_184:
    v8 = 0;
  }

  v43 = [v7 bytes];
  *objects = *v43;
  *&objects[16] = v43[1];
  nw_parameters_set_source_application(v3, objects);

LABEL_66:
  v44 = [*v12 _CTDataConnectionServiceType];
  if (v44)
  {
    v45 = v44;
    v46 = [*v10 boundInterfaceIdentifier];

    if (!v46)
    {
      v47 = xpc_array_create(0, 0);
      xpc_array_set_string(v47, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
      v48 = xpc_array_create(0, 0);
      v49 = [*v12 _CTDataConnectionServiceType];
      v50 = 0;
      if ([v49 hasPrefix:@"kCTDataConnectionServiceType"])
      {
        v50 = [@"kCTDataConnectionServiceType" length];
      }

      xpc_array_set_string(v48, 0xFFFFFFFFFFFFFFFFLL, ([v49 UTF8String] + v50));
      nw_parameters_set_required_netagent_classes(v3, v47, v48);
    }
  }

  if ([*v12 _requiresSecureHTTPSProxyConnection])
  {
    nw_parameters_set_https_proxy_over_tls(v3, 1);
  }

  if ([*v12 _preventsSystemHTTPProxyAuthentication])
  {
    if (v3)
    {
      _nw_parameters_set_prevents_system_http_proxy_authentication(v3, 1);
      goto LABEL_76;
    }

    v72 = __nwlog_obj();
    *objects = 136446210;
    *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
    LODWORD(v100) = 12;
    v98 = objects;
    v73 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v107 = 0;
    if (__nwlog_fault(v73, &type, &v107))
    {
      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v107 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v74 = __nwlog_obj();
          v75 = type;
          v88 = os_log_type_enabled(v74, type);
          if (backtrace_string)
          {
            if (v88)
            {
              *objects = 136446466;
              *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
              *&objects[12] = 2082;
              *&objects[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null parameters, dumping backtrace:%{public}s", objects, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_173;
          }

          if (!v88)
          {
            goto LABEL_172;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
          v76 = "%{public}s called with null parameters, no backtrace";
        }

        else
        {
          v74 = __nwlog_obj();
          v75 = type;
          if (!os_log_type_enabled(v74, type))
          {
            goto LABEL_172;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
          v76 = "%{public}s called with null parameters, backtrace limit exceeded";
        }

LABEL_171:
        _os_log_impl(&dword_181A37000, v74, v75, v76, objects, 0xCu);
        goto LABEL_172;
      }

      v74 = __nwlog_obj();
      v75 = type;
      if (os_log_type_enabled(v74, type))
      {
        *objects = 136446210;
        *&objects[4] = "nw_parameters_set_prevents_system_http_proxy_authentication";
        v76 = "%{public}s called with null parameters";
        goto LABEL_171;
      }

LABEL_172:
    }

LABEL_173:
    if (v73)
    {
      free(v73);
    }
  }

LABEL_76:
  v104 = v5;
  v51 = [*v12 _attributedBundleIdentifier];

  if (v51)
  {
    v52 = [*v12 _attributedBundleIdentifier];
    nw_parameters_set_attributed_bundle_identifier(v3, [v52 UTF8String]);
  }

  nw_parameters_set_skip_stack_trace_capture(v3, 1);
  v53 = [a1[3] countOfBytesClientExpectsToSend];
  v54 = v53 & ~(v53 >> 63);
  v55 = [a1[3] countOfBytesClientExpectsToReceive];
  nw_parameters_set_expected_workload(v3, (v55 & ~(v55 >> 63)) + v54);
  if ([a1[4] attribution] == 1)
  {
    nw_parameters_set_attribution(v3, nw_parameters_attribution_user);
  }

  if ([*v10 allowsPersistentDNS])
  {
    nw_parameters_set_expired_dns_behavior(v3, nw_parameters_expired_dns_behavior_prohibit|nw_parameters_expired_dns_behavior_allow);
  }

  v56 = [*v10 mainDocumentURL];
  v57 = [v56 host];

  v58 = [NWURLSessionTaskConfiguration createRegistrableDomain:v57];
  v59 = *v10;
  v60 = [v59 URL];
  v61 = [v60 host];

  v62 = [NWURLSessionTaskConfiguration createRegistrableDomain:v61];
  v63 = [*v10 _trackerContext];
  v64 = v63;
  if (v63 || ([*v10 mainDocumentURL], v66 = objc_claimAutoreleasedReturnValue(), v67 = -[NSURL _NW_isHTTPish](v66), v66, v67) && ((v63 = v58) != 0 || (v63 = v57) != 0))
  {
    nw_parameters_set_attribution_context(v3, [v63 UTF8String]);
  }

  v65 = [*v10 mainDocumentURL];

  if (v65)
  {
    if (v58 && v62)
    {
      if ([v58 isEqualToString:v62])
      {
LABEL_95:
        v68 = [*v10 mainDocumentURL];
        nw_parameters_set_main_document_cfurl(v3, v68);

        goto LABEL_96;
      }
    }

    else if ([v57 isEqualToString:v61])
    {
      goto LABEL_95;
    }

    nw_parameters_set_is_third_party_web_content(v3, 1);
    goto LABEL_95;
  }

LABEL_96:
  v69 = [*v10 boundInterfaceIdentifier];

  if (v69)
  {
    v70 = [*v10 boundInterfaceIdentifier];
    v71 = nw_interface_create_with_name([v70 UTF8String]);
    nw_parameters_require_interface(v3, v71);
  }

  if ([*v10 _prohibitPrivacyProxy])
  {
    nw_parameters_set_prohibit_privacy_proxy(v3, 1);
  }

  if ([*v10 _privacyProxyFailClosed])
  {
    nw_parameters_set_privacy_proxy_fail_closed(v3, 1);
  }

  if ([*v10 _privacyProxyStrictFailClosed])
  {
    nw_parameters_set_privacy_proxy_strict_fail_closed(v3, 1);
  }

  if ([*v10 _privacyProxyFailClosedForUnreachableHosts])
  {
    nw_parameters_set_privacy_proxy_fail_closed_for_unreachable_hosts(v3, 1);
  }

  if ([*v10 _privacyProxyFailClosedForUnreachableNonMainHosts] && v57 && objc_msgSend(v57, "caseInsensitiveCompare:", v61))
  {
    nw_parameters_set_privacy_proxy_fail_closed_for_unreachable_hosts(v3, 1);
  }

  if ([*v10 _needsNetworkTrackingPrevention])
  {
    nw_parameters_set_is_known_tracker(v3, 1);
  }

  if ([*v10 _useEnhancedPrivacyMode])
  {
    nw_parameters_set_use_enhanced_privacy_mode(v3);
  }

  if ([*v10 _blockTrackers])
  {
    nw_parameters_set_block_trackers(v3, 1);
  }

  if ([*v10 _isWebSearchContent])
  {
    nw_parameters_set_web_search_content(v3, 1);
  }

  if (![*v10 _allowPrivateAccessTokensForThirdParty])
  {
    goto LABEL_121;
  }

  if (v3)
  {
    _nw_parameters_set_allow_private_access_tokens_for_third_party(v3, 1);
    goto LABEL_121;
  }

  v77 = __nwlog_obj();
  *objects = 136446210;
  *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
  LODWORD(v101) = 12;
  v99 = objects;
  v78 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v107 = 0;
  v103 = v78;
  if (!__nwlog_fault(v78, &type, &v107))
  {
LABEL_160:
    v93 = v78;
    if (!v78)
    {
      goto LABEL_121;
    }

    goto LABEL_161;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v79 = __nwlog_obj();
    v80 = type;
    if (os_log_type_enabled(v79, type))
    {
      *objects = 136446210;
      *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
      v81 = "%{public}s called with null parameters";
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  if (v107 != 1)
  {
    v79 = __nwlog_obj();
    v80 = type;
    if (os_log_type_enabled(v79, type))
    {
      *objects = 136446210;
      *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
      v81 = "%{public}s called with null parameters, backtrace limit exceeded";
LABEL_158:
      _os_log_impl(&dword_181A37000, v79, v80, v81, objects, 0xCu);
    }

LABEL_159:

    goto LABEL_160;
  }

  v89 = __nw_create_backtrace_string();
  v90 = __nwlog_obj();
  v91 = type;
  v92 = os_log_type_enabled(v90, type);
  if (v89)
  {
    if (v92)
    {
      *objects = 136446466;
      *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
      *&objects[12] = 2082;
      *&objects[14] = v89;
      _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null parameters, dumping backtrace:%{public}s", objects, 0x16u);
    }

    free(v89);
    v93 = v103;
    if (!v103)
    {
      goto LABEL_121;
    }

LABEL_161:
    free(v93);
    goto LABEL_121;
  }

  if (v92)
  {
    *objects = 136446210;
    *&objects[4] = "nw_parameters_set_allow_private_access_tokens_for_third_party";
    _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null parameters, no backtrace", objects, 0xCu);
  }

  v93 = v103;
  if (v103)
  {
    goto LABEL_161;
  }

LABEL_121:
  if ([*v12 _inPrivateBrowsing])
  {
    if (v3)
    {
      _nw_parameters_set_using_ephemeral_configuration(v3, 1);
      goto LABEL_124;
    }

    v82 = __nwlog_obj();
    *objects = 136446210;
    *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
    v83 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v107 = 0;
    if (__nwlog_fault(v83, &type, &v107))
    {
      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v107 == 1)
        {
          v94 = __nw_create_backtrace_string();
          v84 = __nwlog_obj();
          v102 = type;
          v95 = os_log_type_enabled(v84, type);
          if (v94)
          {
            if (v95)
            {
              *objects = 136446466;
              *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
              *&objects[12] = 2082;
              *&objects[14] = v94;
              _os_log_impl(&dword_181A37000, v84, v102, "%{public}s called with null parameters, dumping backtrace:%{public}s", objects, 0x16u);
            }

            free(v94);
            goto LABEL_167;
          }

          if (!v95)
          {
            goto LABEL_166;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
          v86 = "%{public}s called with null parameters, no backtrace";
          v96 = v84;
          v97 = v102;
        }

        else
        {
          v84 = __nwlog_obj();
          v85 = type;
          if (!os_log_type_enabled(v84, type))
          {
            goto LABEL_166;
          }

          *objects = 136446210;
          *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
          v86 = "%{public}s called with null parameters, backtrace limit exceeded";
LABEL_164:
          v96 = v84;
          v97 = v85;
        }

        _os_log_impl(&dword_181A37000, v96, v97, v86, objects, 0xCu);
        goto LABEL_166;
      }

      v84 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v84, type))
      {
        *objects = 136446210;
        *&objects[4] = "nw_parameters_set_using_ephemeral_configuration";
        v86 = "%{public}s called with null parameters";
        goto LABEL_164;
      }

LABEL_166:
    }

LABEL_167:
    if (v83)
    {
      free(v83);
    }
  }

LABEL_124:

LABEL_125:
}

- (id)sourceApplicationBundleIdentifier
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[3] _sourceApplicationBundleIdentifierForMobileAsset];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [v1[2] _sourceApplicationBundleIdentifier];
    }

    v1 = v4;
  }

  return v1;
}

- (id)createRegistrableDomain:(void *)a1
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v4 = v1;
    v5 = [v4 length];
    if (v5 >= 0x101)
    {
      goto LABEL_25;
    }

    v6 = v5;
    if (!v5)
    {
      v24 = __nwlog_obj();
      os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      *dest = 136446210;
      v31 = "[NWURLSessionTaskConfiguration createIDNAEncodedDomain:]";
      LODWORD(v27) = 12;
      v26 = dest;
      v25 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v25);
      if (result)
      {
        goto LABEL_43;
      }

      free(v25);
    }

    v7 = malloc_type_malloc(2 * v6, 0x3202746FuLL);
    if (v7)
    {
      [v4 getCharacters:v7 range:{0, v6}];
      if (!v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v11 = 0;
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = v7[v11];
        if ((v14 - 65) <= 0x19)
        {
          v14 |= 0x20u;
          v7[v11] = v14;
          v12 = 1;
        }

        v13 &= (v14 - 32) < 0x60;
        ++v11;
      }

      while (v6 != v11);
      if (v13)
      {
        if ((v12 & 1) == 0)
        {
LABEL_24:
          free(v7);
LABEL_25:
          v19 = [v4 copy];

          if (!v19)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        v15 = MEMORY[0x1E696AEC0];
        v16 = v7;
        v17 = v6;
      }

      else
      {
        if (createIDNAEncodedDomain__onceToken != -1)
        {
          dispatch_once(&createIDNAEncodedDomain__onceToken, &__block_literal_global_16489);
        }

        pErrorCode = U_ZERO_ERROR;
        pInfo = xmmword_182B08EA0;
        v18 = uidna_nameToASCII(createIDNAEncodedDomain__idna, v7, v6, dest, 256, &pInfo, &pErrorCode);
        if (pErrorCode > U_ZERO_ERROR || pInfo.errors >= 0x40)
        {
          goto LABEL_24;
        }

        v17 = v18;
        v16 = dest;
        v15 = MEMORY[0x1E696AEC0];
      }

      v19 = [v15 stringWithCharacters:v16 length:{v17, v26, v27}];
      free(v7);

      if (!v19)
      {
        goto LABEL_36;
      }

LABEL_26:
      if ([v19 getCString:dest maxLength:256 encoding:1])
      {
        v20 = strlen(dest);
        if (v20 && *(dest + v20 - 1) == 46)
        {
          *(dest + v20 - 1) = 0;
        }

        TopLevelDomain = _CFHostGetTopLevelDomain();
        v3 = 0;
        if (TopLevelDomain && TopLevelDomain > dest + 1)
        {
          v22 = (TopLevelDomain - 2);
          do
          {
            v23 = v22;
            if (v22 < dest)
            {
              break;
            }

            v22 = (v22 - 1);
          }

          while (*v23 != 46);
          v3 = [MEMORY[0x1E696AEC0] stringWithCString:v23 + 1 encoding:1];
        }

        goto LABEL_37;
      }

LABEL_36:
      v3 = 0;
LABEL_37:

      goto LABEL_38;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    *dest = 136446210;
    v31 = "[NWURLSessionTaskConfiguration createIDNAEncodedDomain:]";
    LODWORD(v27) = 12;
    v9 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v9);
    if (!result)
    {
      free(v9);
      [v4 getCharacters:0 range:{0, v6, dest, v27}];
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_10;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  v3 = 0;
LABEL_38:

  return v3;
}

void __57__NWURLSessionTaskConfiguration_createIDNAEncodedDomain___block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  code[0] = U_ZERO_ERROR;
  createIDNAEncodedDomain__idna = MEMORY[0x1865DF7A0](60, code);
  if (code[0] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v0 = gLogObj;
    os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
    v1 = u_errorName(code[0]);
    code[1] = 136446466;
    v4 = "[NWURLSessionTaskConfiguration createIDNAEncodedDomain:]_block_invoke";
    v5 = 2080;
    v6 = v1;
    v2 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v2))
    {
      __break(1u);
    }

    else
    {
      free(v2);
    }
  }
}

- (void)configureSecProtocolOptions:(int)a3 QUIC:
{
  v5 = a2;
  if (a1)
  {
    options = v5;
    sec_protocol_options_set_min_tls_protocol_version(v5, [*(a1 + 16) TLSMinimumSupportedProtocolVersion]);
    sec_protocol_options_set_max_tls_protocol_version(options, [*(a1 + 16) TLSMaximumSupportedProtocolVersion]);
    if (a3)
    {
      if ([*(a1 + 16) enablesEarlyData])
      {
        LOBYTE(a3) = 1;
      }

      else
      {
        if (enablesEarlyData_onceToken != -1)
        {
          dispatch_once(&enablesEarlyData_onceToken, &__block_literal_global_7);
        }

        LOBYTE(a3) = enablesEarlyData_earlyDataEnabled;
      }
    }

    if ([*(a1 + 16) _allowsTLSSessionTickets] & 1) != 0 || (a3)
    {
      sec_protocol_options_set_tls_tickets_enabled(options, 1);
    }

    if (a3)
    {
      sec_protocol_options_set_tls_early_data_enabled();
    }

    if ([*(a1 + 16) _allowsTLSECH])
    {
      sec_protocol_options_set_enable_encrypted_client_hello(options, 1);
    }

    v6 = [*(a1 + 16) _forceEnablePQTLS];
    v5 = options;
    if (v6)
    {
      sec_protocol_options_set_pqtls_mode();
      v5 = options;
    }
  }
}

char *__49__NWURLSessionTaskConfiguration_enablesEarlyData__block_invoke()
{
  if (isWebKitNetworking_onceToken != -1)
  {
    dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
  }

  if (isWebKitNetworking_result != 1 || !_os_feature_enabled_impl())
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v0 = nw_setting_enable_http_early_data;
  networkd_settings_init();
  if (!sCachedSettings)
  {
LABEL_14:
    v3 = 1;
    goto LABEL_15;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_11;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 1;
  if (!v0)
  {
    goto LABEL_12;
  }

  if (Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (!value)
  {
    goto LABEL_12;
  }

  v5 = value;
  if (object_getClass(value) == MEMORY[0x1E69E9E58])
  {
    v3 = xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_11:
    v3 = 1;
  }

LABEL_12:
  pthread_mutex_unlock(&sSettingsMutex);
LABEL_15:
  enablesEarlyData_earlyDataEnabled = v3;
LABEL_16:
  result = getenv("HTTP_ENABLE_EARLY_DATA");
  if (!result)
  {
    return result;
  }

  v7 = *result;
  if (v7 == 48)
  {
    v8 = result[1];
    if (v8)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v7 == 49 && !result[1])
  {
    v8 = 1;
LABEL_22:
    enablesEarlyData_earlyDataEnabled = v8;
  }

  return result;
}

- (void)configureConnection:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = [(NWURLSessionTaskConfiguration *)a1 activity];
    nw_connection_start_activity(v6, v3);

    v4 = [*(a1 + 24) countOfBytesClientExpectsToSend];
    if (v4 >= 1)
    {
      nw_connection_increment_estimated_bytes(v6, 0, v4);
    }

    v5 = [*(a1 + 24) countOfBytesClientExpectsToReceive];
    if (v5 >= 1)
    {
      nw_connection_increment_estimated_bytes(v6, 1, v5);
    }
  }
}

@end