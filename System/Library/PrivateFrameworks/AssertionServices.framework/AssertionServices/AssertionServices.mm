id RBSProcessLegacyStateDescriptor()
{
  if (RBSProcessLegacyStateDescriptor_onceToken != -1)
  {
    RBSProcessLegacyStateDescriptor_cold_1();
  }

  v1 = RBSProcessLegacyStateDescriptor___LegacyDescriptor;

  return v1;
}

void BKSProcessAssertionBackgroundTimeRemaining()
{
  v0 = [MEMORY[0x277D46F48] currentProcess];
  v1 = [v0 activeLimitations];
  [v1 runTime];

  *MEMORY[0x277D47080];
}

void sub_22EEB7D14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBKSProcessErrorCode(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"bootstrap-failed";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"none";
  }
}

__CFString *NSStringFromBKSProcessExitReason(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"voluntary"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"signal"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"jetsam"];
  if ((a1 & 2) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"crash"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 addObject:@"fairPlay"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  [v3 addObject:@"badSignature"];
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    [v3 addObject:@"unknown"];
  }

LABEL_9:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"(none)";
  }

  return v4;
}

void sub_22EEBA744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BKSProcessAssertionSetExpirationHandler(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    BKSProcessAssertionSetExpirationHandler_cold_1();
  }

  if (BKSProcessAssertionSetExpirationHandler_onceToken != -1)
  {
    BKSProcessAssertionSetExpirationHandler_cold_2();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277D46F48];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __BKSProcessAssertionSetExpirationHandler_block_invoke_2;
  v17 = &unk_278871BF0;
  v7 = v4;
  v19 = v7;
  v8 = v3;
  v18 = v8;
  v9 = [v6 observeForImminentAssertionsExpiration:&v14];
  v10 = rbs_shim_log();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x2318FA0F0](v7);
      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_22EEB6000, v11, OS_LOG_TYPE_DEFAULT, "adding imminent expiration handler: %@, observer %@", buf, 0x16u);
    }

    os_unfair_lock_lock(&BKSProcessAssertionSetExpirationHandler_lock);
    [BKSProcessAssertionSetExpirationHandler__observers addObject:{v9, v14, v15, v16, v17}];
    os_unfair_lock_unlock(&BKSProcessAssertionSetExpirationHandler_lock);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      BKSProcessAssertionSetExpirationHandler_cold_3(v11);
    }
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __BKSProcessAssertionSetExpirationHandler_block_invoke()
{
  BKSProcessAssertionSetExpirationHandler__observers = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];

  return MEMORY[0x2821F96F8]();
}

void __BKSProcessAssertionSetExpirationHandler_block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = rbs_shim_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x2318FA0F0](*(a1 + 40));
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_22EEB6000, v2, OS_LOG_TYPE_DEFAULT, "BKSProcessAssertionSetExpirationHandler fired: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4)
  {
    dispatch_async(v4, v5);
  }

  else
  {
    v5[2](*(a1 + 40));
  }

  v6 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t BKSTerminationAssertionActiveEfficacyForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = __observerManager();
  v3 = [v2 efficacyForBundleID:v1];

  return v3;
}

id __observerManager()
{
  if (__observerManager_onceToken != -1)
  {
    __observerManager_cold_1();
  }

  v1 = __observerManager___manager;

  return v1;
}

uint64_t BKSTerminationAssertionHeldForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = __observerManager();
  v3 = [v2 hasTerminationAssertionForBundleID:v1];

  return v3;
}

void BKSTerminationAssertionRegisterObserver(void *a1)
{
  v1 = a1;
  v2 = __observerManager();
  [v2 addObserver:v1];
}

void BKSTerminationAssertionUnregisterObserver(void *a1)
{
  v1 = a1;
  v2 = __observerManager();
  [v2 removeObserver:v1];
}

void sub_22EEBC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2318FA0F0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ____observerManager_block_invoke()
{
  __observerManager___manager = objc_alloc_init(BKSTerminationAssertionObserverManager);

  return MEMORY[0x2821F96F8]();
}

void __RBSProcessLegacyStateDescriptor_block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D46FB0] descriptor];
  v1 = RBSProcessLegacyStateDescriptor___LegacyDescriptor;
  RBSProcessLegacyStateDescriptor___LegacyDescriptor = v0;

  [RBSProcessLegacyStateDescriptor___LegacyDescriptor setValues:9];
  v2 = RBSProcessLegacyStateDescriptor___LegacyDescriptor;
  v5[0] = *MEMORY[0x277D470D0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 setEndowmentNamespaces:v3];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t _BKSWatchdogAssertionGetTypeID()
{
  if (_BKSWatchdogAssertionGetTypeID_once != -1)
  {
    _BKSWatchdogAssertionGetTypeID_cold_1();
  }

  return _BKSWatchdogAssertionGetTypeID_typeID;
}

void _BKSWatchdogAssertionDestroy(uint64_t a1)
{
  os_unfair_lock_lock(&watchdogLock);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 24)];
  v2 = [assertionsByIdentifier objectForKey:v3];
  [v2 invalidate];
  [assertionsByIdentifier removeObjectForKey:v3];
  os_unfair_lock_unlock(&watchdogLock);
}

uint64_t BKSWatchdogAssertionCreateForPID(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D47008] targetWithPid:a2];
  v4 = objc_alloc(MEMORY[0x277D46DB8]);
  v5 = [MEMORY[0x277D46E28] grant];
  v19[0] = v5;
  v6 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:0];
  v19[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v8 = [v4 initWithExplanation:@"BKSWatchdogAssertion" target:v3 attributes:v7];

  v18 = 0;
  LODWORD(v7) = [v8 acquireWithError:&v18];
  v9 = v18;
  Instance = 0;
  if (v7)
  {
    if (_BKSWatchdogAssertionGetTypeID_once != -1)
    {
      BKSWatchdogAssertionCreateForPID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = v2;
    os_unfair_lock_lock(&watchdogLock);
    v11 = nextIdentifier++;
    *(Instance + 24) = v11;
    v12 = assertionsByIdentifier;
    if (!assertionsByIdentifier)
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
      v14 = assertionsByIdentifier;
      assertionsByIdentifier = v13;

      v12 = assertionsByIdentifier;
      v11 = *(Instance + 24);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [v12 setObject:v8 forKey:v15];

    os_unfair_lock_unlock(&watchdogLock);
  }

  v16 = *MEMORY[0x277D85DE8];
  return Instance;
}

void BKSProcessAssertionSetExpirationHandler_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BKSProcessAssertionSetExpirationHandler(__strong dispatch_queue_t, void (^__strong)(void))"}];
  [v1 handleFailureInFunction:v0 file:@"BKSProcessAssertion.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
}