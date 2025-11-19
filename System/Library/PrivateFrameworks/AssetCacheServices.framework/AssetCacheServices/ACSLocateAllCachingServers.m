@interface ACSLocateAllCachingServers
@end

@implementation ACSLocateAllCachingServers

void ___ACSLocateAllCachingServers_block_invoke(uint64_t a1, uint64_t a2, CFArrayRef theArray, __CFError *Copy)
{
  MutableCopy = theArray;
  v33 = *MEMORY[0x277D85DE8];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, MutableCopy);
  }

  if (Copy)
  {
    Copy = aclErrorCreateCopy(Copy);
  }

  v9 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 67110658;
    v20 = v10;
    v21 = 2080;
    v22 = v11;
    v23 = 2112;
    v24 = a2;
    v25 = 2112;
    v26 = MutableCopy;
    v27 = 2112;
    v28 = Copy;
    v29 = 2048;
    v30 = v12;
    v31 = 2048;
    v32 = v13;
    _os_log_impl(&dword_2411B8000, v9, OS_LOG_TYPE_DEFAULT, "#%08x %s -> [%@] results %@, error %@, elapsed %.3f/%.3f", buf, 0x44u);
  }

  v14 = *(a1 + 64);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = ___ACSLocateAllCachingServers_block_invoke_96;
  v17[3] = &unk_278CC5778;
  v15 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v17[5] = MutableCopy;
  v18 = *(a1 + 72);
  v17[6] = Copy;
  v17[7] = v15;
  v17[8] = v14;
  dispatch_async(v14, v17);
  v16 = *MEMORY[0x277D85DE8];
}

void ___ACSLocateAllCachingServers_block_invoke_96(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      ___ACSLocateAllCachingServers_block_invoke_96_cold_1();
    }

    CFRetain(*(a1 + 40));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (CFGetRetainCount(v3) != 1)
    {
      ___ACSLocateAllCachingServers_block_invoke_96_cold_2();
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
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "results", *(a1 + 40));
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
    v8 = *(a1 + 48);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);

  dispatch_release(v10);
}

@end