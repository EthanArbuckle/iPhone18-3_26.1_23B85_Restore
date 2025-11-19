const char *currentQueueName()
{
  current_queue = dispatch_get_current_queue();
  if (!current_queue)
  {
    return "defunct";
  }

  return dispatch_queue_get_label(current_queue);
}

id sub_100001038(uint64_t a1)
{
  v2 = [*(a1 + 32) localAddresses];

  if (v2)
  {
    v3 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v6[0] = 67109378;
      v6[1] = 0;
      v7 = 2080;
      v8 = currentQueueName();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#%08x [%s] network configuration changed; invalidating saved local address info", v6, 0x12u);
    }
  }

  [*(a1 + 32) setLocalAddresses:0];
  [*(a1 + 32) setGatewayIdentifiers:0];
  return [*(a1 + 32) uncacheAllAffinitiesWithTag:0];
}

void sub_100001760(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = [v8 stringByAppendingFormat:@"[%ld]", a3];
  LOBYTE(v7) = [v7 verify:v9 name:v10 withTemplate:*(a1 + 48) tag:*(a1 + 64)];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_100001804(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v12 = [v7 objectForKey:v9];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) stringByAppendingFormat:@".%@", v9];

  LOBYTE(v9) = [v10 verify:v12 name:v11 withTemplate:v8 tag:*(a1 + 64)];
  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t sub_100001B4C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) sanitize:a2 withTemplate:*(a1 + 40) tag:*(a1 + 56)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_100001BB8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  v8 = [*(a1 + 40) sanitize:v7 withTemplate:v6 tag:*(a1 + 56)];

  if (v8)
  {
    [*(a1 + 48) setObject:v8 forKey:v9];
  }
}

void sub_100005D30(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(AssetCacheLocatorService);
  objc_autoreleasePoolPop(v3);
  [(AssetCacheLocatorService *)v4 start];

  return 1;
}

void sub_1000080C0(id a1)
{
  v1 = +[NSFileManager defaultManager];
  [v1 removeItemAtPath:@"/var/mobile/Library/Caches/com.apple.AssetCacheLocatorService" error:0];
}

void sub_100008114(uint64_t a1)
{
  v2 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    *buf = 67109378;
    v9 = 0;
    v10 = 2080;
    v11 = currentQueueName();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#%08x [%s] automatic disk cache refresh", buf, 0x12u);
  }

  v4 = [*(a1 + 32) singleLocate];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  if ([*(a1 + 32) singleLocateTag])
  {
    sub_10001FE64();
  }

  v5 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008278;
  block[3] = &unk_100034B58;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

void sub_100008278(uint64_t a1)
{
  [*(a1 + 32) loadDiskCacheWithTag:0];
  v2 = [*(a1 + 32) singleLocate];
  dispatch_semaphore_signal(v2);
}

void sub_1000082D4(uint64_t a1)
{
  [*(a1 + 32) loadDiskCacheWithTag:0];
  v2 = [*(a1 + 32) singleLocate];
  dispatch_semaphore_signal(v2);
}

uint64_t sub_100008908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) NSObjectFromXPCObject:a3 tag:*(a1 + 48)];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  return 1;
}

uint64_t sub_100008954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) NSObjectFromXPCObject:a3 tag:*(a1 + 48)];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [NSString stringWithUTF8String:a2];
    [v6 setObject:v5 forKey:v7];
  }

  return 1;
}

uint64_t sub_100008C2C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) XPCObjectFromNSObject:a2 tag:*(a1 + 48)];
  if (v3)
  {
    xpc_array_append_value(*(a1 + 40), v3);
  }

  return _objc_release_x1();
}

void sub_100008C90(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) XPCObjectFromNSObject:a3 tag:*(a1 + 48)];
  if (v5)
  {
    xpc_dictionary_set_value(*(a1 + 40), [v6 UTF8String], v5);
  }
}

void sub_100009508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100020154(v4, v3);
  }

  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    [*(a1 + 32) handleConnection:v3];
  }

  else if (v3 == &_xpc_error_connection_invalid && type == &_xpc_type_error)
  {
    [*(a1 + 32) setListenerConnection:0];
  }
}

void sub_1000095B8(uint64_t a1)
{
  v1 = [*(a1 + 32) listenerConnection];

  if (!v1)
  {
    v2 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4[0] = 67109634;
      v4[1] = 0;
      v5 = 2080;
      v6 = currentQueueName();
      v7 = 2080;
      v8 = "AssetCacheLocatorService";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %s exiting:  XPC listener gone and no more XPC connections", v4, 0x1Cu);
    }

    exit(0);
  }
}

void sub_100009814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_10002020C(v4, a1, v3);
  }

  if (([*(a1 + 40) handleEvent:v3 forConnection:*(a1 + 32)] & 1) == 0)
  {
    xpc_connection_cancel(*(a1 + 32));
  }
}

uint64_t sub_10000A4CC(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (!strcmp(a2, "import") && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v5))
  {
    v6 = *(a1 + 32);
    v7 = @"im";
LABEL_17:
    [v6 setObject:&__kCFBooleanTrue forKey:v7];
    goto LABEL_18;
  }

  if (!strcmp(a2, "namespaces") && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v5))
  {
    v6 = *(a1 + 32);
    v7 = @"ns";
    goto LABEL_17;
  }

  if (!strcmp(a2, "personalCaching") && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v5))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else if (!strcmp(a2, "queryParameters") && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v5))
  {
    v6 = *(a1 + 32);
    v7 = @"query-parameters";
    goto LABEL_17;
  }

LABEL_18:

  return 1;
}

void sub_10000A640(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v26 = v12;
    v27 = *(a1 + 80);
    loga = v14;
    v28 = v13;
    v29 = currentQueueName();
    [*(a1 + 32) redactObject:v11];
    v31 = v30 = a1;
    v32 = [*(v30 + 32) redactObject:v26];
    *buf = 67110658;
    v95 = v27;
    v12 = v26;
    v96 = 2080;
    v97 = v29;
    v13 = v28;
    v98 = 2112;
    *v99 = v31;
    *&v99[8] = 1024;
    *v100 = a3;
    *&v100[4] = 2112;
    *&v100[6] = v32;
    *&v100[14] = 2048;
    *&v100[16] = a6;
    *&v100[24] = 2112;
    *&v100[26] = v28;
    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "#%08x [%s] handleLocateEvent callback(servers=%@, sorted=%{BOOL}d, other=%@, validityInterval=%.3f, error=%@)", buf, 0x40u);

    a1 = v30;
    if (v28)
    {
      goto LABEL_3;
    }
  }

  else if (v13)
  {
LABEL_3:
    v15 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 80);
      v17 = v15;
      v18 = currentQueueName();
      v19 = v13;
      pid = xpc_connection_get_pid(*(a1 + 40));
      v21 = a1;
      euid = xpc_connection_get_euid(*(a1 + 40));
      [*(v21 + 48) timeIntervalSinceNow];
      *buf = 67110402;
      v95 = v16;
      v96 = 2080;
      v97 = v18;
      v98 = 1024;
      *v99 = pid;
      v13 = v19;
      *&v99[4] = 1024;
      *&v99[6] = euid;
      a1 = v21;
      *v100 = 2112;
      *&v100[2] = v19;
      *&v100[10] = 2048;
      *&v100[12] = -v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: error: %@, elapsed=%.3f", buf, 0x32u);
    }

    v24 = *(a1 + 56);
    v25 = [*(a1 + 32) objectWithError:v13];
    xpc_dictionary_set_value(v24, "error", v25);

    xpc_connection_send_message(*(a1 + 40), *(a1 + 56));
    goto LABEL_35;
  }

  v84 = [*(a1 + 32) choose:*(a1 + 84) fromArray:v11 sorted:a3 other:v12 tag:*(a1 + 80)];
  v33 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    logb = *(a1 + 80);
    v34 = v33;
    v35 = currentQueueName();
    v36 = v13;
    v37 = xpc_connection_get_pid(*(a1 + 40));
    v38 = a1;
    v39 = xpc_connection_get_euid(*(a1 + 40));
    v40 = [*(v38 + 32) redactObject:v84];
    [*(v38 + 48) timeIntervalSinceNow];
    *buf = 67110658;
    v95 = logb;
    v96 = 2080;
    v97 = v35;
    v98 = 1024;
    *v99 = v37;
    v13 = v36;
    *&v99[4] = 1024;
    *&v99[6] = v39;
    a1 = v38;
    *v100 = 2112;
    *&v100[2] = v40;
    *&v100[10] = 2048;
    *&v100[12] = a6;
    *&v100[20] = 2048;
    *&v100[22] = -v41;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: success: servers=%@ validityInterval=%.3f elapsed=%.3f", buf, 0x3Cu);
  }

  v83 = v13;
  if (*(a1 + 88) == 1)
  {
    v80 = a1;
    v81 = v12;
    v82 = v11;
    v42 = xpc_array_create(0, 0);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v84;
    v43 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (v43)
    {
      v44 = v43;
      log = *v90;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v90 != log)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v89 + 1) + 8 * i);
          v47 = xpc_dictionary_create(0, 0, 0);
          v48 = [v46 objectForKey:@"localAddressAndPort"];
          v49 = v48;
          if (v48)
          {
            xpc_dictionary_set_string(v47, "hostport", [v48 UTF8String]);
          }

          v50 = v42;
          v51 = [v46 objectForKey:@"guid"];
          v52 = v51;
          if (v51)
          {
            xpc_dictionary_set_string(v47, "guid", [v51 UTF8String]);
          }

          v53 = [v46 objectForKeyedSubscript:@"failureCount"];
          xpc_dictionary_set_BOOL(v47, "healthy", [v53 unsignedIntegerValue] < 3);

          v54 = [v46 objectForKeyedSubscript:@"favored"];
          xpc_dictionary_set_BOOL(v47, "favored", [v54 BOOLValue]);

          v55 = [v46 objectForKey:@"details"];
          v56 = [v55 objectForKey:@"capabilities"];
          v57 = [v56 objectForKey:@"ur"];
          xpc_dictionary_set_BOOL(v47, "supportsUrgency", [v57 BOOLValue]);

          v58 = [v46 objectForKey:@"connectTimeout"];
          [v58 doubleValue];
          v60 = v59;

          if (v60 >= 0.2)
          {
            v61 = v60;
          }

          else
          {
            v61 = 1.0;
          }

          xpc_dictionary_set_double(v47, "timeout", v61);
          v62 = [v46 objectForKey:@"rank"];
          xpc_dictionary_set_int64(v47, "rank", [v62 intValue]);

          v42 = v50;
          xpc_array_set_value(v50, 0xFFFFFFFFFFFFFFFFLL, v47);
        }

        v44 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
      }

      while (v44);
    }

    v63 = v80;
    xpc_dictionary_set_value(*(v80 + 56), "servers", v42);
    v12 = v81;
    v11 = v82;
  }

  else
  {
    v64 = [v11 firstObject];
    v65 = [v64 objectForKey:@"localAddressAndPort"];
    v66 = v65;
    if (v65)
    {
      xpc_dictionary_set_string(*(a1 + 56), "hostport", [v65 UTF8String]);
    }

    v67 = *(a1 + 56);
    v68 = [v64 objectForKey:@"details"];
    [v68 objectForKey:@"capabilities"];
    v70 = v69 = a1;
    [v70 objectForKey:@"ur"];
    v72 = v71 = v64;
    xpc_dictionary_set_BOOL(v67, "supportsUrgency", [v72 BOOLValue]);

    v42 = v71;
    v63 = v69;

    v73 = [v71 objectForKey:@"connectTimeout"];
    [v73 doubleValue];
    v75 = v74;

    v76 = 1.0;
    if (v75 >= 0.2)
    {
      v76 = v75;
    }

    xpc_dictionary_set_double(*(v69 + 56), "timeout", v76);
  }

  v77 = 3600.0;
  if (a6 > 0.0)
  {
    v77 = a6;
  }

  xpc_dictionary_set_double(*(v63 + 56), "validityInterval", v77);

  xpc_connection_send_message(*(v63 + 40), *(v63 + 56));
  [*(v63 + 32) refreshValidityInterval];
  v13 = v83;
  if (v78 > a6 && *(v63 + 89) == 1)
  {
    v79 = *(v63 + 32);
    [v79 locateTimeout];
    [v79 relocateCachingServersWithTimeout:*(v63 + 64) capabilities:*(v63 + 72) affinityID:1 forceRefresh:*(v63 + 80) tag:?];
  }

LABEL_35:
}

void sub_10000AE88(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceNow];
  v4 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 76);
  v8 = *(a1 + 77);
  v9 = *(a1 + 78);
  v10 = *(a1 + 64);
  v12 = dispatch_get_global_queue(0, 0);
  LODWORD(v11) = *(a1 + 72);
  [v2 locateCachingServersWithTimeout:v5 capabilities:v6 affinityID:v7 autoRefresh:v8 quickMiss:v9 forceMiss:v10 callback:v4 callbackQueue:v12 tag:v11];
}

void sub_10000B114(uint64_t a1, _BOOL4 a2, void *a3)
{
  v5 = a3;
  v6 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 64);
    v24 = v6;
    v25 = 67109890;
    v26 = v23;
    v27 = 2080;
    v28 = currentQueueName();
    v29 = 1024;
    v30 = a2;
    v31 = 2112;
    *v32 = v5;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "#%08x [%s] handleRecentlySeenEvent callback(recentlySeen=%{BOOL}d, error=%@)", &v25, 0x22u);
  }

  v7 = gLogHandle;
  v8 = os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 64);
      v10 = v7;
      v11 = currentQueueName();
      pid = xpc_connection_get_pid(*(a1 + 32));
      euid = xpc_connection_get_euid(*(a1 + 32));
      [*(a1 + 40) timeIntervalSinceNow];
      v25 = 67110402;
      v26 = v9;
      v27 = 2080;
      v28 = v11;
      v29 = 1024;
      v30 = pid;
      v31 = 1024;
      *v32 = euid;
      *&v32[4] = 2112;
      *&v32[6] = v5;
      *&v32[14] = 2048;
      *&v32[16] = -v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: error: %@, elapsed=%.3f", &v25, 0x32u);
    }

    xpc_dictionary_set_BOOL(*(a1 + 48), "recentlySeen", 1);
    v15 = *(a1 + 48);
    v16 = [*(a1 + 56) objectWithError:v5];
    xpc_dictionary_set_value(v15, "error", v16);
  }

  else
  {
    if (v8)
    {
      v17 = *(a1 + 64);
      v18 = v7;
      v19 = currentQueueName();
      v20 = xpc_connection_get_pid(*(a1 + 32));
      v21 = xpc_connection_get_euid(*(a1 + 32));
      [*(a1 + 40) timeIntervalSinceNow];
      v25 = 67110402;
      v26 = v17;
      v27 = 2080;
      v28 = v19;
      v29 = 1024;
      v30 = v20;
      v31 = 1024;
      *v32 = v21;
      *&v32[4] = 1024;
      *&v32[6] = a2;
      *&v32[10] = 2048;
      *&v32[12] = -v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: recentlySeen=%{BOOL}d, elapsed=%.3f", &v25, 0x2Eu);
    }

    xpc_dictionary_set_BOOL(*(a1 + 48), "recentlySeen", a2);
  }

  xpc_connection_send_message(*(a1 + 32), *(a1 + 48));
}

void sub_10000B3E8(uint64_t a1)
{
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = dispatch_get_global_queue(0, 0);
  [v3 recentlySeenCachingServerWithAutoRefresh:v2 callback:v4 callbackQueue:v5 tag:*(a1 + 48)];
}

void sub_10000B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B628(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B640(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 60);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B704;
  v6[3] = &unk_100034D38;
  v6[4] = *(a1 + 48);
  v5 = dispatch_get_global_queue(0, 0);
  [v2 updateHealthOfCachingServerWithHostport:v3 healthy:v4 override:0 callback:v6 callbackQueue:v5 tag:*(a1 + 56)];
}

void sub_10000B704(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10000BC4C(uint64_t a1, _BOOL4 a2, void *a3)
{
  v5 = a3;
  v6 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 64);
    v24 = v6;
    v25 = 67109890;
    v26 = v23;
    v27 = 2080;
    v28 = currentQueueName();
    v29 = 1024;
    v30 = a2;
    v31 = 2112;
    *v32 = v5;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "#%08x [%s] handleImportEvent callback(success=%{BOOL}d, error=%@)", &v25, 0x22u);
  }

  v7 = gLogHandle;
  v8 = os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 64);
      v10 = v7;
      v11 = currentQueueName();
      pid = xpc_connection_get_pid(*(a1 + 32));
      euid = xpc_connection_get_euid(*(a1 + 32));
      [*(a1 + 40) timeIntervalSinceNow];
      v25 = 67110402;
      v26 = v9;
      v27 = 2080;
      v28 = v11;
      v29 = 1024;
      v30 = pid;
      v31 = 1024;
      *v32 = euid;
      *&v32[4] = 2112;
      *&v32[6] = v5;
      *&v32[14] = 2048;
      *&v32[16] = -v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: error: %@, elapsed=%.3f", &v25, 0x32u);
    }

    xpc_dictionary_set_BOOL(*(a1 + 48), "success", 0);
    v15 = *(a1 + 48);
    v16 = [*(a1 + 56) objectWithError:v5];
    xpc_dictionary_set_value(v15, "error", v16);
  }

  else
  {
    if (v8)
    {
      v17 = *(a1 + 64);
      v18 = v7;
      v19 = currentQueueName();
      v20 = xpc_connection_get_pid(*(a1 + 32));
      v21 = xpc_connection_get_euid(*(a1 + 32));
      [*(a1 + 40) timeIntervalSinceNow];
      v25 = 67110402;
      v26 = v17;
      v27 = 2080;
      v28 = v19;
      v29 = 1024;
      v30 = v20;
      v31 = 1024;
      *v32 = v21;
      *&v32[4] = 1024;
      *&v32[6] = a2;
      *&v32[10] = 2048;
      *&v32[12] = -v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: success=%{BOOL}d, elapsed=%.3f", &v25, 0x2Eu);
    }

    xpc_dictionary_set_BOOL(*(a1 + 48), "success", a2);
  }

  xpc_connection_send_message(*(a1 + 32), *(a1 + 48));
}

uint64_t sub_10000BF20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (xpc_get_type(v5) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    v7 = *(a1 + 32);
    v8 = [NSString stringWithUTF8String:string_ptr];
    v9 = [NSString stringWithUTF8String:a2];
    [v7 setObject:v8 forKey:v9];
  }

  return 1;
}

uint64_t sub_10000BFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) != &_xpc_type_uint64)
  {
    goto LABEL_6;
  }

  value = xpc_uint64_get_value(v4);
  if (value - 1 > 3)
  {
    goto LABEL_6;
  }

  v6 = value;
  v7 = *(a1 + 40) + value;
  if (*(v7 - 1))
  {
    goto LABEL_6;
  }

  *(v7 - 1) = 1;
  v8 = *(a1 + 32);
  v9 = [NSNumber numberWithUnsignedLongLong:value];
  [v8 addObject:v9];

  if (v6 == 4)
  {
    v10 = 0;
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  return v10;
}

void sub_10000C194(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000C4DC;
  v38[3] = &unk_100034DD8;
  v4 = v2;
  v39 = v4;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v40 = v5;
  v41 = v6;
  v44 = *(a1 + 56);
  v42 = v7;
  v43 = *(a1 + 48);
  v8 = objc_retainBlock(v38);
  v9 = [*(a1 + 32) localAddresses];
  v10 = [*(a1 + 32) gatewayIdentifiers];
  if (!v9)
  {
    v11 = *(a1 + 32);
    v36 = v10;
    v37 = 0;
    v12 = [v11 makeLocalAddresses:&v37 andGatewayIdentifiers:&v36 tag:*(a1 + 56)];
    v9 = v37;
    v13 = v36;

    if ((v12 & 1) == 0)
    {

      v13 = 0;
      v9 = 0;
    }

    [*(a1 + 32) setLocalAddresses:v9];
    [*(a1 + 32) setGatewayIdentifiers:v13];
    v10 = v13;
  }

  if (*(a1 + 60))
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = *(a1 + 32);
    v34 = 0;
    v35 = 0;
    [v16 cachedDNSPublicAddressRanges:&v35 andFavoredServerRanges:&v34 forNetworkIdentifiers:v10 tag:*(a1 + 56)];
    v14 = v35;
    v15 = v34;
  }

  if (v14 | v15)
  {
    if (v14)
    {
      [v4 addObject:v14];
    }

    if (v15)
    {
      [v5 addObject:v15];
    }

    (v8[2])(v8);
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000C69C;
    v29[3] = &unk_100034E00;
    v33 = *(a1 + 56);
    v29[4] = *(a1 + 32);
    v30 = v4;
    v31 = v5;
    v32 = v8;
    v17 = objc_retainBlock(v29);
    v18 = *(a1 + 32);
    [v18 locateTimeout];
    v20 = v19;
    [*(a1 + 32) queue];
    v28 = v15;
    v21 = v14;
    v22 = v9;
    v23 = v10;
    v24 = v8;
    v25 = v5;
    v27 = v26 = v4;
    [v18 resolveDNSRecordsWithTimeout:v17 callback:v27 callbackQueue:*(a1 + 56) tag:v20];

    v4 = v26;
    v5 = v25;
    v8 = v24;
    v10 = v23;
    v9 = v22;
    v14 = v21;
    v15 = v28;
  }
}

void sub_10000C4DC(uint64_t a1)
{
  v22[0] = _kACSIntrospectionPublicAddressRangesKey;
  v22[1] = _kACSIntrospectionFavoredServerRangesKey;
  v2 = *(a1 + 40);
  v23[0] = *(a1 + 32);
  v23[1] = v2;
  v22[2] = _kACSIntrospectionTestFlagsKey;
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 48) testFlags]);
  v23[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  v5 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 72);
    v7 = v5;
    v8 = currentQueueName();
    pid = xpc_connection_get_pid(*(a1 + 56));
    euid = xpc_connection_get_euid(*(a1 + 56));
    v13[0] = 67110147;
    v13[1] = v6;
    v14 = 2080;
    v15 = v8;
    v16 = 1024;
    v17 = pid;
    v18 = 1024;
    v19 = euid;
    v20 = 2113;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#%08x [%s] XPC response to pid %d uid %d: introspection=%{private}@", v13, 0x28u);
  }

  v11 = *(a1 + 64);
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v11, "introspection", v12);

  xpc_connection_send_message(*(a1 + 56), *(a1 + 64));
}

void sub_10000C69C(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 64);
    v14 = v12;
    v15[0] = 67110915;
    v15[1] = v13;
    v16 = 2080;
    v17 = currentQueueName();
    v18 = 2048;
    v19 = [v9 count];
    v20 = 2113;
    v21 = v9;
    v22 = 2048;
    v23 = [v10 count];
    v24 = 2112;
    v25 = v10;
    v26 = 2048;
    v27 = a5;
    v28 = 2112;
    v29 = v11;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#%08x [%s] handleIntrospectEvent callback(dnsPublicAddressRanges=[%ld]%{private}@ dnsFavoredServerRanges=[%ld]%@ dnsValidityInterval=%.3f dnsError=%@)", v15, 0x4Eu);
  }

  if (([*(a1 + 32) amRunningOnMyQueue] & 1) == 0)
  {
    sub_1000204A4();
  }

  if ([v9 count])
  {
    [*(a1 + 40) addObject:v9];
  }

  if ([v10 count])
  {
    [*(a1 + 48) addObject:v10];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10000EAFC(uint64_t a1)
{
  v58 = 0;
  if (*(a1 + 76) != 1)
  {
    if (*(a1 + 77) == 1)
    {
      v2 = NSURLErrorDomain;
      v3 = *(a1 + 72);
      v4 = @"simulated error";
      v5 = -1011;
      goto LABEL_5;
    }

    v10 = *(a1 + 32);
    v11 = [NSString stringWithUTF8String:"prs="];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = [v12 dataUsingEncoding:4];
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = [v13 bytes];
      v17 = [v13 length];
      v57 = 0;
      LODWORD(v46) = *(a1 + 72);
      v8 = [v14 makeRangesFromDNSRecordNamed:v15 withType:0 data:v16 length:v17 more:&v58 error:&v57 tag:v46];
      v6 = v57;
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = [NSString stringWithUTF8String:"prn="];
      v12 = [v18 objectForKey:v19];

      if (!v12)
      {
        v6 = 0;
        v8 = 0;
LABEL_11:
        v24 = *(a1 + 32);
        v25 = [NSString stringWithUTF8String:"fss="];
        v26 = [v24 objectForKey:v25];

        if (v26)
        {
          v27 = [v26 dataUsingEncoding:4];
          v28 = *(a1 + 40);
          v29 = *(a1 + 48);
          v30 = [v27 bytes];
          v31 = [v27 length];
          v55 = v6;
          LODWORD(v46) = *(a1 + 72);
          v7 = [v28 makeRangesFromDNSRecordNamed:v29 withType:2 data:v30 length:v31 more:&v58 error:&v55 tag:v46];
          v32 = v55;

          v6 = v27;
        }

        else
        {
          v33 = *(a1 + 32);
          v34 = [NSString stringWithUTF8String:"fsn="];
          v26 = [v33 objectForKey:v34];

          if (!v26)
          {
            v7 = 0;
            goto LABEL_16;
          }

          v35 = *(a1 + 40);
          v36 = *(a1 + 48);
          v37 = [v26 bytes];
          v38 = [v26 length];
          v54 = v6;
          LODWORD(v46) = *(a1 + 72);
          v7 = [v35 makeRangesFromDNSRecordNamed:v36 withType:3 data:v37 length:v38 more:&v58 error:&v54 tag:v46];
          v32 = v54;
        }

        v6 = v32;
LABEL_16:
        v39 = [*(a1 + 32) objectForKey:@"ttl"];
        [v39 doubleValue];
        v9 = v40;

        goto LABEL_17;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = [v12 bytes];
      v23 = [v12 length];
      v56 = 0;
      LODWORD(v46) = *(a1 + 72);
      v8 = [v20 makeRangesFromDNSRecordNamed:v21 withType:1 data:v22 length:v23 more:&v58 error:&v56 tag:v46];
      v6 = v56;
    }

    goto LABEL_11;
  }

  v2 = NSURLErrorDomain;
  v3 = *(a1 + 72);
  v4 = @"simulated timeout";
  v5 = -1001;
LABEL_5:
  v6 = createTaggedError(v2, v5, v4, v3);
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_17:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EF38;
  block[3] = &unk_100034E50;
  v41 = *(a1 + 56);
  v42 = *(a1 + 64);
  v48 = v8;
  v49 = v7;
  v52 = v9;
  v53 = v58;
  v50 = v6;
  v51 = v42;
  v43 = v6;
  v44 = v7;
  v45 = v8;
  dispatch_async(v41, block);
}

uint64_t sub_10000EF58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  if (v2)
  {
    return (*(v3 + 16))(v3, 0, 0, 0, 0.0);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 64));
  }
}

void sub_10000FA98(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(a1 + 48) != &stru_100035770;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FB98;
  v8[3] = &unk_100034EC8;
  v13 = *(a1 + 88);
  v6 = v2;
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  [v3 resolveDNSRecordNamed:v6 withTimeout:v5 errorIfNotFound:v8 callback:*(a1 + 72) callbackQueue:*(a1 + 88) tag:v4];
}

void sub_10000FB98(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 64);
    v21 = v14;
    v22 = currentQueueName();
    v23 = *(a1 + 32);
    *buf = 67111427;
    v31 = v20;
    v32 = 2080;
    v33 = v22;
    v34 = 2112;
    v35 = v23;
    v36 = 2048;
    v37 = [v11 count];
    v38 = 2113;
    v39 = v11;
    v40 = 2048;
    v41 = [v12 count];
    v42 = 2112;
    v43 = v12;
    v44 = 2048;
    v45 = a6;
    v46 = 1024;
    v47 = a4;
    v48 = 2112;
    v49 = v13;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "#%08x [%s] resolveDNSRecords: %@ callback(publicAddressRanges=[%ld]%{private}@, favoredServerRanges=[%ld]%@, validityInterval=%.3f, more=%{BOOL}d, error=%@)", buf, 0x5Eu);
  }

  if (a6 == 0.0)
  {
    a6 = 3600.0;
  }

  else if (a6 < 300.0 && ([*(a1 + 40) testFlags] & 2) == 0)
  {
    a6 = 300.0;
  }

  if (v13)
  {
    v28 = @"error";
    v29 = v13;
    v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    if (v15)
    {
LABEL_10:
      [*(a1 + 48) setObject:v15 forKey:*(a1 + 32)];
    }
  }

  else
  {
    v16 = &__NSArray0__struct;
    v24 = @"publicAddressRanges";
    v25 = @"favoredServerRanges";
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    if (v12)
    {
      v16 = v12;
    }

    v27[0] = v17;
    v27[1] = v16;
    v18 = [NSNumber numberWithDouble:a6, v24, v25, @"validityInterval"];
    v27[2] = v18;
    v26 = @"more";
    v19 = [NSNumber numberWithBool:a4];
    v27[3] = v19;
    v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:&v24 count:4];

    if (v15)
    {
      goto LABEL_10;
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_10000FE60(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0, 0, 0.0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5], a1[6], *(*(a1[8] + 8) + 24));
  }
}

void sub_1000118A0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v30 = NSFileProtectionKey;
  v31 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v3 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v4 = [*(a1 + 32) diskCachePlistPath];
  v21 = 0;
  v5 = [v2 setAttributes:v3 ofItemAtPath:v4 error:&v21];
  v6 = v21;

  if ((v5 & 1) == 0)
  {
    v7 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = currentQueueName();
      v11 = [*(a1 + 32) diskCachePlistPath];
      *buf = 67109890;
      v23 = v8;
      v24 = 2080;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#%08x [%s] failed to set attributes of %@: %@", buf, 0x26u);
    }
  }

  v12 = [*(a1 + 32) diskCachePlistPath];
  v13 = [NSURL fileURLWithPath:v12];

  v20 = 0;
  LOBYTE(v12) = [v13 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v20];
  v14 = v20;
  if ((v12 & 1) == 0)
  {
    v15 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 40);
      v17 = v15;
      v18 = currentQueueName();
      v19 = [*(a1 + 32) diskCachePlistPath];
      *buf = 67109890;
      v23 = v16;
      v24 = 2080;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#%08x [%s] failed to exclude %@ from backups: %@", buf, 0x26u);
    }
  }
}

void sub_1000143A8(uint64_t a1)
{
  v2 = [*(a1 + 32) locateOpQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014464;
  v5[3] = &unk_100034FD0;
  v10 = *(a1 + 60);
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 addOperationWithBlock:v5];
}

void sub_100014464(uint64_t a1)
{
  v25 = +[NSNull null];
  if (*(a1 + 60) == 1)
  {
    v2 = NSURLErrorDomain;
    v3 = *(a1 + 56);
    v4 = @"simulated timeout";
    v5 = -1001;
LABEL_5:
    v6 = createTaggedError(v2, v5, v4, v3);
    goto LABEL_20;
  }

  if (*(a1 + 61) == 1)
  {
    v2 = NSURLErrorDomain;
    v3 = *(a1 + 56);
    v4 = @"simulated error";
    v5 = -1011;
    goto LABEL_5;
  }

  if ([*(a1 + 32) isEqual:&stru_100035770])
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      [NSJSONSerialization dataWithJSONObject:v8 options:0 error:0];
    }

    else
    {
      [@"NO_LOCAL_SERVER" dataUsingEncoding:4];
    }
    v7 = ;
  }

  v9 = [NSHTTPURLResponse alloc];
  v10 = [*(a1 + 40) locateURL];
  if (*(a1 + 48))
  {
    v11 = *(a1 + 48);
  }

  else
  {
    v11 = 404;
  }

  v12 = [v9 initWithURL:v10 statusCode:v11 HTTPVersion:@"HTTP/1.1" headerFields:0];

  [*(a1 + 40) setLocateServerValidated:1];
  v13 = *(a1 + 40);
  v14 = [v13 locateSession];
  [v13 URLSession:v14 dataTask:v25 didReceiveResponse:v12 completionHandler:&stru_100034FA8];

  if ([v7 length])
  {
    v15 = [v7 length];
    v16 = v15 >> 1;
    if (v15 >= 2)
    {
      v17 = *(a1 + 40);
      v18 = [v17 locateSession];
      v19 = [v7 subdataWithRange:{0, v16}];
      [v17 URLSession:v18 dataTask:v25 didReceiveData:v19];
    }

    v20 = *(a1 + 40);
    v21 = [v20 locateSession];
    v22 = [v7 subdataWithRange:{v16, objc_msgSend(v7, "length") - v16}];
    [v20 URLSession:v21 dataTask:v25 didReceiveData:v22];
  }

  v6 = 0;
LABEL_20:
  v23 = *(a1 + 40);
  v24 = [v23 locateSession];
  [v23 URLSession:v24 task:v25 didCompleteWithError:v6];
}

void sub_10001470C(id a1, int64_t a2)
{
  if (a2 != 1)
  {
    sub_1000216C0();
  }
}

void sub_100014E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100014ED8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"address"];
    v8 = [v6 objectForKey:@"port"];
    v9 = [v6 objectForKey:@"details"];
    v10 = [v6 objectForKey:@"guid"];
    if (!v7)
    {
      goto LABEL_26;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    if (!v8)
    {
      goto LABEL_26;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if ([v8 intValue] < 1)
    {
      goto LABEL_26;
    }

    if (v9)
    {
      v3 = [*(a1 + 32) serverDetailsVerifier];
      a3 = [NSString stringWithFormat:@"servers[%ld].details", a3];
      if (![v3 verify:v9 name:a3 tag:*(a1 + 72)] || !v10)
      {
        goto LABEL_25;
      }
    }

    else if (!v10)
    {
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v3;
      v11 = [[NSUUID alloc] initWithUUIDString:v10];

      if (v9)
      {
      }

      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = [*(a1 + 32) isAddress:v7 inCompiledRanges:*(a1 + 40) tag:*(a1 + 72)];
      if ([v7 containsString:@":"]&& ([v7 hasPrefix:@"["]& 1) == 0)
      {
        v13 = [NSString stringWithFormat:@"[%@]", v7];

        v7 = v13;
      }

      v14 = [NSString stringWithFormat:@"%@:%@", v7, v8];
      v15 = *(a1 + 64);
      v41 = [v6 objectForKey:@"connect-timeout"];
      v43 = v14;
      v39 = v12;
      if (v41)
      {
        v16 = &IOMainPort_ptr;
        if (objc_opt_respondsToSelector())
        {
          [v41 doubleValue];
          v15 = v17;
          if (v17 < 0.2)
          {
            v15 = 1.0;
          }
        }
      }

      else
      {
        v16 = &IOMainPort_ptr;
      }

      v24 = [*(a1 + 32) serverDetailsVerifier];
      v25 = [v24 sanitize:v9 tag:*(a1 + 72)];

      if (!v25)
      {
        v25 = &__NSDictionary0__struct;
      }

      v26 = [v6 objectForKey:@"rank"];
      if (!v26 || (v27 = v16[236], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v26 = &off_100037628;
      }

      v28 = v43;
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        if ([*(*(*(a1 + 56) + 8) + 40) containsObject:v43])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v29 = +[NSMutableArray array];
        v30 = *(*(a1 + 48) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        v32 = +[NSMutableSet set];
        v33 = *(*(a1 + 56) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = v32;
      }

      v38 = *(*(*(a1 + 48) + 8) + 40);
      v53[0] = v43;
      v52[0] = @"localAddressAndPort";
      v52[1] = @"connectTimeout";
      [v16[236] numberWithDouble:v15];
      v35 = v40 = v25;
      v53[1] = v35;
      v53[2] = v40;
      v52[2] = @"details";
      v52[3] = @"favored";
      v36 = [v16[236] numberWithBool:v39];
      v53[3] = v36;
      v53[4] = v10;
      v52[4] = @"guid";
      v52[5] = @"rank";
      v53[5] = v26;
      v37 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:6];
      [v38 addObject:v37];

      v28 = v43;
      v25 = v40;
      [*(*(*(a1 + 56) + 8) + 40) addObject:v43];
LABEL_42:

      goto LABEL_29;
    }

    if (v9)
    {
LABEL_25:
    }

LABEL_26:
  }

  v18 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 72);
    v7 = v18;
    v20 = currentQueueName();
    v21 = [*(a1 + 32) locateURL];
    v22 = [v21 absoluteString];
    v23 = [*(a1 + 32) redactObject:v6];
    *buf = 67109890;
    v45 = v19;
    v46 = 2080;
    v47 = v20;
    v48 = 2112;
    v49 = v22;
    v50 = 2112;
    v51 = v23;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#%08x [%s] in response from %@, server entry is invalid: %@", buf, 0x26u);

LABEL_29:
  }
}

void sub_100015A34(uint64_t a1, void *a2, void *a3)
{
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100015B74;
  v18 = &unk_100035048;
  v22 = *(a1 + 72);
  v6 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v6;
  v21 = *(a1 + 64);
  v7 = a3;
  v8 = a2;
  v9 = objc_retainBlock(&v15);
  v10 = *(a1 + 32);
  [*(a1 + 48) timeIntervalSinceNow];
  v12 = v11;
  v13 = *(a1 + 56);
  v14 = dispatch_get_global_queue(0, 0);
  [v10 locateLocalCachingServersWithHeaders:v8 body:v7 timeout:v13 favoredServerRanges:v9 callback:v14 callbackQueue:*(a1 + 72) tag:v12];
}

void sub_100015B74(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 56);
    v21 = v14;
    v22 = currentQueueName();
    v23 = [*(a1 + 32) redactObject:v11];
    v24 = [*(a1 + 32) redactObject:v12];
    *buf = 67110658;
    v33 = v20;
    v34 = 2080;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    v38 = 1024;
    v39 = a3;
    v40 = 2112;
    v41 = v24;
    v42 = 2048;
    v43 = a6;
    v44 = 2112;
    v45 = v13;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "#%08x [%s] locateLocalCachingServers callback(locateServers=%@, sorted=%{BOOL}d, other=%@, locateValidityInterval=%.3f, locateError=%@)", buf, 0x40u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100015DA0;
  v25[3] = &unk_100034E50;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v31 = a3;
  v26 = v11;
  v27 = v12;
  v30 = a6;
  v28 = v13;
  v29 = v16;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(v15, v25);
}

id sub_100015DC0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) softwareVersions];
  [v2 setObject:v3 forKey:@"locator-software"];

  v4 = [NSString stringWithFormat:@"#%08x", *(a1 + 56)];
  [v2 setObject:v4 forKey:@"locator-tag"];

  [v2 setObject:*(a1 + 40) forKey:@"local-addresses"];
  if ([*(a1 + 48) count])
  {
    [v2 setObject:*(a1 + 48) forKey:@"public-address-ranges"];
  }

  [v2 setObject:&__kCFBooleanTrue forKey:@"ranked-results"];
  v5 = [v2 copy];

  return v5;
}

void sub_100015ED8(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 88);
    v21 = v12;
    v22 = 67110915;
    v23 = v20;
    v24 = 2080;
    v25 = currentQueueName();
    v26 = 2048;
    v27 = [v9 count];
    v28 = 2113;
    v29 = v9;
    v30 = 2048;
    v31 = [v10 count];
    v32 = 2112;
    v33 = v10;
    v34 = 2048;
    v35 = a5;
    v36 = 2112;
    v37 = v11;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "#%08x [%s] locateLocalCachingServers callback(dnsPublicAddressRanges=[%ld]%{private}@ dnsFavoredServerRanges=[%ld]%@ dnsValidityInterval=%.3f dnsError=%@)", &v22, 0x4Eu);
  }

  if (([*(a1 + 32) amRunningOnMyQueue] & 1) == 0)
  {
    sub_100021718();
  }

  if (v11)
  {
    v13 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 88);
      v15 = v13;
      v16 = currentQueueName();
      v22 = 67109634;
      v23 = v14;
      v24 = 2080;
      v25 = v16;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#%08x [%s] ignoring DNS error: %@", &v22, 0x1Cu);
    }
  }

  if (a5 == 0.0)
  {
    a5 = 3600.0;
  }

  else if (a5 < 300.0 && ([*(a1 + 32) testFlags] & 2) == 0)
  {
    a5 = 300.0;
  }

  if (!v9)
  {
    v9 = &__NSArray0__struct;
  }

  if (!v10)
  {
    v10 = &__NSArray0__struct;
  }

  [*(a1 + 32) uncacheDNSPublicAddressRangesAndFavoredServerRangesForNetworkIdentifiers:*(a1 + 40) tag:*(a1 + 88)];
  [*(a1 + 32) cacheDNSPublicAddressRanges:v9 andFavoredServerRanges:v10 forNetworkIdentifiers:*(a1 + 40) validityInterval:*(a1 + 88) tag:a5];
  [*(a1 + 32) saveDiskCacheWithTag:*(a1 + 88)];
  if ([v9 count])
  {
    [*(a1 + 48) addObject:v9];
  }

  if ([v10 count])
  {
    [*(a1 + 56) addObject:v10];
  }

  v18 = *(a1 + 64);
  v17 = *(a1 + 72);
  v19 = (*(*(a1 + 80) + 16))();
  (*(v17 + 16))(v17, v18, v19);
}

void sub_100016440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016468(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (([v11 isEqualToString:@"query-parameters"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"sc"))
  {
    v8 = [*(a1 + 32) objectForKey:v11];
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_4:
    if ([v7 isEqual:v8])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (![v11 isEqualToString:@"sizeHint"])
  {
    v8 = [*(a1 + 32) objectForKey:v11];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_6;
  }

  v9 = [v7 longLongValue];
  v8 = [*(a1 + 40) objectForKey:@"cache-size"];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [v8 longLongValue];
      if (v9 >= 1 && v10 >= 1 && v9 > v10)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

int64_t sub_100016BBC(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKey:@"rank"];
  v6 = [(NSDictionary *)v4 objectForKey:@"rank"];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100017D60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100017F3C;
  v19[3] = &unk_1000351C0;
  v20 = a4;
  v32 = *(a1 + 128);
  v9 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = v8;
  v23 = *(a1 + 48);
  v24 = v7;
  v25 = *(a1 + 56);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v26 = v15;
  v27 = v14;
  v31 = *(a1 + 120);
  v28 = *(a1 + 104);
  v29 = *(a1 + 32);
  v30 = *(a1 + 112);
  v16 = v7;
  v17 = v8;
  v18 = v20;
  dispatch_async(v9, v19);
}

void sub_100017F3C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = gLogHandle;
    if (!os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v24 = 0;
      goto LABEL_21;
    }

    v3 = *(a1 + 152);
    v4 = v2;
    v5 = currentQueueName();
    v6 = [*(a1 + 40) absoluteString];
    v7 = *(a1 + 32);
    *buf = 67109890;
    v78 = v3;
    v79 = 2080;
    v80 = v5;
    v81 = 2112;
    v82 = v6;
    v83 = 2112;
    v84 = v7;
    v8 = "#%08x [%s] Error sending %@: %@";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v8, buf, 0x26u);

    goto LABEL_20;
  }

  v9 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*(a1 + 88))
    {
      goto LABEL_20;
    }

    v25 = gLogHandle;
    if (!os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v26 = *(a1 + 152);
    v4 = v25;
    v27 = currentQueueName();
    v6 = [*(a1 + 40) absoluteString];
    v28 = *(a1 + 48);
    *buf = 67109890;
    v78 = v26;
    v79 = 2080;
    v80 = v27;
    v81 = 2112;
    v82 = v6;
    v83 = 2112;
    v84 = v28;
    v8 = "#%08x [%s] Invalid response from %@: %@";
    goto LABEL_4;
  }

  v10 = *(a1 + 48);
  if ([v10 statusCode] != 200)
  {
    v35 = [v10 statusCode];
    v36 = gLogHandle;
    v37 = os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO);
    if (v35 != 404)
    {
      if (v37)
      {
        v42 = *(a1 + 152);
        v43 = v36;
        v44 = currentQueueName();
        v45 = [*(a1 + 40) absoluteString];
        *buf = 67109890;
        v78 = v42;
        v79 = 2080;
        v80 = v44;
        v81 = 2112;
        v82 = v45;
        v83 = 1024;
        LODWORD(v84) = [v10 statusCode];
        v46 = "#%08x [%s] Error response from %@: %d";
        v47 = v43;
        v48 = OS_LOG_TYPE_INFO;
        v49 = 34;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v47, v48, v46, buf, v49);
      }

LABEL_42:
      v24 = 0;
      goto LABEL_43;
    }

    if (v37)
    {
      v38 = *(a1 + 152);
      v39 = v36;
      v40 = currentQueueName();
      v41 = [*(a1 + 40) absoluteString];
      *buf = 67109634;
      v78 = v38;
      v79 = 2080;
      v80 = v40;
      v81 = 2112;
      v82 = v41;
      v24 = 1;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "#%08x [%s] No affinity from %@", buf, 0x1Cu);

LABEL_43:
      goto LABEL_21;
    }

LABEL_36:
    v24 = 1;
    goto LABEL_43;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_36;
  }

  v11 = *(a1 + 64);
  if (!v11 || [v11 length] > 0x400)
  {
    v50 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 152);
      v43 = v50;
      v52 = currentQueueName();
      v45 = [*(a1 + 40) absoluteString];
      v53 = [*(a1 + 64) length];
      *buf = 67109890;
      v78 = v51;
      v79 = 2080;
      v80 = v52;
      v81 = 2112;
      v82 = v45;
      v83 = 2048;
      v84 = v53;
      v46 = "#%08x [%s] Invalid response from %@: %ld bytes";
      v47 = v43;
      v48 = OS_LOG_TYPE_DEFAULT;
      v49 = 38;
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v12 = *(a1 + 64);
  v74 = 0;
  v13 = [NSPropertyListSerialization propertyListWithData:v12 options:0 format:0 error:&v74];
  v14 = v74;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v13 objectForKey:@"lastSaved"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v67 = v13;
          v17 = v14;
          v18 = *(a1 + 152);
          v65 = v16;
          v19 = v15;
          v20 = currentQueueName();
          v21 = [*(a1 + 40) absoluteString];
          *buf = 67109890;
          v78 = v18;
          v14 = v17;
          v79 = 2080;
          v80 = v20;
          v15 = v19;
          v81 = 2112;
          v82 = v21;
          v83 = 2112;
          v84 = v19;
          v13 = v67;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "#%08x [%s] %@ lastSaved %@", buf, 0x26u);
        }

        v22 = *(a1 + 72);
        v87[0] = @"server";
        v87[1] = @"lastSaved";
        v88[0] = v22;
        v88[1] = v15;
        v23 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
        v24 = 1;
        goto LABEL_48;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v54 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(a1 + 152);
    v66 = v54;
    v68 = v13;
    v55 = v14;
    v56 = currentQueueName();
    v57 = [*(a1 + 40) absoluteString];
    v58 = *(a1 + 80);
    v59 = v15;
    v60 = [*(a1 + 64) bytes];
    v61 = [*(a1 + 64) length];
    v62 = v60;
    v15 = v59;
    v63 = [v58 safeString:v62 length:v61 forceHex:0];
    *buf = 67110146;
    v78 = v64;
    v79 = 2080;
    v80 = v56;
    v14 = v55;
    v13 = v68;
    v81 = 2112;
    v82 = v57;
    v83 = 2112;
    v84 = v63;
    v85 = 2112;
    v86 = v14;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#%08x [%s] Invalid response from %@: %@ (%@)", buf, 0x30u);
  }

  v24 = 0;
  v23 = 0;
LABEL_48:

  if (!v23)
  {
LABEL_21:
    v29 = *(a1 + 72);
    if ((v24 & 1) != 0 || *(a1 + 88))
    {
      v30 = v29;
    }

    else
    {
      v30 = [v29 mutableCopy];
      [v30 setObject:&off_100037640 forKeyedSubscript:@"failureCount"];
    }

    v75[0] = @"server";
    v75[1] = @"lastSaved";
    v76[0] = v30;
    v31 = +[NSDate distantPast];
    v76[1] = v31;
    v23 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];

    goto LABEL_26;
  }

  if ((v24 & 1) == 0)
  {
    sub_10002179C();
  }

  v24 = 1;
LABEL_26:
  [*(a1 + 96) addObject:v23];
  v32 = [*(a1 + 96) count];
  if (v32 != [*(a1 + 104) count])
  {
    v34 = 0;
    v33 = 0;
    if (*(a1 + 88))
    {
      goto LABEL_32;
    }

LABEL_31:
    [*(a1 + 80) updateHealthOfCachingServerWithHostport:*(a1 + 136) healthy:v24 override:1 callback:v33 callbackQueue:v34 tag:*(a1 + 152)];
    goto LABEL_32;
  }

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000187A0;
  v69[3] = &unk_100035198;
  v70 = *(a1 + 96);
  v71 = *(a1 + 112);
  v73 = *(a1 + 144);
  v72 = *(a1 + 120);
  v33 = objc_retainBlock(v69);
  v34 = *(a1 + 128);

  if (!*(a1 + 88))
  {
    goto LABEL_31;
  }

  if (v33)
  {
    dispatch_async(v34, v33);
  }

LABEL_32:
}

void sub_1000187A0(uint64_t a1)
{
  [*(a1 + 32) sortUsingComparator:&stru_100035170];
  v2 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) objectForKey:@"server"];
        [v2 addObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 40);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100018A98;
  v15 = &unk_100034FF8;
  v10 = *(a1 + 56);
  v16 = v2;
  v17 = v10;
  v11 = v2;
  dispatch_async(v9, &v12);
  [*(a1 + 48) invalidateAndCancel];
}

int64_t sub_10001896C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSDictionary *)v4 objectForKey:@"lastSaved"];
  v7 = [(NSDictionary *)v5 objectForKey:@"lastSaved"];
  v8 = [v7 compare:v6];
  if (!v8)
  {
    v9 = [(NSDictionary *)v4 objectForKeyedSubscript:@"server"];
    v10 = [v9 objectForKeyedSubscript:@"favored"];
    v11 = [v10 BOOLValue];

    v12 = [(NSDictionary *)v5 objectForKeyedSubscript:@"server"];
    v13 = [v12 objectForKeyedSubscript:@"favored"];
    v14 = [v13 BOOLValue];

    if (v11)
    {
      v8 = v14 - 1;
    }

    else
    {
      v8 = v14;
    }
  }

  return v8;
}

void sub_100018ACC(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    v2 = NSURLErrorDomain;
    v3 = *(a1 + 64);
    v4 = @"simulated timeout";
    v5 = -1001;
  }

  else
  {
    if (*(a1 + 69) != 1)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v12 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:0];
      }

      else
      {
        v12 = 0;
      }

      v10 = [NSHTTPURLResponse alloc];
      if (*(a1 + 56))
      {
        v11 = *(a1 + 56);
      }

      else
      {
        v11 = 404;
      }

      v8 = [v10 initWithURL:*(a1 + 40) statusCode:v11 HTTPVersion:@"HTTP/1.1" headerFields:0];
      v6 = 0;
      v7 = v12;
      goto LABEL_13;
    }

    v2 = NSURLErrorDomain;
    v3 = *(a1 + 64);
    v4 = @"simulated error";
    v5 = -1011;
  }

  v6 = createTaggedError(v2, v5, v4, v3);
  v7 = 0;
  v8 = 0;
LABEL_13:
  v13 = v7;
  (*(*(a1 + 48) + 16))();
}

void sub_100019990(uint64_t a1)
{
  if (*(a1 + 84) == 1)
  {
    v2 = [*(a1 + 32) lastLocateDate];
    if (!v2 || (v3 = v2, [*(a1 + 32) lastLocateDate], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceNow"), v6 = v5, v4, v3, v6 <= -10.0))
    {
      v21 = 1;
      v20 = 1;
      goto LABEL_14;
    }

    v7 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 80);
      v9 = v7;
      v10 = currentQueueName();
      v11 = [*(a1 + 32) lastLocateDate];
      v12 = [NSDate dateWithTimeInterval:v11 sinceDate:10.0];
      *buf = 67109634;
      *&buf[4] = v8;
      v56 = 2080;
      v57 = v10;
      v58 = 2112;
      v59 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#%08x [%s] ignoring forceMiss so soon after locate; next allowed %@", buf, 0x1Cu);
    }
  }

  v54 = 0;
  *buf = 0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v53 = 0uLL;
  LODWORD(v35) = *(a1 + 80);
  v16 = [v13 probeCacheWithLabel:@"early" capabilities:v14 affinityID:v15 hitServers:&v53 + 8 hitServersAreSorted:&v54 hitOtherServers:&v53 hitValidityInterval:buf tag:v35];
  v17 = *(&v53 + 1);
  v18 = v53;
  v19 = v18;
  if (v16 == 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019E18;
    block[3] = &unk_100035238;
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v49 = v19;
    v50 = v23;
    v52 = v54;
    v48 = v17;
    v51 = *buf;
    v24 = v19;
    v25 = v17;
    dispatch_async(v22, block);

    return;
  }

  if (v16 == 1)
  {
    if (!*(a1 + 48))
    {
      sub_100021964();
    }

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 0;
LABEL_14:
  if (*(a1 + 85) == 1)
  {
    v26 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 80);
      v28 = v26;
      v29 = currentQueueName();
      *buf = 67109378;
      *&buf[4] = v27;
      v56 = 2080;
      v57 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#%08x [%s] quick miss", buf, 0x12u);
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100019E3C;
    v44[3] = &unk_100035260;
    v30 = *(a1 + 56);
    v45 = *(a1 + 64);
    v46 = *(a1 + 80);
    dispatch_async(v30, v44);
    if (*(a1 + 86) == 1)
    {
      v31 = *(a1 + 32);
      [v31 locateTimeout];
      [v31 relocateCachingServersWithTimeout:*(a1 + 40) capabilities:*(a1 + 48) affinityID:v20 forceRefresh:*(a1 + 80) tag:?];
    }

    v32 = v45;
  }

  else
  {
    v33 = dispatch_get_global_queue(0, 0);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100019ECC;
    v36[3] = &unk_100035288;
    v34 = *(a1 + 40);
    v36[4] = *(a1 + 32);
    v40 = *(a1 + 72);
    v37 = v34;
    v38 = *(a1 + 48);
    v42 = v21;
    v43 = v21;
    v39 = *(a1 + 64);
    v41 = *(a1 + 80);
    dispatch_async(v33, v36);

    v32 = v37;
  }
}

void sub_100019E3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = createTaggedError(NSPOSIXErrorDomain, 60, @"quick miss requested", *(a1 + 40));
  (*(v1 + 16))(v1, 0, 0, 0, v2, 300.0);
}

void sub_10001A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001A168(uint64_t a1)
{
  result = [*(a1 + 32) cacheRefreshInProgress];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) setCacheRefreshInProgress:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

id sub_10001A1B0(uint64_t a1)
{
  v2 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = v2;
    *buf = 67109378;
    v13 = v3;
    v14 = 2080;
    v15 = currentQueueName();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#%08x [%s] starting proactive cache refresh", buf, 0x12u);
  }

  v5 = *(a1 + 32);
  [v5 locateTimeout];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 60);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001A2F4;
  v10[3] = &unk_100035300;
  v11 = *(a1 + 56);
  v10[4] = *(a1 + 32);
  return [v5 slowcateCachingServerWithTimeout:v6 capabilities:v7 affinityID:v8 forceRefresh:0 forceDNSRefresh:v10 callback:? tag:?];
}

void sub_10001A2F4(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v11 = a5;
  v12 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 40);
    v14 = v12;
    v15 = a4;
    v16 = a2;
    v17 = currentQueueName();
    v18 = [*(a1 + 32) redactObject:v16];

    v19 = [*(a1 + 32) redactObject:v15];

    *buf = 67110658;
    v23 = v13;
    v24 = 2080;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 1024;
    v29 = a3;
    v30 = 2112;
    v31 = v19;
    v32 = 2048;
    v33 = a6;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#%08x [%s] cache refresh finished (servers=%@, sorted=%{BOOL}d, other=%@, validityInterval=%.3f, error=%@)", buf, 0x40u);
  }

  v20 = [*(a1 + 32) cacheRefreshQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A4E4;
  block[3] = &unk_100034B58;
  block[4] = *(a1 + 32);
  dispatch_sync(v20, block);
}

id sub_10001A4E4(uint64_t a1)
{
  if (([*(a1 + 32) cacheRefreshInProgress] & 1) == 0)
  {
    sub_100021990();
  }

  v2 = *(a1 + 32);

  return [v2 setCacheRefreshInProgress:0];
}

void sub_10001A914(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 48);
    v17 = v14;
    v18 = currentQueueName();
    v19 = [*(a1 + 32) redactObject:v11];
    v20 = [*(a1 + 32) redactObject:v12];
    v21[0] = 67110658;
    v21[1] = v16;
    v22 = 2080;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    v26 = 1024;
    v27 = a3;
    v28 = 2112;
    v29 = v20;
    v30 = 2048;
    v31 = a6;
    v32 = 2112;
    v33 = v13;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#%08x [%s] slowcateCachingServer finishSingleLocateAndCallBackWithServers(servers=%@, sorted=%{BOOL}d, other=%@, validityInterval=%.3f, error=%@)", v21, 0x40u);
  }

  if ([*(a1 + 32) singleLocateTag] != *(a1 + 48))
  {
    sub_1000219E8();
  }

  [*(a1 + 32) setSingleLocateTag:0];
  v15 = [*(a1 + 32) singleLocate];
  dispatch_semaphore_signal(v15);

  (*(*(a1 + 40) + 16))(a6);
}

void sub_10001AB00(uint64_t a1)
{
  if ((*(a1 + 76) & 1) == 0)
  {
    v44 = 0;
    v42 = 0;
    v43 = 0.0;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v41 = 0;
    LODWORD(v22) = *(a1 + 72);
    v5 = [v2 probeCacheWithLabel:@"standard" capabilities:v3 affinityID:v4 hitServers:&v42 hitServersAreSorted:&v44 hitOtherServers:&v41 hitValidityInterval:&v43 tag:v22];
    v6 = v42;
    v7 = v41;
    v8 = v7;
    if (v5 == 2)
    {
      (*(*(a1 + 64) + 16))(v43);
LABEL_7:

      goto LABEL_17;
    }

    if (v5 == 1)
    {
      v9 = *(a1 + 48);
      if (!v9)
      {
        sub_100021A14();
      }

      v10 = *(a1 + 32);
      [*(a1 + 56) timeIntervalSinceNow];
      v12 = v11;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10001AE90;
      v35[3] = &unk_100035350;
      v35[4] = *(a1 + 32);
      v36 = *(a1 + 48);
      v40 = *(a1 + 72);
      v38 = *(a1 + 64);
      v37 = v8;
      v39 = v43;
      v13 = [*(a1 + 32) queue];
      [v10 queryServersFromArray:v6 forReachabilityOrAffinityID:v9 withTimeout:v35 callbackWithServers:v13 callbackQueue:*(a1 + 72) tag:v12];

      goto LABEL_7;
    }
  }

  if (([*(a1 + 32) amRunningOnMyQueue] & 1) == 0)
  {
    sub_100021A40();
  }

  v14 = [*(a1 + 32) localAddresses];
  v15 = [*(a1 + 32) gatewayIdentifiers];
  if (!v14)
  {
    if (*(a1 + 76) == 1)
    {
      v16 = *(a1 + 32);
      v33 = v15;
      v34 = 0;
      v17 = [v16 makeLocalAddresses:&v34 andGatewayIdentifiers:&v33 tag:*(a1 + 72)];
      v14 = v34;
      v18 = v33;

      if ((v17 & 1) == 0)
      {

        v14 = 0;
        v18 = 0;
      }

      [*(a1 + 32) setLocalAddresses:v14];
      [*(a1 + 32) setGatewayIdentifiers:v18];
      v15 = v18;
    }

    else
    {
      v14 = 0;
    }
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001AF10;
  v23[3] = &unk_1000353C8;
  v31 = *(a1 + 72);
  v19 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v19;
  v30 = *(a1 + 64);
  v25 = v14;
  v26 = v15;
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v29 = 0;
  v32 = *(a1 + 77);
  v20 = v15;
  v6 = v14;
  v21 = objc_retainBlock(v23);
  (v21[2])(v21, 0, 0, 0, 0, 0.0);

LABEL_17:
}

void sub_10001AE90(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    [*(a1 + 32) cacheServers:v4 forAffinityID:*(a1 + 40) tag:*(a1 + 72)];
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 56) + 16))(*(a1 + 64));
}

void sub_10001AF10(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v53 = *(a1 + 96);
    v54 = v14;
    v55 = currentQueueName();
    [*(a1 + 32) redactObject:v11];
    v57 = v56 = v13;
    [*(a1 + 32) redactObject:v12];
    v58 = v62 = v12;
    *buf = 67110658;
    v71 = v53;
    v72 = 2080;
    v73 = v55;
    v74 = 2112;
    v75 = v57;
    v76 = 1024;
    v77 = a3;
    v78 = 2112;
    v79 = v58;
    v80 = 2048;
    v81 = a6;
    v82 = 2112;
    v83 = v56;
    _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "#%08x [%s] slowcateCachingServer callback(localhostServers=%@, sorted=%{BOOL}d, other=%@, localhostValidityInterval=%.3f, localhostError=%@)", buf, 0x40u);

    v12 = v62;
    v13 = v56;
  }

  if (([*(a1 + 32) amRunningOnMyQueue] & 1) == 0)
  {
    sub_100021A6C();
  }

  if ([v11 count])
  {
    if (a6 == 0.0)
    {
      a6 = 1200.0;
    }

    else if (a6 < 300.0 && ([*(a1 + 32) testFlags] & 4) == 0)
    {
      a6 = 300.0;
    }

    [*(a1 + 32) uncacheAllServersWithTag:*(a1 + 96)];
    v19 = *(a1 + 32);
    v20 = [v19 servers:v11 byAppendingServers:v12];
    v21 = [*(a1 + 32) localhostAddresses];
    [v19 cacheServers:v20 forNetworkIdentifiers:v21 validityInterval:*(a1 + 96) tag:a6];

    [*(a1 + 32) uncacheAllRecentlySeenWithTag:*(a1 + 96)];
    v22 = *(a1 + 32);
    v23 = [v22 localhostAddresses];
    [v22 cacheRecentlySeen:1 forNetworkIdentifiers:v23 validityInterval:*(a1 + 96) tag:604800.0];

    [*(a1 + 32) saveDiskCacheWithTag:*(a1 + 96)];
    [*(a1 + 32) uncacheAllAffinitiesWithTag:*(a1 + 96)];
    v18 = [*(a1 + 32) serversFromArray:v11 withCapabilities:*(a1 + 40) tag:*(a1 + 96)];
    if ([v18 count])
    {
      v24 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 96);
        v26 = v24;
        v27 = currentQueueName();
        [*(a1 + 32) describeCapableServers:v18 fromAvailableServers:v11 withOtherServers:v12];
        v29 = v28 = v13;
        *buf = 67109634;
        v71 = v25;
        v72 = 2080;
        v73 = v27;
        v74 = 2112;
        v75 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#%08x [%s] found %@", buf, 0x1Cu);

        v13 = v28;
      }

      (*(*(a1 + 88) + 16))(a6);

      goto LABEL_25;
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = [v15 localhostAddresses];
    [v15 uncacheServersForNetworkIdentifiers:v16 tag:*(a1 + 96)];

    v17 = *(a1 + 32);
    v18 = [v17 localhostAddresses];
    [v17 cacheNotRecentlySeenForNetworkIdentifiers:v18 tag:*(a1 + 96)];
  }

  if (*(a1 + 48))
  {
    v30 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
    {
      v31 = *(a1 + 96);
      v32 = v30;
      v33 = currentQueueName();
      *buf = 67109378;
      v71 = v31;
      v72 = 2080;
      v73 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "#%08x [%s] checking for caching servers on local network", buf, 0x12u);
    }

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10001B5C4;
    v63[3] = &unk_1000353A0;
    v69 = *(a1 + 96);
    v63[4] = *(a1 + 32);
    v64 = *(a1 + 56);
    v65 = *(a1 + 40);
    v66 = *(a1 + 64);
    v68 = *(a1 + 88);
    v67 = *(a1 + 72);
    v34 = objc_retainBlock(v63);
    v35 = [*(a1 + 32) locateTetheredCachingServersWithTag:*(a1 + 96)];
    if ([v35 count])
    {
      (v34[2])(v34, v35, 0, 0, 0, 3600.0);
    }

    else
    {
      v60 = *(a1 + 32);
      [*(a1 + 72) timeIntervalSinceNow];
      v43 = v42;
      v44 = v13;
      v61 = v11;
      v45 = v12;
      v46 = *(a1 + 48);
      v47 = *(a1 + 56);
      v48 = *(a1 + 80);
      v49 = *(a1 + 100);
      v50 = [*(a1 + 32) queue];
      LODWORD(v59) = *(a1 + 96);
      v51 = v46;
      v13 = v44;
      v52 = v47;
      v12 = v45;
      v11 = v61;
      [v60 locateLocalCachingServersWithTimeout:v51 localAddresses:v52 gatewayIdentifiers:v48 configurationProfiles:v49 forceDNSRefresh:v34 callback:v50 callbackQueue:v43 tag:v59];
    }
  }

  else
  {
    v36 = *(a1 + 32);
    v37 = [v36 localhostAddresses];
    [v36 cacheServers:&__NSArray0__struct forNetworkIdentifiers:v37 validityInterval:*(a1 + 96) tag:5.0];

    [*(a1 + 32) saveDiskCacheWithTag:*(a1 + 96)];
    [*(a1 + 32) uncacheAllAffinitiesWithTag:*(a1 + 96)];
    v38 = gLogHandle;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 96);
      v40 = v38;
      v41 = currentQueueName();
      *buf = 67109378;
      v71 = v39;
      v72 = 2080;
      v73 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#%08x [%s] no local network", buf, 0x12u);
    }

    (*(*(a1 + 88) + 16))(3600.0);
  }

LABEL_25:
}

void sub_10001B5C4(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v35 = *(a1 + 80);
    v31 = v14;
    v32 = currentQueueName();
    v33 = [*(a1 + 32) redactObject:v11];
    v34 = [*(a1 + 32) redactObject:v12];
    *buf = 67110658;
    v45 = v35;
    v46 = 2080;
    v47 = v32;
    v48 = 2112;
    v49 = v33;
    v50 = 1024;
    v51 = a3;
    v52 = 2112;
    v53 = v34;
    v54 = 2048;
    v55 = a6;
    v56 = 2112;
    v57 = v13;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#%08x [%s] slowcateCachingServer callback(localServers=%@, sorted=%{BOOL}d, other=%@, localValidityInterval=%.3f, localError=%@)", buf, 0x40u);
  }

  if (([*(a1 + 32) amRunningOnMyQueue] & 1) == 0)
  {
    sub_100021A98();
  }

  if (a6 == 0.0)
  {
    a6 = 3600.0;
  }

  else if (a6 < 300.0 && ([*(a1 + 32) testFlags] & 4) == 0)
  {
    a6 = 300.0;
  }

  if (v11 && !v13)
  {
    if ([v11 count])
    {
      [*(a1 + 32) uncacheServersForNetworkIdentifiers:*(a1 + 40) tag:*(a1 + 80)];
      v15 = *(a1 + 32);
      v16 = [v15 servers:v11 byAppendingServers:v12];
      [v15 cacheServers:v16 forNetworkIdentifiers:*(a1 + 40) validityInterval:*(a1 + 80) tag:a6];

      [*(a1 + 32) uncacheRecentlySeenForNetworkIdentifiers:*(a1 + 40) tag:*(a1 + 80)];
      [*(a1 + 32) cacheRecentlySeen:1 forNetworkIdentifiers:*(a1 + 40) validityInterval:*(a1 + 80) tag:604800.0];
      [*(a1 + 32) saveDiskCacheWithTag:*(a1 + 80)];
      v17 = [*(a1 + 32) serversFromArray:v11 withCapabilities:*(a1 + 48) tag:*(a1 + 80)];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001BA90;
      v37[3] = &unk_100035378;
      v43 = *(a1 + 80);
      v37[4] = *(a1 + 32);
      v38 = v17;
      v39 = v12;
      v40 = *(a1 + 56);
      v41 = *(a1 + 72);
      v42 = a6;
      v18 = v17;
      v19 = objc_retainBlock(v37);
      v20 = *(a1 + 32);
      v21 = *(a1 + 56);
      [*(a1 + 64) timeIntervalSinceNow];
      v23 = v22;
      v24 = [*(a1 + 32) queue];
      [v20 queryServersFromArray:v18 forReachabilityOrAffinityID:v21 withTimeout:v19 callbackWithServers:v24 callbackQueue:*(a1 + 80) tag:v23];

      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v13)
  {
LABEL_15:
    v36 = 0;
    [*(a1 + 32) cachedRecentlySeen:&v36 forNetworkIdentifiers:*(a1 + 40) validityInterval:0 tag:*(a1 + 80)];
    v25 = v36;
    if (((a6 > 3600.0) & [v25 BOOLValue]) != 0)
    {
      a6 = 3600.0;
    }

    goto LABEL_18;
  }

  a6 = 3600.0;
LABEL_18:
  [*(a1 + 32) uncacheServersForNetworkIdentifiers:*(a1 + 40) tag:*(a1 + 80)];
  [*(a1 + 32) cacheServers:&__NSArray0__struct forNetworkIdentifiers:*(a1 + 40) validityInterval:*(a1 + 80) tag:a6];
  [*(a1 + 32) cacheNotRecentlySeenForNetworkIdentifiers:*(a1 + 40) tag:*(a1 + 80)];
  [*(a1 + 32) saveDiskCacheWithTag:*(a1 + 80)];
  [*(a1 + 32) uncacheAllAffinitiesWithTag:*(a1 + 80)];
  v26 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 80);
    v28 = v26;
    v29 = currentQueueName();
    v30 = [*(a1 + 32) describeCapableServers:0 fromAvailableServers:0 withOtherServers:0];
    *buf = 67109634;
    v45 = v27;
    v46 = 2080;
    v47 = v29;
    v48 = 2112;
    v49 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#%08x [%s] found %@", buf, 0x1Cu);
  }

  (*(*(a1 + 72) + 16))(a6);
LABEL_21:
}

void sub_10001BA90(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    v8 = v6;
    v9 = currentQueueName();
    v10 = [*(a1 + 32) describeCapableServers:*(a1 + 40) fromAvailableServers:v5 withOtherServers:*(a1 + 48)];
    v12[0] = 67109890;
    v12[1] = v7;
    v13 = 2080;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#%08x [%s] found %@, sorted=%{BOOL}d", v12, 0x22u);
  }

  if (*(a1 + 56) && [v5 count])
  {
    [*(a1 + 32) cacheServers:v5 forAffinityID:*(a1 + 56) tag:*(a1 + 80)];
  }

  v11 = *(a1 + 48);
  (*(*(a1 + 64) + 16))(*(a1 + 72));
}

void sub_10001BE88(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if (a3 && ([*(a1 + 32) appendString:{@", "}], a3 > 0x13))
  {
    [*(a1 + 32) appendString:@"..."];
    *a4 = 1;
  }

  else
  {
    v7 = [v10 objectForKeyedSubscript:@"localAddressAndPort"];
    [*(a1 + 32) appendString:v7];
    v8 = [v10 objectForKeyedSubscript:@"failureCount"];
    v9 = [v8 unsignedIntegerValue];

    if (v9 >= 3)
    {
      [*(a1 + 32) appendString:@" unhealthy"];
    }

    if (([*(a1 + 40) containsObject:v7] & 1) == 0)
    {
      [*(a1 + 32) appendString:@" incapable"];
    }
  }
}

void sub_10001C850(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = 0;
  v3 = [v2 localhostAddresses];
  [v2 cachedRecentlySeen:&v25 forNetworkIdentifiers:v3 validityInterval:0 tag:*(a1 + 56)];
  v4 = v25;

  if (v4 && ([v4 BOOLValue] & 1) == 0)
  {
    v6 = [*(a1 + 32) localAddresses];
    v7 = [*(a1 + 32) gatewayIdentifiers];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *(a1 + 32);
      v23 = v8;
      v24 = 0;
      v10 = [v9 makeLocalAddresses:&v24 andGatewayIdentifiers:&v23 tag:*(a1 + 56)];
      v6 = v24;
      v11 = v23;

      if ((v10 & 1) == 0)
      {

        v6 = 0;
        v11 = 0;
      }

      [*(a1 + 32) setLocalAddresses:v6];
      [*(a1 + 32) setGatewayIdentifiers:v11];
      v8 = v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v12 = *(a1 + 32);
    v22 = 0;
    [v12 cachedRecentlySeen:&v22 forNetworkIdentifiers:v8 validityInterval:0 tag:*(a1 + 56)];
    v13 = v22;
    v4 = v13;
    if (v13)
    {
      v5 = [v13 BOOLValue];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10001CA64;
  v19 = &unk_100035418;
  v14 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = v5;
  dispatch_async(v14, &v16);
  if (!v4 && *(a1 + 60) == 1)
  {
    v15 = *(a1 + 32);
    [v15 locateTimeout];
    [v15 relocateCachingServersWithTimeout:0 capabilities:0 affinityID:1 forceRefresh:*(a1 + 56) tag:?];
  }
}

void sub_10001CD44(uint64_t a1)
{
  v2 = [*(a1 + 32) localhostAddresses];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) localhostAddresses];
    v44 = 0;
    v6 = [v4 probeCacheForType:@"localhost" withLabel:@"health-update" networkIdentifiers:v5 hitServers:&v44 hitValidityInterval:0 tag:*(a1 + 72)];
    v7 = v44;

    if ((v6 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v8 = [*(a1 + 32) localAddresses];
    v9 = [*(a1 + 32) gatewayIdentifiers];
    if (!v8)
    {
      v10 = *(a1 + 32);
      v42 = v9;
      v43 = 0;
      v11 = [v10 makeLocalAddresses:&v43 andGatewayIdentifiers:&v42 tag:*(a1 + 72)];
      v8 = v43;
      v12 = v42;

      if ((v11 & 1) == 0)
      {

        v12 = 0;
        v8 = 0;
      }

      [*(a1 + 32) setLocalAddresses:v8];
      [*(a1 + 32) setGatewayIdentifiers:v12];
      v9 = v12;
    }

    v13 = *(a1 + 32);
    v41 = 0;
    v14 = [v13 probeCacheForType:@"local" withLabel:@"health-update" networkIdentifiers:v9 hitServers:&v41 hitValidityInterval:0 tag:*(a1 + 72)];
    v7 = v41;

    if (!v14)
    {
      goto LABEL_33;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v7;
  v15 = [v7 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = [v19 objectForKeyedSubscript:{@"localAddressAndPort", v37}];
        v21 = [v20 isEqualToString:*(a1 + 48)];

        if (v21)
        {
          v22 = [v19 objectForKeyedSubscript:@"failureCount"];
          v23 = [v22 unsignedIntegerValue];

          if (*(a1 + 76) == 1)
          {
            if (v23)
            {
              if (v23 >= 3)
              {
                v24 = gLogHandle;
                if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = *(a1 + 72);
                  v26 = v24;
                  v27 = currentQueueName();
                  v28 = *(a1 + 48);
                  *buf = 67109634;
                  v46 = v25;
                  v47 = 2080;
                  v48 = v27;
                  v49 = 2112;
                  v50 = v28;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#%08x [%s] caching server %@ is healthy again", buf, 0x1Cu);
                }
              }

              [v19 removeObjectForKey:@"failureCount"];
            }
          }

          else if (v23 <= 2)
          {
            if (*(a1 + 77))
            {
              v29 = 3;
            }

            else
            {
              v29 = v23 + 1;
            }

            if (v29 >= 3)
            {
              v30 = gLogHandle;
              if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *(a1 + 72);
                v32 = v30;
                v33 = currentQueueName();
                v34 = *(a1 + 48);
                *buf = 67109634;
                v46 = v31;
                v47 = 2080;
                v48 = v33;
                v49 = 2112;
                v50 = v34;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#%08x [%s] caching server %@ is now unhealthy", buf, 0x1Cu);
              }
            }

            v35 = [NSNumber numberWithUnsignedInteger:v29];
            [v19 setObject:v35 forKeyedSubscript:@"failureCount"];
          }

          goto LABEL_32;
        }
      }

      v16 = [v7 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

LABEL_33:
  v36 = *(a1 + 64);
  if (v36)
  {
    dispatch_async(*(a1 + 56), v36);
  }
}

id sub_10001E070(id *a1)
{
  v2 = [a1[4] locateTag];
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100021C5C();
  }

  v3 = a1[5];
  v4 = [a1[4] locateSession];

  if (v3 == v4)
  {
    if (([a1[4] amRunningInMySingleLocate:v2] & 1) == 0)
    {
      sub_100021CF8();
    }

    [a1[4] setLocateTag:0];
    v5 = [a1[4] locateCallback];
    [a1[4] setLocateCallback:0];
    v6 = [a1[4] locateCallbackQueue];
    [a1[4] setLocateCallbackQueue:0];
    v7 = [a1[4] locateFavoredServerRanges];
    [a1[4] setLocateFavoredServerRanges:0];
    [a1[4] setLocateSession:0];
    v8 = [a1[4] locateServerValidated];
    v9 = [a1[4] locateResponseCode];
    [a1[4] setLocateResponseCode:0];
    v10 = [a1[4] locateResponseData];
    [a1[4] setLocateResponseData:0];
    v11 = +[NSDate date];
    [a1[4] setLastLocateDate:v11];

    if (a1[7])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E718;
      block[3] = &unk_100034FF8;
      v20 = v5;
      v19 = a1[7];
      v12 = v5;
      dispatch_async(v6, block);

      v13 = v20;
    }

    else
    {
      v14 = dispatch_get_global_queue(0, 0);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10001E340;
      v21[3] = &unk_1000354B8;
      v28 = v8;
      v15 = a1[4];
      v27 = v2;
      v21[4] = v15;
      v26 = v9;
      v22 = v10;
      v23 = v7;
      v24 = v6;
      v25 = v5;
      v16 = v5;
      dispatch_async(v14, v21);

      v13 = v22;
    }
  }

  return [a1[5] finishTasksAndInvalidate];
}

void sub_10001E340(uint64_t a1)
{
  v37 = 0;
  if ((*(a1 + 84) & 1) == 0)
  {
    v9 = [*(a1 + 32) locateURL];
    v10 = [v9 absoluteString];
    v11 = [NSString stringWithFormat:@"unable to validate server for %@", v10];
    v8 = createTaggedError(NSURLErrorDomain, -1202, v11, *(a1 + 80));

LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  v2 = *(a1 + 72);
  v3 = *(a1 + 40);
  if (v2 != 200)
  {
    if (v3)
    {
      v12 = [[NSString alloc] initWithData:*(a1 + 40) encoding:4];
      v2 = *(a1 + 72);
    }

    else
    {
      v12 = 0;
    }

    if (v2 == 404)
    {
      if ([v12 isEqualToString:@"NO_LOCAL_SERVER"])
      {
        v13 = gLogHandle;
        if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 80);
          v15 = v13;
          *buf = 67109378;
          v39 = v14;
          v40 = 2080;
          v41 = currentQueueName();
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#%08x [%s] NO_LOCAL_SERVER", buf, 0x12u);
        }

        v8 = 0;
        v37 = 0x40F5180000000000;
        goto LABEL_18;
      }

      v2 = *(a1 + 72);
    }

    v16 = [*(a1 + 32) locateURL];
    v17 = [v16 absoluteString];
    v18 = [NSString stringWithFormat:@"HTTP error %u from %@, body: %@", v2, v17, v12];
    v8 = createTaggedError(NSURLErrorDomain, -1011, v18, *(a1 + 80));

LABEL_18:
    goto LABEL_19;
  }

  if (!v3)
  {
    v8 = createTaggedError(NSURLErrorDomain, -1014, @"no data from server", *(a1 + 80));
    goto LABEL_19;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v36 = 0;
  v35 = 0;
  v6 = [v4 parseLocateResponse:v3 withFavoredServerRanges:v5 intoServers:&v36 validityInterval:&v37 error:&v35 tag:*(a1 + 80)];
  v7 = v36;
  v8 = v35;
  if ((v6 & 1) == 0)
  {

    v7 = 0;
    v37 = 0;
  }

LABEL_20:
  v19 = *(a1 + 32);
  v33 = 0;
  v34 = 0;
  [v19 refineServers:v7 intoBest:&v34 andOther:&v33 tag:*(a1 + 80)];
  v20 = v34;
  v21 = v33;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E6F8;
  block[3] = &unk_100035490;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v28 = v20;
  v29 = v21;
  v32 = v37;
  v30 = v8;
  v31 = v23;
  v24 = v8;
  v25 = v21;
  v26 = v20;
  dispatch_async(v22, block);
}

void sub_10001E860(uint64_t a1)
{
  v2 = [*(a1 + 32) locateTag];
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100021D24();
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) locateSession];

  if (v3 != v4)
  {
    goto LABEL_7;
  }

  if (([*(a1 + 32) amRunningInMySingleLocate:v2] & 1) == 0)
  {
    sub_100021DC0();
  }

  [*(a1 + 32) setLocateResponseData:0];
  v5 = *(a1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 56);
    [*(a1 + 32) setLocateResponseCode:{objc_msgSend(v6, "statusCode")}];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
LABEL_7:
    (*(*(a1 + 64) + 16))();
  }
}

void sub_10001EA6C(uint64_t a1)
{
  v2 = [*(a1 + 32) locateTag];
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100021DEC();
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) locateSession];

  if (v3 == v4)
  {
    if (([*(a1 + 32) amRunningInMySingleLocate:v2] & 1) == 0)
    {
      sub_100021EB8();
    }

    v5 = [*(a1 + 32) locateResponseData];

    if (v5)
    {
      v6 = [*(a1 + 32) locateResponseData];
      v7 = [v6 length];
      v8 = &v7[[*(a1 + 56) length]];

      v9 = *(a1 + 32);
      if (v8 > 0xA00000)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v10 = [v9 locateURL];
        v13 = [v10 absoluteString];
        v14 = [NSString stringWithFormat:@"too much data in response from %@ (max %lu)", v13, 10485760];
        v15 = createTaggedError(NSURLErrorDomain, -1103, v14, v2);
        [v9 URLSession:v12 task:v11 didCompleteWithError:v15];
      }

      else
      {
        v10 = [*(a1 + 32) locateResponseData];
        [v10 appendData:*(a1 + 56)];
      }
    }

    else
    {
      v10 = [*(a1 + 56) mutableCopy];
      [*(a1 + 32) setLocateResponseData:v10];
    }
  }
}

void sub_10001EEE0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 rangeOfString:@"guid" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    goto LABEL_6;
  }

  if (([v11 isEqualToString:@"first"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"last"))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 56);
LABEL_6:
    v9 = [v6 redactStringsFromObject:v5 usingBlock:v8];
    goto LABEL_7;
  }

  v7 = *(a1 + 32);
  v9 = [*(a1 + 40) redactObject:v5];
LABEL_7:
  v10 = v9;
  [v7 setObject:v9 forKey:v11];
}

id createTaggedError(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14[0] = a3;
  v7 = a3;
  v8 = a1;
  v9 = [NSString stringWithFormat:@"#%08x", a4, NSLocalizedDescriptionKey, @"com.apple.AssetCacheLocatorService.tag", v14[0]];
  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v13 count:2];
  v11 = [NSError errorWithDomain:v8 code:a2 userInfo:v10];

  return v11;
}

uint64_t acls_nsearch_notld(__res_9_state *a1, const char *a2, int a3, int a4, u_char *a5, int a6)
{
  *__error() = 0;
  _res_9_h_errno_set(a1, 1);
  v12 = a1->dnsrch[0];
  if (v12)
  {
    v13 = 0;
    v14 = 80;
    while (1)
    {
      result = res_9_nquerydomain(a1, a2, v12, a3, a4, a5, a6);
      if (result > 0)
      {
        return result;
      }

      if (*__error() == 61)
      {
        break;
      }

      res_h_errno = a1->res_h_errno;
      if (res_h_errno != 1)
      {
        if (res_h_errno != 4)
        {
          goto LABEL_9;
        }

        ++v13;
      }

      v12 = *(&a1->retrans + v14);
      v14 += 8;
      if (!v12)
      {
LABEL_9:
        if (!v13)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = a1;
        v18 = 4;
        goto LABEL_12;
      }
    }

    v17 = a1;
    v18 = 2;
LABEL_12:
    _res_9_h_errno_set(v17, v18);
  }

  return 0xFFFFFFFFLL;
}

__CFString *xpcEventDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == &_xpc_error_connection_interrupted)
  {
    v3 = @"XPC_ERROR_CONNECTION_INTERRUPTED";
  }

  else if (v1 == &_xpc_error_connection_invalid)
  {
    v3 = @"XPC_ERROR_CONNECTION_INVALID";
  }

  else if (v1 == &_xpc_error_termination_imminent)
  {
    v3 = @"XPC_ERROR_TERMINATION_IMMINENT";
  }

  else
  {
    v3 = [v1 description];
  }

  return v3;
}

void sub_10001FA60(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6[0] = 67109634;
  v6[1] = a3;
  v7 = 2080;
  v8 = currentQueueName();
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#%08x [%s] verify %@", v6, 0x1Cu);
}

void sub_10001FB78(int a1, NSObject *a2)
{
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2080;
  v5 = currentQueueName();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#%08x [%s] makeLocalAddresses", v3, 0x12u);
}

void sub_10001FC14(void *a1, char a2, int a3)
{
  v5 = a1;
  v6[0] = 67109634;
  v6[1] = a3;
  v7 = 2080;
  v8 = currentQueueName();
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#%08x [%s] areDigestedIdentifiers:equalToCleartextIdentifiers: -> %{BOOL}d", v6, 0x18u);
}

void sub_10001FCD4(void *a1, void *a2)
{
  v3 = a1;
  currentQueueName();
  v4 = [a2 cacheDirPath];
  sub_10001F6A0();
  sub_10001F704();
  sub_10001F6C4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_10001FD8C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  currentQueueName();
  v6 = [a2 cacheDirPath];
  v7 = [a3 localizedDescription];
  sub_10001F6A0();
  sub_10001F704();
  sub_10001F754();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x26u);
}

void sub_10001FE90(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  currentQueueName();
  v10 = *a3;
  sub_10001F6E8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_10001FF54()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10001FFF0()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000200B8(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F6A0();
  sub_10001F754();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100020154(void *a1, void *a2)
{
  v3 = a1;
  currentQueueName();
  v4 = xpcEventDescription(a2);
  sub_10001F6A0();
  sub_10001F704();
  sub_10001F6C4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_10002020C(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = currentQueueName();
  pid = xpc_connection_get_pid(*(a2 + 32));
  LODWORD(a2) = xpc_connection_get_euid(*(a2 + 32));
  v8 = xpcEventDescription(a3);
  sub_10001F6A0();
  v11 = v6;
  v12 = 1024;
  v13 = pid;
  v14 = 1024;
  v15 = a2;
  v16 = 2112;
  v17 = v9;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#%08x [%s] XPC connection from pid %d uid %d received event %@", v10, 0x28u);
}

void sub_100020308(void *a1)
{
  v1 = a1;
  currentQueueName();
  v2 = sub_10001F764();
  v3 = xpcEventDescription(v2);
  sub_10001F6A0();
  sub_10001F704();
  sub_10001F6B4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_1000203C8(void *a1, _xpc_connection_s *a2)
{
  v3 = a1;
  currentQueueName();
  xpc_connection_get_pid(a2);
  xpc_connection_get_euid(a2);
  sub_10001F6A0();
  sub_10001F754();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Eu);
}

void sub_1000204D0(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F6A0();
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "#%08x [%s] watchForNetworkChanges", v3, 0x12u);
}

void sub_100020564()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F6B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100020600()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  [sub_10001F764() count];
  sub_10001F68C();
  sub_10001F6B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000206B8(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100020744()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F6B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000207E4(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10002089C()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  v2 = [sub_10001F764() diskCache];
  sub_10001F68C();
  sub_10001F6D4();
  sub_10001F6B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100020948(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000209D4()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  v2 = [sub_10001F764() diskCache];
  sub_10001F68C();
  sub_10001F6D4();
  sub_10001F6B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100020B04()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  v7 = [sub_10001F764() diskCachePlistPath];
  v8 = *__error();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_100020BDC(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100020CC0()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F6B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_100020DBC()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  v2 = [sub_10001F764() diskCache];
  sub_10001F68C();
  sub_10001F6D4();
  sub_10001F6B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100020EEC(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100021028()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  v2 = [sub_10001F764() diskCache];
  sub_10001F68C();
  sub_10001F6D4();
  sub_10001F6B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10002112C()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  v2 = [sub_10001F764() diskCache];
  sub_10001F68C();
  sub_10001F6D4();
  sub_10001F6B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000211D8(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000212BC(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#%08x [%s] locateTetheredCachingServers failed to synchronize user preferences", v2, 0x12u);
}

void sub_100021350()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F770();
  sub_10001F744();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

void sub_100021400()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F770();
  sub_10001F744();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

void sub_1000214B0()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F770();
  sub_10001F744();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

void sub_100021560()
{
  sub_10001F6F8();
  v1 = v0;
  currentQueueName();
  sub_10001F674();
  sub_10001F704();
  sub_10001F770();
  sub_10001F744();
  sub_10001F6E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

void sub_1000217C8(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000218AC(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100021AC4(void *a1)
{
  v1 = a1;
  currentQueueName();
  sub_10001F674();
  sub_10001F6C4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100021B7C(void *a1, void *a2)
{
  v3 = a1;
  currentQueueName();
  v4 = [a2 locateURL];
  v5 = [v4 absoluteString];
  sub_10001F704();
  sub_10001F754();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

void sub_100021C5C()
{
  sub_10001F6F8();
  v2 = v1;
  currentQueueName();
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_10001F710();
  sub_10001F6B4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x30u);
}

void sub_100021D24()
{
  sub_10001F6F8();
  v2 = v1;
  currentQueueName();
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_10001F710();
  sub_10001F6B4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x30u);
}

void sub_100021DEC()
{
  sub_10001F6F8();
  v2 = v1;
  currentQueueName();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  [*(v0 + 56) length];
  sub_10001F68C();
  sub_10001F704();
  sub_10001F6B4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x30u);
}