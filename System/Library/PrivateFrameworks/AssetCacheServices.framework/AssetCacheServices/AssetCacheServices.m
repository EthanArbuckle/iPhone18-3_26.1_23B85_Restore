void ACSMightCurrentNetworkHaveCachingServer(__CFString *a1, NSObject *global_queue, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v7 = arc4random();
  }

  while (!v7);
  v8 = v7;
  v9 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110146;
    v44 = v8;
    v45 = 2080;
    v46 = "ACSMightCurrentNetworkHaveCachingServer";
    v47 = 2112;
    v48 = a1;
    v49 = 2048;
    *v50 = global_queue;
    *&v50[8] = 2048;
    *&v50[10] = a3;
    _os_log_impl(&dword_2411B8000, v9, OS_LOG_TYPE_DEFAULT, "#%08x %s(options=%@, callbackQueue=%p, callback=%p)", buf, 0x30u);
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  dispatch_retain(global_queue);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ACSMightCurrentNetworkHaveCachingServer_block_invoke;
  block[3] = &unk_278CC57C8;
  block[4] = &v39;
  block[5] = &v35;
  block[6] = &v31;
  block[7] = &v27;
  dispatch_sync(qword_280BB8FD0, block);
  if (CFAbsoluteTimeGetCurrent() - v40[3] >= 5.0)
  {
    goto LABEL_16;
  }

  v10 = v36[3];
  if (!a1)
  {
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  if (!v10 || !CFEqual(a1, v10))
  {
    goto LABEL_16;
  }

LABEL_13:
  v11 = *(v32 + 24);
  v12 = v28[3];
  if (v12)
  {
    Copy = aclErrorCreateCopy(v12);
  }

  else
  {
    Copy = 0;
  }

  v19 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v20 = CFAbsoluteTimeGetCurrent();
    *buf = 67110402;
    v44 = v8;
    v45 = 2080;
    v46 = "ACSMightCurrentNetworkHaveCachingServer";
    v47 = 2112;
    v48 = @"same";
    v49 = 1024;
    *v50 = v11;
    *&v50[4] = 2112;
    *&v50[6] = Copy;
    *&v50[14] = 2048;
    *&v50[16] = v20 - Current;
    _os_log_impl(&dword_2411B8000, v19, OS_LOG_TYPE_DEFAULT, "#%08x %s -> [%@] mightHave %{BOOL}d, error %@, elapsed %.3f", buf, 0x36u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 0x40000000;
  v23[2] = __ACSMightCurrentNetworkHaveCachingServer_block_invoke_105;
  v23[3] = &unk_278CC57F0;
  v23[4] = a3;
  v23[5] = Copy;
  v25 = v11;
  v24 = v8;
  v23[6] = "ACSMightCurrentNetworkHaveCachingServer";
  v23[7] = global_queue;
  dispatch_async(global_queue, v23);
  v14 = 0;
LABEL_17:
  v15 = v28[3];
  if (v15)
  {
    CFRelease(v15);
    v28[3] = 0;
  }

  v16 = v36[3];
  if (v16)
  {
    CFRelease(v16);
    v36[3] = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  if (v14)
  {
LABEL_22:
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v17, "tag", v8);
    xpc_dictionary_set_string(v17, "command", "recentlySeen");
    if (a1)
    {
      if (CFDictionaryGetValue(a1, @"autoRefresh") == *MEMORY[0x277CBED10])
      {
        xpc_dictionary_set_BOOL(v17, "autoRefresh", 0);
      }

      if (CFDictionaryGetValue(a1, @"quickMiss") == *MEMORY[0x277CBED28])
      {
        xpc_dictionary_set_BOOL(v17, "quickMiss", 1);
      }

      CFRetain(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2;
    v21[3] = &unk_278CC5890;
    v22 = v8;
    *&v21[6] = Current;
    v21[7] = a1;
    v21[8] = "ACSMightCurrentNetworkHaveCachingServer";
    v21[4] = a3;
    v21[5] = v17;
    v21[9] = global_queue;
    dispatch_async(qword_280BB8FB8, v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

CFTypeRef __ACSMightCurrentNetworkHaveCachingServer_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = qword_280BB9000;
  *(*(a1[5] + 8) + 24) = qword_280BB9008;
  v2 = *(*(a1[5] + 8) + 24);
  if (v2)
  {
    CFRetain(v2);
  }

  *(*(a1[6] + 8) + 24) = byte_280BB9010;
  *(*(a1[7] + 8) + 24) = qword_280BB9018;
  result = *(*(a1[7] + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  cf = 0;
  SharedLocatorConnection = aclGetSharedLocatorConnection(*(a1 + 80), &cf, a3, a4, a5, a6, a7, a8);
  if (SharedLocatorConnection)
  {
    v10 = SharedLocatorConnection;
    xpc_retain(SharedLocatorConnection);
    v11 = *(a1 + 40);
    global_queue = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2_118;
    handler[3] = &unk_278CC5868;
    v29 = *(a1 + 80);
    handler[6] = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    handler[4] = *(a1 + 32);
    handler[5] = v13;
    v15 = *(a1 + 72);
    handler[7] = v14;
    handler[8] = v15;
    handler[9] = v10;
    xpc_connection_send_message_with_reply(v10, v11, global_queue, handler);
    xpc_release(*(a1 + 40));
  }

  else
  {
    xpc_release(*(a1 + 40));
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    block = MEMORY[0x277D85DD0];
    *v34 = 0x40000000;
    *&v34[8] = __aclSaveMightHaveResult_block_invoke;
    *&v34[16] = &__block_descriptor_tmp_276;
    *&v34[24] = v16;
    v37 = 1;
    v35 = v17;
    v36 = cf;
    dispatch_sync(qword_280BB8FD0, &block);
    v18 = *(a1 + 56);
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = qword_280BB8FB0;
    if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 80);
      v21 = *(a1 + 64);
      v22 = cf;
      v23 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
      LODWORD(block) = 67110146;
      HIDWORD(block) = v20;
      *v34 = 2080;
      *&v34[2] = v21;
      *&v34[10] = 2112;
      *&v34[12] = @"new";
      *&v34[20] = 2112;
      *&v34[22] = v22;
      *&v34[30] = 2048;
      v35 = v23;
      _os_log_impl(&dword_2411B8000, v19, OS_LOG_TYPE_DEFAULT, "#%08x %s -> [%@] error: %@, elapsed %.3f", &block, 0x30u);
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      Copy = cf;
      if (cf)
      {
        Copy = aclErrorCreateCopy(cf);
        v24 = *(a1 + 32);
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 0x40000000;
      v30[2] = __ACSMightCurrentNetworkHaveCachingServer_block_invoke_115;
      v30[3] = &unk_278CC5818;
      v30[4] = v24;
      v30[5] = Copy;
      v31 = *(a1 + 80);
      v26 = *(a1 + 72);
      v30[6] = *(a1 + 64);
      v30[7] = v26;
      dispatch_async(v26, v30);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

_xpc_connection_s *aclGetSharedLocatorConnection(uint64_t a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_280BB8FC0;
  if (!qword_280BB8FC0)
  {
    if (qword_280BB8FC8 < 0 || (global_queue = dispatch_get_global_queue(0, 0), (mach_service = xpc_connection_create_mach_service("com.apple.AssetCacheLocatorService", global_queue, 2uLL)) == 0))
    {
      v8 = 0;
      if (a2)
      {
        *a2 = aclErrorCreate(a1, *MEMORY[0x277CBEE48], 12, @"xpc_connection_create(%s) failed", a5, a6, a7, a8, "com.apple.AssetCacheLocatorService");
      }
    }

    else
    {
      v8 = mach_service;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __aclGetSharedLocatorConnection_block_invoke;
      handler[3] = &__block_descriptor_tmp_272;
      handler[4] = mach_service;
      handler[5] = &qword_280BB8FC0;
      xpc_connection_set_event_handler(mach_service, handler);
      qword_280BB8FC0 = v8;
      xpc_connection_resume(v8);
    }
  }

  return v8;
}

void __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2_118(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEBUG))
  {
    __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2_118_cold_1(a1);
  }

  if (MEMORY[0x245CDE690](a2) == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_BOOL(a2, "recentlySeen");
    v8 = aclErrorCreateFromXPC(*(a1 + 80), a2);
  }

  else
  {
    v8 = aclErrorCreate(*(a1 + 80), *MEMORY[0x277CBEE48], 100, @"unexpected reply from XPC service %s: %@", v4, v5, v6, v7, "com.apple.AssetCacheLocatorService");
    v9 = 1;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  block = MEMORY[0x277D85DD0];
  *v25 = 0x40000000;
  *&v25[8] = __aclSaveMightHaveResult_block_invoke;
  *&v25[16] = &__block_descriptor_tmp_276;
  *&v25[24] = v10;
  v26 = v9;
  *&v25[32] = v11;
  *&v25[40] = v8;
  dispatch_sync(qword_280BB8FD0, &block);
  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 80);
    v15 = *(a1 + 40);
    v16 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    LODWORD(block) = 67110402;
    HIDWORD(block) = v14;
    *v25 = 2080;
    *&v25[2] = v15;
    *&v25[10] = 2112;
    *&v25[12] = @"new";
    *&v25[20] = 1024;
    *&v25[22] = v9;
    *&v25[26] = 2112;
    *&v25[28] = v8;
    *&v25[36] = 2048;
    *&v25[38] = v16;
    _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "#%08x %s -> [%@] mightHave %{BOOL}d, error %@, elapsed %.3f", &block, 0x36u);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    if (v8)
    {
      Copy = aclErrorCreateCopy(v8);
      v17 = *(a1 + 32);
    }

    else
    {
      Copy = 0;
    }

    v19 = *(a1 + 64);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = __ACSMightCurrentNetworkHaveCachingServer_block_invoke_123;
    v21[3] = &unk_278CC5840;
    v21[4] = v17;
    v21[5] = Copy;
    v23 = v9;
    v22 = *(a1 + 80);
    v21[6] = *(a1 + 40);
    v21[7] = v19;
    dispatch_async(v19, v21);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  xpc_release(*(a1 + 72));
  v20 = *MEMORY[0x277D85DE8];
}

CFErrorRef aclErrorCreateFromXPC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "error");
  if (value)
  {
    v4 = value;
    if (MEMORY[0x245CDE690]() == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, "errorDomain");
      if (string)
      {
        v8 = CFStringCreateWithCString(0, string, 0x8000100u);
      }

      else
      {
        v8 = 0;
      }

      int64 = xpc_dictionary_get_int64(v4, "errorCode");
      v10 = xpc_dictionary_get_string(v4, "errorDescription");
      if (v10)
      {
        v11 = CFStringCreateWithCString(0, v10, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          v13 = CFStringCreateWithFormat(0, 0, @"AssetCacheLocatorService: %@", v11);
          v18 = v13;
          if (v8 && v13)
          {
            v5 = aclErrorCreate(a1, v8, int64, @"%@", v14, v15, v16, v17, v13);
            goto LABEL_15;
          }

          if (v13)
          {
            v5 = 0;
LABEL_15:
            CFRelease(v18);
            CFRelease(v12);
            if (!v8)
            {
              return v5;
            }

            goto LABEL_19;
          }

          CFRelease(v12);
        }
      }

      v5 = 0;
      if (!v8)
      {
        return v5;
      }

LABEL_19:
      CFRelease(v8);
      return v5;
    }
  }

  return 0;
}

void *__aclSaveMightHaveResult_block_invoke(void *result)
{
  if (*(result + 4) > *&qword_280BB9000)
  {
    v2 = result;
    qword_280BB9000 = result[4];
    if (qword_280BB9008)
    {
      CFRelease(qword_280BB9008);
    }

    v3 = v2[5];
    qword_280BB9008 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    byte_280BB9010 = *(v2 + 56);
    if (qword_280BB9018)
    {
      CFRelease(qword_280BB9018);
    }

    result = v2[6];
    qword_280BB9018 = result;
    if (result)
    {

      return CFRetain(result);
    }
  }

  return result;
}

void __ACSMightCurrentNetworkHaveCachingServer_block_invoke_123(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSMightCurrentNetworkHaveCachingServer_block_invoke_123_cold_1();
    }

    CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 68);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  if (v5)
  {
    if (CFGetRetainCount(v5) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 56);

  dispatch_release(v7);
}

void ACSLocateCachingServer(const void *a1, const __CFDictionary *a2, NSObject *global_queue, uint64_t a4, double a5)
{
  v39 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v11 = arc4random();
  }

  while (!v11);
  v12 = v11;
  v13 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110658;
    v26 = v12;
    v27 = 2080;
    v28 = "ACSLocateCachingServer";
    v29 = 2112;
    v30 = a1;
    v31 = 2048;
    v32 = a5;
    v33 = 2112;
    v34 = a2;
    v35 = 2048;
    v36 = global_queue;
    v37 = 2048;
    v38 = a4;
    _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "#%08x %s(assetURL=%@, locateTimeout=%.3f, options=%@, callbackQueue=%p, callback=%p)", buf, 0x44u);
  }

  if (a4)
  {
    CFRetain(a1);
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    dispatch_retain(global_queue);
    v14 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 0x40000000;
    v23[2] = __ACSLocateCachingServer_block_invoke;
    v23[3] = &unk_278CC5750;
    v24 = v12;
    v23[5] = a1;
    v23[6] = "ACSLocateCachingServer";
    *&v23[7] = Current;
    *&v23[8] = a5;
    v23[9] = global_queue;
    v23[4] = a4;
  }

  else
  {
    v14 = 0;
  }

  String = CFURLCopyQueryString(a1, 0);
  if (String)
  {
    v16 = String;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, String, @"&");
    if (ArrayBySeparatingStrings)
    {
      v18 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
      {
LABEL_17:
        v21 = 0;
      }

      else
      {
        v19 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v19);
          if (!aclIsReservedQueryParameter(ValueAtIndex))
          {
            break;
          }

          if (++v19 >= CFArrayGetCount(v18))
          {
            goto LABEL_17;
          }
        }

        v21 = 1;
      }

      CFRelease(v18);
    }

    else
    {
      v21 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v21 = 0;
  }

  aclLocateCommon(v12, 1u, a2, v21, v14, Current, a5);
  v22 = *MEMORY[0x277D85DE8];
}

void aclLocateCommon(unsigned int a1, unsigned int a2, const __CFDictionary *a3, int a4, uint64_t a5, double a6, double a7)
{
  v7 = a5;
  if (!a5)
  {
    goto LABEL_20;
  }

  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v78 = 0x2000000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2000000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __aclLocateCommon_block_invoke;
  block[3] = &unk_278CC5A80;
  block[4] = &valuePtr;
  block[5] = &v72;
  block[6] = &v68;
  block[7] = &v64;
  block[8] = &v60;
  block[9] = &v56;
  dispatch_sync(qword_280BB8FD0, block);
  if (a3 && CFDictionaryGetValue(a3, @"forceMiss") == *MEMORY[0x277CBED28] || CFAbsoluteTimeGetCurrent() - *(p_valuePtr + 3) >= 5.0)
  {
    goto LABEL_12;
  }

  v14 = v73[3];
  if (a3)
  {
    if (!v14 || !CFEqual(a3, v14))
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
LABEL_12:
    v15 = 1;
    goto LABEL_13;
  }

  if (*(v69 + 24) != a4 || *(v65 + 6) < a2)
  {
    goto LABEL_12;
  }

  (*(v7 + 16))(v7, @"same", v61[3], v57[3]);
  v15 = 0;
LABEL_13:
  v16 = v57[3];
  if (v16)
  {
    CFRelease(v16);
    v57[3] = 0;
  }

  v17 = v61[3];
  if (v17)
  {
    CFRelease(v17);
    v61[3] = 0;
  }

  v18 = v73[3];
  if (v18)
  {
    CFRelease(v18);
    v73[3] = 0;
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&valuePtr, 8);
  if (v15)
  {
LABEL_20:
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v19, "tag", a1);
    xpc_dictionary_set_string(v19, "command", "locate");
    xpc_dictionary_set_int64(v19, "quantity", a2);
    if (!a3)
    {
LABEL_65:
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 0x40000000;
      v51[2] = __aclLocateCommon_block_invoke_2;
      v51[3] = &unk_278CC5B48;
      *&v51[5] = a6;
      v54 = a4;
      v52 = a1;
      v53 = a2;
      v51[4] = v7;
      v51[6] = a3;
      v51[7] = v19;
      *&v51[8] = a7;
      v51[9] = "aclLocateCommon";
      dispatch_async(qword_280BB8FB8, v51);
      return;
    }

    Value = CFDictionaryGetValue(a3, @"capabilities");
    v50 = a1;
    if (Value)
    {
      v21 = Value;
      v22 = CFGetTypeID(Value);
      if (v22 == CFArrayGetTypeID())
      {
        v46 = a2;
        v47 = a4;
        v48 = a3;
        v49 = v7;
        Count = CFArrayGetCount(v21);
        v24 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v25 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        if (Count < 1)
        {
          v27 = 0;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = *MEMORY[0x277CBED28];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, v26);
            v30 = CFGetTypeID(ValueAtIndex);
            if (v30 == CFStringGetTypeID())
            {
              v24[v27] = ValueAtIndex;
              v25[v27++] = v28;
            }

            ++v26;
          }

          while (Count != v26);
        }

        v31 = CFDictionaryCreate(0, v24, v25, v27, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        free(v25);
        free(v24);
        v21 = v31;
        a3 = v48;
        v7 = v49;
        a2 = v46;
        a4 = v47;
      }

      else
      {
        v31 = 0;
      }

      v33 = CFGetTypeID(v21);
      if (v33 == CFDictionaryGetTypeID())
      {
        v32 = v21;
      }

      else
      {
        v32 = 0;
      }

      if (a4)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      if (a4)
      {
        goto LABEL_39;
      }
    }

    if (!v32)
    {
LABEL_49:
      if (v31)
      {
        CFRelease(v31);
      }

      v37 = CFDictionaryGetValue(a3, @"x-apple-persistent-identifier");
      if (v37)
      {
        v38 = v37;
        v39 = a2;
        Length = CFStringGetLength(v37);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v42 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x96C09F8BuLL);
        if (CFStringGetCString(v38, v42, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          xpc_dictionary_set_string(v19, "x-apple-persistent-identifier", v42);
        }

        free(v42);
        a2 = v39;
      }

      if (CFDictionaryGetValue(a3, @"autoRefresh") == *MEMORY[0x277CBED10])
      {
        xpc_dictionary_set_BOOL(v19, "autoRefresh", 0);
      }

      v43 = CFDictionaryGetValue(a3, @"quickMiss");
      v44 = *MEMORY[0x277CBED28];
      a1 = v50;
      if (v43 == *MEMORY[0x277CBED28])
      {
        xpc_dictionary_set_BOOL(v19, "quickMiss", 1);
      }

      if (CFDictionaryGetValue(a3, @"forceMiss") == v44)
      {
        xpc_dictionary_set_BOOL(v19, "forceMiss", 1);
      }

      v45 = CFDictionaryGetValue(a3, @"sizeHint");
      if (v45)
      {
        valuePtr = 0;
        if (CFNumberGetValue(v45, kCFNumberSInt64Type, &valuePtr))
        {
          xpc_dictionary_set_uint64(v19, "sizeHint", valuePtr);
        }
      }

      CFRetain(a3);
      goto LABEL_65;
    }

LABEL_39:
    v34 = xpc_dictionary_create(0, 0, 0);
    if (v32)
    {
      v35 = CFDictionaryGetValue(v32, @"import");
      v36 = *MEMORY[0x277CBED28];
      if (v35 == *MEMORY[0x277CBED28])
      {
        xpc_dictionary_set_BOOL(v34, "import", 1);
      }

      if (CFDictionaryGetValue(v32, @"namespaces") == v36)
      {
        xpc_dictionary_set_BOOL(v34, "namespaces", 1);
      }

      if (CFDictionaryGetValue(v32, @"personalCaching") == v36)
      {
        xpc_dictionary_set_BOOL(v34, "personalCaching", 1);
      }
    }

    if (a4)
    {
      xpc_dictionary_set_BOOL(v34, "queryParameters", 1);
    }

    xpc_dictionary_set_value(v19, "capabilities", v34);
    xpc_release(v34);
    goto LABEL_49;
  }
}

void __aclLocateCommon_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 0x40000000;
  v50 = __aclLocateCommon_block_invoke_3;
  v51 = &unk_278CC5AA8;
  v53 = *(a1 + 40);
  v54 = *(a1 + 48);
  v57 = *(a1 + 88);
  v9 = *(a1 + 80);
  v10 = *(a1 + 84);
  v55 = v9;
  v56 = v10;
  v52 = *(a1 + 32);
  v48 = 0;
  SharedLocatorConnection = aclGetSharedLocatorConnection(v9, &v48, a3, a4, a5, a6, a7, a8);
  if (!SharedLocatorConnection)
  {
    xpc_release(*(a1 + 56));
    v50(v49, v48);
    return;
  }

  v12 = SharedLocatorConnection;
  xpc_retain(SharedLocatorConnection);
  v13 = 0;
  v14 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2000000000;
  v47 = 0;
  v15 = *(a1 + 64);
  if (v15 >= 0.0)
  {
    v16 = *(a1 + 72);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v16, v17);
    v18 = dispatch_semaphore_create(0);
    v13 = v18;
    if (!v14 || !v18)
    {
      if (v14)
      {
        dispatch_release(v14);
      }

      if (v13)
      {
        dispatch_release(v13);
      }

      xpc_release(v12);
      xpc_release(*(a1 + 56));
      v35 = aclErrorCreate(*(a1 + 80), *MEMORY[0x277CBEE48], 12, @"dispatch_queue/semaphore_create failed", v31, v32, v33, v34, v36);
      v50(v49, v35);
      goto LABEL_23;
    }

    dispatch_retain(v14);
    dispatch_retain(v13);
    xpc_retain(v12);
    v15 = *(a1 + 64);
  }

  v19 = *(a1 + 56);
  global_queue = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __aclLocateCommon_block_invoke_4;
  handler[3] = &unk_278CC5AF8;
  *&handler[6] = v15;
  handler[7] = v14;
  handler[8] = v13;
  handler[9] = *(a1 + 72);
  handler[10] = *(a1 + 40);
  v21 = *(a1 + 48);
  v45 = *(a1 + 88);
  v22 = *(a1 + 84);
  v43 = *(a1 + 80);
  v44 = v22;
  handler[4] = *(a1 + 32);
  handler[5] = v46;
  handler[11] = v21;
  handler[12] = v12;
  xpc_connection_send_message_with_reply(v12, v19, global_queue, handler);
  xpc_release(*(a1 + 56));
  v23 = *(a1 + 64);
  if (v23 >= 0.0)
  {
    v24 = v23 - (CFAbsoluteTimeGetCurrent() - *(a1 + 40));
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = dispatch_time(0, (v24 * 1000000000.0));
    if (!v13)
    {
      __aclLocateCommon_block_invoke_2_cold_1();
    }

    if (dispatch_semaphore_wait(v13, v25))
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2000000000;
      v41 = 0;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __aclLocateCommon_block_invoke_2_250;
      block[3] = &unk_278CC5B20;
      block[4] = &v38;
      block[5] = v46;
      dispatch_sync(v14, block);
      if (!*(v39 + 24))
      {
        xpc_connection_cancel(v12);
        if (v12 == qword_280BB8FC0)
        {
          xpc_release(qword_280BB8FC0);
          qword_280BB8FC0 = 0;
        }

        v30 = aclErrorCreate(*(a1 + 80), *MEMORY[0x277CBEE48], 60, @"timed out waiting for reply from XPC service %s", v26, v27, v28, v29, "com.apple.AssetCacheLocatorService");
        v50(v49, v30);
      }

      _Block_object_dispose(&v38, 8);
    }

    xpc_release(v12);
    dispatch_release(v14);
    dispatch_release(v13);
  }

LABEL_23:
  _Block_object_dispose(v46, 8);
}

void __aclLocateCommon_block_invoke_4(uint64_t a1, __CFString *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  if (*(a1 + 48) >= 0.0)
  {
    v4 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __aclLocateCommon_block_invoke_5;
    block[3] = &unk_278CC5AD0;
    v5 = *(a1 + 40);
    block[4] = &v44;
    block[5] = v5;
    dispatch_sync(v4, block);
    dispatch_semaphore_signal(*(a1 + 64));
  }

  v6 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 104);
    v34 = @"XPC_ERROR_CONNECTION_INTERRUPTED";
    v35 = @"XPC_ERROR_CONNECTION_INVALID";
    v36 = *(a1 + 72);
    if (a2 == MEMORY[0x277D86420])
    {
      v37 = @"XPC_ERROR_TERMINATION_IMMINENT";
    }

    else
    {
      v37 = a2;
    }

    if (a2 != MEMORY[0x277D863F8])
    {
      v35 = v37;
    }

    v38 = *(v45 + 24);
    if (a2 != MEMORY[0x277D863F0])
    {
      v34 = v35;
    }

    LODWORD(applier) = 67109890;
    HIDWORD(applier) = v33;
    *v49 = 2080;
    *&v49[2] = v36;
    *&v49[10] = 2112;
    *&v49[12] = v34;
    *&v49[20] = 1024;
    *&v49[22] = v38;
    _os_log_debug_impl(&dword_2411B8000, v6, OS_LOG_TYPE_DEBUG, "#%08x %s reply callback(object=%@) calledback=%{BOOL}d", &applier, 0x22u);
  }

  if (!*(v45 + 24))
  {
    if (MEMORY[0x245CDE690](a2) == MEMORY[0x277D86468])
    {
      v11 = xpc_dictionary_get_double(a2, "validityInterval");
      if (v11 >= 5.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 5.0;
      }

      array = xpc_dictionary_get_array(a2, "servers");
      if (array)
      {
        v14 = array;
        count = xpc_array_get_count(array);
        Mutable = CFArrayCreateMutable(0, count, MEMORY[0x277CBF128]);
        if (Mutable)
        {
          v17 = Mutable;
          applier = MEMORY[0x277D85DD0];
          *v49 = 0x40000000;
          *&v49[8] = __aclResultsCreateFromXPC_block_invoke;
          *&v49[16] = &__block_descriptor_tmp_270;
          *&v49[24] = v12;
          v50 = Mutable;
          xpc_array_apply(v14, &applier);
          v18 = CFArrayGetCount(v17);
          if (v18 >= 1)
          {
            v19 = v18;
            v20 = 0;
            v21 = 0.0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
              Value = CFDictionaryGetValue(ValueAtIndex, @"advice");
              if (Value && CFDictionaryGetValue(Value, @"validUntil"))
              {
                v24 = MEMORY[0x245CDDC80]();
                v25 = v24 - CFAbsoluteTimeGetCurrent();
                if (v21 > v25 || v20 == 0)
                {
                  v21 = v25;
                }
              }

              ++v20;
            }

            while (v19 != v20);
            if (v21 >= 5.0)
            {
              v27 = *(a1 + 80);
              v28 = *(a1 + 88);
              v29 = *(a1 + 112);
              v30 = *(a1 + 108);
              applier = MEMORY[0x277D85DD0];
              *v49 = 0x40000000;
              *&v49[8] = __aclSaveLocateResult_block_invoke;
              *&v49[16] = &__block_descriptor_tmp_259;
              *&v49[24] = v27;
              v54 = v29;
              v53 = v30;
              v50 = v28;
              v51 = v17;
              v52 = 0;
              dispatch_sync(qword_280BB8FD0, &applier);
            }
          }

          v31 = 0;
          v32 = 0;
          goto LABEL_35;
        }
      }

      v39 = aclErrorCreateFromXPC(*(a1 + 104), a2);
    }

    else
    {
      v39 = aclErrorCreate(*(a1 + 104), *MEMORY[0x277CBEE48], 100, @"unexpected reply from XPC service %s: %@", v7, v8, v9, v10, "com.apple.AssetCacheLocatorService");
    }

    v32 = v39;
    v17 = 0;
    v31 = 1;
LABEL_35:
    v40 = *(a1 + 88);
    if (v40)
    {
      CFRelease(v40);
    }

    v41 = *(a1 + 32);
    if (v41)
    {
      (*(v41 + 16))(v41, @"new", v17, v32);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if ((v31 & 1) == 0)
    {
      CFRelease(v17);
    }
  }

  xpc_release(*(a1 + 96));
  if (*(a1 + 48) >= 0.0)
  {
    dispatch_release(*(a1 + 56));
    dispatch_release(*(a1 + 64));
  }

  _Block_object_dispose(&v44, 8);
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __aclLocateCommon_block_invoke_5(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 40) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __aclResultsCreateFromXPC_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CDE690](a3) == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(a3, "hostport");
    v8 = xpc_dictionary_get_string(a3, "guid");
    v9 = xpc_dictionary_get_double(a3, "timeout");
    if (v9 < 0.2)
    {
      v9 = 1.0;
    }

    valuePtr = v9;
    v10 = xpc_dictionary_get_BOOL(a3, "healthy");
    v11 = xpc_dictionary_get_BOOL(a3, "favored");
    v12 = xpc_dictionary_get_BOOL(a3, "supportsUrgency");
    v13 = xpc_dictionary_get_double(a3, "validityInterval");
    if (v13 < 5.0)
    {
      v13 = 5.0;
    }

    int64 = xpc_dictionary_get_int64(a3, "rank");
    if (string && *string && v8 && *v8)
    {
      *keys = xmmword_278CC5B88;
      keys[2] = @"validUntil";
      v14 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      Current = CFAbsoluteTimeGetCurrent();
      v16 = CFDateCreate(0, v13 + Current);
      v17 = v16;
      v18 = *MEMORY[0x277CBED28];
      v19 = *MEMORY[0x277CBED10];
      if (v12)
      {
        v20 = *MEMORY[0x277CBED28];
      }

      else
      {
        v20 = *MEMORY[0x277CBED10];
      }

      values[0] = v14;
      values[1] = v20;
      values[2] = v16;
      v21 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFRelease(v17);
      CFRelease(v14);
      *v32 = xmmword_278CC5BA0;
      v33 = *&off_278CC5BB0;
      v34 = xmmword_278CC5BC0;
      v22 = CFStringCreateWithCString(0, v8, 0x8000100u);
      v23 = CFStringCreateWithCString(0, string, 0x8000100u);
      v24 = CFNumberCreate(0, kCFNumberIntType, &int64);
      v25 = v24;
      if (v11)
      {
        v26 = v18;
      }

      else
      {
        v26 = v19;
      }

      v31[0] = v21;
      v31[1] = v26;
      if (v10)
      {
        v27 = v18;
      }

      else
      {
        v27 = v19;
      }

      v31[2] = v22;
      v31[3] = v27;
      v31[4] = v23;
      v31[5] = v24;
      v28 = CFDictionaryCreate(0, v32, v31, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFRelease(v25);
      CFRelease(v23);
      CFRelease(v22);
      CFRelease(v21);
      CFArrayAppendValue(*(a1 + 40), v28);
      CFRelease(v28);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

double *__aclSaveLocateResult_block_invoke(double *result)
{
  v2 = result[4];
  if (v2 == 0.0 || v2 > *&qword_280BB8FD8)
  {
    v4 = result;
    qword_280BB8FD8 = *(result + 4);
    if (qword_280BB8FE0)
    {
      CFRelease(qword_280BB8FE0);
    }

    v5 = *(v4 + 5);
    qword_280BB8FE0 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    byte_280BB8FE8 = *(v4 + 68);
    dword_280BB8FEC = *(v4 + 16);
    if (qword_280BB8FF0)
    {
      CFRelease(qword_280BB8FF0);
    }

    v6 = *(v4 + 6);
    qword_280BB8FF0 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (qword_280BB8FF8)
    {
      CFRelease(qword_280BB8FF8);
    }

    result = *(v4 + 7);
    qword_280BB8FF8 = result;
    if (result)
    {

      return CFRetain(result);
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2411C71E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411C7724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411C7BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411C8070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0()
{
  v3 = *(v2 + 64);
  v4 = *v0;
  return *v1;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_9()
{
  v3 = *(v2 + 64);
  v4 = *v1;
  return *v0;
}

uint64_t OUTLINED_FUNCTION_10()
{
  v3 = *(v2 + 72);
  v4 = *v1;
  return *v0;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14()
{
  v3 = *(v2 + 56);
  v4 = *v1;
  return *v0;
}

uint64_t _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 67109890;
    v11[1] = a1;
    v12 = 2080;
    v13 = a2;
    v14 = 2080;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_error_impl(&dword_2411B8000, v8, OS_LOG_TYPE_ERROR, "#%08x A callback block invoked by %s released an object it did not own: %s, %p", v11, 0x26u);
  }

  raise(6);
  pause();
  result = pause();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __ACSLocateCachingServer_block_invoke(uint64_t a1, uint64_t a2, CFArrayRef theArray, __CFError *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    Copy = aclErrorCreateCopy(a4);
    MutableCopy = 0;
    v8 = 0;
    goto LABEL_48;
  }

  MutableCopy = theArray;
  if (!theArray)
  {
    goto LABEL_22;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    MutableCopy = 0;
LABEL_22:
    v8 = 0;
    Copy = 0;
    goto LABEL_48;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
  Copy = CFDictionaryGetValue(ValueAtIndex, @"hostport");
  if (Copy)
  {
    v10 = *(a1 + 40);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
LABEL_44:
      Copy = aclErrorCreate(*(a1 + 80), *MEMORY[0x277CBEE48], 22, @"unable to rewrite %@ for caching server host/port %@", v12, v13, v14, v15, *(a1 + 40));
      goto LABEL_45;
    }

    v16 = Mutable;
    String = CFURLCopyQueryString(v10, 0);
    if (String)
    {
      v18 = String;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, String, @"&");
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_20;
      }

      v20 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
      {
        v21 = 0;
        do
        {
          v22 = CFArrayGetValueAtIndex(v20, v21);
          if (aclIsReservedQueryParameter(v22))
          {
            goto LABEL_40;
          }

          CFArrayAppendValue(v16, v22);
        }

        while (++v21 < CFArrayGetCount(v20));
      }

      CFRelease(v20);
      CFRelease(v18);
    }

    v23 = CFURLCopyHostName(v10);
    if (!v23 || (v18 = v23, CFStringFind(v23, @":", 0).location != -1) && !CFStringHasPrefix(v18, @"[") && (v24 = CFStringCreateWithFormat(0, 0, @"[%@]", v18), CFRelease(v18), (v18 = v24) == 0))
    {
LABEL_38:
      CFRelease(v16);
      goto LABEL_44;
    }

    v25 = CFURLGetPortNumber(v10);
    if (v25 <= 0)
    {
      CFRetain(v18);
      v20 = v18;
    }

    else
    {
      v20 = CFStringCreateWithFormat(0, 0, @"%@:%hu", v18, v25);
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v26 = CFURLCreateStringByAddingPercentEscapes(0, v20, 0, @"!*'();:@&=+$,/?%#[]", 0x8000100u);
    if (v26)
    {
      v27 = v26;
      v28 = CFStringCreateWithFormat(0, 0, @"source=%@", v26);
      if (v28)
      {
        v29 = v28;
        CFArrayAppendValue(v16, v28);
        CFRelease(v29);
        CFRelease(v27);
        CFRelease(v20);
        CFRelease(v18);
        v30 = CFURLCopyScheme(v10);
        if (!v30)
        {
          goto LABEL_32;
        }

        v18 = v30;
        if (CFStringCompare(v30, @"http", 1uLL) == kCFCompareEqualTo)
        {
LABEL_31:
          CFRelease(v18);
LABEL_32:
          v34 = CFURLCopyPath(v10);
          if (v34)
          {
            v18 = v34;
            v35 = CFStringCreateMutable(0, 0);
            if (v35)
            {
              v20 = v35;
              CFStringAppendFormat(v35, 0, @"http://%@%@", Copy, v18);
              if (CFArrayGetCount(v16) >= 1)
              {
                v36 = 0;
                v37 = @"?";
                do
                {
                  v38 = CFArrayGetValueAtIndex(v16, v36);
                  CFStringAppend(v20, v37);
                  CFStringAppend(v20, v38);
                  ++v36;
                  v37 = @"&";
                }

                while (v36 < CFArrayGetCount(v16));
              }

              v8 = CFURLCreateWithString(0, v20, 0);
              goto LABEL_41;
            }

LABEL_20:
            v8 = 0;
            goto LABEL_42;
          }

          goto LABEL_38;
        }

        v31 = CFURLCreateStringByAddingPercentEscapes(0, v18, 0, @"!*'();:@&=+$,/?%#[]", 0x8000100u);
        if (!v31)
        {
          goto LABEL_20;
        }

        v20 = v31;
        v32 = CFStringCreateWithFormat(0, 0, @"sourceScheme=%@", v31);
        if (v32)
        {
          v33 = v32;
          CFArrayAppendValue(v16, v32);
          CFRelease(v33);
          CFRelease(v20);
          goto LABEL_31;
        }
      }

      else
      {
        CFRelease(v27);
      }
    }

LABEL_40:
    v8 = 0;
LABEL_41:
    CFRelease(v20);
LABEL_42:
    CFRelease(v18);
    CFRelease(v16);
    if (v8)
    {
      Copy = 0;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

LABEL_45:
  v8 = 0;
LABEL_46:
  Value = CFDictionaryGetValue(ValueAtIndex, @"advice");
  MutableCopy = Value;
  if (Value)
  {
    Count = CFDictionaryGetCount(Value);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count, MutableCopy);
  }

LABEL_48:
  CFRelease(*(a1 + 40));
  v41 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(a1 + 80);
    v43 = *(a1 + 48);
    v44 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v45 = *(a1 + 64);
    *buf = 67110914;
    v51 = v42;
    v52 = 2080;
    v53 = v43;
    v54 = 2112;
    v55 = a2;
    v56 = 2112;
    v57 = v8;
    v58 = 2112;
    v59 = MutableCopy;
    v60 = 2112;
    v61 = Copy;
    v62 = 2048;
    v63 = v44;
    v64 = 2048;
    v65 = v45;
    _os_log_impl(&dword_2411B8000, v41, OS_LOG_TYPE_DEFAULT, "#%08x %s -> [%@] newURL %@, advice %@, error %@, elapsed %.3f/%.3f", buf, 0x4Eu);
  }

  v46 = *(a1 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ACSLocateCachingServer_block_invoke_85;
  block[3] = &unk_278CC5728;
  block[6] = MutableCopy;
  block[7] = Copy;
  block[4] = *(a1 + 32);
  block[5] = v8;
  v49 = *(a1 + 80);
  block[8] = *(a1 + 48);
  block[9] = v46;
  dispatch_async(v46, block);
  v47 = *MEMORY[0x277D85DE8];
}

CFErrorRef aclErrorCreateCopy(__CFError *a1)
{
  v2 = CFErrorCopyUserInfo(a1);
  Domain = CFErrorGetDomain(a1);
  Code = CFErrorGetCode(a1);
  v5 = CFErrorCreate(0, Domain, Code, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v5;
}

CFErrorRef aclErrorCreate(uint64_t a1, const __CFString *a2, CFIndex a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v14 = Mutable;
    v15 = CFStringCreateWithFormat(0, 0, @"#%08x", a1);
    if (v15)
    {
      v16 = v15;
      CFDictionaryAddValue(v14, @"com.apple.AssetCacheLocator.tag", v15);
      CFRelease(v16);
    }

    if (a4)
    {
      v17 = CFStringCreateWithFormatAndArguments(0, 0, a4, &a9);
      if (v17)
      {
        v18 = v17;
        CFDictionaryAddValue(v14, *MEMORY[0x277CBEE58], v17);
        CFRelease(v18);
      }
    }

    Copy = CFDictionaryCreateCopy(0, v14);
    CFRelease(v14);
    v20 = CFErrorCreate(0, a2, a3, Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }

    return v20;
  }

  else
  {

    return CFErrorCreate(0, a2, a3, 0);
  }
}

void __ACSLocateCachingServer_block_invoke_85(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSLocateCachingServer_block_invoke_85_cold_1();
    }

    CFRetain(*(a1 + 40));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (CFGetRetainCount(v3) != 1)
    {
      __ACSLocateCachingServer_block_invoke_85_cold_2();
    }

    CFRetain(*(a1 + 48));
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    if (CFGetRetainCount(v4) != 1)
    {
      __ACSLocateCachingServer_block_invoke_85_cold_3();
    }

    CFRetain(*(a1 + 56));
    v5 = *(a1 + 56);
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  v8 = *(a1 + 40);
  if (v8)
  {
    if (CFGetRetainCount(v8) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 80), *(a1 + 64), "modifiedURL", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (CFGetRetainCount(v9) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 80), *(a1 + 64), "advice", *(a1 + 48));
    }

    CFRelease(*(a1 + 48));
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    if (CFGetRetainCount(v10) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 80), *(a1 + 64), "error", *(a1 + 56));
    }

    CFRelease(*(a1 + 56));
    v11 = *(a1 + 56);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 72);

  dispatch_release(v14);
}

void _ACSLocateAllCachingServers(const __CFDictionary *a1, NSObject *global_queue, uint64_t a3, double a4)
{
  v28 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v9 = arc4random();
  }

  while (!v9);
  v10 = v9;
  v11 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110402;
    v17 = v10;
    v18 = 2080;
    v19 = "_ACSLocateAllCachingServers";
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = a1;
    v24 = 2048;
    v25 = global_queue;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_2411B8000, v11, OS_LOG_TYPE_DEFAULT, "#%08x %s(locateTimeout=%.3f, options=%@, callbackQueue=%p, callback=%p)", buf, 0x3Au);
  }

  if (a3)
  {
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    dispatch_retain(global_queue);
    v12 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ___ACSLocateAllCachingServers_block_invoke;
    v14[3] = &unk_278CC57A0;
    v15 = v10;
    *&v14[6] = Current;
    *&v14[7] = a4;
    v14[8] = global_queue;
    v14[4] = a3;
    v14[5] = "_ACSLocateAllCachingServers";
  }

  else
  {
    v12 = 0;
  }

  aclLocateCommon(v10, 0, a1, 1, v12, Current, a4);
  v13 = *MEMORY[0x277D85DE8];
}

void __ACSMightCurrentNetworkHaveCachingServer_block_invoke_105(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSMightCurrentNetworkHaveCachingServer_block_invoke_105_cold_1();
    }

    CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 68);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  if (v5)
  {
    if (CFGetRetainCount(v5) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 56);

  dispatch_release(v7);
}

void __ACSMightCurrentNetworkHaveCachingServer_block_invoke_115(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSMightCurrentNetworkHaveCachingServer_block_invoke_115_cold_1();
    }

    CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    if (CFGetRetainCount(v4) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(a1 + 56);

  dispatch_release(v6);
}

uint64_t ACSUpdateCachingServerHealth(const __CFURL *a1, uint64_t a2, int a3, CFErrorRef *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v8 = arc4random();
  }

  while (!v8);
  v9 = v8;
  v10 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110146;
    *&buf[4] = v9;
    *&buf[8] = 2080;
    *&buf[10] = "ACSUpdateCachingServerHealth";
    *&buf[18] = 2112;
    *&buf[20] = a1;
    *&buf[28] = 2112;
    *&buf[30] = a2;
    *&buf[38] = 1024;
    *&buf[40] = a3;
    _os_log_impl(&dword_2411B8000, v10, OS_LOG_TYPE_DEFAULT, "#%08x %s(url=%@, options=%@, healthy=%{BOOL}d)", buf, 0x2Cu);
  }

  String = CFURLCopyQueryString(a1, 0);
  if (String)
  {
    v12 = String;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, String, @"&");
    if (ArrayBySeparatingStrings)
    {
      v14 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
      {
        v20 = 0;
      }

      else
      {
        v32 = a3;
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
          v17 = CFURLCreateStringByReplacingPercentEscapes(0, ValueAtIndex, &stru_2852F20F8);
          if (v17)
          {
            v18 = v17;
            HasPrefix = CFStringHasPrefix(v17, @"source=");
            CFRelease(v18);
            if (HasPrefix)
            {
              break;
            }
          }

          if (++v15 >= CFArrayGetCount(v14))
          {
            v20 = 0;
            goto LABEL_18;
          }
        }

        v20 = 1;
LABEL_18:
        a3 = v32;
      }

      CFRelease(v14);
    }

    else
    {
      v20 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v20 = 0;
  }

  v21 = CFURLCopyHostName(a1);
  v22 = CFURLGetPortNumber(a1);
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  memset(buf, 0, sizeof(buf));
  if (!v20 || !v21 || v22 < 1)
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!CFStringGetCString(v21, buffer, 62, 0x8000100u))
  {
LABEL_33:
    CFRelease(v21);
LABEL_34:
    if (a4)
    {
      v29 = aclErrorCreate(v9, *MEMORY[0x277CBEE48], 22, @"invalid URL", v23, v24, v25, v26, v31);
      result = 0;
      *a4 = v29;
    }

    else
    {
      result = 0;
    }

    goto LABEL_37;
  }

  v36 = 0;
  v35[0] = 0;
  v35[1] = 0;
  *v39 = 0;
  v40 = 0;
  *v37 = 0u;
  memset(v38, 0, sizeof(v38));
  if (strcasecmp(buffer, "localhost") && (inet_pton(2, buffer, &v36) != 1 || !inet_ntop(2, &v36, v39, 0x10u)))
  {
    if (inet_pton(30, buffer, v35) == 1 && inet_ntop(30, v35, v37, 0x2Eu))
    {
      snprintf(buf, 0x5EuLL, "[%s]:%u");
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  snprintf(buf, 0x5EuLL, "%s:%u");
LABEL_29:
  CFRelease(v21);
  if (!a3)
  {
    *buffer = MEMORY[0x277D85DD0];
    v45 = 0x40000000;
    v46 = __aclSaveLocateResult_block_invoke;
    v47 = &__block_descriptor_tmp_259;
    v48 = 0u;
    memset(v49, 0, sizeof(v49));
    dispatch_sync(qword_280BB8FD0, buffer);
  }

  v27 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v27, "tag", v9);
  xpc_dictionary_set_string(v27, "command", "updateHealth");
  xpc_dictionary_set_string(v27, "hostport", buf);
  xpc_dictionary_set_BOOL(v27, "healthy", a3 != 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ACSUpdateCachingServerHealth_block_invoke;
  block[3] = &__block_descriptor_tmp_146;
  v34 = v9;
  block[4] = v27;
  dispatch_async(qword_280BB8FB8, block);
  result = 1;
LABEL_37:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void __ACSUpdateCachingServerHealth_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SharedLocatorConnection = aclGetSharedLocatorConnection(*(a1 + 40), 0, a3, a4, a5, a6, a7, a8);
  if (SharedLocatorConnection)
  {
    xpc_connection_send_message(SharedLocatorConnection, *(a1 + 32));
  }

  v10 = *(a1 + 32);

  xpc_release(v10);
}

void ACSImportFileIntoCachingServer(const __CFURL *a1, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary *a4, NSObject *global_queue, uint64_t a6)
{
  v100 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v13 = arc4random();
  }

  while (!v13);
  v14 = v13;
  v15 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110914;
    v84 = v14;
    v85 = 2080;
    v86 = "ACSImportFileIntoCachingServer";
    v87 = 2112;
    v88 = a1;
    v89 = 2112;
    v90 = a2;
    v91 = 2112;
    v92 = a3;
    v93 = 2112;
    v94 = a4;
    v95 = 2048;
    v96 = global_queue;
    v97 = 2048;
    v98 = a6;
    _os_log_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEFAULT, "#%08x %s(assetURL=%@, sourcePath=%@, headers=%@, options=%@, callbackQueue=%p, callback=%p)", buf, 0x4Eu);
  }

  if (a6)
  {
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    dispatch_retain(global_queue);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {
    v17 = CStringPtr;
    *__error() = 22;
  }

  else
  {
    v17 = buf;
    if (!CFStringGetCString(a2, buf, 1024, 0x8000100u))
    {
      *__error() = 22;
      goto LABEL_48;
    }
  }

  theDict = a4;
  v18 = open(v17, 0);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = v18;
    v75 = global_queue;
    v76 = a6;
    v74 = CFFileDescriptorCreate(0, v18, 1u, 0, 0);
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v20, "tag", v14);
    xpc_dictionary_set_string(v20, "command", "import");
    v21 = CFURLGetString(a1);
    Length = CFStringGetLength(v21);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v24 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x22090D5BuLL);
    if (CFStringGetCString(v21, v24, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      xpc_dictionary_set_string(v20, "url", v24);
    }

    free(v24);
    xpc_dictionary_set_string(v20, "sourcePath", v17);
    xpc_dictionary_set_fd(v20, "sourceFd", v19);
    if (a3)
    {
      Count = CFDictionaryGetCount(a3);
      if (Count >= 1)
      {
        v26 = Count;
        xdict = xpc_dictionary_create(0, 0, 0);
        v27 = malloc_type_calloc(v26, 8uLL, 0xC0040B8AA526DuLL);
        v28 = malloc_type_calloc(v26, 8uLL, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(a3, v27, v28);
        for (i = 0; i != v26; ++i)
        {
          v30 = v27[i];
          v31 = v28[i];
          v32 = CFGetTypeID(v30);
          if (v32 == CFStringGetTypeID())
          {
            v33 = CFGetTypeID(v31);
            if (v33 == CFStringGetTypeID())
            {
              v34 = CFStringGetLength(v30);
              v35 = CFStringGetMaximumSizeForEncoding(v34, 0x8000100u);
              v36 = malloc_type_malloc(v35 + 1, 0x9E86C00uLL);
              if (CFStringGetCString(v30, v36, v35 + 1, 0x8000100u))
              {
                v37 = CFStringGetLength(v31);
                v38 = CFStringGetMaximumSizeForEncoding(v37, 0x8000100u);
                v39 = malloc_type_malloc(v38 + 1, 0xE895987FuLL);
                if (CFStringGetCString(v31, v39, v38 + 1, 0x8000100u))
                {
                  xpc_dictionary_set_string(xdict, v36, v39);
                }

                free(v39);
              }

              free(v36);
            }
          }
        }

        free(v28);
        free(v27);
        xpc_dictionary_set_value(v20, "headers", xdict);
        xpc_release(xdict);
      }
    }

    v40 = theDict;
    if (!theDict)
    {
      goto LABEL_59;
    }

    Value = CFDictionaryGetValue(theDict, @"importStrategies");
    if (Value)
    {
      v42 = Value;
      v43 = CFGetTypeID(Value);
      if (v43 == CFArrayGetTypeID())
      {
        v44 = CFArrayGetCount(v42);
        if (v44 >= 1)
        {
          v45 = v44;
          v99[0] = xmmword_278CC5C50;
          v99[1] = *&off_278CC5C60;
          v99[2] = xmmword_278CC5C70;
          v99[3] = *&off_278CC5C80;
          v46 = xpc_array_create(0, 0);
          v47 = 0;
LABEL_33:
          while (2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v42, v47);
            v49 = 0;
            while (1)
            {
              if (CFEqual(ValueAtIndex, *&v99[v49]))
              {
                v50 = &v99[v49];
                if (!BYTE13(v99[v49]))
                {
                  break;
                }
              }

              if (++v49 == 4)
              {
                if (++v47 < v45)
                {
                  goto LABEL_33;
                }

                goto LABEL_43;
              }
            }

            xpc_array_set_uint64(v46, 0xFFFFFFFFFFFFFFFFLL, *(v50 + 2));
            *(v50 + 13) = 1;
            ++v47;
            if (*(v50 + 12))
            {
              v51 = 0;
            }

            else
            {
              v51 = v47 < v45;
            }

            if (v51)
            {
              continue;
            }

            break;
          }

LABEL_43:
          xpc_dictionary_set_value(v20, "importStrategies", v46);
          xpc_release(v46);
          v40 = theDict;
        }
      }
    }

    v52 = CFDictionaryGetValue(v40, @"sourceOffset");
    aclSetU64Option(v20, "sourceOffset", v52);
    v53 = CFDictionaryGetValue(v40, @"sourceLength");
    aclSetU64Option(v20, "sourceLength", v53);
    v54 = CFDictionaryGetValue(v40, @"method");
    if (v54)
    {
      v55 = v54;
      if (CFEqual(v54, @"PUT"))
      {
        v56 = "PUT";
      }

      else
      {
        if (!CFEqual(v55, @"POST"))
        {
          goto LABEL_53;
        }

        v56 = "POST";
      }

      xpc_dictionary_set_string(v20, "method", v56);
    }

LABEL_53:
    v66 = CFDictionaryGetValue(v40, @"x-apple-persistent-identifier");
    if (v66)
    {
      v67 = v66;
      v68 = CFStringGetLength(v66);
      v69 = CFStringGetMaximumSizeForEncoding(v68, 0x8000100u);
      v70 = malloc_type_malloc(v69 + 1, 0xCBC3404EuLL);
      if (CFStringGetCString(v67, v70, v69 + 1, 0x8000100u))
      {
        v71 = xpc_dictionary_get_value(v20, "headers");
        if (v71)
        {
          xpc_dictionary_set_string(v71, "x-apple-persistent-identifier", v70);
        }

        else
        {
          v72 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v72, "x-apple-persistent-identifier", v70);
          xpc_dictionary_set_value(v20, "headers", v72);
          xpc_release(v72);
        }
      }

      free(v70);
    }

LABEL_59:
    v65 = qword_280BB8FB8;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ACSImportFileIntoCachingServer_block_invoke_2;
    block[3] = &unk_278CC5978;
    v80 = v14;
    *&block[6] = Current;
    block[7] = v74;
    block[8] = v20;
    block[4] = v76;
    block[5] = "ACSImportFileIntoCachingServer";
    block[9] = v75;
    v64 = block;
    goto LABEL_60;
  }

LABEL_48:
  if (a6)
  {
    v57 = *MEMORY[0x277CBEE48];
    v58 = __error();
    v63 = aclErrorCreate(v14, v57, *v58, @"open(%@) failed", v59, v60, v61, v62, a2);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 0x40000000;
    v81[2] = __ACSImportFileIntoCachingServer_block_invoke;
    v81[3] = &unk_278CC58D8;
    v81[4] = a6;
    v81[5] = v63;
    v82 = v14;
    v81[6] = "ACSImportFileIntoCachingServer";
    v81[7] = global_queue;
    v64 = v81;
    v65 = global_queue;
LABEL_60:
    dispatch_async(v65, v64);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void __ACSImportFileIntoCachingServer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSImportFileIntoCachingServer_block_invoke_cold_1();
    }

    CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    if (CFGetRetainCount(v4) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(a1 + 56);

  dispatch_release(v6);
}

void aclSetU64Option(void *a1, const char *a2, CFTypeRef cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr))
      {
        xpc_dictionary_set_uint64(a1, a2, valuePtr);
      }
    }
  }
}

void __ACSImportFileIntoCachingServer_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0;
  SharedLocatorConnection = aclGetSharedLocatorConnection(*(a1 + 80), &v30, a3, a4, a5, a6, a7, a8);
  if (SharedLocatorConnection)
  {
    v10 = SharedLocatorConnection;
    xpc_retain(SharedLocatorConnection);
    v11 = *(a1 + 64);
    global_queue = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __ACSImportFileIntoCachingServer_block_invoke_2_167;
    handler[3] = &unk_278CC5950;
    v27 = *(a1 + 80);
    v23 = *(a1 + 56);
    v24 = *(a1 + 48);
    v22 = *(a1 + 32);
    v25 = *(a1 + 72);
    v26 = v10;
    xpc_connection_send_message_with_reply(v10, v11, global_queue, handler);
    xpc_release(*(a1 + 64));
  }

  else
  {
    v13 = qword_280BB8FB0;
    if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 40);
      v16 = v30;
      v17 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
      *buf = 67109890;
      v32 = v14;
      v33 = 2080;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2048;
      v38 = v17;
      _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "#%08x %s -> error: %@, elapsed %.3f", buf, 0x26u);
    }

    CFRelease(*(a1 + 56));
    xpc_release(*(a1 + 64));
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(a1 + 72);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __ACSImportFileIntoCachingServer_block_invoke_164;
      block[3] = &unk_278CC5900;
      block[4] = v18;
      block[5] = v30;
      v29 = *(a1 + 80);
      block[6] = *(a1 + 40);
      block[7] = v19;
      dispatch_async(v19, block);
    }

    else if (v30)
    {
      CFRelease(v30);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __ACSImportFileIntoCachingServer_block_invoke_164(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSImportFileIntoCachingServer_block_invoke_164_cold_1();
    }

    CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    if (CFGetRetainCount(v4) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(a1 + 56);

  dispatch_release(v6);
}

void __ACSImportFileIntoCachingServer_block_invoke_2_167(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEBUG))
  {
    __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2_118_cold_1(a1);
  }

  if (MEMORY[0x245CDE690](a2) == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_BOOL(a2, "success");
    v8 = aclErrorCreateFromXPC(*(a1 + 80), a2);
  }

  else
  {
    v8 = aclErrorCreate(*(a1 + 80), *MEMORY[0x277CBEE48], 100, @"unexpected reply from XPC service %s: %@", v4, v5, v6, v7, "com.apple.AssetCacheLocatorService");
    v9 = 0;
  }

  CFRelease(*(a1 + 48));
  v10 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 40);
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    *buf = 67110146;
    v21 = v11;
    v22 = 2080;
    v23 = v12;
    v24 = 1024;
    v25 = v9;
    v26 = 2112;
    v27 = v8;
    v28 = 2048;
    v29 = v13;
    _os_log_impl(&dword_2411B8000, v10, OS_LOG_TYPE_DEFAULT, "#%08x %s -> success %{BOOL}d, error %@, elapsed %.3f", buf, 0x2Cu);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(a1 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ACSImportFileIntoCachingServer_block_invoke_169;
    block[3] = &unk_278CC5928;
    block[4] = v14;
    block[5] = v8;
    v19 = v9;
    v18 = *(a1 + 80);
    block[6] = *(a1 + 40);
    block[7] = v15;
    dispatch_async(v15, block);
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  xpc_release(*(a1 + 72));
  v16 = *MEMORY[0x277D85DE8];
}

void __ACSImportFileIntoCachingServer_block_invoke_169(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      __ACSImportFileIntoCachingServer_block_invoke_169_cold_1();
    }

    CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 68);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  if (v5)
  {
    if (CFGetRetainCount(v5) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 56);

  dispatch_release(v7);
}

void _ACSIntrospect(const __CFDictionary *a1, NSObject *global_queue, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v7 = arc4random();
  }

  while (!v7);
  v8 = v7;
  v9 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110146;
    v15 = v8;
    v16 = 2080;
    v17 = "_ACSIntrospect";
    v18 = 2112;
    v19 = a1;
    v20 = 2048;
    v21 = global_queue;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_2411B8000, v9, OS_LOG_TYPE_DEFAULT, "#%08x %s(options=%@, callbackQueue=%p, callback=%p)", buf, 0x30u);
  }

  if (a3)
  {
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    dispatch_retain(global_queue);
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "tag", v8);
  xpc_dictionary_set_string(v10, "command", "introspect");
  if (a1 && CFDictionaryGetValue(a1, @"forceMiss") == *MEMORY[0x277CBED28])
  {
    xpc_dictionary_set_BOOL(v10, "forceMiss", 1);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ACSIntrospect_block_invoke;
  v12[3] = &unk_278CC5A18;
  v13 = v8;
  v12[5] = v10;
  v12[6] = "_ACSIntrospect";
  *&v12[7] = Current;
  v12[4] = a3;
  v12[8] = global_queue;
  dispatch_async(qword_280BB8FB8, v12);
  v11 = *MEMORY[0x277D85DE8];
}

void _ACSSetTestFlags(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (acl != -1)
  {
    ACSLocateCachingServer_cold_1();
  }

  do
  {
    v4 = arc4random();
  }

  while (!v4);
  v5 = v4;
  v6 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v12 = v5;
    v13 = 2080;
    v14 = "_ACSSetTestFlags";
    v15 = 2048;
    v16 = a1;
    v17 = 2112;
    v18 = a2;
    _os_log_impl(&dword_2411B8000, v6, OS_LOG_TYPE_DEFAULT, "#%08x %s(flags=%#llx, options=%@)", buf, 0x26u);
  }

  if (os_variant_allows_internal_security_policies())
  {
    qword_280BB8FC8 = a1 & 0x8000000000000000;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "tag", v5);
  xpc_dictionary_set_string(v7, "command", "setTestFlags");
  xpc_dictionary_set_uint64(v7, "flags", a1 & 0x7FFFFFFFFFFFFFFFLL);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ACSSetTestFlags_block_invoke;
  v9[3] = &__block_descriptor_tmp_186;
  v10 = v5;
  v9[4] = v7;
  dispatch_async(qword_280BB8FB8, v9);
  v8 = *MEMORY[0x277D85DE8];
}

dispatch_queue_t __aclInit_block_invoke()
{
  qword_280BB8FB0 = os_log_create("com.apple.AssetCacheServices", "Framework");
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("AssetCacheLocator.connectionQueue", v0);
  qword_280BB8FC0 = 0;
  qword_280BB8FC8 = 0;
  qword_280BB8FB8 = v1;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("AssetCacheLocator.lastResultsQueue", v2);
  qword_280BB8FD0 = result;
  return result;
}

BOOL aclIsReservedQueryParameter(CFStringRef originalString)
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_2852F20F8);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFStringCompare(v1, @"source", 0) == kCFCompareEqualTo || CFStringHasPrefix(v2, @"source=") || CFStringCompare(v2, @"sourceScheme", 0) == kCFCompareEqualTo || CFStringHasPrefix(v2, @"sourceScheme=") != 0;
  CFRelease(v2);
  return v3;
}

CFTypeRef __aclLocateCommon_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = qword_280BB8FD8;
  *(*(a1[5] + 8) + 24) = qword_280BB8FE0;
  v2 = *(*(a1[5] + 8) + 24);
  if (v2)
  {
    CFRetain(v2);
  }

  *(*(a1[6] + 8) + 24) = byte_280BB8FE8;
  *(*(a1[7] + 8) + 24) = dword_280BB8FEC;
  *(*(a1[8] + 8) + 24) = qword_280BB8FF0;
  v3 = *(*(a1[8] + 8) + 24);
  if (v3)
  {
    CFRetain(v3);
  }

  *(*(a1[9] + 8) + 24) = qword_280BB8FF8;
  result = *(*(a1[9] + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __aclLocateCommon_block_invoke_3(uint64_t a1, const void *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = @"validUntil";
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current + 300.0);
  values = v5;
  v6 = MEMORY[0x277CBF138];
  v7 = MEMORY[0x277CBF150];
  v8 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v5);
  v23 = @"advice";
  v22 = v8;
  v9 = CFDictionaryCreate(0, &v23, &v22, 1, v6, v7);
  CFRelease(v8);
  v21 = v9;
  v10 = CFArrayCreate(0, &v21, 1, MEMORY[0x277CBF128]);
  CFRelease(v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(a1 + 60);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __aclSaveLocateResult_block_invoke;
  block[3] = &__block_descriptor_tmp_259;
  block[4] = v11;
  v20 = v13;
  v19 = v14;
  block[5] = v12;
  block[6] = v10;
  block[7] = a2;
  dispatch_sync(qword_280BB8FD0, block);
  v15 = *(a1 + 48);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, @"new", v10, a2);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __aclLocateCommon_block_invoke_2_250(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 40) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

void __aclGetSharedLocatorConnection_block_invoke(uint64_t a1, xpc_object_t object)
{
  xpc_retain(object);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __aclGetSharedLocatorConnection_block_invoke_2;
  block[3] = &__block_descriptor_tmp_271;
  v5 = *(a1 + 32);
  v6 = object;
  dispatch_async(qword_280BB8FB8, block);
}

void __aclGetSharedLocatorConnection_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 40);
  if (*(a1 + 32) == v2)
  {
    v3 = qword_280BB8FB0;
    if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      v5 = @"XPC_ERROR_CONNECTION_INVALID";
      if (v4 == MEMORY[0x277D86420])
      {
        v6 = @"XPC_ERROR_TERMINATION_IMMINENT";
      }

      else
      {
        v6 = *(a1 + 48);
      }

      if (v4 != MEMORY[0x277D863F8])
      {
        v5 = v6;
      }

      if (v4 == MEMORY[0x277D863F0])
      {
        v7 = @"XPC_ERROR_CONNECTION_INTERRUPTED";
      }

      else
      {
        v7 = v5;
      }

      v9[0] = 67109634;
      v9[1] = 0;
      v10 = 2080;
      v11 = "com.apple.AssetCacheLocatorService";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_2411B8000, v3, OS_LOG_TYPE_INFO, "#%08x event from XPC service %s: %@", v9, 0x1Cu);
      v2 = **(a1 + 40);
    }

    xpc_connection_cancel(v2);
    xpc_release(**(a1 + 40));
    **(a1 + 40) = 0;
  }

  xpc_release(*(a1 + 48));
  v8 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

void __ACSMightCurrentNetworkHaveCachingServer_block_invoke_2_118_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 80);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2411B8000, v3, v4, "#%08x %s reply callback(object=%@)");
  v5 = *MEMORY[0x277D85DE8];
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}