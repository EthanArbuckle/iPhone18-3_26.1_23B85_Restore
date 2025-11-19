@interface ACSIntrospect
@end

@implementation ACSIntrospect

void ___ACSIntrospect_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0;
  SharedLocatorConnection = aclGetSharedLocatorConnection(*(a1 + 72), &v27, a3, a4, a5, a6, a7, a8);
  if (SharedLocatorConnection)
  {
    v10 = SharedLocatorConnection;
    xpc_retain(SharedLocatorConnection);
    v11 = *(a1 + 40);
    global_queue = dispatch_get_global_queue(0, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 0x40000000;
    v23[2] = ___ACSIntrospect_block_invoke_2;
    v23[3] = &unk_278CC59F0;
    v24 = *(a1 + 72);
    v13 = *(a1 + 48);
    v23[6] = *(a1 + 56);
    v23[4] = *(a1 + 32);
    v23[5] = v13;
    v23[7] = *(a1 + 64);
    v23[8] = v10;
    xpc_connection_send_message_with_reply(v10, v11, global_queue, v23);
    xpc_release(*(a1 + 40));
  }

  else
  {
    xpc_release(*(a1 + 40));
    v14 = qword_280BB8FB0;
    if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 72);
      v16 = *(a1 + 48);
      v17 = v27;
      v18 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
      *buf = 67109890;
      v29 = v15;
      v30 = 2080;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      v34 = 2048;
      v35 = v18;
      _os_log_impl(&dword_2411B8000, v14, OS_LOG_TYPE_DEFAULT, "#%08x %s -> error: %@, elapsed %.3f", buf, 0x26u);
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      Copy = v27;
      if (v27)
      {
        Copy = aclErrorCreateCopy(v27);
        v19 = *(a1 + 32);
      }

      v21 = *(a1 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ACSIntrospect_block_invoke_175;
      block[3] = &unk_278CC59A0;
      block[4] = v19;
      block[5] = Copy;
      v26 = *(a1 + 72);
      block[6] = *(a1 + 48);
      block[7] = v21;
      dispatch_async(v21, block);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void ___ACSIntrospect_block_invoke_175(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      ___ACSIntrospect_block_invoke_175_cold_1();
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

void ___ACSIntrospect_block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEBUG))
  {
    ___ACSIntrospect_block_invoke_2_cold_1(a1);
  }

  if (MEMORY[0x245CDE690](a2) == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_value(a2, "introspection"))
    {
      v9 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v9 = 0;
    }

    v8 = aclErrorCreateFromXPC(*(a1 + 72), a2);
  }

  else
  {
    v8 = aclErrorCreate(*(a1 + 72), *MEMORY[0x277CBEE48], 100, @"unexpected reply from XPC service %s: %@", v4, v5, v6, v7, "com.apple.AssetCacheLocatorService");
    v9 = 0;
  }

  v10 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 40);
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    *buf = 67110147;
    v22 = v11;
    v23 = 2080;
    v24 = v12;
    v25 = 2113;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    v29 = 2048;
    v30 = v13;
    _os_log_impl(&dword_2411B8000, v10, OS_LOG_TYPE_DEFAULT, "#%08x %s -> result %{private}@, error %@, elapsed %.3f", buf, 0x30u);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    if (v8)
    {
      Copy = aclErrorCreateCopy(v8);
      v14 = *(a1 + 32);
    }

    else
    {
      Copy = 0;
    }

    v16 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ACSIntrospect_block_invoke_178;
    block[3] = &unk_278CC59C8;
    block[4] = v14;
    block[5] = v9;
    v20 = *(a1 + 72);
    v17 = *(a1 + 40);
    block[6] = Copy;
    block[7] = v17;
    block[8] = v16;
    dispatch_async(v16, block);
  }

  else if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  xpc_release(*(a1 + 64));
  v18 = *MEMORY[0x277D85DE8];
}

void ___ACSIntrospect_block_invoke_178(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      ___ACSIntrospect_block_invoke_178_cold_1();
    }

    CFRetain(*(a1 + 40));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (CFGetRetainCount(v3) != 1)
    {
      ___ACSIntrospect_block_invoke_178_cold_2();
    }

    CFRetain(*(a1 + 48));
    v4 = *(a1 + 48);
  }

  v5 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    if (CFGetRetainCount(v6) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "introspection", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    if (CFGetRetainCount(v7) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "error", *(a1 + 48));
    }

    CFRelease(*(a1 + 48));
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);

  dispatch_release(v10);
}

void ___ACSIntrospect_block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2411B8000, v3, v4, "#%08x %s reply callback(object=%@)");
  v5 = *MEMORY[0x277D85DE8];
}

@end