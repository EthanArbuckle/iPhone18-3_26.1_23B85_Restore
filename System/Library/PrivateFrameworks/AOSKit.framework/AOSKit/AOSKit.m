void *AOSAccountCreate(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  if (!kAOSAccountTypeID)
  {
    kAOSAccountTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a2)
    {
      Instance[2] = CFRetain(a2);
    }

    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    Instance[3] = v8;
    if (a4)
    {
      v9 = CFRetain(a4);
    }

    else
    {
      v9 = 0;
    }

    Instance[4] = v9;
    if (!Instance[2])
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

void *AOSAccountCopyAuthInfo(uint64_t a1, void *a2, uint64_t a3, CFErrorRef *a4)
{
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (!a1)
  {
    if (_AOSValidateURL(a2))
    {
      v8 = 0;
      goto LABEL_11;
    }

LABEL_13:
    NSLog(&cfstr_AoskitErrorInv.isa, a2);
    v15 = 5001;
    if (!a4)
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

LABEL_14:
    v14 = CFErrorCreate(0, kAOSErrorDomain, v15, 0);
    v8 = 0;
    goto LABEL_15;
  }

  v8 = *(a1 + 16);
  if (!_AOSValidateURL(a2))
  {
    goto LABEL_13;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [objc_msgSend(MEMORY[0x277CEC748] "sharedManager")];
  if (!v9)
  {
    NSLog(&cfstr_AoskitErrorNoA.isa, v8);
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [v9 personID];
  v12 = [v10 authToken];
  v13 = v12;
  if (!v11 || !v12)
  {
    NSLog(&cfstr_AoskitErrorInv_0.isa, v8, v11, v12 != 0);
LABEL_18:
    v15 = 5000;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v11 forKey:kAOSPersonIDKey];
  [v8 setObject:v13 forKey:kAOSAuthTokenKey];
  if (v8)
  {
    CFRetain(v8);
  }

LABEL_11:
  if (a4)
  {
    v14 = 0;
LABEL_15:
    *a4 = v14;
  }

LABEL_20:
  [v7 drain];
  return v8;
}

uint64_t AOSAccountGetUser(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t _AOSValidateURL(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v3 = [a1 host];
  v4 = [objc_msgSend(objc_msgSend(a1 "scheme")];
  v5 = [objc_msgSend(v3 "lowercaseString")];
  v6 = [v5 count];
  v7 = v6;
  v14 = 0;
  if (v6 >= 2)
  {
    v8 = [v5 objectAtIndex:(v6 - 1)];
    v9 = [v5 objectAtIndex:(v7 - 2)];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, v8];
    v11 = v10;
    if (v10)
    {
      if ([v10 length])
      {
        if ([v11 isEqualToString:@"icloud.com"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"me.com") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"mac.com") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"apple.com") & 1) != 0 || (v12 = objc_msgSend(v3, "lowercaseString"), (objc_msgSend(v12, "isEqualToString:", @"icloud.com.cn")) || objc_msgSend(v12, "hasSuffix:", @".icloud.com.cn") && (v13 = objc_msgSend(v12, "length"), v13 > objc_msgSend(@".icloud.com.cn", "length")) || objc_msgSend(v11, "isEqualToString:", GetDomain()))
        {
          v14 = 1;
        }
      }
    }
  }

  [v2 drain];
  return v4 & v14;
}

AOSTransaction *_AOSAccountResolveAuthFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v12 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = v13;
  if (a2)
  {
    [v13 setObject:a2 forKey:kAOSAuthRequestURLKey];
  }

  if (a3)
  {
    [v14 setObject:a3 forKey:kAOSAuthRealmKey];
  }

  if (a4)
  {
    [v14 setObject:a4 forKey:kAOSAuthPreviousTokenKey];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:a5 != 0];
  [v14 setObject:v15 forKey:kAOSAuthUIAllowedKey];
  v16 = AOSLaunchAuthThread(a1, v14, a6);
  [v12 drain];
  return v16;
}

uint64_t AOSAccountGetPassword(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t AOSAccountGetAppleID(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t AOSAccountGetProperties(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void _AOSAccountSetProperties(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    v4 = cf ? CFRetain(cf) : 0;
    *(a1 + 32) = v4;
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t GetDomain()
{
  result = _otherDomain;
  if (!_otherDomain)
  {
    _otherDomain = objc_alloc_init(MEMORY[0x277CCAB68]);
    [_otherDomain appendFormat:@"%@", @"digit"];
    [_otherDomain appendFormat:@"%c", 97];
    [_otherDomain appendFormat:@"%c", 108];
    [_otherDomain appendFormat:@"%c", 104];
    [_otherDomain appendFormat:@"%c", 117];
    [_otherDomain appendFormat:@"%c", 98];
    [_otherDomain appendFormat:@"%c", 46];
    [_otherDomain appendFormat:@"%@", @"com"];
    return _otherDomain;
  }

  return result;
}

void AOSAccountDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

AOSTransaction *AOSLaunchAuthThread(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v7 = AOSTransactionCreate(*MEMORY[0x277CBECE8], a3);
  v8 = [AOSContext contextWithAccount:a1 andTransaction:v7];
  v9 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  [(AOSContext *)v9 setInfo:a2];
  [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_runAuthThreadWithContext_ toTarget:+[AOSThreadManager sharedManager](AOSThreadManager withObject:{"sharedManager"), v9}];
  if (!AOSTransactionIsAsync(v7))
  {
    AOSTransactionWaitUntilFinished(v7);
  }

  [v6 drain];
  return v7;
}

AOSTransaction *AOSTransactionCreate(uint64_t a1, uint64_t *a2)
{
  v3 = objc_alloc_init(AOSTransaction);
  v4 = v3;
  if (!a2)
  {
    return v4;
  }

  if (!v3)
  {
    return v4;
  }

  v5 = a2[1];
  if (!v5 && !a2[6])
  {
    return v4;
  }

  v6 = *a2;
  v3->callbackFunction = v5;
  if (v6 >= 1)
  {
    v7 = a2[6];
    if (v7)
    {
      v7 = CFRetain([v7 copy]);
    }

    v4->callbackBlock = v7;
    global_queue = a2[7];
    if (global_queue)
    {
      v4->callbackQueue = global_queue;
    }

    else
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v4->callbackQueue = global_queue;
      if (!global_queue)
      {
        goto LABEL_12;
      }
    }

    dispatch_retain(global_queue);
  }

LABEL_12:
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[3];
    if (v10)
    {
      v4->contextRetain = v10;
      v9 = v10();
    }

    v4->context = v9;
    v11 = a2[4];
    if (v11)
    {
      v4->contextRelease = v11;
    }
  }

  return v4;
}

uint64_t AOSTransactionGetResult(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void AOSTransactionSetResult(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 16);
      if (v2 != cf)
      {
        *(a1 + 16) = CFRetain(cf);
        if (v2)
        {

          CFRelease(v2);
        }
      }
    }
  }
}

uint64_t AOSTransactionGetError(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void AOSTransactionSetError(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 24);
      if (v2 != cf)
      {
        *(a1 + 24) = CFRetain(cf);
        if (v2)
        {

          CFRelease(v2);
        }
      }
    }
  }
}

uint64_t AOSTransactionSetIsFinished(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    *(result + 9) = a2;
    if (a2)
    {
      [*(result + 64) lock];
      v3 = *(v2 + 64);

      return [v3 unlockWithCondition:1];
    }
  }

  return result;
}

void *AOSTransactionCancel(void *result)
{
  if (result)
  {
    v1 = result;
    objc_sync_enter(result);
    v1[4] = 0;
    v2 = v1[5];
    if (v2)
    {
      CFRelease(v2);
      v3 = v1[5];
    }

    else
    {
      v3 = 0;
    }

    v1[5] = 0;

    return objc_sync_exit(v1);
  }

  return result;
}

uint64_t AOSTransactionWaitUntilFinished(uint64_t a1)
{
  [*(a1 + 64) lockWhenCondition:1];
  v2 = *(a1 + 64);

  return [v2 unlock];
}

void AOSTransactionUpdate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    AOSTransactionSetResult(a1, *(a2 + 16));
    v4 = *(a2 + 24);
  }

  else
  {
    AOSTransactionSetResult(a1, 0);
    v4 = 0;
  }

  AOSTransactionSetError(a1, v4);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 9);
  *(a1 + 9) = v5;
  if (v5)
  {
    [*(a1 + 64) lock];
    v6 = *(a1 + 64);

    [v6 unlockWithCondition:1];
  }
}