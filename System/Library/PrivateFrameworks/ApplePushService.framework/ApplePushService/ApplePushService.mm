void sub_100001FF8(id a1, OS_xpc_object *a2, OS_xpc_object *a3, OS_xpc_object *a4)
{
  v10 = a2;
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = APSGetXPCConnectionContext();
  aps_peer_event_handler(v6, v7, v9, 0);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100002098(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  (*(a1[7] + 16))();
  v5 = a1[8];

  return _pthread_dependency_fulfill_np(v5, 0);
}

void sub_1000020E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22[0] = 0;
  v22[1] = 0;
  pthread_main_thread_np();
  pthread_dependency_init_np();
  v10 = qos_class_self();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002098;
  block[3] = &unk_1001876D8;
  v11 = *(a1 + 32);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v22;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, block);
  dispatch_async(&_dispatch_main_q, v15);

  pthread_dependency_wait_np();
}

void aps_peer_event_handler(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10010BE08();
  }

  type = xpc_get_type(v8);
  if (type == &_xpc_type_error)
  {
    if (v8 == &_xpc_error_connection_invalid)
    {
      if (xpc_connection_get_context(v7) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = xpc_connection_get_pid(v7);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
      }

      v25 = xpc_connection_get_context(v7);
      v11 = v25;
      if (v25)
      {
        [v25 connectionInvalidated];
LABEL_211:

        goto LABEL_212;
      }

LABEL_41:
      xpc_connection_cancel(v7);
      goto LABEL_211;
    }

    if (v8 == &_xpc_error_connection_interrupted)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_212;
      }

      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v7);
      v23 = "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED";
    }

    else
    {
      v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v8 != &_xpc_error_termination_imminent)
      {
        if (!v22)
        {
          goto LABEL_212;
        }

        *buf = 138412290;
        *&buf[4] = v8;
        v23 = "Unidentified error: %@";
        v24 = 12;
LABEL_45:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
        goto LABEL_212;
      }

      if (!v22)
      {
        goto LABEL_212;
      }

      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v7);
      v23 = "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT";
    }

    v24 = 8;
    goto LABEL_45;
  }

  if (type == &_xpc_type_dictionary)
  {
    v11 = v8;
    int64 = xpc_dictionary_get_int64(v11, [APSXPCMessageTypeKey UTF8String]);
    v13 = int64;
    if (int64 <= 0x24)
    {
      if (((1 << int64) & 0x1780803701) != 0)
      {
        if (a4 && (sub_10000712C() & 1) != 0 || (memset(buf, 0, 32), xpc_connection_get_audit_token(), sub_100003C4C(buf, APSConnectionInitiateEntitlement)))
        {
          v14 = 0;
          goto LABEL_12;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_10010BED8(v7);
        }

        goto LABEL_41;
      }

      if (int64 == 5)
      {
        memset(buf, 0, 32);
        xpc_connection_get_audit_token();
        memset(v115, 0, sizeof(v115));
        if (sandbox_check_by_audit_token())
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_10010BE50(v7);
          }

          goto LABEL_41;
        }

        v14 = 0;
LABEL_55:
        v26 = APSGetXPCIntFromDictionary();
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
LABEL_209:

LABEL_210:
          goto LABEL_211;
        }

        v28 = @"unknown style";
        if (v26 <= 2)
        {
          if (v26 == 1)
          {
            v86 = [v9 prettyStatus];
          }

          else
          {
            if (v26 != 2)
            {
              goto LABEL_197;
            }

            v86 = [v9 _connectionsDebuggingState];
          }
        }

        else
        {
          if (v26 == 3)
          {
            v90 = 1;
          }

          else
          {
            if (v26 != 4)
            {
              if (v26 == 5)
              {
                v29 = [v9 _connectionsDebuggingState];
                v30 = [v9 prettyStatus];
                v28 = [NSString stringWithFormat:@"iOS Dump State\n%@\nMac OS Dump State\n%@\n", v29, v30];
              }

LABEL_197:
              APSInsertNSStringsToXPCDictionary();
LABEL_202:
              v87 = v7;
              v88 = reply;
LABEL_203:
              xpc_connection_send_message(v87, v88);
LABEL_208:

              goto LABEL_209;
            }

            v90 = 0;
          }

          v86 = [v9 JSONDebugString:v90];
        }

        v28 = v86;
        goto LABEL_197;
      }
    }

    v14 = xpc_connection_get_context(v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10010BF5C(v7, v14);
      if (!v14)
      {
LABEL_52:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10010C030(v7);
        }

        goto LABEL_41;
      }
    }

    else if (!v14)
    {
      goto LABEL_52;
    }

LABEL_12:
    switch(v13)
    {
      case 0u:
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          [v9 receivedClientConnection];
        }

        v15 = APSGetXPCStringFromDictionary();
        v16 = APSGetXPCStringFromDictionary();
        v17 = APSGetXPCStringFromDictionary();
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SetupConnection: env=%@ portName=%@", buf, 0x16u);
        }

        v18 = [v16 isEqualToString:APSConnectionOverrideNamedDelegatePort];
        if (v18)
        {

          v16 = 0;
        }

        buf[0] = 0;
        v19 = [v9 getConnectionServerForEnvironment:v15 connectionPortName:v16 processName:v17 enableDarkWake:APSGetXPCBoolFromDictionary() peerConnection:v7 isNewConnection:buf];

        if (((v18 | _os_feature_enabled_impl() ^ 1) & 1) == 0 && buf[0] == 1)
        {
          [v9 receivedClientConnection];
        }

        v20 = xpc_dictionary_create_reply(v11);
        if (v20)
        {
          sub_10000442C(v19, v11, v20);
          sub_100009AB4(v19, v11, v20);
          sub_10000D6A0(v19, v11, v20);
          sub_100003D80(v19);
          v21 = [v19 publicToken];

          if (v21)
          {
            v92 = [v19 publicToken];
            v96 = 0;
            APSInsertDatasToXPCDictionary();
          }

          v93 = [v19 messageSize];
          APSInsertIntsToXPCDictionary();
          v94 = [v19 largeMessageSize];
          APSInsertIntsToXPCDictionary();
          v95 = [v19 isConnected];
          APSInsertBoolsToXPCDictionary();
          xpc_connection_send_message(v7, v20);
          [v19 connectionHandshakeDidComplete];
        }

        v14 = v19;
        goto LABEL_210;
      case 1u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        sub_10000442C(v14, v11, reply);
        goto LABEL_182;
      case 2u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        sub_100009AB4(v14, v11, reply);
        goto LABEL_182;
      case 3u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        sub_10000D6A0(v14, v11, reply);
        goto LABEL_182;
      case 4u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        sub_100087A20(v14, v11, reply);
        goto LABEL_182;
      case 5u:
        goto LABEL_55;
      case 6u:
        reply = xpc_dictionary_get_value(v11, "message");
        v28 = APSCreateDictionaryFromXPCObject();
        v55 = xpc_dictionary_create_reply(v11);
        if (v55)
        {
          APSInsertBoolsToXPCDictionary();
          xpc_connection_send_message(v7, v55);
        }

        if (v28)
        {
          v66 = [[APSOutgoingMessage alloc] initWithDictionary:v28];
          [v14 handleSendOutgoingMessage:v66];
          goto LABEL_132;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_207;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v89 = "APSXPCSendOutgoingMessageEvent requestMessage %@ failed!";
        goto LABEL_206;
      case 7u:
        if (!os_variant_allows_internal_security_policies())
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10010BFE8();
          }

          goto LABEL_210;
        }

        reply = xpc_dictionary_get_value(v11, "message");
        v28 = APSCreateDictionaryFromXPCObject();
        v55 = xpc_dictionary_create_reply(v11);
        if (v55)
        {
          APSInsertBoolsToXPCDictionary();
          xpc_connection_send_message(v7, v55);
        }

        if (v28)
        {
          v66 = [[APSOutgoingMessage alloc] initWithDictionary:v28];
          [v14 handleFakeMessage:v66];
LABEL_132:
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          v89 = "APSXPCSendFakeMessageEvent requestMessage %@ failed!";
LABEL_206:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v89, buf, 0xCu);
        }

LABEL_207:

        goto LABEL_208;
      case 8u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        v28 = APSGetXPCStringFromDictionary();
        v55 = [v9 courierForEnvironmentName:v28];
        [v55 hasIdentity];
        APSInsertBoolsToXPCDictionary();
        goto LABEL_94;
      case 9u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        v70 = [v9 courierForEnvironmentName:APSEnvironmentProduction];
        v28 = v70;
        if (v70)
        {
          [(__CFString *)v70 serverTimeInNanoSeconds];
        }

        else
        {
          v91 = +[NSDate date];
          [v91 timeIntervalSince1970];
        }

        APSInsertUnsignedLongLongsToXPCDictionary();
        goto LABEL_202;
      case 0xAu:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        v28 = [v9 courierForEnvironmentName:APSEnvironmentProduction];
        v55 = [(__CFString *)v28 latestGeoRegion];
        if (v55)
        {
          APSInsertNSStringsToXPCDictionary();
        }

LABEL_94:
        xpc_connection_send_message(v7, reply);
        goto LABEL_207;
      case 0xBu:
        [v14 handleCancelOutgoingMessageWithID:APSGetXPCIntFromDictionary()];
        goto LABEL_210;
      case 0xCu:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        v28 = APSGetXPCStringFromDictionary();
        [v9 keepAliveIntervalForEnvironment:v28];
        APSInsertDoublesToXPCDictionary();
        goto LABEL_202;
      case 0xDu:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requesting courier connections", buf, 2u);
        }

        [v9 requestCourierConnections];
        goto LABEL_182;
      case 0xEu:
        reply = APSGetXPCStringFromDictionary();
        v60 = APSGetXPCStringFromDictionary();
        v28 = v60;
        if (reply && v60)
        {
          [v14 handleRequestPerAppTokenForTopic:reply identifier:v60];
          goto LABEL_208;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v85 = "APSXPCRequestAppTokenEvent requestMessage %@ failed";
        goto LABEL_185;
      case 0xFu:
        reply = xpc_dictionary_get_value(v11, "info");
        v61 = [APSAppTokenInfo alloc];
        v62 = APSCreateDictionaryFromXPCObject();
        v28 = [v61 initWithDictionary:v62];

        if (v28)
        {
          v63 = [(__CFString *)v28 topic];
          if (v63)
          {
            v64 = v63;
            v65 = [(__CFString *)v28 identifier];

            if (v65)
            {
              [v14 handleRequestTokenForInfo:v28];
              goto LABEL_208;
            }
          }
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v85 = "APSXPCRequestExtendedAppTokenEvent requestMessage %@ failed";
        goto LABEL_185;
      case 0x10u:
        reply = xpc_dictionary_get_value(v11, "info");
        v72 = [APSURLTokenInfo alloc];
        v73 = APSCreateDictionaryFromXPCObject();
        v28 = [v72 initWithDictionary:v73];

        if (v28)
        {
          v74 = [(__CFString *)v28 topic];
          if (v74)
          {
            v75 = v74;
            v76 = [(__CFString *)v28 vapidPublicKey];

            if (v76)
            {
              [v14 handleRequestURLTokenForInfo:v28];
              goto LABEL_208;
            }
          }
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v85 = "APSXPCRequestURLTokenEvent requestMessage %@ failed";
        goto LABEL_185;
      case 0x11u:
        reply = APSGetXPCStringFromDictionary();
        v71 = APSGetXPCStringFromDictionary();
        v28 = v71;
        if (reply && v71)
        {
          [v14 handleInvalidatePerAppTokenForTopic:reply identifier:v71];
          goto LABEL_208;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v85 = "APSXPCInvalidateAppTokenEvent requestMessage %@ failed";
        goto LABEL_185;
      case 0x12u:
        reply = xpc_dictionary_get_value(v11, "info");
        v47 = [APSAppTokenInfo alloc];
        v48 = APSCreateDictionaryFromXPCObject();
        v28 = [v47 initWithDictionary:v48];

        if (v28)
        {
          v49 = [(__CFString *)v28 topic];
          if (v49)
          {
            v50 = v49;
            v51 = [(__CFString *)v28 identifier];

            if (v51)
            {
              [v14 handleInvalidatePerAppTokenForInfo:v28];
              goto LABEL_208;
            }
          }
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v85 = "APSXPCInvalidateExtendedAppTokenEvent requestMessage %@ failed";
        goto LABEL_185;
      case 0x13u:
        reply = APSGetXPCStringFromDictionary();
        if (reply)
        {
          [v14 handleInvalidateURLTokenForTopic:reply];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCInvalidateURLTokenEvent requestMessage %@ failed", buf, 0xCu);
        }

        v28 = xpc_dictionary_create_reply(v11);
        if (!v28)
        {
          goto LABEL_208;
        }

        goto LABEL_189;
      case 0x14u:
        reply = xpc_dictionary_get_value(v11, "info");
        v77 = [APSAppTokenInfo alloc];
        v78 = APSCreateDictionaryFromXPCObject();
        v28 = [v77 initWithDictionary:v78];

        if (v28)
        {
          v79 = [(__CFString *)v28 topic];
          if (v79)
          {
            v80 = v79;
            v81 = [(__CFString *)v28 identifier];

            if (v81)
            {
              [v14 handleCurrentTokenForInfo:v28];
              goto LABEL_208;
            }
          }
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v85 = "APSXPCCurrentExtendedAppTokenEvent requestMessage %@ failed";
        goto LABEL_185;
      case 0x15u:
        reply = xpc_dictionary_get_value(v11, "info");
        v52 = [APSURLTokenInfo alloc];
        v53 = APSCreateDictionaryFromXPCObject();
        v28 = [v52 initWithDictionary:v53];

        if (v28 && ([(__CFString *)v28 topic], v54 = objc_claimAutoreleasedReturnValue(), v54, v54))
        {
          [v14 handleCurrentURLTokenForInfo:v28];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          v85 = "APSXPCCurrentURLTokenEvent requestMessage %@ failed";
LABEL_185:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v85, buf, 0xCu);
        }

        goto LABEL_208;
      case 0x16u:
        reply = APSGetXPCStringFromDictionary();
        v28 = APSGetXPCDataFromDictionary();
        v55 = APSGetXPCStringFromDictionary();
        [v14 handleAckIncomingMessageWithGuid:reply topic:v55 tracingUUID:v28];
        goto LABEL_207;
      case 0x17u:
        reply = xpc_dictionary_create_reply(v11);
        if (!reply)
        {
          goto LABEL_209;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Processing invalid identity.", buf, 2u);
        }

        [v9 invalidateDeviceIdentity];
        goto LABEL_182;
      case 0x18u:
        reply = APSGetXPCDataFromDictionary();
        v28 = APSGetXPCStringFromDictionary();
        [v14 handleIncomingMessageReceiptWithTopic:v28 tracingUUID:reply];
        goto LABEL_208;
      case 0x19u:
        sub_100003D80(v14);
        goto LABEL_210;
      case 0x1Au:
        reply = APSGetXPCDataFromDictionary();
        v83 = APSGetXPCUnsignedLongLongFromDictionary();
        v84 = [v14 environmentName];
        v28 = [v9 courierForEnvironmentName:v84];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCSignDataWithIdentityEvent, requesting push identity", buf, 2u);
        }

        v55 = xpc_dictionary_create_reply(v11);
        if (v55)
        {
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_10001BC30;
          v105[3] = &unk_1001882E8;
          v110 = v83;
          v106 = v28;
          v107 = reply;
          v108 = v55;
          v109 = v7;
          [(__CFString *)v106 fetchUserCourierIdentityForSigningWithCompletion:v105];
        }

        goto LABEL_207;
      case 0x1Bu:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCRollBAACertEvent, attempting to fetch a new BAA cert for all environments", buf, 2u);
        }

        v82 = [v14 environmentName];
        reply = [v9 courierForEnvironmentName:v82];

        v28 = xpc_dictionary_create_reply(v11);
        if (v28)
        {
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_100087BB4;
          v102[3] = &unk_1001864D8;
          v103 = v7;
          v104 = v28;
          [(__CFString *)reply forceBAAIdentityRefreshWithCompletion:v102];
        }

        goto LABEL_208;
      case 0x1Cu:
        v56 = [v14 environmentName];
        reply = [v9 courierForEnvironmentName:v56];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [(__CFString *)reply environment];
          v58 = [v57 name];
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCSwapIdentityProviderEvent, asking %@ courier to swap identity providers", buf, 0xCu);
        }

        v28 = xpc_dictionary_create_reply(v11);
        if (!v28)
        {
          goto LABEL_208;
        }

        v59 = [(__CFString *)reply clientIdentityProvider];
        [v59 debugForceIdentitySwap];

        goto LABEL_189;
      case 0x1Du:
        sub_100087B4C(v14);
        goto LABEL_210;
      case 0x1Eu:
        memset(buf, 0, 32);
        xpc_connection_get_audit_token();
        v67 = sub_100003C4C(buf, APSRollTokenEntitlement);
        v68 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        if (!v67)
        {
          if (v68)
          {
            LOWORD(v115[0]) = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCRollTokensAndReconnectEvent, not entitled to roll tokens!", v115, 2u);
          }

          reply = xpc_dictionary_create_reply(v11);
          if (reply)
          {
LABEL_182:
            xpc_connection_send_message(v7, reply);
          }

          goto LABEL_209;
        }

        if (v68)
        {
          LOWORD(v115[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCRollTokensAndReconnectEvent, rolling tokens and forcing a reconnect", v115, 2u);
        }

        v69 = [v14 environmentName];
        reply = [v9 courierForEnvironmentName:v69];

        v28 = xpc_dictionary_create_reply(v11);
        if (!v28)
        {
          goto LABEL_208;
        }

        [(__CFString *)reply rollTokenAndReconnect];
LABEL_189:
        v87 = v7;
        v88 = v28;
        break;
      case 0x23u:
        [v14 handleNotificationAcknowledged];
        goto LABEL_210;
      case 0x28u:
        sub_100087AB0(v14);
        goto LABEL_210;
      case 0x33u:
        reply = [v9 courierForEnvironmentName:APSEnvironmentProduction];
        [(__CFString *)reply performKeepAlive];
        goto LABEL_209;
      case 0x34u:
        reply = APSGetXPCArrayFromDictionary();
        v28 = APSGetXPCStringFromDictionary();
        [v14 handleSubscribeToChannels:reply forTopic:v28];
        goto LABEL_208;
      case 0x35u:
        reply = APSGetXPCArrayFromDictionary();
        v28 = APSGetXPCStringFromDictionary();
        [v14 handleUnsubscribeFromChannels:reply forTopic:v28];
        goto LABEL_208;
      case 0x36u:
        v31 = APSGetXPCStringFromDictionary();
        v32 = [v14 environmentName];
        v33 = [v9 courierForEnvironmentName:v32];

        v34 = [v14 user];
        v35 = [v33 allRegisteredChannelsForTopic:v31 user:v34];

        v36 = xpc_dictionary_create_reply(v11);
        v37 = v36;
        if (v36)
        {
          v97 = v36;
          v99 = v33;
          v100 = v31;
          v101 = v14;
          v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v35 count]);
          v39 = v35;
          v40 = v38;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v98 = v39;
          v41 = v39;
          v42 = [v41 countByEnumeratingWithState:&v111 objects:v116 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v112;
            do
            {
              for (i = 0; i != v43; i = i + 1)
              {
                if (*v112 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [*(*(&v111 + 1) + 8 * i) dictionaryRepresentation];
                [v40 addObject:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v111 objects:v116 count:16];
            }

            while (v43);
          }

          v37 = v97;
          APSInsertNSArraysToXPCDictionary();
          xpc_connection_send_message(v7, v97);

          v31 = v100;
          v14 = v101;
          v35 = v98;
          v33 = v99;
        }

        goto LABEL_210;
      default:
        goto LABEL_210;
    }

    goto LABEL_203;
  }

LABEL_212:
}

BOOL sub_100003C4C(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  *cf.val = *a1;
  *&cf.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &cf);
  if (v5)
  {
    v6 = v5;
    *cf.val = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, v3, &cf);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    else
    {
      v10 = 0;
    }

    if (*cf.val)
    {
      v12 = +[APSLog daemon];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_100109DB4(&cf, v12);
      }

      CFRelease(*cf.val);
    }

    CFRelease(v6);
  }

  else
  {
    v11 = +[APSLog daemon];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100109E30(v11);
    }

    v10 = 0;
  }

  return v10;
}

void sub_100003D80(void *a1)
{
  v4 = a1;
  v1 = APSGetUltraConstrainedTopicsFromXPCDictionary();
  v2 = APSSafeArrayOfStrings();

  if (v2)
  {
    v3 = [NSSet setWithArray:v2];
    [v4 setUltraConstrainedTopics:v3];
  }
}

uint64_t sub_100003E14(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    if ([v4 count])
    {
      if (v5)
      {
        v6 = 0;
        goto LABEL_10;
      }

LABEL_9:
      v6 = [v3 count] == 0;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v3 isEqualToSet:v4];
LABEL_10:

  return v6;
}

CFPropertyListRef sub_100004328(const __CFString *a1, int a2)
{
  v4 = +[APSMultiUserMode sharedInstance];
  v5 = [v4 isMultiUser];

  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = APSBundleIdentifier;

    return CFPreferencesCopyAppValue(a1, v7);
  }

  else
  {
    v8 = +[APSMultiUserFS sharedInstance];
    v9 = [v8 systemPath];
    [v9 stringByAppendingString:@"/"];
    v10 = _CFPreferencesCopyValueWithContainer();

    return v10;
  }
}

void sub_10000442C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v26 = APSGetEnabledTopicsFromXPCDictionary();
  v8 = APSGetIgnoredTopicsFromXPCDictionary();
  v9 = APSGetOpportunisticTopicsFromXPCDictionary();
  v10 = APSGetNonWakingTopicsFromXPCDictionary();

  if (v26)
  {
    v11 = [NSSet setWithArray:?];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [NSSet setWithArray:v8];
  if (v9)
  {
LABEL_4:
    v13 = [NSSet setWithArray:v9];
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v24 = v8;
  if (v10)
  {
    v14 = [NSSet setWithArray:v10, v8];
  }

  else
  {
    v14 = 0;
  }

  [v7 setEnabledTopics:v11 ignoredTopics:v12 opportunisticTopics:v13 nonWakingTopics:{v14, v24}];
  [v7 enabledTopics];
  v16 = v15 = v11;
  v17 = [v16 allObjects];
  APSInsertEnabledTopicsToXPCDictionary();

  v18 = [v7 ignoredTopics];
  v19 = [v18 allObjects];
  APSInsertIgnoredTopicsToXPCDictionary();

  v20 = [v7 opportunisticTopics];
  v21 = [v20 allObjects];
  APSInsertOpportunisticTopicsToXPCDictionary();

  v22 = [v7 nonWakingTopics];

  v23 = [v22 allObjects];
  APSInsertNonWakingTopicsToXPCDictionary();
}

void sub_1000049C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004AD0(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 interfaceConstraint];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_100004BF8()
{
  if ([*(v0 + OBJC_IVAR___APSProcessModeUserTracker_multiUserMode) isMultiUser])
  {
    memset(v5, 0, sizeof(v5));
    xpc_connection_get_audit_token();
    v1 = sub_100003C4C(v5, APSConnectionSystemProcessEntitlement);
    v2 = &OBJC_IVAR___APSProcessModeUserTracker_systemModeUser;
    if (!v1)
    {
      v2 = &OBJC_IVAR___APSProcessModeUserTracker_userModeUser;
    }

    v3 = *v2;
  }

  else
  {
    v3 = OBJC_IVAR___APSProcessModeUserTracker_systemModeUser;
  }

  return *(v0 + v3);
}

void sub_100004D60(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v61 = [objc_allocWithZone(APSProcessModeTokenStorage) initWithUser:a1];
  v6 = [v61 tokenInfoForEnvironment:a2];
  sub_100006B18();
  v59 = a3;
  if (v6)
  {
    v60 = v5;
    v7 = v6;
    v8 = a2;
    v9 = static OS_os_log.default.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v11 = 136315650;
      v12 = [v8 name];

      if (!v12)
      {
        goto LABEL_32;
      }

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100007B6C(v13, v15, &v62);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = [v7 systemToken];
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = Data.description.getter();
      v23 = v22;
      sub_100006D20(v18, v20);
      v24 = sub_100007B6C(v21, v23, &v62);

      *(v11 + 14) = v24;
      *(v11 + 22) = 2080;
      v25 = [v7 tokenType];
      v26 = v25 == 1;
      if (v25 == 1)
      {
        v27 = 4276546;
      }

      else
      {
        v27 = 0x747265626C41;
      }

      if (v26)
      {
        v28 = 0xE300000000000000;
      }

      else
      {
        v28 = 0xE600000000000000;
      }

      v29 = sub_100007B6C(v27, v28, &v62);

      *(v11 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found an existing token in keychain to init multiClientIdentityProvider for environment %s, token: %s, type: %s", v11, 0x20u);
      swift_arrayDestroy();

      v5 = v60;
    }

    else
    {

      v5 = v60;
    }

LABEL_16:
    v41 = [objc_allocWithZone(APSKeychainClientIdentityProvider) init];
    v42 = [objc_allocWithZone(APSBAAClientIdentityProvider) init];
    v43 = objc_opt_self();
    v44 = [v43 identityUtilities];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 useMultiIdentityProvider];

      if (v46)
      {
        if ([v5 isDefaultUser])
        {
          type metadata accessor for MultiClientIdentityProvider();
          v47 = v6;
          sub_1000D4A30(v6, v41);
LABEL_28:
          v53 = v48;
LABEL_29:
          type metadata accessor for UserDependencies();
          v56 = objc_allocWithZone(APSProcessModePreferences);
          swift_unknownObjectRetain();
          v57 = v61;
          sub_1000075F0(v53, v57, [v56 initWithUser:v5], objc_msgSend(objc_allocWithZone(APSHashingAppIDManager), "init"));

          swift_unknownObjectRelease();
          return;
        }

        if (v59)
        {
          type metadata accessor for AliasUserIdentityProvider();
          v55 = swift_unknownObjectRetain();
          v48 = sub_1000C7578(v55);
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      v49 = [v43 identityUtilities];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 albertIdentitySupported];

        if (v51)
        {
          v52 = v41;
        }

        else
        {
          v52 = v42;
        }

        v53 = v52;
        if (([v5 isDefaultUser] & 1) == 0)
        {
          type metadata accessor for NoOpClientIdentityProvider();
          v54 = ClientIdentityMetric.__allocating_init()();
          swift_unknownObjectRelease();
          v53 = v54;
        }

        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    static os_log_type_t.fault.getter();
    v58 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for NoOpClientIdentityProvider();
    ClientIdentityMetric.__allocating_init()();
    __break(1u);
    goto LABEL_34;
  }

  v30 = a2;
  v31 = static OS_os_log.default.getter();
  v32 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_16;
  }

  v33 = v5;
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v62 = v35;
  *v34 = 136315138;
  v36 = [v30 name];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_100007B6C(v37, v39, &v62);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "No token found in keychain for environment %%%s, setting multiClientIdentityProvider status to unknown", v34, 0xCu);
    sub_100006CCC(v35);

    v5 = v33;
    goto LABEL_16;
  }

LABEL_34:
  __break(1u);
}

void sub_100005394(const __CFString *a1, const void *a2, int a3)
{
  v6 = +[APSMultiUserMode sharedInstance];
  v7 = [v6 isMultiUser];

  if (v7)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = APSBundleIdentifier;

    CFPreferencesSetAppValue(a1, a2, v9);
  }

  else
  {
    v11 = +[APSMultiUserFS sharedInstance];
    v10 = [v11 systemPath];
    [v10 stringByAppendingString:@"/"];
    _CFPreferencesSetValueWithContainer();
  }
}

void sub_1000054B8(int a1)
{
  v2 = +[APSMultiUserMode sharedInstance];
  v3 = [v2 isMultiUser];

  if (v3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = APSBundleIdentifier;

    CFPreferencesAppSynchronize(v5);
  }

  else
  {
    v7 = +[APSMultiUserFS sharedInstance];
    v6 = [v7 systemPath];
    [v6 stringByAppendingString:@"/"];
    _CFPreferencesSynchronizeWithContainer();
  }
}

id sub_1000055C0(void *a1)
{
  v1 = sub_1000056C0(a1);
  v2 = sub_10000560C(v1);

  return v2;
}

id sub_10000560C(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [v1 bytes];
  for (i = [[NSMutableString alloc] initWithCapacity:2 * v2]; v2; v2 = v2 - 1)
  {
    v5 = *v3++;
    [i appendFormat:@"%02x", v5];
  }

  return i;
}

id sub_1000056C0(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = sub_100005710(v1);

  return v2;
}

id sub_100005710(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  CC_SHA1(v2, v3, md);
  v4 = [[NSData alloc] initWithBytes:md length:20];

  return v4;
}

void sub_100005EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100005FFC(const __CFString *a1)
{
  v2 = +[APSMultiUserMode sharedInstance];
  v3 = [v2 isMultiUser];

  if (v3)
  {
    v4 = +[APSMultiUserFS sharedInstance];
    v5 = [v4 systemPath];
    [v5 stringByAppendingString:@"/"];
    v6 = _CFPreferencesCopyValueWithContainer();

    if (v6)
    {
      v7 = CFGetTypeID(v6);
      if (v7 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v6);
      }

      else
      {
        Value = 0;
      }

      CFRelease(v6);
    }

    else
    {
      Value = 0;
    }
  }

  else
  {
    Value = CFPreferencesGetAppBooleanValue(a1, APSBundleIdentifier, 0);
  }

  return Value != 0;
}

unint64_t sub_1000061B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_1000063DC(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 24 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 17);

      if (v14)
      {
        v15 = 256;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_8;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v15 = 0;
LABEL_8:
  v16 = OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion;
  if (*(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) <= v11)
  {
    if (v11 == -1)
    {
      *(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) = 0;
      *(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion) = 0;
      v20 = *(v3 + v6);
      *(v3 + v6) = &_swiftEmptyDictionarySingleton;

      if (a2)
      {
        v21 = [objc_allocWithZone(NSError) initWithDomain:APSErrorDomain code:-1000 userInfo:0];
        v22 = v21;
        result = 0;
        *a2 = v21;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      swift_beginAccess();
      v23 = *(v3 + v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_100006530(v11, v12, v15 | v13, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = v26;
      swift_endAccess();
      return v11 + 1;
    }
  }

  else
  {
    swift_beginAccess();
    v17 = *(v3 + v6);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_100006530(v11, v12, v15 | v13, a1, v18);
    *(v3 + v6) = v25;
    swift_endAccess();
    return *(v3 + v16);
  }

  return result;
}

unint64_t sub_1000063DC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100006420(a1, v4);
}

unint64_t sub_100006420(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000064E4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000064E4()
{
  result = qword_1001BDC60;
  if (!qword_1001BDC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BDC60);
  }

  return result;
}

unint64_t sub_100006530(uint64_t a1, uint64_t a2, __int16 a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  result = sub_1000063DC(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      v20 = result;
      sub_1000D9FA4();
      result = v20;
      goto LABEL_8;
    }

    sub_1000D9B04(v17, a5 & 1);
    v21 = *v6;
    result = sub_1000063DC(a4);
    if ((v18 & 1) != (v22 & 1))
    {
LABEL_14:
      sub_1000064E4();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v18)
  {
    v24 = v23[7] + 24 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    *(v24 + 17) = HIBYTE(a3) & 1;
  }

  else
  {
    sub_1000D9F48(result, a4, a1, a2, a3 & 0x101, v23);

    return a4;
  }

  return result;
}

id sub_1000066D0(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [NSString stringWithFormat:@"UnknownChange %ld", a1];
  }

  else
  {
    v2 = *(&off_1001875D0 + a1);
  }

  return v2;
}

id sub_1000067F8(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"UnknownInterface %ld", a1];
  }

  else
  {
    v2 = *(&off_100187590 + a1);
  }

  return v2;
}

uint64_t sub_100006A28(uint64_t a1)
{
  v3 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1000063DC(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 24 * v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unint64_t sub_100006B18()
{
  result = qword_1001BCDD0;
  if (!qword_1001BCDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BCDD0);
  }

  return result;
}

unint64_t sub_100006B64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006F18(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100006C70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006CCC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006D20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_100006D74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100006EA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006EA4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100006EA4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000C8C30(&qword_1001BDEA0, &unk_10015D410);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006F18(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006D74(a1, a2);
  sub_100006F68(&off_10018A8C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_100006F68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000CE498(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000712C()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return !sub_100005FFC(@"ForceProductionConfiguration");
  }

  return result;
}

id sub_1000075F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___APSUserDependencies_clientIdentityProvider] = a1;
  *&v9[OBJC_IVAR___APSUserDependencies_systemTokenStorage] = a2;
  *&v9[OBJC_IVAR___APSUserDependencies_userPreferences] = a3;
  *&v9[OBJC_IVAR___APSUserDependencies_userAppIDManager] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100007B6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006B64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100006C70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006CCC(v11);
  return v7;
}

const __CFString *sub_100007D14(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_100187DF8[a1];
  }
}

void *sub_1000087F8(uint64_t a1, const void *a2, size_t __n)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    sub_1000EA964();
  }

  if (v5 - v4 <= __n)
  {
    sub_100016BDC();
  }

  result = memcpy(v4, a2, __n);
  *(a1 + 8) += __n;
  return result;
}

uint64_t *SbfIndexToAtom(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = SbfCheckAtom(a1, a2);
  if (a3 >> 24 || v5 || (*(a2 + 8) & 0xE00000000000000) != 0x600000000000000)
  {
    return 0;
  }

  return SbfTreeSearchIndex(a2, a3);
}

uint64_t *SbfTreeSearchIndex(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000FDDF8();
  }

  LODWORD(v2) = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = (a1 + 32 * v2);
    v4 = *(v3 + 3) & 0xFFFFFF;
    if (v4 == a2)
    {
      break;
    }

    v5 = *v3;
    if (v4 >= a2)
    {
      v6 = 38;
    }

    else
    {
      v6 = 12;
    }

    v7 = v5 << v6;
    v8 = v7 >> 38;
    v2 = v7 >> 38;
    if (!v8)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t SbfType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000F7550();
  }

  return *(a2 + 15) & 0xF;
}

uint64_t SbfGetUint64(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_1000F7760();
  }

  if (!a3)
  {
    sub_1000F7734();
  }

  v3 = *(a2 + 15) & 0xF;
  if ((v3 - 5) < 0xFFFFFFFE)
  {
    return 22;
  }

  v4 = *(a2 + 24);
  if (v3 == 3 && v4 < 0)
  {
    return 22;
  }

  result = 0;
  *a3 = v4;
  return result;
}

uint64_t SbfGetBoolean(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (!a2)
  {
    sub_1000F7600();
  }

  if (!a3)
  {
    sub_1000F75D4();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x200000000000000)
  {
    return 22;
  }

  result = 0;
  *a3 = *(a2 + 24) != 0;
  return result;
}

uint64_t uaps::PackState::encodeAttribute(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, size_t a5, unint64_t a6, int a7)
{
  v13 = a2[1];
  result = uaps::PackState::encodeKey(a1, a2, a4, a5);
  if (result)
  {
    sub_100008D98("KEY", v13, a2[1]);
    v15 = a2[1];
    result = uaps::PackState::encodeValue(a1, a2, a3, a6);
    if (result)
    {
      sub_100008D98("VALUE", v15, a2[1]);
      if (a7 && SbfCount(a6) < 0)
      {
        if (*a2 > v15 || (v16 = a2[1], v16 < v15))
        {
          sub_1000E8074();
        }

        uaps::PackState::indexEncodedValue(a1, a2, v13, v15, v16 - v15);
      }

      v17 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        v18 = *a4;
        v19[0] = 67109888;
        v19[1] = v18;
        v20 = 2048;
        v21 = sub_1000E7758(a2, v13);
        v22 = 2048;
        v23 = sub_1000E7758(a2, v15);
        v24 = 2048;
        v25 = sub_1000E7730(a2, v15);
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "-- key [%02x...] @ %zu, %zu+%zu", v19, 0x26u);
      }

      sub_100008D98("ATTRIBUTE", v13, a2[1]);
      return 1;
    }
  }

  return result;
}

uint64_t uaps::PackState::encodeKey(uint64_t a1, uint64_t a2, unsigned __int8 *a3, size_t a4)
{
  if (a4 - 65 <= 0xFFFFFFFFFFFFFFBFLL)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9F88();
    }

    *(a1 + 32) = 1;
    v5 = "ErrorCode::KEY_INVALID - Invalid Key size";
LABEL_5:
    *(a1 + 40) = v5;
    uaps::PackState::_reportError(a1);
    return 0;
  }

  v11 = a4 - 1;
  if (a4 != 1 || *a3 > 0xFu)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9E08(a3);
    }

    v12 = uaps::LookUpTable::lookup(*(a1 + 8), a3, a4);
    if ((v12 & 0x80000000) != 0)
    {
      uaps::LookUpTable::addFirst(*(a1 + 8), a3, a4);
      uaps::PackState::encodePrefixInteger(a2, 16, v11, 4u);
      sub_1000087F8(a2, a3, a4);
      return 1;
    }

    if (v12 < 0x20)
    {
      v13 = v12 | 0x20;
      v6 = 1;
      sub_1000087F8(a2, &v13, 1uLL);
      return v6;
    }

    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9E84();
    }

    *(a1 + 32) = 6;
    v5 = "ErrorCode::INTERNAL_ERROR - Lookup returned invalid key index > 32";
    goto LABEL_5;
  }

  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E9F10();
  }

  v6 = 1;
  sub_1000087F8(a2, a3, 1uLL);
  return v6;
}

void sub_100008D98(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v5 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = a1;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = a3 - a2;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "START BUFFER %s @ %p,%ld:", buf, 0x20u);
    if (a3 > a2)
    {
      v6 = a2;
      do
      {
        v7 = *v6++;
        v8 = snprintf(buf, 0x90uLL, "%02x", v7);
        if (v6 < a3)
        {
          v9 = v8;
          v10 = 1;
          do
          {
            if ((v10 & 7) != 0)
            {
              v11 = "";
            }

            else
            {
              v11 = " ";
            }

            v12 = snprintf(&buf[v9], 144 - v9, "%s%02x", v11, a2[v10]);
            if (v12 <= 0)
            {
              sub_1000E4508();
            }

            v9 += v12;
            if (v9 >= 0x90)
            {
              sub_1000E44DC();
            }

            v13 = v10 + 1;
            if (v10 > 0x3E)
            {
              break;
            }

            ++v10;
          }

          while (&a2[v13] < a3);
          v6 = &a2[v13];
        }

        v14 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          *v16 = 136315394;
          v17 = a1;
          v18 = 2080;
          v19 = buf;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "BUFFER %s [%s]", v16, 0x16u);
        }

        a2 = v6;
      }

      while (v6 < a3);
    }
  }
}

uint64_t uaps::PackState::encodeValue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = SbfType(a3, a4);
  v9 = 1;
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 != 7)
      {
        if (v8 == 8)
        {
          v23 = SbfStringLength(a3, a4);
          v24 = v23 - 1;
          if (v23 < 1)
          {
            v25 = "";
            v26 = a2;
            v27 = 0;
          }

          else
          {
            *buf = 0;
            SbfStringPtr(a3, a4, buf);
            v25 = *buf;
            v26 = a2;
            v27 = v24;
          }

          sub_100012E3C(v26, v25, v27);
        }

        else
        {
          if (v8 != 9)
          {
            return v9;
          }

          *buf = 0;
          SbfBlobPtr(a3, a4, buf);
          v12 = SbfBlobSize(a3, a4);
          v13 = *buf;
          v14 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
          if (v12)
          {
            if (v14)
            {
              sub_1000EA3B4(v13);
            }

            uaps::PackState::encodePrefixInteger(a2, 0, v12, 6u);
            v15 = a2;
            v16 = v13;
            v17 = v12;
          }

          else
          {
            if (v14)
            {
              sub_1000EA430();
            }

            v42 = 0;
            v16 = &v42;
            v15 = a2;
            v17 = 1;
          }

          sub_1000087F8(v15, v16, v17);
        }

        return 1;
      }

      v21 = SbfCount(a4);
      v22 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = v21;
        *&buf[8] = 2048;
        *&buf[10] = SbfDepth(a3, a4);
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "ARRAY with %d items (%zu)", buf, 0x12u);
        if ((v21 & 0x8000000000000000) == 0)
        {
LABEL_39:
          if (SbfDepth(a3, a4) >= 6)
          {
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              sub_1000EA1B8();
            }

            *(a1 + 32) = 3;
            v11 = "ErrorCode::MAX_DEPTH_EXCEEDED - array is too deep";
            goto LABEL_84;
          }

          if (v21 >= 0x401)
          {
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              sub_1000EA12C();
            }

            *(a1 + 32) = 2;
            v11 = "ErrorCode::VALUE_INVALID - array is too large";
            goto LABEL_84;
          }

          uaps::PackState::encodePrefixInteger(a2, 208, v21, 4u);
          if (v21)
          {
            v38 = 0;
            v39 = v21 - 1;
            do
            {
              v40 = SbfIndexToAtom(a3, a4, v38);
              v9 = uaps::PackState::encodeValue(a1, a2, a3, v40);
              if (!v9)
              {
                break;
              }

              v37 = v39 == v38++;
            }

            while (!v37);
            return v9;
          }

          return 1;
        }
      }

      else if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      sub_1000EA244();
    }

    if (v8 == 5)
    {
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000EA0A0();
      }

      *(a1 + 32) = 2;
      v11 = "ErrorCode::VALUE_INVALID - invalid number";
      goto LABEL_84;
    }

    v18 = SbfCount(a4);
    v19 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v18;
      *&buf[8] = 2048;
      *&buf[10] = SbfDepth(a3, a4);
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "DICTIONARY with %d children (%zu)", buf, 0x12u);
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((v18 & 0x8000000000000000) == 0)
    {
LABEL_23:
      if (SbfDepth(a3, a4) >= 6)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EA2FC();
        }

        *(a1 + 32) = 3;
        v11 = "ErrorCode::MAX_DEPTH_EXCEEDED - dictionary is too deep";
        goto LABEL_84;
      }

      uaps::PackState::encodePrefixInteger(a2, 192, v18, 4u);
      if (v18)
      {
        v28 = 0;
        while (1)
        {
          v29 = SbfIndexToAtom(a3, a4, v28);
          v30 = SbfNamePtr(a3, v29);
          if (!v30)
          {
            break;
          }

          v31 = v30;
          if (strlen(v30) - 1 >= 0x40)
          {
            break;
          }

          v32 = libuaps_logger;
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v31;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "- key %p", buf, 0xCu);
            v32 = libuaps_logger;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            *&buf[4] = v31;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "- key '%s'", buf, 0xCu);
          }

          v33 = *(a1 + 24);
          if (v33)
          {
            do
            {
              v34 = *v33;
              v35 = *v33 != 0;
              if (!*v33)
              {
                break;
              }

              ++v33;
            }

            while (strcmp(v31, v34));
          }

          else
          {
            v35 = 0;
          }

          v36 = strlen(v31);
          v9 = uaps::PackState::encodeAttribute(a1, a2, a3, v31, v36, v29, v35);
          ++v28;
          if (v9)
          {
            v37 = v28 == v18;
          }

          else
          {
            v37 = 1;
          }

          if (v37)
          {
            return v9;
          }
        }

        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EA270();
        }

        *(a1 + 32) = 2;
        v11 = "ErrorCode::VALUE_INVALID - dictionary has invalid key";
        goto LABEL_84;
      }

      return 1;
    }

    sub_1000EA388();
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *buf = 0;
      SbfGetInt64(a3, a4, buf);
    }

    else
    {
      *buf = 0;
      SbfGetUint64(a3, a4, buf);
      if (!a2)
      {
        sub_1000EA4A8();
      }
    }

    sub_1000096DC(a2, *buf);
    return 1;
  }

  if (v8 < 2)
  {
    v10 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = SbfType(a3, a4);
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SUPPRESSED ILLEGAL TYPE %d", buf, 8u);
      v10 = libuaps_logger;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EA014();
    }

    *(a1 + 32) = 2;
    v11 = "ErrorCode::VALUE_INVALID - illegal atom type";
LABEL_84:
    *(a1 + 40) = v11;
    uaps::PackState::_reportError(a1);
    return 0;
  }

  if (v8 == 2)
  {
    v42 = 0;
    SbfGetBoolean(a3, a4, &v42);
    if (v42)
    {
      v20 = -31;
    }

    else
    {
      v20 = -32;
    }

    buf[0] = v20;
    v9 = 1;
    sub_1000087F8(a2, buf, 1uLL);
  }

  return v9;
}

void *sub_1000096DC(uint64_t a1, uint64_t a2)
{
  if (a2 > 0x1F)
  {
    v7 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v13 = a2;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "NUMBER %lld", buf, 0xCu);
      v7 = libuaps_logger;
    }

    if (a2 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = -a2;
    }

    if (a2 >= 0)
    {
      v9 = 160;
    }

    else
    {
      v9 = 168;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *v13 = v9;
      *&v13[4] = 2048;
      *&v13[6] = v8;
      *&v13[14] = 2048;
      *&v13[16] = v8;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, " -- mask %02x v 0x%llx/%llu", buf, 0x1Cu);
      v7 = libuaps_logger;
    }

    v10 = 0;
    while (1)
    {
      v14[v10 + 7] = v8;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        *v13 = v10 + 7;
        *&v13[4] = 1024;
        *&v13[6] = v8;
        *&v13[10] = 2048;
        *&v13[12] = v8 >> 8;
        *&v13[20] = 2048;
        *&v13[22] = v8 >> 8;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, " -- b[%d] %02x value 0x%llx/%llu", buf, 0x22u);
        v7 = libuaps_logger;
      }

      if (v8 < 0x100)
      {
        break;
      }

      --v10;
      v8 >>= 8;
      if (v10 == -8)
      {
        sub_1000EAA08();
      }
    }

    buf[0] = v9 - v10;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EAA34();
    }

    sub_1000087F8(a1, buf, 1uLL);
    v6 = 1 - v10;
    v4 = &v14[v10 + 7];
    v5 = a1;
  }

  else
  {
    buf[0] = a2 | 0x80;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EAAB0();
    }

    v4 = buf;
    v5 = a1;
    v6 = 1;
  }

  return sub_1000087F8(v5, v4, v6);
}

uint64_t SbfBlobPtr(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_1000F7AFC();
  }

  if (!a3)
  {
    sub_1000F7AD0();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x900000000000000)
  {
    return 22;
  }

  v3 = *(a2 + 24) << 6;
  if (!v3)
  {
    return 22;
  }

  result = 0;
  *a3 = a2 + 32 * (v3 >> 6) + 8;
  return result;
}

void *uaps::PackState::encodePrefixInteger(uint64_t a1, char a2, unint64_t a3, unsigned int a4)
{
  if (a4 >= 9)
  {
    sub_1000E9DDC();
  }

  v5 = 0xFFu >> (8 - a4);
  v6 = a3 - v5;
  if (a3 >= v5)
  {
    v11 = v5 | a2;
    sub_1000087F8(a1, &v11, 1uLL);
    if (v6 >= 0x80)
    {
      do
      {
        v11 = v6 | 0x80;
        sub_1000087F8(a1, &v11, 1uLL);
        v8 = v6 >> 7;
        v9 = v6 >= 0x4000;
        v6 >>= 7;
      }

      while (v9);
    }

    else
    {
      LOBYTE(v8) = v6;
    }

    v11 = v8;
    v7 = &v11;
  }

  else
  {
    v12 = a3 | a2;
    v7 = &v12;
  }

  return sub_1000087F8(a1, v7, 1uLL);
}

void sub_100009AB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  APSGetEnableCriticalReliability();
  [v4 enableCriticalReliability];
  APSInsertBoolsToXPCDictionary();
}

uint64_t SbfBlobSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000F7C30();
  }

  if (!a2)
  {
    sub_1000F7C04();
  }

  if ((*(a2 + 8) & 0xF00000000000000) == 0x900000000000000)
  {
    return *(a2 + 28);
  }

  *(a1 + 92) = 22;
  return -1;
}

uint64_t sub_100009BA0(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 5;
  return result;
}

uint64_t SbfReset(uint64_t a1)
{
  if (!a1)
  {
    sub_1000FD20C();
  }

  v2 = *(a1 + 60);
  if (v2)
  {
    return 30;
  }

  if (*(a1 + 72) != 1 || *a1)
  {
    return 22;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 8);
  v6 = *(v5 + 20);
  sub_100009C64(a1, 0, v5, *(v5 + 12));
  *(a1 + 60) = v2;
  *(a1 + 48) = v4;
  v7 = *(a1 + 8);
  v7[5] = v6;
  SbfFree(a1, v7 + 16, v6 - v7[4]);
  return 0;
}

uint64_t sub_100009C64(uint64_t a1, _OWORD *a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    sub_1000FCFFC();
  }

  if (a2)
  {
    if (a1 == a2)
    {
      *a1 = 0;
      *(a1 + 72) = 1;
    }

    else
    {
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      v7 = a2[2];
      v8 = a2[3];
      v9 = a2[5];
      *(a1 + 64) = a2[4];
      *(a1 + 80) = v9;
      *(a1 + 32) = v7;
      *(a1 + 48) = v8;
    }

    *(a1 + 16) = a3 + 32;
  }

  else
  {
    if (!a3)
    {
      sub_1000FCFD0();
    }

    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a1 = 0;
    *(a1 + 16) = a3 + 32;
    *(a3 + 40) &= 0xF0FFFFFFFFFFFFFFLL;
    *(a1 + 72) = 1;
    *a3 = 0x64DDAFAD00;
    *(a3 + 12) = a4;
    *(a3 + 16) = 64;
  }

  result = SbfClearImportContext(a1);
  *(a1 + 8) = a3;
  return result;
}

uint64_t SbfClearImportContext(uint64_t result)
{
  if (!result)
  {
    sub_1000F8940();
  }

  *(result + 79) = 0;
  *(result + 80) = "";
  *(result + 88) = 0;
  return result;
}

void *SbfFree(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (!a1)
  {
    sub_1000F73C4();
  }

  v21 = 0;
  result = SbfDomOwner(a1, &v21);
  if (v21 == 1)
  {
    *(a1 + 92) = 30;
    return result;
  }

  v7 = result[1];
  if (v7 >= a2 || (v7 + v7[5]) <= a2)
  {
    sub_1000F736C();
  }

  v8 = v7 + 7;
  v9 = v7[7];
  v10 = a2 - v7;
  v11 = (v7 + v9);
  *a2 = 0;
  a2[1] = a3;
  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_11:
    LODWORD(v15) = *v8;
LABEL_12:
    *a2 = v15;
    *v8 = v10;
    v13 = v7[6] + 1;
LABEL_13:
    v7[6] = v13;
  }

  else
  {
    v14 = 0;
    LODWORD(v15) = *v8;
    while (v10 + a3 != v15)
    {
      if (v14)
      {
        v16 = 0;
        goto LABEL_31;
      }

      v14 = v11;
      if (v11[1] + v15 != v10)
      {
        if (v15 > v10)
        {
          goto LABEL_12;
        }

        v14 = 0;
      }

      v16 = 0;
      v8 = v11;
      v15 = *v11;
      if (v15)
      {
        v11 = (v7 + v15);
        if ((v7 + v15))
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v16 = v11;
LABEL_26:
    if (v14)
    {
LABEL_31:
      v17 = 0;
      a3 += v14[1];
      v14[1] = a3;
      a2 = v14;
      if (!v16)
      {
LABEL_28:
        if (v17)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v17 = 1;
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    v18 = *v16;
    v19 = a3 + v16[1];
    *a2 = v18;
    a2[1] = v19;
    if (v8 != a2)
    {
      *v8 = v10;
    }

    if ((v17 & 1) == 0)
    {
      v20 = v7[6];
      if (!v20)
      {
        sub_1000F7398();
      }

      v13 = v20 - 1;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (!*a2)
  {
    v7[4] = a2 - v7 + 8;
  }

  return result;
}

void *SbfDomOwner(uint64_t *a1, _BYTE *a2)
{
  if (!a1)
  {
    sub_1000FD2E8();
  }

  v2 = a1;
  if (a2)
  {
    *a2 = 0;
  }

  do
  {
    while (1)
    {
      result = v2;
      if (a2)
      {
        break;
      }

      v2 = *v2;
      if (!*result)
      {
        return result;
      }
    }

    if (*(v2 + 60))
    {
      *a2 = 1;
    }

    v2 = *v2;
  }

  while (*result);
  if (*(result[1] + 8))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_100009F50(size_t a1, uint64_t a2, char *a3, unsigned int a4, unint64_t a5)
{
  __s = a3;
  v30 = a2;
  if (!a1)
  {
    sub_1000F85D0();
  }

  v8 = a2;
  if (!a2)
  {
    v8 = SbfRoot(a1);
    v30 = v8;
  }

  v10 = *(v8 + 15);
  v11 = v10 & 0xF;
  if (!a3 && v11 == 6)
  {
    v8 = 0;
    *(a1 + 92) = 22;
    return v8;
  }

  v12 = SbfRoot(a1);
  if ((v10 & 0xE) != 6 && v8 == v12)
  {
    v15 = sub_10000A314(a1, v8, a4);
    if (v15)
    {
      goto LABEL_18;
    }

    *(v8 + 8) = *(v8 + 8) & 0xF0FFFFFFFFFFFFFFLL | ((a4 & 0xF) << 56);
    if ((a4 & 0xFFFFFFFE) == 6)
    {
      *(v8 + 24) = 0;
      return v8;
    }

    if (a4 >= 8 && !sub_1000F6838(a1, v8, a5, 1))
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 92) = 0;
    v14 = sub_10000A4D4(a1, &v30, &__s, 1);
    if (v14)
    {
      v8 = v14;
      v15 = sub_10000A314(a1, v14, a4);
      if (!v15)
      {
        v16 = *(v8 + 8);
        v17 = HIBYTE(v16) & 0xF;
        *(v8 + 8) = v16 & 0xF0FFFFFFFFFFFFFFLL | ((a4 & 0xF) << 56);
        if (a4 <= 5)
        {
          if ((HIBYTE(v16) & 0xE) == 6)
          {
            v18 = *(a1 + 32);
            if (v18)
            {
              v18(a1, 2, v8, *(a1 + 40));
            }

            goto LABEL_36;
          }

          if (v17 >= 6)
          {
LABEL_36:
            v21 = *(v8 + 24) << 6;
            if (v21)
            {
              SbfFree(a1, (v8 + 32 * (v21 >> 6)), (*(v8 + 32 * (v21 >> 6)) + 39) & 0xFFFFFFE0);
            }
          }

LABEL_51:
          if (__s)
          {
            v26 = strlen(__s);
          }

          else
          {
            v26 = 0;
          }

          sub_10000AB8C(a1, v30, v8, __s, v26);
          return v8;
        }

        if (a4 < 8)
        {
          if ((v17 - 8) > 0xFFFFFFFD)
          {
            if (a4 == 7)
            {
              sub_1000F7004(a1, v8, 0);
            }

            goto LABEL_51;
          }

          *(v8 + 24) = 0;
          goto LABEL_40;
        }

        v20 = *v8;
        v28 = *(v8 + 16);
        if (v17 <= 7)
        {
          *(v8 + 24) = 0;
        }

        if (sub_1000F6838(a1, v8, a5, 1))
        {
          if ((HIBYTE(v16) & 0xE) != 6)
          {
            goto LABEL_51;
          }

LABEL_40:
          v22 = *(a1 + 32);
          if (v22)
          {
            v22(a1, 2, v8, *(a1 + 40));
          }

          goto LABEL_51;
        }

        *v8 = v20;
        *(v8 + 8) = v16;
        *(v8 + 16) = v28;
        return 0;
      }

LABEL_18:
      v8 = 0;
      *(a1 + 92) = v15;
      return v8;
    }

    if ((*(a1 + 92) | 2) != 2)
    {
      return 0;
    }

    *(a1 + 92) = 0;
    if (v11 == 7)
    {
      v19 = 32;
    }

    else if (__s)
    {
      v19 = (strlen(__s) & 0xFFFFFFFFFFFFFFE0) + 64;
    }

    else
    {
      v19 = 64;
    }

    if (a5)
    {
      v23 = (a5 + 39) & 0xFFFFFFFFFFFFFFE0;
    }

    else
    {
      v23 = 0;
    }

    v24 = SbfAlloc(a1, v19 + v23);
    v8 = v24;
    if (v24)
    {
      *v24 = 0u;
      *(v24 + 1) = 0u;
      if (v23)
      {
        v24[6] = v24[6] & 0xFC000000 | (v19 / 32) & 0x3FFFFFF;
        v24[7] = a5;
        v25 = (v19 / 32) << 6;
        if (v25)
        {
          v24[8 * (v25 >> 6)] = v23 - 8;
        }
      }

      *(v24 + 1) = *(v24 + 1) & 0xF0FFFFFFFFFFFFFFLL | ((a4 & 0xF) << 56);
      goto LABEL_51;
    }
  }

  return v8;
}

void *SbfAddObject(size_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    sub_1000F86D8();
  }

  v4 = sub_100009F50(a1, a2, a3, 6u, 0);
  if (v4)
  {
    sub_10000A3E0(a1, v4);
  }

  return v4;
}

uint64_t SbfRoot(uint64_t a1)
{
  if (!a1)
  {
    sub_1000FB990();
  }

  return *(a1 + 16);
}

uint64_t sub_10000A314(uint64_t a1, unint64_t a2, int a3)
{
  result = SbfCheckAtom(a1, a2);
  if (!result)
  {
    if (*(a1 + 60))
    {
      return 30;
    }

    else
    {
      v7 = (*(a2 + 15) & 0xF) != a3 && (*(a2 + 15) & 0xE) == 6;
      if (v7 && (*(a2 + 28) & 0xFFFFFF) != 0)
      {
        return 22;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SbfCheckAtom(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1000FD4A0();
  }

  if (*(a1 + 16) > a2)
  {
    return 79;
  }

  v3 = *(*(a1 + 8) + 16) + *(a1 + 8);
  result = 79;
  if (v3 > a2)
  {
    if (((*(a2 + 8) >> 57) & 7uLL) >= 5)
    {
      return 79;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A3E0(uint64_t result, void *a2)
{
  if (!result)
  {
    sub_1000F83EC();
  }

  if (!a2)
  {
    sub_1000F83C0();
  }

  v3 = result;
  if (*a2 >> 52 != 4095)
  {
    *a2 += 0x10000000000000;
  }

  if ((*(result + 60) & 0x10) == 0)
  {
    v4 = *(result + 24);
    if (!v4)
    {
      v4 = atomic_fetch_add(&dword_1001C0238, 1u) + 1;
    }

    v5 = a2;
    do
    {
      if (v5[2] >= v4)
      {
        break;
      }

      if (v5 != a2 && *v5 >> 52 != 4095)
      {
        *v5 += 0x10000000000000;
      }

      v5[2] = v4;
      v6 = v5[1];
      if ((v6 & 0x2000000000000000) != 0)
      {
        v7 = *(v3 + 32);
        if (v7)
        {
          result = v7(v3, 0, v5, *(v3 + 40));
          v6 = v5[1];
        }
      }

      v5 -= 4 * (v6 << 38 >> 38);
    }

    while (v6 << 38);
  }

  return result;
}

uint64_t *sub_10000A4D4(uint64_t a1, unint64_t *a2, char **a3, int a4)
{
  if (a1)
  {
    v8 = *(a1 + 74);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  if (!*a2)
  {
    sub_1000F7524();
  }

  if (a4 && (*(a1 + 60) & 1) != 0)
  {
    *(a1 + 92) = 30;
    return 0;
  }

  else
  {
    v10 = *a3;
    if (v8)
    {
      if (v10)
      {
        v11 = v8;
        v12 = strchr(*a3, v8);
        if (v12)
        {
          v13 = v12;
          if (v12 <= v10)
          {
            while (1)
            {
LABEL_14:
              v15 = *a2;
              if ((*(*a2 + 8) & 0xF00000000000000) != 0x600000000000000)
              {
                v16 = sub_10000A314(a1, *a2, 6);
                v15 = *a2;
                if (!v16)
                {
                  v17 = *(v15 + 8);
                  if ((v17 & 0xE00000000000000uLL) >= 0x500000000000001)
                  {
                    v18 = *(v15 + 24) << 6;
                    if (v18)
                    {
                      SbfFree(a1, (v15 + 32 * (v18 >> 6)), (*(v15 + 32 * (v18 >> 6)) + 39) & 0xFFFFFFE0);
                      v17 = *(v15 + 8);
                    }
                  }

                  v19 = *(v15 + 31) << 24;
                  *(v15 + 24) = 0;
                  *(v15 + 28) = v19;
                  *(v15 + 8) = v17 & 0xF0FFFFFFFFFFFFFFLL | 0x600000000000000;
                  v15 = *a2;
                }
              }

              v20 = sub_10000A7A8(a1, v15, *a3, v13 - *a3);
              if (!v20)
              {
                if (*(a1 + 92) != 2 || a4 == 0)
                {
                  return 0;
                }

                v22 = SbfAlloc(a1, ((v13 - *a3) & 0xFFFFFFFFFFFFFFE0) + 64);
                if (!v22)
                {
                  return 0;
                }

                v20 = v22;
                *v22 = 0u;
                *(v22 + 1) = 0u;
                *(v22 + 1) = *(v22 + 1) & 0xF0FFFFFFFFFFFFFFLL | 0x600000000000000;
                sub_10000AB8C(a1, *a2, v22, *a3, v13 - *a3);
              }

              *a2 = v20;
              v10 = v13 + 1;
              *a3 = v13 + 1;
              if (!v13[1])
              {
                break;
              }

              v23 = strchr(v13 + 1, v11);
              if (!v23)
              {
                break;
              }

              v13 = v23;
              if (v23 > v10)
              {
                while (*(v13 - 1) == 92)
                {
                  v24 = strchr(v13 + 1, v11);
                  v13 = v24;
                  if (v24 <= v10)
                  {
                    if (v24)
                    {
                      goto LABEL_14;
                    }

                    goto LABEL_33;
                  }
                }
              }
            }

LABEL_33:
            v9 = *a2;
          }

          else
          {
            do
            {
              if (*(v13 - 1) != 92)
              {
                goto LABEL_14;
              }

              v14 = strchr(v13 + 1, v11);
              v13 = v14;
            }

            while (v14 > v10);
            if (v14)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }

    return sub_10000A7A8(a1, v9, v10, 0);
  }
}

void *SbfAddUint64(size_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000F8680();
  }

  v6 = sub_100009F50(a1, a2, a3, 4u, 0);
  if (v6)
  {
    SbfSetUint64(a1, v6, a4);
  }

  return v6;
}

uint64_t *sub_10000A7A8(uint64_t a1, unint64_t a2, char *__str, uint64_t a4)
{
  if (!a1)
  {
    sub_1000F89F0();
  }

  if (!a2)
  {
    sub_1000F89C4();
  }

  if (!__str)
  {
    return 0;
  }

  v6 = a4;
  if (!a4)
  {
    v6 = strlen(__str);
  }

  v8 = *(a2 + 15) & 0xF;
  if (v8 != 7)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 74);
      if (*(a1 + 74))
      {
        __s2[0] = 92;
        __s2[1] = v9;
        __s2[2] = 0;
        v27 = strstr(__str, __s2) != 0;
      }

      else
      {
        v27 = 0;
      }

      LODWORD(v14) = *(a2 + 24);
      if (v14)
      {
        v15 = 0;
        v16 = &__str[v6];
        v17 = 1;
        do
        {
          if (v17)
          {
            if (v15 >= 0x1F)
            {
              sub_1000F8998();
            }

            *&__s2[4 * v15++] = v14;
            v18 = *(a2 + 32 * v14) << 38;
          }

          else
          {
            --v15;
            v19 = *&__s2[4 * v15];
            if (v19)
            {
              v10 = (a2 + 32 * v19);
            }

            else
            {
              v10 = &sbfSentinel;
            }

            if (v27)
            {
              v20 = v10 + 4;
              if (v6 >= 1)
              {
                v21 = __str + 1;
                v20 = v10 + 4;
                do
                {
                  v22 = *(v21 - 1);
                  if (v22 == *v20)
                  {
                    ++v20;
                  }

                  else
                  {
                    v23 = v22 != 92 || v21 >= v16;
                    if (v23 || *v21 != v9)
                    {
                      goto LABEL_43;
                    }
                  }

                  v23 = v21++ >= v16;
                }

                while (!v23);
              }

              if (!*v20)
              {
                return v10;
              }
            }

LABEL_43:
            v18 = *v10 << 12;
            if (!memcmp(__str, v10 + 4, v6) && !*(v10 + v6 + 32))
            {
              return v10;
            }
          }

          v14 = v18 >> 38;
          v17 = v18 >> 38 != 0;
        }

        while (v15 || v18 >> 38);
      }

      if (*__str == 91)
      {
        v24 = SbfNameAsIndex(__str, v6);
        if (v24 != 0x7FFFFFFF)
        {
          v25 = SbfIndexToAtom(a1, a2, v24);
          if (v25)
          {
            return v25;
          }
        }
      }

      v10 = 0;
      v13 = 2;
    }

    else
    {
      v10 = 0;
      v13 = 22;
    }

LABEL_52:
    *(a1 + 92) = v13;
    return v10;
  }

  v11 = SbfNameAsIndex(__str, v6);
  if (v11 == 0x7FFFFFFF)
  {
    v10 = 0;
    if ((*__str - 48) < 0xA || *__str == 45)
    {
      v13 = 34;
    }

    else
    {
      v13 = 22;
    }

    goto LABEL_52;
  }

  v10 = SbfIndexToAtom(a1, a2, v11);
  if (!v10)
  {
    v13 = 34;
    goto LABEL_52;
  }

  return v10;
}

unsigned int *SbfAlloc(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFFFFFFFE || (a2 & 0x1F) != 0)
  {
    sub_1000F7474();
  }

  if (!a1)
  {
    sub_1000F7448();
  }

  v16 = 0;
  v5 = SbfDomOwner(a1, &v16);
  if (v16)
  {
    v6 = 30;
LABEL_17:
    result = 0;
    *(a1 + 92) = v6;
  }

  else
  {
    v7 = v5[1];
    result = v7 + 7;
    while (1)
    {
      v9 = *result;
      if (!v9)
      {
        v6 = 12;
        goto LABEL_17;
      }

      v10 = result;
      result = (v7 + v9);
      v11 = *(v7 + v9 + 4);
      if (v11 == a2)
      {
        if (*result)
        {
          break;
        }
      }

      if (v11 - 8 >= a2)
      {
        v12 = (v9 + a2);
        *v10 = v12;
        v13 = (v7 + v12);
        LODWORD(v12) = result[1] - a2;
        v14 = *(v7 + v9);
        *v13 = v14;
        v13[1] = v12;
        if (!v14)
        {
          v7[4] = v13 - v7 + 8;
        }

        goto LABEL_20;
      }
    }

    *v10 = *result;
    v15 = v7[6];
    if (!v15)
    {
      sub_1000F73F0();
    }

    v7[6] = v15 - 1;
LABEL_20:
    if (result + a2 > v7 + v7[4])
    {
      sub_1000F741C();
    }
  }

  return result;
}

uint64_t sub_10000AB8C(uint64_t result, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = result;
    if (!result)
    {
      sub_1000F8A48();
    }

    if (!a2)
    {
      sub_1000F8A1C();
    }

    v8 = *(a3 + 8);
    if (v8 << 38)
    {
      v9 = a3 - 32 * (v8 << 38 >> 38);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != a2)
    {
      v12 = a3 - a2 + (a3 - a2 < 0 ? 0x1F : 0);
      v13 = v8 & 0xFFFFFFFFFC000000 | (v12 >> 5) & 0x3FFFFFF;
      *(a3 + 8) = v13;
      *(a3 + 8) = v13 & 0xFF000000FFFFFFFFLL | ((*(a2 + 28) & 0xFFFFFF) << 32);
      *(a2 + 28) = *(a2 + 28) & 0xFF000000 | (*(a2 + 28) + 1) & 0xFFFFFF;
      result = SbfTreeInsert(a2, (a2 + 24), ((2 * v12) >> 6), SbfTreeIndexCompare);
      if (a4)
      {
        if ((*(a2 + 8) & 0xF00000000000000) != 0x700000000000000)
        {
          result = strlcpy((a3 + 32), a4, a5 + 1);
          *(a3 + 8) |= 0x1000000000000000uLL;
        }
      }
    }

    v14 = *(a3 + 8);
    if ((v14 & 0xE00000000000000) == 0x600000000000000)
    {
      v15 = *(v5 + 32);
      if (v15)
      {
        v16 = v14 << 38;
        v17 = a3 - 32 * (v14 << 38 >> 38);
        if (v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v5 + 40);

        return v15(v5, 3, v18, v19);
      }
    }
  }

  return result;
}

uint64_t SbfTreeInsert(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!a1)
  {
    sub_1000FDB38();
  }

  if (!a2)
  {
    sub_1000FDB0C();
  }

  if (!a4)
  {
    sub_1000FDAE0();
  }

  v5 = (a1 + 32 * a3);
  if (!a3)
  {
    v5 = &sbfSentinel;
  }

  v6 = v5[1] & 0xFFFFFFFF03FFFFFFLL | 0x4000000;
  *v5 &= 0xFFF0000000000000;
  v5[1] = v6;
  result = sub_10000AD68(a1, *a2, a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_10000AD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!a1)
  {
    sub_1000FDB90();
  }

  if (!a4)
  {
    sub_1000FDB64();
  }

  if (!a2)
  {
    return a3;
  }

  v8 = (a1 + 32 * a2);
  v9 = a4();
  if (!v9)
  {
    return 0;
  }

  v10 = *v8;
  if (v9 < 0)
  {
    if (((v10 >> 26) & 0x3FFFFFF) == 0)
    {
      v13 = a3 & 0x3FFFFFF;
LABEL_15:
      v14 = v10 & 0xFFF0000003FFFFFFLL | ((v13 & 0x3FFFFFF) << 26);
      goto LABEL_16;
    }

    v15 = sub_10000AD68(a1, (v10 << 12) >> 38, a3, a4);
    if (v15)
    {
      v10 = *v8;
      v13 = v15 & 0x3FFFFFF;
      goto LABEL_15;
    }

    return 0;
  }

  if (!(v10 << 38))
  {
    v12 = a3 & 0x3FFFFFF;
    goto LABEL_12;
  }

  v11 = sub_10000AD68(a1, (v10 << 38) >> 38, a3, a4);
  if (!v11)
  {
    return 0;
  }

  v12 = v11 & 0x3FFFFFF;
  v10 = *v8 & 0xFFFFFFFFFC000000;
LABEL_12:
  v14 = v10 | v12;
LABEL_16:
  *v8 = v14;
  v16 = sub_10000B0D8(a1, a2);

  return sub_10000B020(a1, v16);
}

uint64_t sub_10000AE90(uint64_t a1, unint64_t a2, int a3)
{
  result = SbfCheckAtom(a1, a2);
  if (!result)
  {
    if (*(a1 + 60))
    {
      return 30;
    }

    else
    {
      v7 = *(a2 + 15) & 0xF;
      if (v7 == a3 || v7 == 0)
      {
        return 0;
      }

      else if ((v7 - 3) >= 3 || (a3 - 3) >= 3)
      {
        return 22;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SbfSetUint64(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000F8158();
  }

  if (!a2)
  {
    sub_1000F812C();
  }

  v6 = sub_10000AE90(a1, a2, 4);
  if (!v6)
  {
    a2[3] = a3;
    a2[1] = a2[1] & 0xF0FFFFFFFFFFFFFFLL | 0x400000000000000;
    sub_10000A3E0(a1, a2);
  }

  return v6;
}

void *SbfAddArray(size_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    sub_1000F8704();
  }

  v4 = sub_100009F50(a1, a2, a3, 7u, 0);
  if (v4)
  {
    sub_10000A3E0(a1, v4);
  }

  return v4;
}

unint64_t SbfTreeIndexCompare(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    sub_1000FDE50();
  }

  if (!a2)
  {
    sub_1000FDE24();
  }

  v3 = (a1 + 32 * a3);
  if (!a3)
  {
    v3 = &sbfSentinel;
  }

  return (*(a2 + 12) & 0xFFFFFF) - (*(v3 + 3) & 0xFFFFFF);
}

uint64_t sub_10000B020(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FDEA8();
  }

  if (a2)
  {
    v2 = (a1 + 32 * a2);
    v3 = *v2;
    if (((*v2 >> 26) & 0x3FFFFFF) != 0)
    {
      v4 = (v3 << 12) >> 38;
      v5 = (a1 + 32 * v4);
      if ((*v5 & 0xFFFFFFC000000) != 0)
      {
        v6 = v5[1];
        if (((v6 ^ *(v2 + 2)) & 0xFC000000) == 0)
        {
          *v2 = v3 & 0xFFF0000003FFFFFFLL | ((*v5 & 0x3FFFFFF) << 26);
          v7 = *v5 & 0xFFFFFFFFFC000000 | a2 & 0x3FFFFFF;
          *v5 = v7;
          v5[1] = v6 & 0xFFFFFFFF03FFFFFFLL | ((((v6 + 0x4000000) >> 24) >> 2) << 26);
          if (((v7 >> 26) & 0x3FFFFFF) != 0)
          {
            *v5 = *v5 & 0xFFF0000003FFFFFFLL | ((sub_10000B020() & 0x3FFFFFF) << 26);
          }

          return v4;
        }
      }
    }
  }

  return a2;
}

uint64_t sub_10000B0D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FDE7C();
  }

  v2 = a2;
  if (a2)
  {
    v3 = a1 + 32 * a2;
    v4 = *v3;
    v5 = *v3 << 38;
    if (v5)
    {
      v6 = a1 + (v5 >> 33);
      if (((*(v3 + 8) ^ *(v6 + 8)) & 0xFC000000) == 0)
      {
        v2 = v5 >> 38;
        *v3 = v4 & 0xFFFFFFFFFC000000 | (*v6 >> 26) & 0x3FFFFFFLL;
        v4 = *v6 & 0xFFF0000003FFFFFFLL | ((a2 & 0x3FFFFFF) << 26);
        *v6 = v4;
        v3 = a1 + (v5 >> 33);
      }

      if (((v4 >> 26) & 0x3FFFFFF) != 0)
      {
        *v3 = *v3 & 0xFFF0000003FFFFFFLL | ((sub_10000B0D8() & 0x3FFFFFF) << 26);
      }
    }
  }

  return v2;
}

void *SbfAddBoolean(size_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (!a1)
  {
    sub_1000F8628();
  }

  v6 = sub_100009F50(a1, a2, a3, 2u, 0);
  if (v6)
  {
    SbfSetBoolean(a1, v6, a4);
  }

  return v6;
}

uint64_t SbfSetBoolean(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a1)
  {
    sub_1000F80A8();
  }

  if (!a2)
  {
    sub_1000F807C();
  }

  v6 = sub_10000AE90(a1, a2, 2);
  if (!v6)
  {
    a2[3] = a3;
    a2[1] = a2[1] & 0xF0FFFFFFFFFFFFFFLL | 0x200000000000000;
    sub_10000A3E0(a1, a2);
  }

  return v6;
}

uint64_t *sub_10000B250(uint64_t *a1, char a2, uint64_t a3, int a4)
{
  v10 = a2;
  if (!*(*a1 + 488))
  {
    if (sub_10000B3E4(a1, 8uLL))
    {
      v7 = *a1;
      sub_10000B360(__p, 1);
      sub_10000BA24(v7, (a1 + 2), __p, a3, a4);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_10000B2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000B310(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100016C08();
}

void *sub_10000B360(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000B310(result, a2);
  }

  return result;
}

void sub_10000B3C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000B3E4(uint64_t *a1, unint64_t __val)
{
  v3 = *a1;
  if (*(*a1 + 480) < __val)
  {
    std::to_string(&v25, __val);
    v4 = std::string::insert(&v25, 0, "attribute is too large, ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v26, " > ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v24, *(*a1 + 480));
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v24;
    }

    else
    {
      v8 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v27, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_10002F1A4(v3, 5, &__str);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    v12 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_19;
  }

  v13 = __val + a1[5] + 3;
  a1[5] = v13;
  if (v13 <= *(v3 + 472))
  {
    return 1;
  }

  std::to_string(&v25, v13);
  v14 = std::string::insert(&v25, 0, "frame is too large, ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v26, " > ");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v24, *(*a1 + 472));
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v24;
  }

  else
  {
    v18 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v24.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v27, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_10002F1A4(v3, 4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = __p.__r_.__value_.__r.__words[0];
LABEL_19:
    operator delete(v12);
  }

LABEL_20:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10000B618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000B6B8(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_100016C08();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_10000B7A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *a4 = *(a2 + 8) - *a2;
  v7 = *a3;
  v8 = *(a3 + 8) - *a3;
  if (v8 - 1 >= 0x40)
  {
    std::to_string(&v23, v8);
    v12 = std::string::insert(&v23, 0, "key has invalid length ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_10002F1A4(a1, 1, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v14 = v23.__r_.__value_.__r.__words[0];
    goto LABEL_9;
  }

  v11 = *(a3 + 8) != *a3;
  if (v8 != 1 || *v7 > 0xFu)
  {
    v15 = sub_10000C4EC(a1, a3);
    if ((v15 & 0x80000000) != 0)
    {
      sub_10000C604(a1, a3);
      sub_10000BE58(a2, 16, ~*a3 + *(a3 + 8), 4);
      sub_1000137C4(a2, *(a2 + 8), *a3, *(a3 + 8), *(a3 + 8) - *a3);
      goto LABEL_20;
    }

    if (v15 < 0x20)
    {
      v23.__r_.__value_.__s.__data_[0] = v15 | 0x20;
      sub_10000B6B8(a2, &v23);
      goto LABEL_20;
    }

    std::to_string(&v21, v15);
    v16 = std::string::insert(&v21, 0, "key index ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v23, " is greater than 32");
    v19 = *&v18->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    sub_10002F1A4(a1, 6, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v14 = v21.__r_.__value_.__r.__words[0];
LABEL_9:
    operator delete(v14);
    return 0;
  }

  sub_10000B6B8(a2, v7);
LABEL_20:
  *a5 = *(a2 + 8) - *a2;
  return 1;
}

void sub_10000B9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = 0;
  v13 = 0;
  v9 = sub_10000B7A8(a1, a2, a3, &v13, &v12);
  v10 = v9;
  if (v9)
  {
    sub_10000BAA4(v9, a2, a4);
    if (a5)
    {
      sub_10000C1A4(a1, a2, v13, v12);
    }
  }

  return v10;
}

void sub_10000BAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 0x1F)
  {
    v4 = 0;
    if (a3 >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = -a3;
    }

    if (a3 >= 0)
    {
      v6 = -96;
    }

    else
    {
      v6 = -88;
    }

    while (1)
    {
      v9[v4 + 7] = v5;
      if (v5 < 0x100)
      {
        break;
      }

      v5 >>= 8;
      if (--v4 == -8)
      {
        v7 = 8;
        goto LABEL_13;
      }
    }

    v7 = -v4;
LABEL_13:
    v8 = v7 | v6;
    sub_10000B6B8(a2, &v8);
    sub_1000118AC(a2, *(a2 + 8), &v9[-v7 + 7], &v10, &v10 - &v9[-v7 + 7]);
  }

  else
  {
    v9[0] = a3 | 0x80;
    sub_10000B6B8(a2, v9);
  }
}

void *SbfAddBlob(size_t a1, uint64_t a2, char *a3, void *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_1000F880C();
  }

  return sub_10000BBC4(a1, a2, a3, 9u, a4, a5);
}

void *sub_10000BBC4(size_t a1, uint64_t a2, char *a3, unsigned int a4, void *a5, unint64_t a6)
{
  if (!a1)
  {
    sub_1000F8788();
  }

  v10 = sub_100009F50(a1, a2, a3, a4, a6);
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 24);
    v13 = v12 << 6;
    v14 = (v10 + 32 * (v12 << 38 >> 38));
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    sub_10000BC58(v15, 0, a5, a6, a4 == 8);
    sub_10000A3E0(a1, v11);
  }

  return v11;
}

int *sub_10000BC58(int *result, unsigned int a2, void *__src, size_t a4, unsigned int a5)
{
  if (result && a4)
  {
    if (!__src)
    {
      sub_1000F8394();
    }

    v5 = *result;
    v6 = *result - a2;
    if (v6 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = v5 - a2;
    }

    if (v5 == a2)
    {
      v8 = result + a2 + 8;

      return memcpy(v8, __src, v7);
    }

    else
    {
      if (v6 >= a4)
      {
        v9 = a5;
      }

      else
      {
        v9 = 0;
      }

      v10 = result + a2 + 8;
      result = memcpy(v10, __src, v7 - v9);
      if (v9 == 1)
      {
        v10[v7 - 1] = 0;
      }
    }
  }

  return result;
}

uint64_t *sub_10000BD08(uint64_t *a1, char a2, _BYTE *a3, unint64_t __val, int a5)
{
  v12 = a2;
  if (!*(*a1 + 488))
  {
    if (sub_10000B3E4(a1, __val))
    {
      v9 = *a1;
      sub_10000B360(__p, 1);
      sub_10000BDD0(v9, (a1 + 2), __p, a3, __val, a5);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_10000BDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000BDD0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unint64_t a5, int a6)
{
  v14 = 0;
  v15 = 0;
  v11 = sub_10000B7A8(a1, a2, a3, &v15, &v14);
  v12 = v11;
  if (v11)
  {
    sub_10000BF00(v11, a2, a4, a5);
    if (a6)
    {
      sub_10000C1A4(a1, a2, v15, v14);
    }
  }

  return v12;
}

void sub_10000BE58(uint64_t a1, char a2, unint64_t a3, char a4)
{
  v5 = 0xFFu >> (8 - a4);
  v6 = a3 - v5;
  if (a3 >= v5)
  {
    v12 = v5 | a2;
    sub_10000B6B8(a1, &v12);
    if (v6 >= 0x80)
    {
      do
      {
        v10 = v6 | 0x80;
        sub_10000B6B8(a1, &v10);
        v8 = v6 >> 7;
        v9 = v6 >= 0x4000;
        v6 >>= 7;
      }

      while (v9);
    }

    else
    {
      LOBYTE(v8) = v6;
    }

    v11 = v8;
    v7 = &v11;
  }

  else
  {
    v13 = a3 | a2;
    v7 = &v13;
  }

  sub_10000B6B8(a1, v7);
}

void sub_10000BF00(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  sub_10000BE58(a2, 0, a4, 6);
  if (a4)
  {
    v7 = *(a2 + 8);

    sub_10000BF7C(a2, v7, a3, &a3[a4], a4);
  }
}

char *sub_10000BF7C(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_100016C08();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

void sub_10000C1A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = (*a2 + a4);
  if ((v6 - v7) >= 2)
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_10000C2C4(&__p, 0, v7, v6, v6 - v7);
    v10 = sub_10000C4EC(a1 + 224, &__p);
    if ((v10 & 0x80000000) != 0)
    {
      if (sub_10000C604(a1 + 224, &__p))
      {
        *(*a2 + a3) |= 0x40u;
      }
    }

    else
    {
      *(*a2 + a3) |= 0x80u;
      v11 = *(a2 + 8) - *a2;
      if (a4 <= v11)
      {
        if (a4 < v11)
        {
          *(a2 + 8) = *a2 + a4;
        }
      }

      else
      {
        sub_1000304B0(a2, a4 - v11);
      }

      sub_10000BE58(a2, 0, v10, 8);
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }
}

void sub_10000C2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10000C2C4(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_100016C08();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

uint64_t sub_10000C4EC(uint64_t a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v5 = v6 - v5 + 32 * v5;
    }

    while (v3 != v4);
  }

  v7 = sub_10000C578(a1, a2, v5);
  if (!v7)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v8 = *(v7 + 28);
  v9 = *(*(a1 + 56) + 28);
  result = (v8 - v9);
  if (v8 - v9 < 0)
  {
LABEL_10:
    v11 = 12;
    goto LABEL_11;
  }

  v11 = 8;
LABEL_11:
  ++*(*(a1 + 16) + v11);
  return result;
}

uint64_t sub_10000C578(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 8 * (a3 % 0x11) + 80);
  if (v3)
  {
    v5 = *a2;
    v6 = *(a2 + 8) - *a2;
    do
    {
      if (*(v3 + 24) == a3 && *(v3 + 8) - *v3 == v6 && !memcmp(*v3, v5, v6))
      {
        break;
      }

      v3 = *(v3 + 48);
    }

    while (v3);
  }

  return v3;
}

uint64_t sub_10000C604(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), a1, a2);
  if (v4)
  {
    ++*(*(a1 + 16) + 4);
    (*(*a1 + 32))(a1, a2);
  }

  return v4;
}

uint64_t sub_10000C6A8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1] - *a3 + 32;
  if (v3 > *(a1 + 16))
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + 8) + v3;
    if (v6 <= *(a1 + 16))
    {
      break;
    }

    __p = 0;
    v10 = 0;
    v11 = 0;
    v7 = sub_10000C76C(a2, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  *(a1 + 8) = v6;
  **(a2 + 16) += v3;
  return 1;
}

void sub_10000C750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000C76C(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (v4)
  {
    v5 = a1[1];
    --*(a1[2] + 4);
    (*(*v5 + 24))(v5, a1, a2);
  }

  return v4;
}

uint64_t sub_10000C804(uint64_t a1, void *a2)
{
  v2 = *(a1 + 216);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 64);
  v5 = a1 + 8 * (*(v4 + 24) % 0x11u);
  v8 = *(v5 + 80);
  v6 = (v5 + 80);
  v7 = v8;
  v9 = v8;
  while (v9)
  {
    v10 = v7;
    v11 = *(v9 + 48);
    v7 = v9;
    v12 = v9 == v4;
    v9 = v11;
    if (v12)
    {
      if (v10 != v4)
      {
        v6 = (v10 + 48);
      }

      *v6 = v11;
      v14 = *(v4 + 32);
      v13 = *(v4 + 40);
      *(v14 + 40) = v13;
      *(v13 + 32) = v14;
      if (v4 != a2)
      {
        sub_10000C8F8(a2, *v4, *(v4 + 8), *(v4 + 8) - *v4);
        v2 = *(a1 + 216);
      }

      *(a1 + 216) = v2 - 1;
      v15 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v15;
        operator delete(v15);
      }

      operator delete();
    }
  }

  return 0;
}

void *sub_10000C8F8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10000B310(v6, v10);
    }

    sub_100016C08();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_10000CA20(uint64_t result, uint64_t a2, void *a3)
{
  v3 = a3[1] - *a3 + 32;
  **(a2 + 16) -= v3;
  *(result + 8) -= v3;
  return result;
}

void sub_10000CA4C(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 = v5 - v4 + 32 * v4;
    }

    while (v2 != v3);
  }

  operator new();
}

uint64_t sub_10000CB64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000B310(result, a4);
  }

  return result;
}

void sub_10000CBC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SbfDomGetSize(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    sub_1000FD4CC();
  }

  if (a3)
  {
    *a3 = *(*(a1 + 8) + 16);
  }

  if (a2)
  {
    *a2 = *(*(a1 + 8) + 12);
  }

  return 0;
}

uint64_t SbfError(uint64_t a1)
{
  if (!a1)
  {
    sub_1000FD474();
  }

  return *(a1 + 92);
}

uint64_t uaps::PackState::encodeFromSbf(uaps::PackState *this, SbfRef *a2, SbfAtom *a3, unsigned __int8 *a4, uint64_t a5, unint64_t *a6)
{
  if (!a2)
  {
    sub_1000EA938();
  }

  v9 = a3;
  *(this + 16) = 0;
  *(this + 5) = 0;
  v44 = a4;
  v45 = a4;
  v46 = &a4[a5];
  if (!a3)
  {
    v9 = SbfRoot(a2);
  }

  if (SbfCheckAtom(a2, v9))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EA6DC();
    }

    *(this + 16) = 6;
    *(this + 5) = "ErrorCode::INTERNAL_ERROR - Internal DOM root corrupt";
    uaps::PackState::_reportError(this);
    return 22;
  }

  v43 = 0;
  if (SbfGetUint64ByName(a2, v9, uaps::CourierMessage::COMMAND_KEY[0], &v43))
  {
    sub_1000EA768();
  }

  if (v43 >= 0x100)
  {
    sub_1000EA90C();
  }

  v42 = 0;
  if (SbfGetArrayByName(a2, v9, uaps::CourierMessage::ATTRIBUTE_VALUES_KEY[0], &v42))
  {
    sub_1000EA794();
  }

  v13 = SbfCount(v42);
  v41 = v43;
  sub_1000087F8(&v44, &v41, 1uLL);
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA7C0(&v41);
  }

  if ((v46 - v45) <= 8)
  {
    sub_1000EA8E0();
  }

  v39 = v45;
  __dst[0] = v45;
  __dst[1] = v45 + 8;
  *buf = 0;
  sub_1000087F8(&v44, buf, 8uLL);
  v15 = v45;
  v14 = v46;
  v36 = v45;
  v37 = v45;
  v38 = v46;
  if (v13 >= 1)
  {
    v32 = v45;
    v33 = a6;
    v34 = a5;
    v16 = 0;
    while (1)
    {
      v17 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = a4;
        *&buf[12] = 2048;
        v48 = (v37 - v36);
        *v49 = 2048;
        *&v49[2] = v38 - v37;
        v50 = 2048;
        v51 = v34;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "AB: @ %p %ld,%ld,%ld", buf, 0x2Au);
      }

      v18 = SbfIndexToAtom(a2, v42, v16);
      v19 = SbfTicks(a2, v18);
      v35 = v19;
      v20 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        v23 = SbfType(a2, v18);
        *buf = 67109890;
        v24 = "NOT indexable";
        if ((v19 & 0x100) != 0)
        {
          v24 = "INDEXABLE";
        }

        *&buf[4] = v16;
        *&buf[8] = 1024;
        *&buf[10] = v19;
        LOWORD(v48) = 1024;
        *(&v48 + 2) = v23;
        HIWORD(v48) = 2080;
        *v49 = v24;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "PACK: encode attribute %d [%u] (%d) (%s)", buf, 0x1Eu);
      }

      v21 = (v19 >> 8) & 1;
      v22 = v37;
      if (!uaps::PackState::encodeAttribute(this, &v36, a2, &v35, 1uLL, v18, v21))
      {
        return 22;
      }

      sub_100008D98("attr", v22, v37);
      if (v13 == ++v16)
      {
        v26 = v36;
        v25 = v37;
        v27 = v45;
        v14 = v46;
        v15 = v32;
        a6 = v33;
        goto LABEL_27;
      }
    }
  }

  v26 = v45;
  v25 = v45;
  v27 = v45;
LABEL_27:
  v28 = v25 - v26;
  v29 = &v27[v25 - v26];
  if (v29 > v14)
  {
    sub_1000E7D1C();
  }

  v45 = v29;
  if ((v14 - v29) != &v38[-v25])
  {
    sub_1000EA834();
  }

  uaps::PackState::encodePrefixInteger(&v39, 0, v28, 8u);
  v30 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = v37 - v36;
    *&buf[12] = 2048;
    v48 = (__dst[0] - v39);
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Wrote frame of %zu bytes, encoded frame size took %zu", buf, 0x16u);
    v30 = libuaps_logger;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA860(__dst);
  }

  memmove(__dst[0], v15, v37 - v36);
  v31 = __dst[0] - v39 + v37 - v36 + 1;
  *a6 = v31;
  sub_100008D98("packed", a4, &a4[v31]);
  return 0;
}

uint64_t *SbfSearchName(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = a3;
  v5 = a2;
  if (!a1)
  {
    sub_1000F74F8();
  }

  if (!a2)
  {
    v5 = *(a1 + 16);
  }

  return sub_10000A4D4(a1, &v5, &v4, 0);
}

uint64_t SbfGetArrayByName(uint64_t a1, unint64_t a2, char *a3, uint64_t **a4)
{
  if (!a3)
  {
    sub_1000F7D0C();
  }

  if (!a4)
  {
    sub_1000F7CE0();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  if ((v5[1] & 0xF00000000000000) != 0x700000000000000)
  {
    return 22;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t SbfGetUint64ByName(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  if (!a3)
  {
    sub_1000F77B8();
  }

  if (!a4)
  {
    sub_1000F778C();
  }

  v5 = SbfSearchName(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = *(v5 + 15) & 0xF;
  if ((v6 - 5) < 0xFFFFFFFE)
  {
    return 22;
  }

  v7 = v5[3];
  if (v6 == 3 && v7 < 0)
  {
    return 22;
  }

  result = 0;
  *a4 = v7;
  return result;
}

uint64_t SbfCount(uint64_t a1)
{
  if (!a1)
  {
    sub_1000FBA40();
  }

  if ((*(a1 + 8) & 0xE00000000000000) == 0x600000000000000)
  {
    return *(a1 + 28) & 0xFFFFFFLL;
  }

  else
  {
    return -1;
  }
}

void uaps::PackState::indexEncodedValue(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, size_t a5)
{
  v5 = a2[1];
  if (*a2 > a4 || v5 < a4)
  {
    sub_1000E8074();
  }

  if (v5 - a4 != a5)
  {
    sub_1000EA4D4();
  }

  if (a5 >= 2)
  {
    v11 = *a3;
    v12 = uaps::LookUpTable::lookup(*(a1 + 16), a4, a5);
    if ((v12 & 0x80000000) != 0)
    {
      if (*a2 > a4 || (v15 = a2[1], v15 < a4))
      {
        sub_1000E8074();
      }

      if ((uaps::LookUpTable::addFirst(*(a1 + 16), a4, v15 - a4) & 1) == 0)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EA500();
        }

        *(a1 + 32) = 11;
        *(a1 + 40) = "ErrorCode::VALUE_INDEXING_FAILED - value indexing failed";
        uaps::PackState::_reportError(a1);
      }

      v14 = v11 | 0x40;
    }

    else
    {
      if (*a2 > a4 || a2[1] < a4)
      {
        sub_1000EA58C();
      }

      v13 = v12;
      v14 = v11 | 0x80;
      a2[1] = a4;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000EA5B8();
      }

      uaps::PackState::encodePrefixInteger(a2, 0, v13, 8u);
    }

    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EA62C(a3);
    }

    *a3 = v14;
  }
}

uint64_t uaps::LookUpTable::lookup(uaps::LookUpTable *this, const unsigned __int8 *a2, size_t a3)
{
  uaps::LookUpTable::DEBUG_OP(this, "lookup");
  if (a3)
  {
    v6 = 0;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = *v7++;
      v6 = v9 - v6 + 32 * v6;
      --v8;
    }

    while (v8);
    v10 = v6 % 0x11;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + v10 + 24);
  if (v11 >= *(this + 4))
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v12 = *(this + 12) + 24 * v11;
    uaps::LookUpTable::DEBUG_ITEM(this, v12);
    if (*(v12 + 8) == a3 && !memcmp(a2, (*(this + 11) + *v12), a3))
    {
      break;
    }

    v11 = *(v12 + 20);
    if (*(this + 4) <= v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v14 = *(this + 6);
  if (v11 >= v14)
  {
    v15 = *(this + 4);
    v14 += ~v11;
  }

  else
  {
    v15 = ~v11;
  }

  return v14 + v15;
}

void sub_10000D6A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  APSGetEnableStatusNotifications();
  [v4 enableStatusChangeNotifications];
  APSInsertBoolsToXPCDictionary();
}

uint64_t uaps::LookUpTable::addFirst(uaps::LookUpTable *this, unsigned __int8 *a2, size_t a3)
{
  if (*(this + 5) < a3)
  {
    return 0;
  }

  if (*(this + 2) < a3)
  {
    return 0;
  }

  uaps::LookUpTable::DEBUG_OP(this, "add 1");
  if (uaps::LookUpTable::needEviction(this, a3))
  {
    do
    {
      uaps::LookUpTable::removeLast(this);
    }

    while ((uaps::LookUpTable::needEviction(this, a3) & 1) != 0);
  }

  sub_100008D98("lut.addFirst", a2, &a2[a3]);
  v7 = *(this + 6);
  v8 = *(this + 12) + 24 * v7;
  v9 = *(this + 4);
  *v8 = v9;
  *(v8 + 8) = a3;
  v10 = 0;
  if (a3)
  {
    v11 = a2;
    v12 = a3;
    do
    {
      v13 = *v11++;
      v10 = v13 - v10 + 32 * v10;
      --v12;
    }

    while (v12);
  }

  v14 = this + 2 * (v10 % 0x11);
  v15 = *(v14 + 24);
  *(v8 + 16) = v10;
  *(v8 + 20) = v15;
  *(v14 + 24) = v7;
  v16 = *(this + 2);
  if (v9 + a3 <= v16)
  {
    memcpy((*(this + 11) + v9), a2, a3);
    v18 = *(this + 4) + *(v8 + 8);
  }

  else
  {
    v17 = v9 + a3 - v16;
    memcpy((*(this + 11) + v9), a2, a3);
    v18 = v17;
  }

  *(this + 4) = v18;
  v19 = *(this + 6);
  if (*(this + 4) == (v19 + 1))
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 + 1;
  }

  *(this + 6) = v20;
  uaps::LookUpTable::DEBUG_ITEM(this, v8);
  *(this + 3) += *(v8 + 8);
  ++*(this + 5);
  uaps::LookUpTable::DEBUG_OP(this, "added");
  return 1;
}

uint64_t uaps::LookUpTable::needEviction(uaps::LookUpTable *this, unsigned int a2)
{
  v2 = *(this + 5);
  if (*(this + 3) + a2 + 32 * v2 + 32 > *(this + 2))
  {
    v3 = " - too many bytes";
LABEL_5:
    uaps::LookUpTable::DEBUG_OP(this, v3);
    return 1;
  }

  if (v2 == *(this + 4))
  {
    v3 = " - too many items";
    goto LABEL_5;
  }

  return 0;
}

void uaps::LookUpTable::removeLast(uaps::LookUpTable *this)
{
  v2 = *(this + 6) - *(this + 5);
  if (v2 < 0)
  {
    v2 += *(this + 4);
  }

  v3 = *(this + 12) + 24 * v2;
  uaps::LookUpTable::DEBUG_ITEM(this, v3);
  if (*(v3 + 20) != 0xFFFF)
  {
    sub_100012C74();
  }

  v4 = *(v3 + 16) % 0x11u;
  v5 = *(this + v4 + 24);
  if (v2 == v5)
  {
    *(this + v4 + 24) = -1;
  }

  else
  {
    do
    {
      v6 = *(this + 12) + 24 * v5;
      uaps::LookUpTable::DEBUG_ITEM(this, v6);
      v5 = *(v6 + 20);
    }

    while (v2 != v5);
    *(v6 + 20) = *(v3 + 20);
  }

  *(this + 3) -= *(v3 + 8);
  --*(this + 5);
  uaps::LookUpTable::DEBUG_OP(this, "removed 1");
  v7 = (*(this + 11) + *v3);
  v8 = &v7[*(v3 + 8)];

  sub_100008D98("lut.removeLast", v7, v8);
}

void sub_10000DCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10000DD04(int64x2_t **a1, uint64_t a2)
{
  v2 = (*a1)[30].i32[2];
  if (!v2)
  {
    v5 = *a2 - *(a2 + 8);
    sub_10000B6B8(a2, a1 + 8);
    sub_10000BE58(a2, 0, a1[3] - a1[2], 8);
    sub_10000C2C4(a2, *(a2 + 8), a1[2]->i8, a1[3]->i8, a1[3] - a1[2]);
    v6 = *a1;
    v7 = *(a2 + 8) - *a2 + v5;
    v8.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v8.i64[1] = a1[5];
    v6[28] = vaddq_s64((*a1)[28], v8);
    v6[29].i64[0] += v7;
    xmmword_1001C03B0 = vaddq_s64(xmmword_1001C03B0, v8);
    qword_1001C03C0 += v7;
  }

  return v2 == 0;
}

uint64_t sub_10000DE94(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_1000063DC(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 24 * v9);

      swift_beginAccess();
      v12 = *(v3 + v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_100006530(v11, a1, 257, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = v15;
      result = swift_endAccess();
      v14 = *(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion);
      if (v14 <= a1)
      {
        v14 = a1;
      }

      *(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion) = v14;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10000E014(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_1000063DC(a2);
    if (v10)
    {
      v11 = *(v8 + 56) + 24 * v9;
      v12 = *(v11 + 8);
      v13 = *(v11 + 17);

      swift_beginAccess();
      v14 = *(v3 + v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      if (v13)
      {
        v16 = 257;
      }

      else
      {
        v16 = 1;
      }

      sub_100006530(a1, v12, v16, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = v18;
      result = swift_endAccess();
      v17 = *(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion);
      if (v17 <= a1)
      {
        v17 = a1;
      }

      *(v3 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) = v17;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10000E724()
{
  v1 = v0;
  _StringGuts.grow(_:)(71);
  v2._countAndFlagsBits = 0xD000000000000015;
  v2._object = 0x8000000100157A20;
  String.append(_:)(v2);
  v15 = *(v0 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x8000000100157A40;
  String.append(_:)(v4);
  v16 = *(v0 + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._object = 0x8000000100157A60;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v7 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_1000064E4();
  sub_10000E8DC();

  v9 = Dictionary.description.getter();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

unint64_t sub_10000E8DC()
{
  result = qword_1001BD348;
  if (!qword_1001BD348)
  {
    sub_1000064E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD348);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FilterVersionStateMachine.InterfaceState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t uaps::SerialState::encodeFromSbf(uaps::SerialState *this, SbfRef *a2, SbfAtom *a3, unsigned __int8 *a4, uint64_t a5, unint64_t *a6)
{
  if (!a2)
  {
    sub_1000EB770();
  }

  v8 = a4;
  v9 = a3;
  *(this + 2) = 0;
  *(this + 1) = 0;
  v70 = a4;
  v71 = a4;
  v72 = &a4[a5];
  if (!a3)
  {
    v9 = SbfRoot(a2);
  }

  if (SbfCheckAtom(a2, v9))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EB4C8();
    }

    *(this + 2) = 3;
    *(this + 1) = "ErrorCode::INTERNAL_ERROR - Internal DOM Error";
    uaps::SerialState::_reportError(this);
    return 22;
  }

  v69 = 0;
  if (SbfGetUint64ByName(a2, v9, uaps::CourierMessage::COMMAND_KEY[0], &v69))
  {
    sub_1000EB55C();
  }

  if (v69 >= 0x100)
  {
    sub_1000EB744();
  }

  v64 = a5;
  v68 = v69;
  sub_1000087F8(&v70, &v68, 1uLL);
  v13 = v71;
  if (v71 + 4 > v72)
  {
    sub_1000E7D1C();
  }

  v71 += 4;
  v67 = 0;
  if (SbfGetArrayByName(a2, v9, uaps::CourierMessage::ATTRIBUTE_VALUES_KEY[0], &v67))
  {
    sub_1000EB588();
  }

  if (!v67)
  {
    sub_1000EB718();
  }

  v14 = SbfCount(v67);
  if (v14 > 0)
  {
    v15 = v14;
    v63 = v13;
    v65 = v8;
    v16 = 0;
    v66 = v14;
    while (1)
    {
      v17 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v65;
        *&buf[12] = 2048;
        *&buf[14] = v71 - v70;
        *&buf[22] = 2048;
        *&buf[24] = v72 - v71;
        LOWORD(v86) = 2048;
        *(&v86 + 2) = v64;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "AB: @ %p %ld,%ld,%ld", buf, 0x2Au);
      }

      v18 = SbfIndexToAtom(a2, v67, v16);
      if (!v18)
      {
        sub_1000EB6EC();
      }

      v19 = v18;
      v20 = SbfTicks(a2, v18);
      v21 = uaps::CourierMessage::describeCommandItem(*this, v68, v20);
      v22 = libuaps_logger;
      if (!v21)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v68;
          *&buf[8] = 1024;
          *&buf[10] = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Suppressing unknown attribute %u:%u", buf, 0xEu);
        }

        goto LABEL_68;
      }

      v23 = v21;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        v47 = SbfType(a2, v19);
        *buf = 67109632;
        *&buf[4] = v16;
        *&buf[8] = 1024;
        *&buf[10] = v20;
        v15 = v66;
        *&buf[14] = 1024;
        *&buf[16] = v47;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Export Attribute %d [%u] (%d)", buf, 0x14u);
      }

      v24 = v71;
      buf[0] = v20;
      sub_1000087F8(&v70, buf, 1uLL);
      v25 = SbfType(a2, v19);
      if (v25 > 4)
      {
        if (v25 <= 6)
        {
          if (v25 == 5)
          {
LABEL_46:
            v40 = libuaps_logger;
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              v41 = SbfType(a2, v19);
              *buf = 67109120;
              *&buf[4] = v41;
              _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "SUPPRESSED ILLEGAL TYPE %d", buf, 8u);
            }

            goto LABEL_66;
          }

          v33 = libuaps_logger;
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000EB5B4(&v74, v75, v33);
          }

          v90 = 0;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          memset(buf, 0, sizeof(buf));
          v73 = 0;
          v34 = v71;
          v35 = v71 + 2;
          if (v71 + 2 > v72)
          {
            sub_1000E7D1C();
          }

          v71 += 2;
          *&buf[8] = v35;
          *&buf[16] = v72 - v35;
          SbfExportPlistb(a2, v19, buf, &v73);
          v36 = v73;
          if (&v71[v73] > v72)
          {
            sub_1000E7D1C();
          }

          v71 += v73;
          if (v73 >= 0x10000)
          {
            sub_1000EB5F4();
          }

          v37 = bswap32(v73);
          v38 = HIWORD(v37);
          *v34 = HIWORD(v37);
          v39 = libuaps_logger;
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            *v78 = 67109888;
            *&v78[4] = v36;
            v79 = 1024;
            v80 = v36;
            v81 = 1024;
            v82 = v38;
            v83 = 1024;
            v84 = v38;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, " - length %04x/%u %04x/%u", v78, 0x1Au);
          }

          goto LABEL_63;
        }

        switch(v25)
        {
          case 7:
            goto LABEL_46;
          case 8:
            v43 = SbfStringLength(a2, v19);
            v44 = v43 - 1;
            if (v43 < 1)
            {
              v45 = "";
              v46 = 0;
            }

            else
            {
              *buf = 0;
              SbfStringPtr(a2, v19, buf);
              v45 = *buf;
              v46 = v44;
            }

            sub_100012EC0(&v70, v45, v46);
            break;
          case 9:
            *v78 = 0;
            SbfBlobPtr(a2, v19, v78);
            v26 = SbfBlobSize(a2, v19);
            v27 = *v78;
            v28 = libuaps_logger;
            v29 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
            if (v26)
            {
              if (v29)
              {
                v30 = *v27;
                *buf = 134218240;
                *&buf[4] = v26;
                *&buf[12] = 1024;
                *&buf[14] = v30;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "BLOB %zu [%02x...]", buf, 0x12u);
              }
            }

            else if (v29)
            {
              sub_1000EB620(v76, &v77, v28);
            }

            *buf = bswap32(v26) >> 16;
            sub_1000087F8(&v70, buf, 2uLL);
            sub_1000087F8(&v70, v27, v26);
            goto LABEL_63;
        }
      }

      else
      {
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v42 = *(v23 + 1) - 1;
            if (v42 > 4)
            {
              v32 = 0;
            }

            else
            {
              v32 = dword_10015E0F8[v42];
            }

            v73 = 0;
            SbfGetInt64(a2, v19, &v73);
            v53 = v73;
            v54 = bswap64(v73);
            *v78 = v54;
            v55 = libuaps_logger;
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              *&buf[4] = "_exportInt";
              *&buf[12] = 2048;
              *&buf[14] = v53;
              *&buf[22] = 2048;
              *&buf[24] = v53;
              LOWORD(v86) = 2048;
              *(&v86 + 2) = v54;
              v51 = v55;
              v52 = "%s: %lld - %016llx -> %016llx";
LABEL_76:
              _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, v52, buf, 0x2Au);
            }
          }

          else
          {
            v31 = *(v23 + 1) - 1;
            if (v31 > 4)
            {
              v32 = 0;
            }

            else
            {
              v32 = dword_10015E0F8[v31];
            }

            v73 = 0;
            SbfGetUint64(a2, v19, &v73);
            v48 = libuaps_logger;
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "exportUint";
              *&buf[12] = 2048;
              *&buf[14] = v73;
              _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%s: %llu", buf, 0x16u);
              v48 = libuaps_logger;
            }

            v49 = v73;
            v50 = bswap64(v73);
            *v78 = v50;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              *&buf[4] = "_exportUint";
              *&buf[12] = 2048;
              *&buf[14] = v49;
              *&buf[22] = 2048;
              *&buf[24] = v49;
              LOWORD(v86) = 2048;
              *(&v86 + 2) = v50;
              v51 = v48;
              v52 = "%s: %llu - %016llx -> %016llx";
              goto LABEL_76;
            }
          }

          *buf = v32 << 8;
          sub_1000087F8(&v70, buf, 2uLL);
          sub_1000087F8(&v70, &v79 - v32, v32);
LABEL_63:
          v15 = v66;
          goto LABEL_66;
        }

        if (v25 < 2)
        {
          goto LABEL_46;
        }

        if (v25 == 2)
        {
          LOBYTE(v73) = 0;
          SbfGetBoolean(a2, v19, &v73);
          v78[0] = v73;
          *buf = 256;
          sub_1000087F8(&v70, buf, 2uLL);
          sub_1000087F8(&v70, v78, 1uLL);
        }
      }

LABEL_66:
      v56 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        if (v70 > v24 || v72 < v24)
        {
          sub_1000EA6B0();
        }

        if (v71 < v24)
        {
          sub_1000E8074();
        }

        *buf = 67109632;
        *&buf[4] = v20;
        *&buf[8] = 2048;
        *&buf[10] = v24 - v70;
        *&buf[18] = 2048;
        *&buf[20] = v71 - v24;
        _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "-- key [%02x] @ %zu+%zu", buf, 0x1Cu);
      }

      sub_100008D98("ATTRIBUTE", v24, v71);
LABEL_68:
      v58 = v70;
      v57 = v71;
      if (v71 == v70)
      {
        sub_1000EB6C0();
      }

      if (v15 == ++v16)
      {
        v8 = v65;
        v13 = v63;
        goto LABEL_78;
      }
    }
  }

  v58 = v70;
  v57 = v71;
LABEL_78:
  v59 = (v57 - v58);
  *a6 = v57 - v58;
  v60 = v57 - v58 - 5;
  v61 = bswap32(v60);
  v62 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    *&buf[4] = v59;
    *&buf[12] = 2048;
    *&buf[14] = v60;
    *&buf[22] = 2048;
    *&buf[24] = v60;
    LOWORD(v86) = 1024;
    *(&v86 + 2) = v61;
    WORD3(v86) = 1024;
    DWORD2(v86) = v61;
    _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "total = %zu bytes: %08zx / %zu [%08x / %u]", buf, 0x2Cu);
  }

  *v13 = v61;
  if (v13 != v8 + 1)
  {
    sub_1000EB668();
  }

  if (v70 > v13 || v72 < v13)
  {
    sub_1000EA6B0();
  }

  if (v13 - v70 != 1)
  {
    sub_1000EB694();
  }

  sub_100008D98("HEADER", v8, (v8 + 5));
  return 0;
}

void sub_10000F54C(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v25 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (v25)
    {
      v13 = WeakRetained[8];
      if (v13)
      {
        [v13 appendData:?];
      }

      else
      {
        v14 = [[NSMutableData alloc] initWithData:v25];
        v15 = *(v12 + 8);
        *(v12 + 8) = v14;
      }

      v16 = [*(v12 + 8) length];
      if (v16 && ((v17 = v16, !v9) ? (is_wake_packet = 0) : (is_wake_packet = nw_content_context_get_is_wake_packet()), v19 = objc_loadWeakRetained(v12 + 4), v20 = [v19 tcpStream:*(a1 + 32) dataReceived:*(v12 + 8) isWakingMessage:is_wake_packet], v19, v20 != v17))
      {
        if (v20)
        {
          if (v20 >= v17)
          {
            v22 = v17;
          }

          else
          {
            v22 = v20;
          }

          [*(v12 + 8) replaceBytesInRange:0 withBytes:v22 length:{0, 0}];
        }
      }

      else
      {
        v21 = *(v12 + 8);
        *(v12 + 8) = 0;
      }
    }

    if (v10)
    {
      *(v12 + 123) = 1;
      v23 = nw_error_copy_cf_error(v10);
      [v12 close];
      v24 = objc_loadWeakRetained(v12 + 4);
      [v24 tcpStream:v12 errorOccured:v23 disconnectReason:19];

LABEL_21:
      goto LABEL_22;
    }

    if (a4)
    {
      [v12 close];
      v23 = objc_loadWeakRetained(v12 + 4);
      [v23 tcpStreamEndEncountered:v12 withReason:21];
      goto LABEL_21;
    }

    [v12 _receiveData];
  }

LABEL_22:
}

uint64_t uaps::PackState::decodePrefixInteger(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
    return 1;
  }

  if (v4 >= v5)
  {
    sub_1000E7900();
  }

  v8 = *v4;
  *(a1 + 8) = v4 + 1;

  return uaps::PackState::decodePrefixInteger(a1, v8, a2, a3);
}

uint64_t uaps::PackState::decodePrefixInteger(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (a3 >= 9)
  {
    sub_1000E7A08();
  }

  v7 = 0xFFu >> (8 - a3);
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E792C();
  }

  v8 = v7 & a2;
  if (v7 == v8)
  {
    v9 = 0;
    v10 = -7;
    while (1)
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      if (v11 == v12)
      {
        break;
      }

      if (v11 >= v12)
      {
        sub_1000E7900();
      }

      v14 = *v11;
      v13 = *v11;
      *(a1 + 8) = v11 + 1;
      v9 |= (v14 & 0x7F) << (v10 + 7);
      v15 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        v18 = 67109888;
        *v19 = v13;
        *&v19[4] = 1024;
        *&v19[6] = v13;
        *v20 = 2048;
        *&v20[2] = v9;
        *&v20[10] = 2048;
        *&v20[12] = v9;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, " b %02x/%u 0x%llx/%llu", &v18, 0x22u);
        if ((v13 & 0x80) == 0)
        {
LABEL_13:
          *a4 = v9 + v7;
          v16 = libuaps_logger;
          result = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            v18 = 134218496;
            *v19 = v9;
            *&v19[8] = 1024;
            *v20 = v7;
            *&v20[4] = 2048;
            *&v20[6] = v9 + v7;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, " value %llu + %u = %llu", &v18, 0x1Cu);
            return 0;
          }

          return result;
        }
      }

      else if ((v13 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      v10 += 7;
      if (v10 > 0x38)
      {
        return 2;
      }
    }

    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E79CC();
    }

    return 1;
  }

  else
  {
    result = 0;
    *a4 = v8;
  }

  return result;
}

BOOL uaps::PackState::decodeHeader(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 - v3 < 2)
  {
    return 0;
  }

  v4 = v3 + 1;
  if (v4 > v2)
  {
    sub_1000E7D1C();
  }

  *(a1 + 8) = v4;
  v8 = 0;
  v6 = uaps::PackState::decodePrefixInteger(a1, 8u, &v8);
  if (v6 == 1)
  {
    return 0;
  }

  if (v6 != 2)
  {
    *a2 = v8;
    return 1;
  }

  result = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1000E9688();
    return 0;
  }

  return result;
}

BOOL uaps::PackState::decodeHeader(uaps::PackState *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v7 = this;
  v8 = this;
  v9 = &a2[this];
  result = uaps::PackState::decodeHeader(&v7, a4);
  if (result)
  {
    *a3 = v8 - v7;
  }

  return result;
}

uint64_t uaps::PackState::decodeToSbf(uaps::PackState *this, SbfRef *a2, SbfAtom *a3, char *a4, unsigned __int8 *a5, uint64_t a6, unint64_t *a7)
{
  v14 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *v67 = "decodeToSbf";
    *&v67[8] = 2048;
    *&v67[10] = a6;
    *&v67[18] = 2048;
    *&v67[20] = a5;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s: %zu @ %p", buf, 0x20u);
    v14 = libuaps_logger;
  }

  *(this + 16) = 0;
  *(this + 5) = 0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E96C8();
  }

  if (a6 <= 1)
  {
    v15 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v67 = a6;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "length too small: %zu", buf, 0xCu);
      v15 = libuaps_logger;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9D50();
    }

    *(this + 16) = 15;
    v16 = "ErrorCode::FRAME_INVALID - length < 2 is too small";
LABEL_22:
    *(this + 5) = v16;
    uaps::PackState::_reportError(this);
    return 0;
  }

  v60 = a5;
  v61 = a5;
  v62 = &a5[a6];
  if (a6 <= 0)
  {
    sub_1000E8158();
  }

  v17 = *a5;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E9758();
  }

  v59 = 0;
  if (!uaps::PackState::decodeHeader(&v60, &v59))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E97E0();
    }

    *(this + 16) = 15;
    v16 = "ErrorCode::FRAME_INVALID - Could not decode header from frame.";
    goto LABEL_22;
  }

  v52 = v17;
  v18 = v59;
  if (v59 > 0x10000)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9CC4();
    }

    *(this + 16) = 4;
    v16 = "ErrorCode::FRAME_TOO_LARGE - frame is too large";
    goto LABEL_22;
  }

  v49 = a7;
  v50 = a4;
  v53 = a2;
  v21 = v61;
  v22 = v61 - v60;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E986C();
  }

  v23 = libuaps_logger;
  v24 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
  if (v22 + v18 > a6)
  {
    if (v24)
    {
      sub_1000E9C38();
    }

    *(this + 16) = 14;
    v16 = "ErrorCode::READ_OVERFLOW - input doesn't have enough data";
    goto LABEL_22;
  }

  if (v24)
  {
    *buf = 67109632;
    *v67 = v52;
    *&v67[4] = 2048;
    *&v67[6] = v22;
    *&v67[14] = 2048;
    *&v67[16] = v18;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "decode command %u, headersize %zu, framesize %zu", buf, 0x1Cu);
  }

  sub_100008D98("unpack", a5, &a5[v22 + v18]);
  v56 = v21;
  v57 = v21;
  v25 = &v21[v18];
  v58 = &v21[v18];
  v26 = SbfAddObject(v53, a3, v50);
  if (!v26)
  {
    sub_1000E9C0C();
  }

  v19 = v26;
  v27 = SbfAddArray(v53, v26, uaps::CourierMessage::ATTRIBUTE_VALUES_KEY[0]);
  if (!v27)
  {
    sub_1000E9BE0();
  }

  v28 = v27;
  v51 = SbfAddUint64(v53, v19, uaps::CourierMessage::COMMAND_KEY[0], v52);
  if (!v51)
  {
    sub_1000E9BB4();
  }

  if (v18)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = v25 - v21;
      snprintf(__str, 0x20uLL, "FRAME[%d]: (%zu) ", v29, v31);
      v32 = 64;
      if (v31 < 0x40)
      {
        v32 = v31;
      }

      sub_100008D98(__str, v21, &v21[v32]);
      v55 = 0;
      v54 = 0;
      if (!uaps::PackState::decodeAttributeMetadata(this, &v56, &v55))
      {
        break;
      }

      v33 = libuaps_logger;
      v34 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
      v35 = v55;
      if (v34)
      {
        *buf = 67109376;
        *v67 = v55;
        *&v67[4] = 1024;
        *&v67[6] = v55;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "metadata %02x/%u", buf, 0xEu);
      }

      if (!uaps::PackState::decodeAttributeKey(this, &v56, v35, buf))
      {
        break;
      }

      if (buf[0] != 1)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E98E8();
        }

        v46 = "ErrorCode::KEY_INVALID - top-level key is longer than 1 byte";
        v47 = 1;
        goto LABEL_71;
      }

      v36 = uaps::CourierMessage::describeCommandItem(*this, v52, buf[1]);
      v37 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *v63 = 67109632;
        *v64 = buf[1];
        *&v64[4] = 1024;
        *&v64[6] = buf[1];
        LOWORD(v65[0]) = 2048;
        *(v65 + 2) = v36;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "key %02x/%u %p", v63, 0x18u);
        if (v36)
        {
LABEL_46:
          v38 = uaps::PackState::decodeAttributeValue(this, &v56, v35, v53, v28, 0, &v54, v36);
          if (!v38)
          {
            break;
          }

          v39 = v38;
          v40 = buf[1];
          v41 = 256;
          if (!v36[16])
          {
            v41 = 0;
          }

          goto LABEL_55;
        }
      }

      else if (v36)
      {
        goto LABEL_46;
      }

      v42 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *v63 = 67109376;
        *v64 = v52;
        *&v64[4] = 1024;
        *&v64[6] = buf[1];
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Command %d Attribute %d is unknown", v63, 0xEu);
      }

      v43 = uaps::PackState::decodeAttributeValue(this, &v56, v35, v53, v28, 0, &v54, 0);
      if (!v43)
      {
        break;
      }

      v39 = v43;
      v41 = 0;
      v40 = buf[1];
LABEL_55:
      v44 = v41 | v40;
      v45 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *v63 = 134218240;
        *v64 = v39;
        *&v64[8] = 2048;
        v65[0] = v44;
        _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "atom %p ticks 0x%llx", v63, 0x16u);
      }

      SbfSetAtomTicks(v53, v39, v44);
      if (v54 >= 0x10000)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E9A2C();
        }

        v46 = "ErrorCode::ATTRIBUTE_TOO_LARGE - unpacked attribute is too large";
        v47 = 5;
        goto LABEL_71;
      }

      v30 += v54 + 3;
      if (v30 > 0x10000)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E99A0();
        }

        v46 = "ErrorCode::FRAME_TOO_LARGE - unpacked frame is too large";
        v47 = 4;
LABEL_71:
        *(this + 16) = v47;
        *(this + 5) = v46;
        uaps::PackState::_reportError(this);
        break;
      }

      if (++v29 != SbfCount(v28))
      {
        sub_1000E9974();
      }

      v21 = v57;
      v25 = v58;
    }

    while (v58 != v57);
  }

  if (v57 - v56 != v59)
  {
    SbfRemove(v53, v19);
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9AB8();
    }

    *(this + 16) = 15;
    v16 = "ErrorCode::FRAME_INVALID - decoding couldn't consume frame";
    goto LABEL_22;
  }

  *v49 = &v61[v57 - v56] - v60;
  v48 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v67 = v19;
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Returning root atom %p", buf, 0xCu);
    v48 = libuaps_logger;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v67 = v51;
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, " - command @ %p", buf, 0xCu);
    v48 = libuaps_logger;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E9B44();
  }

  return v19;
}

BOOL uaps::PackState::decodeAttributeMetadata(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 == v4)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E7A34();
    }

    *(a1 + 32) = 14;
    *(a1 + 40) = "ErrorCode::READ_OVERFLOW - read overflow while reading attribute metadata";
    uaps::PackState::_reportError(a1);
  }

  else
  {
    if (v3 >= v4)
    {
      sub_1000E7900();
    }

    v5 = *v3;
    *(a2 + 8) = v3 + 1;
    *a3 = v5;
  }

  return v3 != v4;
}

uint64_t uaps::PackState::decodeAttributeKey(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v6 = (a3 >> 4) & 3;
  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      a4[1] = a3 & 0xF;
      result = 1;
      *a4 = 1;
      a4[2] = 0;
      return result;
    }

    __n = 0;
    if (uaps::PackState::decodePrefixInteger(a2, a3, 4u, &__n))
    {
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E7B78();
      }

      *(a1 + 32) = 14;
      v12 = "ErrorCode::READ_OVERFLOW - read overflow while reading key length";
    }

    else if (__n >= 0x40)
    {
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E7C04();
      }

      *(a1 + 32) = 1;
      v12 = "ErrorCode::KEY_INVALID - key length is invalid";
    }

    else
    {
      v13 = __n + 1;
      v14 = *(a2 + 8);
      if (*(a2 + 16) - v14 >= __n + 1)
      {
        memcpy(a4 + 1, v14, v13);
        *a4 = v13;
        a4[v13 + 1] = 0;
        if (uaps::LookUpTable::addFirst(*(a1 + 8), a4 + 1, *a4))
        {
          v15 = *(a2 + 8) + v13;
          if (v15 > *(a2 + 16))
          {
            sub_1000E7D1C();
          }

          *(a2 + 8) = v15;
          return 1;
        }

        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E7C90();
        }

        *(a1 + 32) = 8;
        v12 = "ErrorCode::KEY_INDEXING_FAILED - key indexing failed";
      }

      else
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E7D48();
        }

        *(a1 + 32) = 14;
        v12 = "ErrorCode::READ_OVERFLOW - read overflow while reading key";
      }
    }
  }

  else
  {
    __n = 0;
    Index = uaps::LookUpTable::fetchIndex(*(a1 + 8), a3 & 0x1F, &__n);
    if (Index)
    {
      v8 = __n;
      if (__n - 1 >= 0x40)
      {
        sub_1000E7AC0();
      }

      *a4 = __n;
      v9 = a4 + 1;
      memcpy(v9, Index, v8);
      *(v9 + v8) = 0;
      return 1;
    }

    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E7AEC();
    }

    *(a1 + 32) = 7;
    v12 = "ErrorCode::KEY_NOT_FOUND - indexed key not found";
  }

  *(a1 + 40) = v12;
  uaps::PackState::_reportError(a1);
  return 0;
}

void *uaps::PackState::decodeValue(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, char *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v8 == v9)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E95FC();
    }

    *(a1 + 32) = 14;
    v19 = "ErrorCode::READ_OVERFLOW - read overflow while reading value's first byte";
    goto LABEL_197;
  }

  if (v8 >= v9)
  {
    sub_1000E8158();
  }

  v14 = *v8;
  v15 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = v14;
    *&buf[8] = 1024;
    *&buf[10] = v14;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "peeked at %02x/%u", buf, 0xEu);
  }

  v16 = v14 >> 6;
  if (v14 >> 6 > 1)
  {
    if (v16 == 2)
    {
      v20 = *(a2 + 8) + 1;
      if (v20 > *(a2 + 16))
      {
        sub_1000E7D1C();
      }

      *(a2 + 8) = v20;
      if ((v14 & 0x20) == 0)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E8C74();
        }

        v21 = v14 & 0x1F;
LABEL_24:
        if (!a7)
        {
LABEL_136:
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E8DF0();
          }

          v54 = SbfAddUint64(a3, a4, a5, v21);
          if (!v54)
          {
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              sub_1000E8E60();
            }

            *(a1 + 32) = 6;
            v19 = "ErrorCode::INTERNAL_ERROR - Couldn't add INTEGER value";
            goto LABEL_197;
          }

          goto LABEL_139;
        }

        v22 = *(a7 + 4);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            v23 = 8;
            goto LABEL_132;
          }

          if (v22 == 2)
          {
            v23 = 16;
            goto LABEL_132;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              goto LABEL_29;
            case 4:
              goto LABEL_136;
            case 5:
LABEL_29:
              v23 = 32;
LABEL_132:
              if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
              {
                sub_1000E8CB0();
              }

              if (v21 >= 1 << v23 && (((1 << v23) - 1) | v21) != 0xFFFFFFFFFFFFFFFFLL)
              {
                sub_1000E8D38();
              }

              goto LABEL_136;
          }
        }

        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E8D64();
        }

        *(a1 + 32) = 2;
        v19 = "ErrorCode::VALUE_INVALID - invalid int id type";
        goto LABEL_197;
      }

      if ((v14 & 0x30) == 0x20)
      {
        v71 = a6;
        v28 = v14 & 7;
        v29 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v66 = "T";
          *buf = 67109890;
          *&buf[4] = v14;
          *&buf[8] = 1024;
          if ((v14 & 8) == 0)
          {
            v66 = "F";
          }

          *&buf[10] = v14;
          LOWORD(v77) = 2080;
          *(&v77 + 2) = v66;
          WORD5(v77) = 1024;
          HIDWORD(v77) = v28 + 1;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "INTEGER: b %02x/%u isNeg %s len %d", buf, 0x1Eu);
        }

        v21 = 0;
        v30 = v28 + 2;
        while (1)
        {
          --v30;
          v31 = *(a2 + 8);
          v32 = *(a2 + 16);
          if (v31 == v32)
          {
            break;
          }

          if (v31 >= v32)
          {
            sub_1000E7900();
          }

          v33 = *v31;
          *(a2 + 8) = v31 + 1;
          v21 = v33 | (v21 << 8);
          v34 = libuaps_logger;
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110144;
            *&buf[4] = v30;
            *&buf[8] = 1024;
            *&buf[10] = v33;
            LOWORD(v77) = 1024;
            *(&v77 + 2) = v33;
            WORD3(v77) = 2048;
            *(&v77 + 1) = v21;
            v78 = 2048;
            v79 = v21;
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "len %d byte %02x/%u v 0x%llx/%lld", buf, 0x28u);
          }

          if (v30 <= 1)
          {
            a6 = v71;
            if ((v14 & 8) != 0)
            {
              v21 = -v21;
              if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
              {
                sub_1000E8B38(a7);
              }
            }

            goto LABEL_24;
          }
        }

        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E8BE8();
        }

        *(a1 + 32) = 14;
        v19 = "ErrorCode::READ_OVERFLOW - read overflow while reading integer";
        goto LABEL_197;
      }

      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E8AAC();
      }

      goto LABEL_120;
    }

    v26 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
    if ((v14 & 0xF0) != 0xD0)
    {
      if ((v14 & 0xF0) == 0xC0)
      {
        if (v26)
        {
          sub_1000E83D4();
          if (!a7)
          {
            goto LABEL_43;
          }
        }

        else if (!a7)
        {
          goto LABEL_43;
        }

        v27 = *(a7 + 4);
        if ((v27 & 0xFFFFFFFE) != 8)
        {
          v50 = libuaps_logger;
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E8410(v27, v50, buf);
            v50 = *buf;
          }

          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E84A4();
          }

          goto LABEL_125;
        }

LABEL_43:
        if (SbfDepth(a3, a4) >= 6)
        {
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E8674();
          }

          *(a1 + 32) = 2;
          v19 = "ErrorCode::VALUE_INVALID - Dictionary depth recursion exceeded";
          goto LABEL_197;
        }

        v75 = 0;
        v43 = uaps::PackState::decodePrefixInteger(a2, 4u, &v75);
        v44 = v75;
        v45 = libuaps_logger;
        v46 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
        if (v43 || v44 >= 0x401)
        {
          if (v46)
          {
            sub_1000E85E8();
          }

          *(a1 + 32) = 2;
          v19 = "ErrorCode::VALUE_INVALID - invalid dictionary size";
          goto LABEL_197;
        }

        if (v46)
        {
          v70 = SbfDepth(a3, a4);
          *buf = 134218240;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&v77 = v44;
          _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, " - DICTIONARY [%zu] %llu keys", buf, 0x16u);
        }

        v47 = SbfAddObject(a3, a4, a5);
        if (!v47)
        {
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E855C();
          }

          *(a1 + 32) = 6;
          v19 = "ErrorCode::INTERNAL_ERROR - Couldn't add DICTIONARY";
          goto LABEL_197;
        }

        v48 = v47;
        if (v44)
        {
          while (1)
          {
            v74 = 0;
            if (!uaps::PackState::decodeAttributeMetadata(a1, a2, &v74))
            {
              break;
            }

            v49 = v74;
            if (!uaps::PackState::decodeAttributeKey(a1, a2, v74, buf))
            {
              break;
            }

            if (buf[buf[0] + 1])
            {
              sub_1000E8530();
            }

            if (!uaps::PackState::decodeAttributeValue(a1, a2, v49, a3, v48, &buf[1], a6, 0))
            {
              break;
            }

            if (!--v44)
            {
              return v48;
            }
          }

          return 0;
        }

        return v48;
      }

      if (v14 != 225)
      {
        if (v14 != 224)
        {
          if (v26)
          {
            sub_1000E8A20();
          }

LABEL_120:
          *(a1 + 32) = 13;
          v19 = "ErrorCode::RESERVED - invalid value prefix";
          goto LABEL_197;
        }

        if (v26)
        {
          sub_1000E8890();
          if (a7)
          {
LABEL_68:
            if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
            {
              sub_1000E88CC();
            }

LABEL_117:
            *(a1 + 32) = 2;
            v19 = "ErrorCode::VALUE_INVALID - Boolean not expected at top level";
LABEL_197:
            *(a1 + 40) = v19;
            uaps::PackState::_reportError(a1);
            return 0;
          }
        }

        else if (a7)
        {
          goto LABEL_68;
        }

        v68 = *(a2 + 8) + 1;
        if (v68 > *(a2 + 16))
        {
          sub_1000E7D1C();
        }

        *(a2 + 8) = v68;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E8958();
        }

        v54 = SbfAddBoolean(a3, a4, a5, 0);
        if (!v54)
        {
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E8994();
          }

LABEL_214:
          *(a1 + 32) = 6;
          v19 = "ErrorCode::INTERNAL_ERROR - Couldn't add BOOLEAN value";
          goto LABEL_197;
        }

        goto LABEL_139;
      }

      if (v26)
      {
        sub_1000E8700();
        if (a7)
        {
LABEL_115:
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E873C();
          }

          goto LABEL_117;
        }
      }

      else if (a7)
      {
        goto LABEL_115;
      }

      v69 = *(a2 + 8) + 1;
      if (v69 > *(a2 + 16))
      {
        sub_1000E7D1C();
      }

      *(a2 + 8) = v69;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E87C8();
      }

      v54 = SbfAddBoolean(a3, a4, a5, 1u);
      if (!v54)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E8804();
        }

        goto LABEL_214;
      }

LABEL_139:
      v48 = v54;
      v53 = *a6 + 8;
LABEL_140:
      *a6 = v53;
      return v48;
    }

    if (v26)
    {
      sub_1000E8184();
      if (a7)
      {
        goto LABEL_61;
      }
    }

    else if (a7)
    {
LABEL_61:
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E81C0();
      }

      *(a1 + 32) = 2;
      v19 = "ErrorCode::VALUE_INVALID - Array not expected";
      goto LABEL_197;
    }

    *buf = 0;
    v61 = uaps::PackState::decodePrefixInteger(a2, 4u, buf);
    v62 = *buf;
    v63 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
    if (v61 || v62 >= 0x401)
    {
      if (v63)
      {
        sub_1000E8348();
      }

      v19 = "ErrorCode::VALUE_INVALID - invalid array size";
      v65 = 2;
    }

    else
    {
      if (v63)
      {
        sub_1000E824C();
      }

      v64 = SbfAddArray(a3, a4, a5);
      if (v64)
      {
        v48 = v64;
        if (v62)
        {
          while (uaps::PackState::decodeValue(a1, a2, a3, v48, 0, a6, 0))
          {
            if (!--v62)
            {
              return v48;
            }
          }

          return 0;
        }

        return v48;
      }

      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E82BC();
      }

      v19 = "ErrorCode::INTERNAL_ERROR - Couldn't add ARRAY";
      v65 = 6;
    }

    *(a1 + 32) = v65;
    goto LABEL_197;
  }

  if (!v16)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9270();
      if (a7)
      {
LABEL_9:
        v17 = *(a7 + 4);
        if (v17 == 6 || v17 == 9)
        {
          goto LABEL_11;
        }

        v37 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E92AC(v17, v37, buf);
          v37 = *buf;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E9340();
        }

        goto LABEL_125;
      }
    }

    else if (a7)
    {
      goto LABEL_9;
    }

LABEL_11:
    v75 = 0;
    if (uaps::PackState::decodePrefixInteger(a2, 6u, &v75))
    {
      v18 = 2;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E93CC();
      }

      v19 = "ErrorCode::VALUE_INVALID - invalid byte array length";
      goto LABEL_196;
    }

    v36 = v75;
    if (v75 >= 0x10000)
    {
      v18 = 2;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E9570();
      }

      v19 = "ErrorCode::VALUE_INVALID - byte array is too large";
      goto LABEL_196;
    }

    v38 = *(a2 + 8);
    v39 = *(a2 + 16) - v38;
    v40 = libuaps_logger;
    v41 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
    if (v39 < v36)
    {
      if (v41)
      {
        sub_1000E94E4();
      }

      v19 = "ErrorCode::READ_OVERFLOW - read overflow while reading byte array";
LABEL_151:
      v18 = 14;
LABEL_196:
      *(a1 + 32) = v18;
      goto LABEL_197;
    }

    if (v41)
    {
      *buf = 134217984;
      *&buf[4] = v36;
      _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "- BYTE ARRAY length %llu", buf, 0xCu);
      v38 = *(a2 + 8);
    }

    v51 = SbfAddBlob(a3, a4, a5, v38, v36);
    if (v51)
    {
      v52 = *(a2 + 8) + v36;
      if (v52 > *(a2 + 16))
      {
        sub_1000E7D1C();
      }

      v48 = v51;
      *(a2 + 8) = v52;
      v53 = *a6 + v36;
      goto LABEL_140;
    }

    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9458();
    }

    v19 = "ErrorCode::INTERNAL_ERROR - Couldn't add BYTES value";
LABEL_195:
    v18 = 6;
    goto LABEL_196;
  }

  v24 = a6;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E8EEC();
    if (!a7)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (a7)
  {
LABEL_32:
    v25 = *(a7 + 4);
    if (v25 == 7)
    {
      goto LABEL_33;
    }

    v35 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = 7;
      *&buf[8] = 1024;
      *&buf[10] = v25;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Fail type check: %d != id:%d", buf, 0xEu);
      v35 = libuaps_logger;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E8F28();
    }

LABEL_125:
    *(a1 + 32) = 2;
    v19 = "ErrorCode::VALUE_INVALID - Wrong type for attribute";
    goto LABEL_197;
  }

LABEL_33:
  v75 = 0;
  if ((v14 & 0x20) != 0)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E8FB4();
    }

    v19 = "ErrorCode::RESERVED - invalid value prefix";
    v18 = 13;
    goto LABEL_196;
  }

  if (uaps::PackState::decodePrefixInteger(a2, 5u, &v75))
  {
    v18 = 2;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E9040();
    }

    v19 = "ErrorCode::VALUE_INVALID - invalid string length";
    goto LABEL_196;
  }

  v42 = v75;
  if (v75 >= 0x10000)
  {
    v18 = 2;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E91E4();
    }

    v19 = "ErrorCode::VALUE_INVALID - string is too large";
    goto LABEL_196;
  }

  v55 = *(a2 + 8);
  v56 = *(a2 + 16) - v55;
  v57 = libuaps_logger;
  v58 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
  if (v56 < v42)
  {
    if (v58)
    {
      sub_1000E9158();
    }

    v19 = "ErrorCode::READ_OVERFLOW - read overflow while reading string";
    goto LABEL_151;
  }

  if (v58)
  {
    *buf = 134217984;
    *&buf[4] = v42;
    _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "- STRING length %llu", buf, 0xCu);
    v55 = *(a2 + 8);
  }

  v59 = SbfAddString(a3, a4, a5, v55, v42);
  if (!v59)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E90CC();
    }

    v19 = "ErrorCode::INTERNAL_ERROR - Couldn't add STRING value";
    goto LABEL_195;
  }

  *v24 += v42;
  v60 = *(a2 + 8) + v42;
  if (v60 > *(a2 + 16))
  {
    sub_1000E7D1C();
  }

  v48 = v59;
  *(a2 + 8) = v60;
  return v48;
}

void *uaps::PackState::decodeAttributeValue(uint64_t a1, void *a2, unsigned int a3, size_t a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t a8)
{
  if (!a5)
  {
    sub_1000E812C();
  }

  v15 = a3 >> 6;
  if (a3 >> 6 > 1)
  {
    if (v15 == 2)
    {
      v30 = 0;
      v18 = uaps::PackState::decodePrefixInteger(a2, 8u, &v30);
      v19 = v30;
      v20 = os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG);
      if (v18 || v19 >> 24)
      {
        if (v20)
        {
          sub_1000E7FE8();
        }

        *(a1 + 32) = 9;
        v22 = "ErrorCode::VALUE_INDEX_INVALID - value index is invalid";
      }

      else
      {
        if (v20)
        {
          sub_1000E7E60();
        }

        v29 = 0;
        Index = uaps::LookUpTable::fetchIndex(*(a1 + 16), v19, &v29);
        if (Index)
        {
          v26 = Index;
          v27 = Index;
          v28 = Index + v29;
          v16 = uaps::PackState::decodeValue(a1, &v26, a4, a5, a6, a7, a8);
          if (!v16)
          {
            return 0;
          }

          if (v28 == v27)
          {
            return v16;
          }

          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E7ED0();
          }

          *(a1 + 32) = 2;
          v22 = "ErrorCode::VALUE_INVALID - indexed value has leftover bytes";
        }

        else
        {
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E7F5C();
          }

          *(a1 + 32) = 10;
          v22 = "ErrorCode::VALUE_NOT_FOUND - value not found";
        }
      }
    }

    else
    {
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E7DD4();
      }

      *(a1 + 32) = 13;
      v22 = "ErrorCode::RESERVED - value metadata cannot be 11";
    }

LABEL_33:
    *(a1 + 40) = v22;
    uaps::PackState::_reportError(a1);
    return 0;
  }

  if (!v15)
  {
    return uaps::PackState::decodeValue(a1, a2, a4, a5, a6, a7, a8);
  }

  v23 = a2[1];
  v17 = uaps::PackState::decodeValue(a1, a2, a4, a5, a6, a7, a8);
  if (v17)
  {
    if (*a2 > v23 || (v24 = a2[1], v24 < v23))
    {
      sub_1000E8074();
    }

    if ((uaps::LookUpTable::addFirst(*(a1 + 16), v23, v24 - v23) & 1) == 0)
    {
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E80A0();
      }

      *(a1 + 32) = 11;
      v22 = "ErrorCode::VALUE_INDEXING_FAILED - value indexing failed";
      goto LABEL_33;
    }
  }

  return v17;
}

void sub_100011890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

char *sub_1000118AC(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_100016C08();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

BOOL uaps::SerialState::decodeHeader(uaps::SerialState *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  if (a2 >= 5)
  {
    v9 = *(this + 1);
    v10 = bswap32(v9);
    v11 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136316674;
      v14 = "U32";
      v15 = 2048;
      v16 = this;
      v17 = 2048;
      v18 = 1;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: %p+%zu %08x/%u %08x/%u", &v13, 0x38u);
    }

    *a3 = 5;
    *a4 = v10;
  }

  return a2 > 4;
}

uint64_t uaps::SerialState::decodeToSbf(uaps::SerialState *this, SbfRef *a2, SbfAtom *a3, char *a4, uaps::SerialState *a5, const unsigned __int8 *a6, unint64_t *a7)
{
  v11 = a3;
  v12 = a2;
  v13 = this;
  *(this + 2) = 0;
  *(this + 1) = 0;
  v56 = 0;
  v57 = 0;
  if (!a3)
  {
    v11 = SbfRoot(a2);
    a4 = 0;
  }

  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E96C8();
  }

  *a7 = 0;
  if (!uaps::SerialState::decodeHeader(a5, a6, &v57, &v56, v14))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EB06C();
    }

    return 0;
  }

  if (v57 != 5)
  {
    sub_1000EB0DC();
  }

  v53 = *a5;
  v15 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *__str = 136316162;
    *v63 = "U8";
    *&v63[8] = 2048;
    *&v63[10] = a5;
    *&v63[18] = 2048;
    *&v63[20] = 0;
    v64 = 1024;
    v65 = v53;
    v66 = 1024;
    v67 = v53;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: %p+%zu %02x/%u", __str, 0x2Cu);
    v15 = libuaps_logger;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EB108();
  }

  v16 = v56;
  if (v56 >> 31)
  {
    v17 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *__str = 134217984;
      *v63 = v16;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "frameLength invalid: %zu", __str, 0xCu);
      v17 = libuaps_logger;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EB434();
    }

    *(v13 + 2) = 4;
    v18 = "ErrorCode::FRAME_INVALID - length too large";
LABEL_25:
    *(v13 + 1) = v18;
    uaps::SerialState::_reportError(v13);
    return 0;
  }

  v55 = v56 + 5;
  if (v56 + 5 > a6)
  {
    v19 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      *__str = 134218240;
      *v63 = a6;
      *&v63[8] = 2048;
      *&v63[10] = v55;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Not enough data for frame: %zu < %zu", __str, 0x16u);
      v19 = libuaps_logger;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EB3A0();
    }

    *(v13 + 2) = 4;
    v18 = "ErrorCode::FRAME_INVALID - length too small";
    goto LABEL_25;
  }

  v22 = SbfAddObject(v12, v11, a4);
  v52 = SbfAddArray(v12, v22, uaps::CourierMessage::ATTRIBUTE_VALUES_KEY[0]);
  if (!v52)
  {
    sub_1000EB374();
  }

  v23 = SbfAddUint64(v12, v22, uaps::CourierMessage::COMMAND_KEY[0], v53);
  if (!v23)
  {
    sub_1000EB348();
  }

  v49 = v23;
  v50 = v22;
  v51 = a7;
  if (v16)
  {
    v24 = 0;
    v25 = 5;
    v54 = v13;
    while (1)
    {
      v26 = v12;
      v27 = a5 + v25;
      v28 = *(a5 + v25);
      v29 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *__str = 136316162;
        *v63 = "U8";
        *&v63[8] = 2048;
        *&v63[10] = a5;
        *&v63[18] = 2048;
        *&v63[20] = v25;
        v64 = 1024;
        v65 = v28;
        v66 = 1024;
        v67 = v28;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: %p+%zu %02x/%u", __str, 0x2Cu);
        v29 = libuaps_logger;
      }

      v30 = *(a5 + v25 + 1);
      v31 = __rev16(v30);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *__str = 136316674;
        *v63 = "U16";
        *&v63[8] = 2048;
        *&v63[10] = a5;
        *&v63[18] = 2048;
        *&v63[20] = v25 + 1;
        v64 = 1024;
        v65 = v30;
        v66 = 1024;
        v67 = v30;
        v68 = 1024;
        v69 = v31;
        v70 = 1024;
        v71 = v31;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: %p+%zu %04x/%u %04x/%u", __str, 0x38u);
      }

      v32 = v25 + 3;
      v25 += 3 + v31;
      if (v25 > v55)
      {
        v57 = v32;
        v43 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          *__str = 67109632;
          *v63 = v31;
          *&v63[4] = 2048;
          *&v63[6] = v25;
          *&v63[14] = 2048;
          *&v63[16] = v55;
          _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "item length (%u) too long: %zu > %zu", __str, 0x1Cu);
          v43 = libuaps_logger;
        }

        v20 = v50;
        v42 = v51;
        v12 = v26;
        v13 = v54;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EB2B4();
        }

        *(v54 + 2) = 4;
        *(v54 + 1) = "ErrorCode::FRAME_INVALID - Invalid frame to short for item";
        uaps::SerialState::_reportError(v54);
        goto LABEL_76;
      }

      snprintf(__str, 0x20uLL, "FRAME[%d]: ", v24);
      sub_100008D98(__str, v27, &v27[v31 + 3]);
      v33 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a5 + v32);
        *buf = 67109632;
        *v59 = v28;
        *&v59[4] = 1024;
        *&v59[6] = v31;
        *v60 = 1024;
        *&v60[2] = v40;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "FRAME: %02x (%u) [%02x...]", buf, 0x14u);
      }

      v34 = uaps::CourierMessage::describeCommandItem(*v54, v53, v28);
      v12 = v26;
      v35 = uaps::SerialState::handleItem(v54, v26, v52, v34, a5 + v32, v31);
      v36 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *v59 = v35;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, " * value %p", buf, 0xCu);
      }

      if (SbfError(v12))
      {
        v57 = v32;
        v44 = libuaps_logger;
        v13 = v54;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
        {
          v48 = SbfError(v12);
          *buf = 67109120;
          *v59 = v48;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "SBF DOM reporing error %d", buf, 8u);
          v44 = libuaps_logger;
        }

        v20 = v50;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EB18C();
        }

        v45 = "ErrorCode::INTERNAL_ERROR - DOM has errors";
        v46 = 3;
        goto LABEL_75;
      }

      v13 = v54;
      if (v34)
      {
        break;
      }

      v38 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v59 = v53;
        *&v59[4] = 1024;
        *&v59[6] = v28;
        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "invalid command:id: %u:%u", buf, 0xEu);
        if (!v35)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (v35)
      {
        goto LABEL_49;
      }

LABEL_50:
      if (SbfError(v12))
      {
        v39 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
        {
          v41 = SbfError(v12);
          *buf = 67109120;
          *v59 = v41;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "SBF DOM reporing error %d", buf, 8u);
          v39 = libuaps_logger;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *v59 = "decodeToSbf";
          *&v59[8] = 1024;
          *v60 = 258;
          *&v60[4] = 2080;
          v61 = "ErrorCode::INTERNAL_ERROR - DOM has errors";
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "SERIAL ERROR at %s():%d: %s", buf, 0x1Cu);
        }

        *(v54 + 2) = 3;
        *(v54 + 1) = "ErrorCode::INTERNAL_ERROR - DOM has errors";
        uaps::SerialState::_reportError(v54);
      }

      ++v24;
      if (v25 >= v55)
      {
        goto LABEL_61;
      }
    }

    if (!v35)
    {
      v57 = v32;
      v46 = 2;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1000EB220();
      }

      v45 = "ErrorCode::INVALID_ITEM - ITEM was invalid";
      v20 = v50;
LABEL_75:
      *(v13 + 2) = v46;
      *(v13 + 1) = v45;
      uaps::SerialState::_reportError(v13);
      v42 = v51;
      goto LABEL_76;
    }

    v37 = 256;
    if (!v34[16])
    {
      v37 = 0;
    }

    v28 |= v37;
LABEL_49:
    SbfSetAtomTicks(v12, v35, v28);
    goto LABEL_50;
  }

  v25 = 5;
LABEL_61:
  v57 = v25;
  v32 = v25;
  v20 = v50;
  v42 = v51;
LABEL_76:
  if (*(v13 + 2))
  {
    SbfRemove(v12, v20);
    return 0;
  }

  *v42 = v32;
  v47 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    *__str = 134217984;
    *v63 = v20;
    _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Returning root atom %p", __str, 0xCu);
    v47 = libuaps_logger;
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *__str = 134217984;
    *v63 = v49;
    _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, " - command @ %p", __str, 0xCu);
    v47 = libuaps_logger;
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E9B44();
  }

  return v20;
}

void *uaps::SerialState::handleItem(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, char *__s, unint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v11 = *(a4 + 4);
  if (v11 <= 4)
  {
    if (v11 > 2)
    {
      if (v11 != 3)
      {
        if (a6 == 8)
        {
          v17 = *__s;
          v18 = bswap64(*__s);
          v19 = libuaps_logger;
          if (!os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
LABEL_38:
            v26 = a2;
            v27 = a3;
            v16 = v18;
            return SbfAddUint64(v26, v27, 0, v16);
          }

          *v30 = 136316674;
          *&v30[4] = "U64";
          *&v30[12] = 2048;
          *&v30[14] = __s;
          *&v30[22] = 2048;
          *&v30[24] = 0;
          *v31 = 2048;
          *&v31[2] = v17;
          *&v31[10] = 2048;
          *&v31[12] = v17;
          *v32 = 2048;
          *&v32[2] = v18;
          v33 = 2048;
          v34 = v18;
          v20 = "%s: %p+%zu %016llx/%llu %016llx/%llu";
          v21 = v19;
          v22 = 72;
LABEL_57:
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v20, v30, v22);
          goto LABEL_38;
        }

        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EACEC();
        }

LABEL_52:
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EAEAC();
        }

        *(a1 + 4) = 2;
        *(a1 + 8) = "ErrorCode::INVALID_ITEM - Item type mismatch";
        uaps::SerialState::_reportError(a1);
        return 0;
      }

      if (a6 != 4)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EAD5C();
        }

        goto LABEL_52;
      }

      v23 = *__s;
      v24 = bswap32(*__s);
      v25 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 136316674;
        *&v30[4] = "U32";
        *&v30[12] = 2048;
        *&v30[14] = __s;
        *&v30[22] = 2048;
        *&v30[24] = 0;
        *v31 = 1024;
        *&v31[2] = v23;
        *&v31[6] = 1024;
        *&v31[8] = v23;
        *&v31[12] = 1024;
        *&v31[14] = v24;
        *&v31[18] = 1024;
        *v32 = v24;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s: %p+%zu %08x/%u %08x/%u", v30, 0x38u);
      }

      v16 = v24;
    }

    else
    {
      if (v11 == 1)
      {
        if (a6 == 1)
        {
          v18 = *__s;
          if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000EAF40();
          }

          goto LABEL_38;
        }

        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EAE3C();
        }

        goto LABEL_52;
      }

      if (v11 != 2)
      {
LABEL_40:
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EAFE8(a4);
        }

        return 0;
      }

      if (a6 != 2)
      {
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_1000EADCC();
        }

        goto LABEL_52;
      }

      v13 = *__s;
      v14 = __rev16(v13);
      v15 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 136316674;
        *&v30[4] = "U16";
        *&v30[12] = 2048;
        *&v30[14] = __s;
        *&v30[22] = 2048;
        *&v30[24] = 0;
        *v31 = 1024;
        *&v31[2] = v13;
        *&v31[6] = 1024;
        *&v31[8] = v13;
        *&v31[12] = 1024;
        *&v31[14] = v14;
        *&v31[18] = 1024;
        *v32 = v14;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: %p+%zu %04x/%u %04x/%u", v30, 0x38u);
      }

      v16 = v14;
    }

    v26 = a2;
    v27 = a3;
    return SbfAddUint64(v26, v27, 0, v16);
  }

  if (v11 <= 6)
  {
    if (v11 != 5)
    {
LABEL_22:

      return SbfAddBlob(a2, a3, 0, __s, a6);
    }

    if (a6 == 4)
    {
      v28 = *__s;
      v18 = bswap32(*__s);
      v29 = libuaps_logger;
      if (!os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      *v30 = 136316674;
      *&v30[4] = "U32";
      *&v30[12] = 2048;
      *&v30[14] = __s;
      *&v30[22] = 2048;
      *&v30[24] = 0;
      *v31 = 1024;
      *&v31[2] = v28;
      *&v31[6] = 1024;
      *&v31[8] = v28;
      *&v31[12] = 1024;
      *&v31[14] = v18;
      *&v31[18] = 1024;
      *v32 = v18;
      v20 = "%s: %p+%zu %08x/%u %08x/%u";
      v21 = v29;
      v22 = 56;
      goto LABEL_57;
    }

    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EAC7C();
    }

    goto LABEL_52;
  }

  if (v11 != 7)
  {
    if (v11 == 8)
    {
LABEL_9:
      *v30 = __s;
      *&v30[8] = a6;
      *&v30[16] = 0u;
      *v31 = 0u;
      return SbfImportPlistb(a2, a3, 0, v30);
    }

    if (v11 == 9)
    {
      if (a6 >= 9 && *__s == 0x30307473696C7062)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

    goto LABEL_40;
  }

  return SbfAddString(a2, a3, 0, __s, a6);
}

void sub_100012CAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100012CD4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_100012D00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 16);
  return result;
}

id sub_100012D24()
{
  if (qword_1001BF7B0 != -1)
  {
    sub_10010B3C8();
  }

  v1 = qword_1001BF7A8;

  return v1;
}

id sub_100012D68(uint64_t a1)
{
  if (qword_1001BF7A0 != -1)
  {
    sub_10010B230();
  }

  v2 = qword_1001BF798;
  v3 = [NSNumber numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1001BF798;
    v6 = [NSNumber numberWithInteger:a1];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  return v4;
}

void *sub_100012E3C(uint64_t a1, const void *a2, unint64_t a3)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAB28();
  }

  uaps::PackState::encodePrefixInteger(a1, 64, a3, 5u);
  return sub_1000087F8(a1, a2, a3);
}

void *sub_100012EC0(uint64_t a1, const void *a2, size_t a3)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EB79C();
  }

  v7 = bswap32(a3) >> 16;
  sub_1000087F8(a1, &v7, 2uLL);
  return sub_1000087F8(a1, a2, a3);
}

uint64_t SbfStringPtr(uint64_t a1, uint64_t a2, const char **a3)
{
  if (!a2)
  {
    sub_1000F78EC();
  }

  if (!a3)
  {
    sub_1000F78C0();
  }

  if ((*(a2 + 8) & 0xF00000000000000) != 0x800000000000000)
  {
    return 22;
  }

  result = 0;
  v4 = *(a2 + 24);
  v5 = v4 << 6;
  v6 = a2 + 32 * (v4 << 38 >> 38);
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (v6 + 8);
  if (!v5)
  {
    v7 = "";
  }

  *a3 = v7;
  return result;
}

uint64_t SbfStringLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000F7BAC();
  }

  if (!a2)
  {
    sub_1000F7B80();
  }

  if ((*(a2 + 8) & 0xF00000000000000) == 0x800000000000000)
  {
    return *(a2 + 28);
  }

  *(a1 + 92) = 22;
  return -1;
}

BOOL sub_100013074(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_1000063DC(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 24 * v6);

      return v8 < *(v2 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion);
    }
  }

  return 1;
}