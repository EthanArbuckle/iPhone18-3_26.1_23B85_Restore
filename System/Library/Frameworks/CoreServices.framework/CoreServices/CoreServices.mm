id _LSRecordLog()
{
  if (_LSRecordLog_onceToken != -1)
  {
    _LSRecordLog_cold_1();
  }

  v1 = _LSRecordLog_log;

  return v1;
}

uint64_t _LSContextInitCommon(id *a1, void *a2, char a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = a2;
  IsCurrentThreadInLSContextInitReference = getIsCurrentThreadInLSContextInitReference();
  ++*IsCurrentThreadInLSContextInitReference;
  __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  *a1 = 0;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v72 = 0;
    v8 = _LSServer_CopyLocalDatabase(&v72);
    if (!v8)
    {
      v9 = _LSServer_SelfSessionKey();
      v10 = _LSDatabaseCreateFromPersistentStore(7, 0, &v72);
      v11 = v10;
      if (!v10)
      {
        v8 = 0;
        if ((a3 & 4) == 0)
        {
LABEL_7:
          if (v8)
          {
            objc_storeStrong(a1, v8);
          }

          v14 = v8 == 0;

          v15 = v72;
          if (!v14)
          {
            goto LABEL_10;
          }

          goto LABEL_61;
        }

LABEL_6:
        v13 = _LSDatabaseCreateSnapshot(v8, &v72);

        v8 = v13;
        goto LABEL_7;
      }

      _LSSetLocalDatabase(v10);
      v12 = _LSCopyLocalDatabase(v9, &v72);

      v8 = v12;
    }

    if ((a3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = v6;
  location = 0;
  v18 = [(_LSDServiceDomain *)v17 resolvedSessionKey];
  if ((os_unfair_recursive_lock_trylock() & 1) == 0)
  {
    if (a3)
    {
      v19 = v17;
      v20 = availabilityStateForServiceDomain(v19);
      v21 = v20;
      if ((atomic_load_explicit(v20, memory_order_acquire) & 1) == 0)
      {
        explicit = atomic_load_explicit(v20 + 1, memory_order_acquire);
        os_unfair_lock_lock(v20 + 4);
        if (explicit == v21[1])
        {
          v70 = explicit;
          v60 = v19;
          v61 = objc_opt_class();
          v62 = _LSDServiceGetXPCConnection(v61, v60);
          v63 = [v62 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_381];

          obj = 0;
          p_obj = &obj;
          v83 = 0x2020000000;
          v84 = 0;
          v76 = 0;
          v77 = &v76;
          v78 = 0x2020000000;
          v79 = 0;
          *&block[0] = MEMORY[0x1E69E9820];
          *(&block[0] + 1) = 3221225472;
          *&block[1] = ___ZL34LSCheckDatabaseAvailableWithServerP17_LSDServiceDomain_block_invoke_382;
          *(&block[1] + 1) = &unk_1E6A1B8C8;
          *&v86 = &obj;
          *(&v86 + 1) = &v76;
          [v63 getServerStatusWithCompletionHandler:block];
          if (*(v77 + 24) == 1)
          {
            v64 = (p_obj[3] & 0x80) == 0;
            _Block_object_dispose(&v76, 8);
            _Block_object_dispose(&obj, 8);

            if (v64)
            {
              atomic_store(1u, v21);
              atomic_store(v70 + 1, v21 + 1);
              os_unfair_lock_unlock(v21 + 4);

              goto LABEL_19;
            }
          }

          else
          {
            _Block_object_dispose(&v76, 8);
            _Block_object_dispose(&obj, 8);
          }

          atomic_store(v70 + 1, v21 + 1);
          os_unfair_lock_unlock(v21 + 4);
        }

        else
        {
          v65 = *v21;
          os_unfair_lock_unlock(v21 + 4);

          if (v65)
          {
            goto LABEL_19;
          }
        }

        obj = *MEMORY[0x1E696A278];
        *&block[0] = @"Database not availabile yet";
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:block forKeys:&obj count:1];
        v68 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 36, v44, "_LSContextInitClient", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 3074);
        v69 = location;
        location = v68;

        goto LABEL_54;
      }
    }

LABEL_19:
    os_unfair_recursive_lock_lock_with_options();
  }

  os_unfair_lock_assert_owner(&gSessionLock);
  obj = location;
  v22 = _LSCopyLocalDatabase(v18, &obj);
  objc_storeStrong(&location, obj);
  if (v22)
  {
    v23 = _LSDatabaseNeedsUpdate(v22);
    if ((a3 & 2) == 0 && (v23 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();
LABEL_56:
      objc_storeStrong(a1, v22);
      v45 = 0;
      v46 = 1;
      goto LABEL_60;
    }
  }

  else
  {
    v24 = v18;
    _LSDatabaseNotificationCheck(v24);
  }

  v25 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v66 = getpid();
    v67 = _LSSessionKeyCopyDescription(v18);
    LODWORD(block[0]) = 134218498;
    *(block + 4) = v66;
    WORD6(block[0]) = 2112;
    *(block + 14) = v67;
    WORD3(block[1]) = 2048;
    *(&block[1] + 1) = v22;
    _os_log_debug_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEBUG, "LS DB needs to be mapped into process %llu for session %@ (existing DB @ %p).", block, 0x20u);
  }

  v76 = 0;
  cf = 0;
  if (![__LSDefaultsGetSharedInstance() hasServer] || (cf = 0, !_LSCopyServerStore(v17, a3, &v76, &cf, &location)))
  {
    v28 = 0;
LABEL_38:
    if (!location)
    {
      v38 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSContextInitClient", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 3168);
      v39 = location;
      location = v38;
    }

    goto LABEL_40;
  }

  v73 = location;
  v26 = v18;
  v27 = _LSDatabaseCreate(v76, v26, cf, &v73);
  objc_storeStrong(&location, v73);

  v22 = v27;
  v28 = v27 != 0;
  if (v27)
  {
    sessionKey = v27->sessionKey;
    if ([__LSDefaultsGetSharedInstance() hasServer])
    {
      os_unfair_recursive_lock_lock_with_options();
      v30 = sessionKey;
      v31 = (_LSGetSession(v30) + 12);
      v32 = atomic_load(v31);
      if (!notify_is_valid_token(v32))
      {
        v33 = [__LSDefaultsGetSharedInstance() databaseUpdateNotificationNameForSessionKey:sessionKey];
        v34 = _LSGetDispatchTokenQueue();
        *&block[0] = MEMORY[0x1E69E9820];
        *(&block[0] + 1) = 3221225472;
        *&block[1] = ___ZL31_LSDatabaseNotificationRegister12LSSessionKey_block_invoke;
        *(&block[1] + 1) = &unk_1E6A18D78;
        v35 = v33;
        *&v86 = v35;
        *(&v86 + 1) = sessionKey;
        LaunchServices::notifyd::NotifyToken::RegisterDispatch(v35, v34, block, &v80);
        LaunchServices::notifyd::NotifyToken::operator=(v31, &v80);
        LaunchServices::notifyd::NotifyToken::~NotifyToken(&v80);
      }

      os_unfair_recursive_lock_unlock();
    }

    v36 = v18;
    v37 = _LSGetSession(v36);
    *(v37 + 20) |= 4u;
  }

  atomic_store(1u, availabilityStateForServiceDomain(v17));
  if (!v28)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v22)
  {
    v40 = v28;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    _LSSetLocalDatabase(v22);
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    memset(block, 0, sizeof(block));
    _LSDatabaseGetHeader(v22, block);
    v41 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      _LSContextInitCommon();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  os_unfair_recursive_lock_unlock();
  if (v22)
  {
    v42 = 0;
  }

  else
  {
    v42 = v28;
  }

  if (v42)
  {
    v43 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSContextInitClient", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 3182);
    v44 = location;
    location = v43;
LABEL_54:

    v22 = 0;
    goto LABEL_57;
  }

  if (v28)
  {
    goto LABEL_56;
  }

LABEL_57:
  v47 = *a1;
  *a1 = 0;

  v48 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    _LSContextInitCommon(&location);
  }

  v45 = location;
  v49 = location;
  v46 = 0;
LABEL_60:

  v15 = v45;
  if (v46)
  {
LABEL_10:
    if (_LSDatabaseGetNoServerLock::once != -1)
    {
      _LSContextInitCommon();
    }

    if (_LSDatabaseGetNoServerLock::result)
    {
      pthread_mutex_lock(_LSDatabaseGetNoServerLock::result);
    }

    v16 = 1;
    goto LABEL_68;
  }

LABEL_61:
  v50 = objc_autoreleasePoolPush();
  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_LSContextInitReturningError() failed with error %@", v15];
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSContextInitCommon();
  }

  v52 = _LSLoggingQueue(void)::logQueue;
  *&block[0] = MEMORY[0x1E69E9820];
  *(&block[0] + 1) = 3221225472;
  *&block[1] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_0;
  *(&block[1] + 1) = &unk_1E6A1A830;
  *&v86 = v51;
  v53 = v51;
  dispatch_sync(v52, block);

  v54 = dispatch_time(0, 2000000000);
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSContextInitCommon();
  }

  dispatch_after(v54, _LSLoggingQueue(void)::logQueue, &__block_literal_global_387);

  objc_autoreleasePoolPop(v50);
  if (a4)
  {
    v55 = v15;
    v16 = 0;
    *a4 = v15;
  }

  else
  {
    v16 = 0;
  }

LABEL_68:
  v56 = getIsCurrentThreadInLSContextInitReference();
  --*v56;

  v57 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_18162F080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  v37 = v34;
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&a21);

  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__()
{
  result = _LSCurrentProcessMayMapDatabase();
  if (!result)
  {
    return __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION__("forbidden-map-ls-database");
  }

  return result;
}

uint64_t __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__()
{
  result = _LSCurrentProcessMayMapDatabase();
  if (!result)
  {
    result = [__LSDefaultsGetSharedInstance() abortIfMayNotMapDatabase];
    if (result)
    {
      abort();
    }
  }

  return result;
}

void *LaunchServices::DatabaseContext::getPerThreadStateReference(LaunchServices::DatabaseContext *this)
{
  if (LaunchServices::DatabaseContext::getPerThreadStateReference(void)::once != -1)
  {
    LaunchServices::DatabaseContext::getPerThreadStateReference();
  }

  v1 = pthread_getspecific(LaunchServices::DatabaseContext::getPerThreadStateReference(void)::key);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

uint64_t LaunchServices::Database::Context::_get(LaunchServices::Database::Context *this, _LSDServiceDomain *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *this;
  if (!*this)
  {
    if (*(this + 3))
    {
      v6 = 0;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v12 = 0;
      v8 = _LSContextInitWithOptions(this + 8, v5, a3, &v12);
      v9 = v12;
      v10 = v12;
      if (v8)
      {
        *this = this + 8;
        *(this + 16) = 1;
      }

      else
      {
        objc_storeStrong(this + 3, v9);
      }

      objc_autoreleasePoolPop(v7);
      v6 = *this;
    }
  }

  return v6;
}

void *getIsCurrentThreadInLSContextInitReference(void)
{
  if (getIsCurrentThreadInLSContextInitReference(void)::once != -1)
  {
    getIsCurrentThreadInLSContextInitReference();
  }

  v0 = pthread_getspecific(getIsCurrentThreadInLSContextInitReference(void)::key);
  if (!v0)
  {
    v0 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    pthread_setspecific(getIsCurrentThreadInLSContextInitReference(void)::key, v0);
  }

  return v0;
}

uint64_t __LSDefaultsGetSharedInstance()
{
  if (__LSDefaultsGetSharedInstance_onceToken != -1)
  {
    __LSDefaultsGetSharedInstance_cold_1();
  }

  return __LSDefaultsGetSharedInstance_sharedInstance;
}

uint64_t _LSCurrentProcessMayMapDatabase()
{
  if (_LSCurrentProcessMayMapDatabase::once != -1)
  {
    _LSCurrentProcessMayMapDatabase_cold_1();
  }

  v0 = atomic_load(mayMapDatabase);
  return v0 & 1;
}

uint64_t _LSGetSessions(void)
{
  if (_LSSessionInitMemoryWarningListener(void)::once != -1)
  {
    _LSGetSessions();
  }

  if (_LSGetSessions(void)::once != -1)
  {
    _LSGetSessions();
  }

  return _LSGetSessions(void)::sessions;
}

uint64_t _LSGetSession(LSSessionKey a1)
{
  v4[0] = a1;
  v1 = _LSGetSessions();
  v4[2] = v4;
  v2 = std::__hash_table<std::__hash_value_type<LSSessionKey,LSSession *>,std::__unordered_map_hasher<LSSessionKey,std::__hash_value_type<LSSessionKey,LSSession *>,LSSessionKeyHasher,LSSessionKeyComparator,true>,std::__unordered_map_equal<LSSessionKey,std::__hash_value_type<LSSessionKey,LSSession *>,LSSessionKeyComparator,LSSessionKeyHasher,true>,std::allocator<std::__hash_value_type<LSSessionKey,LSSession *>>>::__emplace_unique_key_args<LSSessionKey,std::piecewise_construct_t const&,std::tuple<LSSessionKey const&>,std::tuple<>>(v1, v4)[3];
  if (!v2)
  {
    operator new();
  }

  return v2;
}

id _LSCopyLocalDatabase(unint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v4 = a1;
  v5 = _LSGetSession(v4);
  if (!*(v5 + 24))
  {
    if (a2)
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSCopyLocalDatabase", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 799);
LABEL_13:
      v8 = 0;
      *a2 = v9;
      goto LABEL_15;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *(*(v5 + 24) + 16);
  if ((v7 & 0x100000000) == 0)
  {
    if (v7 == a1 && (a1 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v10 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = *(v6 + 24);
      v14 = _LSSessionKeyCopyDescription(a1);
      v15 = _LSSessionKeyCopyDescription(v7);
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_fault_impl(&dword_18162D000, v10, OS_LOG_TYPE_FAULT, "session key of database %{public}@ was expected to be %@, but was %@!", &v16, 0x20u);
    }

    if (a2)
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "_LSCopyLocalDatabase", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 794);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = *(v5 + 24);
LABEL_15:
  os_unfair_recursive_lock_unlock();
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void *std::__hash_table<std::__hash_value_type<LSSessionKey,LSSession *>,std::__unordered_map_hasher<LSSessionKey,std::__hash_value_type<LSSessionKey,LSSession *>,LSSessionKeyHasher,LSSessionKeyComparator,true>,std::__unordered_map_equal<LSSessionKey,std::__hash_value_type<LSSessionKey,LSSession *>,LSSessionKeyComparator,LSSessionKeyHasher,true>,std::allocator<std::__hash_value_type<LSSessionKey,LSSession *>>>::__emplace_unique_key_args<LSSessionKey,std::piecewise_construct_t const&,std::tuple<LSSessionKey const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  if (*(a2 + 4))
  {
    v2 = 1;
  }

  else
  {
    v2 = *a2;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_29;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_29:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 != v2)
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v5)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v10 = v7[2];
    if ((v10 & 0x100000000) != 0)
    {
      if ((v8 & 0x100000000) != 0)
      {
        return v7;
      }

      goto LABEL_28;
    }

    if (v10 == v8 && (v8 & 0x100000000) == 0)
    {
      return v7;
    }

LABEL_28:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_29;
    }
  }
}

BOOL _LSDatabaseNotificationCheck(LSSessionKey a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1;
  v3 = (_LSGetSession(v2) + 16);
  v4 = atomic_load(v3);
  if (!notify_is_valid_token(v4))
  {
    v5 = [__LSDefaultsGetSharedInstance() databaseUpdateNotificationNameForSessionKey:a1];
    LaunchServices::notifyd::NotifyToken::RegisterCheck(v5, &v9);
    LaunchServices::notifyd::NotifyToken::operator=(v3, &v9);
    LaunchServices::notifyd::NotifyToken::~NotifyToken(&v9);
  }

  if (([__LSDefaultsGetSharedInstance() hasServer] & 1) != 0 || objc_msgSend(__LSDefaultsGetSharedInstance(), "isServer"))
  {
    v6 = atomic_load(v3);
    v7 = !notify_is_valid_token(v6) || (LaunchServices::notifyd::NotifyToken::checkValue(v3) & 0x1FFFFFFFFLL) != 0x100000000;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_recursive_lock_unlock();
  return v7;
}

void sub_18162FD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&a11);

  _Unwind_Resume(a1);
}

uint64_t _LSDatabaseNeedsUpdate(_LSDatabase *a1)
{
  v1 = a1;
  if ((*(v1 + 32) & 6) != 0)
  {
    v2 = 0;
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v3 = *(v1 + 32);
    if ((v3 & 1) == 0)
    {
      sessionKey = v1->sessionKey;
      v3 = *(v1 + 32) & 0xFE | _LSDatabaseNotificationCheck(sessionKey);
      *(v1 + 32) = v3;
    }

    v2 = v3 & 1;
    os_unfair_recursive_lock_unlock();
  }

  return v2;
}

LaunchServices::BindingEvaluator *std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(LaunchServices::BindingEvaluator *a1, const LaunchServices::BindingEvaluator *a2)
{
  if (*(a1 + 176) == 1)
  {
    LaunchServices::BindingEvaluator::operator=(a1, a2);
  }

  else
  {
    LaunchServices::BindingEvaluator::BindingEvaluator(a1, a2);
    *(a1 + 176) = 1;
  }

  return a1;
}

void *std::vector<LSBundleClass>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

__n128 LaunchServices::BindingEvaluator::CreateWithBundleInfo@<Q0>(LaunchServices::BindingEvaluator *this@<X0>, NSString *a2@<X1>, NSString *a3@<X2>, LSVersionNumber *a4@<X4>, _OWORD *a5@<X3>, uint64_t a6@<X8>)
{
  v6 = a4;
  v8 = a3;
  v31 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::BindingEvaluator(a6);
  v12 = _LSBindingLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = _LSCopyStringForOSType(v8);
    v14 = a5[1];
    v27[0] = *a5;
    v27[1] = v14;
    v15 = _LSVersionNumberGetStringRepresentation(v27);
    *buf = 138478595;
    *&buf[4] = this;
    *&buf[12] = 2113;
    *&buf[14] = a2;
    *&buf[22] = 2114;
    *&buf[24] = v13;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithBundleInfo(ID=%{private}@, name=%{private}@, CC=%{public}@, vers=%{public}@)", buf, 0x2Au);
  }

  v16 = _LSCopyStringForOSType(v8);
  v17 = a5[1];
  *buf = *a5;
  *&buf[16] = v17;
  v18 = _LSVersionNumberGetStringRepresentation(buf);
  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for bundle info: ID=%@, name=%@, CC=%@, vers=%@", v19, this, a2, v16, v18);

  v20 = [(LaunchServices::BindingEvaluator *)this copy];
  v21 = *(a6 + 32);
  *(a6 + 32) = v20;

  v22 = [(NSString *)a2 copy];
  v23 = *(a6 + 40);
  *(a6 + 40) = v22;

  result = *a5;
  v25 = a5[1];
  *(a6 + 48) = *a5;
  *(a6 + 64) = v25;
  *(a6 + 88) = 1;
  *(a6 + 89) = v6;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

LaunchServices::BindingEvaluator *LaunchServices::BindingEvaluator::BindingEvaluator(LaunchServices::BindingEvaluator *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 3) = kLSVersionNumberNull;
  *(this + 4) = unk_1817E90C0;
  *(this + 10) = 0;
  *(this + 12) = 32;
  *(this + 44) = 0;
  *(this + 26) = 14;
  *(this + 27) = 0;
  v3 = 2;
  std::vector<LSBundleClass>::vector[abi:nn200100](this + 14, &v3, 1uLL);
  *(this + 21) = 0;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  return this;
}

__CFString *_LSVersionNumberGetStringRepresentation(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = LaunchServices::VersionNumber::copyStringRepresentation(v4);

  return v2;
}

void LaunchServices::BindingEvaluation::logToFile(LaunchServices::BindingEvaluation *this, NSString *a2, ...)
{
  va_start(va, a2);
  v11 = *MEMORY[0x1E69E9840];
  if (this && LaunchServices::BindingEvaluation::logFile)
  {
    va_copy(v9, va);
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:this arguments:va];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 length];
      v7 = 0;
      for (i = v4; i; v4 = i)
      {
        __size = 0;
        if (([v3 getBytes:__ptr maxLength:512 usedLength:&__size encoding:4 options:0 range:v7 remainingRange:{v4, &v7}] & 1) == 0)
        {
          break;
        }

        fwrite(__ptr, __size, 1uLL, LaunchServices::BindingEvaluation::logFile);
        fputc(10, LaunchServices::BindingEvaluation::logFile);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __LSRECORD_GETTER__<unsigned long long>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    v9 = [CachedPropertyValue unsignedLongLongValue];
  }

  else
  {
    v10 = v5;
    v11 = v10;
    v13 = v10 + 16;
    v12 = *(v10 + 2);
    if ((*(v10 + 31) & 0x40) == 0 && !v12)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v10, a2);
    }

    if (v12)
    {
      v14 = v10;
      [(_LSDatabase *)v11[2] store];
      v15 = *(v14 + 14);
      v16 = *(v14 + 6);
      Unit = CSStoreGetUnit();
      v18 = *(v14 + 14);
      v19 = *(v14 + 6);
      MethodImplementation = object_getMethodImplementation();
      v9 = MethodImplementation(v14, a3, v13, v18, v19, Unit);
    }

    else
    {
      v9 = 0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    LaunchServices::Record::setCachedPropertyValue(v11, a2, v21, v22);
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

void sub_1816304AC(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t _LSBundleGet(void *a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  Unit = 0;
  if (v3)
  {
    if (a2)
    {
      [(_LSDatabase *)v3 store];
      v6 = *([(_LSDatabase *)v4 schema]+ 4);
      Unit = CSStoreGetUnit();
      if (!Unit)
      {
        v7 = _LSRegistrationLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10[0] = 67240451;
          v10[1] = a2;
          v11 = 2113;
          v12 = [(_LSDatabase *)v4 store];
          _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "Failed to get unit %{public}d from store %{private}@", v10, 0x12u);
        }

        Unit = 0;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return Unit;
}

void *LaunchServices::Record::getCachedPropertyValue(LaunchServices::Record *this, LSRecord *a2, objc_selector *a3)
{
  v4 = a2;
  result = *(this + 1);
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(result, &v4);
    if (result)
    {
      return result[3];
    }
  }

  return result;
}

void *LaunchServices::Record::setCachedPropertyValue(LaunchServices::Record *this, LSRecord *a2, objc_selector *a3, objc_object *a4)
{
  v6 = a2;
  v4 = *(this + 1);
  if (!v4)
  {
    operator new();
  }

  return std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *&,objc_object * const {__strong}&>(v4, &v6);
}

void sub_1816307F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](v7, v11);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

char **LaunchServices::BindingEvaluator::setAllowedBundleClasses(uint64_t a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 != v4)
  {
    v6 = v3;
    while (*v6)
    {
      v6 += 4;
      if (v6 == v4)
      {
        goto LABEL_8;
      }
    }

    if (v6 != v4)
    {
      return std::vector<LSBundleClass>::__assign_with_size[abi:nn200100]<LSBundleClass const*,LSBundleClass const*>((a1 + 112), 0, 0, 0);
    }
  }

LABEL_8:
  result = (a1 + 112);
  if (result != a2)
  {
    return std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(result, v3, v4, (v4 - v3) >> 2);
  }

  return result;
}

uint64_t _LSFindBundleWithInfo_NoIOFiltered(uint64_t *a1, unint64_t a2, void *a3, int a4, const void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v60 = *MEMORY[0x1E69E9840];
  v39 = a7;
  v16 = a8;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (!a1)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"LSBundleID _LSFindBundleWithInfo_NoIOFiltered(LSContext * _Nonnull, LSBundleType, CFStringRef _Nullable, Boolean, CFURLRef _Nullable, UInt64, NSString *__strong _Nullable, BOOL (^__strong _Nullable)(LSContext *, LSBundleID, const LSBundleData *), NSError *__autoreleasing * _Nullable)"}];
    [v37 handleFailureInFunction:v38 file:@"LSBundleProxy.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];
  }

  if (a3)
  {
    if (a2 == 7)
    {
      v58 = kLSVersionNumberNull;
      v59 = unk_1817E90C0;
      v17 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, a3, a4 != 0, &v58, 14, 1152, v39, v16, v55 + 6, 0, a9);
      *(v51 + 24) = v17;
      goto LABEL_41;
    }

    if (a2 > 1)
    {
      v25 = 0;
      if (v51[3])
      {
LABEL_38:
        if (a9)
        {
          v33 = v25;
          *a9 = v25;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v49 = 0;
      v58 = kLSVersionNumberNull;
      v59 = unk_1817E90C0;
      v24 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, a3, a4 != 0, &v58, 2, 128, v39, v16, v55 + 6, 0, &v49);
      v25 = v49;
      *(v51 + 24) = v24;
      if (v24)
      {
        goto LABEL_38;
      }
    }

    if (a2 != 3 && a2)
    {
      goto LABEL_36;
    }

    v48 = v25;
    v58 = kLSVersionNumberNull;
    v59 = unk_1817E90C0;
    v26 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, a3, a4 != 0, &v58, 2, 1152, v39, v16, v55 + 6, 0, &v48);
    v27 = v48;

    *(v51 + 24) = v26;
    v25 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_36:
      if ((a2 | 8) != 8)
      {
        goto LABEL_47;
      }

      v47 = v25;
      v58 = kLSVersionNumberNull;
      v59 = unk_1817E90C0;
      v28 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, a3, a4 != 0, &v58, 16, 32896, v39, v16, v55 + 6, 0, &v47);
      v29 = v47;

      *(v51 + 24) = v28;
      v25 = v29;
      if ((v28 & 1) == 0)
      {
LABEL_47:
        if (a2 != 5 && a2)
        {
          goto LABEL_48;
        }

        v46 = v25;
        v58 = kLSVersionNumberNull;
        v59 = unk_1817E90C0;
        v30 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, a3, a4 != 0, &v58, 13, 128, v39, v16, v55 + 6, 0, &v46);
        v31 = v46;

        *(v51 + 24) = v30;
        v25 = v31;
        if ((v30 & 1) == 0)
        {
LABEL_48:
          if (!v25)
          {
            v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSFindBundleWithInfo_NoIOFiltered", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleProxy.m", 166);
          }
        }
      }
    }

    goto LABEL_38;
  }

  if (a5)
  {
    v18 = _LSCreateResolvedURL(a5);
    v19 = [[FSNode alloc] initWithURL:v18 flags:0 error:a9];
    if (v19)
    {
      *&v58 = 0;
      v20 = _LSBundleFindWithNode(a1, v19, v55 + 6, &v58);
      v21 = _LSGetNSErrorFromOSStatusImpl(v20, a9, 0, "_LSFindBundleWithInfo_NoIOFiltered", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleProxy.m", 178);
      *(v51 + 24) = v21;
      if (v16 != 0 && v21)
      {
        v22 = (*(v16 + 2))(v16, a1, *(v55 + 6), v58);
        *(v51 + 24) = v22;
        v23 = a9 ? v22 : 1;
        if ((v23 & 1) == 0)
        {
          *a9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSFindBundleWithInfo_NoIOFiltered", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleProxy.m", 185);
        }
      }
    }
  }

  else if (a6)
  {
    if (a2 == 5)
    {
      v32 = 13;
    }

    else
    {
      v32 = 2;
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = ___LSFindBundleWithInfo_NoIOFiltered_block_invoke;
    v40[3] = &unk_1E6A1AD40;
    v44 = a6;
    v41 = v16;
    v42 = &v54;
    v45 = a1;
    v43 = &v50;
    _LSEnumerateViableBundlesOfClass(a1, v32, v40);
    if (a9 && (v51[3] & 1) == 0)
    {
      *a9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSFindBundleWithInfo_NoIOFiltered", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleProxy.m", 203);
    }
  }

LABEL_41:
  if (*(v51 + 24) == 1)
  {
    v34 = *(v55 + 6);
  }

  else
  {
    v34 = 0;
    *(v55 + 6) = 0;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_181630FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSBundleFindWithInfoAndNo_IOFilter(uint64_t a1, NSString *a2, void *a3, int a4, _OWORD *a5, int a6, int a7, void *a8, void *a9, _DWORD *a10, void *a11, void *a12)
{
  v38 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a8;
  v20 = a9;
  v36[0] = 0;
  v37 = 0;
  if (a4)
  {
    if (a12)
    {
      *a12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "_LSBundleFindWithInfoAndNo_IOFilter", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSBundle.mm", 777);
    }
  }

  else if (v18 || a2 && a2 != 1061109567)
  {
    v21 = a5[1];
    v30[0] = *a5;
    v30[1] = v21;
    LaunchServices::BindingEvaluator::CreateWithBundleInfo(v18, 0, a2, 0, v30, &__p);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v36, &__p);
    LaunchServices::BindingEvaluator::~BindingEvaluator(&__p);
  }

  else if (a12)
  {
    v28 = *MEMORY[0x1E696A278];
    v29 = @"inBundleID || inHFSCreator";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *a12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "_LSBundleFindWithInfoAndNo_IOFilter", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSBundle.mm", 783);
  }

  if (v37 == 1)
  {
    LaunchServices::BindingEvaluator::setLimit(v36, 1uLL);
    LaunchServices::BindingEvaluator::setOptions(v36, a7);
    LODWORD(v30[0]) = a6;
    std::vector<LSBundleClass>::vector[abi:nn200100](&__p, v30, 1uLL);
    LaunchServices::BindingEvaluator::setAllowedBundleClasses(v36, &__p);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___LSBundleFindWithInfoAndNo_IOFilter_block_invoke;
      v26[3] = &unk_1E6A1AAD0;
      v27 = v20;
      LaunchServices::BindingEvaluator::setFilter(v36, v19, v26);
    }

    LaunchServices::BindingEvaluator::getBestBinding(v36);
    v22 = v35;
    if (v35 == 1)
    {
      if (a10)
      {
        *a10 = __p;
      }

      if (a11)
      {
        *a11 = v32;
      }
    }

    if (v37)
    {
      LaunchServices::BindingEvaluator::~BindingEvaluator(v36);
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_18163132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(&a44);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::allocator<unsigned int>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

id _LSBindingLog()
{
  if (_LSBindingLog_once != -1)
  {
    _LSBindingLog_cold_1();
  }

  v1 = _LSBindingLog_result;

  return v1;
}

CFStringRef LaunchServices::VersionNumber::copyStringRepresentation(LaunchServices::VersionNumber *this)
{
  if (!*this && !*(this + 1) && !*(this + 2))
  {
    return 0;
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v14);
  v2 = MEMORY[0x1865D61A0](&v14, *this);
  v3 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v2, ".", 1);
  MEMORY[0x1865D61A0](v3, *(this + 1));
  if (*(this + 2))
  {
    v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, ".", 1);
    MEMORY[0x1865D61A0](v4, *(this + 2));
  }

  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    locale = v16[4].__locale_;
    goto LABEL_13;
  }

  if ((v21 & 8) != 0)
  {
    locale = v16[1].__locale_;
    v6 = v16[3].__locale_;
LABEL_13:
    v5 = v6 - locale;
    if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v13 = v6 - locale;
    if (v5)
    {
      memmove(&__p, locale, v5);
    }

    goto LABEL_19;
  }

  v5 = 0;
  v13 = 0;
LABEL_19:
  v8 = MEMORY[0x1E695E480];
  *(&__p + v5) = 0;
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v10 = CFStringCreateWithCString(*v8, p_p, 0x8000100u);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x1865D6220](&v22);
  return v10;
}

void sub_181631720(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1865D6220](va);
  _Unwind_Resume(a1);
}

LaunchServices::BindingEvaluation::State *LaunchServices::BindingEvaluation::State::State(LaunchServices::BindingEvaluation::State *this, LSContext *a2, const LaunchServices::BindingEvaluator *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = a2;
  LaunchServices::BindingEvaluator::BindingEvaluator((this + 8), a3);
  *(this + 27) = 0;
  v5 = (this + 216);
  *(this + 23) = 0;
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 31) = 0;
  *(this + 128) = 0;
  *(this + 33) = 0;
  *(this + 272) = 0;
  *(this + 280) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 208) = 0;
  v6 = *(this + 1);
  if ([(LaunchServices::BindingEvaluator *)v6 isSideFault])
  {
    v7 = _LSBindingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEBUG, "Node %@ was an iCloud Drive fault file. Substituting binding evaluator.", buf, 0xCu);
    }

    LaunchServices::BindingEvaluation::logToFile(@"Node %@ was an iCloud Drive fault file. Substituting binding evaluator.", v8, v6);
    v19 = 0;
    v9 = [UTTypeRecord _typeRecordWithContext:a2 forPromiseAtNode:v6 error:&v19];
    v10 = v19;
    if (v9)
    {
      v11 = [v9 identifier];
      v12 = _LSBindingLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEBUG, "iCloud Drive fault file looks like it has UTI %@.", buf, 0xCu);
      }

      LaunchServices::BindingEvaluation::logToFile(@"iCloud Drive fault file looks like it has UTI %@.", v13, v11);
      LaunchServices::BindingEvaluator::CreateWithUTI(v11, *(this + 4), buf);
      LaunchServices::BindingEvaluator::setAllPropertiesFromBindingEvaluator(buf, (this + 8));
      LaunchServices::BindingEvaluator::operator=(this + 8, buf);
      LaunchServices::BindingEvaluator::~BindingEvaluator(buf, v14);
    }

    else
    {
      v15 = _LSBindingLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEBUG, "Node %@ was an iCloud Drive fault file, but we couldn't figure out its type: %@", buf, 0x16u);
      }

      LaunchServices::BindingEvaluation::logToFile(@"Node %@ was an iCloud Drive fault file, but we couldn't figure out its type: %@", v16, v6, v10);
    }
  }

  LaunchServices::BindingEvaluation::calculateUTI(*this, this + 8, this + 27, this + 224, this + 232);
  if (!*(this + 29) && *v5)
  {
    *(this + 240) = UTTypeIsDynamic(*v5) != 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_181631A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](va);
  LaunchServices::BindingEvaluator::~BindingEvaluator(v5 + 1, v9);
  _Unwind_Resume(a1);
}

unint64_t LaunchServices::notifyd::NotifyToken::checkValue(LaunchServices::notifyd::NotifyToken *this)
{
  check = 0;
  v1 = atomic_load(this);
  v2 = notify_check(v1, &check);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = check;
  }

  return v3 | ((v2 == 0) << 32);
}

void *std::vector<LSBundleClass>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

CFStringRef _LSCopyStringForOSType(unsigned int a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 1061109567;
  }

  *bytes = bswap32(v1);
  return CFStringCreateWithBytes(0, bytes, 4, 0, 0);
}

LaunchServices::BindingEvaluator *LaunchServices::BindingEvaluator::BindingEvaluator(LaunchServices::BindingEvaluator *this, const LaunchServices::BindingEvaluator *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = *(a2 + 5);
  v4 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v4;
  *(this + 10) = *(a2 + 10);
  v5 = *(a2 + 13);
  *(this + 88) = *(a2 + 88);
  *(this + 13) = v5;
  std::vector<LSBundleClass>::vector[abi:nn200100](this + 14, a2 + 14);
  *(this + 17) = MEMORY[0x1865D71B0](*(a2 + 17));
  *(this + 18) = *(a2 + 18);
  *(this + 19) = MEMORY[0x1865D71B0](*(a2 + 19));
  *(this + 20) = *(a2 + 20);
  *(this + 21) = MEMORY[0x1865D71B0](*(a2 + 21));
  return this;
}

void LaunchServices::BindingEvaluator::~BindingEvaluator(id *this, NSString *a2)
{
  LaunchServices::BindingEvaluation::logToFile(@"Destroying binding evaluator %p", a2, this);

  v3 = this[14];
  if (v3)
  {
    this[15] = v3;
    operator delete(v3);
  }
}

void sub_181631DF4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    *(v1 + 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void LaunchServices::BindingEvaluator::getBestBinding(uint64_t *__return_ptr a1@<X8>, LaunchServices::BindingEvaluator *a2@<X0>, LSContext *a3@<X1>, void **a4@<X2>, NSString *a5@<X3>)
{
  v20[13] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 56) = 0;
  LaunchServices::BindingEvaluation::State::State(v18, a3, a2);
  if (a4)
  {
    v9 = LaunchServices::BindingEvaluation::State::getTypeRecord(v18);
    v10 = *a4;
    *a4 = v9;
  }

  v19[12] = 1;
  LaunchServices::BindingEvaluation::runEvaluator(v18, a5, v16);
  v11 = v16[0];
  if (v16[0] != v16[1])
  {
    v12 = [[_LSBindingForLog alloc] initWithState:v18 binding:v16[0]];
    LaunchServices::BindingEvaluation::logToFile(@"Best binding found for evaluator %p: %@", v13, a2, v12);

    std::optional<LSBinding>::operator=[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding const&,void>(a1, v11);
  }

  v17 = v16;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v17);

  v16[0] = v20;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](v16);
  LaunchServices::BindingEvaluator::~BindingEvaluator(v19, v14);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_181631FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void **);

  va_copy(v11, va);
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](va1);
  LaunchServices::BindingEvaluation::State::~State(va2);
  std::optional<LSBinding>::~optional(v4);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluator::setLimit(uint64_t this, unint64_t a2)
{
  v2 = 1024;
  if (a2 < 0x400)
  {
    v2 = a2;
  }

  *(this + 96) = v2;
  return this;
}

uint64_t _LSDatabaseGetStringForCFString(void *a1, const __CFString *a2, int a3)
{
  v13[20] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2 || (v6 = CFGetTypeID(a2), v6 != CFStringGetTypeID()))
  {
    XCFBufInit(v13);
    goto LABEL_8;
  }

  Length = CFStringGetLength(a2);
  if (!XCFBufInitWithCFStringRange(v13, a2, 0, Length, a3))
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = v5;
  if (v5)
  {
    v9 = v5[5];
  }

  v10 = _CSGetStringForCharacters();
  XCFBufDestroy(v13);
LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void LaunchServices::BindingEvaluation::addBundlesInBindingMap(void ***a1, uint64_t a2, int a3)
{
  if (a3)
  {
    _LSDatabaseEnumeratingBindingMap(**a1);
  }
}

void XCFBufDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 28) = 0;
  *a1 = a1 + 28;
  *(a1 + 8) = 0;
  *(a1 + 24) = 127;
  *(a1 + 16) = 0;
}

uint64_t _LSVersionNumberCompare(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return -1;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  v7 = v4 > v6;
  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    v8 = 1;
  }

  v9 = v3 > v5;
  if (v3 >= v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

void *_LSAliasCopyResolvedNode(void *a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = _LSAliasGet(a1, a2);
  if (v10)
  {
    v11 = [[FSNode alloc] initByResolvingBookmarkData:v10 relativeToNode:v9 bookmarkDataIsStale:a4 error:a5];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }
  }

  else if (a5)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "_LSAliasCopyResolvedNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 301);
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id _LSBundleCreateNode(void *a1, unsigned int a2, int a3, BOOL *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  v24 = 0;
  if (a3)
  {
    v11 = v9;
    v12 = _LSBundleGet(v11, a2);
    v13 = v12;
    if (v12 && (_LSAliasGetPath(v11, *v12), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v14 isDirectory:(v13[46] >> 3) & 1];
      v16 = [FSNode canReadMetadataOfURL:v15 fromSandboxWithAuditToken:0];

      if (!v16)
      {
        if (a5)
        {
          _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -43, 0, "_LSBundleCreateNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSBundle.mm", 1604);
          *a5 = v17 = 0;
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v18 = _LSBundleGet(v10, a2);
  v17 = _LSAliasCopyResolvedNode(v10, *v18, 0, &v24, a5);
  if (v17)
  {
    if (a3)
    {
LABEL_10:
      if (!v24)
      {
        v24 = _LSNodeHasChanged(v17, v10, a2, v18, 0) != 0;
      }
    }
  }

  else
  {
    v19 = *(v18 + 4);
    v20 = _LSContainerGet(v10);
    if (!v20 || (v21 = *(v20 + 12)) == 0 || (v22 = _LSAliasCopyResolvedNode(v10, v21, 0, &v24, a5)) == 0)
    {
LABEL_20:
      v17 = 0;
      goto LABEL_21;
    }

    v17 = _LSAliasCopyResolvedNode(v10, *v18, v22, &v24, a5);
    if (!v17)
    {

      goto LABEL_21;
    }

    if (a3)
    {
      goto LABEL_10;
    }
  }

  if (a4)
  {
    *a4 = v24;
  }

LABEL_21:

  return v17;
}

void LaunchServices::BindingEvaluation::addBundles(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    StringForCFString = _LSDatabaseGetStringForCFString(**this, v3, 0);
    LaunchServices::BindingEvaluation::addBundlesInBindingMap(this, 6, StringForCFString);
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = _LSDatabaseGetStringForCFString(**this, v5, 1);
    LaunchServices::BindingEvaluation::addBundlesInBindingMap(this, 7, v6);
  }

  LaunchServices::BindingEvaluation::logToFile(@"%llu bindings found", &v5->isa, 0x4EC4EC4EC4EC4EC5 * ((*(this + 24) - *(this + 23)) >> 3));
}

uint64_t *LaunchServices::BindingEvaluation::addAndEvaluate(uint64_t *result, void (*a2)(LaunchServices::BindingEvaluation *), uint64_t *a3)
{
  v181 = *MEMORY[0x1E69E9840];
  if (0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 3) < result[13])
  {
    v159 = result;
    v5 = result[23];
    v4 = result[24];
    v6 = result + 23;
    while (v4 != v5)
    {
      v4 -= 104;
      std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(v6, v4);
    }

    *(v159 + 24) = v5;
    a2(v159);
    LaunchServices::BindingEvaluation::ensureBundlePointersInBindings(v6);
    if ((*(v159 + 208) & 1) == 0)
    {
      v7 = *(v159 + 24);
      v160 = *(v159 + 23);
      v156 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v160) >> 3);
      v157 = v6;
      if (*(v159 + 13) >= v156)
      {
        v8 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v160) >> 3);
      }

      else
      {
        v8 = *(v159 + 13);
      }

      v162 = v159;
      if (v8)
      {
        if (v8 >= 2)
        {
          v9 = (v8 - 2) >> 1;
          v10 = v9 + 1;
          v11 = (v160 + 104 * v9);
          do
          {
            std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,LaunchServices::BindingEvaluation::sort(LaunchServices::BindingEvaluation::State &)::$_0 &,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(v160, &v162, v8, v11);
            v11 = (v11 - 104);
            --v10;
          }

          while (v10);
        }

        v161 = v160 + 104 * v8;
        if (v161 != v7)
        {
          v12 = (v160 + 104 * v8);
          while (1)
          {
            v13 = objc_autoreleasePoolPush();
            v16 = LaunchServices::BindingEvaluation::compareBindings(v159, v12, v160, v14, v15);
            isBindingOK = LaunchServices::BindingEvaluation::isBindingOK(v159, v12, v17);
            v20 = isBindingOK;
            if (v16 != 1)
            {
              break;
            }

            objc_autoreleasePoolPop(v13);
            if (v20)
            {
              goto LABEL_21;
            }

LABEL_24:
            v12 = (v12 + 104);
            if (v12 == v7)
            {
              goto LABEL_25;
            }
          }

          if (v16 == 255)
          {
            if ((isBindingOK & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else if (!isBindingOK)
          {
LABEL_23:
            objc_autoreleasePoolPop(v13);
            goto LABEL_24;
          }

          v21 = LaunchServices::BindingEvaluation::isBindingOK(v159, v160, v19);
          objc_autoreleasePoolPop(v13);
          if (v21)
          {
            goto LABEL_24;
          }

LABEL_21:
          std::swap[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding>(v12, v160);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,LaunchServices::BindingEvaluation::sort(LaunchServices::BindingEvaluation::State &)::$_0 &,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(v160, &v162, v8, v160);
          goto LABEL_24;
        }

LABEL_25:
        if (v8 >= 2)
        {
LABEL_26:
          v22 = 0;
          v23 = v160;
          v24 = *(v160 + 16);
          v163 = *v160;
          v164 = v24;
          v25 = *(v160 + 32);
          *(v160 + 32) = 0u;
          v165 = v25;
          v166 = *(v160 + 48);
          v167 = *(v160 + 56);
          v26 = *(v160 + 64);
          *(v160 + 64) = 0u;
          v169 = *(v160 + 80);
          v27 = *(v160 + 88);
          *(v160 + 88) = 0;
          v170 = v27;
          v171 = *(v160 + 96);
          v168 = v26;
          while (1)
          {
            v28 = v23 + 104 * v22 + 104;
            v29 = 2 * v22;
            v22 = (2 * v22) | 1;
            v30 = v29 + 2;
            if (v29 + 2 < v8)
            {
              v31 = objc_autoreleasePoolPush();
              v34 = LaunchServices::BindingEvaluation::compareBindings(v162, v28, (v28 + 104), v32, v33);
              v36 = LaunchServices::BindingEvaluation::isBindingOK(v162, v28, v35);
              v38 = v36;
              if (v34 != 1)
              {
                if (v34 == 255)
                {
                  if ((v36 & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                else if (!v36)
                {
LABEL_36:
                  objc_autoreleasePoolPop(v31);
                  goto LABEL_37;
                }

                v39 = LaunchServices::BindingEvaluation::isBindingOK(v162, (v28 + 104), v37);
                objc_autoreleasePoolPop(v31);
                if (v39)
                {
                  goto LABEL_37;
                }

LABEL_34:
                v28 += 104;
                v22 = v30;
                goto LABEL_37;
              }

              objc_autoreleasePoolPop(v31);
              if (v38)
              {
                goto LABEL_34;
              }
            }

LABEL_37:
            v40 = *(v28 + 16);
            *v23 = *v28;
            *(v23 + 16) = v40;
            v41 = *(v28 + 32);
            *(v28 + 32) = 0;
            v42 = *(v23 + 32);
            *(v23 + 32) = v41;

            v43 = *(v28 + 40);
            *(v28 + 40) = 0;
            v44 = *(v23 + 40);
            *(v23 + 40) = v43;

            *(v23 + 48) = *(v28 + 48);
            *(v23 + 56) = *(v28 + 56);
            v45 = *(v28 + 64);
            *(v28 + 64) = 0;
            v46 = *(v23 + 64);
            *(v23 + 64) = v45;

            v47 = *(v28 + 72);
            *(v28 + 72) = 0;
            v48 = *(v23 + 72);
            *(v23 + 72) = v47;

            *(v23 + 80) = *(v28 + 80);
            v49 = *(v28 + 88);
            *(v28 + 88) = 0;
            v50 = *(v23 + 88);
            *(v23 + 88) = v49;

            *(v23 + 96) = *(v28 + 96);
            v23 = v28;
            if (v22 > ((v8 - 2) >> 1))
            {
              if (v28 == v161 - 104)
              {
                v88 = v164;
                *v28 = v163;
                *(v28 + 16) = v88;
                v89 = v165;
                *&v165 = 0;
                v90 = *(v28 + 32);
                *(v28 + 32) = v89;

                v91 = *(&v165 + 1);
                *(&v165 + 1) = 0;
                v92 = *(v28 + 40);
                *(v28 + 40) = v91;

                *(v28 + 48) = v166;
                *(v28 + 56) = v167;
                v93 = v168;
                *&v168 = 0;
                v94 = *(v28 + 64);
                *(v28 + 64) = v93;

                v95 = *(&v168 + 1);
                *(&v168 + 1) = 0;
                v96 = *(v28 + 72);
                *(v28 + 72) = v95;

                *(v28 + 80) = v169;
                v97 = v170;
                v170 = 0;
                v98 = *(v28 + 88);
                *(v28 + 88) = v97;

                *(v28 + 96) = v171;
                goto LABEL_62;
              }

              v51 = *(v161 - 88);
              *v28 = *(v161 - 104);
              *(v28 + 16) = v51;
              v53 = *(v161 - 72);
              v52 = (v161 - 72);
              *v52 = 0;
              v54 = *(v28 + 32);
              *(v28 + 32) = v53;

              v55 = *(v161 - 64);
              *(v161 - 64) = 0;
              v56 = *(v28 + 40);
              *(v28 + 40) = v55;

              *(v28 + 48) = *(v161 - 56);
              *(v28 + 56) = *(v161 - 48);
              v57 = *(v161 - 40);
              *(v161 - 40) = 0;
              v58 = *(v28 + 64);
              *(v28 + 64) = v57;

              v59 = *(v161 - 32);
              *(v161 - 32) = 0;
              v60 = *(v28 + 72);
              *(v28 + 72) = v59;

              v61 = v161 - 24;
              *(v28 + 80) = *(v161 - 24);
              v62 = *(v161 - 16);
              *(v61 + 8) = 0;
              v63 = *(v28 + 88);
              *(v28 + 88) = v62;

              *(v28 + 96) = *(v161 - 8);
              v64 = v164;
              *(v161 - 104) = v163;
              *(v161 - 88) = v64;
              v65 = v165;
              *&v165 = 0;
              v66 = *(v161 - 72);
              *v52 = v65;

              v67 = *(&v165 + 1);
              *(&v165 + 1) = 0;
              v68 = *(v161 - 64);
              *(v161 - 64) = v67;

              *(v161 - 56) = v166;
              *(v161 - 48) = v167;
              v69 = v168;
              *&v168 = 0;
              v70 = *(v161 - 40);
              *(v161 - 40) = v69;

              v71 = *(&v168 + 1);
              *(&v168 + 1) = 0;
              v72 = *(v161 - 32);
              *(v161 - 32) = v71;

              *v61 = v169;
              v73 = v170;
              v170 = 0;
              v74 = *(v161 - 16);
              *(v61 + 8) = v73;

              *(v161 - 8) = v171;
              v75 = v28 + 104 - v160;
              if (v75 < 105)
              {
                goto LABEL_62;
              }

              v76 = objc_autoreleasePoolPush();
              v77 = (0x4EC4EC4EC4EC4EC5 * (v75 >> 3) - 2) >> 1;
              v78 = v160 + 104 * v77;
              v81 = LaunchServices::BindingEvaluation::compareBindings(v162, v78, v28, v79, v80);
              v82 = v162;
              v84 = LaunchServices::BindingEvaluation::isBindingOK(v162, v78, v83);
              v86 = v84;
              if (v81 == 1)
              {
                objc_autoreleasePoolPop(v76);
                if (!v86)
                {
                  goto LABEL_62;
                }

                goto LABEL_47;
              }

              if (v81 == 255)
              {
                if (v84)
                {
                  goto LABEL_43;
                }

LABEL_59:
                objc_autoreleasePoolPop(v76);
                goto LABEL_62;
              }

              if (!v84)
              {
                goto LABEL_59;
              }

LABEL_43:
              v87 = LaunchServices::BindingEvaluation::isBindingOK(v82, v28, v85);
              objc_autoreleasePoolPop(v76);
              if ((v87 & 1) == 0)
              {
                v82 = v162;
LABEL_47:
                v99 = *(v28 + 16);
                *buf = *v28;
                v100 = *(v28 + 32);
                *(v28 + 32) = 0u;
                v173 = v99;
                v174 = v100;
                v175 = *(v28 + 48);
                v176 = *(v28 + 56);
                v101 = *(v28 + 64);
                *(v28 + 64) = 0u;
                v177 = v101;
                v178 = *(v28 + 80);
                v102 = *(v28 + 88);
                *(v28 + 88) = 0;
                v179 = v102;
                v180 = *(v28 + 96);
                while (1)
                {
                  v103 = v78;
                  v104 = *(v78 + 16);
                  *v28 = *v78;
                  *(v28 + 16) = v104;
                  v105 = *(v78 + 32);
                  *(v78 + 32) = 0;
                  v106 = *(v28 + 32);
                  *(v28 + 32) = v105;

                  v107 = *(v78 + 40);
                  *(v78 + 40) = 0;
                  v108 = *(v28 + 40);
                  *(v28 + 40) = v107;

                  *(v28 + 48) = *(v78 + 48);
                  *(v28 + 56) = *(v78 + 56);
                  v109 = *(v78 + 64);
                  *(v78 + 64) = 0;
                  v110 = *(v28 + 64);
                  *(v28 + 64) = v109;

                  v111 = *(v78 + 72);
                  *(v78 + 72) = 0;
                  v112 = *(v28 + 72);
                  *(v28 + 72) = v111;

                  *(v28 + 80) = *(v78 + 80);
                  v113 = *(v78 + 88);
                  *(v78 + 88) = 0;
                  v114 = *(v28 + 88);
                  *(v28 + 88) = v113;

                  *(v28 + 96) = *(v78 + 96);
                  if (!v77)
                  {
                    break;
                  }

                  v115 = objc_autoreleasePoolPush();
                  v77 = (v77 - 1) >> 1;
                  v78 = v160 + 104 * v77;
                  v118 = LaunchServices::BindingEvaluation::compareBindings(v82, v78, buf, v116, v117);
                  v120 = LaunchServices::BindingEvaluation::isBindingOK(v82, v78, v119);
                  v122 = v120;
                  if (v118 == 1)
                  {
                    objc_autoreleasePoolPop(v115);
                    v28 = v103;
                    if ((v122 & 1) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v118 == 255)
                    {
                      if ((v120 & 1) == 0)
                      {
                        goto LABEL_60;
                      }
                    }

                    else if (!v120)
                    {
LABEL_60:
                      objc_autoreleasePoolPop(v115);
                      break;
                    }

                    v123 = LaunchServices::BindingEvaluation::isBindingOK(v82, buf, v121);
                    objc_autoreleasePoolPop(v115);
                    v28 = v103;
                    if (v123)
                    {
                      break;
                    }
                  }
                }

                v124 = v173;
                *v103 = *buf;
                *(v103 + 16) = v124;
                v125 = v174;
                *&v174 = 0;
                v126 = *(v103 + 32);
                *(v103 + 32) = v125;

                v127 = *(&v174 + 1);
                *(&v174 + 1) = 0;
                v128 = *(v103 + 40);
                *(v103 + 40) = v127;

                *(v103 + 48) = v175;
                *(v103 + 56) = v176;
                v129 = v177;
                *&v177 = 0;
                v130 = *(v103 + 64);
                *(v103 + 64) = v129;

                v131 = *(&v177 + 1);
                *(&v177 + 1) = 0;
                v132 = *(v103 + 72);
                *(v103 + 72) = v131;

                *(v103 + 80) = v178;
                v133 = v179;
                v179 = 0;
                v134 = *(v103 + 88);
                *(v103 + 88) = v133;

                *(v103 + 96) = v180;
              }

LABEL_62:

              v161 -= 104;
              if (v8-- <= 2)
              {
                break;
              }

              goto LABEL_26;
            }
          }
        }
      }

      v136 = 0x4EC4EC4EC4EC4EC5 * ((*(v159 + 24) - *(v159 + 23)) >> 3);
      v6 = v157;
      if (v136 != v156)
      {
        v155 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binding count unexpectedly changed from %zu to %zu please file a bug and relate to rdar://126722263", v156, v136];;
        _LSSetCrashMessage(v155);
        abort();
      }
    }

    LaunchServices::BindingEvaluation::ensureBundlePointersInBindings(v6);
    v137 = _LSBindingLog();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
    {
      v138 = *(v159 + 13);
      *buf = 134217984;
      *&buf[4] = v138;
      _os_log_impl(&dword_18162D000, v137, OS_LOG_TYPE_DEBUG, "Truncating a list of bindings to max %lu known-good ones.", buf, 0xCu);
    }

    LaunchServices::BindingEvaluation::logToFile(@"Truncating a list of bindings to max %lu known-good ones.", v139, *(v159 + 13));
    v163 = 0uLL;
    *&v164 = 0;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::reserve(&v163, 0x4EC4EC4EC4EC4EC5 * ((*(v159 + 24) - *(v159 + 23)) >> 3));
    v140 = 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 3);
    *buf = 0u;
    v173 = 0u;
    LODWORD(v174) = 1065353216;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__rehash<true>(buf, v140);
    v142 = *a3;
    v141 = a3[1];
    while (v142 != v141)
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(buf, v142, v142);
      v142 += 26;
    }

    v144 = *(v159 + 23);
    v143 = *(v159 + 24);
    while (v144 != v143)
    {
      if (!std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(buf, v144))
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(buf, v144, v144);
        std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::push_back[abi:nn200100](&v163, v144);
      }

      v144 += 26;
    }

    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vdeallocate(v6);
    *(v159 + 184) = v163;
    *(v159 + 25) = v164;
    *&v164 = 0;
    v163 = 0uLL;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::~__hash_table(buf);
    *buf = &v163;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](buf);
    memset(buf, 0, sizeof(buf));
    *&v173 = 0;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::reserve(buf, 0x4EC4EC4EC4EC4EC5 * ((*(v159 + 24) - *(v159 + 23)) >> 3));
    v147 = *(v159 + 23);
    v146 = *(v159 + 24);
    if (v147 != v146)
    {
      do
      {
        if (LaunchServices::BindingEvaluation::isBindingOK(v159, v147, v145))
        {
          LaunchServices::BindingEvaluation::pushBackBinding(v159, buf, v147);
        }

        v147 = (v147 + 104);
      }

      while ((0x4EC4EC4EC4EC4EC5 * ((*&buf[8] - *buf) >> 3)) < *(v159 + 13) && v147 != v146);
    }

    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vdeallocate(v6);
    *(v159 + 184) = *buf;
    *(v159 + 25) = v173;
    *&v173 = 0;
    memset(buf, 0, sizeof(buf));
    *&v163 = buf;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v163);
    LaunchServices::BindingEvaluation::ensureBundlePointersInBindings(v6);
    if ((*(v159 + 208) & 1) == 0 && ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(v159 + 118) & 2) != 0))
    {
      v151 = 0x4EC4EC4EC4EC4EC5 * ((*(v159 + 24) - *(v159 + 23)) >> 3);
      if (v151 >= 2)
      {
        v152 = v151 - 1;
        v153 = 104;
        do
        {
          LaunchServices::BindingEvaluation::compareBindings(v159, (*(v159 + 23) + v153 - 104), (*(v159 + 23) + v153), v149, v150);
          v153 += 104;
          --v152;
        }

        while (v152);
      }
    }

    result = std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding*>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding*>>(a3, a3[1], *(v159 + 23), *(v159 + 24), 0x4EC4EC4EC4EC4EC5 * ((*(v159 + 24) - *(v159 + 23)) >> 3));
  }

  v154 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1816332B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a19 = &a33;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluation::BindingEligibilityChecker::eligibleToAddWeakBindingForDefaultAppClaims(LaunchServices::BindingEvaluation::BindingEligibilityChecker *this, const LaunchServices::BindingEvaluation::State *a2)
{
  DefaultAppCategoryBeingBound = LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(a2);
  if (!DefaultAppCategoryBeingBound)
  {
    return 1;
  }

  v3 = DefaultAppCategoryBeingBound;
  if (DefaultAppCategoryBeingBound[56] != 1)
  {
    return 1;
  }

  v4 = LaunchServices::EligibilityCache::shared(DefaultAppCategoryBeingBound);
  v5 = *(v3 + 3);

  return LaunchServices::EligibilityCache::eligibleForDomainFailingClosed(v4, v5);
}

uint64_t *LaunchServices::BindingEvaluation::ensureBundlePointersInBindings(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = 0;
    do
    {
      if (!*(v1 + v3 + 8))
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bundle data for bundle %llx was nil binding %zu of %zu; please file a bug and relate to rdar://126722263", *(v1 + v3), 0x4EC4EC4EC4EC4EC5 * (v3 >> 3), 0x4EC4EC4EC4EC4EC5 * ((v2 - v1) >> 3)];;
        _LSSetCrashMessage(v4);
        abort();
      }

      v3 += 104;
    }

    while (v1 + v3 != v2);
  }

  return result;
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
    malloc_zone_free(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, v2);
  }

  return a1;
}

void std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 104;
        std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
    malloc_zone_free(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void LaunchServices::BindingEvaluation::calculateUTI(LSContext *a1, uint64_t a2, id *a3, unint64_t a4, unint64_t a5)
{
  v25 = 0;
  v11 = *(a2 + 16);
  if (v11)
  {
    if (a4 | a5)
    {
      active = _UTGetActiveTypeForCFStringIdentifier(a1->db, v11, &v25);
    }

    else
    {
      active = 0;
    }
  }

  else
  {
    active = *a2;
    if (*a2)
    {
      LaunchServices::BindingEvaluation::logToFile(@"Calculating UTI because we don't have it yet", v10);
      LaunchServices::TypeEvaluator::TypeEvaluator(v24, active);
      if ((*(a2 + 108) & 0x10) != 0)
      {
        LaunchServices::TypeEvaluator::setSniffIfNeeded(v24, 1);
      }

      LaunchServices::TypeEvaluator::evaluateType(v24, &a1->db, 0, &v19);
      if (v23 == 1)
      {
        if (v22 == 1)
        {
          v13 = [active nameWithError:0];
          v14 = LaunchServices::TypeEvaluator::Result::getTypeIdentifier(&v19, a1);
          LaunchServices::BindingEvaluation::logToFile(@"Calculated UTI of file %@ was %@, but sniffed something better: %@", v15, v13, 0, v14);
        }

        active = v20;
        if (v20)
        {
          v25 = v19;
          db = a1->db;
          v17 = v20[3];
          [(_LSDatabase *)db store];
          v18 = _CSStringCopyCFString();
        }

        else
        {
          v18 = v21;
        }

        v11 = v18;
      }

      else
      {
        active = 0;
        v11 = 0;
      }

      if (v23 == 1)
      {
      }
    }

    else
    {
      v11 = 0;
    }
  }

  if (a3)
  {
    objc_storeStrong(a3, v11);
  }

  if (a4)
  {
    *a4 = v25;
  }

  if (a5)
  {
    *a5 = active;
  }
}

void sub_1816336DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, void *a18)
{
  if (a17 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void LaunchServices::BindingEvaluation::runEvaluator(uint64_t a1@<X0>, NSString *a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = (a1 + 8);
  LaunchServices::BindingEvaluation::logToFile(@"Running evaluator %p", a2, a1 + 8);
  if (*(a1 + 96))
  {
    goto LABEL_12;
  }

  v7 = *(a1 + 216);
  if (!v7)
  {
    goto LABEL_12;
  }

  if ((*(a1 + 117) & 2) != 0)
  {
    v9 = 0;
    IsDenylistedForBinding = 0;
LABEL_7:
    if (v9)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 117) & 8) == 0)
    {
      TypeApplication = _UTTypeGetTypeApplication(**a1);
      IsDenylistedForBinding = LaunchServices::BindingEvaluation::conformsTo(a1, TypeApplication, @"com.apple.application", v11);
      goto LABEL_10;
    }

LABEL_12:
    if ((*(a1 + 96) & 1) != 0 || (*(a1 + 116) & 0x400004) != 0x400000 || !LaunchServices::BindingEvaluation::BindingEligibilityChecker::eligibleToAddWeakBindingForDefaultAppClaims(&LaunchServices::BindingEvaluation::BindingEligibilityChecker::shared(void)::checker, a1))
    {
      goto LABEL_30;
    }

    v12 = *(a1 + 216);
    if (v12)
    {
      LODWORD(v74) = 0;
      TagForContentType = LSHandlerPref::GetTagForContentType(**a1, v12, &v74);
      if (!TagForContentType)
      {
        goto LABEL_30;
      }

      HandlerPref = LSHandlerPref::GetHandlerPref(**a1, TagForContentType, v74, 0);
    }

    else
    {
      TagForContentType = *(a1 + 16);
      if (!TagForContentType)
      {
        goto LABEL_30;
      }

      TagForContentType = _LSDatabaseGetStringForCFString(**a1, TagForContentType, 1);
      if (!TagForContentType)
      {
        goto LABEL_30;
      }

      HandlerPref = LSHandlerPref::GetHandlerPref(**a1, TagForContentType, 5, 0);
    }

    if (HandlerPref)
    {
      if (LSHandlerPref::roleHandler(HandlerPref, *(a1 + 112), 0))
      {
        [(_LSDatabase *)**a1 store];
        v14 = _CSStringCopyCFString();
      }

      else
      {
        v14 = 0;
      }

      v15 = [v14 isEqualToString:@"com.apple.coreservices.nohandler$BF6A2FC2-EAE7-4116-BEF3-495EAA007C85"];

      if (v15)
      {
        v16 = *(a1 + 216);
        LaunchServices::BindingEvaluation::logToFile(@"user prefers no handler for : %@ %@", &TagForContentType->isa, v16, *(a1 + 16));
        if (!*v5)
        {
          goto LABEL_34;
        }

        v18 = LaunchServices::BindingEvaluation::addStrongBinding;
        LaunchServices::BindingEvaluation::logToFile(@"still checking for any strong binding preference", v17);
LABEL_33:
        LaunchServices::BindingEvaluation::addAndEvaluate(a1, v18, a3);
        goto LABEL_34;
      }
    }

LABEL_30:
    *(a1 + 208) = 1;
    LaunchServices::BindingEvaluation::logToFile(@"Adding user preferences", &TagForContentType->isa);
    LaunchServices::BindingEvaluation::addAndEvaluate(a1, LaunchServices::BindingEvaluation::addUserPreferences, a3);
    *(a1 + 208) = 0;
    if (*(a1 + 96) == 1)
    {
      v18 = LaunchServices::BindingEvaluation::addBundles;
      LaunchServices::BindingEvaluation::logToFile(@"Adding and sorting bundles", v19);
    }

    else
    {
      LaunchServices::BindingEvaluation::logToFile(@"Adding and sorting claims", v19);
      LaunchServices::BindingEvaluation::addAndEvaluate(a1, LaunchServices::BindingEvaluation::addClaims, a3);
      LaunchServices::BindingEvaluation::logToFile(@"Adding and sorting alternate UTI claims", v20);
      LaunchServices::BindingEvaluation::addAndEvaluate(a1, LaunchServices::BindingEvaluation::addAlternateUTIClaims, a3);
      v18 = LaunchServices::BindingEvaluation::addParentUTIClaims;
      LaunchServices::BindingEvaluation::logToFile(@"Adding and sorting parent UTI claims", v21);
    }

    goto LABEL_33;
  }

  IsDenylistedForBinding = _UTTypeIsDenylistedForBinding(v7);
  v9 = *(a1 + 216) == 0;
  if ((IsDenylistedForBinding & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (!IsDenylistedForBinding)
  {
    goto LABEL_12;
  }

  LaunchServices::BindingEvaluation::logToFile(@"Denylisted type: %@", &TagForContentType->isa, *(a1 + 216));
LABEL_34:
  if (*a3 == a3[1] && (*(a1 + 96) & 1) == 0)
  {
    v22 = *v5;
    if (*v5)
    {
      v23 = _UTTypeGetTypeApplication(**a1);
      if (LaunchServices::BindingEvaluation::conformsTo(a1, v23, @"com.apple.application", v24))
      {
        v25 = _LSBindingLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v22;
          _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEBUG, "Binding application %@ to itself", buf, 0xCu);
        }

        LaunchServices::BindingEvaluation::logToFile(@"Binding application %@ to itself", v26, v22);
        v73 = 0;
        v74 = 0;
        if (!_LSBundleFindWithNode(*a1, v22, &v73, &v74))
        {
          v79 = 0;
          v77 = 0u;
          v78 = 0u;
          *&buf[4] = 0;
          memset(v76, 0, sizeof(v76));
          *buf = v73;
          *&buf[8] = v74;
          objc_storeStrong(&v77 + 1, v22);
          if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(a1 + 118) & 2) != 0)
          {
            v27 = *(&v76[1] + 1);
            *(&v76[1] + 1) = @"Application bound to self";
          }

          *&v76[2] = 4;
          LaunchServices::BindingEvaluation::pushBackBinding(a1, a3, buf);
        }
      }
    }
  }

  v29 = *a3;
  v28 = a3[1];
  v30 = 0x4EC4EC4EC4EC4EC5 * ((v28 - *a3) >> 3);
  v31 = *(a1 + 104);
  if (v30 > v31)
  {
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(a3, v29 + 104 * v31, v28);
    v29 = *a3;
    v28 = a3[1];
    v30 = 0x4EC4EC4EC4EC4EC5 * ((v28 - *a3) >> 3);
  }

  if (v30 >= 2)
  {
    v32 = *(v29 + 24);
    if (v32)
    {
      if ((*(v32 + 8) & 2) != 0)
      {
        std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(a3, v29 + 104, v28);
      }
    }
  }

  if ((*(a1 + 117) & 0x802) != 0)
  {
    if ((atomic_load_explicit(&qword_1ED4452E8, memory_order_acquire) & 1) == 0)
    {
      LaunchServices::BindingEvaluation::runEvaluator();
    }

    v33 = *a3;
    v34 = a3[1];
    if (*a3 != v34)
    {
      do
      {
        if (!*(v33 + 24))
        {
          *buf = 0;
          *&buf[8] = 0;
          LODWORD(v76[0]) = 0;
          memset(v76 + 8, 0, 32);
          v35 = *a1;
          v36 = *(a1 + 16);
          LODWORD(v35) = _LSGetBindingForNodeOrSchemeOrUTI(v35, 0, v36, *(a1 + 216), *v33, -1, 0, _MergedGlobals_0, buf) == 0;

          if (v35)
          {
            v37 = [[_LSBindingForLog alloc] initWithState:a1 binding:v33];
            v38 = [[_LSBindingForLog alloc] initWithState:a1 binding:buf];
            LaunchServices::BindingEvaluation::logToFile(@"Had claimless binding %@, but found a claim-based binding %@ to substitute", v39, v37, v38);

            *(v33 + 16) = v76[0];
            *(v33 + 24) = *(&v76[0] + 1);
          }
        }

        v33 += 104;
      }

      while (v33 != v34);
    }
  }

  if ((*(a1 + 117) & 2) != 0)
  {
    v40 = *a3;
    v41 = a3[1];
    if (*a3 != v41)
    {
      while (1)
      {
        v42 = *(v40 + 24);
        if (!v42 || !*(v42 + 28))
        {
          break;
        }

        v40 += 104;
        if (v40 == v41)
        {
          v40 = a3[1];
          goto LABEL_75;
        }
      }

      v43 = [[_LSBindingForLog alloc] initWithState:a1 binding:v40];
      LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v44, "no icon (required one)", v43);

      if (v40 != v41 && v40 + 104 != v41)
      {
        v45 = (v40 + 200);
        do
        {
          if ((*(a1 + 117) & 2) == 0 || (v46 = *(v45 - 9)) != 0 && *(v46 + 28))
          {
            v47 = *(v45 - 5);
            *v40 = *(v45 - 6);
            *(v40 + 16) = v47;
            v48 = *(v45 - 8);
            *(v45 - 8) = 0;
            v49 = *(v40 + 32);
            *(v40 + 32) = v48;

            v50 = *(v45 - 7);
            *(v45 - 7) = 0;
            v51 = *(v40 + 40);
            *(v40 + 40) = v50;

            *(v40 + 48) = *(v45 - 6);
            *(v40 + 56) = *(v45 - 20);
            v52 = *(v45 - 4);
            *(v45 - 4) = 0;
            v53 = *(v40 + 64);
            *(v40 + 64) = v52;

            v54 = *(v45 - 3);
            *(v45 - 3) = 0;
            v55 = *(v40 + 72);
            *(v40 + 72) = v54;

            *(v40 + 80) = *(v45 - 16);
            v56 = *(v45 - 1);
            *(v45 - 1) = 0;
            v57 = *(v40 + 88);
            *(v40 + 88) = v56;

            *(v40 + 96) = *v45;
            v40 += 104;
          }

          else
          {
            v58 = [[_LSBindingForLog alloc] initWithState:a1 binding:v45 - 24];
            LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v59, "no icon (required one)", v58);
          }

          v60 = v45 + 2;
          v45 += 26;
        }

        while (v60 != v41);
      }
    }

LABEL_75:
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(a3, v40, a3[1]);
  }

  v61 = MEMORY[0x1865D71B0](*(a1 + 176));
  if (!v61 || *a3 == a3[1])
  {
    v63 = 0;
  }

  else
  {
    LaunchServices::BindingEvaluation::BindingResultImpl::BindingResultImpl<std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>>(buf, a1, a3);
    (v61)[2](v61, buf);
    v62 = *&v76[0];
    v63 = v62;
    if (v62)
    {
      v64 = v62;
      std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__assign_with_size[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding const*,LaunchServices::BindingEvaluation::ExtendedBinding const*>(a3, 0, 0, 0);
    }

    else
    {
      std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vdeallocate(a3);
      *a3 = *(v76 + 8);
      a3[2] = *(&v76[1] + 1);
      memset(v76 + 8, 0, 24);
    }

    v74 = v76 + 1;
    *buf = &unk_1EEF62518;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v74);
  }

  if (*a3 == a3[1])
  {
    if (!v63)
    {
      v65 = *(a1 + 224);
      TypeWindowsExecutable = _UTTypeGetTypeWindowsExecutable(**a1);
      v67 = *MEMORY[0x1E696A768];
      if (v65 == TypeWindowsExecutable)
      {
        v68 = -10661;
      }

      else
      {
        v68 = -10814;
      }

      if (v65 == TypeWindowsExecutable)
      {
        v69 = 1970;
      }

      else
      {
        v69 = 1973;
      }

      v63 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v68, 0, "runEvaluator", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", v69);
    }

    if (a2)
    {
      v70 = v63;
      *a2 = v63;
    }
  }

  v71 = *MEMORY[0x1E69E9840];
}

void sub_181634054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(va);
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void LaunchServices::BindingEvaluation::addUserPreferences(void ***this, LaunchServices::BindingEvaluation::State *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluation::addStrongBinding(this, a2);
  if ((*(this + 116) & 4) != 0)
  {
    LaunchServices::BindingEvaluation::logToFile(@"Skipping weak binding due to options", v3);
    goto LABEL_41;
  }

  v4 = this[27];
  if (v4)
  {
    LODWORD(buf[0]) = 0;
    TagForContentType = LSHandlerPref::GetTagForContentType(**this, v4, buf);
    if (TagForContentType)
    {
      HandlerPref = LSHandlerPref::GetHandlerPref(**this, TagForContentType, buf[0], 0);
LABEL_9:
      v10 = HandlerPref;
      goto LABEL_11;
    }
  }

  else
  {
    v8 = this[2];
    if (v8)
    {
      StringForCFString = _LSDatabaseGetStringForCFString(**this, v8, 1);
      if (StringForCFString)
      {
        HandlerPref = LSHandlerPref::GetHandlerPref(**this, StringForCFString, 5, 0);
        goto LABEL_9;
      }
    }
  }

  v10 = 0;
LABEL_11:
  if (LaunchServices::BindingEvaluation::BindingEligibilityChecker::eligibleToAddWeakBindingForDefaultAppClaims(&LaunchServices::BindingEvaluation::BindingEligibilityChecker::shared(void)::checker, this))
  {
    LaunchServices::BindingEvaluation::logToFile(@"Adding weak binding", v11);
    if (v10)
    {
      memset(&v46, 0, sizeof(v46));
      if (LSHandlerPref::roleHandler(v10, *(this + 28), &v46))
      {
        [(_LSDatabase *)**this store];
        v12 = _CSStringCopyCFString();
        v13 = v12;
        if (!v12)
        {
LABEL_40:

          goto LABEL_41;
        }

        LOBYTE(v33) = 0;
        v37 = 0;
        memset(&v46, 0, sizeof(v46));
        memset(&v38, 0, sizeof(v38));
        LaunchServices::BindingEvaluator::CreateWithBundleInfo(v12, 0, 0, 0, &v38, buf);
        v14 = *(this + 29) & 0x80;
        v45 = v14;
        v15 = *this;
        LaunchServices::BindingEvaluator::getBestBinding(&v38, buf);
        std::__optional_storage_base<LSBinding,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LSBinding,false>>(&v33, &v38);
        if (BYTE8(v40) == 1)
        {
        }

        v38 = v46;
        v47 = kLSVersionNumberNull;
        v48 = unk_1817E90C0;
        v16 = _LSVersionNumberCompare(&v38, &v47);
        v18 = v37;
        if (v16)
        {
          if (v37)
          {
            goto LABEL_23;
          }

          v47 = kLSVersionNumberNull;
          v48 = unk_1817E90C0;
          LaunchServices::BindingEvaluator::CreateWithBundleInfo(v13, 0, 0, 0, &v47, &v38);
          LaunchServices::BindingEvaluator::operator=(buf, &v38);
          LaunchServices::BindingEvaluator::~BindingEvaluator(&v38, v19);
          v45 = v14;
          v20 = *this;
          LaunchServices::BindingEvaluator::getBestBinding(&v38, buf);
          std::__optional_storage_base<LSBinding,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LSBinding,false>>(&v33, &v38);
          if (BYTE8(v40) == 1)
          {
          }

          v18 = v37;
        }

        if ((v18 & 1) == 0)
        {
LABEL_38:
          LaunchServices::BindingEvaluator::~BindingEvaluator(buf, v17);
          if (v37 == 1)
          {
          }

          goto LABEL_40;
        }

LABEL_23:
        DefaultAppCategoryBeingBound = LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(this);
        if (!DefaultAppCategoryBeingBound)
        {
          goto LABEL_28;
        }

        *&v47 = 0;
        *(&v47 + 1) = &v47;
        *&v48 = 0x2020000000;
        BYTE8(v48) = 0;
        if (LSGetDefaultAppsClaimUnitIDForBundle(**this, v33))
        {
          v22 = _LSClaimGet(**this);
          if (v22)
          {
            v23 = *([(_LSDatabase *)**this schema]+ 216);
            v24 = **this;
            v25 = *(v22 + 68);
            *v38._opaque = MEMORY[0x1E69E9820];
            *&v38._opaque[8] = 3221225472;
            *&v38._opaque[16] = ___ZN14LaunchServices17BindingEvaluationL31weaklyBoundAppHasRequiredClaimsERKNS0_5StateERK9LSBinding_block_invoke;
            *&v38._opaque[24] = &unk_1E6A1A858;
            *(&v39 + 1) = this;
            *&v40 = DefaultAppCategoryBeingBound;
            *&v39 = &v47;
            _LSBindingListEnumerateEntryWithClass(v24, v25, v23, &v38);
          }
        }

        v26 = *(*(&v47 + 1) + 24);
        _Block_object_dispose(&v47, 8);
        if (v26 == 1)
        {
LABEL_28:
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *&v38._opaque[16] = 0u;
          *v38._opaque = v33;
          *&v38._opaque[8] = v34;
          if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(this + 118) & 2) != 0)
          {
            v27 = v36;
            if (v36)
            {
              v28 = objc_alloc(MEMORY[0x1E696AEC0]);
              v29 = [v28 initWithFormat:@"Weak Binding (%@)", v36];
              v27 = *(&v39 + 1);
            }

            else
            {
              v29 = @"Weak Binding";
            }

            *(&v39 + 1) = v29;
          }

          *&v40 = 3;
          LaunchServices::BindingEvaluation::pushBackBinding(this, this + 23, &v38);
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    v30 = _LSBindingLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEBUG, "Don't add weak binding (ineligible)", buf, 2u);
    }

    LaunchServices::BindingEvaluation::logToFile(@"Don't add weak binding (ineligible)", v31);
  }

LABEL_41:
  LaunchServices::BindingEvaluation::logToFile(@"%llu bindings found", v7, 0x4EC4EC4EC4EC4EC5 * (this[24] - this[23]));
  v32 = *MEMORY[0x1E69E9840];
}

void sub_181634618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose((v42 - 96), 8);
  LaunchServices::BindingEvaluator::~BindingEvaluator(&a41, v44);
  if (a18 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t XCFBufInitWithCFStringRange(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, int a5)
{
  result = 0;
  *(a1 + 28) = 0;
  maxBufLen = 0;
  *a1 = a1 + 28;
  *(a1 + 8) = 0;
  *(a1 + 24) = 127;
  *(a1 + 16) = 0;
  if (a2 && a3 != -1)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(a2))
    {
      return 0;
    }

    if (!a4)
    {
      return 1;
    }

    v21.location = a3;
    v21.length = a4;
    if (a4 == CFStringGetBytes(a2, v21, 0x8000100u, 0, 0, *a1, 127, &maxBufLen))
    {
      v12 = maxBufLen;
      *(a1 + 8) = maxBufLen;
LABEL_11:
      *(*a1 + v12) = 0;
      if (a5)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v17 = *a1;
          do
          {
            v18 = *v17;
            if ((v18 - 65) <= 0x19)
            {
              *v17 = v18 | 0x20;
            }

            ++v17;
            --v16;
          }

          while (v16);
        }
      }

      return 1;
    }

    v22.location = a3;
    v22.length = a4;
    if (CFStringGetBytes(a2, v22, 0x8000100u, 0, 0, 0, 0, &maxBufLen) >= 1)
    {
      v13 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
      *(a1 + 16) = v13;
      *a1 = v13;
      v14 = maxBufLen;
      *(a1 + 24) = maxBufLen;
      v23.location = a3;
      v23.length = a4;
      Bytes = CFStringGetBytes(a2, v23, 0x8000100u, 0, 0, v13, v14, &maxBufLen);
      LODWORD(v12) = maxBufLen;
      *(a1 + 8) = maxBufLen;
      if (Bytes)
      {
        v12 = v12;
        goto LABEL_11;
      }
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      free(v19);
    }

    result = 0;
    *a1 = a1 + 28;
    *(a1 + 8) = 0;
    *(a1 + 24) = 127;
    *(a1 + 16) = 0;
    *(a1 + 28) = 0;
  }

  return result;
}

void **std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::reserve(void **result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x276276276276277)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v2 = result;
    std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::__split_buffer(&v7, a2, 0x4EC4EC4EC4EC4EC5 * ((result[1] - *result) >> 3), result);
    v3 = v2[1];
    v4 = v8 + *v2 - v3;
    std::__uninitialized_allocator_relocate[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*>(v2, *v2, v3, v4);
    v5 = *v2;
    *v2 = v4;
    v6 = v2[2];
    *(v2 + 1) = v9;
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v7 = v5;
    v8 = v5;
    return std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::~__split_buffer(&v7);
  }

  return result;
}

void sub_181634A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 104;
        std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(v1, v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = malloc_default_zone();
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = v6;

    malloc_zone_free(v6, v4);
  }
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding*>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 104 * a5;
        std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__move_range(a1, a2, a1[1], a2 + 104 * a5);
        v17 = v18 + a3;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*,LaunchServices::BindingEvaluation::ExtendedBinding*,LaunchServices::BindingEvaluation::ExtendedBinding*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__move_range(a1, v5, v10, v5 + 104 * a5);
        v17 = v16 + a3;
      }

      std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
    if (v12 > 0x276276276276276)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v13 = a2 - v11;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v12;
    }

    std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::__split_buffer(v20, v15, 0x4EC4EC4EC4EC4EC5 * (v13 >> 3), a1);
    std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::__construct_at_end_with_size<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding*>>(v20, a3, a5);
    v5 = std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__swap_out_circular_buffer(a1, v20, v5);
    std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::~__split_buffer(v20);
  }

  return v5;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
      malloc_zone_free(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, v2);
      v2 = v3;
    }

    while (v3);
  }
}

void _LSDatabaseEnumeratingBindingMap(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1[5];
  }

  v3 = v1;
  _CSStringBindingEnumerate();
}

objc_selector *__LSRECORD_GETTER__<objc_object * {__strong}>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    v9 = CachedPropertyValue;
  }

  else
  {
    v10 = v5;
    v11 = v10;
    v13 = v10 + 16;
    v12 = *(v10 + 2);
    if ((*(v10 + 31) & 0x40) == 0 && !v12)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v10, a2);
    }

    if (v12)
    {
      v14 = v10;
      [(_LSDatabase *)v11[2] store];
      v15 = *(v14 + 14);
      v16 = *(v14 + 6);
      Unit = CSStoreGetUnit();
      v18 = *(v14 + 14);
      v19 = *(v14 + 6);
      MethodImplementation = object_getMethodImplementation();
      v9 = MethodImplementation(v14, a3, v13, v18, v19, Unit);
    }

    else
    {
      v9 = 0;
    }

    LaunchServices::Record::setCachedPropertyValue(v11, a2, v9, v21);
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

void sub_181634F64(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *&,objc_object * const {__strong}&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_18163530C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void _LSDatabaseGetCacheGUIDBytes()
{
  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x1E69E9840];
  bzero(v3, 0xD0uLL);
  _LSDatabaseGetHeader(v1, v3);
  uuid_copy(v0, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void _LSDatabaseGetHeader(_LSDatabase *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (v3)
  {
    store = v3->_store;
  }

  v5 = *(v3 + 12);
  CSStoreGetHeader();
  v6 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_10_0(&dword_18162D000, v7, v8, "Failed to read DB header, generating new one", v9, v10, v11, v12, 0);
  }

  bzero(a2, 0xD0uLL);
}

void ___ZN14LaunchServices17BindingEvaluationL22addBundlesInBindingMapERNS0_5StateE14LSBindingMapIDj_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 & 0xFFFFFFFC;
  if ((a3 & 0xFFFFFFFC) != 0)
  {
    v5 = _LSBundleGet(***(a1 + 32), a3 & 0xFFFFFFFC);
    if (v5)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      *&v10 = v3;
      *(&v10 + 1) = v5;
      v6 = *(a1 + 32);
      if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(v6 + 118) & 2) != 0)
      {
        v7 = _LSDatabaseGetBindingMapDebugName(**v6, *(a1 + 40));
        v8 = [@"Bundle in binding map " stringByAppendingString:{v7, v10, v11, v12}];
        v9 = *(&v12 + 1);
        *(&v12 + 1) = v8;

        v6 = *(a1 + 32);
      }

      *&v13 = 5;
      LaunchServices::BindingEvaluation::pushBackBinding(v6, (v6 + 184), &v10);
    }
  }
}

void *std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::__split_buffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
    v7 = malloc_type_zone_malloc(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, 104 * a2, 0x10E00401500E465uLL);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[104 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[104 * a2];
  return a1;
}

uint64_t LaunchServices::BindingEvaluation::BindingEligibilityChecker::checkBindingIsEligibile(LaunchServices::BindingEvaluation::BindingEligibilityChecker *this, const LaunchServices::BindingEvaluation::State *a2, const LaunchServices::BindingEvaluation::ExtendedBinding *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a2 + 96) & 1) != 0 || (*(a2 + 118))
  {
    result = 1;
  }

  else
  {
    DefaultAppCategoryBeingBound = LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(a2);
    if (!DefaultAppCategoryBeingBound || (result = LaunchServices::BindingEvaluation::BindingEligibilityChecker::isDefaultAppCategoryBindingEligibile(this, a2, DefaultAppCategoryBeingBound, a3), result))
    {
      v8 = *(a3 + 1);
      v9 = *(v8 + 180);
      if ((v9 & 0x2000000) != 0)
      {
        v10 = +[LSEligibilityPredicateEvaluator sharedCachingEligibilityPredicateEvaluator];
        v11 = *a3;
        v12 = *(a3 + 1);
        v13 = **a2;
        v28 = 0;
        v14 = [v10 evaluateBundle:v11 bundleData:v12 database:v13 error:&v28];
        v15 = v28;
        if (v14)
        {
          if (([v14 BOOLValue] & 1) == 0)
          {

LABEL_19:
            result = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v17 = _LSBindingLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *a3;
            *buf = 134218242;
            v30 = v18;
            v31 = 2112;
            v32 = v15;
            _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_ERROR, "Couldn't check eligibility of %llx: %@", buf, 0x16u);
          }
        }

        v8 = *(a3 + 1);
        v9 = *(v8 + 180);
      }

      if ((v9 & 0x4000000) != 0)
      {
        v19 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator];
        v20 = *a3;
        v21 = *(a3 + 1);
        v22 = **a2;
        v27 = 0;
        v23 = [v19 evaluateBundle:v20 bundleData:v21 database:v22 error:&v27];
        v24 = v27;
        if (v23)
        {
          if (([v23 BOOLValue] & 1) == 0)
          {

            goto LABEL_19;
          }
        }

        else
        {
          v25 = _LSBindingLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = *a3;
            *buf = 134218242;
            v30 = v26;
            v31 = 2112;
            v32 = v24;
            _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "Couldn't check eligibility of %llx: %@", buf, 0x16u);
          }
        }

        v8 = *(a3 + 1);
      }

      result = LaunchServices::BindingEvaluation::BindingEligibilityChecker::isBundleEligibleFromFlags(this, *(v8 + 172), *(v8 + 189), *(v8 + 149));
    }
  }

LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void LaunchServices::BindingEvaluation::pushBackBinding(LaunchServices::BindingEvaluation *a1, uint64_t *a2, LaunchServices::BindingEvaluation::State *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 1))
  {
    v9 = _LSBindingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *a3;
      *buf = 134217984;
      v13 = v10;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_FAULT, "pushing back binding for unit %llu that had no bundle data pointer!?", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (!LaunchServices::BindingEvaluation::isBindingOK_NoIO(a1, a3, a3))
  {
LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = [[_LSBindingForLog alloc] initWithState:a1 binding:a3];
  LaunchServices::BindingEvaluation::logToFile(@"+++ %@ %@", v7, v6, *(a3 + 5));

  v8 = *MEMORY[0x1E69E9840];

  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::push_back[abi:nn200100](a2, a3);
}

uint64_t LaunchServices::BindingEvaluation::isBindingOK_NoIO(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, const LaunchServices::BindingEvaluation::ExtendedBinding *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a2 + 99) != 1)
  {
    v6 = *(this + 21);
    v7 = MEMORY[0x1865D71B0](*(this + 20));

    if (v7 && ((v7)[2](v7, *this, a2) & 1) == 0)
    {
      v14 = [v6 UTF8String];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "caller-supplied no-I/O filter";
      }

      v10 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
      LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v16, v15, v10);
    }

    else
    {
      if ((*(this + 117) & 0x80) != 0)
      {
        v5 = 1;
LABEL_17:
        *(a2 + 49) = v5 | 0x100;
        goto LABEL_18;
      }

      v8 = **this;
      v9 = *(a2 + 1);
      if (_LSBundleDataGetUnsupportedFormatFlag())
      {
        v10 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
        LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v11, "unsupported format", v10);
      }

      else
      {
        v19 = *(this + 15);
        v20 = *(this + 16);
        if (v19 == v20)
        {
LABEL_24:
          v21 = *(this + 72);
          v46 = *(this + 56);
          v47 = v21;
          v22 = *(this + 72);
          v44 = *(this + 56);
          v45 = v22;
          v42 = kLSVersionNumberNull;
          v43 = unk_1817E90C0;
          if (_LSVersionNumberCompare(&v44, &v42) && (v44 = v46, v45 = v47, v23 = *(a2 + 1), v24 = *(v23 + 44), v42 = *(v23 + 28), v43 = v24, _LSVersionNumberCompare(&v44, &v42)))
          {
            v25 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
            LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v26, "version does not match", v25);
          }

          else
          {
            v28 = *(a2 + 1);
            v29 = *(v28 + 168);
            if (v29 == 16)
            {
              v32 = *(this + 15);
              v33 = *(this + 16);
              while (v32 != v33)
              {
                if (*v32 == 14)
                {
                  if (v32 != v33)
                  {
                    goto LABEL_46;
                  }

                  break;
                }

                ++v32;
              }

              v35 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
              LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v39, "remote placeholder", v35);
            }

            else if (v29 == 14)
            {
              v30 = *(this + 15);
              v31 = *(this + 16);
              while (v30 != v31)
              {
                if (*v30 == 14)
                {
                  if (v30 != v31)
                  {
                    goto LABEL_46;
                  }

                  break;
                }

                ++v30;
              }

              v35 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
              LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v37, "system placeholder", v35);
            }

            else
            {
              if (((*(v28 + 172) >> 18) & 1) == (*(this + 29) & 0x400u) >> 10)
              {
LABEL_46:
                if ((*(this + 117) & 0x10) != 0 || (v38 = *(a2 + 3)) == 0 || *(v38 + 12))
                {
                  v5 = LaunchServices::BindingEvaluation::checkApplicationIdentifier(this, a2);
                  goto LABEL_17;
                }

                v40 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
                LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v41, "handler rank 'none'", v40);

                goto LABEL_16;
              }

              if ((*(this + 29) & 0x400) != 0)
              {
                v34 = "placeholder";
              }

              else
              {
                v34 = "not placeholder";
              }

              v35 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
              LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v36, v34, v35);
            }
          }

LABEL_16:
          v5 = 0;
          goto LABEL_17;
        }

        while (*v19 != *(*(a2 + 1) + 168))
        {
          if (++v19 == v20)
          {
            goto LABEL_27;
          }
        }

        if (v19 != v20)
        {
          goto LABEL_24;
        }

LABEL_27:
        v10 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
        LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v27, "disallowed bundle class", v10);
      }
    }

    goto LABEL_16;
  }

  if (*(a2 + 98))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v12 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
    LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v13, "(no-I/O) previously found to be not-OK", v12);

    LOBYTE(v5) = *(a2 + 98);
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

uint64_t LaunchServices::BindingEvaluation::checkApplicationIdentifier(void *a1, uint64_t a2)
{
  v2 = a1[11];
  if (v2)
  {
    v5 = [_LSLazyPropertyList lazyPropertyListWithContext:*a1 unit:*(*(a2 + 8) + 140)];
    v6 = [v5 _applicationIdentifier];
    v7 = v6;
    if (v6)
    {
      if ([v6 isEqual:v2])
      {
        v8 = 1;
LABEL_9:

        return v8;
      }

      v9 = [[_LSBindingForLog alloc] initWithState:a1 binding:a2];
      LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v11, "app ID", v9);
    }

    else
    {
      v9 = [[_LSBindingForLog alloc] initWithState:a1 binding:a2];
      LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v10, "no app ID", v9);
    }

    v8 = 0;
    goto LABEL_9;
  }

  return 1;
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__emplace_back_slow_path<LaunchServices::BindingEvaluation::ExtendedBinding const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(a1, a1[1], a2);
    result = v3 + 104;
    a1[1] = v3 + 104;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__emplace_back_slow_path<LaunchServices::BindingEvaluation::ExtendedBinding const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::__split_buffer(&v13, v6, v2, a1);
  std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(a1, v15, a2);
  *&v15 = v15 + 104;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::~__split_buffer(&v13);
  return v12;
}

void sub_1816363FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::~__split_buffer(void **a1)
{
  std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::clear[abi:nn200100](a1);
  v2 = *a1;
  if (*a1)
  {
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
    malloc_zone_free(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, v2);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, a4, v8);
      v8 += 104;
      a4 += 104;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v6);
      v6 += 104;
    }
  }
}

id std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 80) = *(a3 + 80);
  result = *(a3 + 88);
  *(a2 + 88) = result;
  *(a2 + 96) = *(a3 + 96);
  return result;
}

void std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 104;
    std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(v4, i - 104);
  }
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v6)
          {
            if (*(v10 + 4) == v6)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
  v10 = malloc_type_zone_malloc(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, 0x18uLL, 0x10200405AF6BDC9uLL);
  *v10 = 0;
  v10[1] = v6;
  *(v10 + 4) = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__rehash<true>(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *v10 = *v19;
LABEL_38:
    *v19 = v10;
    goto LABEL_39;
  }

  *v10 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(v18 + 8 * v3) = a1 + 16;
  if (*v10)
  {
    v20 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v10;
}

void sub_1816367EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *[],std::__bucket_list_deallocator<LaunchServices::MallocZoneAllocator<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *,LaunchServices::BindingEvaluation::BindingMallocZone>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> **,0>(va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,LaunchServices::MallocZoneAllocator<unsigned int,LaunchServices::BindingEvaluation::BindingMallocZone>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
    v4 = malloc_type_zone_malloc(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, 8 * a2, 0x2004093837F09uLL);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *[],std::__bucket_list_deallocator<LaunchServices::MallocZoneAllocator<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *,LaunchServices::BindingEvaluation::BindingMallocZone>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> **,0>(a1, v4);
    v5 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v5++) = 0;
    }

    while (a2 != v5);
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = v6[1];
      v8 = vcnt_s8(a2);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      *(*a1 + 8 * v7) = a1 + 16;
      v9 = *v6;
      if (*v6)
      {
        do
        {
          v10 = v9[1];
          if (v8.u32[0] > 1uLL)
          {
            if (v10 >= a2)
            {
              v10 %= a2;
            }
          }

          else
          {
            v10 &= a2 - 1;
          }

          if (v10 != v7)
          {
            v11 = *a1;
            if (!*(*a1 + 8 * v10))
            {
              v11[v10] = v6;
              goto LABEL_19;
            }

            *v6 = *v9;
            *v9 = *v11[v10];
            *v11[v10] = v9;
            v9 = v6;
          }

          v10 = v7;
LABEL_19:
          v6 = v9;
          v9 = *v9;
          v7 = v10;
        }

        while (v9);
      }
    }
  }

  else
  {
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *[],std::__bucket_list_deallocator<LaunchServices::MallocZoneAllocator<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *,LaunchServices::BindingEvaluation::BindingMallocZone>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> **,0>(a1, 0);
    *(a1 + 8) = 0;
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *[],std::__bucket_list_deallocator<LaunchServices::MallocZoneAllocator<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> *,LaunchServices::BindingEvaluation::BindingMallocZone>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned int,void *> *> **,0>(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = malloc_default_zone();
    LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = v3;

    malloc_zone_free(v3, v2);
  }
}

void std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
}

uint64_t LaunchServices::BindingEvaluation::isBindingOK(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, const LaunchServices::BindingEvaluation::ExtendedBinding *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(a2 + 97) != 1)
  {
    v6 = *(this + 19);
    v7 = MEMORY[0x1865D71B0](*(this + 18));

    if (v7 && ((v7)[2](v7, *this, a2) & 1) == 0)
    {
      v28 = [v6 UTF8String];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = "caller-supplied filter";
      }

      v30 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
      LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v31, v29, v30);

      goto LABEL_42;
    }

    if (!LaunchServices::BindingEvaluation::isBindingOK_NoIO(this, a2, v8))
    {
LABEL_42:
      v5 = 0;
LABEL_56:
      *(a2 + 48) = v5 | 0x100;
      *(a2 + 49) = v5 | 0x100;
      goto LABEL_57;
    }

    if ((*(this + 117) & 0x80) == 0)
    {
      v9 = *(a2 + 3);
      if (v9)
      {
        v10 = *(v9 + 24);
        v11 = _LSDatabaseGetStringArray(**this);
        v52 = v11;
        v12 = v11;
        if (v11)
        {
          v13 = [v11 count];
          v12 = v52;
          if (v13)
          {
            if (!*(this + 33))
            {
              v14 = [MEMORY[0x1E695DF90] dictionary];
              v15 = *(this + 33);
              *(this + 33) = v14;
            }

            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            obj = v52;
            v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
            if (v16)
            {
              v17 = *v55;
              v18 = &selRef_appStoreReceiptName;
              do
              {
                v19 = 0;
                v20 = v18[88];
                do
                {
                  if (*v55 != v17)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v54 + 1) + 8 * v19);
                  v22 = [*(this + 33) objectForKeyedSubscript:v21];
                  if (v22)
                  {
                    goto LABEL_19;
                  }

                  v23 = MGCopyAnswer();
                  if (!v23 || (objc_opt_respondsToSelector() & 1) == 0)
                  {

                    v22 = 0;
                    goto LABEL_26;
                  }

                  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "BOOLValue")}];
                  [*(this + 33) setObject:v22 forKeyedSubscript:v21];

                  if (v22)
                  {
LABEL_19:
                    if (([v22 BOOLValue] & 1) == 0)
                    {
                      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing capability %@", v21];
                      v33 = v32;
                      v34 = [v32 UTF8String];
                      v35 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
                      LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v36, v34, v35);

                      goto LABEL_42;
                    }
                  }

LABEL_26:

                  ++v19;
                }

                while (v16 != v19);
                v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
                v18 = &selRef_appStoreReceiptName;
              }

              while (v16);
            }

            v12 = v52;
          }
        }
      }

      if ((*(this + 96) != 1 || *(this + 97) == 1) && (*(this + 118) & 1) == 0)
      {
        v24 = *(a2 + 3);
        if (!v24 || (*(v24 + 9) & 1) == 0)
        {
          if (*(*(a2 + 1) + 12))
          {
            [(_LSDatabase *)**this store];
            v25 = _CSStringCopyCFString();
          }

          else
          {
            v25 = 0;
          }

          v37 = +[LSApplicationRestrictionsManager sharedInstance];
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a2 + 1) + 420)];
          v39 = [(LSApplicationRestrictionsManager *)v37 isRatingAllowed:v38 forBundleIdentifier:v25];

          if (!v39)
          {
            v42 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
            LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v44, "restricted due to rating", v42);
            goto LABEL_49;
          }

          if (v25)
          {
            v40 = +[LSApplicationRestrictionsManager sharedInstance];
            v41 = [(LSApplicationRestrictionsManager *)v40 isApplicationRestricted:v25 checkFlags:*(*(a2 + 1) + 172)];

            if (v41)
            {
              v42 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
              LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v43, "restricted by Managed Configuration", v42);
LABEL_49:

              goto LABEL_42;
            }
          }
        }
      }

      if ((LaunchServices::BindingEvaluation::BindingEligibilityChecker::checkBindingIsEligibile(&LaunchServices::BindingEvaluation::BindingEligibilityChecker::shared(void)::checker, this, a2) & 1) == 0)
      {
        v48 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
        LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v49, "not eligible", v48);

        goto LABEL_42;
      }

      if (*(a2 + 3))
      {
        v45 = *(a2 + 1);
        if (v45)
        {
          if ((*(v45 + 191) & 0x10) != 0)
          {
            v50 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
            LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v51, "hidden by app protection", v50);

            goto LABEL_42;
          }
        }
      }
    }

    v5 = 1;
    goto LABEL_56;
  }

  if (*(a2 + 96))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v26 = [[_LSBindingForLog alloc] initWithState:this binding:a2];
    LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v27, "previously found to be not-OK", v26);

    LOBYTE(v5) = *(a2 + 96);
  }

LABEL_57:
  v46 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void *std::__split_buffer<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone> &>::__construct_at_end_with_size<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding*>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 104 * a3;
    do
    {
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      *(v4 + 40) = v8;
      *(v4 + 48) = v9;
      *(v4 + 56) = *(a2 + 56);
      *(v4 + 64) = *(a2 + 64);
      *(v4 + 72) = *(a2 + 72);
      *(v4 + 80) = *(a2 + 80);
      result = *(a2 + 88);
      *(v4 + 88) = result;
      *(v4 + 96) = *(a2 + 96);
      v4 += 104;
      a2 += 104;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::optional<LSBinding>::operator=[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding const&,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  if (v4 == 1)
  {
    objc_storeStrong((a1 + 32), *(a2 + 32));
    objc_storeStrong((a1 + 40), *(a2 + 40));
    v6 = *(a2 + 48);
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 48);
    *(a1 + 56) = 1;
  }

  *(a1 + 48) = v6;
  return a1;
}

uint64_t _LSBundleCopyOrCheckNode(void *a1, unsigned int a2, int a3, int a4, void **a5)
{
  *&v46[5] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v42 = 0;
  if (a5)
  {
    v10 = *a5;
    *a5 = 0;
  }

  v11 = _LSBundleGet(v9, a2);
  v12 = v11;
  if (v11 && (v13 = *(v11 + 4), (v14 = _LSContainerGet(v9)) != 0))
  {
    v15 = _LSContainerCheckState(v9, v13, v14, &v42 + 1, 0);
    if (!a4 || (v16 = 0, v17 = 4294967261, !v15) && HIBYTE(v42) == 1)
    {
      v41 = 0;
      v16 = _LSBundleCreateNode(v9, a2, a4 != 0, &v42, &v41);
      v18 = v41;
      v19 = v18;
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = _LSGetOSStatusFromNSError(v18);
        v20 = _LSDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v44 = "_LSBundleCopyOrCheckNode";
          v45 = 1026;
          *v46 = a2;
          v46[2] = 1024;
          *&v46[3] = v17;
          _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "%s: cached node not found, _LSBundleCreateNode for bundleID %{public}u returned %d", buf, 0x18u);
        }
      }

      if (a4 && !v17 && v42 == 1)
      {
        v21 = _LSDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v44 = "_LSBundleCopyOrCheckNode";
          v45 = 2112;
          *v46 = v16;
          _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "%s: cached node not found, registering new node %@", buf, 0x16u);
        }

        v40 = 0;
        v22 = _LSRegisterBundleNode(0, v16, 1u, 0, &v40);
        v23 = v40;
        if (!v22)
        {
          v24 = _LSDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            _LSBundleCopyOrCheckNode(v16, v23, v24);
          }
        }
      }

      if (v16)
      {
        v25 = a5 != 0;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        if (a3)
        {
          v26 = *(v12 + 464);
          v27 = v9;
          [(_LSDatabase *)v9 store];
          v28 = _CSStringCopyCFString();
          v29 = v9;
          [(_LSDatabase *)v9 store];
          v30 = _CSStringCopyCFString();
          v31 = v30;
          v17 = 4294957797;
          if (v28 && v30)
          {
            v32 = [v28 stringByAppendingString:v30];
            if (v32)
            {
              v39 = 0;
              v33 = [v16 childNodeWithRelativePath:v32 flags:1 error:&v39];
              v34 = v39;
              v35 = *a5;
              *a5 = v33;

              if (*a5)
              {
                v17 = 0;
              }

              else
              {
                v17 = _LSGetOSStatusFromNSError(v34);
              }
            }

            else
            {
              v17 = 4294967255;
            }
          }
        }

        else
        {
          v36 = v16;
          v28 = *a5;
          *a5 = v36;
        }
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 4294956479;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _LSContainerGet(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = *([(_LSDatabase *)v1 schema]+ 1580);
  Unit = CSStoreGetUnit();

  return Unit;
}

uint64_t _LSContainerCheckState(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  v11 = 4294967246;
  if (v9 && a2)
  {
    if (!a3)
    {
      a3 = _LSContainerGet(v9);
      if (!a3)
      {
        v11 = 4294967261;
        goto LABEL_14;
      }
    }

    if (*(a3 + 2))
    {
      v12 = *a3;
      v15 = *(a3 + 16);
      v14 = v12;
    }

    else
    {
      v11 = _LSUpdateContainerState(v10, a2, &v14);
      if (v11)
      {
        goto LABEL_14;
      }
    }

    if (a4)
    {
      *a4 = BYTE2(v14);
    }

    v11 = 0;
    if (a5)
    {
      *a5 = *(&v14 + 4);
    }
  }

LABEL_14:

  return v11;
}

id _LSAliasGet(void *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    [(_LSDatabase *)v3 store];
    v5 = *([(_LSDatabase *)v4 schema]+ 1584);
    Unit = CSStoreGetUnit();
    if (Unit)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:Unit length:0 freeWhenDone:0];
      Unit = v7;
      if (v7)
      {
        if ([v7 length])
        {
          v8 = _LSDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v12 = Unit;
            v13 = 2048;
            v14 = [Unit length];
            v15 = 2048;
            v16 = 0;
            _os_log_error_impl(&dword_18162D000, v8, OS_LOG_TYPE_ERROR, "bad alias at %p, size %ld, CSStore size %lu\n", buf, 0x20u);
          }
        }

        else
        {
          if ([Unit length] <= 0x2000)
          {
            goto LABEL_12;
          }

          v8 = _LSDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            _LSAliasGet_cold_1(Unit, buf, [Unit length], v8);
          }
        }
      }
    }
  }

  else
  {
    Unit = 0;
  }

LABEL_12:

  v9 = *MEMORY[0x1E69E9840];

  return Unit;
}

void _LSPersistentIdentifierDataMake(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
  *(a4 + 4) = a3;
  *(a4 + 8) = a2;
  v4 = *a1;
  _LSDatabaseGetCacheGUIDBytes();
}

void *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t __LSRECORD_GETTER__<unsigned char>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    v9 = [CachedPropertyValue unsignedCharValue];
  }

  else
  {
    v10 = v5;
    v11 = v10;
    v13 = v10 + 16;
    v12 = *(v10 + 2);
    if ((*(v10 + 31) & 0x40) == 0 && !v12)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v10, a2);
    }

    if (v12)
    {
      v14 = v10;
      [(_LSDatabase *)v11[2] store];
      v15 = *(v14 + 14);
      v16 = *(v14 + 6);
      Unit = CSStoreGetUnit();
      v18 = *(v14 + 14);
      v19 = *(v14 + 6);
      MethodImplementation = object_getMethodImplementation();
      v9 = MethodImplementation(v14, a3, v13, v18, v19, Unit);
    }

    else
    {
      v9 = 0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v9];
    LaunchServices::Record::setCachedPropertyValue(v11, a2, v21, v22);
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

void sub_181637D8C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t _LSContextInit(id *a1)
{
  IsCurrentThreadInLSContextInitReference = getIsCurrentThreadInLSContextInitReference();
  ++*IsCurrentThreadInLSContextInitReference;
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = 0;
  LOBYTE(a1) = _LSContextInitCommon(a1, v3, 0, &v8);
  v4 = v8;

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = _LSGetOSStatusFromNSError(v4);
  }

  v6 = getIsCurrentThreadInLSContextInitReference();
  --*v6;

  return v5;
}

pthread_mutex_t *_LSContextDestroy(void **a1)
{
  v1 = *a1;
  *a1 = 0;

  if (_LSDatabaseGetNoServerLock::once != -1)
  {
    _LSContextDestroy_cold_1();
  }

  result = _LSDatabaseGetNoServerLock::result;
  if (_LSDatabaseGetNoServerLock::result)
  {

    return pthread_mutex_unlock(result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id _LSDatabaseGetCacheGUID(_LSDatabase *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  _LSDatabaseGetHeader(a1, v4);
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v4[11] + 8];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t _LSDatabaseGetSequenceNumber(_LSDatabase *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  _LSDatabaseGetHeader(a1, v3);
  result = v4;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:nn200100]((a1 + 1), 16);
  return a1;
}

void sub_181638228(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1865D6220](v1);
  _Unwind_Resume(a1);
}

id _LSPlistLookUpCompactedStringByIndex(unint64_t a1)
{
  if (_LSPlistLookUpCompactedStringByIndex(unsigned long)::once != -1)
  {
    _LSPlistLookUpCompactedStringByIndex();
  }

  if ([_LSPlistLookUpCompactedStringByIndex(unsigned long)::strings count] <= a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [_LSPlistLookUpCompactedStringByIndex(unsigned long)::strings objectAtIndexedSubscript:a1];
  }

  return v2;
}

uint64_t _LSPlistCreateTransformed(void *a1, uint64_t a2, _BYTE *a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL25_LSPlistCreateTransformedP12NSDictionaryIP8NSStringP11objc_objectEPFS1_S1_PbES6__block_invoke;
  v11[3] = &unk_1E6A1D588;
  v13 = &v15;
  v14 = a2;
  v7 = v6;
  v12 = v7;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = [v7 copy];

  if (a3)
  {
    if (*a3)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(v16 + 24);
    }

    *a3 = v9 & 1;
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_1816383E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSPlistLookUpIndexOfCompactedString(NSString *a1)
{
  if (_LSPlistLookUpIndexOfCompactedString(NSString *)::once != -1)
  {
    _LSPlistLookUpIndexOfCompactedString();
  }

  v2 = [_LSPlistLookUpIndexOfCompactedString(NSString *)::indexes objectForKeyedSubscript:a1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

id _LSPlistGetCommonStrings(void)
{
  if (_LSPlistGetCommonStrings(void)::once != -1)
  {
    _LSPlistGetCommonStrings();
  }

  v1 = _LSPlistGetCommonStrings(void)::result;

  return v1;
}

void *_LSPlistDataGetHint(void *a1)
{
  v1 = a1;
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _LSPlistDataGetHint_cold_1(v1, v2);
  }

  if (v1)
  {
    v3 = objc_autoreleasePoolPush();
    v10 = 0;
    v4 = _LSPlistGetSubdataForFCF(v1, &v10);

    v5 = *MEMORY[0x1E695E480];
    v6 = _CFPropertyListCopyTopLevelKeys();
    if (v6)
    {
      v7 = [_LSPlistHint alloc];
      v8 = [(_LSPlistHint *)v7 initWithKeys:v6 compacted:v10];
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v8 = 0;
    v4 = 0;
  }

  return v8;
}

NSUInteger _LSPlistDataIsBinary(NSData *a1, BOOL *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [(NSData *)a1 length];
  if (result < 0xA)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = v6;
    goto LABEL_12;
  }

  result = [(NSData *)a1 getBytes:&v8 length:10];
  v6 = v8 == 0x696C706268636E6CLL && v9 == 29811;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

id _LSPlistDataGetValueForKey(NSData *a1, uint64_t a2, id *a3)
{
  v3 = 0;
  v9 = a2;
  if (a1 && a2)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v9 count:1];
    v7 = _LSPlistDataGetValuesForKeys(a1, v6, a3);
    v3 = [v7 objectForKeyedSubscript:v9];
  }

  return v3;
}

id _LSPlistDataGetValuesForKeys(NSData *a1, void *a2, id *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v51 = a2;
  v49 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v51, "count")}];
  if (!a1)
  {
    v3 = v51;
    goto LABEL_58;
  }

  v3 = v51;
  if (!v51)
  {
    goto LABEL_58;
  }

  context = objc_autoreleasePoolPush();
  v57 = 0;
  _LSPlistDataIsBinary(a1, &v57);
  if (a3)
  {
    v29 = v57;
    v54 = [(_LSPlistHint *)a3 completeDictionary];
    if (v54)
    {
      v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v51, "count")}];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v31 = v51;
      v32 = [v31 countByEnumeratingWithState:&v58 objects:buf count:16];
      if (v32)
      {
        v33 = *v59;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v59 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v58 + 1) + 8 * i);
            v36 = [v54 objectForKeyedSubscript:v35];
            [v30 setObject:v36 forKeyedSubscript:v35];
          }

          v32 = [v31 countByEnumeratingWithState:&v58 objects:buf count:16];
        }

        while (v32);
      }

      v3 = 0;
      v37 = 0;
      goto LABEL_53;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v51;
    v37 = 0;
    v30 = 0;
    v40 = [obj countByEnumeratingWithState:&v58 objects:buf count:16];
    if (!v40)
    {
LABEL_78:

      if ([v37 count])
      {
        v47 = [obj mutableCopy];
        v3 = v47;
        if (v37)
        {
          [v47 minusSet:v37];
        }

        if (!v29)
        {
          [v3 intersectSet:a3[1]];
        }
      }

      else
      {
        v3 = obj;
      }

LABEL_53:

      if (v30)
      {
        [v49 addEntriesFromDictionary:v30];
      }

      if (!v3)
      {
        goto LABEL_56;
      }

      goto LABEL_5;
    }

    v41 = *v59;
LABEL_63:
    v42 = 0;
    while (1)
    {
      if (*v59 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v58 + 1) + 8 * v42);
      v44 = v43;
      v45 = v43;
      if (v29)
      {
        v45 = _LSPlistCompactString(v43, 0);
      }

      v46 = [(_LSPlistHint *)a3 cachedValueForKey:v45];
      if (v46)
      {
        break;
      }

      if (([a3[1] containsObject:v45] & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_76:

      if (v40 == ++v42)
      {
        v40 = [obj countByEnumeratingWithState:&v58 objects:buf count:16];
        if (!v40)
        {
          goto LABEL_78;
        }

        goto LABEL_63;
      }
    }

    if (!v30)
    {
      v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(obj, "count")}];
    }

    [v30 setObject:v46 forKeyedSubscript:v44];
LABEL_73:
    if (!v37)
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    [v37 addObject:v44];
    goto LABEL_76;
  }

  v3 = v51;
LABEL_5:
  if ([v3 count])
  {
    if (_NSIsNSString())
    {
      if ([v3 containsString:@":"])
      {
LABEL_39:
        v24 = objc_autoreleasePoolPush();
        v25 = _LSPlistRestore(a1);
        v26 = [v3 allObjects];
        v18 = [v25 dictionaryWithValuesForKeys:v26];

        objc_autoreleasePoolPop(v24);
        v21 = _LSDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v27 = [v3 allObjects];
          v28 = [v27 componentsJoinedByString:{@", "}];
          _LSPlistDataGetValuesForKeys_cold_2(v28, buf, v21, v27);
        }

LABEL_41:

        if (v18)
        {
          [v49 addEntriesFromDictionary:v18];
          if (a3)
          {
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = ___LSPlistDataGetValuesForKeys_block_invoke;
            v55[3] = &unk_1E6A1D560;
            v56 = v57;
            v55[4] = a3;
            [v18 enumerateKeysAndObjectsUsingBlock:v55];
          }
        }

        goto LABEL_57;
      }
    }

    else if (_NSIsNSSet())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v58 objects:buf count:16];
      if (v5)
      {
        v6 = *v59;
        while (2)
        {
          for (j = 0; j != v5; ++j)
          {
            if (*v59 != v6)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v58 + 1) + 8 * j) containsString:@":"])
            {

              goto LABEL_39;
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v58 objects:buf count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }

    v63 = 0;
    v62 = 0;
    v8 = _LSPlistGetSubdataForFCF(a1, &v62);
    if (v62)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v58 objects:buf count:16];
      if (v11)
      {
        v12 = *v59;
        do
        {
          for (k = 0; k != v11; ++k)
          {
            if (*v59 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = _LSPlistCompactString(*(*(&v58 + 1) + 8 * k), 0);
            [v9 addObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v58 objects:buf count:16];
        }

        while (v11);
      }

      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    v16 = *MEMORY[0x1E695E480];
    if (_CFPropertyListCreateFiltered() && (_NSIsNSDictionary() & 1) == 0)
    {
      v17 = v63;
      v63 = 0;
    }

    v18 = v63;
    if (v63 && v62)
    {
      Transformed = _LSPlistCreateTransformed(v63, _LSPlistRestoreString, 0);
      v20 = v63;
      v63 = Transformed;

      v18 = v63;
    }

    v63 = 0;

    v21 = _LSDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v3 allObjects];
      v23 = [v22 componentsJoinedByString:{@", "}];
      _LSPlistDataGetValuesForKeys_cold_1(v23, buf, v21, v22);
    }

    goto LABEL_41;
  }

LABEL_56:
  v18 = 0;
LABEL_57:

  objc_autoreleasePoolPop(context);
LABEL_58:

  v38 = *MEMORY[0x1E69E9840];

  return v49;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t result, unsigned int a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2048;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_0_16()
{

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

NSString *_LSPlistCompactString(NSString *a1, BOOL *a2)
{
  v4 = [(NSString *)a1 length];
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCharacters:&_LSPlistEscapeCharacter length:1];
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_14:
    v7 = a1;
    goto LABEL_15;
  }

  if ([(NSString *)a1 characterAtIndex:0]== 8 || _LSPlistLookUpIndexOfCompactedString(a1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AD60] stringWithCapacity:{-[NSString length](a1, "length") + 1}];
    v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&_LSPlistEscapeCharacter length:1];
    [v5 appendString:v8];

    [v5 appendString:a1];
    v9 = [v5 copy];
  }

  else
  {
    v5 = _LSPlistGetCommonStrings();
    v6 = [v5 indexOfObject:a1];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v9 = _LSPlistLookUpCompactedStringByIndex(v6);
  }

  v7 = v9;
LABEL_9:

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (a2 && v7 != a1)
  {
    *a2 = 1;
  }

LABEL_15:

  return v7;
}

void std::allocator<os_eligibility_answer_t>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

id _LSDefaultLog()
{
  if (_LSDefaultLog_onceToken != -1)
  {
    _LSDefaultLog_cold_1();
  }

  v1 = _LSDefaultLog_log;

  return v1;
}

NSData *_LSPlistGetSubdataForFCF(NSData *a1, BOOL *a2)
{
  v6 = 0;
  _LSPlistDataIsBinary(a1, &v6);
  if (!v6)
  {
    v4 = a1;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:-[NSData bytes](a1 length:"bytes") + 4 freeWhenDone:{-[NSData length](a1, "length") - 4, 0}];
  if (a2)
  {
LABEL_5:
    *a2 = v6;
  }

LABEL_6:

  return v4;
}

BOOL _LSGetNSErrorFromOSStatusImpl(int a1, void *a2, void *a3, const char *a4, char *a5, uint64_t a6)
{
  v11 = a3;
  if (a1 && a2)
  {
    v12 = a1;
    if ((a1 + 3278) <= 0x4E)
    {
      v13 = MEMORY[0x1E696A798];
    }

    else
    {
      v13 = MEMORY[0x1E696A768];
    }

    if ((a1 + 3278) <= 0x4E)
    {
      v12 = (-3200 - a1);
    }

    if ((a1 - 100000) > 0x3E7)
    {
      v14 = v12;
    }

    else
    {
      v13 = MEMORY[0x1E696A798];
      v14 = (a1 - 100000);
    }

    v15 = _LSMakeNSErrorImpl(*v13, v14, v11, a4, a5, a6);
    *a2 = v15;
  }

  return a1 == 0;
}

id _LSPlistGet(void *a1, unsigned int a2)
{
  DataWithUnitNoCopy = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    [(_LSDatabase *)a1 store];
    v5 = *([(_LSDatabase *)a1 schema]+ 1600);
    DataWithUnitNoCopy = _CSStoreCreateDataWithUnitNoCopy();
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218496;
      v10 = DataWithUnitNoCopy;
      v11 = 2048;
      v12 = a2;
      v13 = 2048;
      v14 = a1;
      _os_log_debug_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEBUG, "Got plist data %p for unit %llx from database %p", &v9, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return DataWithUnitNoCopy;
}

id _LSDatabaseGetStringArray(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = v1;
  if (v1)
  {
    v4 = v1[5];
  }

  v5 = [v2 initWithCapacity:_CSArrayGetCount()];
  v6 = v1;
  if (v1)
  {
    v7 = v1[5];
  }

  v9 = v1;
  v10 = v5;
  _CSArrayEnumerateAllValues();

  return v10;
}

id XNSArrayByMappingBlock(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        [v5 addObject:{v10, v13}];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

id computeIdentityBookmark(LSApplicationRecord *a1)
{
  v1 = a1;
  v2 = [(LSBundleRecord *)v1 bundleIdentifier];
  [(LSBundleRecord *)v1 URL];

  return v2;
}

id computeIdentityString(LSApplicationRecord *a1, _LSPersonaWithAttributes *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(LSBundleRecord *)v3 bundleIdentifier];
  v6 = [(LSBundleRecord *)v3 URL];
  v8 = computeIdentityString(v5, v4, v7);

  return v8;
}

id computeIdentityString(NSString *a1, NSURL *a2, _LSPersonaWithAttributes *a3)
{
  v4 = a1;
  v5 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{v:%d, ", 2];
  if (v5)
  {
    v7 = [(_LSPersonaWithAttributes *)v5 personaUniqueString];
    v8 = [v6 stringByAppendingFormat:@"p:%@, pt: %lu, ", v7, -[_LSPersonaWithAttributes personaType](v5)];

    v6 = v8;
  }

  if (v4)
  {
    v16 = 0;
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:4 error:&v16];
    v10 = v16;
    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    }

    else
    {
      v12 = _LSDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        computeIdentityString(v10, v12);
      }

      v11 = @"<ERROR>";
    }

    v13 = [v6 stringByAppendingFormat:@"b:%@", v11];

    v6 = v13;
  }

  else
  {
    v10 = 0;
  }

  v14 = [v6 stringByAppendingString:@"}"];

  return v14;
}

uint64_t std::stringbuf::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1865D61E0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_18163A8B0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t __LSRECORD_GETTER__<LSBundleMoreFlags>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  v24 = 0;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    [CachedPropertyValue getBytes:&v24 length:4];
  }

  else
  {
    v9 = v5;
    v10 = v9;
    v12 = v9 + 16;
    v11 = *(v9 + 2);
    if ((*(v9 + 31) & 0x40) == 0 && !v11)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v9, a2);
    }

    if (v11)
    {
      v13 = v9;
      [(_LSDatabase *)v10[2] store];
      v14 = *(v13 + 14);
      v15 = *(v13 + 6);
      Unit = CSStoreGetUnit();
      v17 = *(v13 + 14);
      v18 = *(v13 + 6);
      MethodImplementation = object_getMethodImplementation();
      v24 = MethodImplementation(v13, a3, v12, v17, v18, Unit);
    }

    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v24 length:4];
    LaunchServices::Record::setCachedPropertyValue(v10, a2, v20, v21);
  }

  os_unfair_recursive_lock_unlock();

  v22 = v24;
  return v22;
}

void sub_18163AAF4(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void _LSBundleDisplayNameContextEnumerate(void *a1)
{
  v1 = a1;
  v3 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  [v2 appendString:*MEMORY[0x1E695E120]];
  [v2 appendString:@"#"];
  [v2 appendString:@"Car"];
  v1[2](v1, 0, @"Car", v2, &v3);
}

uint64_t LaunchServices::LocalizedString::Get(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v2 = this;
  if (!v2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static const LocalizedString *LaunchServices::LocalizedString::Get(_LSDatabase *__strong _Nonnull, _LSLocalizedStringID)"}];
    [v6 handleFailureInFunction:v7 file:@"LSLocalizedString.mm" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  [(_LSDatabase *)v2 store];
  v3 = *([(_LSDatabase *)v2 schema]+ 1604);
  Unit = CSStoreGetUnit();

  return Unit;
}

void _LSEnumerateSliceMask(unsigned __int16 a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = 0;
  do
  {
    if ((*(&_LSEnumerateSliceMask::flagsToTypes + v4) & a1) != 0)
    {
      v3[2](v3, *(&_LSEnumerateSliceMask::flagsToTypes + v4 + 4), &v5);
      if (v5)
      {
        break;
      }
    }

    v4 += 12;
  }

  while (v4 != 192);
}

void ___ZL33_LSBundleCopyArchitectures_CommonPK12LSBundleDataP7NSArrayIP8NSStringE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::allocator<os_eligibility_answer_t>::allocate_at_least[abi:nn200100]((v3 + 6), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = v3[6];
    v14 = v3[7] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = v3[6];
    v3[6] = v15;
    v3[7] = v6;
    v3[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  v3[7] = v6;
}

uint64_t _LSGetCPUType()
{
  if (_LSGetCPUType::once != -1)
  {
    _LSGetCPUType_cold_1();
  }

  return _LSGetCPUType::type;
}

double _LSGetCurrentSystemVersion@<D0>(_OWORD *a1@<X8>)
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  result = *&_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion;
  v3 = *algn_1ED444F90;
  *a1 = _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion;
  a1[1] = v3;
  return result;
}

uint64_t __LSRECORD_GETTER__<BOOL>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    if (*MEMORY[0x1E695E4D0] == CachedPropertyValue)
    {
      v9 = 1;
    }

    else if (*MEMORY[0x1E695E4C0] == CachedPropertyValue)
    {
      v9 = 0;
    }

    else
    {
      v9 = [CachedPropertyValue BOOLValue];
    }
  }

  else
  {
    v10 = v5;
    v11 = v10;
    v13 = v10 + 16;
    v12 = *(v10 + 2);
    if ((*(v10 + 31) & 0x40) == 0 && !v12)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v10, a2);
    }

    if (v12)
    {
      v14 = v10;
      [(_LSDatabase *)v11[2] store];
      v15 = *(v14 + 14);
      v16 = *(v14 + 6);
      Unit = CSStoreGetUnit();
      v18 = *(v14 + 14);
      v19 = *(v14 + 6);
      MethodImplementation = object_getMethodImplementation();
      v9 = MethodImplementation(v14, a3, v13, v18, v19, Unit);
    }

    else
    {
      v9 = 0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    LaunchServices::Record::setCachedPropertyValue(v11, a2, v21, v22);
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

void sub_18163B278(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t __LSRECORD_GETTER__<unsigned int>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    v9 = [CachedPropertyValue unsignedIntValue];
  }

  else
  {
    v10 = v5;
    v11 = v10;
    v13 = v10 + 16;
    v12 = *(v10 + 2);
    if ((*(v10 + 31) & 0x40) == 0 && !v12)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v10, a2);
    }

    if (v12)
    {
      v14 = v10;
      [(_LSDatabase *)v11[2] store];
      v15 = *(v14 + 14);
      v16 = *(v14 + 6);
      Unit = CSStoreGetUnit();
      v18 = *(v14 + 14);
      v19 = *(v14 + 6);
      MethodImplementation = object_getMethodImplementation();
      v9 = MethodImplementation(v14, a3, v13, v18, v19, Unit);
    }

    else
    {
      v9 = 0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
    LaunchServices::Record::setCachedPropertyValue(v11, a2, v21, v22);
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

void sub_18163B718(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

NSString *_LSPlistRestoreString(NSString *a1, BOOL *a2)
{
  v4 = [(NSString *)a1 length];
  if (!a1 || !v4)
  {
    goto LABEL_14;
  }

  if ([(NSString *)a1 characterAtIndex:0]== 8)
  {
    v5 = [(NSString *)a1 substringFromIndex:1];
    if (!v5)
    {
LABEL_14:
      v5 = a1;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = _LSPlistLookUpIndexOfCompactedString(a1);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = _LSPlistGetCommonStrings();
    if (v7 >= [v8 count])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v8 objectAtIndexedSubscript:v7];
    }

    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (a2 && v5 != a1)
  {
    *a2 = 1;
  }

LABEL_15:

  return v5;
}

void ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = (*(a1 + 48))(v5, *(*(a1 + 40) + 8) + 24);

  if (_NSIsNSString())
  {
    v7 = (*(a1 + 48))(v6, *(*(a1 + 40) + 8) + 24);

    v6 = v7;
  }

  [*(a1 + 32) setObject:v6 forKey:v8];
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_18163BAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id _LSBundleGetPreferredLaunchArchitecture(void *a1, int a2)
{
  v3 = a1;
  v4 = _LSBundleGet(v3, a2);
  v5 = _LSBundleCopyArchitecturesValidOnCurrentSystem(v3, a2);
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    if ([(__CFArray *)v5 count])
    {
      v7 = [(__CFArray *)v6 objectAtIndexedSubscript:0];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

const __CFArray *_LSBundleCopyArchitecturesValidOnCurrentSystem(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = _LSBundleGet(v3, a2);
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = _LSBundleCopyArchitectures_Common(v4);
    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      _LSGetCurrentSystemVersion(&v19);
      v7 = _LSGetCPUType();
      v8 = _LSPlistGet(v3, *(v4 + 136));
      v9 = _LSPlistDataGetValueForKey(v8, @"LSMinimumSystemVersionByArchitecture", 0);

      if (v9 && (_NSIsNSDictionary() & 1) == 0)
      {

        v9 = 0;
      }

      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
      CFRelease(v6);
      Count = CFArrayGetCount(MutableCopy);
      if (Count >= 1)
      {
        for (i = Count + 1; i > 1; --i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i - 2);
          if (!v9 || (v17 = 0u, v18 = 0u, _LSGetVersionForArchitecture(v9, ValueAtIndex, &v17), v22[0] = v17, v22[1] = v18, v21[0] = v19, v21[1] = v20, _LSVersionNumberCompare(v22, v21) != 1))
          {
            if (!CFEqual(ValueAtIndex, @"ppc") && !CFEqual(ValueAtIndex, @"ppc64"))
            {
              switch(v7)
              {
                case 12:
                  if (CFEqual(ValueAtIndex, @"armv6"))
                  {
                    continue;
                  }

                  v14 = CFEqual(ValueAtIndex, @"armv7");
                  goto LABEL_25;
                case 16777228:
                  if (CFEqual(ValueAtIndex, @"armv6") || CFEqual(ValueAtIndex, @"armv7"))
                  {
                    continue;
                  }

                  v14 = CFEqual(ValueAtIndex, @"arm64");
LABEL_25:
                  if (v14)
                  {
                    continue;
                  }

                  break;
                case 16777223:
                  if (CFEqual(ValueAtIndex, @"i386"))
                  {
                    continue;
                  }

                  v14 = CFEqual(ValueAtIndex, @"x86_64");
                  goto LABEL_25;
              }
            }
          }

          CFArrayRemoveValueAtIndex(MutableCopy, i - 2);
        }
      }
    }

    else
    {
      MutableCopy = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    MutableCopy = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

id _LSBundleCopyArchitectures_Common(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = &unk_1818533FF;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL33_LSBundleCopyArchitectures_CommonPK12LSBundleDataP7NSArrayIP8NSStringE_block_invoke;
  v13[3] = &unk_1E6A1ABC0;
  v13[4] = &v14;
  _LSEnumerateSliceMask(*(a1 + 156), v13);
  v3 = v15[6];
  v4 = v15[7];
  v5 = 126 - 2 * __clz((v4 - v3) >> 3);
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,false>(v3, v4, v6, 1);
  v7 = v15[6];
  for (i = v15[7]; v7 != i; v7 += 2)
  {
    v9 = *v7;
    if (*v7 > 16777222)
    {
      switch(v9)
      {
        case 16777223:
          v10 = @"x86_64";
          goto LABEL_20;
        case 16777234:
          v10 = @"ppc64";
          goto LABEL_20;
        case 16777228:
          v10 = @"arm64";
          goto LABEL_20;
      }
    }

    else
    {
      switch(v9)
      {
        case 7:
          v10 = @"i386";
          goto LABEL_20;
        case 12:
          v11 = v7[1] - 6;
          if (v11 > 0xA || ((0x779u >> v11) & 1) == 0)
          {
            continue;
          }

          v10 = off_1E6A1ACB8[v11];
          goto LABEL_20;
        case 18:
          v10 = @"ppc";
LABEL_20:
          [v2 addObject:v10];
          break;
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v2;
}

void sub_18163C12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v6 = v5;
  v156 = a2;
  while (1)
  {
    v7 = a2 - v6;
    if (v7 <= 2)
    {
      if (v7 < 2)
      {
        return result;
      }

      if (v7 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v6;
        v88 = _LSScoreCPUType(v86);
        result = _LSScoreCPUType(v87);
        if (v88 < result)
        {
          *v6 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v7 == 3)
    {
      break;
    }

    if (v7 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(v6, v6 + 1, v6 + 2, a2 - 1);
    }

    if (v7 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(v6, v6 + 1, v6 + 2, v6 + 3, a2 - 1);
    }

LABEL_10:
    if (v7 <= 23)
    {
      v94 = v6 + 1;
      v96 = v6 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v6;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = _LSScoreCPUType(v99);
            result = _LSScoreCPUType(v100);
            if (v101 < result)
            {
              v102 = v97;
              while (1)
              {
                *(v6 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v6 + v102 - 8);
                result = _LSScoreCPUType(v100);
                v102 -= 8;
                if (v101 >= result)
                {
                  v103 = (v6 + v102 + 8);
                  goto LABEL_129;
                }
              }

              v103 = v6;
LABEL_129:
              *v103 = v99;
              a2 = v156;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v149 = *v6;
          v148 = v6[1];
          v6 = v94;
          v150 = _LSScoreCPUType(v148);
          result = _LSScoreCPUType(v149);
          if (v150 < result)
          {
            v151 = v6;
            do
            {
              *v151 = v149;
              v149 = *(v151 - 2);
              result = _LSScoreCPUType(v149);
              --v151;
            }

            while (v150 < result);
            *v151 = v148;
          }

          v94 = v6 + 1;
        }

        while (v6 + 1 != a2);
      }

      return result;
    }

    v160 = v6;
    if (!a3)
    {
      if (v6 != a2)
      {
        v104 = (v7 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v160[v107];
            v109 = *v108;
            if (2 * v105 + 2 < v7)
            {
              v110 = v108[1];
              v111 = _LSScoreCPUType(*v108);
              v112 = _LSScoreCPUType(v110);
              if (v111 < v112)
              {
                v109 = v110;
                ++v108;
              }

              a2 = v156;
              if (v111 < v112)
              {
                v107 = 2 * v106 + 2;
              }
            }

            v113 = &v160[v106];
            v114 = *v113;
            v115 = _LSScoreCPUType(v109);
            result = _LSScoreCPUType(v114);
            v24 = v115 >= result;
            v104 = (v7 - 2) >> 1;
            if (v24)
            {
              v116 = result;
              v153 = v114;
              v155 = v106;
              do
              {
                v117 = v108;
                *v113 = v109;
                if (v104 < v107)
                {
                  break;
                }

                v118 = (2 * v107) | 1;
                v108 = &v160[v118];
                v119 = 2 * v107 + 2;
                v109 = *v108;
                if (v119 < v7)
                {
                  v120 = v108[1];
                  v121 = _LSScoreCPUType(*v108);
                  v122 = _LSScoreCPUType(v120);
                  if (v121 < v122)
                  {
                    v109 = v120;
                    ++v108;
                  }

                  a2 = v156;
                  v104 = (v7 - 2) >> 1;
                  if (v121 < v122)
                  {
                    v118 = v119;
                  }
                }

                result = _LSScoreCPUType(v109);
                v113 = v117;
                v107 = v118;
              }

              while (result >= v116);
              v106 = v155;
              *v117 = v153;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v123 = v160;
        do
        {
          v124 = 0;
          v157 = a2;
          v159 = *v123;
          v125 = v123;
          do
          {
            v126 = &v125[v124];
            v128 = v126 + 1;
            v127 = v126[1];
            v129 = (2 * v124) | 1;
            v130 = 2 * v124 + 2;
            if (v130 >= v7)
            {
              v124 = (2 * v124) | 1;
            }

            else
            {
              v133 = v126[2];
              v131 = v126 + 2;
              v132 = v133;
              v134 = _LSScoreCPUType(v127);
              result = _LSScoreCPUType(v133);
              if (v134 >= result)
              {
                v124 = v129;
              }

              else
              {
                v127 = v132;
                v128 = v131;
                v124 = v130;
              }
            }

            *v125 = v127;
            v125 = v128;
          }

          while (v124 <= ((v7 - 2) >> 1));
          a2 = v157 - 1;
          if (v128 == v157 - 1)
          {
            v123 = v160;
            *v128 = v159;
          }

          else
          {
            *v128 = *a2;
            v123 = v160;
            *a2 = v159;
            v135 = (v128 - v160 + 8) >> 3;
            v136 = v135 < 2;
            v137 = v135 - 2;
            if (!v136)
            {
              v138 = v137 >> 1;
              v139 = &v160[v137 >> 1];
              v140 = *v139;
              v141 = *v128;
              v142 = _LSScoreCPUType(*v139);
              result = _LSScoreCPUType(v141);
              if (v142 < result)
              {
                v143 = result;
                do
                {
                  v144 = v139;
                  *v128 = v140;
                  if (!v138)
                  {
                    break;
                  }

                  v138 = (v138 - 1) >> 1;
                  v139 = &v160[v138];
                  v140 = *v139;
                  result = _LSScoreCPUType(*v139);
                  v128 = v144;
                }

                while (result < v143);
                *v144 = v141;
              }
            }
          }

          v136 = v7-- <= 2;
        }

        while (!v136);
      }

      return result;
    }

    v8 = &v6[v7 >> 1];
    v9 = v8;
    v10 = *(a2 - 1);
    v11 = _LSScoreCPUType(v10);
    if (v7 < 0x81)
    {
      v17 = *v6;
      v18 = *v8;
      v19 = _LSScoreCPUType(*v6);
      v20 = _LSScoreCPUType(v18);
      if (v19 >= v20)
      {
        v24 = v11 >= v19;
        v5 = v6;
        if (!v24)
        {
          *v6 = v10;
          *(a2 - 1) = v17;
          v25 = *v6;
          v26 = *v8;
          v27 = _LSScoreCPUType(*v6);
          if (v27 < _LSScoreCPUType(v26))
          {
            *v8 = v25;
            *v6 = v26;
          }
        }
      }

      else if (v11 >= v19)
      {
        *v8 = v17;
        v5 = v6;
        *v6 = v18;
        v40 = *(a2 - 1);
        if (_LSScoreCPUType(v40) < v20)
        {
          *v6 = v40;
          *(a2 - 1) = v18;
        }
      }

      else
      {
        *v8 = v10;
        *(a2 - 1) = v18;
        v5 = v6;
      }

      goto LABEL_56;
    }

    v12 = *v8;
    v13 = *v6;
    v14 = _LSScoreCPUType(*v8);
    v15 = _LSScoreCPUType(v13);
    if (v14 >= v15)
    {
      v16 = v6;
      if (v11 < v14)
      {
        *v8 = v10;
        *(a2 - 1) = v12;
        v21 = *v8;
        v22 = *v6;
        v23 = _LSScoreCPUType(*v8);
        if (v23 < _LSScoreCPUType(v22))
        {
          *v6 = v21;
          *v8 = v22;
        }
      }
    }

    else
    {
      if (v11 >= v14)
      {
        v16 = v6;
        *v6 = v12;
        *v8 = v13;
        v28 = *(a2 - 1);
        if (_LSScoreCPUType(v28) >= v15)
        {
          goto LABEL_28;
        }

        *v8 = v28;
      }

      else
      {
        v16 = v6;
        *v6 = v10;
      }

      *(a2 - 1) = v13;
    }

LABEL_28:
    v30 = v8 - 1;
    v29 = *(v8 - 1);
    v31 = v16[1];
    v32 = _LSScoreCPUType(v29);
    v33 = _LSScoreCPUType(v31);
    v34 = *(a2 - 2);
    v35 = _LSScoreCPUType(v34);
    if (v32 >= v33)
    {
      v36 = v160;
      if (v35 < v32)
      {
        *v30 = v34;
        *(a2 - 2) = v29;
        v37 = *v30;
        v38 = v160[1];
        v39 = _LSScoreCPUType(*v30);
        if (v39 < _LSScoreCPUType(v38))
        {
          v160[1] = v37;
          *v30 = v38;
        }
      }
    }

    else
    {
      if (v35 >= v32)
      {
        v36 = v160;
        v160[1] = v29;
        *v30 = v31;
        v41 = *(a2 - 2);
        if (_LSScoreCPUType(v41) >= v33)
        {
          goto LABEL_39;
        }

        *v30 = v41;
      }

      else
      {
        v36 = v160;
        v160[1] = v34;
      }

      *(a2 - 2) = v31;
    }

LABEL_39:
    v44 = v8[1];
    v42 = v8 + 1;
    v43 = v44;
    v45 = v36[2];
    v46 = _LSScoreCPUType(v44);
    v47 = _LSScoreCPUType(v45);
    v48 = *(a2 - 3);
    v49 = _LSScoreCPUType(v48);
    if (v46 >= v47)
    {
      if (v49 < v46)
      {
        *v42 = v48;
        *(a2 - 3) = v43;
        v50 = *v42;
        v51 = v160[2];
        v52 = _LSScoreCPUType(*v42);
        if (v52 < _LSScoreCPUType(v51))
        {
          v160[2] = v50;
          *v42 = v51;
        }
      }
    }

    else
    {
      if (v49 >= v46)
      {
        v160[2] = v43;
        *v42 = v45;
        v53 = *(a2 - 3);
        if (_LSScoreCPUType(v53) >= v47)
        {
          goto LABEL_48;
        }

        *v42 = v53;
      }

      else
      {
        v160[2] = v48;
      }

      *(a2 - 3) = v45;
    }

LABEL_48:
    v54 = *v9;
    v55 = *v30;
    v56 = _LSScoreCPUType(*v9);
    v57 = _LSScoreCPUType(v55);
    v58 = *v42;
    v59 = _LSScoreCPUType(*v42);
    if (v56 >= v57)
    {
      if (v59 < v56)
      {
        *v9 = v58;
        *v42 = v54;
        v42 = v9;
        v54 = v55;
        if (v59 >= v57)
        {
          v54 = v58;
          goto LABEL_55;
        }

LABEL_54:
        *v30 = v58;
        *v42 = v55;
      }
    }

    else
    {
      if (v59 < v56)
      {
        goto LABEL_54;
      }

      *v30 = v54;
      *v9 = v55;
      v30 = v9;
      v54 = v58;
      if (v59 < v57)
      {
        goto LABEL_54;
      }

      v54 = v55;
    }

LABEL_55:
    v5 = v160;
    v60 = *v160;
    *v160 = v54;
    *v9 = v60;
LABEL_56:
    --a3;
    v61 = *v5;
    if (a4)
    {
      v62 = _LSScoreCPUType(*v5);
LABEL_59:
      v64 = 0;
      do
      {
        v65 = v5[++v64];
      }

      while (_LSScoreCPUType(v65) < v62);
      v66 = &v5[v64];
      v67 = a2;
      if (v64 == 1)
      {
        v67 = a2;
        do
        {
          if (v66 >= v67)
          {
            break;
          }

          v69 = *(v67-- - 2);
        }

        while (_LSScoreCPUType(v69) >= v62);
      }

      else
      {
        do
        {
          v68 = *(v67-- - 2);
        }

        while (_LSScoreCPUType(v68) >= v62);
      }

      if (v66 >= v67)
      {
        v75 = v66 - 1;
      }

      else
      {
        v70 = *v67;
        v71 = &v5[v64];
        v72 = v67;
        do
        {
          *v71 = v70;
          *v72 = v65;
          do
          {
            v73 = v71[1];
            ++v71;
            v65 = v73;
          }

          while (_LSScoreCPUType(v73) < v62);
          do
          {
            v74 = *--v72;
            v70 = v74;
          }

          while (_LSScoreCPUType(v74) >= v62);
        }

        while (v71 < v72);
        v75 = v71 - 1;
      }

      if (v75 != v5)
      {
        *v5 = *v75;
      }

      *v75 = v61;
      if (v66 < v67)
      {
        goto LABEL_80;
      }

      v76 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *>(v5, v75);
      v6 = v75 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *>(v75 + 1, a2);
      if (result)
      {
        a2 = v75;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,false>(v5, v75, a3, a4 & 1);
        a4 = 0;
        v6 = v75 + 1;
      }
    }

    else
    {
      v63 = _LSScoreCPUType(*(v5 - 2));
      v62 = _LSScoreCPUType(v61);
      if (v63 < v62)
      {
        goto LABEL_59;
      }

      result = _LSScoreCPUType(*(a2 - 2));
      if (v62 >= result)
      {
        v78 = v5 + 1;
        do
        {
          v6 = v78;
          if (v78 >= a2)
          {
            break;
          }

          ++v78;
          result = _LSScoreCPUType(*v6);
        }

        while (v62 >= result);
      }

      else
      {
        v6 = v5;
        do
        {
          v77 = *(v6++ + 2);
          result = _LSScoreCPUType(v77);
        }

        while (v62 >= result);
      }

      v79 = a2;
      if (v6 < a2)
      {
        v79 = a2;
        do
        {
          v80 = *(v79-- - 2);
          result = _LSScoreCPUType(v80);
        }

        while (v62 < result);
      }

      if (v6 < v79)
      {
        v81 = *v6;
        v82 = *v79;
        do
        {
          *v6 = v82;
          *v79 = v81;
          do
          {
            v83 = v6[1];
            ++v6;
            v81 = v83;
          }

          while (v62 >= _LSScoreCPUType(v83));
          do
          {
            v84 = *--v79;
            v82 = v84;
            result = _LSScoreCPUType(v84);
          }

          while (v62 < result);
        }

        while (v6 < v79);
      }

      v85 = v6 - 1;
      if (v6 - 1 != v5)
      {
        *v5 = *v85;
      }

      a4 = 0;
      *v85 = v61;
    }
  }

  v89 = *v6;
  v90 = v6[1];
  v91 = _LSScoreCPUType(v90);
  v92 = _LSScoreCPUType(v89);
  v93 = *(a2 - 1);
  result = _LSScoreCPUType(v93);
  if (v91 >= v92)
  {
    if (result < v91)
    {
      v6[1] = v93;
      *(a2 - 1) = v90;
      v146 = *v6;
      v145 = v6[1];
      v147 = _LSScoreCPUType(v145);
      result = _LSScoreCPUType(v146);
      if (v147 < result)
      {
        *v6 = v145;
        v6[1] = v146;
      }
    }
  }

  else
  {
    if (result >= v91)
    {
      *v6 = v90;
      v6[1] = v89;
      v152 = *(a2 - 1);
      result = _LSScoreCPUType(v152);
      if (result >= v92)
      {
        return result;
      }

      v6[1] = v152;
    }

    else
    {
      *v6 = v93;
    }

    *(a2 - 1) = v89;
  }

  return result;
}

uint64_t __LSRECORD_GETTER__<unsigned long>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    v9 = [CachedPropertyValue unsignedLongValue];
  }

  else
  {
    v10 = v5;
    v11 = v10;
    v13 = v10 + 16;
    v12 = *(v10 + 2);
    if ((*(v10 + 31) & 0x40) == 0 && !v12)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v10, a2);
    }

    if (v12)
    {
      v14 = v10;
      [(_LSDatabase *)v11[2] store];
      v15 = *(v14 + 14);
      v16 = *(v14 + 6);
      Unit = CSStoreGetUnit();
      v18 = *(v14 + 14);
      v19 = *(v14 + 6);
      MethodImplementation = object_getMethodImplementation();
      v9 = MethodImplementation(v14, a3, v13, v18, v19, Unit);
    }

    else
    {
      v9 = 0;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
    LaunchServices::Record::setCachedPropertyValue(v11, a2, v21, v22);
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

void sub_18163CECC(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (_NSIsNSString())
  {
    v7 = (*(a1 + 48))(a2, *(*(a1 + 32) + 8) + 24);
    if (v7 != a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

id _LSPlistRestore(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = objc_autoreleasePoolPush();
    v9 = 0;
    v4 = _LSPlistGetSubdataForFCF(v2, &v9);

    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
    if (v5 && _NSIsNSDictionary())
    {
      if (v9)
      {
        Transformed = _LSPlistCreateTransformed(v5, _LSPlistRestoreString, 0);
      }

      else
      {
        Transformed = v5;
      }

      v7 = Transformed;
    }

    else
    {
      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v4 = 0;
    v7 = 0;
  }

  return v7;
}

id _LSPlistDataGetDictionary(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(_LSPlistHint *)a2 completeDictionary];
  if (!v5)
  {
    v5 = _LSPlistRestore(a1);
    [(_LSPlistHint *)a2 setCompleteDictionary:v5];
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

uint64_t _LSGetPlugin(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  Unit = 0;
  if (v3 && a2)
  {
    [(_LSDatabase *)v3 store];
    v6 = *([(_LSDatabase *)v4 schema]+ 1588);
    Unit = CSStoreGetUnit();
  }

  return Unit;
}

void ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = (*(a1 + 48))(a2, *(*(a1 + 32) + 8) + 24);

  if (v8 != a2 || _NSIsNSString() && ((*(a1 + 48))(a3, *(*(a1 + 32) + 8) + 24), v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != a3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_18163D7C8(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  objc_begin_catch(exc_buf);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void ___ZL25_LSPlistCreateTransformedP12NSDictionaryIP8NSStringP11objc_objectEPFS1_S1_PbES6__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(a1 + 48))(v5, *(*(a1 + 40) + 8) + 24);

  v8 = *(a1 + 48);
  v9 = *(*(a1 + 40) + 8);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (_NSIsNSArray())
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke;
    v26 = &unk_1E6A1D5B0;
    v28 = &v30;
    v29 = v8;
    v27 = &v34;
    [v6 enumerateObjectsUsingBlock:&v23];
    if (*(v31 + 24) == 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke_2;
      v19 = &unk_1E6A1D5D8;
      v21 = &v34;
      v22 = v8;
      v11 = v10;
      v20 = v11;
      [v6 enumerateObjectsUsingBlock:&v16];
      v12 = [v11 copy];
LABEL_7:
      v14 = v12;

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (_NSIsNSDictionary())
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke_3;
    v26 = &unk_1E6A1D600;
    v28 = &v30;
    v29 = v8;
    v27 = &v34;
    [v6 enumerateKeysAndObjectsUsingBlock:&v23];
    if (*(v31 + 24) == 1)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke_4;
      v19 = &unk_1E6A1D588;
      v21 = &v34;
      v22 = v8;
      v11 = v13;
      v20 = v11;
      [v6 enumerateKeysAndObjectsUsingBlock:&v16];
      v12 = [v11 copy];
      goto LABEL_7;
    }

LABEL_8:
    v14 = 0;
LABEL_9:
    _Block_object_dispose(&v30, 8);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v14 = v6;
LABEL_11:
  if (*(v9 + 24))
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v35 + 24);
  }

  *(v9 + 24) = v15 & 1;
  _Block_object_dispose(&v34, 8);

  [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
}

void sub_18163DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1865D6170](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1865D6180](v13);
  return a1;
}

id _LSPlistGetValueForKey(_LSDatabase *a1, unsigned int a2, NSString *a3, _LSPlistHint *a4)
{
  v6 = a3;
  v7 = _LSPlistGet(a1, a2);
  v8 = _LSPlistDataGetValueForKey(v7, v6, 0);

  return v8;
}

__CFString *_LSDatabaseGetBindingMapDebugName(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xD)
  {
    v2 = @"unknown";
  }

  else
  {
    v2 = *(&kLSBindingInfo + 4 * a2);
    if ([(__CFString *)v2 hasSuffix:@"Binding"])
    {
      v3 = -[__CFString substringToIndex:](v2, "substringToIndex:", -[__CFString length](v2, "length") - [@"Binding" length]);

      v2 = v3;
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_3(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  return container_get_error_description();
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 88);
  return result;
}

CFComparisonResult OUTLINED_FUNCTION_2_12(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

uint64_t __LSRECORD_GETTER__<LSBundleBaseFlags>(void *a1, LSRecord *a2, uint64_t a3)
{
  v5 = a1;
  v24 = 0;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v5, a2, v6);
  if (v8)
  {
    [CachedPropertyValue getBytes:&v24 length:1];
  }

  else
  {
    v9 = v5;
    v10 = v9;
    v12 = v9 + 16;
    v11 = *(v9 + 2);
    if ((*(v9 + 31) & 0x40) == 0 && !v11)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v9, a2);
    }

    if (v11)
    {
      v13 = v9;
      [(_LSDatabase *)v10[2] store];
      v14 = *(v13 + 14);
      v15 = *(v13 + 6);
      Unit = CSStoreGetUnit();
      v17 = *(v13 + 14);
      v18 = *(v13 + 6);
      MethodImplementation = object_getMethodImplementation();
      v24 = MethodImplementation(v13, a3, v12, v17, v18, Unit);
    }

    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v24 length:1];
    LaunchServices::Record::setCachedPropertyValue(v10, a2, v20, v21);
  }

  os_unfair_recursive_lock_unlock();

  v22 = v24;
  return v22;
}

void sub_18163E564(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

id _LSBundleGetSystemApplicationTypes()
{
  if (_LSBundleGetSystemApplicationTypes::once != -1)
  {
    _LSBundleGetSystemApplicationTypes_cold_1();
  }

  v1 = _LSBundleGetSystemApplicationTypes::systemTypes;

  return v1;
}

void __LSRECORD_GETTER__<LSVersionNumber>(void *a1@<X0>, LSRecord *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  *a4 = 0u;
  a4[1] = 0u;
  os_unfair_recursive_lock_lock_with_options();
  CachedPropertyValue = LaunchServices::Record::getCachedPropertyValue(v7, a2, v8);
  if (v10)
  {
    [CachedPropertyValue getBytes:a4 length:32];
  }

  else
  {
    v11 = v7;
    v12 = v11;
    v14 = v11 + 16;
    v13 = *(v11 + 2);
    if ((*(v11 + 31) & 0x40) == 0 && !v13)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v11, a2);
    }

    if (v13)
    {
      v15 = v11;
      [(_LSDatabase *)v12[2] store];
      v16 = *(v15 + 14);
      v17 = *(v15 + 6);
      Unit = CSStoreGetUnit();
      v19 = *(v15 + 14);
      v20 = *(v15 + 6);
      MethodImplementation = object_getMethodImplementation();
      MethodImplementation(v26, v15, a3, v14, v19, v20, Unit);
      v22 = v26[1];
      *a4 = v26[0];
      a4[1] = v22;
    }

    v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:32];
    LaunchServices::Record::setCachedPropertyValue(v12, a2, v23, v24);
  }

  os_unfair_recursive_lock_unlock();

  v25 = *MEMORY[0x1E69E9840];
}

void sub_18163E9C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    os_unfair_recursive_lock_unlock();
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18163EA18(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_18163EA2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18163EFB8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id LaunchServices::LocalizedString::getAllUnsafeLocalizations(LaunchServices::LocalizedString *this, _LSDatabase *a2, NSString *a3, BOOL *a4, BOOL *a5)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v45 = a3;
  v46 = v9;
  if (v9)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, NSString *> *LaunchServices::LocalizedString::getAllUnsafeLocalizations(_LSDatabase *__strong _Nonnull, NSString *__strong _Nullable, BOOL * _Nullable, BOOL * _Nullable) const"}];
  [v41 handleFailureInFunction:v42 file:@"LSLocalizedString.mm" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

  if (a4)
  {
LABEL_3:
    *a4 = *(this + 8) & 1;
  }

LABEL_4:
  if (a5)
  {
    *a5 = (*(this + 8) & 2) != 0;
  }

  if ((*(this + 8) & 2) != 0)
  {
    v21 = *(this + 1);
    [(_LSDatabase *)v9 store];
    v49 = _CSStringCopyCFString();
    if (v49)
    {
      if ([__LSDefaultsGetSharedInstance() markLocalizationsStoredInDatabase])
      {
        if (*(this + 8))
        {
          v22 = @"✴️";
        }

        else
        {
          v22 = @"🔂";
        }

        v23 = [v49 stringByAppendingString:v22];
      }

      else
      {
        v23 = v49;
      }

      v56 = @"LSDefaultLocalizedValue";
      v57[0] = v23;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];

      goto LABEL_62;
    }

LABEL_28:
    v11 = 0;
    goto LABEL_62;
  }

  if (!*this || !*(this + 1))
  {
    goto LABEL_28;
  }

  v48 = _LSDatabaseGetStringArray(v9);
  v44 = _LSDatabaseGetStringArrayWithNullValues(v9, *(this + 1), 0);
  v10 = [v48 count];
  v11 = 0;
  if (v48 && v44)
  {
    v12 = v10;
    if (v10 != [v44 count])
    {
      goto LABEL_60;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v48, "count")}];
    if (v14)
    {
      if (v12)
      {
        v15 = 0;
        v16 = 0;
LABEL_15:
        v17 = v16;
        do
        {
          v18 = [v48 objectAtIndexedSubscript:v17];
          v19 = [v44 pointerAtIndex:v17];
          v20 = v19;
          if (!v18 || !v19)
          {

            v16 = v17 + 1;
            v15 = 1;
            if (v12 - 1 != v17)
            {
              goto LABEL_15;
            }

            goto LABEL_32;
          }

          [v14 setObject:v19 forKeyedSubscript:v18];

          ++v17;
        }

        while (v12 != v17);
        if ((v15 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_32:
        v24 = v45;
        if (v24 || ([v14 objectForKeyedSubscript:@"LSDefaultLocalizedValue"], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          for (i = 0; i != v12; ++i)
          {
            v26 = [v48 objectAtIndexedSubscript:i];
            v27 = [v14 objectForKeyedSubscript:v26];

            if (!v27)
            {
              [v14 setObject:v24 forKeyedSubscript:v26];
            }
          }
        }
      }

LABEL_39:
      v50 = [v14 copy];
    }

    else
    {
      v50 = 0;
    }

    objc_autoreleasePoolPop(v13);
    if (v50)
    {
      if ([__LSDefaultsGetSharedInstance() markLocalizationsStoredInDatabase])
      {
        context = objc_autoreleasePoolPush();
        v28 = [v50 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
        v47 = this;
        v11 = [MEMORY[0x1E695DF90] dictionary];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v29 = v48;
        v30 = [v29 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v30)
        {
          v31 = *v52;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v52 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v51 + 1) + 8 * j);
              if ([v33 isEqual:@"LSDefaultLocalizedValue"])
              {
                v34 = [v28 stringByAppendingString:@"*️⃣"];
              }

              else
              {
                v35 = [v50 objectForKeyedSubscript:v33];
                v36 = v35;
                if (v35)
                {
                  if ((*(v47 + 8) & 2) != 0)
                  {
                    v37 = @"🔂";
                  }

                  else
                  {
                    v37 = @"❇️";
                  }

                  v38 = [v35 stringByAppendingString:v37];
                }

                else
                {
                  v38 = [v28 stringByAppendingString:@"🔴"];
                }

                v34 = v38;
              }

              [v11 setObject:v34 forKeyedSubscript:v33];
            }

            v30 = [v29 countByEnumeratingWithState:&v51 objects:v55 count:16];
          }

          while (v30);
        }

        objc_autoreleasePoolPop(context);
      }

      else
      {
        v11 = v50;
      }
    }

    else
    {
LABEL_60:
      v11 = 0;
    }
  }

LABEL_62:
  v39 = *MEMORY[0x1E69E9840];

  return v11;
}

id _LSDatabaseGetStringArrayWithNullValues(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
  if (a3)
  {
    *a3 = 0;
  }

  v6 = a1;
  if (a1)
  {
    v7 = a1[5];
  }

  OUTLINED_FUNCTION_1_5();
  v9 = v5;
  _CSArrayEnumerateAllValues();

  return v9;
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t OUTLINED_FUNCTION_1_9()
{
  result = *(v1 + 3480);
  v3 = *(v0 + 32);
  return result;
}

id LaunchServices::LocalizedString::getBundleLocs(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(this + 8);
  v6 = *this;
  if ((v5 & 2) != 0)
  {
    [(_LSDatabase *)v3 store];
    v8 = _CSStringCopyCFString();
    v9 = v8;
    if (v8)
    {
      v12[0] = v8;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = _LSDatabaseGetStringArray(v3);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

id _LSShouldFetchContainersFromContainermanagerForPersona(void *a1, int a2, BOOL *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = 0;
  if ([v5 count] == 1 && (a2 & 1) == 0)
  {
    v7 = [v5 firstObject];
    v8 = [(_LSPersonaWithAttributes *)v7 personaType];

    v6 = (v8 - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  if ([v5 count] <= 1 && !a2)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a3 = v6;
    goto LABEL_21;
  }

  v10 = [getUMUserManagerClass[0]() sharedManager];
  v11 = [v10 currentPersona];

  if (a2 && (([v11 isDefaultPersona] & 1) != 0 || objc_msgSend(v11, "isSystemPersona")) && objc_msgSend(v5, "count") == 1)
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _LSShouldFetchContainersFromContainermanagerForPersona_cold_1(v12);
    }

    if (_os_feature_enabled_impl())
    {
      v13 = _LSDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        _LSShouldFetchContainersFromContainermanagerForPersona_cold_2(v13);
      }

      v14 = *MEMORY[0x1E696A768];
      v18 = *MEMORY[0x1E696A278];
      v19[0] = @"Unable to find this application extension record in the Launch Services database.";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v9 = _LSMakeNSErrorImpl(v14, -50, v15, "_LSShouldFetchContainersFromContainermanagerForPersona", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSContainerHelpers.m", 325);
    }

    else
    {
      v9 = 0;
    }

    v6 = 0;
  }

  else
  {
    v9 = 0;
    v6 = 1;
  }

  if (a3)
  {
    goto LABEL_20;
  }

LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

id _LSCopyRationalizedEnvironmentVariablesDict(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_3;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSCopyRationalizedEnvironmentVariablesDict_block_invoke;
  v5[3] = &unk_1E6A1B468;
  v3 = v2;
  v6 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  if (!v3)
  {
LABEL_3:
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

uint64_t _LSClaimGet(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = *([(_LSDatabase *)v1 schema]+ 8);
  Unit = CSStoreGetUnit();

  return Unit;
}

void _LSEnumerateClaimedSchemes(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateClaimedSchemes(LSContext * _Nonnull, const LSClaimData * _Nonnull, void (^__strong _Nonnull)(NSString *__strong))"}];
    [v11 handleFailureInFunction:v12 file:@"LSClaimedTypes.mm" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"inClaimData != NULL"}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateClaimedSchemes(LSContext * _Nonnull, const LSClaimData * _Nonnull, void (^__strong _Nonnull)(NSString *__strong))"}];
    [v13 handleFailureInFunction:v14 file:@"LSClaimedTypes.mm" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"inBlock != nil"}];

    goto LABEL_4;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateClaimedSchemes(LSContext * _Nonnull, const LSClaimData * _Nonnull, void (^__strong _Nonnull)(NSString *__strong))"}];
  [v9 handleFailureInFunction:v10 file:@"LSClaimedTypes.mm" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((*(a2 + 8) & 0x40) != 0)
  {
    v6 = *(a2 + 68);
    if (v6)
    {
      v7 = *([(_LSDatabase *)*a1 schema]+ 736);
      v8 = *a1;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___LSEnumerateClaimedSchemes_block_invoke;
      v15[3] = &unk_1E6A1B1B0;
      v17 = a1;
      v16 = v5;
      _LSBindingListEnumerateEntryWithClass(v8, v6, v7, v15);
    }
  }
}

void _LSBindingListEnumerateEntryWithClass(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  EntryWithClass = _LSBindingListGetEntryWithClass(a1, a2, a3);
  if (EntryWithClass)
  {
    v9 = EntryWithClass[1];
    v13 = 0;
    if (v9)
    {
      v10 = EntryWithClass + 2;
      v11 = 1;
      do
      {
        v12 = *v10++;
        v7[2](v7, a3, v12, &v13);
        if (v11 >= v9)
        {
          break;
        }

        ++v11;
      }

      while (!v13);
    }
  }
}

unsigned int *_LSBindingListGetEntryWithClass(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  v8 = 0;
  [(_LSDatabase *)v4 store];
  v5 = *([(_LSDatabase *)v4 schema]+ 1596);
  Unit = CSStoreGetUnit();
  _LSBindingListGetEntryWithClass_cold_1(Unit, &v8, a3, v4, &v9);
  return v9;
}

void _LSBindingListGetEntryWithClass_cold_1(_DWORD *a1, unsigned int *a2, unsigned int a3, void *a4, unsigned int **a5)
{
  v5 = 0;
  if (a1)
  {
    v6 = *a2;
    if (v6 >= 4)
    {
      if (*a1)
      {
        v7 = v6 > 4;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = a1 + 1;
        v9 = 1;
        v10 = 4;
        while (*v8 != a3)
        {
          if (*v8 > a3)
          {
            goto LABEL_17;
          }

          v5 = 0;
          v10 += 4 * v8[1] + 8;
          v8 = (a1 + v10);
          v11 = v9++ >= *a1;
          v11 = v11 || v10 >= v6;
          if (v11)
          {
            goto LABEL_16;
          }
        }

        v5 = v8;
      }

      else
      {
LABEL_17:
        v5 = 0;
      }
    }
  }

LABEL_16:
  *a5 = v5;
}

CFStringRef _LSCopyHandlerRankStringFromNumericHandlerRank(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"Default";

      return CFRetain(v2);
    }

    if (a1 == 3)
    {
      v2 = @"Owner";

      return CFRetain(v2);
    }
  }

  else
  {
    if (!a1)
    {
      v2 = @"None";

      return CFRetain(v2);
    }

    if (a1 == 1)
    {
      v2 = @"Alternate";

      return CFRetain(v2);
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"# (%i)", a1);
}

BOOL isFeatureAllowed(void *a1)
{
  v1 = a1;
  v2 = getSharedMCProfileConnection();
  v3 = [v2 effectiveBoolValueForSetting:v1];

  return v3 != 2;
}

id getSharedMCProfileConnection()
{
  v0 = [getMCProfileConnectionClass[0]() sharedConnection];
  if (!v0)
  {
    v1 = _LSDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      getSharedMCProfileConnection_cold_1();
    }
  }

  return v0;
}

void _LSEnumerateClaimedTypes(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v14 = v5;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateClaimedTypes(LSContext * _Nonnull, const LSClaimData * _Nonnull, void (^__strong _Nonnull)(NSString *__strong))"}];
    [v10 handleFailureInFunction:v11 file:@"LSClaimedTypes.mm" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"inClaimData != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateClaimedTypes(LSContext * _Nonnull, const LSClaimData * _Nonnull, void (^__strong _Nonnull)(NSString *__strong))"}];
    [v12 handleFailureInFunction:v13 file:@"LSClaimedTypes.mm" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"inBlock != nil"}];

    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateClaimedTypes(LSContext * _Nonnull, const LSClaimData * _Nonnull, void (^__strong _Nonnull)(NSString *__strong))"}];
  [v8 handleFailureInFunction:v9 file:@"LSClaimedTypes.mm" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

  v5 = v14;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((*(a2 + 8) & 0x20) != 0)
  {
    v7 = *(a2 + 68);
    if (v7)
    {
      _LSEnumerateTypesInBindingList(a1, v7, v6, v14);
    }
  }
}