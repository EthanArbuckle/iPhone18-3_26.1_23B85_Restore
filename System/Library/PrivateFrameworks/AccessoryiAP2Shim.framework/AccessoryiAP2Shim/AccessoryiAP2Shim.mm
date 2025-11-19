void ___xpc_iap2d_handle_incoming_request_block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x23EEFB410]() != MEMORY[0x277D86468])
  {
    if (MEMORY[0x23EEFB410](v3) == MEMORY[0x277D86480])
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v4 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v4 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 136315138;
        *&buf[4] = string;
        _os_log_impl(&dword_23DC47000, v4, OS_LOG_TYPE_INFO, "[#Server] _xpc_iap2d_handle_incoming_request event error: %s\n", buf, 0xCu);
      }

      [*(a1 + 40) processDetachXPCConnection:*(a1 + 32)];
      xpc_connection_cancel(*(a1 + 32));
    }

    goto LABEL_175;
  }

  v5 = xpc_dictionary_get_string(v3, "requestType");
  if (!v5)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v6 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC47000, v6, OS_LOG_TYPE_DEFAULT, "[#Server] RequestType not specified in xpc message!", buf, 2u);
    }

    v5 = "<nil>";
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    ___xpc_iap2d_handle_incoming_request_block_invoke_cold_4();
  }

  if (!strcmp(v5, "OwnsConnectionID"))
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      uint64 = xpc_dictionary_get_uint64(v3, "connectionID");
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v15 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = uint64;
        _os_log_impl(&dword_23DC47000, v15, OS_LOG_TYPE_INFO, "[#Server] OwnsConnectionID: connectionID = %u\n", buf, 8u);
      }

      v26 = +[ACCiAP2ShimServer sharedInstance];
      v24 = [v26 findAccessoryForConnectionID:uint64];

      xpc_dictionary_set_BOOL(reply, "result", v24 != 0);
      xpc_connection_send_message(*(a1 + 32), reply);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v24 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v24 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ___xpc_iap2d_handle_incoming_request_block_invoke_cold_22();
      }
    }

LABEL_173:

LABEL_174:
    goto LABEL_175;
  }

  if (!strcmp(v5, "IAPCheckIn"))
  {
    v16 = xpc_dictionary_create_reply(v3);
    reply = v16;
    if (gLogObjects)
    {
      v17 = gNumLogObjects <= 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (v16)
    {
      if (v18)
      {
        v19 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v19 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23DC47000, v19, OS_LOG_TYPE_INFO, "[#Server] IAPCheckIn\n", buf, 2u);
      }

      xpc_dictionary_set_BOOL(reply, "result", 1);
      xpc_connection_send_message(*(a1 + 32), reply);
    }

    else
    {
      if (v18)
      {
        v28 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v28 = MEMORY[0x277D86220];
        v39 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        ___xpc_iap2d_handle_incoming_request_block_invoke_cold_19();
      }
    }

    goto LABEL_174;
  }

  if (strcmp(v5, "IAPAppRegisterClient"))
  {
    if (strcmp(v5, "IAPAppConnectedAccessories"))
    {
      if (([*(a1 + 40) processXPCMessage:v3 connection:*(a1 + 32)] & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v12 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
          }

          v12 = MEMORY[0x277D86220];
          v40 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          ___xpc_iap2d_handle_incoming_request_block_invoke_cold_6();
        }

        v41 = xpc_dictionary_create_reply(v3);
        if (v41)
        {
          xpc_connection_send_message(*(a1 + 32), v41);
        }

        else
        {
          v54 = logObjectForModule();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            ___xpc_iap2d_handle_incoming_request_block_invoke_cold_7();
          }
        }
      }

      goto LABEL_175;
    }

    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v27 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v27 = MEMORY[0x277D86220];
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23DC47000, v27, OS_LOG_TYPE_INFO, "[#Server] IAPAppConnectedAccessories", buf, 2u);
      }

      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v44 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v44 = MEMORY[0x277D86220];
        v45 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v46 = *(a1 + 40);
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_impl(&dword_23DC47000, v44, OS_LOG_TYPE_INFO, "[#Server] IAPAppConnectedAccessories call [sharediAP2Server(%@) iterateAccessoriesSync:]", buf, 0xCu);
      }

      v47 = *(a1 + 40);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = ___xpc_iap2d_handle_incoming_request_block_invoke_183;
      v71[3] = &unk_278BF89C8;
      v24 = v43;
      v72 = v24;
      [v47 iterateAccessoriesSync:v71];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v48 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v48 = MEMORY[0x277D86220];
        v49 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&dword_23DC47000, v48, OS_LOG_TYPE_INFO, "[#Server] IAPAppConnectedAccessories connectedAccessories=%@", buf, 0xCu);
      }

      if (v24 && [v24 count])
      {
        v70 = 0;
        v50 = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:100 options:0 error:&v70];
        v51 = v70;
        if (v50)
        {
          v52 = [v50 bytes];
          v53 = [v50 length];
        }

        else
        {
          v65 = logObjectForModule();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = [v51 description];
            *buf = 138412290;
            *&buf[4] = v66;
            _os_log_impl(&dword_23DC47000, v65, OS_LOG_TYPE_DEFAULT, "[#Server] ERROR - unable to convert accessories array to plist: %@", buf, 0xCu);
          }

          v53 = 0;
          v52 = 0;
        }

        if (v52)
        {
          xpc_dictionary_set_data(reply, "plistData", v52, v53);
        }

        v24 = 0;
      }

      xpc_connection_send_message(*(a1 + 32), reply);
    }

    else
    {
      v24 = logObjectForModule();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ___xpc_iap2d_handle_incoming_request_block_invoke_cold_11();
      }
    }

    goto LABEL_173;
  }

  v20 = xpc_dictionary_create_reply(v3);
  if (v20)
  {
    v21 = v20;
    context = objc_autoreleasePoolPush();
    v22 = xpc_dictionary_get_string(v3, "eaClientBundleID");
    if (v22 && *v22)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
    }

    else
    {
      v23 = 0;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v31 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v31 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_impl(&dword_23DC47000, v31, OS_LOG_TYPE_INFO, "[#Server] IAPAppRegisterClient %@", buf, 0xCu);
    }

    v34 = xpc_dictionary_get_uint64(v3, "eaClientCapabilities");
    v68 = xpc_dictionary_get_uint64(v3, "eaClientID");
    length = 0;
    data = xpc_dictionary_get_data(v3, "eaClientSupportedProtocols", &length);
    v36 = xpc_dictionary_get_BOOL(v3, "eaClientHasCheckedForConnectedAccessories");
    v37 = 0;
    if (data && length)
    {
      v38 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
      if (v38)
      {
        v73 = 0;
        v37 = [MEMORY[0x277CCAC58] propertyListWithData:v38 options:0 format:0 error:&v73];
      }

      else
      {
        v37 = 0;
      }
    }

    v56 = !v36;
    *&v57 = 0xAAAAAAAAAAAAAAAALL;
    *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v57;
    v77 = v57;
    xpc_dictionary_get_audit_token();
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v58 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v58 = MEMORY[0x277D86220];
      v59 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *v75 = 138412802;
      *&v75[4] = v23;
      *&v75[12] = 1024;
      *&v75[14] = v34;
      *&v75[18] = 1024;
      *&v75[20] = v56;
      _os_log_impl(&dword_23DC47000, v58, OS_LOG_TYPE_INFO, "[#Server] IAPAppRegisterClient %@ call addClientWithCapabilites:%xh notifyClientOfAlreadyConnectedAccessories:%d", v75, 0x18u);
    }

    v61 = *(a1 + 32);
    v60 = *(a1 + 40);
    *v75 = *buf;
    *&v75[16] = v77;
    v62 = [v60 addClientWithCapabilities:v34 auditToken:v75 currentClientID:v68 xpcConnection:v61 eaProtocols:v37 notifyOfAlreadyConnectedAccessories:v56 andBundleId:v23];
    xpc_dictionary_set_uint64(v21, "eaClientID", v62);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v63 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v63 = MEMORY[0x277D86220];
      v64 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *v75 = 138412546;
      *&v75[4] = v23;
      *&v75[12] = 1024;
      *&v75[14] = v62;
      _os_log_impl(&dword_23DC47000, v63, OS_LOG_TYPE_INFO, "[#Server] IAPAppRegisterClient %@ send back reply, clientID=%u", v75, 0x12u);
    }

    xpc_connection_send_message(*(a1 + 32), v21);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v32 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v32 = MEMORY[0x277D86220];
      v55 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      ___xpc_iap2d_handle_incoming_request_block_invoke_cold_16();
    }
  }

LABEL_175:

  v67 = *MEMORY[0x277D85DE8];
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_183(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 dontPublish])
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 1024;
      LODWORD(v16) = [v5 dontPublish];
      _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_INFO, "[#Server] IAPAppConnectedAccessories iterateAccessoriesSync, accessory=%@, dontPublish=%d, skip adding!", &v13, 0x12u);
    }
  }

  else
  {
    v10 = [v5 accessoryInfoDict];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v11 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *gLogObjects;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_23DC47000, v11, OS_LOG_TYPE_INFO, "[#Server] IAPAppConnectedAccessories iterateAccessoriesSync, accessory=%@, accessoryInfo=%@", &v13, 0x16u);
    }

    [*(a1 + 32) addObject:v10];
  }

  *a3 = 1;
  v12 = *MEMORY[0x277D85DE8];
}

BOOL __hasEntitlementForAuditToken(void *a1, _OWORD *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, v3, &error);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        token.val[0] = 138412546;
        *&token.val[1] = v3;
        LOWORD(token.val[3]) = 1024;
        *(&token.val[3] + 2) = v10;
        _os_log_impl(&dword_23DC47000, v13, OS_LOG_TYPE_INFO, "[#ServerClient] has %@ entitlement:%d", &token, 0x12u);
      }

      CFRelease(v8);
      v15 = error;
      if (!error)
      {
        goto LABEL_40;
      }

      if (v10)
      {
        v10 = 1;
LABEL_39:
        CFRelease(v15);
        goto LABEL_40;
      }
    }

    else if (!error)
    {
      v10 = 0;
LABEL_40:
      CFRelease(v6);
      goto LABEL_41;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 138412546;
      *&token.val[1] = v3;
      LOWORD(token.val[3]) = 2112;
      *(&token.val[3] + 2) = error;
      _os_log_impl(&dword_23DC47000, v16, OS_LOG_TYPE_DEFAULT, "[#ServerClient] Unable to get entitlement '%@', error: %@", &token, 0x16u);
    }

    v10 = 0;
    v15 = error;
    goto LABEL_39;
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v17 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&dword_23DC47000, v17, OS_LOG_TYPE_DEFAULT, "[#ServerClient] Unable to create security task from audit token.", &token, 2u);
  }

  v10 = 0;
LABEL_41:

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_23DC56000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_23DC47000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_23DC47000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_23DC47000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_23DC56000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 115);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t acc_policies_shouldHideAccessoryWithModelNumber(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"ShowHiddenAccessories"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    if (acc_policies_shouldHideAccessoryWithModelNumber_onceToken != -1)
    {
      acc_policies_shouldHideAccessoryWithModelNumber_cold_1();
    }

    v4 = [acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (v3)
    {
      v5 = "YES";
    }

    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "shouldHideAccessory: %s, showHiddenAccessories: %s", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void __acc_policies_shouldHideAccessoryWithModelNumber_block_invoke()
{
  v0 = acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers = &unk_2850020F0;
}

uint64_t acc_policies_shouldOverrideNameOnAccessoryWithModelNumber(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_onceToken != -1)
  {
    acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_cold_1();
  }

  v2 = [acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = "NO";
    if (v2)
    {
      v3 = "YES";
    }

    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "shouldOverrideName: %s", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

void __acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_block_invoke()
{
  v0 = acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers = &unk_285002108;
}

uint64_t acc_policies_shouldResetLightningBusWhenTransportIsNoLongerRestricted(unsigned int a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return (a1 < 9) & (0x1C3u >> a1);
  }

  else
  {
    return 0;
  }
}

BOOL acc_policies_endpointRequiresChargingCurrentLimit(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  v90[6] = *MEMORY[0x277D85DE8];
  v88[0] = @"nameMatch";
  v88[1] = @"modelContain";
  v89[0] = @"IntelliLink";
  v89[1] = @"1.0";
  v88[2] = @"overrideCurrentLimit";
  v89[2] = &unk_285002120;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v90[0] = v6;
  v86[0] = @"nameMatch";
  v86[1] = @"modelContain";
  v87[0] = @"MyLink";
  v87[1] = @"1.0";
  v86[2] = @"overrideCurrentLimit";
  v87[2] = &unk_285002120;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v90[1] = v7;
  v84[0] = @"nameMatch";
  v84[1] = @"manufacturerMatch";
  v85[0] = @"iPL24Z";
  v85[1] = @"SDI Technologies";
  v84[2] = @"overrideCurrentLimit";
  v85[2] = &unk_285002120;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v90[2] = v8;
  v82[0] = @"modelMatch";
  v82[1] = @"manufacturerMatch";
  v83[0] = @"MIB2";
  v83[1] = @"HARMAN";
  v82[2] = @"overrideCurrentLimit";
  v83[2] = &unk_285002138;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v90[3] = v9;
  v80[0] = @"modelMatch";
  v80[1] = @"manufacturerMatch";
  v81[0] = @"Range Rover Velar";
  v81[1] = @"Land Rover";
  v80[2] = @"overrideCurrentLimit";
  v81[2] = &unk_285002120;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v90[4] = v10;
  v78[0] = @"modelMatch";
  v78[1] = @"manufacturerMatch";
  v79[0] = @"Jaguar I-PACE";
  v79[1] = @"Jaguar";
  v78[2] = @"overrideCurrentLimit";
  v79[2] = &unk_285002120;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v90[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:6];

  v13 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerOverride");
  v14 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  v15 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  if (v15 <= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if ((v14 - 3) < 6)
  {
    v17 = 10 * v14 - 5;
    v18 = a4;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v17 = 45;
  v18 = a4;
  if (v14 != 1)
  {
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67110656;
    v65 = a2;
    v66 = 1024;
    v67 = a3;
    v68 = 1024;
    v69 = v19;
    v70 = 1024;
    v71 = v13;
    v72 = 1024;
    v73 = v18;
    v74 = 1024;
    v75 = v14;
    v76 = 1024;
    v77 = v17;
    _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d checkChargingCurrentLimit=%d chargingCurrentLimit=%d inLimit=%d behavior=%d batteryThreshold=%d", buf, 0x2Cu);
  }

  if (!v19)
  {
    goto LABEL_65;
  }

  v58 = 0;
  v20 = v13;
  v21 = v13 < v18 && v13 != 0;
  if (a1 && !v21)
  {
    v22 = *(a1 + 64);
    if (v22)
    {
      if (*v22)
      {
        v58 = CFRetain(*v22);
      }

      else
      {
        v58 = 0;
      }

      v23 = *(*(a1 + 64) + 16);
      if (v23)
      {
        v57 = CFRetain(v23);
      }

      else
      {
        v57 = 0;
      }

      v24 = *(*(a1 + 64) + 8);
      if (v24)
      {
        v56 = CFRetain(v24);
      }

      else
      {
        v56 = 0;
      }

      if (v58 && v57)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = v12;
        v25 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v25)
        {
          v26 = v25;
          v45 = v13;
          v46 = v17;
          v47 = v16;
          v48 = v12;
          v27 = *v60;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v60 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v59 + 1) + 8 * i);
              v30 = [v29 objectForKey:@"nameMatch"];
              v31 = [v29 objectForKey:@"nameContain"];
              v32 = _matchOrContainString(v58, v30, v31);

              v33 = [v29 objectForKey:@"modelMatch"];
              v34 = [v29 objectForKey:@"modelContain"];
              v35 = _matchOrContainString(v57, v33, v34);

              v36 = [v29 objectForKey:@"manufacturerMatch"];
              v37 = [v29 objectForKey:@"manufacturerContain"];
              v38 = _matchOrContainString(v56, v36, v37);

              if (v32 && v35 && v38)
              {
                v39 = [v29 objectForKey:@"overrideCurrentLimit"];
                v20 = [v39 intValue];

                v18 = a4;
                v12 = v48;
                v17 = v46;
                v16 = v47;
                goto LABEL_40;
              }
            }

            v26 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v18 = a4;
          v12 = v48;
          v17 = v46;
          v16 = v47;
          v20 = v45;
        }

LABEL_40:

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110400;
          v65 = a2;
          v66 = 1024;
          v67 = a3;
          v68 = 1024;
          v69 = v20;
          v70 = 1024;
          v71 = v18;
          v72 = 1024;
          v73 = v16;
          v74 = 1024;
          v75 = v17;
          _os_log_debug_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d chargingCurrentLimit=%d inLimit=%d battery=%d threshold=%d", buf, 0x26u);
        }

        if (a3 != 3 && v16 >= v17 && (a2 & 1) == 0 && (v18 > 0x5DC || v20 >= 0x5DD) && v20 - 1501 < 0xFFFFFA24)
        {
          v20 = 1500;
        }

        if (v20)
        {
          v40 = v20 >= v18;
        }

        else
        {
          v40 = 1;
        }

        v21 = !v40;
        goto LABEL_55;
      }

LABEL_66:
      v21 = 0;
      v41 = a6 != 0;
      goto LABEL_58;
    }

LABEL_65:
    v57 = 0;
    v58 = 0;
    v56 = 0;
    goto LABEL_66;
  }

  v56 = 0;
  v57 = 0;
LABEL_55:
  v41 = a6 != 0;
  if (a6 && v21)
  {
    *a6 = v20;
    v41 = 1;
    v21 = 1;
  }

LABEL_58:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (v41)
    {
      v42 = *a6;
    }

    else
    {
      v42 = -1;
    }

    *buf = 67110656;
    v65 = a2;
    v66 = 1024;
    v67 = a3;
    v68 = 1024;
    v69 = a5;
    v70 = 1024;
    v71 = v16;
    v72 = 1024;
    v73 = v18;
    v74 = 1024;
    v75 = v42;
    v76 = 1024;
    v77 = v21;
    _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d, deviceType=%d, batt=%d(%d), %d->%d, return %d", buf, 0x2Cu);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL _matchOrContainString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = (v6 | v7) == 0;
  if (v5)
  {
    if (v6)
    {
      v10 = [v5 isEqualToString:v6];
LABEL_6:
      v9 = v10;
      goto LABEL_7;
    }

    if (v7)
    {
      v10 = [v5 containsString:v7];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v9;
}

uint64_t acc_policies_allowACCAuthProtocolOnAllTransport()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  v1 = [v0 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  return v1;
}

uint64_t acc_policies_allowACCAuthProtocolOnTransport(int a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"EnableACCAuthProtocolOnNFC"];

  v4 = +[ACCUserDefaults sharedDefaults];
  v5 = [v4 BOOLForKey:@"DisableACCAuthProtocolOnInductive"];

  v6 = +[ACCUserDefaults sharedDefaults];
  v7 = [v6 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  if (a1 == 13 && (v3 & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a1 == 12) & (v5 ^ 1) | v7;
  }

  return v8 & 1;
}

void acc_policies_deviceDidPreArmDeviceIdentity()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  [v0 setBool:1 forKey:@"DidPreArmDeviceIdentity"];
}

uint64_t acc_policies_supportInductivePowerTX(int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a1 == 3)
  {
    v2 = a2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

CFComparisonResult OUTLINED_FUNCTION_0(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

id _getApplicationStateMonitor()
{
  if (_getApplicationStateMonitor_onceToken != -1)
  {
    _getApplicationStateMonitor_cold_1();
  }

  v1 = gAppStateMonitor;

  return v1;
}

void sub_23DC4C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___getApplicationStateMonitor_block_invoke()
{
  if (!gAppStateMonitor)
  {
    gAppStateMonitor = [objc_alloc(MEMORY[0x277CEEE90]) initWithBundleIDs:0 states:0];

    MEMORY[0x2821F96F8]();
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

uint64_t acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

uint64_t acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

uint64_t __systemInfo_isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_isInternalBuild_internalBuild = result;
  return result;
}

uint64_t systemInfo_isDeveloperBuild()
{
  if (systemInfo_isDeveloperBuild_onceToken != -1)
  {
    systemInfo_isDeveloperBuild_cold_1();
  }

  return systemInfo_isDeveloperBuild_developerBuild;
}

void __systemInfo_isDeveloperBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    systemInfo_isDeveloperBuild_developerBuild = CFEqual(v0, @"Beta") != 0;

    CFRelease(v1);
  }

  else
  {
    systemInfo_isDeveloperBuild_developerBuild = 0;
  }
}

uint64_t systemInfo_systemSupportsPearl()
{
  if (systemInfo_systemSupportsPearl_onceToken != -1)
  {
    systemInfo_systemSupportsPearl_cold_1();
  }

  return systemInfo_systemSupportsPearl_supportsPearl;
}

uint64_t __systemInfo_systemSupportsPearl_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsPearl_supportsPearl = result;
  return result;
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

uint64_t __systemInfo_systemSupportsWAPI_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsWAPI_supportsWAPI = result;
  return result;
}

uint64_t systemInfo_isHomePod()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"AudioAccessory"];

  return v1;
}

uint64_t systemInfo_copyRegionCode()
{
  if (systemInfo_copyRegionCode_onceToken != -1)
  {
    systemInfo_copyRegionCode_cold_1();
  }

  if (systemInfo_copyRegionCode_regionCode)
  {
    v0 = CFGetTypeID(systemInfo_copyRegionCode_regionCode);
    if (v0 == CFStringGetTypeID())
    {
      return systemInfo_copyRegionCode_regionCode;
    }
  }

  result = 0;
  systemInfo_copyRegionCode_regionCode = 0;
  return result;
}

uint64_t __systemInfo_copyRegionCode_block_invoke()
{
  result = MGCopyAnswer();
  systemInfo_copyRegionCode_regionCode = result;
  return result;
}

id logObjectForModule()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v1)
    {
      logObjectForModule_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  return v10;
}

void sub_23DC4DEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23DC500CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  init_logging_signposts();
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_23DC56000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_23DC47000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_23DC47000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_23DC47000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_23DC56000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 115);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

BOOL acc_policies_shouldFailAuthOnOOBPairingFailure(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 9;
  }

  return result;
}

uint64_t acc_policies_productTypeNeedsPreArmDeviceIdentity(const void *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (v1 == TypeID)
    {
      v3 = OUTLINED_FUNCTION_0(TypeID, @"iPhone13,1");
      v6 = v3 == kCFCompareEqualTo || (v4 = OUTLINED_FUNCTION_0(v3, @"iPhone13,2")) == kCFCompareEqualTo || (v5 = OUTLINED_FUNCTION_0(v4, @"iPhone13,3")) == kCFCompareEqualTo || OUTLINED_FUNCTION_0(v5, @"iPhone13,4") == kCFCompareEqualTo;
      acc_policies_productTypeNeedsPreArmDeviceIdentity_modelNeedsPreArm = v6;
    }
  }

  return acc_policies_productTypeNeedsPreArmDeviceIdentity_modelNeedsPreArm;
}

uint64_t acc_policies_deviceNeedsPreArmDeviceIdentity()
{
  v25 = *MEMORY[0x277D85DE8];
  if (_MergedGlobals)
  {
    v17 = 0;
    v19 = 0;
  }

  else
  {
    v0 = +[ACCUserDefaults sharedDefaults];
    v1 = [v0 stringForKey:@"DeviceIdentityPreArmDateOverride"];

    if (v1)
    {
      v2 = v1;
      v3 = [MEMORY[0x277CBEA80] currentCalendar];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "acc_policies_deviceNeedsPreArmDeviceIdentity: _parseDate", &v23, 2u);
      }

      v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v5 = [v2 stringByTrimmingCharactersInSet:v4];

      v6 = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v7 = [v5 componentsSeparatedByCharactersInSet:v6];

      v8 = [v7 count];
      v9 = v8 > 2;
      if (v8 < 3)
      {
        v14 = 0;
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v11 = [v7 objectAtIndexedSubscript:2];
        [v10 setDay:{objc_msgSend(v11, "integerValue")}];

        v12 = [v7 objectAtIndexedSubscript:1];
        [v10 setMonth:{objc_msgSend(v12, "integerValue")}];

        v13 = [v7 objectAtIndexedSubscript:0];
        [v10 setYear:{objc_msgSend(v13, "integerValue")}];

        v14 = [v3 dateFromComponents:v10];
        v15 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v14;
          _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "acc_policies_deviceNeedsPreArmDeviceIdentity: _parseDate: %@", &v23, 0xCu);
        }
      }
    }

    else
    {
      v14 = 0;
      v9 = 0;
    }

    v16 = v14;
    v17 = v16;
    if (v9 && v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "acc_policies_deviceNeedsPreArmDeviceIdentity: override", &v23, 2u);
      }

      objc_storeStrong(&qword_27E30C9C8, v14);
      v18 = +[ACCUserDefaults sharedDefaults];
      [v18 setObject:qword_27E30C9C8 forKey:@"PreArmDeviceIdentityDate"];
    }

    v19 = qword_27E30C9C8;
    if (qword_27E30C9C8)
    {
      goto LABEL_19;
    }

    if (qword_27E30C9D0 != -1)
    {
      dispatch_once(&qword_27E30C9D0, &__block_literal_global_156);
    }

    v19 = qword_27E30C9C8;
    if (qword_27E30C9C8)
    {
LABEL_19:
      v20 = [MEMORY[0x277CBEAA8] date];
      v19 = [v19 compare:v20] == -1;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __acc_policies_deviceNeedsPreArmDeviceIdentity_block_invoke()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  _MergedGlobals = [v0 BOOLForKey:@"DidPreArmDeviceIdentity"];

  if ((_MergedGlobals & 1) == 0)
  {
    v1 = +[ACCUserDefaults sharedDefaults];
    v2 = [v1 objectForKey:@"PreArmDeviceIdentityDate"];
    v3 = qword_27E30C9C8;
    qword_27E30C9C8 = v2;

    if (!qword_27E30C9C8)
    {
      v13 = [MEMORY[0x277CBEA80] currentCalendar];
      v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v4 setDay:1];
      [v4 setMonth:3];
      [v4 setYear:2021];
      v5 = [v13 dateFromComponents:v4];
      v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v6 setDay:1];
      [v6 setMonth:9];
      [v6 setYear:2021];
      v7 = [v13 dateFromComponents:v6];
      v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v7];
      [v8 duration];
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v5 sinceDate:(arc4random() % v9)];
      v11 = qword_27E30C9C8;
      qword_27E30C9C8 = v10;

      v12 = +[ACCUserDefaults sharedDefaults];
      [v12 setObject:qword_27E30C9C8 forKey:@"PreArmDeviceIdentityDate"];
    }
  }
}

const __CFData *acc_policies_nfcTagUseKeys(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    result = CFDataGetLength(result);
    if (result)
    {
      return (*CFDataGetBytePtr(v1) - 87 < 2);
    }
  }

  return result;
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductVersion()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void logObjectForModule_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1(&dword_23DC47000, MEMORY[0x277D86220], a3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_23DC47000, v0, v1, "[#Server] _xpc_iap2d_handle_incoming_request: received messagetype %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_23DC47000, v0, v1, "[#Server] Client sent unknown '%s' xpc message ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_23DC47000, v0, v1, "[#Server] Client sent '%s' xpc message without a reply context", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_11()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_16()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_19()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___xpc_iap2d_handle_incoming_request_block_invoke_cold_22()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_23DC47000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}