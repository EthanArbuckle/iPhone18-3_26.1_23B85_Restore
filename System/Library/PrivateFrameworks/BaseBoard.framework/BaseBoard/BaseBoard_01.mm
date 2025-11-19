uint64_t BSPIDIsBeingDebugged(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  v1 = _BSShortBSDProcessInfoForPID(a1, v3);
  return *&v1 & ((v4 & 2) >> 1);
}

id BSIntegerMapAllKeys(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BSIntegerSet * _Nonnull BSIntegerMapAllKeys(BSIntegerMap *__strong _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"BSIntegerMap.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"map"}];
  }

  v2 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __BSIntegerMapAllKeys_block_invoke;
  v7[3] = &unk_1E72CB628;
  v3 = v2;
  v8 = v3;
  BSIntegerMapEnumerateKeysWithBlock(v1, v7);

  return v3;
}

void sub_18FF10C00(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void BSDispatchQueueAssertNotMain()
{
  v12 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not expect the main thread"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BSDispatchQueueAssertNotMain(void)"];
      v4 = 138544130;
      v5 = v2;
      v6 = 2114;
      v7 = @"BSDispatchUtilities.m";
      v8 = 1024;
      v9 = 122;
      v10 = 2114;
      v11 = v1;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v4, 0x26u);
    }

    v3 = v1;
    qword_1EAD33B00 = [v1 UTF8String];
    __break(0);
    JUMPOUT(0x18FF10DC8);
  }

  v0 = MEMORY[0x1E69E96A0];

  dispatch_assert_queue_not_V2(v0);
}

uint64_t _BSProcessInfoForPID(int a1, void *a2)
{
  v2 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a1 >= 1 && a2)
  {
    if (BSSandboxCanGetProcessInfo(a1))
    {
      v10 = 648;
      *v15 = 0xE00000001;
      v16 = 1;
      v17 = a1;
      if (sysctl(v15, 4u, a2, &v10, 0, 0))
      {
        v5 = 0;
      }

      else
      {
        v5 = v10 == 648;
      }

      v2 = v5;
      if (!v5)
      {
        v6 = BSLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = __error();
          v9 = strerror(*v8);
          *buf = 67109378;
          v12 = a1;
          v13 = 2082;
          v14 = v9;
          _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "Unable to get proc info for %d: %{public}s", buf, 0x12u);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void BSSerializeDoubleToXPCDictionaryWithKey(void *a1, const char *a2, double a3)
{
  xdict = a1;
  if (xdict && a2)
  {
    xpc_dictionary_set_double(xdict, a2, a3);
  }
}

id BSExecutablePathForPID()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v8 = *MEMORY[0x1E69E9840];
  if (v0 < 1)
  {
    v5 = 0;
  }

  else
  {
    v1 = v0;
    v2 = objc_autoreleasePoolPush();
    if (BSSandboxCanGetProcessInfo(v1) && (v3 = proc_pidpath(v1, buffer, 0x1000u), v3 >= 1))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v3 encoding:4];
      v5 = [v4 stringByStandardizingPath];
    }

    else
    {
      v5 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  return v5;
}

double BSDeserializeDoubleFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  value = 0.0;
  if (v3 && a2)
  {
    v6 = xpc_dictionary_get_value(v3, a2);
    v7 = v6;
    if (v6 && object_getClass(v6) == MEMORY[0x1E69E9E88])
    {
      value = xpc_double_get_value(v7);
    }
  }

  return value;
}

void sub_18FF11550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSDispatchTimer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF11598(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_18FF1189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BSBlockSentinel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id BSLogCommon()
{
  if (BSLogCommon_onceToken != -1)
  {
    dispatch_once(&BSLogCommon_onceToken, &__block_literal_global_4);
  }

  v1 = BSLogCommon___logObj;

  return v1;
}

uint64_t BSXPCConnectionHasEntitlement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v10 = v5;
  v11 = v5;
  xpc_connection_get_audit_token();
  v9[0] = v10;
  v9[1] = v11;
  v6 = [BSSecTask secTaskForAuditToken:v9];
  v7 = [(BSSecTask *)v6 BOOLForEntitlement:v4];

  return v7;
}

id _BSAutoMember(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = *MEMORY[0x1E69E9840];
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!a1)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _BSAutoMemberV(NSString *, va_list)"}];
      v20 = 2114;
      v21 = @"BSXPCAutoCoding.m";
      v22 = 1024;
      v23 = 41;
      v24 = 2114;
      v25 = v15;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v15 UTF8String];
    __break(0);
    JUMPOUT(0x18FF124CCLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _BSAutoMemberV(NSString *, va_list)"}];
      v20 = 2114;
      v21 = @"BSXPCAutoCoding.m";
      v22 = 1024;
      v23 = 41;
      v24 = 2114;
      v25 = v16;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v16 UTF8String];
    __break(0);
    JUMPOUT(0x18FF12590);
  }

  v17 = &a10;
  v11 = a9;
  if (a9)
  {
    v12 = a1;
    do
    {
      if (v12 == a1)
      {
        v12 = [MEMORY[0x1E695DF70] arrayWithObject:a1];
      }

      [v12 addObject:v11];
      v13 = v17++;
      v11 = *v13;
    }

    while (*v13);
  }

  else
  {
    v12 = a1;
  }

  return [v12 copy];
}

void __BSLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "Common");
  v1 = BSLogCommon___logObj;
  BSLogCommon___logObj = v0;
}

uint64_t BSPathExistsOnSystemPartition(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1ED44FF00 == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  dispatch_once(&qword_1ED44FF00, &__block_literal_global_15_0);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 attributesOfFileSystemForPath:v2 error:0];
  v5 = [v4 objectForKey:*MEMORY[0x1E696A3C8]];

  if (!v5)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if ([qword_1ED44FEF0 isEqualToNumber:v5])
  {
    v6 = 1;
  }

  else
  {
    v6 = [qword_1ED44FEF8 isEqualToNumber:v5];
  }

LABEL_10:

  return v6;
}

void sub_18FF126DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL BSAtomicSetFlag(unsigned int a1, atomic_uint *a2)
{
  if (!a2)
  {
    __assert_rtn("BSAtomicSetFlag", "BSAtomicUtilities.m", 23, "value && (sizeof(int32_t) == sizeof(*value))");
  }

  v2 = a1 ^ 1;
  atomic_compare_exchange_strong_explicit(a2, &v2, a1, memory_order_relaxed, memory_order_relaxed);
  return v2 == (a1 ^ 1);
}

void sub_18FF12DFC(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

id BSLogBSAction()
{
  if (BSLogBSAction_onceToken != -1)
  {
    dispatch_once(&BSLogBSAction_onceToken, &__block_literal_global_1);
  }

  v1 = BSLogBSAction___logObj;

  return v1;
}

void sub_18FF136D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSActionResponder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id BSCollectionReduce(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v8;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v9 = v8;
    if (v11)
    {
      v12 = *v17;
      v9 = v8;
      do
      {
        v13 = 0;
        v14 = v9;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v9 = v7[2](v7, v14, *(*(&v16 + 1) + 8 * v13));

          ++v13;
          v14 = v9;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v9;
}

void __BSLogMachPort_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "MachPort");
  v1 = BSLogMachPort___logObj;
  BSLogMachPort___logObj = v0;
}

void sub_18FF13CFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromBSActionErrorCode(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = off_1E72CC220[a1];
  }

  return v2;
}

dispatch_queue_t BSDispatchQueueCreateSerial(void *a1)
{
  v1 = a1;
  v2 = +[BSDispatchQueueAttributes serial];
  v3 = BSDispatchQueueCreate(v1, v2);

  return v3;
}

void sub_18FF13F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSAction;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF14334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = _BSActionResponder;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF14390(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_18FF1449C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSActionResponse;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sbDefaults_getUnsignedLongLong(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 unsignedLongLongValue];

  return v9;
}

void BSSerializeCFValueToXPCDictionaryWithKey(uint64_t a1, void *a2, const char *a3)
{
  xdict = a2;
  if (a1 && xdict && a3)
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    if (v5)
    {
      xpc_dictionary_set_value(xdict, a3, v5);
    }
  }
}

void __BSSettingsDecodeClasses_block_invoke()
{
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v16 initWithObjects:{v15, v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = _MergedGlobals_38;
  _MergedGlobals_38 = v10;
}

void sub_18FF14F7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id BSPrettyFunctionName(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
    v2 = [MEMORY[0x1E696AE88] scannerWithString:v1];
    if ([v2 scanString:@"__" intoString:0])
    {
      [v2 scanInteger:0];
      v5 = v1;
      [v2 scanUpToString:@"_block_invoke" intoString:&v5];
      v3 = v5;

      v1 = v3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id BSBundleIDForPID(int a1)
{
  if (getpid() == a1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    [v1 bundleIdentifier];
  }

  else
  {
    v1 = BSExecutablePathForPID();
    BSBundleIDForExecutablePath(v1);
  }
  v2 = ;

  return v2;
}

BOOL BSEqualProcessAuditTokens(uint64_t a1, uint64_t a2)
{
  result = BSAuditTokenIsValid(a1);
  if (result)
  {
    result = BSAuditTokenIsValid(a2);
    if (result)
    {
      v5 = *(a1 + 16);
      *v11.val = *a1;
      *&v11.val[4] = v5;
      v6 = audit_token_to_pid(&v11);
      v7 = *(a2 + 16);
      *v11.val = *a2;
      *&v11.val[4] = v7;
      if (v6 == audit_token_to_pid(&v11))
      {
        v8 = *(a1 + 16);
        *v11.val = *a1;
        *&v11.val[4] = v8;
        v9 = audit_token_to_pidversion(&v11);
        v10 = *(a2 + 16);
        *v11.val = *a2;
        *&v11.val[4] = v10;
        return v9 == audit_token_to_pidversion(&v11);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void BSSerializeSetToXPCDictionaryWithKey(void *a1, void *a2, const char *a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  v8 = [a1 allObjects];
  BSSerializeArrayToXPCDictionaryWithKey(v8, v9, a3, v7);
}

id __BSCreateDeserializedSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary(a2);

  return v2;
}

__CFString *BSInterfaceOrientationMaskDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v3 = v2;
    if ((v1 & 2) != 0)
    {
      [(__CFString *)v2 appendString:@" Pu"];
      v1 &= ~2uLL;
    }

    if ((v1 & 0x10) != 0)
    {
      [(__CFString *)v3 appendString:@" Ll"];
      v1 &= ~0x10uLL;
    }

    if ((v1 & 8) != 0)
    {
      [(__CFString *)v3 appendString:@" Lr"];
      v1 &= ~8uLL;
    }

    if ((v1 & 4) != 0)
    {
      [(__CFString *)v3 appendString:@" Pd"];
      v1 &= ~4uLL;
    }

    if (v1)
    {
      [(__CFString *)v3 appendFormat:@" %li", v1];
    }

    [(__CFString *)v3 appendString:@""]);
  }

  else
  {
    v3 = @"none";
  }

  return v3;
}

void sub_18FF16194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSContinuousMachTimer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF161E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_18FF164AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, objc_super a15)
{
  a15.super_class = BSTransaction;
  [(_Unwind_Exception *)&a15 dealloc];
  _Unwind_Resume(a1);
}

id BSBundlePathForExecutablePath(void *a1)
{
  v4 = 0;
  v1 = _BSBundleInfoForExecutablePath(a1, &v4);
  v2 = v4;

  return v2;
}

void sub_18FF16754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_18FF16B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BSWallclockTimer;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF16BA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

BOOL BSMachSendRightRetain(mach_port_name_t name)
{
  v1 = name;
  if (name - 1 <= 0xFFFFFFFD)
  {
    inserted = mach_port_insert_right(*MEMORY[0x1E69E9A60], name, name, 0x13u);
    if (inserted)
    {
      _BSMachError(v1, inserted, @"Unable to insert COPY_SEND");
      v1 = 0;
    }
  }

  return (v1 - 1) < 0xFFFFFFFE;
}

void __lockAndExecute(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  (*(a2 + 16))(a2);

  os_unfair_lock_unlock(a1);
}

uint64_t BSMachCreateSendOnceRight(uint64_t a1)
{
  result = 0;
  v5 = 0;
  if ((a1 - 1) <= 0xFFFFFFFD)
  {
    v4 = 0;
    v3 = MEMORY[0x193AE55D0](*MEMORY[0x1E69E9A60], a1, 21, &v5, &v4);
    if (v3)
    {
      _BSMachError(a1, v3, @"Unable to create send-once right");
      if (v5)
      {
        _os_assumes_log();
      }
    }

    return v5;
  }

  return result;
}

uint64_t sbDefaults_getLongLong(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 longLongValue];

  return v9;
}

double BSSizeCeilForScale(double a1, double a2, double a3)
{
  v5 = BSFloatCeilForScale(a1, a3);
  BSFloatCeilForScale(a2, a3);
  return v5;
}

double BSFloatCeilForScale(double a1, double a2)
{
  v4 = fabs(a2);
  if (a2 <= 0.0 || v4 < 2.22044605e-16)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat BSFloatCeilForScale(CGFloat, CGFloat)"}];
    [v7 handleFailureInFunction:v8 file:@"BSMath.m" lineNumber:70 description:@"Scale must be specified and cannot be less than or equal to 0."];
  }

  return ceil(a1 * a2) / a2;
}

BOOL BSMachCreateReceiveRight(mach_port_name_t *a1)
{
  name = 0;
  v2 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  v3 = name;
  if (v2)
  {
    _BSMachError(name, v2, @"Unable to allocate receive right");
    v3 = 0;
  }

  if (a1)
  {
    *a1 = v3;
  }

  return v3 - 1 < 0xFFFFFFFE;
}

void sub_18FF17A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = BSWatchdog;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF180C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSSecTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void __BSLogBSAction_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "BSAction");
  v1 = BSLogBSAction___logObj;
  BSLogBSAction___logObj = v0;
}

uint64_t BSAuditTokenTaskHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = [BSSecTask secTaskForAuditToken:v8];
  v6 = [(BSSecTask *)v5 BOOLForEntitlement:v3];

  return v6;
}

void BSAppendVersionedPIDToStringAppendTarget(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == -1)
  {
    [v3 appendString:@"<invalid>"];
  }

  else
  {
    [v3 appendFormat:@"%d(v%X)", a1, HIDWORD(a1)];
  }
}

void sub_18FF184A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _BSProtobufDecodeRepeatFieldObject(void *a1, uint64_t a2, id *a3, void *a4)
{
  v7 = *a3;
  if (!*a3)
  {
    v7 = objc_alloc_init(*(a2 + 40));
    *a3 = v7;
  }

  v13 = 0;
  v9 = _BSProtobufDecodeObjectWithClassOverride(a1, *(a2 + 32), &v13, a4);
  v10 = v13;
  if (v9)
  {
    v11 = v13 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [v7 addObject:v13];
  }

  return v9;
}

uint64_t BSProtobufValidateIncomingTag(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
    v6 = @"tag must be > 0";
    goto LABEL_15;
  }

  if ((a2 - 19000) < 0x3E8)
  {
    v6 = @"tag must not be between 19000 and 19999, inclusive";
    goto LABEL_15;
  }

  if (a2 >> 29)
  {
    v6 = @"tag must be <= ((2^29) - 1)";
LABEL_15:
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSProtobufValidateIncomingTag(BSProtobufSchema *, NSInteger)"}];
      v10 = 2114;
      v11 = @"BSProtobufSerialization.m";
      v12 = 1024;
      v13 = 382;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF1892CLL);
  }

  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = *(result + 40);
    do
    {
      v4 = *v3;
      v3 += 24;
      if (v4 == a2)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot add duplicate tag %d", a2];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSProtobufValidateIncomingTag(BSProtobufSchema *, NSInteger)"}];
          v10 = 2114;
          v11 = @"BSProtobufSerialization.m";
          v12 = 1024;
          v13 = 387;
          v14 = 2114;
          v15 = v5;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        qword_1EAD33B00 = [v5 UTF8String];
        __break(0);
        JUMPOUT(0x18FF18850);
      }

      --v2;
    }

    while (v2);
  }

  return result;
}

void BSIntegerMapRemoveAllObjects(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (!v1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BSIntegerMapRemoveAllObjects(BSMutableIntegerMap *__strong _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"BSIntegerMap.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    v1 = 0;
  }

  [*(v1 + 1) removeAllObjects];
  v2 = v5[2];
  v5[2] = 0;
}

void sub_18FF18F38(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double BSPointRoundForScale(double a1, double a2, double a3)
{
  v5 = BSFloatRoundForScale(a1, a3);
  BSFloatRoundForScale(a2, a3);
  return v5;
}

uint64_t _BSProtobufEncodeString(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    PBDataWriterWriteStringField();
  }

  return 1;
}

uint64_t _BSProtobufEncodeData(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    PBDataWriterWriteDataField();
  }

  return 1;
}

id BSTemporaryFileAtPath(void *a1, int *a2)
{
  v3 = a1;
  if (!v3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    v6 = -1;
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.XXXXXX", v3];
  v5 = strdup([v4 fileSystemRepresentation]);
  v6 = mkstemp(v5);
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 stringWithFileSystemRepresentation:v5 length:strlen(v5)];

  free(v5);
  if (a2)
  {
LABEL_7:
    *a2 = v6;
    goto LABEL_8;
  }

  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

LABEL_8:

  return v8;
}

void sub_18FF19AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = _BSSqlitePreparedSimpleStatement;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF19CEC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

id BSDeserializeDataFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v2 = BSCreateDeserializedDataFromXPCDictionaryWithKey(a1, a2);

  return v2;
}

const void *BSCreateDeserializedDataFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  length = 0;
  if (v3)
  {
    data = xpc_dictionary_get_data(v3, a2, &length);
    if (data)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEF0]);
      data = [v6 initWithBytes:data length:length];
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

void __BSRunLoopPerformRelativeToCACommit_block_invoke(uint64_t a1, __CFRunLoopObserver *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveObserver(Current, a2, *MEMORY[0x1E695E8D0]);
  v6 = *(*(*(a1 + 40) + 8) + 24);

  CFRelease(v6);
}

double BSContinuousMachTimeNow()
{
  v0 = mach_continuous_time();
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once_f(&_MergedGlobals_9, 0, __machTimeScaleInit);
  }

  return *&qword_1ED44FD90 * v0;
}

uint64_t BSSelfTaskHasEntitlement(void *a1)
{
  v1 = a1;
  v2 = +[BSSecTask secTaskForCurrentProcess];
  v3 = [(BSSecTask *)v2 BOOLForEntitlement:v1];

  return v3;
}

uint64_t _BSProtobufEncodeRepeatFieldString(uint64_t a1, uint64_t a2, void **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        PBDataWriterWriteStringField();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return 1;
}

void BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v17 = a1;
  v5 = a2;
  if (v17 && ([objc_opt_class() supportsSecureCoding] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey(NSObject<NSSecureCoding> *__strong, __strong xpc_object_t, const char *)"}];
    [v15 handleFailureInFunction:v16 file:@"BSXPCSerialization.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"!object || [[object class] supportsSecureCoding]"}];
  }

  v6 = v5;
  v7 = v6;
  if (!v6 || (Class = object_getClass(v6), v9 = MEMORY[0x1E69E9E80], v7, v7, Class != v9))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey(NSObject<NSSecureCoding> *__strong, __strong xpc_object_t, const char *)"}];
    [v13 handleFailureInFunction:v14 file:@"BSXPCSerialization.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"BSXPCObjectIsDictionary(dictionary)"}];
  }

  if (v17 && a3)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc_init(MEMORY[0x1E696B0C8]);
    [v11 beginEncoding];
    [v11 encodeObject:v17 forKey:&stru_1F03A1A98];
    v12 = [v11 finishEncoding];
    xpc_dictionary_set_value(v7, a3, v12);

    objc_autoreleasePoolPop(v10);
  }
}

void sbDefaults_setBool(void *a1, const char *a2, uint64_t a3)
{
  v14 = a1;
  v5 = [(BSAbstractDefaultDomain *)v14 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 BOOLValue], v7, v8 == a3))
  {
    v12 = [v14 _store];
    v13 = *(v6 + 56);
    [v12 removeObjectForKey:v13];
  }

  else
  {
    v9 = [v14 _store];
    if (v6)
    {
      v10 = *(v6 + 56);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [v9 setBool:a3 forKey:v11];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v14 synchronizeDefaults];
  }

LABEL_11:
}

id BSCurrentUserDirectory()
{
  if (qword_1ED44FEE8 != -1)
  {
    dispatch_once(&qword_1ED44FEE8, &__block_literal_global_9_0);
  }

  v1 = qword_1ED44FEE0;

  return v1;
}

void __BSCurrentUserDirectory_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  v1 = getuid();
  v2 = [v0 initWithUTF8String:getpwuid(v1)->pw_dir];
  v3 = qword_1ED44FEE0;
  qword_1ED44FEE0 = v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x193AE5AC0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sbDefaults_getObject(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

void sub_18FF1C088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSAbstractDefaultDomain;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double __machTimeScaleInit()
{
  v22 = *MEMORY[0x1E69E9840];
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    v1 = 2;
    do
    {
      if (!v1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to fetch mach_timebase_info after multiple attempts : latest r=%i", v0];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __machTimeScaleInit(void *)"];
          *buf = 138544130;
          v15 = v8;
          v16 = 2114;
          v17 = @"BSTimeUtilities.m";
          v18 = 1024;
          v19 = 55;
          v20 = 2114;
          v21 = v7;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        v9 = v7;
        qword_1EAD33B00 = [v7 UTF8String];
        __break(0);
        JUMPOUT(0x18FF1C32CLL);
      }

      v2 = BSLogCommon();
      v3 = v2;
      if (--v1)
      {
        v4 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v4 = OS_LOG_TYPE_FAULT;
      }

      if (os_log_type_enabled(v2, v4))
      {
        *buf = 67109120;
        LODWORD(v15) = v0;
        _os_log_impl(&dword_18FEF6000, v3, v4, "failed to fetch mach_timebase_info with r=%i", buf, 8u);
      }

      v0 = mach_timebase_info(&info);
    }

    while (v0);
  }

  if (info.numer)
  {
    v5 = info.denom == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mach_timebase_info returned a numer or denom of zero : numer=%i denom=%i", info.numer, info.denom];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __machTimeScaleInit(void *)"];
      *buf = 138544130;
      v15 = v11;
      v16 = 2114;
      v17 = @"BSTimeUtilities.m";
      v18 = 1024;
      v19 = 56;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v12 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF1C400);
  }

  result = info.numer / info.denom / 1000000000.0 * 1.84467441e19;
  *&qword_1ED44FD90 = info.numer / info.denom / 1000000000.0;
  *&qword_1ED44FD98 = result;
  *&qword_1ED44FDA0 = info.denom / info.numer * 1000000000.0;
  return result;
}

void sub_18FF1C69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _BSDefaultObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

dispatch_queue_t BSDispatchQueueCreateSerialWithQoS(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[BSDispatchQueueAttributes serial];
  v5 = [v4 serviceClass:a2];
  v6 = BSDispatchQueueCreate(v3, v5);

  return v6;
}

void sub_18FF1C74C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t BSShmStore(char *a1, void *a2, int a3, _BYTE *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!a1)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)"}];
    [v41 handleFailureInFunction:v42 file:@"BSSharedMemoryStore.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  if (strlen(a1) <= 2)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)"}];
    [v43 handleFailureInFunction:v44 file:@"BSSharedMemoryStore.m" lineNumber:530 description:{@"path '%s' is too short", a1}];
  }

  if (strlen(a1) < 0x20)
  {
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_71:
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)"}];
    [v47 handleFailureInFunction:v48 file:@"BSSharedMemoryStore.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"data"}];

    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)"}];
  [v45 handleFailureInFunction:v46 file:@"BSSharedMemoryStore.m" lineNumber:531 description:{@"path '%s' is too long", a1}];

  if (!v7)
  {
    goto LABEL_71;
  }

LABEL_7:
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_72:
  v49 = [MEMORY[0x1E696AAA8] currentHandler];
  v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)"}];
  [v49 handleFailureInFunction:v50 file:@"BSSharedMemoryStore.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"failure"}];

LABEL_8:
  *__error() = 0;
  v8 = shm_open(a1, 2562, 384);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = [v7 serializedDataLength];
    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v51 = [MEMORY[0x1E696AAA8] currentHandler];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)"}];
      [v51 handleFailureInFunction:v52 file:@"BSSharedMemoryStore.m" lineNumber:545 description:@"shmLength out of range"];
    }

    if (*a4 == 2)
    {
      *a4 = 0;
      v10 = BSLogSharedMemory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 136315138;
        v78 = a1;
        _os_log_error_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_ERROR, "%s: simulating crash after opening new buffer", __strerrbuf, 0xCu);
      }

LABEL_14:

LABEL_35:
      v13 = 0;
LABEL_36:
      *__error() = 0;
      if (close(v8))
      {
        v24 = __error();
        strerror_r(*v24, __strerrbuf, 0x100uLL);
        v25 = BSLogSharedMemory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = *__error();
          *buf = 136315650;
          *&buf[4] = a1;
          *&buf[12] = 1024;
          *&buf[14] = v27;
          *&buf[18] = 2080;
          *&buf[20] = __strerrbuf;
          _os_log_error_impl(&dword_18FEF6000, v25, OS_LOG_TYPE_ERROR, "%s: failed to close write : errno=%i (%s)", buf, 0x1Cu);
        }
      }

      goto LABEL_40;
    }

    *__error() = 0;
    if (ftruncate(v8, v9 + 16))
    {
      v14 = __error();
      strerror_r(*v14, __strerrbuf, 0x100uLL);
      v15 = BSLogSharedMemory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v30 = *__error();
        *buf = 136315650;
        *&buf[4] = a1;
        *&buf[12] = 1024;
        *&buf[14] = v30;
        *&buf[18] = 2080;
        *&buf[20] = __strerrbuf;
        _os_log_error_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_ERROR, "%s: failed to set the size - unlinking : errno=%i (%s)", buf, 0x1Cu);
      }

LABEL_34:

      BSShmDelete(a1, 0);
      goto LABEL_35;
    }

    if (*a4 == 3)
    {
      *a4 = 0;
      v10 = BSLogSharedMemory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 136315138;
        v78 = a1;
        _os_log_error_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_ERROR, "%s: simulating crash after resizing new buffer", __strerrbuf, 0xCu);
      }

      goto LABEL_14;
    }

    *__error() = 0;
    v16 = mmap(0, v9 + 16, 2, 1, v8, 0);
    if (v16 == -1)
    {
      v23 = __error();
      strerror_r(*v23, __strerrbuf, 0x100uLL);
      v15 = BSLogSharedMemory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v39 = *__error();
        *buf = 136315650;
        *&buf[4] = a1;
        *&buf[12] = 1024;
        *&buf[14] = v39;
        *&buf[18] = 2080;
        *&buf[20] = __strerrbuf;
        _os_log_error_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_ERROR, "%s: failed to mmap - unlinking : errno=%i (%s)", buf, 0x1Cu);
      }

      goto LABEL_34;
    }

    v17 = v16;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 1;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v18 = [MEMORY[0x1E696AF00] currentThread];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __BSShmStore_block_invoke;
    v55[3] = &unk_1E72CAFF0;
    v54 = v18;
    v56 = v54;
    v57 = buf;
    v60 = v9;
    v61 = v17;
    v62 = 16;
    v58 = &v67;
    v59 = &v63;
    v19 = [v7 serializeToWriter:v55];
    *(*&buf[8] + 24) = 0;
    if (v19)
    {
      if (*(v64 + 24))
      {
        v20 = BSLogSharedMemory();
        v21 = v17;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *__strerrbuf = 136315138;
          v78 = a1;
          _os_log_error_impl(&dword_18FEF6000, v20, OS_LOG_TYPE_ERROR, "%s: data serialized but it tried to serialize more than it declared necessary", __strerrbuf, 0xCu);
        }
      }

      else
      {
        v21 = v17;
        if (v68[3] == v9)
        {
          goto LABEL_48;
        }

        v20 = BSLogSharedMemory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *__strerrbuf = 136315138;
          v78 = a1;
          _os_log_error_impl(&dword_18FEF6000, v20, OS_LOG_TYPE_ERROR, "%s: data serialized but it serialized less than it declared necessary", __strerrbuf, 0xCu);
        }
      }

LABEL_48:
      if (*a4 == 4)
      {
        *a4 = 0;
        v31 = BSLogSharedMemory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *__strerrbuf = 136315138;
          v78 = a1;
          _os_log_error_impl(&dword_18FEF6000, v31, OS_LOG_TYPE_ERROR, "%s: simulating crash after writing data to new buffer", __strerrbuf, 0xCu);
        }

        v13 = 0;
      }

      else
      {
        *v21 = v9;
        if (a3)
        {
          v34 = 3;
        }

        else
        {
          v34 = 1;
        }

        v21[8] = v34;
        *__error() = 0;
        if (msync(v21, v9 + 16, 16) == -1)
        {
          v35 = __error();
          strerror_r(*v35, __strerrbuf, 0x100uLL);
          v36 = BSLogSharedMemory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v53 = *__error();
            *v71 = 136315650;
            v72 = a1;
            v73 = 1024;
            v74 = v53;
            v75 = 2080;
            v76 = __strerrbuf;
            _os_log_error_impl(&dword_18FEF6000, v36, OS_LOG_TYPE_ERROR, "%s: failed to msync : errno=%i (%s)", v71, 0x1Cu);
          }
        }

        v13 = 1;
      }

      goto LABEL_65;
    }

    if (*(v64 + 24))
    {
      v28 = BSLogSharedMemory();
      v21 = v17;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 136315138;
        v78 = a1;
        v29 = "%s: data failed to serialize (maybe because it tried to write more than it declared up front) - unlinking";
LABEL_74:
        _os_log_error_impl(&dword_18FEF6000, v28, OS_LOG_TYPE_ERROR, v29, __strerrbuf, 0xCu);
      }
    }

    else
    {
      v32 = v68[3];
      v28 = BSLogSharedMemory();
      v33 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      v21 = v17;
      if (v32 == v9)
      {
        if (v33)
        {
          *__strerrbuf = 136315138;
          v78 = a1;
          v29 = "%s: data failed to serialize (external reason) - unlinking";
          goto LABEL_74;
        }
      }

      else if (v33)
      {
        *__strerrbuf = 136315138;
        v78 = a1;
        v29 = "%s: data failed to serialize (maybe because it tried to write less than it declared up front) - unlinking";
        goto LABEL_74;
      }
    }

    BSShmDelete(a1, 0);
    v13 = 0;
LABEL_65:
    *__error() = 0;
    if (munmap(v21, v9 + 16) == -1)
    {
      v37 = __error();
      strerror_r(*v37, __strerrbuf, 0x100uLL);
      v38 = BSLogSharedMemory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v40 = *__error();
        *v71 = 136315650;
        v72 = a1;
        v73 = 1024;
        v74 = v40;
        v75 = 2080;
        v76 = __strerrbuf;
        _os_log_error_impl(&dword_18FEF6000, v38, OS_LOG_TYPE_ERROR, "%s: failed to munmap - unlinking : errno=%i (%s)", v71, 0x1Cu);
      }

      BSShmDelete(a1, 0);
    }

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(buf, 8);
    goto LABEL_36;
  }

  v11 = __error();
  strerror_r(*v11, __strerrbuf, 0x100uLL);
  v12 = BSLogSharedMemory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v22 = *__error();
    *buf = 136315650;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    *&buf[18] = 2080;
    *&buf[20] = __strerrbuf;
    _os_log_error_impl(&dword_18FEF6000, v12, OS_LOG_TYPE_ERROR, "%s: failed to create : errno=%i (%s)", buf, 0x1Cu);
  }

  v13 = 0;
LABEL_40:

  return v13;
}

void sub_18FF1D704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSProcessDeathWatcher;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __BSShmStore_block_invoke(void *a1, const void *a2, size_t a3)
{
  if (!a2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)_block_invoke"}];
    [v13 handleFailureInFunction:v14 file:@"BSSharedMemoryStore.m" lineNumber:566 description:@"buf cannot be nil"];
  }

  v6 = a1[4];
  v7 = [MEMORY[0x1E696AF00] currentThread];

  if (v6 != v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)_block_invoke"}];
    [v15 handleFailureInFunction:v16 file:@"BSSharedMemoryStore.m" lineNumber:567 description:@"writeBlock cannot be called on a different thread"];
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSShmStore(const char *const _Nonnull, __strong id<BSSharedMemoryStoreData>, BOOL, BSSharedMemoryStoreWriteFailure *)_block_invoke"}];
    [v17 handleFailureInFunction:v18 file:@"BSSharedMemoryStore.m" lineNumber:568 description:@"writeBlock must be called in scope"];
  }

  v8 = a1[8];
  v9 = v8 - a3;
  if (v8 >= a3 && (v10 = *(*(a1[6] + 8) + 24), v10 <= v9))
  {
    if (a3)
    {
      memcpy((a1[9] + a1[10] + v10), a2, a3);
      *(*(a1[6] + 8) + 24) += a3;
    }

    return 1;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    v11 = __error();
    result = 0;
    *v11 = 28;
  }

  return result;
}

void sub_18FF1DAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = BSDispatchSource;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

id BSLogSharedMemory()
{
  if (BSLogSharedMemory_onceToken != -1)
  {
    dispatch_once(&BSLogSharedMemory_onceToken, &__block_literal_global_9);
  }

  v1 = BSLogSharedMemory___logObj;

  return v1;
}

void BSShmDelete(char *__s, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSShmDelete(const char *const _Nonnull, BOOL)"}];
    [v7 handleFailureInFunction:v8 file:@"BSSharedMemoryStore.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  if (strlen(__s) <= 2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSShmDelete(const char *const _Nonnull, BOOL)"}];
    [v9 handleFailureInFunction:v10 file:@"BSSharedMemoryStore.m" lineNumber:405 description:{@"path '%s' is too short", __s}];
  }

  if (strlen(__s) >= 0x20)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSShmDelete(const char *const _Nonnull, BOOL)"}];
    [v11 handleFailureInFunction:v12 file:@"BSSharedMemoryStore.m" lineNumber:406 description:{@"path '%s' is too long", __s}];
  }

  *__error() = 0;
  if (shm_unlink(__s) && (a2 & 1) == 0)
  {
    v4 = __error();
    strerror_r(*v4, __strerrbuf, 0x100uLL);
    v5 = BSLogSharedMemory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      *buf = 136315650;
      v14 = __s;
      v15 = 1024;
      v16 = v6;
      v17 = 2080;
      v18 = __strerrbuf;
      _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "%s: failed to unlink : errno=%i (%s)", buf, 0x1Cu);
    }
  }
}

void BSRunLoopPerformRelativeToCACommit(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __BSRunLoopPerformRelativeToCACommit_block_invoke;
  v7[3] = &unk_1E72CB4C0;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  v5 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, a1 + 2000000, v7);
  v11[3] = v5;
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddObserver(Current, v11[3], *MEMORY[0x1E695E8D0]);
  _Block_object_dispose(&v10, 8);
}

void sub_18FF1DFAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id BSDeviceOrientationDescription(unint64_t a1)
{
  if (a1 > 6)
  {
    v3 = @"INVALID";
  }

  else
  {
    v3 = off_1E72CBA90[a1];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%li)", v3, a1, v1];

  return v4;
}

uint64_t BSIsBeingDebugged()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  if (v0 < 1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  v1 = _BSShortBSDProcessInfoForPID(v0, v3);
  return *&v1 & ((v4 & 2) >> 1);
}

double BSTimeUntilNextClockMinute()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB00]);
  v1 = [v0 secondOfMinute];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *v3.i64 = *v2.i64 - trunc(*v2.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = 60.0 - v1 - *vbslq_s8(vnegq_f64(v4), v3, v2).i64;

  return v5;
}

__CFString *BSSettingFlagDescription(uint64_t a1)
{
  v1 = @"Yes";
  if (!a1)
  {
    v1 = @"No";
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"NotSet";
  }

  else
  {
    return v1;
  }
}

uint64_t BSIsSymbolicLinkAtPath(void *a1)
{
  v1 = a1;
  memset(&v5, 0, sizeof(v5));
  if (lstat([v1 fileSystemRepresentation], &v5))
  {
    v2 = 0;
  }

  else
  {
    v2 = (v5.st_mode & 0xF000) == 40960;
  }

  v3 = v2;

  return v3;
}

id BSXPCBundleForPID()
{
  v0 = BSExecutablePathForPID();
  v1 = BSXPCBundleForExecutablePath(v0);

  return v1;
}

id BSXPCBundleForExecutablePath(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 UTF8String];
    v3 = xpc_bundle_create();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id BSXPCBundleForBundlePath(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 UTF8String];
    v3 = xpc_bundle_create();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *BSXPCBundleGetIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = xpc_bundle_get_info_dictionary();
    if (v2)
    {
      string = xpc_dictionary_get_string(v2, [*MEMORY[0x1E695E4F0] UTF8String]);
      if (string)
      {
        string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
      }
    }

    else
    {
      string = 0;
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

id BSXPCBundleGetBundlePath(void *a1)
{
  v1 = a1;
  if (v1)
  {
    property = xpc_bundle_get_property();
    if (property)
    {
      property = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:property];
    }
  }

  else
  {
    property = 0;
  }

  return property;
}

id BSXPCBundleGetExecutablePath(void *a1)
{
  v1 = a1;
  if (v1)
  {
    executable_path = xpc_bundle_get_executable_path();
    if (executable_path)
    {
      executable_path = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:executable_path];
    }
  }

  else
  {
    executable_path = 0;
  }

  return executable_path;
}

id BSXPCBundleGetInfoDictionary(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = xpc_bundle_get_info_dictionary();
    if (v2)
    {
      v3 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_18FF20AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSCGImageFromIOSurfaceBuilder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF20F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void unlockIOSurface(void *a1)
{
  cf = a1;
  if (cf)
  {
    [cf unlockWithOptions:1 seed:0];
    [cf decrementUseCount];
    CFRelease(cf);
  }
}

void *__getCVCreateColorSpaceFromIOSurfaceBulkAttachmentsSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED44FC60)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreVideoLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72CABC8;
    v7 = 0;
    qword_1ED44FC60 = _sl_dlopen();
  }

  v2 = qword_1ED44FC60;
  if (!qword_1ED44FC60)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreVideoLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"IOSurface+BaseBoard.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CVCreateColorSpaceFromIOSurfaceBulkAttachments");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_4 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreVideoLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED44FC60 = result;
  return result;
}

void sub_18FF24328(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(a1);
    v21 = BSLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v20;
      _os_log_error_impl(&dword_18FEF6000, v21, OS_LOG_TYPE_ERROR, "Exception: %{public}@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x18FF242F0);
  }

  _Unwind_Resume(a1);
}

void sub_18FF25A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF26428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BSDeserializeBSXPCEncodableObjectFromXPCDictionary(void *a1)
{
  v1 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary(a1);

  return v1;
}

id __BSSerializeSetOfBSXPCEncodableObjectsToXPCDictionaryWithKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = BSCreateSerializedBSXPCEncodableObject(a2);

  return v2;
}

void BSSerializeDataToXPCDictionaryWithKey(void *a1, void *a2, const char *a3)
{
  v6 = a1;
  v5 = a2;
  if (v6 && v5 && a3)
  {
    xpc_dictionary_set_data(v5, a3, [v6 bytes], objc_msgSend(v6, "length"));
  }
}

xpc_object_t BSCreateSerializedXPCObjectFromCGPoint(double a1, double a2)
{
  objects[2] = *MEMORY[0x1E69E9840];
  objects[0] = xpc_double_create(a1);
  objects[1] = xpc_double_create(a2);
  v3 = xpc_array_create(objects, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  return v3;
}

void sub_18FF27A44(_Unwind_Exception *a1)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void BSSerializeCGPointToXPCDictionaryWithKey(void *a1, const char *a2, double a3, double a4)
{
  xdict = a1;
  if (xdict && a2)
  {
    v7 = BSCreateSerializedXPCObjectFromCGPoint(a3, a4);
    xpc_dictionary_set_value(xdict, a2, v7);
  }
}

double BSDeserializeCGPointFromXPCObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *MEMORY[0x1E695EFF8];
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v2) == 2)
  {
    v3 = xpc_array_get_double(v2, 0);
    xpc_array_get_double(v2, 1uLL);
  }

  return v3;
}

double BSDeserializeCGPointFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E80])
  {
    v6 = xpc_dictionary_get_value(v4, a2);
    v5 = BSDeserializeCGPointFromXPCObject(v6);
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
  }

  return v5;
}

void BSSerializeIOSurfaceToXPCDictionaryWithKey(__IOSurface *a1, void *a2, const char *a3)
{
  xdict = a2;
  if (a1 && xdict && a3)
  {
    XPCObject = IOSurfaceCreateXPCObject(a1);
    if (XPCObject)
    {
      xpc_dictionary_set_value(xdict, a3, XPCObject);
    }
  }
}

IOSurfaceRef BSCreateDeserializedIOSurfaceFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, a2);
    v6 = v5;
    if (v5)
    {
      v7 = IOSurfaceLookupFromXPCObject(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id BSTestSerializeAndDeserializeBSXPCEncodableObject(void *a1)
{
  v1 = BSCreateSerializedBSXPCEncodableObject(a1);
  v2 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary(v1);

  return v2;
}

BOOL BSSystemHasCapability()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

void sub_18FF29F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BSGetVersionedPID_block_invoke()
{
  BSAuditTokenForCurrentProcess(v2);
  BSGetVersionedPID___versionedPID = BSVersionedPIDForAuditToken(v2);
  if (getpid() != BSGetVersionedPID___versionedPID)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BSVersionedPID BSGetVersionedPID(void)_block_invoke"];
    [v0 handleFailureInFunction:v1 file:@"BSVersionedPID.m" lineNumber:20 description:@"Failed to validate current vpid."];
  }
}

void _initializePath(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 47;
  v5 = 0;
  if ([v3 getBytes:a1 + 1 maxLength:29 usedLength:&v5 encoding:4 options:1 range:0 remainingRange:{objc_msgSend(v3, "length"), 0}])
  {
    v4 = v5 + 1;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 32) = v4;
}

id BSShmLoad(char *__s, void *a2, BOOL *a3, _BYTE *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)"}];
    [v37 handleFailureInFunction:v38 file:@"BSSharedMemoryStore.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  if (strlen(__s) <= 2)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)"}];
    [v39 handleFailureInFunction:v40 file:@"BSSharedMemoryStore.m" lineNumber:420 description:{@"path '%s' is too short", __s}];
  }

  if (strlen(__s) < 0x20)
  {
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_61:
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)"}];
    [v43 handleFailureInFunction:v44 file:@"BSSharedMemoryStore.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"outGenerationTwiddle"}];

    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)"}];
  [v41 handleFailureInFunction:v42 file:@"BSSharedMemoryStore.m" lineNumber:421 description:{@"path '%s' is too long", __s}];

  if (!a3)
  {
    goto LABEL_61;
  }

LABEL_7:
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_62:
  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)"}];
  [v45 handleFailureInFunction:v46 file:@"BSSharedMemoryStore.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"outExisted"}];

LABEL_8:
  *__error() = 0;
  v8 = shm_open(__s, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    *a4 = 1;
    memset(&v65, 0, sizeof(v65));
    if (fstat(v8, &v65) || v65.st_size < 0x10uLL)
    {
      v15 = BSLogSharedMemory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 136315394;
        *&__strerrbuf[4] = __s;
        *&__strerrbuf[12] = 2048;
        *&__strerrbuf[14] = v65.st_size;
        _os_log_error_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_ERROR, "%s: invalid size - unlinking : size=%lli", __strerrbuf, 0x16u);
      }

      v14 = 0;
      BSShmDelete(__s, 0);
      goto LABEL_19;
    }

    *__error() = 0;
    v10 = mmap(0, v65.st_size, 1, 1, v9, 0);
    v11 = v10;
    if (v10 == -1)
    {
      v21 = __error();
      strerror_r(*v21, __strerrbuf, 0x100uLL);
      v22 = BSLogSharedMemory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v33 = *__error();
        *buf = 136315650;
        *&buf[4] = __s;
        *&buf[12] = 1024;
        *&buf[14] = v33;
        *&buf[18] = 2080;
        *&buf[20] = __strerrbuf;
        _os_log_error_impl(&dword_18FEF6000, v22, OS_LOG_TYPE_ERROR, "%s: failed to mmap - unlinking : errno=%i (%s)", buf, 0x1Cu);
      }

      BSShmDelete(__s, 0);
      v14 = 0;
      goto LABEL_19;
    }

    v12 = *(v10 + 8);
    if ((v12 & 1) == 0)
    {
      v13 = BSLogSharedMemory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 136315138;
        *&__strerrbuf[4] = __s;
        _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "%s: validity check failed - unlinking", __strerrbuf, 0xCu);
      }

      v14 = 0;
      BSShmDelete(__s, 0);
      goto LABEL_56;
    }

    v23 = *v10;
    if (*v10 > (v65.st_size - 16))
    {
      v24 = BSLogSharedMemory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 136315138;
        *&__strerrbuf[4] = __s;
        _os_log_error_impl(&dword_18FEF6000, v24, OS_LOG_TYPE_ERROR, "%s: size check failed - unlinking", __strerrbuf, 0xCu);
      }

      BSShmDelete(__s, 0);
      v14 = 0;
      goto LABEL_56;
    }

    *__strerrbuf = 0;
    *&__strerrbuf[8] = __strerrbuf;
    *&__strerrbuf[16] = 0x2020000000;
    v61 = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v26 = [MEMORY[0x1E696AF00] currentThread];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __BSShmLoad_block_invoke;
    v48[3] = &unk_1E72CAFC8;
    v47 = v26;
    v49 = v47;
    v50 = __strerrbuf;
    v53 = v23;
    v54 = v11;
    v55 = 16;
    v51 = buf;
    v52 = &v56;
    v14 = [a2 deserializeFromReader:v48];
    *(*&__strerrbuf[8] + 24) = 0;
    if (v14)
    {
      if (*(v57 + 24))
      {
        v27 = BSLogSharedMemory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *v62 = 136315138;
          v63 = __s;
          _os_log_debug_impl(&dword_18FEF6000, v27, OS_LOG_TYPE_DEBUG, "%s: data deserialized but it tried to over read the shm", v62, 0xCu);
        }
      }

      else
      {
        if (*(*&buf[8] + 24) == v23)
        {
LABEL_49:
          *a3 = (v12 & 2) != 0;
LABEL_55:

          _Block_object_dispose(&v56, 8);
          _Block_object_dispose(buf, 8);
          _Block_object_dispose(__strerrbuf, 8);
LABEL_56:
          *__error() = 0;
          if (munmap(v11, v65.st_size) == -1)
          {
            v34 = __error();
            strerror_r(*v34, __strerrbuf, 0x100uLL);
            v35 = BSLogSharedMemory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = *__error();
              *buf = 136315650;
              *&buf[4] = __s;
              *&buf[12] = 1024;
              *&buf[14] = v36;
              *&buf[18] = 2080;
              *&buf[20] = __strerrbuf;
              _os_log_error_impl(&dword_18FEF6000, v35, OS_LOG_TYPE_ERROR, "%s: failed to munmap - unlinking : errno=%i (%s)", buf, 0x1Cu);
            }

            BSShmDelete(__s, 0);
          }

LABEL_19:
          *__error() = 0;
          if (close(v9))
          {
            v16 = __error();
            strerror_r(*v16, __strerrbuf, 0x100uLL);
            v17 = BSLogSharedMemory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v25 = *__error();
              *buf = 136315650;
              *&buf[4] = __s;
              *&buf[12] = 1024;
              *&buf[14] = v25;
              *&buf[18] = 2080;
              *&buf[20] = __strerrbuf;
              _os_log_error_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_ERROR, "%s: failed to close read : errno=%i (%s)", buf, 0x1Cu);
            }
          }

          goto LABEL_28;
        }

        v27 = BSLogSharedMemory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v62 = 136315138;
          v63 = __s;
          _os_log_impl(&dword_18FEF6000, v27, OS_LOG_TYPE_INFO, "%s: data deserialized but it didn't read all of the shm", v62, 0xCu);
        }
      }

      goto LABEL_49;
    }

    if (*(v57 + 24))
    {
      v29 = BSLogSharedMemory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v62 = 136315138;
        v63 = __s;
        v30 = "%s: data failed to deserialize (maybe because it tried to over read the shm) - unlinking";
LABEL_64:
        _os_log_error_impl(&dword_18FEF6000, v29, OS_LOG_TYPE_ERROR, v30, v62, 0xCu);
      }
    }

    else
    {
      v31 = *(*&buf[8] + 24);
      v29 = BSLogSharedMemory();
      v32 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v31 == v23)
      {
        if (v32)
        {
          *v62 = 136315138;
          v63 = __s;
          v30 = "%s: data failed to deserialize (external reason) - unlinking";
          goto LABEL_64;
        }
      }

      else if (v32)
      {
        *v62 = 136315138;
        v63 = __s;
        v30 = "%s: data failed to deserialize (maybe because it didn't read all of the shm) - unlinking";
        goto LABEL_64;
      }
    }

    BSShmDelete(__s, 0);
    goto LABEL_55;
  }

  if (*__error() == 2)
  {
    v14 = 0;
  }

  else
  {
    v18 = __error();
    strerror_r(*v18, __strerrbuf, 0x100uLL);
    v19 = BSLogSharedMemory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = *__error();
      v65.st_dev = 136315650;
      *&v65.st_mode = __s;
      WORD2(v65.st_ino) = 1024;
      *(&v65.st_ino + 6) = v28;
      HIWORD(v65.st_uid) = 2080;
      *&v65.st_gid = __strerrbuf;
      _os_log_error_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_ERROR, "%s: failed to read : errno=%i (%s)", &v65, 0x1Cu);
    }

    v14 = 0;
    *a4 = 0;
  }

LABEL_28:

  return v14;
}

void sub_18FF2BC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSSharedMemoryStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF2BF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __BSShmLoad_block_invoke(void *a1, void *a2, size_t a3)
{
  if (!a2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)_block_invoke"}];
    [v13 handleFailureInFunction:v14 file:@"BSSharedMemoryStore.m" lineNumber:452 description:@"buf cannot be nil"];
  }

  v6 = a1[4];
  v7 = [MEMORY[0x1E696AF00] currentThread];

  if (v6 != v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)_block_invoke"}];
    [v15 handleFailureInFunction:v16 file:@"BSSharedMemoryStore.m" lineNumber:453 description:@"readBlock cannot be called on a different thread"];
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<BSSharedMemoryStoreData>  _Nullable BSShmLoad(const char *const _Nonnull, __unsafe_unretained Class, BOOL * _Nonnull, BOOL * _Nonnull)_block_invoke"}];
    [v17 handleFailureInFunction:v18 file:@"BSSharedMemoryStore.m" lineNumber:454 description:@"readBlock must be called in scope"];
  }

  v8 = a1[8];
  v9 = v8 - a3;
  if (v8 >= a3 && (v10 = *(*(a1[6] + 8) + 24), v10 <= v9))
  {
    if (a3)
    {
      memcpy(a2, (a1[9] + a1[10] + v10), a3);
      *(*(a1[6] + 8) + 24) += a3;
    }

    return 1;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    v11 = __error();
    result = 0;
    *v11 = 14;
  }

  return result;
}

void sub_18FF2F644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF324A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF34448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BSSqliteDatabaseConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double BSAbsoluteTimeFromMachTime(unint64_t a1)
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once_f(&_MergedGlobals_9, 0, __machTimeScaleInit);
  }

  return *&qword_1ED44FD90 * a1;
}

double BSTimeDifferenceFromMachTimeToMachTime(unint64_t a1, unint64_t a2)
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once_f(&_MergedGlobals_9, 0, __machTimeScaleInit);
  }

  v4 = a2 - a1;
  if (a1 > a2)
  {
    v4 = a1 - a2;
  }

  result = -(*&qword_1ED44FD90 * v4);
  if (a1 <= a2)
  {
    return *&qword_1ED44FD90 * v4;
  }

  return result;
}

uint64_t BSMachTimeForTimeDifferenceFromMachTime(unint64_t a1, double a2)
{
  v3 = fabs(a2);
  if (v3 == INFINITY)
  {
    return ~*&a2 >> 63;
  }

  if (_MergedGlobals_9 != -1)
  {
    dispatch_once_f(&_MergedGlobals_9, 0, __machTimeScaleInit);
  }

  v5 = vabdd_f64(v3, *&qword_1ED44FD98);
  if (v3 > *&qword_1ED44FD98 || v5 < 2.22044605e-16)
  {
    return ~*&a2 >> 63;
  }

  v8 = (v3 * *&qword_1ED44FDA0 + 0.5);
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    v9 = a1 >= v8;
    v11 = a1 - v8;
    if (v9)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = __CFADD__(a1, v8);
    v10 = a1 + v8;
    if (v9)
    {
      return -1;
    }

    else
    {
      return v10;
    }
  }
}

double BSTimeIntervalForCPUTicks(unsigned int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = BSTimeIntervalForCPUTicks___MicrosecondsPerTick;
  if (BSTimeIntervalForCPUTicks___MicrosecondsPerTick <= 0)
  {
    v5[0] = 0;
    v5[1] = 0;
    v6 = 0;
    v4 = 20;
    *v7 = 0xC00000001;
    if (sysctl(v7, 2u, v5, &v4, 0, 0))
    {
      v2 = BSTimeIntervalForCPUTicks___MicrosecondsPerTick;
    }

    else
    {
      v2 = HIDWORD(v5[0]);
      BSTimeIntervalForCPUTicks___MicrosecondsPerTick = HIDWORD(v5[0]);
    }
  }

  return (v2 * a1) / 1000000.0;
}

id BSEarlierDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3 && (v6 = v3, v4))
  {
    v7 = [v3 earlierDate:v4];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

id BSLaterDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3 && (v6 = v3, v4))
  {
    v7 = [v3 laterDate:v4];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

id BSDateAtStartOfDay(void *a1)
{
  v1 = a1;
  v2 = CFCalendarCopyCurrent();
  if (v2)
  {
    v7 = 0;
    at = 0.0;
    v6 = 0;
    [v1 timeIntervalSinceReferenceDate];
    if (CFCalendarDecomposeAbsoluteTime(v2, v3, "yMd", &v7 + 4, &v7, &v6) && CFCalendarComposeAbsoluteTime(v2, &at, "yMd", HIDWORD(v7), v7, v6))
    {
      v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:at];
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

dispatch_time_t BSDispatchTimeFromTimeInterval(double a1)
{
  if (a1 >= 9223372040.0)
  {
    return -1;
  }

  if (a1 <= -9223372040.0)
  {
    v1 = 0x8000000000000000;
  }

  else
  {
    v1 = (a1 * 1000000000.0);
  }

  return dispatch_time(0, v1);
}

void sub_18FF35990(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF35A38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF386B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf, __int16 a18, uint64_t a19, __int16 a20, uint64_t a21)
{
  if (a2 == 1)
  {
    v36 = objc_begin_catch(a1);
    v28 = MEMORY[0x1E696AEC0];
    v29 = NSStringFromClass(v24);
    v30 = [*(v22 + 8) bundleIdentifier];
    v35 = [*(v22 + 8) bundlePath];
    v31 = [v28 stringWithFormat:@"%s ERROR while loading plugin.\nClass: %@\nBundleID: %@\nPath: %@\nException: %@"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v36 callStackSymbols];
      v32 = [v31 stringByAppendingFormat:@"\nCall stack: %@"];

      v31 = v32;
    }

    v33 = BSLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v31;
      _os_log_error_impl(&dword_18FEF6000, v33, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x18FF385ECLL);
  }

  _Unwind_Resume(a1);
}

id BSLogTransactionAuditHistory()
{
  if (qword_1ED44FDB0 != -1)
  {
    dispatch_once(&qword_1ED44FDB0, &__block_literal_global_3);
  }

  v1 = _MergedGlobals_10;

  return v1;
}

void __BSLogTransactionAuditHistory_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "TransactionAuditHistory");
  v1 = _MergedGlobals_10;
  _MergedGlobals_10 = v0;
}

id BSLogPowerMonitor()
{
  if (BSLogPowerMonitor_onceToken != -1)
  {
    dispatch_once(&BSLogPowerMonitor_onceToken, &__block_literal_global_6);
  }

  v1 = BSLogPowerMonitor___logObj;

  return v1;
}

void __BSLogPowerMonitor_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "PowerMonitor");
  v1 = BSLogPowerMonitor___logObj;
  BSLogPowerMonitor___logObj = v0;
}

void __BSLogSharedMemory_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "SharedMemory");
  v1 = BSLogSharedMemory___logObj;
  BSLogSharedMemory___logObj = v0;
}

id BSLogTimer()
{
  if (BSLogTimer_onceToken != -1)
  {
    dispatch_once(&BSLogTimer_onceToken, &__block_literal_global_12);
  }

  v1 = BSLogTimer___logObj;

  return v1;
}

void __BSLogTimer_block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "Timer");
  v1 = BSLogTimer___logObj;
  BSLogTimer___logObj = v0;
}

void sub_18FF3994C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BSXPCConnectionListenerManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF3A4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

NSUInteger BSObjCSizeForTypeEncoding(const char *a1)
{
  sizep = 0;
  NSGetSizeAndAlignment(a1, &sizep, 0);
  return sizep;
}

void sub_18FF3C4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void sub_18FF3EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v25 = v23;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_18FF3FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_end_catch();

  _Unwind_Resume(v16);
}

void sub_18FF445FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSColor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF446CC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18FF474EC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

uint64_t sbDefaults_getInt(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 intValue];

  return v9;
}

void sbDefaults_setInt(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 intValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

uint64_t sbDefaults_getShort(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 shortValue];

  return v9;
}

void sbDefaults_setShort(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 shortValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithShort:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

uint64_t sbDefaults_getLong(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 longValue];

  return v9;
}

void sbDefaults_setLong(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 longValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

void sbDefaults_setLongLong(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 longLongValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

uint64_t sbDefaults_getUnsignedInt(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 unsignedIntValue];

  return v9;
}

void sbDefaults_setUnsignedInt(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 unsignedIntValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

uint64_t sbDefaults_getUnsignedShort(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 unsignedShortValue];

  return v9;
}

void sbDefaults_setUnsignedShort(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 unsignedShortValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

uint64_t sbDefaults_getUnsignedLong(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  v9 = [v8 unsignedLongValue];

  return v9;
}

void sbDefaults_setUnsignedLong(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 unsignedLongValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

void sbDefaults_setUnsignedLongLong(void *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v5 = [(BSAbstractDefaultDomain *)v15 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), v8 = [v7 unsignedLongLongValue], v7, v8 == a3))
  {
    v9 = [v15 _store];
    v10 = *(v6 + 56);
    [v9 removeObjectForKey:v10];
  }

  else
  {
    v11 = [v15 _store];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    if (v6)
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v11 setObject:v12 forKey:v14];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v15 synchronizeDefaults];
  }

LABEL_10:
}

float sbDefaults_getFloat(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  [v8 floatValue];
  v10 = v9;

  return v10;
}

void sub_18FF48E54(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sbDefaults_setFloat(void *a1, const char *a2, float a3)
{
  v17 = a1;
  v5 = [(BSAbstractDefaultDomain *)v17 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), [v7 floatValue], v9 = v8, v7, v9 == a3))
  {
    v10 = [v17 _store];
    v11 = *(v6 + 56);
    [v10 removeObjectForKey:v11];
  }

  else
  {
    v12 = [v17 _store];
    *&v13 = a3;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    if (v6)
    {
      v15 = *(v6 + 56);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v12 setObject:v14 forKey:v16];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v17 synchronizeDefaults];
  }

LABEL_10:
}

double sbDefaults_getDouble(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 objectForKey:v7];
  [v8 doubleValue];
  v10 = v9;

  return v10;
}

void sub_18FF490F0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sbDefaults_setDouble(void *a1, const char *a2, double a3)
{
  v16 = a1;
  v5 = [(BSAbstractDefaultDomain *)v16 _propertyFromSelector:a2];
  v6 = v5;
  if (v5 && (*(v5 + 72) & 4) != 0 && (v7 = *(v5 + 64), [v7 doubleValue], v9 = v8, v7, v9 == a3))
  {
    v10 = [v16 _store];
    v11 = *(v6 + 56);
    [v10 removeObjectForKey:v11];
  }

  else
  {
    v12 = [v16 _store];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    if (v6)
    {
      v14 = *(v6 + 56);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    [v12 setObject:v13 forKey:v15];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((*(v6 + 72) & 2) != 0)
  {
    [v16 synchronizeDefaults];
  }

LABEL_10:
}

id sbDefaults_getURL(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [(BSAbstractDefaultDomain *)v3 _propertyFromSelector:a2];
  v5 = [v3 _store];
  if (v4)
  {
    v6 = v4[7];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 URLForKey:v7];

  return v8;
}

void sbDefaults_setURL(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v17 = v5;
  v7 = [(BSAbstractDefaultDomain *)v17 _propertyFromSelector:a2];
  v8 = v7;
  if (!v6)
  {
    v13 = [v17 _store];
    if (v8)
    {
      v16 = *(v8 + 56);
    }

    else
    {
      v16 = 0;
    }

    v15 = v16;
    [v13 removeObjectForKey:v15];
LABEL_12:

    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v7 || (*(v7 + 72) & 4) == 0 || (v9 = *(v7 + 64), v10 = [v6 isEqual:v9], v9, !v10))
  {
    v13 = [v17 _store];
    if (v8)
    {
      v14 = *(v8 + 56);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    [v13 setURL:v6 forKey:v15];
    goto LABEL_12;
  }

  v11 = [v17 _store];
  v12 = *(v8 + 56);
  [v11 removeObjectForKey:v12];

LABEL_13:
  if ((*(v8 + 72) & 2) != 0)
  {
    [v17 synchronizeDefaults];
  }

LABEL_15:
}

void sub_18FF4952C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sbDefaults_setObject(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v19 = v5;
  v7 = [(BSAbstractDefaultDomain *)v19 _propertyFromSelector:a2];
  v8 = v7;
  if (!v6)
  {
    v10 = [v19 _store];
    if (v8)
    {
      v11 = *(v8 + 56);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v10 removeObjectForKey:v12];
LABEL_19:

    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (!v7)
  {
LABEL_16:
    v10 = [v19 _store];
    if (v8)
    {
      v18 = *(v8 + 56);
    }

    else
    {
      v18 = 0;
    }

    v12 = v18;
    [v10 setObject:v6 forKey:v12];
    goto LABEL_19;
  }

  if ((*(v7 + 72) & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  v13 = [v9 count];

  if (v13)
  {
LABEL_13:
    if ((*(v8 + 72) & 4) != 0)
    {
      v14 = *(v8 + 64);
      v15 = [v6 isEqual:v14];

      if (v15)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

LABEL_15:
  v16 = [v19 _store];
  v17 = *(v8 + 56);
  [v16 removeObjectForKey:v17];

LABEL_20:
  if ((*(v8 + 72) & 2) != 0)
  {
    [v19 synchronizeDefaults];
  }

LABEL_22:
}

void sub_18FF49788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t BSDispatchQueueCreateSerialWithFixedPriority(void *a1, uint64_t a2)
{
  v3 = [a1 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = _BSDispatchQueueCreateWithPriority(v3, v4, a2);

  return v5;
}

dispatch_queue_t _BSDispatchQueueCreateWithPriority(const char *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.baseboard.fixpri-%d", a3];
  inactive = dispatch_workloop_create_inactive([v6 UTF8String]);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v8 = _BSDispatchQueueAttributesForAttributes(v5, QOS_CLASS_UNSPECIFIED, 0);
  v9 = dispatch_queue_create_with_target_V2(a1, v8, inactive);

  return v9;
}

NSObject *BSDispatchQueueName(NSObject *label)
{
  if (label)
  {
    label = dispatch_queue_get_label(label);
    if (label)
    {
      label = [MEMORY[0x1E696AEC0] stringWithUTF8String:label];
    }

    v1 = vars8;
  }

  return label;
}

void BSDispatchQueueAssertBarrier(void *a1)
{
  queue = a1;
  if (queue == MEMORY[0x1E69E96A0])
  {
    BSDispatchQueueAssertMain();
  }

  else
  {
    dispatch_assert_queue_barrier(queue);
  }
}

dispatch_block_t BSDispatchBlockCreateWithQualityOfService(dispatch_qos_class_t qos_class, int a2, dispatch_block_t block)
{
  if (a2 <= -15)
  {
    v3 = -15;
  }

  else
  {
    v3 = a2;
  }

  return dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, qos_class, v3 & (v3 >> 31), block);
}

dispatch_time_t BSDispatchTimeForIntervalFromNow(double a1)
{
  if (a1 >= 9223372040.0)
  {
    return -1;
  }

  if (a1 <= -9223372040.0)
  {
    v1 = 0x8000000000000000;
  }

  else
  {
    v1 = (a1 * 1000000000.0);
  }

  return dispatch_time(0, v1);
}

dispatch_time_t BSDispatchTimeWithInterval(dispatch_time_t a1, double a2)
{
  if (a2 >= 9223372040.0)
  {
    return -1;
  }

  if (a2 <= -9223372040.0)
  {
    v2 = 0x8000000000000000;
  }

  else
  {
    v2 = (a2 * 1000000000.0);
  }

  return dispatch_time(a1, v2);
}

uint64_t BSDispatchTimeDeltaForInterval(double a1)
{
  if (a1 >= 9223372040.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a1 <= -9223372040.0)
  {
    return 0x8000000000000000;
  }

  return (a1 * 1000000000.0);
}

void sub_18FF49DDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF4A12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF4A4D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_18FF4AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF4AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL BSIntegerMapContainsObjectForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BSIntegerMapContainsObjectForKey(BSIntegerMap *__strong _Nonnull, NSInteger)"}];
    [v5 handleFailureInFunction:v6 file:@"BSIntegerMap.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = *(v3 + 2);
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [*(v3 + 1) objectForKey:a2];

LABEL_6:
  return v4 != 0;
}

id BSIntegerMapDescription(uint64_t a1)
{
  v1 = [BSDescriptionStream descriptionForRootObject:a1];

  return v1;
}

uint64_t BSProcessHasSandbox()
{
  if (qword_1ED44FE28 != -1)
  {
    dispatch_once(&qword_1ED44FE28, &__block_literal_global_16);
  }

  return _MergedGlobals_15;
}

uint64_t __BSProcessHasSandbox_block_invoke()
{
  getpid();
  result = sandbox_check();
  _MergedGlobals_15 = result != 0;
  return result;
}

BOOL BSSandboxCanAccessMachService(void *a1)
{
  v1 = a1;
  if (v1)
  {
    getpid();
    [v1 UTF8String];
    v2 = sandbox_check() == 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BSASIDForAuditToken(uint64_t a1)
{
  if (!BSAuditTokenIsValid(a1))
  {
    return 4294967294;
  }

  v2 = *(a1 + 16);
  *v4.val = *a1;
  *&v4.val[4] = v2;
  return audit_token_to_asid(&v4);
}

uint64_t BSEUIDForAuditToken(uint64_t a1)
{
  if (!BSAuditTokenIsValid(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  *v4.val = *a1;
  *&v4.val[4] = v2;
  return audit_token_to_euid(&v4);
}

uint64_t BSEGIDForAuditToken(uint64_t a1)
{
  if (!BSAuditTokenIsValid(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  *v4.val = *a1;
  *&v4.val[4] = v2;
  return audit_token_to_egid(&v4);
}

__n128 BSAuditTokenFromMachMessage(uint64_t a1, __n128 *a2)
{
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  v4 = result;
  v5 = result;
  v3 = ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL) + a1;
  if (*v3 || *(v3 + 4) < 0x20u)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = *(v3 + 20);
  v4 = result;
  v5 = *(v3 + 36);
  if (a2)
  {
LABEL_6:
    result = v4;
    *a2 = v4;
    a2[1] = v5;
  }

  return result;
}

id BSAuditTokenTaskCopyEntitlementValue(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = [BSSecTask secTaskForAuditToken:v8];
  v6 = [(BSSecTask *)v5 valueForEntitlement:v3];

  return v6;
}

uint64_t BSSecTaskHasEntitlement(__SecTask *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = BSSecTaskCopyEntitlementValue(a1, v3);
    v5 = v4;
    if (v4 && (v6 = CFGetTypeID(v4), v6 == CFBooleanGetTypeID()))
    {
      v7 = [v5 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = BSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Invalid security task for checking entitlement %{public}@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

id BSBundlePathForPID(int a1)
{
  if (getpid() == a1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    [v1 bundlePath];
  }

  else
  {
    v1 = BSExecutablePathForPID();
    BSBundlePathForExecutablePath(v1);
  }
  v2 = ;

  return v2;
}

id BSBundlePathForAuditToken(__int128 *a1)
{
  v2 = BSGetVersionedPID();
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  if (v2 == BSVersionedPIDForAuditToken(&v8))
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    [v4 bundlePath];
  }

  else
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v4 = BSExecutablePathForAuditToken();
    BSBundlePathForExecutablePath(v4);
  }
  v6 = ;

  return v6;
}

id BSBundleIDForXPCConnection(void *a1)
{
  v1 = _BSBundleIDForXPCConnectionAndIKnowWhatImDoingISwear(a1);

  return v1;
}

os_unfair_lock_s *BSAuditTokenRepresentsPlatformBinary(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = [BSSecTask secTaskForAuditToken:v5];
  v3 = [(BSSecTask *)v2 representsPlatformBinary];

  return v3;
}

void sub_18FF4DB14(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_18FF4DCDC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_18FF4DE94(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_18FF4E188(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF4E2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_18FF4E4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_18FF4FA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF50608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v8 = v7;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF509B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v8 = v7;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF50B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v8 = v7;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void bs_cleanup_cftype(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

void _BSPowerChanged(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = [a1 object];
  v7 = v6;
  if (v6)
  {
    BSDispatchQueueAssert(*(v6 + 32));
    HIDWORD(v9) = a3 + 536870288;
    LODWORD(v9) = a3 + 536870288;
    v8 = v9 >> 4;
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = ___BSPowerChanged_block_invoke_38;
          v18[3] = &unk_1E72CB800;
          v11 = v7;
          v19 = v11;
          _bsDispatchToObservers(v11, v18);
          IOAllowPowerChange(v11[14], a4);
          v10 = v19;
          goto LABEL_12;
        }
      }

      else
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 1;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = ___BSPowerChanged_block_invoke;
        v22[3] = &unk_1E72CB7D8;
        v12 = v7;
        v23 = v12;
        v24 = &v25;
        _bsDispatchToObservers(v12, v22);
        v13 = v12[14];
        if (*(v26 + 24) == 1)
        {
          IOAllowPowerChange(v13, a4);
        }

        else
        {
          IOCancelPowerChange(v13, a4);
        }

        _Block_object_dispose(&v25, 8);
      }
    }

    else
    {
      switch(v8)
      {
        case 2:
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = ___BSPowerChanged_block_invoke_35;
          v20[3] = &unk_1E72CB800;
          v21 = v7;
          _bsDispatchToObservers(v21, v20);
          v10 = v21;
          goto LABEL_12;
        case 9:
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = ___BSPowerChanged_block_invoke_44;
          v14[3] = &unk_1E72CB800;
          v15 = v7;
          _bsDispatchToObservers(v15, v14);
          v10 = v15;
          goto LABEL_12;
        case 11:
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = ___BSPowerChanged_block_invoke_41;
          v16[3] = &unk_1E72CB800;
          v17 = v7;
          _bsDispatchToObservers(v17, v16);
          v10 = v17;
LABEL_12:

          break;
      }
    }
  }
}

void sub_18FF52298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = BSPowerMonitor;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void _bsDispatchToObservers(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v15 = v3;
  if (!v4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _bsDispatchToObservers(BSPowerMonitor *__strong, __strong BSPowerObserverBlock)"}];
    [v13 handleFailureInFunction:v14 file:@"BSPowerMonitor.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"callout"}];
  }

  BSDispatchQueueAssert(*(v3 + 4));
  os_unfair_lock_lock(v3 + 10);
  v5 = [*(v3 + 6) allObjects];
  os_unfair_lock_unlock(v3 + 10);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = BSLogPowerMonitor();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = v10;
          _os_log_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_INFO, "Preparing to messaging power observer: %@", buf, 0xCu);
        }

        v12 = objc_autoreleasePoolPush();
        v4[2](v4, v10);
        objc_autoreleasePoolPop(v12);
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }
}

void _BSHandleSignificantTimeChange()
{
  v0 = +[BSDateTimeCache sharedInstance];
  [v0 _resetAndConfigure];
}

void sub_18FF53180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSDateTimeCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _BSHandleSignificantTimeChange_0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && v2[3])
  {
    [v2 fireAndSchedule];
  }
}

void sub_18FF53A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSRelativeDateTimer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF541BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_18FF544D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSBasicServerClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF551FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF5548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _BSXPCAuditTokensDescription()
{
  v0 = _bsxpc_auditTokens_desc(0);

  return v0;
}

uint64_t _bsxpc_auditTokens_desc(char a1)
{
  v16 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if ((a1 & 1) == 0)
  {
    os_unfair_lock_lock(&_MergedGlobals_21);
  }

  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"invalid=%@\ntokens={", qword_1ED44FE98];
  v3 = [(NSArray *)NSAllMapTableKeys(qword_1ED44FEA0) sortedArrayUsingComparator:&__block_literal_global_22];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 appendFormat:@"\n\t%10i -> %5i : %@", objc_msgSend(*(*(&v11 + 1) + 8 * v7), "pid"), NSMapGet(qword_1ED44FEA0, *(*(&v11 + 1) + 8 * v7)), *(*(&v11 + 1) + 8 * v7), context];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [v2 appendString:@"\n}"];
  if ((a1 & 1) == 0)
  {
    os_unfair_lock_unlock(&_MergedGlobals_21);
  }

  v8 = [v2 copy];
  objc_autoreleasePoolPop(context);
  return v8;
}

void BSStoreTokenToVar(void *a1, void **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"token must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138544130;
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreTokenToVar(BSAuditToken *, BSAuditToken **)"}];
      v10 = 2114;
      v11 = @"BSAuditTokenCaching.m";
      v12 = 1024;
      v13 = 143;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v8, 0x26u);
    }

    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF558E0);
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"var must not be nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138544130;
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSStoreTokenToVar(BSAuditToken *, BSAuditToken **)"}];
      v10 = 2114;
      v11 = @"BSAuditTokenCaching.m";
      v12 = 1024;
      v13 = 144;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v8, 0x26u);
    }

    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF55998);
  }

  if (qword_1ED44FEA8 != -1)
  {
    dispatch_once_f(&qword_1ED44FEA8, 0, _bsxpc_auditToken_init);
  }

  v4 = *a2;
  if ([a1 isInvalid])
  {
    if (v4 == qword_1ED44FE98)
    {
      return;
    }

    v5 = qword_1ED44FE98;
  }

  else
  {
    if (v4 == a1 || v4 && ([a1 isEqual:v4] & 1) != 0)
    {
      return;
    }

    v5 = a1;
  }

  _BSStoreNewRetainedTokenToVar(v5, a2);
}

uint64_t ___bsxpc_auditTokens_desc_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 pid];
  if (v5 != [a3 pid])
  {
    v8 = [a2 pid];
    v9 = v8 < [a3 pid];
    goto LABEL_6;
  }

  v6 = [a2 versionedPID];
  if (v6 != [a3 versionedPID])
  {
    v10 = [a2 versionedPID];
    v9 = v10 < [a3 versionedPID];
LABEL_6:
    v7 = v9;
    goto LABEL_9;
  }

  v7 = a2 < a3;
LABEL_9:
  if (v7)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_18FF55F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF57ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getCAMediaTimingFunctionClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CAMediaTimingFunction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCAMediaTimingFunctionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCAMediaTimingFunctionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSAnimationSettings.m" lineNumber:21 description:{@"Unable to find class %s", "CAMediaTimingFunction"}];

    __break(1u);
  }
}

void *QuartzCoreLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __QuartzCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72CB958;
    v6 = 0;
    QuartzCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = QuartzCoreLibraryCore_frameworkLibrary;
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuartzCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"BSAnimationSettings.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __QuartzCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuartzCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCAAnimationNonZeroSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCAAnimationNonZero");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAAnimationNonZeroSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCASpringAnimationClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CASpringAnimation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCASpringAnimationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCASpringAnimationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSAnimationSettings.m" lineNumber:22 description:{@"Unable to find class %s", "CASpringAnimation"}];

    __break(1u);
  }
}

void __getCATransactionClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CATransaction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCATransactionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATransactionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"BSAnimationSettings.m" lineNumber:23 description:{@"Unable to find class %s", "CATransaction"}];

    __break(1u);
  }
}

void *__getkCAMediaTimingFunctionLinearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCAMediaTimingFunctionLinear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAMediaTimingFunctionLinearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFRunLoopSourceRef BSCreateMIGServerSourceWithContext(uint64_t a1, int a2, CFIndex a3, uint64_t a4)
{
  pthread_once(&__BSMIGServerCalloutContextKeyOnce, makeCalloutContextKey);
  v8 = malloc_type_malloc(0x18uLL, 0x10A0040FC6C5850uLL);
  *v8 = a2;
  v8[1] = a1;
  v8[2] = a4;
  context.version = 1;
  context.info = v8;
  context.retain = 0;
  context.release = MEMORY[0x1E69E9B38];
  context.copyDescription = migHelperCopyDescription;
  context.equal = migHelperEqual;
  context.hash = migHelperHash;
  context.schedule = migHelperGetPort;
  context.cancel = migHelperRecievePortCallout;
  v9 = CFRunLoopSourceCreate(0, a3, &context);
  if (!v9)
  {
    free(v8);
  }

  return v9;
}

uint64_t migHelperRecievePortCallout(mach_msg_header_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  msgh_id = a1->msgh_id;
  v8 = *(v6 + 8);
  v9 = __OFSUB__(msgh_id, v8);
  v10 = msgh_id - v8;
  if (v10 < 0 != v9 || msgh_id >= *(v6 + 12))
  {
    v12 = 0;
  }

  else
  {
    v11 = v6 + 32;
    v12 = *(v11 + 40 * v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = *(v11 + 40 * v10 + 32);
      goto LABEL_7;
    }
  }

  v13 = 1;
  v14 = 36;
LABEL_7:
  v15 = malloc_type_malloc(v14, 0x10000408AA14F5FuLL);
  if (v15)
  {
    v16 = v15;
    msgh_remote_port = a1->msgh_remote_port;
    v15->msgh_bits = a1->msgh_bits & 0x1F;
    v15->msgh_size = 36;
    *&v15->msgh_remote_port = msgh_remote_port;
    v15->msgh_id = a1->msgh_id + 100;
    if (v13)
    {
      *&v15[1].msgh_bits = *MEMORY[0x1E69E99E0];
      v15[1].msgh_remote_port = -303;
    }

    else
    {
      v18 = *(a4 + 16);
      if (v18)
      {
        pthread_setspecific(__BSMIGServerCalloutContextKey, v18);
        v12(a1, v16);
        pthread_setspecific(__BSMIGServerCalloutContextKey, 0);
      }

      else
      {
        v12(a1, v15);
      }
    }

    msgh_bits = v16->msgh_bits;
    if ((v16->msgh_bits & 0x80000000) == 0)
    {
      v20 = v16[1].msgh_remote_port;
      if (v20 == -305)
      {
LABEL_31:
        free(v16);
        return 0;
      }

      if (v20 && (a1->msgh_bits & 0x80000000) != 0)
      {
        a1->msgh_remote_port = 0;
        mach_msg_destroy(a1);
        msgh_bits = v16->msgh_bits;
      }
    }

    if (v16->msgh_remote_port)
    {
      if ((msgh_bits & 0x1F) == 0x12)
      {
        v21 = 1;
      }

      else
      {
        v21 = 17;
      }

      v22 = mach_msg(v16, v21, v16->msgh_size, 0, 0, 0, 0);
      if ((v22 - 268435459) >= 2 && v22 != 0)
      {
        v24 = *MEMORY[0x1E69E9848];
        v25 = mach_error_string(v22);
        fprintf(v24, "<CFRunLoopSource MIG Server> mach_msg send error in reply: %s\n", v25);
        goto LABEL_31;
      }

      if ((v22 - 268435459) > 1)
      {
        goto LABEL_31;
      }

      msgh_bits = v16->msgh_bits;
    }

    if ((msgh_bits & 0x80000000) != 0)
    {
      mach_msg_destroy(v16);
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t BSGetMachPortForMIGServerSource(__CFRunLoopSource *a1)
{
  memset(&context.info, 0, 64);
  context.version = 1;
  CFRunLoopSourceGetContext(a1, &context);
  return *context.info;
}

__CFString *NSStringFromBSProcessExceptionCode(uint64_t a1)
{
  v1 = @"UserInitiatedQuit";
  if (a1 != 3735943697)
  {
    v1 = 0;
  }

  if (a1 == 3735883980)
  {
    v2 = @"ResourceExclusion";
  }

  else
  {
    v2 = v1;
  }

  v3 = @"ThermalPressure";
  if (a1 != 3221229823)
  {
    v3 = 0;
  }

  if (a1 == 2343432205)
  {
    v4 = @"WatchdogViolation";
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 3735883979)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = @"(none)";
  v7 = @"BlownAnimationFence";
  if (a1 != 1307235759)
  {
    v7 = 0;
  }

  if (a1 == 732775916)
  {
    v8 = @"SecurityViolation";
  }

  else
  {
    v8 = v7;
  }

  if (a1)
  {
    v6 = v8;
  }

  if (a1 <= 2343432204)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

id BSSystemRootDirectory()
{
  if (qword_1ED44FEB8 != -1)
  {
    dispatch_once(&qword_1ED44FEB8, &__block_literal_global_23);
  }

  v1 = _MergedGlobals_22;

  return v1;
}

void __BSSystemRootDirectory_block_invoke()
{
  v0 = CFStringCreateWithFileSystemRepresentation(0, "/");
  v1 = _MergedGlobals_22;
  _MergedGlobals_22 = v0;
}

id BSSystemSharedResourcesDirectoryForCurrentProcess()
{
  if (qword_1ED44FED8 != -1)
  {
    dispatch_once(&qword_1ED44FED8, &__block_literal_global_6_0);
  }

  v1 = qword_1ED44FED0;

  return v1;
}

id BSSystemSharedDirectoryForCurrentProcess()
{
  if (qword_1ED44FEC8 != -1)
  {
    dispatch_once(&qword_1ED44FEC8, &__block_literal_global_3_0);
  }

  v1 = qword_1ED44FEC0;

  return v1;
}

void __BSSystemSharedDirectoryForCurrentProcess_block_invoke()
{
  v2 = BSSystemSharedDirectoryForIdentifier(0);
  v0 = [v2 copy];
  v1 = qword_1ED44FEC0;
  qword_1ED44FEC0 = v0;
}

id BSSystemSharedDirectoryForIdentifier(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  v2 = container_system_path_for_identifier();
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
    free(v2);
  }

  else
  {
    v4 = 1;
    v5 = BSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = v1;
      if (!v1)
      {
        v4 = [MEMORY[0x1E696AAE8] mainBundle];
        v7 = [v4 bundleIdentifier];
      }

      *buf = 138543618;
      v9 = v7;
      v10 = 2048;
      v11 = 1;
      _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "Error getting shared system container for bundleID: %{public}@: %llu", buf, 0x16u);
      if (!v1)
      {
      }
    }

    v3 = 0;
  }

  return v3;
}

void __BSSystemSharedResourcesDirectoryForCurrentProcess_block_invoke()
{
  v2 = BSSystemSharedResourcesDirectoryForIdentifier(0);
  v0 = [v2 copy];
  v1 = qword_1ED44FED0;
  qword_1ED44FED0 = v0;
}

id BSSystemSharedResourcesDirectoryForIdentifier(void *a1)
{
  v1 = BSSystemSharedDirectoryForIdentifier(a1);
  v2 = [v1 stringByAppendingPathComponent:@"Library"];

  return v2;
}

id _BSSearchPathForDirectoryInDomain(NSSearchPathDirectory a1, NSSearchPathDomainMask a2)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v5 = 0;
  }

  else
  {
    v2 = a2;
    v3 = NSSearchPathForDirectoriesInDomains(a1, a2, 1);
    v4 = [v3 firstObject];

    if (v4)
    {
      if (v2)
      {
        BSCurrentUserDirectory();
      }

      else
      {
        BSSystemRootDirectory();
      }
      v6 = ;
      if ([v4 hasPrefix:v6])
      {
        v5 = v4;
      }

      else
      {
        v7 = [v6 stringByAppendingPathComponent:v4];
        v5 = [v7 stringByStandardizingPath];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

double BSModificationDateForPath(void *a1)
{
  v1 = a1;
  memset(&v4, 0, sizeof(v4));
  v2 = 0.0;
  if (!stat([v1 fileSystemRepresentation], &v4))
  {
    v2 = v4.st_mtimespec.tv_nsec / 1000000000.0 + v4.st_mtimespec.tv_sec + -978307200.0;
  }

  return v2;
}

BOOL BSEnsureDirectoryExistsAtPath(void *a1)
{
  v1 = a1;
  v2 = mkdir([v1 fileSystemRepresentation], 0x1FFu);
  if (!v2 || v2 == -1 && *__error() == 17)
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = 0;
    [v4 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
    v5 = v7;

    v3 = v5 == 0;
  }

  return v3;
}

void __BSPathExistsOnSystemPartition_block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = BSSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"System"];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0;
  v3 = [v2 attributesOfFileSystemForPath:v1 error:&v18];
  v4 = v18;
  v5 = *MEMORY[0x1E696A3C8];
  v6 = [v3 objectForKey:*MEMORY[0x1E696A3C8]];
  v7 = qword_1ED44FEF0;
  qword_1ED44FEF0 = v6;

  if (!qword_1ED44FEF0)
  {
    v8 = BSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [v4 descriptionWithMultilinePrefix:0];
      *buf = 138543362;
      v20 = v15;
      _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Unable to resolve system partition file system number: %{public}@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v10 = [v9 attributesOfFileSystemForPath:@"/private/preboot" error:&v17];
  v11 = v17;
  v12 = [v10 objectForKey:v5];
  v13 = qword_1ED44FEF8;
  qword_1ED44FEF8 = v12;

  if (!qword_1ED44FEF8)
  {
    v14 = BSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [v11 descriptionWithMultilinePrefix:0];
      *buf = 138543362;
      v20 = v16;
      _os_log_error_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_ERROR, "Unable to resolve preboot partition file system number: %{public}@", buf, 0xCu);
    }
  }
}

void sub_18FF5DA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSTimer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF5DDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18FF5E230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t BSXPCAutoCodingVerify(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = 0x1E695D000uLL;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"BSXPCAutoCoding" format:@"object does not respond to -membersForCoder"];
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  Superclass = objc_opt_class();
  if (Superclass)
  {
    v33 = a1;
    v5 = @"BSXPCAutoCoding";
    while (1)
    {
      if (Superclass == objc_opt_class())
      {
        goto LABEL_58;
      }

      v40 = 0;
      aClass = Superclass;
      if (BSObjCClassImplementsSelector(Superclass, sel_membersForCoder, &v40))
      {
        v6 = v40(v33, sel_membersForCoder);
        v7 = [v6 bs_set];
        v8 = [v6 count];
        if (v8 != [v7 count])
        {
          [*(v2 + 3888) raise:v5 format:{@"%@ returned multiple ivars with the same name", NSStringFromClass(aClass)}];
        }

        Ivars = BSXPCAutoCodingGetIvars(v33, aClass);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = Ivars;
        v10 = [Ivars countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v10)
        {
          break;
        }
      }

LABEL_57:
      Superclass = class_getSuperclass(aClass);
      if (!Superclass)
      {
        goto LABEL_58;
      }
    }

    v11 = v10;
    v12 = *v37;
LABEL_11:
    v13 = 0;
    while (1)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v36 + 1) + 8 * v13);
      if (v14)
      {
        v15 = *(v14 + 16);
      }

      else
      {
        v15 = 0;
      }

      if ([v3 containsObject:v15])
      {
        [*(v2 + 3888) raise:v5 format:{@"Already encoded an ivar named: %@", v15}];
      }

      if (!v14 || (v16 = *(v14 + 24)) == 0)
      {
        [*(v2 + 3888) raise:v5 format:{@"Ivar %@ is not supported", v15}];
        v16 = 0;
      }

      v17 = [v16 type];
      v18 = (v17 - 35);
      if (v18 > 0x30)
      {
        break;
      }

      if (((1 << (v17 - 35)) & 0x1424180000081) == 0)
      {
        if (v18 != 29)
        {
          break;
        }

        v19 = [v16 objectClass];
        v20 = [v16 objectContainedClasses];
        if (!v19 || v19 == objc_opt_class())
        {
          [*(v2 + 3888) raise:v5 format:{@"Ivar %@ must have a well-defined-but-not-NSObject class", v15}];
        }

        if (([v19 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v19, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v19, "isSubclassOfClass:", objc_opt_class()))
        {
          if ([v20 count] != 1)
          {
            [*(v2 + 3888) raise:v5 format:{@"Collection ivar %@ must be declared with a contained class using the special BSXPC protocol-based generics syntax (eg, NSArray<__NSString__> *_array;) or by explicitly defining the contained types in -membersForCoder", v15}];
          }

          v21 = v5;
          v22 = v2;
          v23 = [v20 firstObject];
          v29 = v23 == objc_opt_class();
          v2 = v22;
          v5 = v21;
          if (v29)
          {
            [*(v2 + 3888) raise:v21 format:{@"Collection ivar %@ must specifcy a well-defined-but-not-NSObject contained class", v15}];
          }
        }

        if ([v19 isSubclassOfClass:objc_opt_class()])
        {
          if ([v20 count] && objc_msgSend(v20, "count") != 2)
          {
            [*(v2 + 3888) raise:v5 format:{@"Dictionary ivar %@ specifies incorrect number of contained classes (must be zero or two)", v15}];
          }

          if ([v20 count] == 2)
          {
            v24 = [v20 firstObject];
            if (v24 != objc_opt_class())
            {
              [*(v2 + 3888) raise:v5 format:{@"Dictionary ivar %@ does not specify its keys as NSString", v15}];
            }

            v25 = [v20 lastObject];
            if (([v25 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v25, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v25, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v25, "isSubclassOfClass:", objc_opt_class()))
            {
              [*(v2 + 3888) raise:v5 format:{@"Dictionary ivar %@ must not specify a collection type as its value class", v15, v32}];
            }
          }
        }
      }

LABEL_51:
      [v3 addObject:v15];
      if (v11 == ++v13)
      {
        v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        v11 = v30;
        if (!v30)
        {
          goto LABEL_57;
        }

        goto LABEL_11;
      }
    }

    v26 = v17 - 99;
    v27 = v26 > 0x18;
    v28 = (1 << v26) & 0x101424B;
    v29 = v27 || v28 == 0;
    if (v29)
    {
      [*(v2 + 3888) raise:v5 format:{@"Unsupported type encoding (%@) for ivar %@", objc_msgSend(v16, "encoding"), v15}];
    }

    goto LABEL_51;
  }

LABEL_58:
  result = [v3 count];
  if (!result)
  {
    return [*(v2 + 3888) raise:@"BSXPCAutoCoding" format:{@"%@ encoded no ivars", NSStringFromClass(Superclass)}];
  }

  return result;
}

uint64_t BSXPCAutoCodingsDefault()
{
  if (qword_1ED44FF48 != -1)
  {
    dispatch_once(&qword_1ED44FF48, &__block_literal_global_137);
  }

  return qword_1ED44FF40;
}

void sub_18FF60BD8(_Unwind_Exception *a1)
{
  if (!v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_18FF60DF8(_Unwind_Exception *a1)
{
  if (!v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_18FF61420(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void BSPthreadCreate(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];

  v3 = 0;
  if (pthread_create(&v3, 0, BSStartPthread, v2) && v2)
  {
    v2[2](v2, 0);
  }
}

uint64_t BSStartPthread()
{
  v0 = MEMORY[0x193AE5AC0]();
  if (v0)
  {
    v1 = pthread_self();
    (v0)[2](v0, v1);
  }

  return 0;
}

void BSPthreadFixPriority(_opaque_pthread_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  policy_info = 0;
  v1 = pthread_mach_thread_np(a1);
  thread_policy_set(v1, 1u, &policy_info, 1u);
  v2 = proc_setthread_cpupercent();
  if (v2)
  {
    v3 = v2;
    v4 = BSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "BSPthreadFixPriority";
      v8 = 1024;
      v9 = v3;
      _os_log_error_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_ERROR, "%s Error %d setting thread CPU percent", buf, 0x12u);
    }
  }
}

void BSPthreadSetFixedPriority(_opaque_pthread_t *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0;
  pthread_getschedparam(a1, &v8, &v7);
  v7.sched_priority = a2;
  v4 = pthread_setschedparam(a1, v8, &v7);
  if (v4)
  {
    v5 = BSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = BSPthreadGetName(a1);
      *buf = 136315906;
      v10 = "BSPthreadSetFixedPriority";
      v11 = 1024;
      v12 = v4;
      v13 = 1024;
      v14 = a2;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "%s Error %d setting priority %d for thread: %{public}@", buf, 0x22u);
    }
  }

  BSPthreadFixPriority(a1);
}

id BSPthreadGetName(_opaque_pthread_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  pthread_getname_np(a1, v3, 0x80uLL);
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];

  return v1;
}

void BSPthreadAttrSetFixedPriority(pthread_attr_t *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = 0;
  pthread_attr_getschedparam(a1, &v7);
  v7.sched_priority = a2;
  v4 = pthread_attr_setschedparam(a1, &v7);
  if (v4)
  {
    v5 = v4;
    v6 = BSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "BSPthreadAttrSetFixedPriority";
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = a2;
      v14 = 2048;
      v15 = a1;
      _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "%s Error %d setting priority %d for attributes: %p", buf, 0x22u);
    }
  }
}

uint64_t BSPthreadGetCurrentPriority()
{
  v0 = pthread_self();
  v3 = 0;
  v2 = 0;
  pthread_getschedparam(v0, &v2, &v3);
  return v3.sched_priority;
}

uint64_t BSPthreadGetPriority(_opaque_pthread_t *a1)
{
  v3 = 0;
  v2 = 0;
  pthread_getschedparam(a1, &v2, &v3);
  return v3.sched_priority;
}

void BSPthreadSetName(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (!pthread_main_np() && pthread_setname_np([v2 UTF8String]))
  {
    v3 = BSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "BSPthreadSetName";
      v6 = 2114;
      v7 = v2;
      _os_log_error_impl(&dword_18FEF6000, v3, OS_LOG_TYPE_ERROR, "%s Unable to set pthread name: %{public}@", &v4, 0x16u);
    }
  }
}

void BSSetMainThreadPriorityFixedForUI(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!pthread_main_np())
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 136315138;
    v7 = "void BSSetMainThreadPriorityFixedForUI(BOOL)";
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%s: BUG: Non-main thread asking to set priority";
    goto LABEL_15;
  }

  if (!a1)
  {
    if (!pthread_set_timeshare_self() || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 136315138;
    v7 = "void BSSetMainThreadPriorityFixedForUI(BOOL)";
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%s: pthread_set_timeshare_self: failed to set thread scheduling to timeshare";
LABEL_15:
    v5 = 12;
    goto LABEL_16;
  }

  if (pthread_set_fixedpriority_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "void BSSetMainThreadPriorityFixedForUI(BOOL)";
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: pthread_set_fixedpriority_self: failed to set thread priority to fixed", &v6, 0xCu);
  }

  if (proc_setthread_cpupercent() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    v6 = 136315394;
    v7 = "void BSSetMainThreadPriorityFixedForUI(BOOL)";
    v8 = 1024;
    v9 = v2;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "%s: proc_setthread_cpupercent: errno %{darwin.errno}d";
    v5 = 18;
LABEL_16:
    _os_log_error_impl(&dword_18FEF6000, v3, OS_LOG_TYPE_ERROR, v4, &v6, v5);
  }
}

void __BSBlockSentinelFireFailureHandler_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[BSBlockSentinelSignalContext failureContext];
  (*(v1 + 16))(v1);
}

__CFString *BSOrientationRotationDirectionDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E72CBAF0[a1];
  }

  return v2;
}

void *_BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

void sub_18FF65DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v11 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v12 - 88));
  _Unwind_Resume(a1);
}

double BSDispatchTimerTimeRemainingForFireTimeWithRepeat(dispatch_time_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 == -1)
  {
    return INFINITY;
  }

  if (!dispatch_time_to_nsec())
  {
    v9 = BSLogTimer();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
LABEL_14:

      return 0.0;
    }

    *buf = 134217984;
    v15 = a1;
    v10 = "fireTime couldn't be decomposed to nanoseconds : orig=%llu";
    v11 = v9;
    v12 = 12;
LABEL_21:
    _os_log_debug_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
    goto LABEL_14;
  }

  if (!dispatch_time_to_nsec())
  {
    v9 = BSLogTimer();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    *buf = 134218240;
    v15 = a1;
    v16 = 2048;
    v17 = 0;
    v10 = "next fireTime couldn't be decomposed to nanoseconds : orig=%llu now=%llu";
    v11 = v9;
    v12 = 22;
    goto LABEL_21;
  }

  if (a2)
  {
    if (a3 < 1)
    {
      return 0.0;
    }

    if ((a3 * a2) <= 0x7FFFFFFFFFFFFFFELL)
    {
      v6 = dispatch_time(a1, a3 * a2);
      if (v6 != -1)
      {
        v7 = v6;
        if (dispatch_time_to_nsec())
        {
          return 0.0;
        }

        v13 = BSLogTimer();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219008;
          v15 = a1;
          v16 = 2048;
          v17 = 0;
          v18 = 2048;
          v19 = a2;
          v20 = 2048;
          v21 = a3;
          v22 = 2048;
          v23 = v7;
          _os_log_debug_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_DEBUG, "next fireTime couldn't be decomposed to nanoseconds : orig=%llu now=%lluns repeat=%llux%lluns next=%llu", buf, 0x34u);
        }

        return 0.0;
      }
    }

    return INFINITY;
  }

  return 0.0;
}

void _wrapRunLoopWithAutoreleasePoolHandler(int a1, uint64_t a2, CFArrayRef theArray)
{
  if (a2 == 1)
  {
    goto LABEL_6;
  }

  if (a2 == 128 || a2 == 32)
  {
    Count = CFArrayGetCount(theArray);
    if (Count <= 0)
    {
      __assert_rtn("_wrapRunLoopWithAutoreleasePoolHandler", "BSMIGServer.m", 33, "count > 0");
    }

    v6 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1);
    MEMORY[0x193AE4C50](ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v6);
    if (a2 == 32)
    {
LABEL_6:
      v8 = MEMORY[0x193AE4C70](0);

      CFArrayAppendValue(theArray, v8);
    }
  }
}

uint64_t __BSDescribeAppendObjectDescription_block_invoke_2(uint64_t a1, __CFString *a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 1104);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_31;
      }

      v7 = (v4 + 1040);
      v8 = *(v4 + 1040);
      v9 = (v4 + 16);
      if (v8 <= 1022)
      {
        v9[v8] = 32;
        v10 = 1;
        goto LABEL_24;
      }

      v9[v8] = 0;
      CFStringAppendCString(*(v4 + 1064), v9, 0x8000100u);
      v13 = (v4 + 1064);
      v14 = " ";
LABEL_29:
      *v7 = 0;
      CFStringAppendCString(*v13, v14, 0x8000100u);
      goto LABEL_30;
    }

    v7 = (v4 + 1040);
    v11 = *(v4 + 1040);
    v12 = (v4 + 16);
    if (*(*(v4 + 8) + 24) != 3)
    {
      if (v11 <= 1021)
      {
        *&v12[v11] = 8251;
        v10 = 2;
        goto LABEL_24;
      }

      v12[v11] = 0;
      CFStringAppendCString(*(v4 + 1064), v12, 0x8000100u);
      v13 = (v4 + 1064);
      v14 = "; ";
      goto LABEL_29;
    }

    if (v11 > 1022)
    {
      v12[v11] = 0;
      CFStringAppendCString(*(v4 + 1064), v12, 0x8000100u);
      *(v4 + 1040) = 0;
      CFStringAppendCString(*(v4 + 1064), ";", 0x8000100u);
    }

    else
    {
      v12[v11] = 59;
      ++*v7;
    }

    goto LABEL_16;
  }

  if (v6 == 3)
  {
LABEL_16:
    v15 = *(v4 + 1040);
    v16 = (v4 + 16);
    if (v15 > 1022)
    {
      v16[v15] = 0;
      CFStringAppendCString(*(v4 + 1064), v16, 0x8000100u);
      *(v4 + 1040) = 0;
      CFStringAppendCString(*(v4 + 1064), "\n", 0x8000100u);
    }

    else
    {
      v16[v15] = 10;
      ++*(v4 + 1040);
    }

    goto LABEL_19;
  }

  if (v6 == 4)
  {
LABEL_19:
    v17 = *(v4 + 1072);
    if (v17 < 1)
    {
LABEL_30:
      *(v4 + 1104) = 0;
      goto LABEL_31;
    }

    if (v17 >= 8)
    {
      v17 = 8;
    }

    v18 = *(&sIndentSpaceStrings + v17);
    v19 = strlen(v18);
    v7 = (v4 + 1040);
    v20 = *(v4 + 1040);
    if ((v20 + v19) > 1023)
    {
      if (v20 >= 1)
      {
        *(v4 + 16 + v20) = 0;
        CFStringAppendCString(*(v4 + 1064), (v4 + 16), 0x8000100u);
        *v7 = 0;
      }

      CFStringAppendCString(*(v4 + 1064), v18, 0x8000100u);
      goto LABEL_30;
    }

    v10 = v19;
    memcpy((v4 + v20 + 16), v18, v19);
LABEL_24:
    *v7 += v10;
    goto LABEL_30;
  }

LABEL_31:
  v21 = v5[8];
  v22 = v5[9];
  if (v21 < 2 || v22 < 1)
  {
    v22 = 0;
    v24 = 1096;
  }

  else
  {
    *(v4 + 1096) = v21;
    *(v4 + 1080) = *(v4 + 1040) + [*(v4 + 1064) length];
    v24 = 1088;
  }

  *(v4 + v24) = v22;

  v25 = *(a1 + 32);
  if (a2)
  {
    if (_NSIsNSString())
    {
      v26 = [(__CFString *)a2 length];
      v27 = *(v25 + 1040);
      if (3 * v26 + v27 > 1023)
      {
        if (v27 >= 1)
        {
          *(v25 + 16 + v27) = 0;
          CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
          *(v25 + 1040) = 0;
        }

        if (v26 > 341)
        {
          [*(v25 + 1064) appendString:a2];
          goto LABEL_117;
        }

        usedBufLen = 0;
        v67.location = 0;
        v67.length = v26;
        CFStringGetBytes(a2, v67, 0x8000100u, 0, 0, (v25 + 16), 1024, &usedBufLen);
        v28 = usedBufLen;
      }

      else
      {
        usedBufLen = 0;
        v66.location = 0;
        v66.length = v26;
        CFStringGetBytes(a2, v66, 0x8000100u, 0, 0, (v25 + v27 + 16), 1024 - v27, &usedBufLen);
        v28 = *(v25 + 1040) + usedBufLen;
      }

      goto LABEL_57;
    }

    if (_NSIsNSNumber())
    {
      v31 = a2;
      v32 = *[(__CFString *)v31 objCType];
      if (v32 <= 0x62)
      {
        if (v32 > 75)
        {
          switch(v32)
          {
            case 'L':
              v49 = *(v25 + 1040);
              if (v49 >= 1)
              {
                *(v25 + 16 + v49) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 unsignedLongValue];
              v36 = @"%lu";
              goto LABEL_115;
            case 'Q':
              v51 = *(v25 + 1040);
              if (v51 >= 1)
              {
                *(v25 + 16 + v51) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 unsignedLongLongValue];
              v36 = @"%llu";
              goto LABEL_115;
            case 'S':
              v43 = *(v25 + 1040);
              if (v43 >= 1)
              {
                *(v25 + 16 + v43) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 unsignedShortValue];
              v36 = @"%hu";
              goto LABEL_115;
          }

          goto LABEL_118;
        }

        if (v32 != 66)
        {
          if (v32 == 67)
          {
            v50 = *(v25 + 1040);
            if (v50 >= 1)
            {
              *(v25 + 16 + v50) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v34 = *(v25 + 1064);
            v35 = [(__CFString *)v31 unsignedCharValue];
          }

          else
          {
            if (v32 != 73)
            {
              goto LABEL_118;
            }

            v37 = *(v25 + 1040);
            if (v37 >= 1)
            {
              *(v25 + 16 + v37) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v34 = *(v25 + 1064);
            v35 = [(__CFString *)v31 unsignedIntValue];
          }

          v36 = @"%u";
LABEL_115:
          [v34 appendFormat:v36, v35];
          goto LABEL_116;
        }
      }

      else
      {
        if (v32 > 104)
        {
          if (v32 > 112)
          {
            if (v32 == 113)
            {
              v47 = *(v25 + 1040);
              if (v47 >= 1)
              {
                *(v25 + 16 + v47) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 longLongValue];
              v36 = @"%lld";
              goto LABEL_115;
            }

            if (v32 == 115)
            {
              v44 = *(v25 + 1040);
              if (v44 >= 1)
              {
                *(v25 + 16 + v44) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 shortValue];
              v36 = @"%hi";
              goto LABEL_115;
            }

            goto LABEL_118;
          }

          if (v32 != 105)
          {
            if (v32 == 108)
            {
              v33 = *(v25 + 1040);
              if (v33 >= 1)
              {
                *(v25 + 16 + v33) = 0;
                CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
                *(v25 + 1040) = 0;
              }

              v34 = *(v25 + 1064);
              v35 = [(__CFString *)v31 longValue];
              v36 = @"%ld";
              goto LABEL_115;
            }

LABEL_118:
            v54 = *(v25 + 1040);
            if (v54 >= 1)
            {
              *(v25 + 16 + v54) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            [*(v25 + 1064) appendFormat:@"<***unknown type:%s>", -[__CFString objCType](v31, "objCType")];
            goto LABEL_116;
          }

          v46 = *(v25 + 1040);
          if (v46 >= 1)
          {
            *(v25 + 16 + v46) = 0;
            CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
            *(v25 + 1040) = 0;
          }

          v34 = *(v25 + 1064);
          v35 = [(__CFString *)v31 intValue];
          goto LABEL_97;
        }

        if (v32 != 99)
        {
          if (v32 == 100)
          {
            v48 = *(v25 + 1040);
            if (v48 >= 1)
            {
              *(v25 + 16 + v48) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v39 = *(v25 + 1064);
            [(__CFString *)v31 doubleValue];
            v42 = @"%0.16g";
          }

          else
          {
            if (v32 != 102)
            {
              goto LABEL_118;
            }

            v38 = *(v25 + 1040);
            if (v38 >= 1)
            {
              *(v25 + 16 + v38) = 0;
              CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
              *(v25 + 1040) = 0;
            }

            v39 = *(v25 + 1064);
            [(__CFString *)v31 floatValue];
            v41 = v40;
            v42 = @"%0.7g";
          }

          [v39 appendFormat:v42, *&v41];
LABEL_116:

          goto LABEL_117;
        }
      }

      v45 = *(v25 + 1040);
      if (v45 >= 1)
      {
        *(v25 + 16 + v45) = 0;
        CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
        *(v25 + 1040) = 0;
      }

      v34 = *(v25 + 1064);
      v35 = [(__CFString *)v31 charValue];
LABEL_97:
      v36 = @"%d";
      goto LABEL_115;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a2 appendDescriptionToStream:v25];
      goto LABEL_117;
    }

    if (objc_opt_respondsToSelector())
    {
      [(__CFString *)a2 appendDescriptionToFormatter:v25];
      goto LABEL_117;
    }

    if (_NSIsNSDictionary())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __BSDescribeAppendObjectDescription_block_invoke;
      v64 = &unk_1E72CBE40;
      v65 = v25;
      [(BSDescriptionStream *)v25 _appendDictionary:a2 withName:0 itemBlock:&usedBufLen];
      goto LABEL_117;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 appendIntegerSet:a2 withName:0 format:0];
      goto LABEL_117;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __BSDescribeAppendObjectDescription_block_invoke_2;
      v64 = &unk_1E72CBE68;
      v65 = v25;
      [v25 appendIntegerMap:a2 withName:0 keyFormat:0 valueBlock:&usedBufLen];
      goto LABEL_117;
    }

    if (objc_opt_respondsToSelector())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __BSDescribeAppendObjectDescription_block_invoke_3;
      v64 = &unk_1E72CBE68;
      v65 = v25;
      [v25 appendCollection:a2 withName:0 itemBlock:&usedBufLen];
      goto LABEL_117;
    }

    if ((*(v25 + 1056) & 1) != 0 || (v55 = *(v25 + 8), *(v55 + 8) == 2))
    {
      if (objc_opt_respondsToSelector())
      {
        v56 = [(__CFString *)a2 succinctDescription];
        goto LABEL_134;
      }

      v55 = *(v25 + 8);
    }

    if (*(v55 + 16) == 2)
    {
      [(__CFString *)a2 debugDescription];
    }

    else
    {
      [(__CFString *)a2 description];
    }
    v56 = ;
LABEL_134:
    v57 = v56;
    v58 = [(__CFString *)v56 length];
    v59 = *(v25 + 1040);
    if (v59 + 3 * v58 > 1023)
    {
      if (v59 >= 1)
      {
        *(v25 + 16 + v59) = 0;
        CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
        *(v25 + 1040) = 0;
      }

      if (v58 > 341)
      {
        [*(v25 + 1064) appendString:v57];
        goto LABEL_142;
      }

      usedBufLen = 0;
      v69.location = 0;
      v69.length = v58;
      CFStringGetBytes(v57, v69, 0x8000100u, 0, 0, (v25 + 16), 1024, &usedBufLen);
      v60 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v68.location = 0;
      v68.length = v58;
      CFStringGetBytes(v57, v68, 0x8000100u, 0, 0, (v25 + v59 + 16), 1024 - v59, &usedBufLen);
      v60 = *(v25 + 1040) + usedBufLen;
    }

    *(v25 + 1040) = v60;
LABEL_142:

    goto LABEL_117;
  }

  v29 = *(v25 + 1040);
  v30 = v25 + 16 + v29;
  if (v29 <= 1018)
  {
    *(v30 + 4) = 62;
    *v30 = 1818848828;
    v28 = *(v25 + 1040) + 5;
LABEL_57:
    *(v25 + 1040) = v28;
    goto LABEL_117;
  }

  *v30 = 0;
  CFStringAppendCString(*(v25 + 1064), (v25 + 16), 0x8000100u);
  *(v25 + 1040) = 0;
  CFStringAppendCString(*(v25 + 1064), "<nil>", 0x8000100u);
LABEL_117:
  v52 = *(a1 + 32);
  *(v52 + 1104) = 1;
  return BSDescribeTruncationCommit(v52);
}

__CFString *NSStringFromBSDiagnosticReportType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E72CBEA0[a1];
  }
}

void BSProcessGenerateDiagnosticReport(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  LODWORD(v5) = a2;
  v7 = a4;
  v8 = v7;
  if (v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  if (a1 == 2)
  {
    v12 = v7;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v13 = off_1ED44FFA8;
    v20 = off_1ED44FFA8;
    if (!off_1ED44FFA8)
    {
      v14 = OSAnalyticsLibrary();
      v18[3] = dlsym(v14, "WriteStackshotReportWithPID");
      off_1ED44FFA8 = v18[3];
      v13 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (v13)
    {
      v13(v12, a3, v5);
      goto LABEL_14;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL softlinkWriteStackshotReportWithPID(NSString *__strong, mach_exception_data_type_t, pid_t)"}];
    [v15 handleFailureInFunction:v16 file:@"BSProcessDiagnosticReporting.m" lineNumber:16 description:{@"%s", dlerror()}];
  }

  else
  {
    if (a1 != 1)
    {
LABEL_15:

      return;
    }

    v9 = v7;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v10 = _MergedGlobals_29;
    v20 = _MergedGlobals_29;
    if (!_MergedGlobals_29)
    {
      v11 = OSAnalyticsLibrary();
      v18[3] = dlsym(v11, "SimulateCrash");
      _MergedGlobals_29 = v18[3];
      v10 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (v10)
    {
      v10(v5, a3, v9);
LABEL_14:

      goto LABEL_15;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL softlinkSimulateCrash(pid_t, mach_exception_data_type_t, NSString *__strong)"}];
    [v15 handleFailureInFunction:v16 file:@"BSProcessDiagnosticReporting.m" lineNumber:15 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

void sub_18FF78244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *__getSimulateCrashSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OSAnalyticsLibrary();
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_29 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *OSAnalyticsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!OSAnalyticsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __OSAnalyticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72CBE88;
    v6 = 0;
    OSAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = OSAnalyticsLibraryCore_frameworkLibrary;
  if (!OSAnalyticsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *OSAnalyticsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"BSProcessDiagnosticReporting.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __OSAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OSAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWriteStackshotReportWithPIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OSAnalyticsLibrary();
  result = dlsym(v2, "WriteStackshotReportWithPID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED44FFA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18FF78D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose((v42 - 160), 8);
  _Block_object_dispose((v42 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_18FF79480(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18FF79740(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_18FF79DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v26 = v23;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBSDescriptionCollectionLineBreak(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC098[a1];
  }

  return v2;
}

__CFString *NSStringFromBSDescriptionVerbosity(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC0B8[a1];
  }

  return v2;
}

__CFString *NSStringFromBSDescriptionKeyValuePairSorting(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC0D0[a1];
  }

  return v2;
}

__CFString *NSStringFromBSDescriptionCollectionTruncationStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC0E8[a1];
  }

  return v2;
}

__CFString *NSStringFromBSDescriptionLineTruncation(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC100[a1];
  }

  return v2;
}

__CFString *NSStringFromBSDescriptionDebugging(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC128[a1];
  }

  return v2;
}

__CFString *NSStringFromBSDescriptionItemSeparator(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E72CC140[a1];
  }

  return v2;
}

id _BSDefaultCollectionLineBreakStyle()
{
  if (qword_1ED44FFE8 != -1)
  {
    dispatch_once(&qword_1ED44FFE8, &__block_literal_global_52);
  }

  v1 = qword_1ED44FFE0;

  return v1;
}

id _BSCreateObjectOfClassFromData(objc_class *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 length];
    v5 = 0;
    if (a1 && v4)
    {
      v6 = objc_autoreleasePoolPush();
      v16 = 0;
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:v3 error:&v16];
      v8 = v16;
      if (v8)
      {
        v9 = BSLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v12 = NSStringFromClass(a1);
          *buf = 138543618;
          v18 = v12;
          v19 = 2114;
          v20 = v8;
          _os_log_error_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_ERROR, "Error during decoding of data to type=%{public}@: %{public}@", buf, 0x16u);
        }
      }

      if (v7)
      {
        if (objc_opt_isKindOfClass())
        {
          v5 = v7;
LABEL_17:

          objc_autoreleasePoolPop(v6);
          goto LABEL_18;
        }

        if (!v8)
        {
          v10 = BSLogCommon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v13 = NSStringFromClass(a1);
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            *buf = 138543618;
            v18 = v13;
            v19 = 2114;
            v20 = v15;
            _os_log_error_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_ERROR, "Error during decoding of data to type=%{public}@: decoded %{public}@ instead but unarchiver didn't filter it", buf, 0x16u);
          }
        }
      }

      v5 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_18:

  return v5;
}

id BSSecureDecodeOfTypes(void *a1, void *a2)
{
  v2 = _BSCreateObjectOfClassesFromData(a2, a1);

  return v2;
}

uint64_t BSCompareFloats(double a1, double a2)
{
  v2 = vabdd_f64(a1, a2);
  v3 = v2 < 2.22044605e-16 || a1 <= a2;
  v4 = 1;
  if (v3)
  {
    v4 = -1;
  }

  if (v2 >= 2.22044605e-16)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t BSCompareSizes(double a1, double a2, double a3, double a4)
{
  v4 = vabdd_f64(a1, a3);
  v5 = vabdd_f64(a2, a4);
  v6 = a2 < a4 && a1 < a3;
  v7 = -1;
  if (!v6)
  {
    v7 = 1;
  }

  if (v5 < 2.22044605e-16 && v4 < 2.22044605e-16)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t BSCompareIntegers(uint64_t a1, uint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t BSCompareBuildVersions(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v8 = [v5 rangeOfCharacterFromSet:v7];
  v10 = v9;

  v11 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v12 = [v6 rangeOfCharacterFromSet:v11];
  v14 = v13;

  v15 = [v5 substringToIndex:v8];
  v16 = [v6 substringToIndex:v12];
  v17 = [v15 integerValue];
  v18 = [v16 integerValue];
  if (v17 < v18)
  {
    v19 = -1;
  }

  else
  {
    v19 = v17 > v18;
  }

  if (!v19)
  {
    if ((a3 - 1) > 1)
    {
      v19 = 0;
    }

    else
    {
      v27 = [v5 substringWithRange:{v8, v10}];
      v26 = [v6 substringWithRange:{v12, v14}];
      v20 = [v27 localizedCaseInsensitiveCompare:?];
      v19 = v20;
      if (a3 == 2 && !v20)
      {
        v21 = [v5 substringFromIndex:v8 + v10];
        v22 = [v21 integerValue];
        v23 = [v6 substringFromIndex:v12 + v14];
        v24 = [v23 integerValue];
        if (v22 < v24)
        {
          v19 = -1;
        }

        else
        {
          v19 = v22 > v24;
        }
      }
    }
  }

  return v19;
}

__n128 BSIntegralTransform@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = vrndaq_f64(a1[1]);
  *a1 = vrndaq_f64(*a1);
  a1[1] = v2;
  v3 = a1[1];
  a1[2] = vrndaq_f64(a1[2]);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = a1[2];
  *(a2 + 32) = result;
  return result;
}

double BSRectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double _BSRectTransformByTransformingCorners(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v12[0] = a2;
  v12[1] = a3;
  v13 = a2;
  v14 = a3 + a5;
  v15 = a2 + a4;
  v16 = a3 + a5;
  v17 = a2 + a4;
  v18 = a3;
  do
  {
    v7 = &v12[v6];
    *v7 = (*(a1 + 16))(a1, v12[v6], v12[v6 + 1]);
    *(v7 + 1) = v8;
    v6 += 2;
  }

  while (v6 != 8);
  if (v15 >= v17)
  {
    v9 = v17;
  }

  else
  {
    v9 = v15;
  }

  if (v12[0] >= v13)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12[0];
  }

  if (v10 >= v9)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

double BSConvertPointFromOrientationToOrientation(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6)
{
  if (a1 != a2)
  {
    v6 = a5 - result;
    v7 = a6 - a4;
    v8 = a5 - a4;
    if (a1 == 4)
    {
      v9 = a4;
    }

    else
    {
      v9 = result;
    }

    if (a1 == 4)
    {
      a4 = a6 - result;
    }

    if (a1 != 3)
    {
      v8 = v9;
      result = a4;
    }

    if (a1 == 2)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    if (a1 == 2)
    {
      v11 = v7;
    }

    else
    {
      v11 = result;
    }

    switch(a2)
    {
      case 2:
        return a5 - v10;
      case 3:
        return v11;
      case 4:
        return a6 - v11;
      default:
        return v10;
    }
  }

  return result;
}

double BSConvertRectFromOrientationToOrientation(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a2)
  {
    v10[8] = v8;
    v10[9] = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __BSConvertRectFromOrientationToOrientation_block_invoke;
    v10[3] = &__block_descriptor_64_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v10[4] = a7;
    *&v10[5] = a8;
    v10[6] = a1;
    v10[7] = a2;
    return _BSRectTransformByTransformingCorners(v10, result, a4, a5, a6);
  }

  return result;
}

id BSValueWithAffineTransform(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = a1[2];
  v2 = [MEMORY[0x1E696B098] bs_valueWithCGAffineTransform:v4];

  return v2;
}

void BSAffineTransformFromValue(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 bs_CGAffineTransformValue];
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

CFTypeRef BSCopyDeviceTreeProperty(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, 0, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t BSGetDeviceType()
{
  if (BSGetDeviceType_onceToken != -1)
  {
    dispatch_once(&BSGetDeviceType_onceToken, &__block_literal_global_33);
  }

  return BSGetDeviceType___DeviceType;
}

void __BSGetDeviceType_block_invoke()
{
  v0 = BSCopyDeviceTreeProperty("IODeviceTree:/", @"model");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      v3 = *MEMORY[0x1E695E480];
      BytePtr = CFDataGetBytePtr(v1);
      Length = CFDataGetLength(v1);
      v6 = CFStringCreateWithBytes(v3, BytePtr, Length, 0x8000100u, 0);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (!CFStringHasPrefix(v7, __DeviceTypePrefixes[v8]))
        {
          if (++v8 == 4)
          {
            goto LABEL_10;
          }
        }

        BSGetDeviceType___DeviceType = v8;
LABEL_10:
        CFRelease(v7);
      }
    }

    CFRelease(v1);
  }
}

id BSLogStateCaptureEncodePlist(void *a1, int a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (qword_1ED450078 == -1)
  {
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&qword_1ED450078, &__block_literal_global_100);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (a2 && [v6 isNSString])
  {
    v7 = v6;
    v8 = [v7 lengthOfBytesUsingEncoding:1];
    if (v8)
    {
      v9 = v7;
      if (v8 > qword_1ED450070)
      {
        v9 = [v7 substringToIndex:?];
      }
    }

    else
    {
      v10 = [v7 maximumLengthOfBytesUsingEncoding:10];
      v9 = v7;
      if (v10 > qword_1ED450070)
      {
        v11 = [v7 lengthOfBytesUsingEncoding:10];
        v9 = v7;
        while (v11 > qword_1ED450070)
        {
          v12 = [v9 substringToIndex:{objc_msgSend(v7, "length") - ((v11 - qword_1ED450070 + 1) >> 1)}];

          v9 = v12;
          v11 = [v12 lengthOfBytesUsingEncoding:10];
        }
      }
    }

    v6 = v9;
  }

LABEL_13:
  v22 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:&v22];
  v14 = v22;
  if (v13)
  {
    if ([v13 length] < 0x7F39)
    {
      v17 = v14;
      if (!a3)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v15 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A588];
    v24[0] = @"Encoded state data is larger than 32KB";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = [v15 errorWithDomain:@"BSSharedStateCapturing" code:2 userInfo:v16];

    v14 = v16;
    v18 = v13;
  }

  else
  {
    v19 = [MEMORY[0x1E695DF90] dictionaryWithObject:@"Input generated no data" forKey:*MEMORY[0x1E696A588]];
    v18 = v19;
    if (v14)
    {
      [v19 setObject:v14 forKey:*MEMORY[0x1E696AA08]];
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BSSharedStateCapturing" code:1 userInfo:v18];
  }

  v13 = 0;
  if (a3)
  {
LABEL_22:
    v20 = v17;
    *a3 = v17;
  }

LABEL_23:

  return v13;
}

BOOL BSLogStateCaptureCheckPlistSizeIsPermitted(void *a1)
{
  v3 = 0;
  v1 = BSLogStateCaptureEncodePlist(a1, 0, &v3);
  return v3 == 0;
}

void __BSLogStateCaptureEncodePlist_block_invoke()
{
  v0 = [MEMORY[0x1E696AE40] dataWithPropertyList:&stru_1F03A1A98 format:200 options:0 error:0];
  v1 = [v0 length];

  qword_1ED450070 = 32552 - v1;
}

id BSLogGetAllRegisteredStateCaptureBlocks()
{
  os_unfair_lock_lock(&_MergedGlobals_33);
  v0 = [qword_1ED450058 allValues];
  os_unfair_lock_unlock(&_MergedGlobals_33);

  return v0;
}

void sub_18FF81F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF82DDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF830F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18FF83990(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF84FBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF8514C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF8570C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18FF858A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __BSAuditHistoryItemClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  v3 = _MergedGlobals_34;
  _MergedGlobals_34 = v2;
}

uint64_t _BSProtobufDecodeRepeatFieldString(uint64_t a1, uint64_t a2, id *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v3 = objc_alloc_init(*(a2 + 40));
    *a3 = v3;
  }

  v5 = PBReaderReadString();
  if (v5)
  {
    v6 = v5;
    [v3 addObject:v5];
  }

  return 1;
}

void sub_18FF88C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_18FF892F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSDateFormatterCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18FF8A8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_18FF8B4D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18FF8B5A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18FF8B62C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18FF8C0E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18FF8C1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18FF8C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18FF900E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t BSSettingFlagIfYes(int a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void sub_18FF96438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_18FF977A8(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_18FF98B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

BOOL BSAtomicGetFlag(atomic_uint *a1)
{
  if (!a1)
  {
    __assert_rtn("BSAtomicGetFlag", "BSAtomicUtilities.m", 16, "value && (sizeof(int32_t) == sizeof(*value))");
  }

  v1 = 1;
  atomic_compare_exchange_strong_explicit(a1, &v1, v1, memory_order_relaxed, memory_order_relaxed);
  return v1 == 1;
}

uint64_t BSPIDIsExiting(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  v1 = _BSShortBSDProcessInfoForPID(a1, v3);
  return *&v1 & ((v4 & 4) >> 2);
}

uint64_t BSPIDIsExtension()
{
  v0 = launch_copy_properties_for_pid_4assertiond();
  v1 = v0;
  if (v0)
  {
    LODWORD(v2) = xpc_dictionary_get_BOOL(v0, *MEMORY[0x1E69E9F40]);
    if (xpc_dictionary_get_string(v1, *MEMORY[0x1E69E9F30]))
    {
      v2 = v2;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id BSProcessDescriptionForAuditToken(uint64_t a1)
{
  v1 = BSPIDForAuditToken(a1);

  return BSProcessDescriptionForPID(v1);
}

void _BSMachError(int a1, mach_error_t a2, void *a3)
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BSLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a1)
  {
    if (v7)
    {
      v11 = 136447234;
      v12 = "_BSMachError";
      v13 = 1024;
      *v14 = a1;
      *&v14[4] = 2082;
      *&v14[6] = mach_error_string(a2);
      v15 = 1024;
      *v16 = a2;
      v16[2] = 2114;
      *&v16[3] = v5;
      v8 = "%{public}s: port %x; %{public}s (0x%x) %{public}@";
      v9 = v6;
      v10 = 44;
LABEL_10:
      _os_log_error_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_ERROR, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 136315906;
    v12 = "_BSMachError";
    v13 = 2080;
    *v14 = mach_error_string(a2);
    *&v14[8] = 1024;
    *&v14[10] = a2;
    v15 = 2114;
    *v16 = v5;
    v8 = "%s: %s (0x%x) %{public}@";
    v9 = v6;
    v10 = 38;
    goto LABEL_10;
  }

  if ((a1 - 1) < 0xFFFFFFFE || a2 != 15)
  {
    _os_assumes_log();
  }
}

BOOL BSMachReceiveRightRelease(mach_port_name_t name)
{
  v1 = name;
  if (name - 1 <= 0xFFFFFFFD)
  {
    v2 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
    if (v2)
    {
      _BSMachError(v1, v2, @"Unable to release receive right (modrefs -1)");
      v1 = 0;
    }
  }

  return (v1 - 1) < 0xFFFFFFFE;
}

BOOL BSMachCreateSendRight(mach_port_name_t name)
{
  v1 = name;
  if (name - 1 <= 0xFFFFFFFD)
  {
    inserted = mach_port_insert_right(*MEMORY[0x1E69E9A60], name, name, 0x14u);
    if (inserted)
    {
      _BSMachError(v1, inserted, @"Unable to create send right");
      v1 = 0;
    }
  }

  return (v1 - 1) < 0xFFFFFFFE;
}

double BSFloatFloorForScale(double a1, double a2)
{
  v4 = fabs(a2);
  if (a2 <= 0.0 || v4 < 2.22044605e-16)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat BSFloatFloorForScale(CGFloat, CGFloat)"}];
    [v7 handleFailureInFunction:v8 file:@"BSMath.m" lineNumber:60 description:@"Scale must be specified and cannot be less than or equal to 0."];
  }

  return floor(a1 * a2) / a2;
}

double BSFloatPowerOf2Ceil(double a1)
{
  result = 0.0;
  if (a1 > 0.0)
  {
    v3 = vcvtpd_u64_f64(a1);
    if ((v3 & (v3 - 1)) != 0)
    {
      do
      {
        v4 = v3;
        v3 &= v3 - 1;
      }

      while (v3);
      v3 = 2 * v4;
    }

    return v3;
  }

  return result;
}

uint64_t BSSizeGreaterThanOrEqualToSize(double a1, double a2, double a3, double a4)
{
  v4 = vabdd_f64(a1, a3);
  if (a1 <= a3 && v4 >= 2.22044605e-16)
  {
    return 0;
  }

  v6 = vabdd_f64(a2, a4) < 2.22044605e-16;
  return a2 > a4 || v6;
}

uint64_t BSIntervalOrder(double *a1)
{
  v1 = a1[2];
  v2 = vabdd_f64(*a1, v1);
  v3 = -1;
  if (*a1 >= v1)
  {
    v3 = 1;
  }

  if (v2 >= 2.22044605e-16)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void BSIntervalFractionForValue(double *a1, double a2)
{
  if (vabdd_f64(a1[2], *a1) >= 2.22044605e-16)
  {
    v2 = *(a1 + 1);
    v3[0] = *a1;
    v3[1] = v2;
    BSIntervalClip(v3, a2);
  }
}

double BSIntervalClip(uint64_t a1, double result)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = vabdd_f64(*a1, v4);
  v7 = -1;
  if (*a1 >= v4)
  {
    v7 = 1;
  }

  if (v6 < 2.22044605e-16)
  {
    v7 = 0;
  }

  if (v7 == -1)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v5 = *(a1 + 8);
    v8 = *a1;
    v3 = *(a1 + 24);
    v2 = *(a1 + 16);
  }

  v4 = v8 + -2.22044605e-16;
  if (v5)
  {
    v4 = v8;
  }

  if ((v3 & 1) == 0)
  {
    v2 = v2 + 2.22044605e-16;
  }

LABEL_13:
  if (v2 >= result)
  {
    result = v2;
  }

  if (v4 <= result)
  {
    return v4;
  }

  return result;
}

double BSIntervalValueForFraction(double *a1, double a2)
{
  v2 = a1[2];
  result = *a1 + (v2 - *a1) * a2;
  if (vabdd_f64(v2, *a1) < 2.22044605e-16)
  {
    return a1[2];
  }

  return result;
}

double BSIntervalMin(double *a1)
{
  result = *a1;
  v2 = a1[2];
  v3 = vabdd_f64(*a1, v2);
  v4 = -1;
  if (*a1 >= v2)
  {
    v4 = 1;
  }

  if (v3 < 2.22044605e-16)
  {
    v4 = 0;
  }

  if (v4 == -1)
  {
    v5 = a1 + 1;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v5 = a1 + 3;
    result = a1[2];
  }

  if ((*v5 & 1) == 0)
  {
    return result + 2.22044605e-16;
  }

  return result;
}

double BSIntervalMax(double *a1)
{
  result = a1[2];
  v2 = vabdd_f64(*a1, result);
  v3 = -1;
  if (*a1 >= result)
  {
    v3 = 1;
  }

  if (v2 < 2.22044605e-16)
  {
    v3 = 0;
  }

  if (v3 == -1)
  {
    v4 = a1 + 3;
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    v4 = a1 + 1;
    result = *a1;
  }

  if ((*v4 & 1) == 0)
  {
    return result + -2.22044605e-16;
  }

  return result;
}

double BSIntervalSubIntervalFractionForValue(__int128 *a1, double *a2, double a3)
{
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  BSIntervalFractionForValue(&v7, a3);
  v7 = 0u;
  *&v8 = 0x3FF0000000000000;
  BYTE8(v7) = 1;
  *(&v8 + 1) = 1;
  return BSIntervalClip(&v7, (v5 - *a2) / (a2[2] - *a2));
}

double BSIntervalSubIntervalValueForValue(__int128 *a1, _OWORD *a2, double *a3, double a4)
{
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = BSIntervalSubIntervalFractionForValue(v11, v10, a4);
  v8 = a3[2];
  result = *a3 + (v8 - *a3) * v7;
  if (vabdd_f64(v8, *a3) < 2.22044605e-16)
  {
    return a3[2];
  }

  return result;
}

double BSIntervalInterpolate(_OWORD *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 2);
    v8 = a1[1];
    v10[0] = *a1;
    v10[1] = v8;
    a3 = v7(v5, v10, a3);
  }

  return a3;
}

uint64_t NSStringFromInterval(uint64_t a1)
{
  v1 = CFSTR("(");
  if (*(a1 + 8))
  {
    v1 = @"[";
  }

  if (*(a1 + 24))
  {
    v2 = @"]";
  }

  else
  {
    v2 = @"");
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<BSInterval: %@%.2f, %.2f%@>", v1, *a1, *(a1 + 16), v2];
}

double BSIntervalMap(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = vabdd_f64(*a1, v5);
  v7 = -1;
  if (*a1 >= v5)
  {
    v7 = 1;
  }

  if (v6 >= 2.22044605e-16)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  if (v8 == -1)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  if ((v10 & 1) == 0)
  {
    v9 = v9 + 2.22044605e-16;
  }

LABEL_12:
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = vabdd_f64(*a2, v13);
  v15 = -1;
  if (*a2 >= v13)
  {
    v15 = 1;
  }

  if (v14 < 2.22044605e-16)
  {
    v15 = 0;
  }

  if (v15 == -1)
  {
    v18 = *(a2 + 24);
    v16 = *(a2 + 16);
    v19 = *(a2 + 8);
    v17 = *a2;
  }

  else
  {
    v16 = *(a2 + 16);
    v17 = *a2;
    if (!v15)
    {
      goto LABEL_24;
    }

    v18 = *(a2 + 8);
    v16 = *a2;
    v19 = *(a2 + 24);
    v17 = *(a2 + 16);
  }

  if ((v18 & 1) == 0)
  {
    v16 = v16 + -2.22044605e-16;
  }

  if ((v19 & 1) == 0)
  {
    v17 = v17 + 2.22044605e-16;
  }

LABEL_24:
  if (v8)
  {
    if (v8 == -1)
    {
      v20 = v5 + -2.22044605e-16;
      if (*(a1 + 24))
      {
        v20 = *(a1 + 16);
      }
    }

    else
    {
      v20 = v3 + -2.22044605e-16;
      if (*(a1 + 8))
      {
        v20 = *a1;
      }

      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
    }

    if ((v4 & 1) == 0)
    {
      v3 = v3 + 2.22044605e-16;
    }

    v5 = v20;
  }

  if (v15 != -1)
  {
    if (!v15)
    {
      return (a3 - v9) * (v16 - v17) / (v5 - v3) + v11;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
  }

  if ((v12 & 1) == 0)
  {
    v11 = v11 + 2.22044605e-16;
  }

  return (a3 - v9) * (v16 - v17) / (v5 - v3) + v11;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}