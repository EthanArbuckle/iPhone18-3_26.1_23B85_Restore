time_t LSDBHeader::reset(LSDBHeader *this)
{
  *this = [__LSDefaultsGetSharedInstance() currentSchemaVersion];
  *(this + 1) = 208;
  *(this + 8) = kLSVersionNumberNull;
  *(this + 24) = unk_1817E90C0;
  *(this + 11) = 0;
  std::string::basic_string[abi:nn200100]<0>(__p, "");
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  strlcpy(this + 96, v2, 0x10uLL);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "");
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  strlcpy(this + 72, v3, 0x10uLL);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "");
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  strlcpy(this + 112, v4, 0x40uLL);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 22) = 0;
  uuid_generate_random(this + 184);
  result = time(0);
  *(this + 25) = result;
  return result;
}

void sub_1816FBD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL _LSDatabaseSaveSystemContentDatabase(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v28[0] = 0;
  SnapshotAgainstAccessContext = _LSDatabaseCreateSnapshotAgainstAccessContext(v3, 0, v28);
  v6 = v28[0];
  if (SnapshotAgainstAccessContext)
  {
    v26 = a2;
    v27 = v3;
    v7 = SnapshotAgainstAccessContext;
    v48 = 0;
    v49 = &v48;
    v50 = 0x4812000000;
    v51 = __Block_byref_object_copy__15;
    v52 = __Block_byref_object_dispose__15;
    v53 = &unk_1818533FF;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x4812000000;
    v42 = __Block_byref_object_copy__15;
    v43 = __Block_byref_object_dispose__15;
    v44 = &unk_1818533FF;
    v46 = 0;
    v47 = 0;
    __p = 0;
    v8 = v7;
    v9 = v8[5];
    v10 = *(v8 + 13);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke;
    v35 = &unk_1E6A1B850;
    v37 = &v48;
    v11 = v7;
    v36 = v11;
    v38 = &v39;
    _CSStoreEnumerateUnits();
    v12 = v11;
    v13 = v7[5];
    v14 = v12;
    v15 = v11[409];
    v28[1] = MEMORY[0x1E69E9820];
    v28[2] = 3221225472;
    v28[3] = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2;
    v28[4] = &unk_1E6A1B850;
    v30 = &v48;
    v16 = v11;
    v29 = v16;
    v31 = &v39;
    _CSStoreEnumerateUnits();
    v17 = v49[6];
    for (i = v49[7]; v17 != i; ++v17)
    {
      _LSAliasRemove(v16, *v17);
    }

    v19 = v40[6];
    v20 = v40[7];
    while (v19 != v20)
    {
      _LSPlistRemove(v16, *v19++);
    }

    _Block_object_dispose(&v39, 8);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v48, 8);
    a2 = v26;
    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    [(_LSDatabase *)v16 setSeeded:?];
    _LSDatabaseSetHeaderFlag(v16, 2, 0);
    v21 = v7[5];
    [__LSDefaultsGetSharedInstance() systemContentDatabaseStoreFileURL];
    _LSDatabaseGetFileResourceProperties();
    v22 = _CSStoreWriteToURL() != 0;

    v6 = 0;
    v3 = v27;
  }

  else
  {
    v22 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v6;
    *a2 = v6;
  }

  return v22;
}

void sub_1816FC0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v37 - 176), 8);
  v39 = *(v37 - 128);
  if (v39)
  {
    *(v37 - 120) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

id _LSDatabaseGetFileResourceProperties(void)
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  if (v0)
  {
    v1 = CFFileSecurityCreate(*MEMORY[0x1E695E480]);
    if (v1)
    {
      v2 = [__LSDefaultsGetSharedInstance() databaseStoreFileMode];
      CFFileSecuritySetMode(v1, v2);
      [v0 setObject:v1 forKeyedSubscript:*MEMORY[0x1E695DB48]];
      CFRelease(v1);
    }

    [v0 setObject:*MEMORY[0x1E695DAF8] forKeyedSubscript:*MEMORY[0x1E695DAF0]];
  }

  return v0;
}

void sub_1816FC228(_Unwind_Exception *a1)
{
  CFRelease(v2);

  _Unwind_Resume(a1);
}

uint64_t _LSDatabaseFindBindingMapIndexWithTargetTable(char *a1, int a2)
{
  v3 = 0;
  v4 = a1 + 48;
  if (!a1)
  {
    v4 = 0;
  }

  v5 = (v4 + 120);
  while (1)
  {
    a1 = a1;
    v6 = *v5;
    v5 += 26;
    if (v6 == a2)
    {
      break;
    }

    if (++v3 == 14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t _LSDatabaseFindBindingMapTargetTable(void *a1, int a2)
{
  v3 = a1;
  if (a2 > 13 || (a2 - 6) > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = &kLSBindingInfo + 32 * a2;
    v3 = v3;
    v5 = v3 + 48;
    if (!v3)
    {
      v5 = 0;
    }

    v6 = *&v5[*(v4 + 3)];
  }

  return v6;
}

uint64_t _LSDatabaseCreateStringForCFString(void *a1, const __CFString *a2, int a3)
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

  v10 = _CSCopyStringForCharacters();
  XCFBufDestroy(v13);
LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _LSDatabaseCreateStringArray(void *a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a1;
  v8 = a2;
  StringArrayCommon = _LSDatabaseCreateStringArrayCommon(v7, v8, [v8 count], 0, a3, a4);

  return StringArrayCommon;
}

uint64_t _LSDatabaseCreateStringArrayCommon(void *a1, void *a2, std::vector<unsigned int>::size_type a3, int a4, int a5, _BYTE *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v39 = a2;
  if (a6)
  {
    *a6 = 0;
  }

  memset(&v48, 0, sizeof(v48));
  std::vector<unsigned int>::reserve(&v48, a3);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v39;
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v12)
  {
    v13 = *v45;
    do
    {
      v14 = 0;
      do
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v44 + 1) + 8 * v14);
        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = a4 == 0;
        }

        if (v16)
        {
          v17 = *(*(&v44 + 1) + 8 * v14);
          if (_NSIsNSString())
          {
            LODWORD(v41) = _LSDatabaseCreateStringForCFString(v40, v15, a5);
            if (v41)
            {
              std::vector<unsigned int>::push_back[abi:nn200100](&v48.__begin_, &v41);
              goto LABEL_35;
            }

            if (a6)
            {
              *a6 = 1;
            }

            v27 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v50 = v15;
              _os_log_error_impl(&dword_18162D000, v27, OS_LOG_TYPE_ERROR, "Could not create a CSString for CFString %{private}@", buf, 0xCu);
            }
          }

          else
          {
            if (a6)
            {
              *a6 = 1;
            }

            v27 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              *buf = 138478083;
              v50 = v15;
              v51 = 2114;
              v52 = v31;
              _os_log_debug_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEBUG, "Expected %{private}@ to be a string, but instead it was a %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          end = v48.__end_;
          if (v48.__end_ >= v48.__end_cap_.__value_)
          {
            begin = v48.__begin_;
            v21 = v48.__end_ - v48.__begin_;
            v22 = v48.__end_ - v48.__begin_;
            v23 = v22 + 1;
            if ((v22 + 1) >> 62)
            {
              std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
            }

            v24 = v48.__end_cap_.__value_ - v48.__begin_;
            if ((v48.__end_cap_.__value_ - v48.__begin_) >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
            v26 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v25)
            {
              v26 = v23;
            }

            if (v26)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:nn200100](&v48, v26);
            }

            *(4 * v22) = 0;
            v19 = (4 * v22 + 4);
            memcpy(0, begin, v21);
            v28 = v48.__begin_;
            v48.__begin_ = 0;
            v48.__end_ = v19;
            v48.__end_cap_.__value_ = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v48.__end_ = 0;
            v19 = end + 1;
          }

          v48.__end_ = v19;
          v29 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            _LSDatabaseCreateStringArrayCommon(&v42, v43, v29);
          }
        }

LABEL_35:
        ++v14;
      }

      while (v12 != v14);
      v32 = [v11 countByEnumeratingWithState:&v44 objects:v53 count:16];
      v12 = v32;
    }

    while (v32);
  }

  v41 = 0;
  v33 = v40;
  if (v40)
  {
    v34 = v40[5];
  }

  v35 = _CSArrayCreate();
  if (!v35)
  {
    v36 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v50 = v48.__end_ - v48.__begin_;
      v51 = 2114;
      v52 = v41;
      _os_log_error_impl(&dword_18162D000, v36, OS_LOG_TYPE_ERROR, "Failed to create CSArray with %zu elements: %{public}@", buf, 0x16u);
    }
  }

  if (v48.__begin_)
  {
    v48.__end_ = v48.__begin_;
    operator delete(v48.__begin_);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v35;
}

void sub_1816FC8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t _LSDatabaseCreateStringArrayWithNullValues(void *a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a1;
  v8 = a2;
  StringArrayCommon = _LSDatabaseCreateStringArrayCommon(v7, v8, [v8 count], 1, a3, a4);

  return StringArrayCommon;
}

void _LSDatabaseDisposeStringArray(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = v3;
    if (v4)
    {
      v6 = v4[5];
    }

    v7 = v4;
    _CSArrayEnumerateAllValues();
    v8 = v7;
    if (v4)
    {
      v9 = v7[5];
    }

    _CSArrayDispose();
  }
}

unsigned __int8 *LSResetDatabaseKnownAvailable(_LSDServiceDomain *a1)
{
  result = availabilityStateForServiceDomain(a1);
  atomic_store(0, result);
  return result;
}

uint64_t __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_IS_USING_INSECURE_SPI__()
{
  result = _LSCurrentProcessMayMapDatabase();
  if (result)
  {
    return __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION__("forbidden-ls-deprecated-symbol");
  }

  return result;
}

uint64_t __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION__(const char *a1)
{
  result = [__LSDefaultsGetSharedInstance() issueSandboxExceptionsIfMayNotMapDatabase];
  if (result)
  {
    v2 = _LSGetAuditTokenForSelf();
    v3 = *v2;
    v4 = v2[1];
    return sandbox_check_by_audit_token();
  }

  return result;
}

void __LAUNCH_SERVICES_IS_FAULTING_BECAUSE_THIS_PROCESS_IS_USING_VERY_EXPENSIVE_SPI__()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_18162D000, v0, OS_LOG_TYPE_FAULT, "This process is not entitled to map the LS database. It is using SPI that is very expensive, causing many megabytes of memory to be dirtied in both the client (this process) and the database server. This will become a hard abort soon.", v1, 2u);
  }
}

void _LSContextInvalidate()
{
  v6 = *MEMORY[0x1E69E9840];
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v0 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      _LSContextInvalidate_cold_2();
    }
  }

  else
  {
    v1 = _CFGetEUID();
    v2 = v1;
    _LSReleaseLocalDatabase(v2);
    v0 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      v3 = _LSSessionKeyCopyDescription(v1);
      _LSContextInvalidate_cold_1(v3, v5, v0);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL _LSContextInitWithPath(id *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSContextInitWithPath(LSContext *, const char *, NSError *__autoreleasing *)"}];
    [v13 handleFailureInFunction:v14 file:@"LSDatabase.mm" lineNumber:3360 description:{@"Invalid parameter not satisfying: %@", @"ioContext != NULL"}];

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSContextInitWithPath(LSContext *, const char *, NSError *__autoreleasing *)"}];
    [v15 handleFailureInFunction:v16 file:@"LSDatabase.mm" lineNumber:3361 description:{@"Invalid parameter not satisfying: %@", @"inPath != NULL"}];

    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_3:
  *a1 = 0;
  v6 = [[FSNode alloc] initWithFileSystemRepresentation:a2 flags:0 error:a3];
  v7 = v6;
  if (v6 && (v8 = _LSCreateStoreWithFileContents(v6, a3)) != 0)
  {
    v9 = 4294967294;
    v10 = _LSDatabaseCreate(v7, v9, v8, a3);
    v11 = v10 != 0;
    if (v10)
    {
      objc_storeStrong(a1, v10);
    }

    CFRelease(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t _LSContextUpdate(_LSDatabase **a1, int a2, void *a3)
{
  if (a2 && ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0 && objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer"))
  {
    if (a1 && *a1)
    {
      sessionKey = (*a1)->sessionKey;
      _LSReleaseLocalDatabase(sessionKey);
      goto LABEL_9;
    }

    v7 = +[_LSDServiceDomain defaultServiceDomain];
    v8 = [(_LSDServiceDomain *)v7 resolvedSessionKey];
    _LSReleaseLocalDatabase(v8);

    if (a1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (!a1 || !_LSDatabaseNeedsUpdate(*a1))
  {
    return 1;
  }

LABEL_9:
  _LSContextDestroy(a1);

  return _LSContextInitReturningError(a1, a3);
}

uint64_t _LSReleaseLocalDatabase(LSSessionKey a1)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1;
  v3 = _LSGetSession(v2);
  v4 = v3[3];
  if (v4 && (v5 = *(v3[3] + 32), v4, (v5 & 4) != 0))
  {
    v6 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136446210;
      v10 = "void _LSReleaseLocalDatabase(LSSessionKey)";
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "Ignoring call to %{public}s because the database was pushed by another process.", &v9, 0xCu);
    }
  }

  else
  {
    LSSession::setDatabase(v3, 0);
  }

  result = os_unfair_recursive_lock_unlock();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _LSDatabaseGetNoServerLock()
{
  if (_LSDatabaseGetNoServerLock::once != -1)
  {
    _LSContextDestroy_cold_1();
  }

  return _LSDatabaseGetNoServerLock::result;
}

void _LSContextRemoveChangeObserver(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = _LSGetDispatchTokenQueue();
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSContextRemoveChangeObserver_block_invoke;
    v3[3] = &unk_1E6A1ABE8;
    v4 = v1;
    v5 = v4;
    dispatch_barrier_async(v2, v3);
  }
}

void _LSContextObserveChange(void **a1)
{
  if (_LSDatabaseGetNoServerLock::once == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    _LSContextDestroy_cold_1();
    if (!a1)
    {
      return;
    }
  }

  if (*a1)
  {
    v2 = _LSDatabaseGetNoServerLock::result;
    *(*a1 + 32) |= 4u;
    if (v2)
    {
      pthread_mutex_lock(v2);
      _LSSetLocalDatabase(*a1);
      _LSSetCurrentProcessMayMapDatabase(1);

      pthread_mutex_unlock(v2);
    }

    else
    {
      _LSSetLocalDatabase(*a1);

      _LSSetCurrentProcessMayMapDatabase(1);
    }
  }
}

void _LSContextReleaseObservedChange(LSSessionKey **a1)
{
  if (_LSDatabaseGetNoServerLock::once == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    _LSContextDestroy_cold_1();
    if (!a1)
    {
      return;
    }
  }

  if (*a1)
  {
    v2 = _LSDatabaseGetNoServerLock::result;
    if (_LSDatabaseGetNoServerLock::result)
    {
      pthread_mutex_lock(_LSDatabaseGetNoServerLock::result);
      v3 = (*a1)[2];
      _LSReleaseLocalDatabaseEvenIfForced(v3);
      v4 = _LSGetAuditTokenForSelf();
      v5 = _LSAuditTokenMayMapDatabase(v4);
      _LSSetCurrentProcessMayMapDatabase(v5);

      pthread_mutex_unlock(v2);
    }

    else
    {
      v6 = (*a1)[2];
      _LSReleaseLocalDatabaseEvenIfForced(v6);
      v7 = _LSGetAuditTokenForSelf();
      v8 = _LSAuditTokenMayMapDatabase(v7);

      _LSSetCurrentProcessMayMapDatabase(v8);
    }
  }
}

uint64_t _LSReleaseLocalDatabaseEvenIfForced(LSSessionKey a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = a1;
  v3 = _LSGetSession(v2);
  LSSession::setDatabase(v3, 0);

  return os_unfair_recursive_lock_unlock();
}

uint64_t _LSDatabaseSentinelGet()
{
  pthread_mutex_lock(&sentinelLock);
  v0 = sentinelCount;
  pthread_mutex_unlock(&sentinelLock);
  if (v0)
  {
    return 1;
  }

  v2 = [__LSDefaultsGetSharedInstance() dbSentinelFileURL];
  v1 = _LSDatabaseRecoveryFileExists(v2);

  return v1;
}

void _LSDatabaseSentinelIncrement()
{
  pthread_mutex_lock(&sentinelLock);
  v0 = sentinelCount;
  if (sentinelCount == -1)
  {
    v1 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseSentinelIncrement_cold_1();
    }

    abort();
  }

  ++sentinelCount;
  pthread_mutex_unlock(&sentinelLock);
  if (!v0)
  {
    v2 = [__LSDefaultsGetSharedInstance() dbSentinelFileURL];
    _LSDatabaseCreateRecoveryFile(v2);
  }
}

uint64_t _LSDatabaseSentinelDecrement()
{
  pthread_mutex_lock(&sentinelLock);
  if (!sentinelCount)
  {
    v1 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseSentinelDecrement_cold_1();
    }

    abort();
  }

  --sentinelCount;

  return pthread_mutex_unlock(&sentinelLock);
}

void _LSDatabaseSentinelFlush()
{
  pthread_mutex_lock(&sentinelLock);
  v0 = sentinelCount;
  pthread_mutex_unlock(&sentinelLock);
  if (!v0)
  {
    v1 = [__LSDefaultsGetSharedInstance() dbSentinelFileURL];
    _LSDatabaseDeleteRecoveryFile(v1);
  }
}

uint64_t _LSDatabaseGetSyncInterrupted()
{
  v0 = [__LSDefaultsGetSharedInstance() dbSyncInterruptedFileURL];
  v1 = _LSDatabaseRecoveryFileExists(v0);

  return v1;
}

void _LSDatabaseSetSyncInterrupted()
{
  v0 = [__LSDefaultsGetSharedInstance() dbSyncInterruptedFileURL];
  _LSDatabaseCreateRecoveryFile(v0);
}

void _LSDatabaseClearSyncInterrupted()
{
  v0 = [__LSDefaultsGetSharedInstance() dbSyncInterruptedFileURL];
  _LSDatabaseDeleteRecoveryFile(v0);
}

id _LSDatabaseGetMobileInstallSyncupGroup()
{
  if ([__LSDefaultsGetSharedInstance() isServer] && _LSDatabaseGetMobileInstallSyncupGroup::onceToken != -1)
  {
    _LSDatabaseGetMobileInstallSyncupGroup_cold_1();
  }

  v0 = _LSDatabaseGetMobileInstallSyncupGroup::syncupGroup;

  return v0;
}

id _LSDatabaseGetInstallingGroup()
{
  if ([__LSDefaultsGetSharedInstance() isServer] && _LSDatabaseGetInstallingGroup::once != -1)
  {
    _LSDatabaseGetInstallingGroup_cold_1();
  }

  v0 = _LSDatabaseGetInstallingGroup::installingGroup;

  return v0;
}

void _LSArmSaveTimerWithObserver(char a1, void *a2)
{
  v4 = a2;
  [__LSDefaultsGetSharedInstance() databaseSaveInterval];
  _LSArmSaveTimerWithTimeout(a1, v4, v3);
}

void _LSArmSaveTimerWithTimeout(char a1, void *a2, double a3)
{
  v5 = a2;
  if ([__LSDefaultsGetSharedInstance() isServer] && (objc_msgSend(__LSDefaultsGetSharedInstance(), "isInSyncBubble") & 1) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = _LSServer_SelfSessionKey();
    v7 = _LSGetSession(v6);
    v8 = v7;
    *v7 |= a1;
    if (v5)
    {
      LSSession::addSaveObserver(v7, v5);
    }

    if ((v8[20] & 1) == 0)
    {
      v9 = _LSServer_DatabaseExecutionContext();
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke;
      v15[3] = &__block_descriptor_40_e5_v8__0l;
      v15[4] = v8;
      v10 = MEMORY[0x1865D71B0](v15);
      v11 = [(LSDBExecutionContext *)v9 maintenanceQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_394;
      v12[3] = &unk_1E6A19728;
      v13 = v9;
      v14 = v10;
      _LSDispatchCoalescedAfterDelay(v8 + 8, v11, v12, a3);
    }

    os_unfair_recursive_lock_unlock();
  }
}

void _LSResetServer()
{
  if ([__LSDefaultsGetSharedInstance() hasServer] && (objc_msgSend(__LSDefaultsGetSharedInstance(), "isServer") & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:?];
    [v9 resetServerStoreWithCompletionHandler:&__block_literal_global_130];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v15 = 0;
    v0 = _LSCreateEmptyStore(&v15);
    v1 = v15;
    if (v0)
    {
      v2 = _LSGetStoreNode();
      v3 = _LSServer_SelfSessionKey();
      v13 = v1;
      v4 = _LSDatabaseCreate(v2, v3, v0, &v13);
      v5 = v13;

      v14 = v4;
      if (v4)
      {
        if ([__LSDefaultsGetSharedInstance() isServer])
        {
          v6 = _LSServer_DatabaseExecutionContext();
          [(LSDBExecutionContext *)v6 setServerDatabase:v4];
        }

        else
        {
          _LSSetLocalDatabase(v4);
        }

        _LSDatabaseClean(&v14);
        v12 = [__LSDefaultsGetSharedInstance() isServer];
        v11 = v14;
        if (v12)
        {
          _LSDatabaseCommit(v14);
        }
      }

      else
      {
        v10 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          _LSResetServer_cold_1();
        }

        v11 = 0;
      }

      CFRelease(v0);
    }

    else
    {
      v7 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _LSResetServer_cold_2();
      }

      v5 = v1;
    }
  }
}

void sub_1816FDE70(_Unwind_Exception *a1)
{
  CFRelease(v1);

  _Unwind_Resume(a1);
}

id _LSGetStoreNode(void)
{
  if (_LSGetStoreNode(void)::once != -1)
  {
    _LSGetStoreNode();
  }

  v1 = _LSGetStoreNode(void)::result;

  return v1;
}

void _LSDatabaseDisplayHeader(void *a1, void *a2, _BYTE *a3)
{
  v112 = *MEMORY[0x1E69E9840];
  v68 = a1;
  v5 = a2;
  if (a3)
  {
    *a3 = 1;
  }

  [v68 write:@"Checking data integrity..."];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 5);
  }

  if (_CSStoreValidate())
  {
    v8 = v5;
    if (v5)
    {
      v9 = *(v5 + 5);
    }

    v10 = v5;
    if (v5)
    {
      v11 = v5 + 12;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11[395];
    v93 = MEMORY[0x1E69E9820];
    v94 = 3221225472;
    v95 = ___LSDatabaseDisplayHeader_block_invoke;
    v96 = &unk_1E6A1B740;
    v13 = v5;
    v97 = v13;
    v14 = v68;
    v98 = v14;
    _CSStoreEnumerateUnits();
    v15 = v13;
    if (v5)
    {
      v16 = *(v13 + 5);
    }

    v17 = v13;
    v18 = v11[1];
    v87 = MEMORY[0x1E69E9820];
    v88 = 3221225472;
    v89 = ___LSDatabaseDisplayHeader_block_invoke_3;
    v90 = &unk_1E6A1B740;
    v19 = v13;
    v91 = v19;
    v20 = v14;
    v92 = v20;
    _CSStoreEnumerateUnits();
    v21 = v19;
    if (v5)
    {
      v22 = *(v19 + 5);
    }

    v23 = v19;
    v24 = v11[2];
    v81 = MEMORY[0x1E69E9820];
    v82 = 3221225472;
    v83 = ___LSDatabaseDisplayHeader_block_invoke_6;
    v84 = &unk_1E6A1B740;
    v25 = v19;
    v85 = v25;
    v26 = v20;
    v86 = v26;
    _CSStoreEnumerateUnits();
    [v26 write:@"...done."];
    v27 = _LSGetStatus();
    if ((v27 & 0x80) != 0)
    {
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = ___LSDatabaseDisplayHeader_block_invoke_8;
      v79[3] = &unk_1E6A1A830;
      v80 = v26;
      [v80 withTextColor:0x7FFFLL block:v79];
    }

    if ((v27 & 0x100) != 0)
    {
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = ___LSDatabaseDisplayHeader_block_invoke_9;
      v77[3] = &unk_1E6A1A830;
      v78 = v26;
      [v78 withTextColor:48896 block:v77];
    }

    if ((v27 & 0x200) != 0)
    {
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = ___LSDatabaseDisplayHeader_block_invoke_10;
      v75[3] = &unk_1E6A1A830;
      v76 = v26;
      [v76 withTextColor:0x7FFFLL block:v75];
    }

    v28 = @"are NOT";
    if (v5)
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      _LSDatabaseGetHeader(v25, &v99);
      if (BYTE8(v104))
      {
        v28 = @"are";
      }
    }

    [v26 write:@"Status" format:{@"Preferences %@ loaded.", v28}];
    v29 = _LSDatabaseGetSeededSystemVersion(v25);
    v64 = v29;
    if (v29)
    {
      [v26 write:@"Seeded System Version" string:v29];
    }

    v30 = _LSDatabaseGetSeededCryptexVersion(v25);
    v63 = v30;
    if (v30)
    {
      [v26 write:@"Seeded Cryptex Version" string:v30];
    }

    v31 = _LSDatabaseGetSeededModelCode(v25);
    v65 = v31;
    if (v31)
    {
      [v26 write:@"Seeded Model Code" string:v31];
    }

    v32 = _LSDatabaseGetCacheGUID(v25);
    v66 = v32;
    if (v32)
    {
      v33 = [v32 UUIDString];
      [v26 write:@"CacheGUID" string:v33];
    }

    else
    {
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = ___LSDatabaseDisplayHeader_block_invoke_11;
      v73[3] = &unk_1E6A1A830;
      v74 = v26;
      [v74 withWarningColors:v73];
      v33 = v74;
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    _LSDatabaseGetHeader(v25, &v99);
    if (v110)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [v26 write:@"CacheSequenceNum" number:v34];
    }

    else
    {
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = ___LSDatabaseDisplayHeader_block_invoke_12;
      v71[3] = &unk_1E6A1A830;
      v72 = v26;
      [v72 withWarningColors:v71];
      v34 = v72;
    }

    v35 = v25;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    _LSDatabaseGetHeader(v35, &v99);
    if (*(&v111 + 1))
    {
      v67 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:*(&v111 + 1)];

      if (v67)
      {
        [v67 timeIntervalSinceReferenceDate];
        [v26 write:@"Date Initialized" interval:?];
LABEL_43:
        v36 = [(FSNode *)v35->node pathWithError:0];
        if (v36)
        {
          v37 = v35->node;
          v38 = [(FSNode *)v37 URL];
          v39 = [v26 linkURL:v38 linkedText:v36];
          [v26 write:@"Path" string:v39];
        }

        else
        {
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = ___LSDatabaseDisplayHeader_block_invoke_13;
          v69[3] = &unk_1E6A1A830;
          v70 = v26;
          [(FSNode *)v70 withWarningColors:v69];
          v37 = v70;
        }

        v40 = [(_LSDatabase *)v35 description];
        [v26 write:@"DB Object" string:v40];

        v41 = _LSGetBundle();
        v42 = v41;
        v43 = MEMORY[0x1E695E500];
        if (v41)
        {
          v44 = CFBundleCopyBundleURL(v41);
          v45 = CFBundleGetValueForInfoDictionaryKey(v42, *v43);
          v46 = [(__CFURL *)v44 path];
          v47 = [v26 linkURL:v44 linkedText:v46];
          if (v45)
          {
            [v26 write:@"DB Bundle" format:{@"%@ (v %@)", v47, v45, v63, v64, v65, v66}];
          }

          else
          {
            [v26 write:@"DB Bundle" string:v47];
          }
        }

        v48 = v35;
        v49 = [(__CSStore *)v35->_store description];
        [v26 write:@"Store Object" string:v49];

        v50 = [MEMORY[0x1E696AAE8] bundleForClass:_CSStoreGetXPCClass()];
        v51 = v50;
        if (v50)
        {
          v52 = [v50 bundleURL];
          v53 = [v51 objectForInfoDictionaryKey:*v43];
          v54 = [v52 path];
          v55 = [v26 linkURL:v52 linkedText:v54];
          if (v53)
          {
            [v26 write:@"Store Bundle" format:{@"%@ (v %@)", v55, v53}];
          }

          else
          {
            [v26 write:@"Store Bundle" string:v55];
          }
        }

        v56 = v35;
        store = v35->_store;
        v58 = _CSStoreCopyDebugDescriptionOfBytesInRange();
        [v26 writeAttributedString:v58];

        v59 = v35;
        v60 = v35->_store;
        v61 = _CSStoreCopyMemoryStatistics();
        [v26 writeAttributedString:v61];

        goto LABEL_57;
      }
    }

    else
    {
    }

    v67 = 0;
    goto LABEL_43;
  }

  [v68 write:@"Data integrity check failed."];
  if (a3)
  {
    *a3 = 0;
  }

LABEL_57:

  v62 = *MEMORY[0x1E69E9840];
}

void _LSSetCrashReporterMessage(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = strdup([(NSString *)v1 UTF8String]);
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _LSSetCrashReporterMessage_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v6 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL15_LSLoggingQueuev_block_invoke_0()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.logging", v2);
  v1 = _LSLoggingQueue(void)::logQueue;
  _LSLoggingQueue(void)::logQueue = v0;
}

uint64_t ___ZL16_LSDatabaseCleanPU8__strongP11_LSDatabase_block_invoke(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11 = *a3;
  v12 = *(a3 + 4);
  v10 = 0;
  v5 = _LSAliasGetPath(*(a1 + 32), SHIDWORD(v11));
  if (v5)
  {
    v6 = [[FSNode alloc] initWithPath:v5 flags:0 error:0];
    v7 = v6;
    if (v6)
    {
      v8 = [(FSNode *)v6 getVolumeIdentifier:&v10 error:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *(&v11 + 4) = v10;
  BYTE2(v11) = v8;
  return _LSContainerSet(*(a1 + 32), a2, &v11);
}

id __copy_helper_block_ea8_32c14_ZTS9LSContext(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void LSCrashMessage::~LSCrashMessage(LSCrashMessage *this)
{
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSSetCrashMessage();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_0;
  block[3] = &unk_1E6A1A830;
  v2 = 0;
  dispatch_sync(_LSLoggingQueue(void)::logQueue, block);
}

Class initEXEnumerator(void)
{
  if (!ExtensionFoundationLibrary(void)::frameworkLibrary)
  {
    ExtensionFoundationLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
  }

  result = objc_getClass("EXEnumerator");
  classEXEnumerator = result;
  getEXEnumeratorClass = EXEnumeratorFunction;
  return result;
}

{
  if (!ExtensionFoundationLibrary(void)::frameworkLibrary)
  {
    ExtensionFoundationLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
  }

  result = objc_getClass("EXEnumerator");
  classEXEnumerator = result;
  getEXEnumeratorClass = EXEnumeratorFunction;
  return result;
}

id EXEnumeratorFunction(void)
{
  return classEXEnumerator;
}

{
  return classEXEnumerator;
}

void LSCrashMessage::LSCrashMessage(LSCrashMessage *this, NSString *a2)
{
  v2 = a2;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSSetCrashMessage();
  }

  v3 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_0;
  block[3] = &unk_1E6A1A830;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

void ___ZL52_LSDatabaseRegisterCanonicalNamesFromStringLocalizerP11_LSDatabaseP18_LSStringLocalizer_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!LaunchServices::CanonicalString::Find(*(a1 + 32), v7, v10))
  {
    if (LaunchServices::CanonicalString::Add(*(a1 + 32), v7, v8))
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v11 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543874;
        v14 = v7;
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = v9;
        _os_log_error_impl(&dword_18162D000, v11, OS_LOG_TYPE_ERROR, "Failed to add canonical string %{public}@, localizations %{public}@, missingLocalizations %{public}@", &v13, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v4 = result;
  if (a3[24])
  {
    result = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_cold_1(result, a3 + 24);
  }

  if (a3[36])
  {
    result = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_cold_2(v4, a3 + 36);
  }

  if (a3[129])
  {
    return ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_cold_3(v4, a3 + 129);
  }

  return result;
}

uint64_t ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 96))
  {
    result = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2_cold_1(result, (a3 + 96));
  }

  v6 = *(a3 + 144);
  v5 = (a3 + 144);
  if (v6)
  {
    return ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2_cold_2(v4, v5);
  }

  return result;
}

uint64_t __Block_byref_object_copy__367(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL45_LSDatabaseCreateSnapshotAgainstAccessContextP11_LSDatabaseP22__CSStoreAccessContextPU15__autoreleasingP7NSError_block_invoke(void *a1)
{
  if (a1[7])
  {
    v2 = *(a1[5] + 8);
    MutableCopy = CSStoreCreateMutableCopy();
    if (MutableCopy)
    {
      v4 = MutableCopy;
      v5 = *(a1[4] + 16);
      v6 = *(a1[4] + 8);
      v7 = a1[7];
      v8 = *(a1[5] + 8);
      obj = *(v8 + 40);
      v9 = v5;
      v10 = _LSDatabaseCreateWithAccessContext(v6, v9, v7, 0, &obj);
      objc_storeStrong((v8 + 40), obj);
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      CFRelease(v4);
    }
  }

  else
  {
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSDatabaseCreateSnapshotAgainstAccessContext_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 2845);
    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void ___ZL34LSCheckDatabaseAvailableWithServerP17_LSDServiceDomain_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = v2;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v5 domain];
    v8 = [v5 code];
    v9 = [v5 userInfo];
    v10 = [v6 initWithFormat:@"(Error domain %@ code %llu, ui: %@)", v7, v8, v9];

    *buf = 136315394;
    v12 = "LSCheckDatabaseAvailableWithServer_block_invoke";
    v13 = 2112;
    v14 = v10;
    _os_log_error_impl(&dword_18162D000, v3, OS_LOG_TYPE_ERROR, "%s: Error on proxy: %@", buf, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL34LSCheckDatabaseAvailableWithServerP17_LSDServiceDomain_block_invoke_382(uint64_t result, int a2)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t ___ZL31_LSDatabaseNotificationRegister12LSSessionKey_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = _LSSessionKeyCopyDescription(*(a1 + 40));
    v10 = 138543618;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "NotifyToken::RegisterDispatch(%{public}@) fired for session key %@", &v10, 0x16u);
  }

  v5 = *(a1 + 40);
  _LSReleaseLocalDatabase(v5);
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(a1 + 40);
  v7 = _LSGetSession(v6);
  LaunchServices::notifyd::NotifyToken::cancel((v7 + 12));
  result = os_unfair_recursive_lock_unlock();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL30_LSClearCrashMessageAfterDelayi_block_invoke()
{
  v0 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v1 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v1, 0, memory_order_relaxed, memory_order_relaxed);
  if (v1 == v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  free(v2);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void LSSession::addSaveObserver(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v6 = a1[5];
  v5 = a1[6];
  if (v6 >= v5)
  {
    v8 = a1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v17 = a1 + 4;
    if (v12)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100]((a1 + 4), v12);
    }

    v13 = 0;
    v14 = (8 * v9);
    v16 = 0;
    *v14 = v4;
    v15 = 8 * v9 + 8;
    std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer((a1 + 4), &v13);
    v7 = a1[5];
    std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(&v13);
  }

  else
  {
    *v6 = v4;
    v7 = v6 + 1;
    a1[5] = v7;
  }

  a1[5] = v7;
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v61 = 0;
  memset(&v63[1], 0, 11);
  v59 = 0uLL;
  v60 = 0;
  os_unfair_recursive_lock_lock_with_options();
  if (*(*(a1 + 32) + 24))
  {
    v2 = *(*(a1 + 32) + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v61 = *v3;
  v4 = v3[11];
  v5 = *(v3 + 1);
  LOWORD(v63[2]) = *(v3 + 9);
  v63[1] = v5;
  BYTE2(v63[2]) = v4;
  if (*v3)
  {
    *v3 = 0;
  }

  v7 = *(v3 + 2);
  v6 = (v3 + 32);
  *buf = v7;
  *&buf[16] = v6[2];
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  std::vector<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *),std::allocator<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *)>>::shrink_to_fit(v6);
  std::vector<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *),std::allocator<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *)>>::__vdeallocate(&v59);
  v59 = *buf;
  v60 = *&buf[16];
  memset(buf, 0, 24);
  v64 = buf;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v64);
  os_unfair_recursive_lock_unlock();
  if (v2)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v2;
    v11 = v9;
    v12 = (v61 >> 1) & 1 | v61;
    if ((v61 >> 1) & 1 | v61 & 1)
    {
      v13 = v9;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(v13, buf);
      if ((DWORD2(v69) & 0x1000000) != 0)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.LaunchServices.ApplicationsChanged", 0, 0, 1u);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(v13, buf);
      if ((DWORD2(v69) & 0x2000000) != 0)
      {
        v15 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(v15, @"com.apple.LaunchServices.DocumentTypesChanged", 0, 0, 1u);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(v13, buf);
      if ((DWORD2(v69) & 0x4000000) != 0)
      {
        v16 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(v16, @"com.apple.LaunchServices.URLTypesChanged", 0, 0, 1u);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(v13, buf);
      if ((DWORD2(v69) & 0x8000000) != 0)
      {
        v17 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(v17, @"com.apple.LaunchServices.TypeDeclarationsChanged", 0, 0, 1u);
      }

      v18 = _LSServer_DatabaseExecutionContext();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL34_LSDatabasePostChangeNotificationsP11_LSDatabase_block_invoke;
      *&buf[24] = &unk_1E6A18EB0;
      v19 = v13;
      *&v66 = v19;
      [(LSDBExecutionContext *)v18 performAsyncWrite:buf];

      v20 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotificationWithOptions(v20, @"com.apple.LaunchServices.DatabaseChange", 0, 0, 0);
    }

    if ((v12 & 4) != 0)
    {
      *buf = -1163005939;
      v21 = *(v11 + 4);
      if (_LSGetConsoleOwnerUID(buf))
      {
        if (*buf != v21)
        {
          goto LABEL_23;
        }
      }

      else if (v21)
      {
        goto LABEL_23;
      }

      _LSSetKernelPackageExtensions();
    }

LABEL_23:
    if ((v12 & 1) == 0)
    {
      v22 = 0;
      v23 = 1;
LABEL_37:
      if ((v12 & 2) != 0 && v23)
      {
        v31 = LSHandlerPref::Save(v11, v10);
        if (v31)
        {
          v32 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            _LSSessionKeyCopyDescription(v11[2]);
            ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_4();
          }

          v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v31, 0, "_LSSessionSave", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 916);
          v33 = v22;
          LOBYTE(v23) = 0;
        }

        else
        {
          LOBYTE(v23) = 1;
        }
      }

      v34 = v22;
      if ((v23 & 1) == 0)
      {
        v35 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_5();
        }
      }

      v37 = *(&v59 + 1);
      for (i = v59; i != v37; ++i)
      {
        v38 = MEMORY[0x1865D71B0](*i);
        v39 = objc_autoreleasePoolPush();
        (v38)[2](v38, 1, v11, v34);
        objc_autoreleasePoolPop(v39);
      }

      objc_autoreleasePoolPop(v8);
      goto LABEL_52;
    }

    v62 = 0;
    v24 = v11;
    if (![__LSDefaultsGetSharedInstance() isServer] || objc_msgSend(__LSDefaultsGetSharedInstance(), "isInSyncBubble"))
    {
      _LSDatabaseCommit(v24);
LABEL_28:
      v23 = 1;
LABEL_29:

      v25 = v62;
      if (v23)
      {
        v26 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = _LSSessionKeyCopyDescription(v24[2]);
          *buf = 136446466;
          *&buf[4] = "_LSSessionSave";
          *&buf[12] = 2112;
          *&buf[14] = v27;
          _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: saved database for session %@", buf, 0x16u);
        }

        v22 = 0;
      }

      else
      {
        v28 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = _LSSessionKeyCopyDescription(v24[2]);
          ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_3(v29, v25, buf, v28);
        }

        v30 = v25;
        v22 = v25;
      }

      goto LABEL_37;
    }

    v41 = v24[1];
    v42 = [v41 pathWithError:&v62];

    if (v42)
    {
      v43 = v24;
      v44 = v24[5];
      v45 = _CSStoreValidate();
      if (!v45)
      {
        v46 = [v42 stringByAppendingString:@"_corrupt"];

        v42 = v46;
      }

      v47 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v42 isDirectory:0];
      if (v47)
      {
        *buf = 0;
        v48 = v24;
        v49 = v24[5];
        _LSDatabaseGetFileResourceProperties();
        v50 = *buf;
        *buf = 0;
        if (v50)
        {
          CFRelease(v50);
        }

        v51 = _CSStoreWriteToURL();
        if (v51)
        {
          _LSDatabaseSentinelFlush();
          if (v45)
          {
            v52 = 0;
          }

          else
          {
            v53 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_1();
            }

            v52 = 0;
          }
        }

        else
        {
          v52 = *buf;
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        if (v51)
        {

          v54 = v24;
          if (([(_LSDatabase *)v54 isSeeded]& 1) != 0)
          {
            MEMORY[0x1865D7C40]();
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v66 = 0u;
            memset(buf, 0, sizeof(buf));
            _LSDatabaseGetHeader(v54, buf);
            v55 = v75;
            v56 = _LSServer_DatabaseExecutionContext();
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke;
            *&buf[24] = &unk_1E6A19068;
            *&v67 = v55;
            *&v66 = v54;
            *(&v66 + 1) = &__block_literal_global_417;
            [(LSDBExecutionContext *)v56 performAsyncWrite:buf];
          }

          goto LABEL_28;
        }
      }

      else
      {
        v52 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -37, 0, "_LSDatabaseSave", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 2526);
      }

      v57 = v52;
      v62 = v52;
      v58 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_cold_2();
      }
    }

    v23 = 0;
    goto LABEL_29;
  }

LABEL_52:
  v63[0] = &v59;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](v63);

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1817002D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFTypeRef cf, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (cf)
  {
    CFRelease(cf);
  }

  a14 = &a9;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a14);

  _Unwind_Resume(a1);
}

void ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_394(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___ZL26_LSArmSaveTimerWithTimeouthdU13block_pointerFvbP11_LSDatabaseP7NSErrorE_block_invoke_2;
  v2[3] = &unk_1E6A1A660;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [(LSDBExecutionContext *)v1 syncRead:v2];
}

void std::vector<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *),std::allocator<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *)>>::__vdeallocate(void **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void ___ZL34_LSDatabasePostChangeNotificationsP11_LSDatabase_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v20, v7, 0);

  if (!v8)
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = +[_LSDServiceDomain defaultServiceDomain];
      v18 = LaunchServices::Database::Context::_get(&v20, v17, 0);

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v23;
      }

      *buf = 136315394;
      *&buf[4] = "_LSDatabasePostChangeNotifications_block_invoke";
      v25 = 2112;
      v26 = v19;
      _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "could not connect to database in %s: %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  v9 = *(a1 + 32);
  if (*v8 != v9)
  {
    _LSDefaultLog();
    objc_claimAutoreleasedReturnValue();
    ___ZL34_LSDatabasePostChangeNotificationsP11_LSDatabase_block_invoke_cold_1();
    v10 = *buf;
LABEL_5:

    goto LABEL_11;
  }

  if (*v8)
  {
    _LSDatabaseSetHeaderFlag(v9, 0x1000000, 0);
    v11 = *(a1 + 32);
    if (v11)
    {
      _LSDatabaseSetHeaderFlag(v11, 0x2000000, 0);
      v12 = *(a1 + 32);
      if (v12)
      {
        _LSDatabaseSetHeaderFlag(v12, 0x4000000, 0);
        v13 = *(a1 + 32);
        if (v13)
        {
          _LSDatabaseSetHeaderFlag(v13, 0x8000000, 0);
        }
      }
    }
  }

LABEL_11:
  if (v20 && v22 == 1)
  {
    _LSContextDestroy(v20);
  }

  v14 = v21;
  v20 = 0;
  v21 = 0;

  v22 = 0;
  v15 = v23;
  v23 = 0;

  v16 = *MEMORY[0x1E69E9840];
}

void ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v2 = _LSServer_SelfSessionKey();
  v3 = _LSGetSession(v2);
  if (!*(v3 + 24))
  {
    os_unfair_recursive_lock_unlock();
    goto LABEL_9;
  }

  v5 = (v3 + 24);
  v4 = *(v3 + 24);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *buf = 0u;
  _LSDatabaseGetHeader(v4, buf);
  v6 = v42;
  LODWORD(v5) = [(_LSDatabase *)*v5 isSeeded];
  os_unfair_recursive_lock_unlock();
  if (!v5 || *(a1 + 48) != v6)
  {
LABEL_9:
    gSkippedRemap = 1;
    v15 = _LSDatabaseGetLog();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "_LSDatabaseRemap_block_invoke";
      _os_log_impl(&dword_18162D000, &v15->super, OS_LOG_TYPE_DEFAULT, "%{public}s Skipping database remap because there are unsaved local changes", buf, 0xCu);
    }

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 1);
  v9 = v8;
  if (v8)
  {
    *buf = 0;
    v10 = _LSCreateStoreWithFileContents(v8, buf);
    v11 = *buf;
    v12 = v11;
    if (v10)
    {
      v13 = *(v7 + 2);
      v14 = *(v7 + 3);
      v30 = v11;
      v15 = _LSDatabaseCreateWithAccessContext(v9, v13, v10, v14, &v30);
      v16 = v30;

      CFRelease(v10);
      if (v15)
      {
        v17 = v7;
        _LSSchemaTransferCache(v7 + 48, &v15->_schema);
        v18 = *(v7 + 3);
        [_LSDatabase setAccessContext:v15];

        v12 = 0;
        goto LABEL_18;
      }

      v12 = v16;
    }
  }

  else
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSDatabaseCreateByRemappingDatabase", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 1477);
  }

  v22 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke_cold_1();
  }

  v23 = v12;
  v15 = 0;
  v16 = v12;
LABEL_18:

  v19 = v12;
  if (!v15)
  {
    v24 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke_cold_2();
    }

    v29 = v19;
    v25 = _LSDatabaseCreateFromPersistentStore(7, 0, &v29);
    v26 = v29;

    if (!v25)
    {
      v28 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        ___ZL16_LSDatabaseRemapP11_LSDatabaseU13block_pointerFvbP7NSErrorP8NSStringE_block_invoke_cold_3();
      }

      v15 = 0;
      goto LABEL_31;
    }

    v15 = v25;
    v19 = v26;
  }

  if ([(_LSDatabase *)v15 isSeeded])
  {

    v27 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v27 setServerDatabase:v15];

    _LSDatabaseCommit(v15);
    if (gSkippedRemap == 1)
    {
      gSkippedRemap = 0;
      v28 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = "_LSDatabaseRemap_block_invoke";
        _os_log_impl(&dword_18162D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s remapped the database after skipping a previous remap", buf, 0xCu);
      }

      v26 = 0;
LABEL_31:

      v19 = v26;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:

  v20 = (*(*(a1 + 40) + 16))(*(a1 + 40), v19 == 0, v19, 0);
  MEMORY[0x1865D7C50](v20);

  v21 = *MEMORY[0x1E69E9840];
}

void ___ZL15_LSGetStoreNodev_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [__LSDefaultsGetSharedInstance() databaseStoreFileURL];
  if (v1)
  {
    v2 = [[FSNode alloc] initWithURL:v1 flags:0 error:0];
    v3 = _LSGetStoreNode(void)::result;
    _LSGetStoreNode(void)::result = v2;
  }

  objc_autoreleasePoolPop(v0);
}

void OUTLINED_FUNCTION_7_1(uint64_t a1, _DWORD *a2)
{
  v3 = (*(*(a1 + 48) + 8) + 48);

  std::vector<unsigned int>::push_back[abi:nn200100](v3, a2);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_12_1(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 12) = 2048;
  *(a3 + 14) = v4;
}

void OUTLINED_FUNCTION_18_0(uint64_t a1, _DWORD *a2)
{
  v3 = (*(*(a1 + 40) + 8) + 48);

  std::vector<unsigned int>::push_back[abi:nn200100](v3, a2);
}

id OUTLINED_FUNCTION_21_0(uint64_t a1)
{
  v2 = *(a1 + 32);

  return v2;
}

id getAppProtectionServiceQueue(void)
{
  if (getAppProtectionServiceQueue(void)::sOnce != -1)
  {
    getAppProtectionServiceQueue();
  }

  v1 = getAppProtectionServiceQueue(void)::sQueue;

  return v1;
}

void ___Z28getAppProtectionServiceQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("appProtectionServiceQueue", v2);
  v1 = getAppProtectionServiceQueue(void)::sQueue;
  getAppProtectionServiceQueue(void)::sQueue = v0;
}

void computeAddedAndRemovedBundleIDs(void *a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        [v9 removeObject:v15];
        if (([v8 ls_caseInsensitiveContainsString:v15] & 1) == 0)
        {
          [v10 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = v9;
  *a1 = v9;
  v17 = v10;
  *a2 = v10;

  v18 = *MEMORY[0x1E69E9840];
}

void notifyLSObservers(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = +[LSDBExecutionContext sharedServerInstance];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL17notifyLSObserversP5NSSetS0_bPU15__autoreleasingP7NSError_block_invoke;
  v12[3] = &unk_1E6A1B958;
  v10 = v7;
  v13 = v10;
  v16 = a3;
  v11 = v8;
  v14 = v11;
  v15 = &v17;
  [(LSDBExecutionContext *)v9 syncWrite:v12];
  *a4 = v18[5];

  _Block_object_dispose(&v17, 8);
}

void sub_181701920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void ___ZL17notifyLSObserversP5NSSetS0_bPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  CurrentContext = _LSDatabaseContextGetCurrentContext(v6);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&CurrentContext, v7, 0);

  if (v8)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(a1 + 56);
          updateProtectedBundleFlag(v8, *(*(&v26 + 1) + 8 * i));
        }

        v10 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v10);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = *(a1 + 40);
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(a1 + 56);
          updateProtectedBundleFlag(v8, *(*(&v22 + 1) + 8 * j));
        }

        v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v15);
    }

    _LSArmSaveTimer(1);
    _LSDatabaseCommit(v8->db);
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    }
  }

  if (CurrentContext && v32 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v19 = v31;
  CurrentContext = 0;
  v31 = 0;

  v32 = 0;
  v20 = v33;
  v33 = 0;

  v21 = *MEMORY[0x1E69E9840];
}

void updateProtectedBundleFlag(LSContext *a1, NSString *a2)
{
  v3 = a2;
  [(_LSDatabase *)a1->db store];
  v4 = *([(_LSDatabase *)a1->db schema]+ 4);
  v5 = v3;
  _CSStoreEnumerateUnits();
}

void ___ZL25updateProtectedBundleFlagP9LSContextP8NSStringbb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(_LSDatabase *)**(a1 + 40) store];
  v5 = *(a1 + 32);
  v6 = _CSGetStringForCFString();
  if (v6 && *(a3 + 12) == v6)
  {
    v7 = *(a3 + 189);
    v8 = *(a1 + 49);
    *(a1 + 48);
    *(a1 + 48);
    v9 = **(a1 + 40);

    _LSBundleSetMoreFlags(v9);
  }
}

void sub_1817037FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL47dispatchEnumerateAndRegisterWithDiagnosticFramet_block_invoke()
{
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_CREATION_FROM_STORE_FAILED__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_IT_WAS_CORRUPT__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_IT_DID_NOT_EXIST__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_A_RECOVERY_FILE_EXISTED__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_ALLOC_FAILED_DURING_STORE_CREATION__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_STORE_CREATION_FAILED_UNEXPECTEDLY__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_CREATION_FROM_FRESH_FAILED__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_THE_DATABASE_WAS_CREATED_FRESH__);

  return std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_UNEXPECTEDLY__);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void _LSDatabaseContextStopAccessing(LaunchServices::DatabaseContext *a1)
{
  PerThreadStateReference = LaunchServices::DatabaseContext::getPerThreadStateReference(a1);
  v2 = LaunchServices::DatabaseContext::getLog(PerThreadStateReference);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _LSDatabaseContextStopAccessing_cold_1(PerThreadStateReference, v2);
  }

  v3 = PerThreadStateReference[4];
  if (v3 <= 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDatabaseContextStopAccessing()"];
    [v7 handleFailureInFunction:v8 file:@"LSDatabaseContext.mm" lineNumber:220 description:@"Called +stopAccessing when not accessing the database. This is a bug in the Launch Services client."];

    v3 = PerThreadStateReference[4];
  }

  v4 = v3 - 1;
  PerThreadStateReference[4] = v4;
  if (!v4)
  {
    if (*PerThreadStateReference)
    {
      if (*(PerThreadStateReference + 16) == 1)
      {
        _LSContextDestroy(*PerThreadStateReference);
      }
    }

    v5 = PerThreadStateReference[1];
    *PerThreadStateReference = 0;
    PerThreadStateReference[1] = 0;

    *(PerThreadStateReference + 16) = 0;
    v6 = PerThreadStateReference[3];
    PerThreadStateReference[3] = 0;
  }
}

void _LSDatabaseContextAccessWithDomainUsingBlock(LaunchServices::DatabaseContext *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  started = _LSDatabaseContextStartAccessingWithDomain(a1, a2, &v7);
  v5 = v7;
  v6 = (*(a3 + 16))(a3, started, v5);
  if (started)
  {
    _LSDatabaseContextStopAccessing(v6);
  }
}

void sub_1817046CC(_Unwind_Exception *a1)
{
  if (v2)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void _LSDatabaseContextAccessUsingBlock(const unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = uidPointerToDomain(a1);
  _LSDatabaseContextAccessWithDomainUsingBlock(v5, a2, a3);
}

void _LSDatabaseContextAccessContextUsingBlock(LaunchServices::DatabaseContext *a1, uint64_t a2)
{
  PerThreadStateReference = LaunchServices::DatabaseContext::getPerThreadStateReference(a1);
  if (*(PerThreadStateReference + 4) >= 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSDatabaseContextAccessContextUsingBlock(LSContext * _Nonnull, void (^const __strong _Nonnull)())"}];
    [v10 handleFailureInFunction:v11 file:@"LSDatabaseContext.mm" lineNumber:251 description:@"Already accessing a database context when asked to access one explicitly. The results of this operation are undefined."];
  }

  if (*PerThreadStateReference && PerThreadStateReference[16] == 1)
  {
    _LSContextDestroy(*PerThreadStateReference);
  }

  v5 = *(PerThreadStateReference + 1);
  *PerThreadStateReference = 0;
  *(PerThreadStateReference + 1) = 0;

  PerThreadStateReference[16] = 0;
  v6 = *(PerThreadStateReference + 3);
  *(PerThreadStateReference + 3) = 0;

  if (a1)
  {
    *PerThreadStateReference = PerThreadStateReference + 8;
    objc_storeStrong(PerThreadStateReference + 1, *a1);
    PerThreadStateReference[16] = 0;
  }

  v7 = *(PerThreadStateReference + 3);
  *(PerThreadStateReference + 3) = 0;

  *(PerThreadStateReference + 4) = 1;
  (*(a2 + 16))(a2);
  *(PerThreadStateReference + 4) = 0;
  if (*PerThreadStateReference && PerThreadStateReference[16] == 1)
  {
    _LSContextDestroy(*PerThreadStateReference);
  }

  v8 = *(PerThreadStateReference + 1);
  *PerThreadStateReference = 0;
  *(PerThreadStateReference + 1) = 0;

  PerThreadStateReference[16] = 0;
  v9 = *(PerThreadStateReference + 3);
  *(PerThreadStateReference + 3) = 0;
}

_BYTE *_LSDatabaseContextSetDetachProxyObjects(LaunchServices::DatabaseContext *a1)
{
  v1 = a1 ^ 1;
  result = LaunchServices::DatabaseContext::getPerThreadStateReference(a1);
  result[40] = v1;
  return result;
}

id getXPCObjectForNodeAndStore(FSNode *a1, const __CSStore *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v12 = 0;
  LODWORD(a1) = [(FSNode *)a1 getFileSystemRepresentation:string error:&v12];
  v4 = v12;
  if (a1)
  {
    xpc_dictionary_set_string(v3, "path", string);
  }

  else
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      getXPCObjectForNodeAndStore(v4, v5);
    }
  }

  cf = 0;
  v6 = _CSStoreCreateXPCRepresentation();
  if (v6)
  {
    xpc_dictionary_set_value(v3, "store", v6);
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      getXPCObjectForNodeAndStore(&cf, v7);
    }
  }

  v8 = getpid();
  xpc_dictionary_set_uint64(v3, "insecureProcessID", v8);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_181704D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_181705308(_Unwind_Exception *a1)
{
  if (v2)
  {
    CFRelease(v2);
  }

  _Unwind_Resume(a1);
}

id systemIfExistsElseDefaultServiceDomain(void)
{
  if (xpc_user_sessions_enabled() && _os_feature_enabled_impl())
  {
    v0 = +[_LSDServiceDomain systemSessionDomain];
  }

  else
  {
    v0 = +[_LSDServiceDomain defaultServiceDomain];
  }

  return v0;
}

void ___ZN14LaunchServices15DatabaseContextL6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "db-spi");
  v1 = LaunchServices::DatabaseContext::getLog(void)::result;
  LaunchServices::DatabaseContext::getLog(void)::result = v0;
}

void _LSContextCreateVisualizer(uint64_t *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  [objc_alloc(MEMORY[0x1E69991A0]) initWithStore:-[_LSDatabase store](*a1)];
  operator new();
}

void sub_181705FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v65 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&a35);
  _Block_object_dispose(&a47, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(&a53);
  _Block_object_dispose(&a58, 8);
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _LSServer_BeginProvidingVisualizationArchives()
{
  _LSAssertRunningInServer("void _LSServer_BeginProvidingVisualizationArchives()");
  if ([__LSDefaultsGetSharedInstance() isAppleInternal])
  {
    if (_LSServer_BeginProvidingVisualizationArchives::onceToken != -1)
    {
      _LSServer_BeginProvidingVisualizationArchives_cold_1();
    }

    v0 = MEMORY[0x1E6999198];
    v1 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:9];
    [v0 beginProvidingVisualizationArchivesWithMachServiceName:? queue:? creatingVisualizersWithBlock:?];
  }
}

void sub_181706620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1817067C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  CFRelease(v5);
  LaunchServices::Database::Context::~Context(va);

  _Unwind_Resume(a1);
}

uint64_t _LSDisplayHumanReadableData(uint64_t *a1, FILE *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a3;
  v29 = a4;
  v31 = a5;
  v32 = a1;
  [(_LSDatabase *)*a1 store];
  CatalogTable = _CSStoreGetCatalogTable();
  if (LaunchServices::DatabaseVisualization::shouldDumpTable(a1, v12, CatalogTable, a6))
  {
    v14 = v31 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14 || (a6 & 0x12) != 0)
  {
    goto LABEL_8;
  }

  v24 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = [MEMORY[0x1E6999190] newWithStore:-[_LSDatabase store](*a1) buffer:v24];
  LOBYTE(v38[0]) = 0;
  _LSDatabaseDisplayHeader(v25, *a1, v38);
  v26 = LOBYTE(v38[0]) || _LSGetNSErrorFromOSStatusImpl(-10817, a7, 0, "_LSDisplayHumanReadableData", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Visualization/LSDatabaseVisualization.mm", 266);
  [v24 cs_writeToFileHandle:a2];
  fputc(10, a2);

  if (!v26)
  {
    v22 = 0;
  }

  else
  {
LABEL_8:
    if ((a6 & 2) == 0)
    {
      _LSContextCreateVisualizer(a1);
    }

    v16 = [objc_alloc(MEMORY[0x1E69991A0]) initWithStore:-[_LSDatabase store](*a1) useStandardTableFunctions:0];
    if (!v16)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSDisplayHumanReadableData(LSContext * _Nonnull, FILE * _Nonnull, NSSet<NSString *> *__strong _Nullable, NSSet<NSString *> *__strong _Nullable, NSPredicate *__strong _Nullable, _LSDisplayDataOptions, NSError *__autoreleasing * _Nullable)"}];
      [v27 handleFailureInFunction:v28 file:@"LSDatabaseVisualization.mm" lineNumber:288 description:@"Failed to create database visualizer."];
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a6];
    v18 = [v16 userInfo];
    [v18 setObject:v17 forKeyedSubscript:@"Options"];

    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 1;
    if ((a6 & 0x10) != 0)
    {
      fputc(91, a2);
    }

    LaunchServices::DatabaseVisualization::getTablesToDisplay(a1, v12, a6, &v36);
    v20 = v36;
    v19 = v37;
    if (v36 != v37)
    {
      do
      {
        v21 = *v20;
        [(_LSDatabase *)*v32 store];
        v33 = v16;
        v34 = v29;
        v35 = v31;
        _CSStoreEnumerateUnits();

        ++v20;
      }

      while (v20 != v19);
      v20 = v36;
    }

    if (v20)
    {
      v37 = v20;
      operator delete(v20);
    }

    if ((a6 & 0x10) != 0)
    {
      fputc(93, a2);
    }

    _Block_object_dispose(v38, 8);

    v22 = 1;
  }

  return v22;
}

uint64_t LaunchServices::DatabaseVisualization::shouldDumpTable(uint64_t *a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    if ([v7 containsObject:@"*"])
    {
      v9 = 1;
    }

    else
    {
      [(_LSDatabase *)*a1 store];
      v10 = _CSStoreCopyTableName();
      v9 = [v8 containsObject:v10];
    }

    goto LABEL_9;
  }

  [(_LSDatabase *)*a1 store];
  if (_CSStoreGetStringTable() == a3 || *([(_LSDatabase *)*a1 schema]+ 1596) == a3 || *([(_LSDatabase *)*a1 schema]+ 24) == a3)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_9;
  }

  [(_LSDatabase *)*a1 store];
  ArrayTable = _CSStoreGetArrayTable();
  if ((a4 & 1) != 0 || ArrayTable == a3)
  {
    if (ArrayTable == a3)
    {
      goto LABEL_7;
    }
  }

  else if (*([(_LSDatabase *)*a1 schema]+ 1584) == a3)
  {
    goto LABEL_7;
  }

  if (*([(_LSDatabase *)*a1 schema]+ 1600) == a3 || *([(_LSDatabase *)*a1 schema]+ 1604) == a3 || *([(_LSDatabase *)*a1 schema]+ 1608) == a3)
  {
    goto LABEL_7;
  }

  v13 = [(_LSDatabase *)*a1 schema];
  v14 = 120;
  do
  {
    v15 = *(v13 + v14);
    v9 = v15 != a3;
    if (v15 == a3)
    {
      break;
    }

    v16 = v14 == 1472;
    v14 += 104;
  }

  while (!v16);
LABEL_9:

  return v9;
}

void LaunchServices::DatabaseVisualization::getTablesToDisplay(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = __Block_byref_object_copy__17;
  v16 = __Block_byref_object_dispose__17;
  v17 = &unk_1818533FF;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v21[0] = *([(_LSDatabase *)*a1 schema]+ 4);
  v21[1] = *([(_LSDatabase *)*a1 schema]+ 1580);
  v21[2] = *([(_LSDatabase *)*a1 schema]+ 1588);
  v21[3] = *([(_LSDatabase *)*a1 schema]+ 1592);
  v8 = 0;
  v21[4] = *([(_LSDatabase *)*a1 schema]+ 1576);
  do
  {
    v11 = v21[v8];
    if (LaunchServices::DatabaseVisualization::shouldDumpTable(a1, v7, v11, a3))
    {
      std::vector<unsigned int>::push_back[abi:nn200100](v13 + 6, &v11);
    }

    ++v8;
  }

  while (v8 != 5);
  [(_LSDatabase *)*a1 store];
  v9 = v7;
  _CSStoreEnumerateTables();
  std::vector<LSBundleClass>::vector[abi:nn200100](a4, v13 + 6);

  _Block_object_dispose(&v12, 8);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_18170706C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL _LSDisplayMachineReadableData(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  if ((a5 & 2) == 0)
  {
    _LSContextCreateVisualizer(a1);
  }

  v13 = [objc_alloc(MEMORY[0x1E69991A0]) initWithStore:-[_LSDatabase store](*a1) useStandardTableFunctions:0];
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSDisplayMachineReadableData(LSContext * _Nonnull, FILE * _Nonnull, NSSet<NSString *> *__strong _Nullable, NSPredicate *__strong _Nullable, _LSDisplayDataOptions, NSError *__autoreleasing * _Nullable)"}];
    [v21 handleFailureInFunction:v22 file:@"LSDatabaseVisualization.mm" lineNumber:325 description:@"Failed to create database visualizer."];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
  v15 = [v13 userInfo];
  [v15 setObject:v14 forKeyedSubscript:@"Options"];

  v16 = [objc_alloc(MEMORY[0x1E6999198]) initWithVisualizer:v13 fileHandle:a2 closeWhenDone:0 error:a6];
  v17 = v16;
  if (v16)
  {
    [v16 setUnitDescriptionPredicate:v12];
    LaunchServices::DatabaseVisualization::getTablesToDisplay(a1, v11, a5, &v23);
    v18 = v23;
    v19 = v24;
    if (v23 != v24)
    {
      do
      {
        [v17 writeAllUnitsInTable:*v18++ block:0];
      }

      while (v18 != v19);
      v18 = v23;
    }

    if (v18)
    {
      v24 = v18;
      operator delete(v18);
    }

    [v17 finishWriting];
  }

  return v17 != 0;
}

uint64_t LaunchServices::DatabaseVisualization::writeTableDescription(void **this, LSContext *a2, int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  if (*[(_LSDatabase *)*this schema]== a3)
  {
    _LSDatabaseDisplayHeader(v7, *this, 0);
  }

  else
  {
    v8 = *([(_LSDatabase *)*this schema]+ 24);
    v9 = *this;
    if (v8 == a3)
    {
      [(_LSDatabase *)v9 store];
      [(_LSDatabase *)*this schema];
      v10 = _CSMapCopyDebugDescription();
      [v7 writeAttributedString:v10];
    }

    else
    {
      v11 = ([(_LSDatabase *)v9 schema]+ 120);
      v12 = 1456;
      while (*v11 != a3)
      {
        v11 += 26;
        v12 -= 104;
        if (!v12)
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      [(_LSDatabase *)*this store];
      v10 = _CSMapCopyDebugDescription();
      [v7 writeAttributedString:v10];
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

void ___ZN14LaunchServices21DatabaseVisualizationL14getAllHandlersEP9LSContext_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  if (!std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>((a1 + 32), &v5))
  {
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___ZN14LaunchServices21DatabaseVisualizationL14getAllHandlersEP9LSContext_block_invoke_cold_1(a3, v4);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<unsigned int,_LSDatabaseTableVisualizationFunctions>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,_LSDatabaseTableVisualizationFunctions> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,_LSDatabaseTableVisualizationFunctions>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,_LSDatabaseTableVisualizationFunctions> const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void ___ZN14LaunchServices21DatabaseVisualizationL18getTablesToDisplayEP9LSContextP5NSSetIP8NSStringEj_block_invoke(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 48);
  v3 = *(*(*(a1 + 40) + 8) + 56);
  while (v4 != v3)
  {
    if (*v4 == a2)
    {
      if (v4 != v3)
      {
        return;
      }

      break;
    }

    ++v4;
  }

  if (LaunchServices::DatabaseVisualization::shouldDumpTable(*(a1 + 48), *(a1 + 32), a2, *(a1 + 56)))
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((*(*(a1 + 40) + 8) + 48), &v5);
  }
}

__n128 __Block_byref_object_copy__71(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__72(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN14LaunchServices21DatabaseVisualizationL20writeUnitDescriptionEP7__sFILEjjP18NSAttributedStringP5NSSetIP8NSStringEP11NSPredicatejPb_block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, NSUInteger a6, NSUInteger a7, _BYTE *a8)
{
  v29 = a2;
  v15 = a5;
  if ([*(a1 + 32) containsObject:v29])
  {
    v31.location = a3;
    v31.length = a4;
    v32.location = a6;
    v32.length = a7;
    v16 = NSUnionRange(v31, v32);
    v17 = *(*(a1 + 40) + 8);
    v19 = v17[7];
    v18 = v17[8];
    if (v19 >= v18)
    {
      v21 = v17[6];
      v22 = v19 - v21;
      v23 = (v19 - v21) >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v25 = v18 - v21;
      if (v25 >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      v26 = v25 >= 0x7FFFFFFFFFFFFFF0;
      v27 = 0xFFFFFFFFFFFFFFFLL;
      if (!v26)
      {
        v27 = v24;
      }

      if (v27)
      {
        std::allocator<_NSRange>::allocate_at_least[abi:nn200100]((v17 + 6), v27);
      }

      *(16 * v23) = v16;
      v20 = 16 * v23 + 16;
      memcpy(0, v16.length, v22);
      v28 = v17[6];
      v17[6] = 0;
      v17[7] = v20;
      v17[8] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v19 = v16;
      v20 = &v19[1];
    }

    v17[7] = v20;
    if (*(a1 + 48) == 1)
    {
      *a8 = 1;
    }
  }
}

void ___ZN14LaunchServices21DatabaseVisualizationL34getPropertyListFromUnitDescriptionEjjP18NSAttributedStringP5NSSetIP8NSStringE_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v14 = a2;
  v11 = a5;
  v12 = *(a1 + 32);
  if (!v12 || [v12 containsObject:v14])
  {
    v13 = [v11 string];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v14];

    if ([*(a1 + 40) count] >= *(a1 + 48))
    {
      *a8 = 1;
    }
  }
}

void std::allocator<_NSRange>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1817086B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_181708980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1817099D4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_18170A114(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

uint64_t initba_is_process_extension(audit_token_t *a1)
{
  v2 = BASupportLibrary(void)::libLibrary;
  if (!BASupportLibrary(void)::libLibrary)
  {
    v2 = dlopen("/usr/lib/libBASupport.dylib", 2);
    BASupportLibrary(void)::libLibrary = v2;
  }

  v3 = dlsym(v2, "ba_is_process_extension");
  softLinkba_is_process_extension = v3;

  return v3(a1);
}

uint64_t initTCCAccessPreflightWithAuditToken(const __CFString *a1, audit_token_t *a2, const __CFDictionary *a3)
{
  v6 = TCCLibrary(void)::frameworkLibrary;
  if (!TCCLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 2);
    TCCLibrary(void)::frameworkLibrary = v6;
  }

  softLinkTCCAccessPreflightWithAuditToken = dlsym(v6, "TCCAccessPreflightWithAuditToken");
  v7 = *&a2->val[4];
  v9[0] = *a2->val;
  v9[1] = v7;
  return softLinkTCCAccessPreflightWithAuditToken(a1, v9, a3);
}

uint64_t initkTCCServiceUserTracking(void)
{
  v0 = TCCLibrary(void)::frameworkLibrary;
  if (!TCCLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 2);
    TCCLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "kTCCServiceUserTracking");
  constantkTCCServiceUserTracking = result;
  getkTCCServiceUserTracking = kTCCServiceUserTrackingFunction;
  return result;
}

Class initUMUserManager(void)
{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager = result;
  getUMUserManagerClass = UMUserManagerFunction;
  return result;
}

{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager = result;
  getUMUserManagerClass = UMUserManagerFunction;
  return result;
}

{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager = result;
  getUMUserManagerClass = UMUserManagerFunction;
  return result;
}

uint64_t __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_IS_USING_PRIVATE_SYMBOLS__()
{
  if (__LSDefaultsGetSharedInstance_onceToken != -1)
  {
    dispatch_once(&__LSDefaultsGetSharedInstance_onceToken, &__block_literal_global_27);
  }

  result = [__LSDefaultsGetSharedInstance_sharedInstance issueSandboxExceptionsIfMayNotMapDatabase];
  if (result)
  {
    v1 = _LSGetAuditTokenForSelf();
    v2 = *v1;
    v3 = v1[1];
    return sandbox_check_by_audit_token();
  }

  return result;
}

id _LSDefaultsBaseSystemContainerURL()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = getenv("LS_DATABASE_DIR");
  if (!v0)
  {
    v18 = 0;
    v15 = 1;
    v1 = container_system_path_for_identifier();
    if (!v1)
    {
      error_description = container_get_error_description();
      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _LSDefaultsBaseSystemContainerURL_cold_1(&v15, error_description, v7);
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error getting container url (%s)! Cannot continue.", error_description];
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v16 = @"LSContainerErrorNumber";
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
      v17 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13 = [v9 exceptionWithName:v10 reason:v8 userInfo:v12];
      v14 = v13;

      objc_exception_throw(v13);
    }

    v2 = v1;
    v0 = &v18;
    __strlcpy_chk();
    free(v2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t emitSandboxExceptionAndMaybeAbortForSneakyURLUsage()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    emitSandboxExceptionAndMaybeAbortForSneakyURLUsage_cold_1();
  }

  return __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_IS_USING_PRIVATE_SYMBOLS__();
}

void sub_18170D638(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id _LSPerUserEntropyURL(void)
{
  v0 = [__LSDefaultsGetSharedInstance() userContainerURL];
  v1 = [v0 URLByAppendingPathComponent:@"com.apple.LaunchServices.DeviceIdentifierEntropy" isDirectory:0];

  return v1;
}

Class initUMUserPersona(void)
{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserPersona");
  classUMUserPersona = result;
  getUMUserPersonaClass = UMUserPersonaFunction;
  return result;
}

uint64_t initMKBDeviceUnlockedSinceBoot(void)
{
  v0 = MobileKeyBagLibrary(void)::frameworkLibrary;
  if (!MobileKeyBagLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
    MobileKeyBagLibrary(void)::frameworkLibrary = v0;
  }

  v1 = dlsym(v0, "MKBDeviceUnlockedSinceBoot");
  softLinkMKBDeviceUnlockedSinceBoot = v1;

  return v1();
}

void sub_18170F530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18170F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18170F9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18170FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18170FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_181710008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1817102D4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1817118AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t initMobileInstallationCopyDiskUsageForLaunchServices(const void *a1, const __CFDictionary *a2)
{
  v4 = MobileInstallationLibrary(void)::frameworkLibrary;
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "MobileInstallationCopyDiskUsageForLaunchServices");
  softLinkMobileInstallationCopyDiskUsageForLaunchServices = v5;

  return v5(a1, a2);
}

uint64_t _LSDispatchCoalescedAfterDelay(atomic_uchar *a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _LSDispatchCoalescedAfterDelay(volatile int32_t * _Nonnull, __strong dispatch_queue_t _Nonnull, NSTimeInterval, __strong dispatch_block_t _Nonnull)"}];
    [v16 handleFailureInFunction:v17 file:@"LSDispatchUtils.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"ioCoalescingFlag != NULL"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _LSDispatchCoalescedAfterDelay(volatile int32_t * _Nonnull, __strong dispatch_queue_t _Nonnull, NSTimeInterval, __strong dispatch_block_t _Nonnull)"}];
  [v18 handleFailureInFunction:v19 file:@"LSDispatchUtils.mm" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"inQueue != NULL"}];

LABEL_3:
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _LSDispatchCoalescedAfterDelay(volatile int32_t * _Nonnull, __strong dispatch_queue_t _Nonnull, NSTimeInterval, __strong dispatch_block_t _Nonnull)"}];
    [v12 handleFailureInFunction:v13 file:@"LSDispatchUtils.mm" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"!isinf( inMaxDelay) && !isnan( inMaxDelay)"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _LSDispatchCoalescedAfterDelay(volatile int32_t * _Nonnull, __strong dispatch_queue_t _Nonnull, NSTimeInterval, __strong dispatch_block_t _Nonnull)"}];
  [v14 handleFailureInFunction:v15 file:@"LSDispatchUtils.mm" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"inBlock != NULL"}];

LABEL_5:
  if ((atomic_fetch_or(a1, 0x80u) & 0x80) != 0)
  {
    v10 = 0;
  }

  else
  {
    MEMORY[0x1865D7C40]();
    v9 = dispatch_time(0, (a4 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___LSDispatchCoalescedAfterDelay_block_invoke;
    block[3] = &unk_1E6A1BE30;
    v21 = v8;
    v22 = a1;
    dispatch_after(v9, v7, block);

    v10 = 1;
  }

  return v10;
}

_LSDispatchWithTimeoutResult *_LSDispatchWithTimeout(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(_LSDispatchWithTimeoutResult);
  v36 = v7;
  v8 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v9 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v9 = 0;
    v8 = 0;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v8 = 1;
  }

  v10 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v8;
  if ((v10 | v9) == 1)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSDispatchWithTimeoutResult *_LSDispatchWithTimeout(NSTimeInterval, __strong dispatch_queue_t _Nullable, __strong _LSDispatchWithTimeoutWorkBlock _Nonnull)"}];
    [v26 handleFailureInFunction:v27 file:@"LSDispatchUtils.mm" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"!isnan( timeout) && !isinf( timeout) && timeout > 0.0"}];

    v7 = v36;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    goto LABEL_10;
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSDispatchWithTimeoutResult *_LSDispatchWithTimeout(NSTimeInterval, __strong dispatch_queue_t _Nullable, __strong _LSDispatchWithTimeoutWorkBlock _Nonnull)"}];
  [v28 handleFailureInFunction:v29 file:@"LSDispatchUtils.mm" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"workBlock != nil"}];

  v7 = v36;
LABEL_10:
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v13 = dispatch_semaphore_create(0);
  v14 = v7;
  v15 = v12;
  v16 = v13;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_28:
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSDispatchWithTimeoutCompletionHandler _LSGetDispatchWithTimeoutCompletionHandler(_LSDispatchWithTimeoutResult *__strong, __strong id<NSLocking>, __strong dispatch_semaphore_t)"}];
    [v32 handleFailureInFunction:v33 file:@"LSDispatchUtils.mm" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"lock != nil"}];

    if (v16)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSDispatchWithTimeoutCompletionHandler _LSGetDispatchWithTimeoutCompletionHandler(_LSDispatchWithTimeoutResult *__strong, __strong id<NSLocking>, __strong dispatch_semaphore_t)"}];
  [v30 handleFailureInFunction:v31 file:@"LSDispatchUtils.mm" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"resultStruct != nil"}];

  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_12:
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_29:
  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSDispatchWithTimeoutCompletionHandler _LSGetDispatchWithTimeoutCompletionHandler(_LSDispatchWithTimeoutResult *__strong, __strong id<NSLocking>, __strong dispatch_semaphore_t)"}];
  [v34 handleFailureInFunction:v35 file:@"LSDispatchUtils.mm" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"sem != NULL"}];

LABEL_13:
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___ZL42_LSGetDispatchWithTimeoutCompletionHandlerP28_LSDispatchWithTimeoutResultPU19objcproto9NSLocking11objc_objectPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
  v40[3] = &unk_1E6A1BEF8;
  v17 = v15;
  v41 = v17;
  v18 = v14;
  v42 = v18;
  v19 = v16;
  v43 = v19;
  v20 = MEMORY[0x1865D71B0](v40);
  v21 = [v20 copy];

  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___LSDispatchWithTimeout_block_invoke;
    block[3] = &unk_1E6A1BE58;
    v38 = v6;
    v39 = v21;
    dispatch_async(v5, block);
  }

  else
  {
    (*(v6 + 2))(v6, v21);
  }

  v22 = dispatch_time(0, (a3 * 1000000000.0));
  if (!dispatch_semaphore_wait(v19, v22))
  {
    goto LABEL_21;
  }

  [v17 lock];
  v23 = [(_LSDispatchWithTimeoutResult *)v18 result];
  if (!v23)
  {
    v24 = [(_LSDispatchWithTimeoutResult *)v18 error];

    if (v24)
    {
      goto LABEL_20;
    }

    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 60, 0, "_LSDispatchWithTimeout", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDispatchUtils.mm", 147);
    [(_LSDispatchWithTimeoutResult *)v18 setError:v23];
  }

LABEL_20:
  [v17 unlock];
LABEL_21:

  objc_autoreleasePoolPop(v11);

  return v18;
}

id _LSLazyLoadObjectForKey(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__20;
  v35 = __Block_byref_object_dispose__20;
  v36 = 0;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _LSLazyLoadObjectForKey(NSMutableDictionary *__strong _Nonnull, __strong id _Nonnull, __strong dispatch_queue_t _Nonnull, NS_NOESCAPE _LSLazyLoadGenerator __strong)"}];
    [v18 handleFailureInFunction:v19 file:@"LSDispatchUtils.mm" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"inKey != nil"}];

    if (v9)
    {
      goto LABEL_4;
    }

LABEL_12:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _LSLazyLoadObjectForKey(NSMutableDictionary *__strong _Nonnull, __strong id _Nonnull, __strong dispatch_queue_t _Nonnull, NS_NOESCAPE _LSLazyLoadGenerator __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"LSDispatchUtils.mm" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"inQueue != NULL"}];

    goto LABEL_4;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _LSLazyLoadObjectForKey(NSMutableDictionary *__strong _Nonnull, __strong id _Nonnull, __strong dispatch_queue_t _Nonnull, NS_NOESCAPE _LSLazyLoadGenerator __strong)"}];
  [v16 handleFailureInFunction:v17 file:@"LSDispatchUtils.mm" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"ioDictionary != nil"}];

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_4:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSLazyLoadObjectForKey_block_invoke;
  block[3] = &unk_1E6A1B118;
  v30 = &v31;
  v11 = v7;
  v28 = v11;
  v12 = v8;
  v29 = v12;
  dispatch_sync(v9, block);
  v13 = v32[5];
  if (v10 && !v13)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___LSLazyLoadObjectForKey_block_invoke_2;
    v22[3] = &unk_1E6A1BED0;
    v23 = v11;
    v24 = v12;
    v25 = v10;
    v26 = &v31;
    dispatch_barrier_sync(v9, v22);

    v13 = v32[5];
  }

  v14 = v13;

  _Block_object_dispose(&v31, 8);

  return v14;
}

void sub_1817129B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  v36 = v34;

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void ___ZL42_LSGetDispatchWithTimeoutCompletionHandlerP28_LSDispatchWithTimeoutResultPU19objcproto9NSLocking11objc_objectPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) lock];
  v6 = [*(a1 + 40) result];
  if (v6)
  {
  }

  else
  {
    v7 = [*(a1 + 40) error];

    if (!v7)
    {
      if (!(v8 | v5))
      {
        v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "_LSGetDispatchWithTimeoutCompletionHandler_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDispatchUtils.mm", 84);
      }

      [*(a1 + 40) setResult:v8];
      [*(a1 + 40) setError:v5];
    }
  }

  [*(a1 + 32) unlock];
  dispatch_semaphore_signal(*(a1 + 48));
}

id XNSDictionaryObjectForKeyOfClass(NSDictionary *a1, objc_object *a2, objc_class *a3)
{
  v4 = [(NSDictionary *)a1 objectForKey:a2];
  v5 = v4;
  if (a3 && v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  return v5;
}

void sub_1817147F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_181714A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void sub_18171536C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1817161C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<unsigned short>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<unsigned short>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::allocator<unsigned short>::allocate_at_least[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

id _LSGetDMFPolicyNoCache(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__22;
  v21 = __Block_byref_object_dispose__22;
  v22 = &unk_1EEF8EFA8;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__22;
  v16 = 0;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___LSGetDMFPolicyNoCache_block_invoke;
    v7[3] = &unk_1E6A1C038;
    v8 = v3;
    v9 = &v11;
    v10 = &v17;
    LaunchServices::DMFSupport::getPolicyWithCompletionHandler(v8, 0, v7);
  }

  if (a2)
  {
    *a2 = v12[5];
  }

  v5 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v5;
}

void sub_181716968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices10DMFSupportL10getMonitorEb_block_invoke_2(LaunchServices::DMFSupport *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = LaunchServices::DMFSupport::getLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "getMonitor_block_invoke_2";
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "%s: DMF policies changed.", &v3, 0xCu);
  }

  LaunchServices::DMFSupport::reloadAllPolicies(LaunchServices::DMFSupport::getMonitor(BOOL)::cachingMonitor);
  v2 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices10DMFSupportL10getMonitorEb_block_invoke_19(LaunchServices::DMFSupport *a1)
{
  v1 = [objc_alloc(LaunchServices::DMFSupport::getDMFApplicationPolicyMonitorClass(a1)) initWithPolicyChangeHandler:0];
  v2 = LaunchServices::DMFSupport::getMonitor(BOOL)::nonCachingMonitor;
  LaunchServices::DMFSupport::getMonitor(BOOL)::nonCachingMonitor = v1;
}

void ___ZN14LaunchServices10DMFSupportL16postNotificationEP12NSDictionaryIP8NSStringP8NSNumberES7__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v7 = v6;
  if (!v6 || ([v6 isEqualToNumber:v5] & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
  }
}

void ___ZN14LaunchServices10DMFSupportL30getPolicyWithCompletionHandlerEP8NSStringhU13block_pointerFvP8NSNumberP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 allValues];
  v7 = [v6 firstObject];
  (*(v5 + 16))(v5, v7, v8);
}

void ___ZN14LaunchServices10DMFSupportL32getPoliciesWithCompletionHandlerEP5NSSetIP8NSStringEhU13block_pointerFvP12NSDictionaryIS3_P8NSNumberEP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = LaunchServices::DMFSupport::getLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ___ZN14LaunchServices10DMFSupportL32getPoliciesWithCompletionHandlerEP5NSSetIP8NSStringEhU13block_pointerFvP12NSDictionaryIS3_P8NSNumberEP7NSErrorE_block_invoke_cold_1();
    }

    if (*(a1 + 40) == 1)
    {
      LaunchServices::DMFSupport::addKnownPoliciesToCache(v5, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZN14LaunchServices10DMFSupportL32getPoliciesWithCompletionHandlerEP5NSSetIP8NSStringEhU13block_pointerFvP12NSDictionaryIS3_P8NSNumberEP7NSErrorE_block_invoke_cold_2();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_181717224(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _LSNodeIsOnCryptex(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v20 = 0;
  v6 = *MEMORY[0x1E695DEA0];
  v19 = 0;
  v7 = [v5 getResourceValue:&v20 forKey:v6 options:1 error:&v19];
  v8 = v19;
  if (!v7)
  {
    goto LABEL_6;
  }

  if (![v20 isEqualToString:@"apfs"])
  {
    v14 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v18 = v8;
  v9 = [v5 getFileSystemRepresentation:v21 error:&v18];
  v10 = v18;

  if (v9)
  {
    v17[0] = 0;
    v17[1] = 0;
    if (fsctl(v21, 0xC0104A66uLL, v17, 0))
    {
      v11 = __error();
      v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v11, 0, "_LSNodeIsOnCryptex", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSCryptexUtils.mm", 40);

LABEL_6:
      v10 = v8;
      goto LABEL_7;
    }

    v14 = BYTE4(v17[0]) != 0;
    v8 = v10;
    if (!a2)
    {
LABEL_13:
      v13 = 1;
      goto LABEL_14;
    }

LABEL_12:
    *a2 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    goto LABEL_13;
  }

LABEL_7:
  if (a3)
  {
    v12 = v10;
    v13 = 0;
    *a3 = v10;
  }

  else
  {
    v13 = 0;
  }

  v8 = v10;
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t getFailableNumericFromBaseProperties<unsigned long long>(void *a1, void *a2, const char *a3, void *a4, void *a5)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = NSStringFromSelector(a3);
  v12 = objc_opt_class();
  v13 = [v10 objectForKey:v11];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (v13)
    {
LABEL_9:
      *a4 = [v14 unsignedLongLongValue];
      v17 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  [v9 askedForMissingSelector:a3];
  if (!a5)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v21 = *MEMORY[0x1E696A278];
  v22[0] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v18, "getFailableNumericFromBaseProperties", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 284);
  *a5 = v17 = 0;
  v14 = v18;
LABEL_13:

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t getFailableNumericFromBaseProperties<double>(void *a1, void *a2, const char *a3, void *a4, void *a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = NSStringFromSelector(a3);
  v12 = objc_opt_class();
  v13 = [v10 objectForKey:v11];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (v13)
    {
LABEL_9:
      [v14 doubleValue];
      *a4 = v17;
      v18 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  [v9 askedForMissingSelector:a3];
  if (!a5)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v22 = *MEMORY[0x1E696A278];
  v23[0] = v11;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v19, "getFailableNumericFromBaseProperties", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 284);
  *a5 = v18 = 0;
  v14 = v19;
LABEL_13:

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_18171B044(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

void sub_18171B05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18171B19C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

void __LS_DETECTED_ATTEMPT_TO_FETCH_DSIDS_FROM_REDACTED_RECORD__()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_18162D000, v0, OS_LOG_TYPE_FAULT, "This process has made an attempt to access DSIDs from a record that has had that data redacted for privacy reasons. Break on __LS_DETECTED_ATTEMPT_TO_FETCH_DSIDS_FROM_REDACTED_RECORD__ to debug.", v1, 2u);
  }
}

void sub_18171B394(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

void sub_18171B3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18171B4D0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

void sub_18171B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18171B60C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

void sub_18171B624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id pendingSaveTokenInterface(void)
{
  if (pendingSaveTokenInterface(void)::onceToken != -1)
  {
    pendingSaveTokenInterface();
  }

  v1 = pendingSaveTokenInterface(void)::result;

  return v1;
}

void sub_18171D5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, CFTypeRef cf, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  if (a64)
  {
    CFRelease(a64);
  }

  _Block_object_dispose(&a65, 8);

  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);

  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v76 - 240), 8);

  _Unwind_Resume(a1);
}

CFTypeRef __Block_byref_object_copy__162(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __Block_byref_object_dispose__163(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

CFTypeRef __Block_byref_object_copy__165(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __Block_byref_object_dispose__166(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void sub_18171E364(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18171E8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

unint64_t getDefaultAppCategoryForTypeIdentifier(NSString *a1)
{
  v1 = a1;
  InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoFromTypeIdentifier(v1);
  if (InfoFromTypeIdentifier || (InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoForSubordinateClaim(1, v1)) != 0)
  {
    v3 = *InfoFromTypeIdentifier & 0xFFFFFFFFFFFFFF00;
    v4 = *InfoFromTypeIdentifier;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void sub_181720504(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_181720AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v24 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_181720E60(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_181721374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v27 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_18172178C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_181721FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18172265C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&[_LSDModifyClient rebuildApplicationDatabasesForSystem:internal:user:completionHandler:]::rebuildMutex);

  _Unwind_Resume(a1);
}

void sub_1817231DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  LaunchServices::Database::Context::~Context(&a41);
  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

void _LSDoWithLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2]();
  os_unfair_lock_unlock(a1);
}

void sub_181723760(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

void sub_181723774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181723A54(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_181723D44(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1817245FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1817248EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_181725004(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_181725230(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1817258B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose((v40 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_181725F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose((v33 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1817261D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LaunchServices::Database::Context::~Context(va);

  _Unwind_Resume(a1);
}

void sub_181726E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

void sub_1817271F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_181727F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, int a43, __int16 a44)
{
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a42 == 1)
  {
    __p = &a39;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::__destroy_vector::operator()[abi:nn200100](&__p);
  }

  LaunchServices::Database::Context::~Context(&a44);

  _Unwind_Resume(a1);
}

void sub_181729144(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZL25pendingSaveTokenInterfacev_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA9348];
  v1 = pendingSaveTokenInterface(void)::result;
  pendingSaveTokenInterface(void)::result = v0;

  v2 = pendingSaveTokenInterface(void)::result;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_waitForResult_ argumentIndex:1 ofReply:1];
}

uint64_t std::vector<std::tuple<NSString * {__strong},unsigned int>>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::tuple<NSString * {__strong},unsigned int>>::__emplace_back_slow_path<std::tuple<NSString * {__strong},unsigned int>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::tuple<NSString * {__strong},unsigned int>>::__emplace_back_slow_path<std::tuple<NSString * {__strong},unsigned int>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::tuple<NSString * {__strong},unsigned int>>::allocate_at_least[abi:nn200100](a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = 16 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::tuple<NSString * {__strong},unsigned int>>,std::tuple<NSString * {__strong},unsigned int>*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::tuple<NSString * {__strong},unsigned int>>::~__split_buffer(&v15);
  return v14;
}

void sub_181729394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::tuple<NSString * {__strong},unsigned int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::tuple<NSString * {__strong},unsigned int>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::tuple<NSString * {__strong},unsigned int>>,std::tuple<NSString * {__strong},unsigned int>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      v6 += 2;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t std::__split_buffer<std::tuple<NSString * {__strong},unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::tuple<NSString * {__strong},unsigned int>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 __Block_byref_object_copy__388(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__389(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL23pluginsUnitIDsForBundleP9LSContextPK12LSBundleData_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[7];
  v5 = v4[8];
  if (v6 >= v5)
  {
    v8 = v4[6];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v4 + 6), v14);
    }

    v15 = (v6 - v8) >> 2;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = a3;
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = v4[6];
    v4[6] = v17;
    v4[7] = v7;
    v4[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 4;
  }

  v4[7] = v7;
}

char *std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

id ___ZL45sendPersonaChangedNotificationsForIdentifiersP9LSContextP5NSSetIP8NSStringE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:a2 withContext:*(a1 + 32)];
  [v2 detach];

  return v2;
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 32);
  v5 = *(*(*a2 + 8) + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_18172A6F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18172B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = v75;

  if (a66 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator((v78 + 64));
  }

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a68, 8);

  if (LOBYTE(STACK[0x330]) == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(&STACK[0x280]);
  }

  LaunchServices::Database::Context::~Context(&a23);

  objc_sync_exit(v72);
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::Database::Context::status(id *this)
{
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(this, v2, 0);

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v6 = this[3];
    v4 = v6;
    if (v6)
    {
      v5 = _LSGetOSStatusFromNSError(v6);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void sub_18172BFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_64c59_ZTSNSt3__18optionalIN14LaunchServices16BindingEvaluatorEEE(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator((a1 + 64));
  }
}

void sub_18172C71C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18172CD98(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

LaunchServices::BindingEvaluator *std::__optional_copy_base<LaunchServices::BindingEvaluator,false>::__optional_copy_base[abi:nn200100](LaunchServices::BindingEvaluator *this, const LaunchServices::BindingEvaluator *a2)
{
  *this = 0;
  *(this + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    LaunchServices::BindingEvaluator::BindingEvaluator(this, a2);
    *(this + 176) = 1;
  }

  return this;
}

void sub_18172D2AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 176) == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18172ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v19 = v17;

  _Unwind_Resume(a1);
}

void sub_18172F104(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_18172F928(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_18172FBD4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1817308EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  CFRelease(v10);

  _Unwind_Resume(a1);
}

void sub_181730BEC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_181731450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_181731534(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_181732188(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_181732404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef a11)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  _Unwind_Resume(a1);
}

void sub_181733134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  LaunchServices::Database::Context::~Context(&STACK[0x200]);

  _Unwind_Resume(a1);
}

void sub_181733F48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1817344C0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_181734854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v13 = v12;

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_181734D78(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void configureUIDForUserSession(NSXPCConnection *a1)
{
  v1 = [(NSXPCConnection *)a1 _xpcConnection];
  xpc_connection_set_target_user_session_uid();
}

void _LSDServiceStartAllServices()
{
  _LSAssertRunningInServer("void _LSDServiceStartAllServices()");
  if (_LSDServiceStartAllServices::once != -1)
  {
    _LSDServiceStartAllServices_cold_1();
  }
}

id __copy_helper_block_ea8_56c41_ZTS35ServiceConnectionConfigurationState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void sub_1817363F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);

  _Unwind_Resume(a1);
}

void sub_181736BB4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t _LSSetDatabaseIsSeeded(int a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = objc_autoreleasePoolPush();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSSetDatabaseIsSeeded_block_invoke;
  v7[3] = &unk_1E6A198D0;
  v7[4] = &v8;
  v3 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___LSSetDatabaseIsSeeded_block_invoke_2;
  v6[3] = &unk_1E6A19A00;
  v6[4] = &v8;
  [v3 setDatabaseIsSeeded:a1 != 0 completionHandler:v6];

  objc_autoreleasePoolPop(v2);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_18173768C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSRegisterItemInfo(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v17 = objc_autoreleasePoolPush();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___LSRegisterItemInfo_block_invoke;
  v23[3] = &unk_1E6A198D0;
  v23[4] = &v24;
  v18 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___LSRegisterItemInfo_block_invoke_2;
  v22[3] = &unk_1E6A1CA48;
  v22[4] = &v24;
  v22[5] = a6;
  v22[6] = a7;
  v22[7] = a8;
  [v18 registerItemInfo:v14 alias:v15 diskImageAlias:v16 bundleURL:a4 installationPlist:a5 completionHandler:v22];

  objc_autoreleasePoolPop(v17);
  v19 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);

  return v19;
}

void sub_1817378AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSRegisterExtensionPointClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSRegisterExtensionPointClient_block_invoke;
  v13[3] = &unk_1E6A198D0;
  v13[4] = &v14;
  v9 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___LSRegisterExtensionPointClient_block_invoke_2;
  v12[3] = &unk_1E6A19A00;
  v12[4] = &v14;
  [v9 registerExtensionPoint:a1 platform:a2 declaringURL:a4 withInfo:a3 completionHandler:v12];

  objc_autoreleasePoolPop(v8);
  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void sub_181737B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSUnregisterExtensionPointClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSUnregisterExtensionPointClient_block_invoke;
  v13[3] = &unk_1E6A198D0;
  v13[4] = &v14;
  v9 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___LSUnregisterExtensionPointClient_block_invoke_2;
  v12[3] = &unk_1E6A19A00;
  v12[4] = &v14;
  [v9 unregisterExtensionPoint:a1 platform:a2 withVersion:a3 parentBundleUnit:a4 completionHandler:v12];

  objc_autoreleasePoolPop(v8);
  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void sub_181737D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSSetContentTypeHandler(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___LSSetContentTypeHandler_block_invoke;
  v15[3] = &unk_1E6A198D0;
  v15[4] = &v16;
  v9 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___LSSetContentTypeHandler_block_invoke_2;
  v14[3] = &unk_1E6A19A00;
  v14[4] = &v16;
  v10 = a4[1];
  v20[0] = *a4;
  v20[1] = v10;
  [v9 setHandler:a3 version:v20 roles:a2 forContentType:a1 completionHandler:v14];

  objc_autoreleasePoolPop(v8);
  v11 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_181737F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSSetSchemeHandler(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = objc_autoreleasePoolPush();
  if (_LSBundleDataGetUnsupportedFormatFlag() && (v7 = _LSGetAuditTokenForSelf(), !_LSCheckEntitlementForChangingDefaultHandler(v7, a1, 0)))
  {
    *(v16 + 6) = -10822;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___LSSetSchemeHandler_block_invoke;
    v14[3] = &unk_1E6A198D0;
    v14[4] = &v15;
    v8 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___LSSetSchemeHandler_block_invoke_2;
    v13[3] = &unk_1E6A19A00;
    v13[4] = &v15;
    v9 = a3[1];
    v19[0] = *a3;
    v19[1] = v9;
    [v8 setHandler:a2 version:v19 forURLScheme:a1 completionHandler:v13];
  }

  objc_autoreleasePoolPop(v6);
  v10 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_181738188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSRemoveSchemeHandler(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = objc_autoreleasePoolPush();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSRemoveSchemeHandler_block_invoke;
  v7[3] = &unk_1E6A198D0;
  v7[4] = &v8;
  v3 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___LSRemoveSchemeHandler_block_invoke_2;
  v6[3] = &unk_1E6A19A00;
  v6[4] = &v8;
  [v3 removeHandlerForURLScheme:a1 completionHandler:v6];

  objc_autoreleasePoolPop(v2);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_181738374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSSyncWithMobileInstallation()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:?];
  [v1 synchronizeWithMobileInstallation];

  objc_autoreleasePoolPop(v0);
}

uint64_t _LSCheckEntitlementForNSXPCConnection(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 valueForEntitlement:v4];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 compare:@"YES" options:1] && !objc_msgSend(v5, "intValue"))
        {
          goto LABEL_11;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v5 integerValue])
        {
          goto LABEL_11;
        }
      }

      v6 = 1;
LABEL_14:

      goto LABEL_15;
    }

LABEL_11:
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v3 auditToken];
      v8 = audit_token_to_pid(&v11);
      *buf = 134218242;
      v13 = v8;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Connection from process %llu does not have the required entitlement %{public}@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _LSCheckMIAllowedSPIForXPCConnection(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (v3 && a2)
  {
    v6 = _LSCopyEntitlementValueForXPCConnection(v3, @"com.apple.private.mobileinstall.allowedSPI");
    v7 = v6;
    if (v6 && object_getClass(v6) == MEMORY[0x1E69E9E50])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [a2 UTF8String];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___LSCheckMIAllowedSPIForXPCConnection_block_invoke;
      v11[3] = &unk_1E6A1CBD8;
      v11[4] = &v12;
      v11[5] = v9;
      xpc_array_apply(v7, v11);
      objc_autoreleasePoolPop(v8);
    }

    v5 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v5;
}

void sub_1817388F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSCheckOpenSensitiveURLForXPCConnection(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v3 && a2)
  {
    v6 = _LSCopyEntitlementValueForXPCConnection(v3, @"com.apple.springboard.opensensitiveurl");
    v7 = v6;
    if (v6)
    {
      if (object_getClass(v6) == MEMORY[0x1E69E9E50])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = ___LSCheckOpenSensitiveURLForXPCConnection_block_invoke;
        v10[3] = &unk_1E6A1CBD8;
        v10[4] = &v11;
        v10[5] = a2;
        xpc_array_apply(v7, v10);
      }

      else
      {
        v8 = _LSGetBooleanValueForEntitlementValue(v7, 0);
        *(v12 + 24) = v8;
      }
    }

    v5 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_181738AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t _LSCheckLSDServiceAccessForAuditToken(__int128 *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (_LSCheckLSDServiceAccessForAuditToken::once != -1)
  {
    _LSCheckLSDServiceAccessForAuditToken_cold_1();
  }

  v5 = 0;
  if (a1 && a2)
  {
    if (_LSCheckLSDServiceAccessForAuditToken::lsdServiceClass && ![a2 isSubclassOfClass:?])
    {
      v5 = 0;
    }

    else
    {
      v6 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:{objc_msgSend(a2, "connectionType")}];
      v5 = _LSCheckMachPortAccessForAuditToken(a1, v6);
    }
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void _LSSetCurrentProcessMayMapDatabase(int a1)
{
  if (_LSCurrentProcessMayMapDatabase::once != -1)
  {
    _LSCurrentProcessMayMapDatabase_cold_1();
  }

  atomic_load(mayMapDatabase);
  atomic_store(a1 != 0, mayMapDatabase);
}

__int128 *_LSIsAuditTokenPlatformBinary(__int128 *result)
{
  if (result)
  {
    v2 = *result;
    v3 = result[1];
    pidp = 0;
    v1 = result[1];
    *atoken.val = *result;
    *&atoken.val[4] = v1;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    csops_audittoken();
    return 0;
  }

  return result;
}

__int128 *_LSIsXPCConnectionPlatformBinary(void *a1)
{
  v1 = a1;
  if (v1)
  {
    xpc_connection_get_audit_token();
    v2 = _LSIsAuditTokenPlatformBinary(&v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t _LSBundleIdentifierIsPlatformWebBrowser(unint64_t result)
{
  if (result)
  {
    v1 = result;
    return CFEqual(result, @"com.apple.mobilesafari") || CFEqual(v1, @"com.apple.Safari") != 0;
  }

  return result;
}

BOOL _LSCurrentProcessCanAccessManagedSettings()
{
  if (_LSGetAuditTokenForSelf::once != -1)
  {
    _LSGetAuditTokenForSelf_cold_1();
  }

  v0 = _LSCopyEntitlementValueForAuditToken(_LSGetAuditTokenForSelf::result, @"com.apple.private.managed-settings.effective-read");
  v1 = _LSGetBooleanValueForEntitlementValue(v0, 0);

  return v1;
}

uint64_t _LSGetConsoleOwnerUID(uid_t *a1)
{
  if (lstat("/dev/console", &v3))
  {
    return 0;
  }

  if (a1)
  {
    *a1 = v3.st_uid;
  }

  return 1;
}

CFURLRef _LSCopyExecutableURLForXPCConnection(void *a1)
{
  v1 = a1;
  if (v1)
  {
    xpc_connection_get_audit_token();
    v2 = _LSCopyExecutableURLForAuditToken(&v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _LSEnumeratorFireErrorHandler(atomic_uchar *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((atomic_exchange(a1 + 16, 1u) & 1) == 0)
  {
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_ERROR))
    {
      _LSEnumeratorFireErrorHandler_cold_1();
    }

    v4 = [(atomic_uchar *)a1 errorHandler];
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      if (!v3)
      {
        v8 = *MEMORY[0x1E696A278];
        v9[0] = @"Fallback for nil error in enumerator error handler";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
        v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v6, "_LSEnumeratorFireErrorHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/Enumerator/LSEnumerator.mm", 178);
      }

      (v4)[2](v4, v3);
      objc_autoreleasePoolPop(v5);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_181739A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LaunchServices::Database::Context::~Context(&a9);

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::Database::Context::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 && *(a1 + 16) == 1)
  {
    _LSContextDestroy(v4);
  }

  v5 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;

  v6 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  if (*a2)
  {
    *a1 = a1 + 8;
    if (*(a2 + 16) == 1)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = *a2;
      if (!*a2)
      {
LABEL_9:
        *(a1 + 16) = *(a2 + 16);
        goto LABEL_10;
      }
    }

    objc_storeStrong((a1 + 8), *v7);
    goto LABEL_9;
  }

LABEL_10:
  objc_storeStrong((a1 + 24), *(a2 + 24));
  return a1;
}

uint64_t _LSGetOSStatusFromPOSIXErrorCode(uint64_t a1)
{
  v1 = a1;
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (a1 < -1)
  {
    goto LABEL_6;
  }

  if ((a1 - 108) <= 0x37)
  {
    if (a1 == 125)
    {
      v2 = 4294966686;
    }

    else
    {
      v2 = 4294956486;
    }

    goto LABEL_6;
  }

  if (a1 > 44)
  {
    if (a1 > 68)
    {
      if (a1 == 69)
      {
LABEL_21:
        v2 = 4294967262;
        goto LABEL_6;
      }

      if (a1 != 78)
      {
        if (a1 == 80)
        {
LABEL_20:
          v2 = 4294962296;
          goto LABEL_6;
        }

        goto LABEL_30;
      }
    }

    else if (a1 != 45)
    {
      if (a1 == 63)
      {
        v2 = 4294967259;
        goto LABEL_6;
      }

      if (a1 == 66)
      {
LABEL_16:
        v2 = 4294967249;
        goto LABEL_6;
      }

LABEL_30:
      v2 = 4294967260;
      goto LABEL_6;
    }

    v2 = 4294967292;
    goto LABEL_6;
  }

  v2 = a1;
  switch(a1)
  {
    case -1:
      if (*__error() == -1)
      {
        goto LABEL_30;
      }

      v6 = __error();
      v2 = _LSGetOSStatusFromPOSIXErrorCode(*v6);
      break;
    case 0:
      break;
    case 1:
      v2 = 4294967242;
      break;
    case 2:
      v2 = 4294967253;
      break;
    case 9:
      v2 = 4294967245;
      break;
    case 12:
    case 23:
      v2 = 4294967255;
      break;
    case 13:
      goto LABEL_20;
    case 16:
      goto LABEL_16;
    case 17:
      v2 = 4294967248;
      break;
    case 20:
      v2 = 4294967176;
      break;
    case 22:
      v2 = 4294967246;
      break;
    case 24:
      v2 = 4294967254;
      break;
    case 28:
      goto LABEL_21;
    case 30:
      v2 = 4294967235;
      break;
    default:
      goto LABEL_30;
  }

LABEL_6:
  v3 = _LSErrorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109634;
    v7[1] = v1;
    v8 = 2082;
    v9 = strerror(v1);
    v10 = 2048;
    v11 = v2;
    _os_log_debug_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEBUG, "Converted POSIX error %i (%{public}s) to OSStatus %li", v7, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _LSGetOSStatusFromNSError(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 4294956486;
    goto LABEL_31;
  }

  v3 = [v1 domain];
  v4 = [v2 code];
  v5 = [v2 userInfo];
  if (![v3 isEqual:*MEMORY[0x1E696A768]])
  {
    if (![v3 isEqual:*MEMORY[0x1E696A798]])
    {
      if ((v4 - 4096) > 0x80)
      {
        if (v4 == 4 && ([v3 isEqual:*MEMORY[0x1E696A250]] & 1) != 0)
        {
          v4 = 4294967253;
          goto LABEL_22;
        }
      }

      else if ([v3 isEqual:*MEMORY[0x1E696A250]])
      {
        v6 = _LSErrorLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          _LSGetOSStatusFromNSError_cold_2(v2, v6);
        }

        v4 = 4294956474;
        goto LABEL_22;
      }

      v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      v8 = v7;
      if (v7 && v7 != v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v4 = _LSGetOSStatusFromNSError(v8);
      }

      else
      {
        v9 = _LSErrorLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          _LSGetOSStatusFromNSError_cold_1(v2, v9);
        }

        v4 = 4294956486;
      }

      goto LABEL_22;
    }

    v4 = _LSGetOSStatusFromPOSIXErrorCode(v4);
  }

LABEL_22:
  v10 = _LSErrorLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = [v5 objectForKeyedSubscript:@"_LSFunction"];
    if (v12)
    {
      v13 = [v5 objectForKeyedSubscript:@"_LSLine"];
      v14 = _LSErrorLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138544130;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        v21 = 2048;
        v22 = v4;
        v23 = 2114;
        v24 = v2;
        _os_log_debug_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEBUG, "Launch Services constructed an error at %{public}@:%{public}@, translating to OSStatus %li: %{public}@", &v17, 0x2Au);
      }
    }

    else
    {
      v13 = _LSErrorLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _LSGetOSStatusFromNSError_cold_3(v4, v2, v13);
      }
    }
  }

LABEL_31:
  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL _LSNSErrorIsFNFError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    if ([v3 isEqual:*MEMORY[0x1E696A250]])
    {
      if ([v2 code] == 260)
      {
        v4 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v7 = [v2 code];

      if (v7 == 4)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v5 = [v2 domain];
    if ([v5 isEqual:*MEMORY[0x1E696A798]])
    {
      v6 = [v2 code];

      if (v6 == 2)
      {
LABEL_14:
        v4 = 1;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v3 = [v2 domain];
    if ([v3 isEqual:*MEMORY[0x1E696A768]])
    {
      v4 = [v2 code] == -43;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_17:

  return v4;
}

void std::vector<void *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void *>::__append(a1, a2 - v2);
  }
}

void *std::vector<void *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](result, a2);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_18173AE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::reserve(std::vector<char> *this, std::vector<char>::size_type __n)
{
  if (this->__end_cap_.__value_ - this->__begin_ < __n)
  {
    if ((__n & 0x8000000000000000) == 0)
    {
      v2 = this->__end_ - this->__begin_;
      operator new();
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
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
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
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

id _LSMakeNSErrorDomainUserInfoWithExtras(const char *a1, char *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  [v6 setObject:v7 forKeyedSubscript:@"_LSFunction"];

  if (a2)
  {
    v8 = strrchr(a2, 47);
    if (v8)
    {
      v10 = v8[1];
      v9 = v8 + 1;
      if (v10)
      {
        a2 = v9;
      }
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v6 setObject:v11 forKeyedSubscript:@"_LSFile"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [v6 setObject:v12 forKeyedSubscript:@"_LSLine"];

  if (launchServicesVersionString(void)::sOnce != -1)
  {
    _LSMakeNSErrorDomainUserInfoWithExtras();
  }

  if (_os_feature_enabled_impl())
  {
    v13 = [[_LSStackBacktrace alloc] initWithBacktrace];
    if (v13)
    {
      [v6 setObject:v13 forKeyedSubscript:@"_LSBacktrace"];
    }
  }

  return v6;
}

void std::vector<void *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void _LSParseLoadCommands()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v9 = v8;
  lseek(v7, 0, 0);
  if (v6 >= 0x2000)
  {
    v10 = 0x2000;
  }

  else
  {
    v10 = v6;
  }

  if (v6 <= 0)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = v10;
  }

  v12 = read(v7, &v42, v11);
  if (v12 < 28)
  {
    v15 = handleWeirdHeaderTypes(&v42, v12, v4, v9);
    if (v2 && !v15)
    {
      *v2 = 1;
    }

    goto LABEL_53;
  }

  magic = v42.magic;
  if (v42.magic <= -805638659)
  {
    if (v42.magic != -1095041334 && v42.magic != -889275714)
    {
      v14 = -822415874;
LABEL_42:
      if (v42.magic == v14)
      {
        CFDictionaryAddValue(v4, @"LSExecutableFormat", @"LSExecutableMachOFormat");
        appendSliceForCPUTypeSubtype(v9, bswap32(v42.cputype), bswap32(v42.cpusubtype));
        v16 = &v42;
        goto LABEL_44;
      }

      handleWeirdHeaderTypes(&v42, v12, v4, v9);
      goto LABEL_53;
    }

    CFDictionaryAddValue(v4, @"LSExecutableFormat", @"LSExecutableMachOFormat");
    v17 = bswap32(v42.cputype);
    if (magic == -1095041334)
    {
      cputype = v17;
    }

    else
    {
      cputype = v42.cputype;
    }

    if (!cputype)
    {
      goto LABEL_53;
    }

    v16 = 0;
    p_cpusubtype = &v42.cpusubtype;
    v20 = (&v40 + v12 + 12);
    while (1)
    {
      if (p_cpusubtype > v20)
      {
LABEL_39:
        if (!v16)
        {
          goto LABEL_53;
        }

LABEL_44:
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x2020000000;
        v30 = 0;
        dyld_get_active_platform();
        dyld_get_image_versions();
        v25 = *(v32 + 6);
        if (v25)
        {
          v40 = 0u;
          v41 = 0u;
          _LSVersionNumberMakeWithDYLDVersion(v25, &v40);
          v39[0] = v40;
          v39[1] = v41;
          v26 = _LSVersionNumberCopyStringRepresentation(v39);
          if (v26)
          {
            CFDictionarySetValue(v4, @"LSExecutableSDKVersion", v26);
            CFRelease(v26);
          }
        }

        if (*(v36 + 6))
        {
          v27 = CFNumberCreate(0, kCFNumberSInt32Type, v36 + 3);
          if (v27)
          {
            CFDictionarySetValue(v4, @"LSExecutablePlatformKey", v27);
            CFRelease(v27);
          }
        }

        if (v16 != &v42)
        {
          free(v16);
        }

        _Block_object_dispose(v29, 8);
        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        goto LABEL_53;
      }

      v21 = p_cpusubtype[2];
      if (magic == -889275714)
      {
        appendSliceForCPUTypeSubtype(v9, *p_cpusubtype, p_cpusubtype[1]);
      }

      else
      {
        appendSliceForCPUTypeSubtype(v9, bswap32(*p_cpusubtype), bswap32(p_cpusubtype[1]));
        v21 = bswap32(v21);
      }

      v22 = mallocMachHeader(v7, v21);
      v23 = v22;
      if (v22)
      {
        if ((v22->magic & 0xFFFFFFFE) == 0xFEEDFACE)
        {
          addUUID(v22, v4);
        }

        if (v16)
        {
          if ((v16->magic & 0xFFFFFFFE) == 0xFEEDFACE)
          {
            v24 = v23;
            if (v16 == v23)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v24 = v16;
            v16 = v23;
          }

          free(v24);
        }

        else
        {
          v16 = v23;
        }
      }

LABEL_38:
      p_cpusubtype += 5;
      if (!--cputype)
      {
        goto LABEL_39;
      }
    }
  }

  if (v42.magic + 17958194 >= 2)
  {
    v14 = -805638658;
    goto LABEL_42;
  }

  CFDictionaryAddValue(v4, @"LSExecutableFormat", @"LSExecutableMachOFormat");
  appendSliceForCPUTypeSubtype(v9, v42.cputype, v42.cpusubtype);
  v16 = &v42;
  if (machHeaderSize(&v42) <= v12 || (v16 = mallocMachHeader(v7, 0)) != 0)
  {
    addUUID(v16, v4);
    goto LABEL_44;
  }

LABEL_53:

  v28 = *MEMORY[0x1E69E9840];
}

void appendSliceForCPUTypeSubtype(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    goto LABEL_16;
  }

  if (a2 > 16777222)
  {
    if (((a2 - 16777223) > 0xB || ((1 << (a2 - 7)) & 0x821) == 0) && a2 != 33554444)
    {
LABEL_10:
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134218240;
        v11 = a2;
        v12 = 2048;
        v13 = a3;
        _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "LaunchServices: CPU type %lu (subtype %lu) not recognized", &v10, 0x16u);
      }

      goto LABEL_16;
    }

LABEL_15:
    v7 = [[LSSliceInfo alloc] initWithType:a2 subtype:a3];
    [v5 addObject:v7];

    goto LABEL_16;
  }

  if (a2 == 7)
  {
    goto LABEL_15;
  }

  if (a2 != 12)
  {
    if (a2 != 18)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (a3 <= 0x10 && ((1 << a3) & 0x1DE40) != 0)
  {
    goto LABEL_15;
  }

  v9 = _LSDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "LaunchServices: ARM CPU subtype %lu not recognized", &v10, 0xCu);
  }

LABEL_16:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t machHeaderSize(const mach_header *a1)
{
  result = 0;
  magic = a1->magic;
  if (a1->magic <= -17958195)
  {
    if (magic != -822415874)
    {
      if (magic == -805638658)
      {
        sizeofcmds = bswap32(a1->sizeofcmds);
        return sizeofcmds + 32;
      }

      return result;
    }

    v5 = bswap32(a1->sizeofcmds);
    return v5 + 28;
  }

  if (magic == -17958193)
  {
    sizeofcmds = a1->sizeofcmds;
    return sizeofcmds + 32;
  }

  if (magic == -17958194)
  {
    v5 = a1->sizeofcmds;
    return v5 + 28;
  }

  return result;
}

void *mallocMachHeader(int a1, off_t a2)
{
  if (pread(a1, &__buf, 0x1CuLL, a2) != 28)
  {
    return 0;
  }

  v4 = machHeaderSize(&__buf);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = malloc_type_malloc(v4, 0x100004027586B93uLL);
  if (v6 && pread(a1, v6, v5, a2) < v5)
  {
    free(v6);
    return 0;
  }

  return v6;
}

void addUUID(const mach_header *a1, __CFDictionary *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  ncmds = a1->ncmds;
  v5 = machHeaderSize(a1);
  if (a1->magic == -17958194)
  {
    v6 = 28;
    if (!ncmds)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (a1->magic != -17958193)
    {
      goto LABEL_25;
    }

    v6 = 32;
    if (!ncmds)
    {
      goto LABEL_25;
    }
  }

  v7 = a1 + v5;
  v8 = a1 + v6;
  v9 = ncmds - 1;
  while (1)
  {
    if (v8 + 8 >= v7)
    {
      goto LABEL_25;
    }

    v10 = *(v8 + 1);
    if (*v8 == 27)
    {
      break;
    }

    v8 += v10;
    if (v8 >= v7 || v9-- == 0)
    {
      goto LABEL_25;
    }
  }

  if (&v8[v10] < v7)
  {
    memset(v22, 0, sizeof(v22));
    uuid_unparse_upper(v8 + 8, v22);
    v12 = *MEMORY[0x1E695E480];
    v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v22, 0x8000100u);
    if (v13)
    {
      v14 = v13;
      if (CFDictionaryContainsKey(a2, @"MachOUUIDs"))
      {
        Value = CFDictionaryGetValue(a2, @"MachOUUIDs");
        if (!Value || (v16 = Value, v17 = CFGetTypeID(Value), v17 != CFArrayGetTypeID()))
        {
LABEL_24:
          CFRelease(v14);
          goto LABEL_25;
        }

        Count = CFArrayGetCount(v16);
        MutableCopy = CFArrayCreateMutableCopy(v12, Count + 1, v16);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(v12, 1, MEMORY[0x1E695E9C0]);
      }

      v20 = MutableCopy;
      if (MutableCopy)
      {
        CFArrayAppendValue(MutableCopy, v14);
        CFDictionarySetValue(a2, @"MachOUUIDs", v20);
        CFRelease(v20);
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t handleWeirdHeaderTypes(unsigned __int8 *a1, unint64_t a2, __CFDictionary *a3, void *a4)
{
  v7 = a4;
  v8 = 0;
  if (a1 && a3)
  {
    if (a2 < 4)
    {
      if (a2 < 2)
      {
        goto LABEL_16;
      }

      v9 = *a1;
    }

    else
    {
      v9 = *a1;
      if (v9 == 74)
      {
        if (a1[1] == 111 && a1[2] == 121 && a1[3] == 33)
        {
          CFDictionaryAddValue(a3, @"LSExecutableFormat", @"LSExecutableCFMFormat");
          if (v7)
          {
            appendSliceForCPUTypeSubtype(v7, 18, 0);
          }

          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    if (v9 == 35 && a1[1] == 33)
    {
      CFDictionaryAddValue(a3, @"LSExecutableFormat", @"LSExecutable#!Format");
LABEL_15:
      v8 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v8 = 0;
  }

LABEL_17:

  return v8;
}

void _LSAddExecutableFormatInfo()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v23 = *MEMORY[0x1E69E9840];
  v7 = v0;
  v8 = v6;
  v20 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = _LSGetBundleClassForHFSType(v4);
  if (v4 == 1095782476 || v10 != 2)
  {
    if ([v7 getFileSystemRepresentation:v21 error:0])
    {
      v19 = 0;
      v11 = open(v21, 0, 511);
      if (v11 < 0 || ((v12 = [v7 getLength:&v19 error:0], v19) ? (v13 = v12) : (v13 = 0), v13 != 1))
      {
        v20 = 1;
        CFDictionaryAddValue(v2, @"_LSNoExecutableInfo", *MEMORY[0x1E695E4D0]);
        if (v11 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        fcntl(v11, 48, 1);
        _LSParseLoadCommands();
        if (v19 >= 0x2000)
        {
          v14 = 0x2000;
        }

        else
        {
          v14 = v19;
        }

        if (pread(v11, __buf, v14, 0) >= 28)
        {
          v15 = v8;
          if (v2 && (Value = CFDictionaryGetValue(v2, @"DTPlatformName")) != 0 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(Value)) && (CFStringCompare(Value, @"iphonesimulator", 1uLL) == kCFCompareEqualTo || CFStringCompare(Value, @"appletvsimulator", 1uLL) == kCFCompareEqualTo || CFStringCompare(Value, @"watchsimulator", 1uLL) == kCFCompareEqualTo))
          {

            CFDictionaryAddValue(v2, @"_LSRequiresIPhoneSimulator", *MEMORY[0x1E695E4D0]);
          }

          else
          {
          }
        }
      }

      close(v11);
    }
  }

  else
  {
    CFDictionaryAddValue(v2, @"LSExecutableFormat", @"LSExecutableCFMFormat");
    appendSliceForCPUTypeSubtype(v9, 18, 0);
  }

LABEL_23:
  CFDictionaryAddValue(v2, @"_LSSliceInfosKey", v9);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t _LSExtensionPointAdd(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || ![(_LSDatabase *)v3 store])
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  *a2 = CFAbsoluteTimeGetCurrent();
  [(_LSDatabase *)v4 store];
  v5 = *([(_LSDatabase *)v4 schema]+ 1592);
  v6 = CSStoreAllocUnitWithData();
  if (!v6)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Failed to allocate store unit with extension point data", v11, 2u);
    }

    goto LABEL_12;
  }

  v7 = a2[1];
  if (_LSBindableActivate(v4, v6))
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to activate binding for extension point data, this extension point will not be found", buf, 2u);
    }
  }

  _LSDatabaseCommit(v4);
LABEL_13:

  return v6;
}

uint64_t _LSExtensionPointComparePriority_BindableComparitor(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = _LSGetExtensionPointData(v5, a2);
  v7 = _LSGetExtensionPointData(v5, a3);
  v8 = _LSExtensionPointComparePriority(v7, v6, v7);

  return v8;
}

void _LSExtensionPointRemove(void *a1, int a2)
{
  v10 = a1;
  if (v10 && a2 && [(_LSDatabase *)v10 store])
  {
    v3 = _LSGetExtensionPointData(v10, a2);
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 4);
      _LSBindableDeactivate(v10, a2);
      v6 = v4[1];
      [(_LSDatabase *)v10 store];
      _CSStringRelease();
      v7 = v4[10];
      [(_LSDatabase *)v10 store];
      _CSStringRelease();
      _LSPlistRemove(v10, v4[12]);
      v8 = v4[13];
      if (v8)
      {
        _LSAliasRemove(v10, v8);
      }

      v9 = *([(_LSDatabase *)v10 schema]+ 1592);
      CSStoreFreeUnit();
    }

    _LSDatabaseCommit(v10);
  }
}

uint64_t _LSExtensionPointComparePriority(_LSDatabase *a1, const LSExtensionPointData *a2, const LSExtensionPointData *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_10:
    v4 = 1;
    goto LABEL_11;
  }

  var2 = a2->var2;
  v7 = a3->var2;
  v10 = var2;
  memset(&v9, 0, sizeof(v9));
  if (!_LSVersionNumberCompare(&v10, &v9))
  {
LABEL_9:
    v4 = -1;
    goto LABEL_11;
  }

  v10 = v7;
  memset(&v9, 0, sizeof(v9));
  if (!_LSVersionNumberCompare(&v10, &v9))
  {
    goto LABEL_10;
  }

  v10 = var2;
  v9 = v7;
  v3 = _LSVersionNumberCompare(&v10, &v9);
  v4 = v3 == 1;
  if (v3 == -1)
  {
    v4 = -1;
  }

LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _LSExtensionPointUnregisterUnderFrameworkURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__4;
  v16 = &unk_1818533FF;
  v18 = 0;
  v19 = 0;
  __p = 0;
  [(_LSDatabase *)v3 store];
  v5 = *([(_LSDatabase *)v3 schema]+ 1592);
  v6 = v3;
  v7 = v4;
  _CSStoreEnumerateUnits();
  v8 = v12[6];
  v9 = v12[7];
  while (v8 != v9)
  {
    _LSExtensionPointRemove(v6, *v8++);
  }

  _Block_object_dispose(&v11, 8);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_18173C82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void _LSExtensionPointGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2, int a3)@<X8>)
{
  *a1 = LaunchServices::ExtensionPoints::getSummary;
  a1[1] = LaunchServices::ExtensionPoints::display;
  a1[2] = 0;
}

unsigned int *LaunchServices::ExtensionPoints::getSummary(void **this, LSContext *a2, int a3)
{
  v4 = _LSGetExtensionPointData(*this, a3);
  if (v4)
  {
    v5 = v4;
    v6 = v4[1];
    [(_LSDatabase *)*this store];
    v4 = _CSStringCopyCFString();
    if (!v4)
    {
      v7 = *this;
      v8 = v5[10];
      [(_LSDatabase *)v7 store];
      v4 = _CSStringCopyCFString();
    }
  }

  return v4;
}

BOOL LaunchServices::ExtensionPoints::display(void **this, LSContext *a2, int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = _LSGetExtensionPointData(*this, a3);
  v9 = v8;
  if (v8)
  {
    [v7 write:@"Extension Point ID" stringID:*(v8 + 4)];
    [v7 write:@"Platform" platform:*(v9 + 44)];
    v10 = *(v9 + 60);
    v11 = @"internal";
    if (v10 == 1)
    {
      v11 = @"public";
    }

    if (v10 == 2)
    {
      v12 = @"3rd party";
    }

    else
    {
      v12 = v11;
    }

    [v7 write:@"Type" string:v12];
    [v7 write:@"Name" stringID:*(v9 + 40)];
    v13 = *(v9 + 56);
    if (v13)
    {
      v14 = [v7 link:*(-[_LSDatabase schema](*this) + 4) unit:*(v9 + 56)];
    }

    else
    {
      v14 = @"no parent provided";
    }

    [v7 write:@"Parent Bundle ID" string:v14];
    if (v13)
    {
    }

    v15 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:*(v9 + 52)];
    [v7 write:@"declaringFramework" string:v15];

    v16 = *(v9 + 64);
    v17 = @"deny";
    if (v16 == 2)
    {
      v17 = @"prompt-host-personality";
    }

    if (v16 == 1)
    {
      v18 = @"prompt-container-personality";
    }

    else
    {
      v18 = v17;
    }

    [v7 write:@"TCC Policy" string:v18];
    [v7 write:@"reg date" interval:*v9];
    v19 = v7;
    [v19 beginFlags:@"extension point flags" flags:*(v9 + 68)];
    [v19 flag:1 name:@"discover-from-hidden-apps"];
    [v19 endFlags];

    [v19 childUnit:@"SDKDict" table:*(-[_LSDatabase schema](*this) + 1600) unit:*(v9 + 48)];
  }

  return v9 != 0;
}

void sub_18173D5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSCheckEntitlementForChangingDefaultHandler(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = _LSCopyEntitlementValueForAuditToken(a1, @"com.apple.private.launchservices.changedefaulthandlers");
  v6 = _LSCheckEntitlementValueForChangingDefaultHandlerCheckingDefaultApps(v5, a2, a3, 1);

  return v6;
}

uint64_t _LSCheckXPCConnectionEntitlementForChangingDefaultHandler(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  xpc_connection_get_audit_token();
  v6 = _LSCopyEntitlementValueForXPCConnection(v5, @"com.apple.private.launchservices.changedefaulthandlers");
  v7 = _LSCheckEntitlementValueForChangingDefaultHandlerCheckingDefaultApps(v6, a2, a3, 1);

  return v7;
}

uint64_t _LSCheckEntitlementValueForChangingDefaultHandlerCheckingDefaultApps(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = _os_feature_enabled_impl();
  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoFromTypeIdentifier(a3);
    if (InfoFromTypeIdentifier)
    {
LABEL_13:
      v11 = v7;
      if (_LSCheckEntitlementValueForSchemeOrTypeMatch(v11, 0, InfoFromTypeIdentifier[1]))
      {
        v12 = 1;
LABEL_34:

        goto LABEL_35;
      }

      if (!InfoFromTypeIdentifier[6])
      {
        v12 = 0;
        goto LABEL_34;
      }

      v13 = 0;
      v14 = 0;
      v12 = 1;
      while (1)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(InfoFromTypeIdentifier[5] + v13 + 8)];
        if (!*(InfoFromTypeIdentifier[5] + v13))
        {
          break;
        }

        if (*(InfoFromTypeIdentifier[5] + v13) == 1)
        {
          if (!v12)
          {
            goto LABEL_30;
          }

          v16 = _LSCheckEntitlementValueForChangingDefaultHandlerCheckingDefaultApps(v11, 0, v15, 0);
LABEL_29:
          v12 = v16 != 0;
        }

LABEL_31:

        ++v14;
        v13 += 24;
        if (v14 >= InfoFromTypeIdentifier[6])
        {
          goto LABEL_34;
        }
      }

      if (!v12)
      {
LABEL_30:
        v12 = 0;
        goto LABEL_31;
      }

      v16 = _LSCheckEntitlementValueForChangingDefaultHandlerCheckingDefaultApps(v11, v15, 0, 0);
      goto LABEL_29;
    }

    InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoForSubordinateClaim(1, a3);
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    InfoFromTypeIdentifier = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (!InfoFromTypeIdentifier)
  {
    InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoForSubordinateClaim(0, a2);
  }

LABEL_12:
  if (InfoFromTypeIdentifier)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (a2 || !a3)
  {
    if (a2 | a3)
    {
      v12 = _LSCheckEntitlementValueForSchemeOrTypeMatch(v7, a2, a3);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_35:

  return v12;
}

void ___ZL44_LSCheckEntitlementValueForSchemeOrTypeMatchPU24objcproto13OS_xpc_object8NSObjectPK10__CFStringS4__block_invoke(void *a1, void *a2)
{
  v8 = a2;
  string_ptr = xpc_string_get_string_ptr(v8);
  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string_ptr, 0x8000100u);
  v5 = v4;
  if (v4)
  {
    if (CFEqual(v4, @"*"))
    {
      *(*(a1[4] + 8) + 24) = 1;
    }

    else
    {
      v6 = a1[6];
      if (v6 && CFStringCompare(v6, v5, 1uLL) == kCFCompareEqualTo)
      {
        *(*(a1[4] + 8) + 24) = 1;
      }

      v7 = a1[7];
      if (!v7 || !UTTypeEqual(v7, v5))
      {
        goto LABEL_5;
      }
    }

    *(*(a1[5] + 8) + 24) = 1;
LABEL_5:
    CFRelease(v5);
  }
}

void sub_18173E440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  CFRelease(v10);

  _Unwind_Resume(a1);
}

BOOL ___ZL44_LSCheckEntitlementValueForSchemeOrTypeMatchPU24objcproto13OS_xpc_object8NSObjectPK10__CFStringS4__block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    (*(a1[4] + 16))();
  }

  if (*(*(a1[5] + 8) + 24))
  {
    v5 = *(*(a1[6] + 8) + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_18173E98C(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_18173EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v22 = v21;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t LSInit(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    result = 4294967292;
    goto LABEL_21;
  }

  v2 = a1;
  if ((a1 & 0x400) == 0 || (result = _LSValidateDatabase(0), !result))
  {
    if ((v2 & 0x20) != 0)
    {
      gLogRegistrationErrors = 1;
      if ((v2 & 0x40) == 0)
      {
LABEL_7:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else if ((v2 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    [__LSDefaultsGetSharedInstance() setHasServer:0];
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_12:
    _LSResetServer();
    if ((v2 & 0x100) == 0)
    {
LABEL_16:
      if ((v2 & 0x80) != 0)
      {
        v4 = _LSDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = _CFGetEUID();
          LSInit_cold_1(v5, &v7, v4);
        }

        _LSSetDatabaseIsSeeded(1);
      }

      result = 0;
      goto LABEL_21;
    }

LABEL_13:
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = _CFGetEUID();
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "LaunchServices: Begin database seeding for uid %lli", &v7, 0xCu);
    }

    _LSSetDatabaseIsSeeded(0);
    goto LABEL_16;
  }

LABEL_21:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

OSStatus LSRegisterURL(CFURLRef inURL, Boolean inUpdate)
{
  v2 = inUpdate;
  v4 = objc_autoreleasePoolPush();
  if (v2)
  {
    v5 = 134217729;
  }

  else
  {
    v5 = 0x8000000;
  }

  v11 = 0;
  v6 = _LSRegisterBundleURL(0, inURL, v5, 0, &v11);
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = _LSGetOSStatusFromNSError(v7);
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t _LSGetStatus()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = objc_autoreleasePoolPush();
  v1 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___LSGetStatus_block_invoke;
  v4[3] = &unk_1E6A1CE00;
  v4[4] = &v5;
  [v1 getServerStatusWithCompletionHandler:v4];

  objc_autoreleasePoolPop(v0);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_18173F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSValidateDatabase(const char *a1)
{
  v7 = 0;
  if (a1)
  {
    v6 = 0;
    v1 = _LSContextInitWithPath(&v7, a1, &v6);
    v2 = v6;
    v3 = v2;
    if (v1)
    {
      v4 = 0;
    }

    else
    {
      v4 = _LSGetOSStatusFromNSError(v2);
    }
  }

  else
  {
    v4 = _LSContextInit(&v7);
  }

  if (!v4)
  {
    [(_LSDatabase *)v7 store];
    if (_CSStoreValidate())
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294957805;
    }

    _LSContextDestroy(&v7);
  }

  return v4;
}

__CFSet *_LSCreatePackageExtensionsArray(const __CFAllocator *a1)
{
  v4.db = 0;
  if (_LSContextInit(&v4.db))
  {
    v2 = 0;
  }

  else
  {
    v2 = _LSCreatePackageExtensionsArrayForContext(a1, &v4);
    _LSContextDestroy(&v4.db);
  }

  return v2;
}

uint64_t _LSUnregisterPluginsInDirectory(const __CFURL *a1)
{
  v9 = 0;
  v2 = _LSContextInit(&v9);
  if (!v2)
  {
    if (a1 && (v3 = _LSCopyPluginsWithURL(&v9, a1), (v4 = v3) != 0))
    {
      Count = CFArrayGetCount(v3);
      if (Count < 1)
      {
        v2 = 0;
      }

      else
      {
        v6 = 0;
        v2 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
          if (ValueAtIndex)
          {
            v2 = _LSUnregisterPlugin(&v9, [ValueAtIndex unsignedLongLongValue]);
          }

          ++v6;
        }

        while (Count != v6);
      }

      CFRelease(v4);
    }

    else
    {
      v2 = 0;
    }

    _LSContextDestroy(&v9);
  }

  return v2;
}

uint64_t _LSRemoveDefaultRoleHandlerForContentType(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_autoreleasePoolPush();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___LSRemoveDefaultRoleHandlerForContentType_block_invoke;
  v9[3] = &unk_1E6A18DF0;
  v9[4] = &v10;
  v5 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___LSRemoveDefaultRoleHandlerForContentType_block_invoke_2;
  v8[3] = &unk_1E6A1CE28;
  v8[4] = &v10;
  [v5 removeHandlerForContentType:a1 roles:a2 completionHandler:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_18173FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSSetDefaultWebBrowserWithBundleIdentifierAndVersion(uint64_t a1, __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _LSGetAuditTokenForSelf();
  v5 = _LSCheckEntitlementForChangingDefaultHandler(v4, @"http", 0);
  v6 = v5;
  if (a1)
  {
    v12 = 0u;
    v13 = 0u;
    if (a2)
    {
      _LSGetVersionFromString(a2, &v12);
      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_11:
      v10 = v12;
      v11 = v13;
      result = _LSSetSchemeHandler(@"http", a1, &v10);
      if (!result)
      {
        v10 = v12;
        v11 = v13;
        result = _LSSetSchemeHandler(@"https", a1, &v10);
      }

      goto LABEL_14;
    }

    v12 = kLSVersionNumberNull;
    v13 = unk_1817E90C0;
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    result = 4294967242;
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  result = _LSRemoveSchemeHandler(@"http");
  if (result)
  {
LABEL_14:
    v9 = *MEMORY[0x1E69E9840];
    return result;
  }

  v8 = *MEMORY[0x1E69E9840];

  return _LSRemoveSchemeHandler(@"https");
}

uint64_t _LSAdvertisementBytesKind(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetLength(result) < 7)
    {
      return 0;
    }

    v2 = *CFDataGetBytePtr(v1) >> 6;
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        return 1;
      }

      else
      {
        return 4;
      }
    }

    if (v2)
    {
      return 2;
    }

    if (CFDataGetLength(v1) < 7)
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(v1);
    if (BytePtr[1] || BytePtr[2] || BytePtr[3] || BytePtr[4] || BytePtr[5])
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
      if (!BytePtr[6])
      {
        v4 = 0;
      }
    }

    if (BytePtr[5] >= 0x40u)
    {
      return 5;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

CFStringRef _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising(const __CFData *a1)
{
  if (!a1 || CFDataGetLength(a1) < 7)
  {
    return 0;
  }

  v2 = _LSAdvertisementBytesKind(a1);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v6 = "ua-";
    }

    else
    {
      if (v2 != 2)
      {
        return 0;
      }

      v6 = "dns-";
    }
  }

  else
  {
    if (v2 == 3)
    {
      v7 = CFDataGetBytePtr(a1)[6];
      v8 = @"com.apple.NowPlaying";
      if (v7 != 1)
      {
        v8 = 0;
      }

      if (v7 == 2)
      {
        v5 = @"com.apple.Siri";
      }

      else
      {
        v5 = v8;
      }

      if (v5)
      {
        v4 = *MEMORY[0x1E695E480];
        goto LABEL_27;
      }

      return 0;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        v3 = CFDataGetBytePtr(a1)[5] & 0xC0;
        if (v3 == 64)
        {
          v4 = *MEMORY[0x1E695E480];
          v5 = @"com.apple.private.handoff.pong";
          goto LABEL_27;
        }

        if (v3 == 128)
        {
          v4 = *MEMORY[0x1E695E480];
          v5 = @"com.apple.private.handoff.ping";
LABEL_27:

          return CFStringCreateCopy(v4, v5);
        }
      }

      return 0;
    }

    v6 = "pv-";
  }

  return createDatabaseStringFromHashedBytes(v6, a1);
}

CFStringRef createDatabaseStringFromHashedBytes(const char *a1, CFDataRef theData)
{
  if (CFDataGetLength(theData) < 7)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&__dst, v5, v6);
  }

  v9 = 0;
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  do
  {
    std::string::push_back(&__dst, a0123456789abcd[BytePtr[v9] >> 4]);
    std::string::push_back(&__dst, a0123456789abcd[BytePtr[v9++] & 0xF]);
  }

  while (v9 != 7);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v8 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], p_dst, size, 0x8000100u, 0);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_18174017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef _LSCreateHashedBytesForAdvertisingFromString(uint64_t a1, CFStringRef theString)
{
  Copy = theString;
  v21 = *MEMORY[0x1E69E9840];
  if (a1 == 2 && theString)
  {
    v4 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    System = CFLocaleGetSystem();
    CFStringLowercase(MutableCopy, System);
    Copy = CFStringCreateCopy(v4, MutableCopy);
    CFRelease(MutableCopy);
    if (!Copy)
    {
      goto LABEL_17;
    }

LABEL_7:
    if (!CFStringGetCString(Copy, buffer, 1024, 0x8000100u) || (v7 = strlen(buffer), v7 - 1 > 0x7FFFFFFD))
    {
      v12 = 0;
LABEL_39:
      CFRelease(Copy);
      goto LABEL_40;
    }

    memset(v19, 0, sizeof(v19));
    CC_SHA512(buffer, v7, v19);
    for (i = 7; i != 64; ++i)
    {
      v9 = (v19 | (i - 7 * ((((i - ((37 * i) >> 8)) >> 1) + ((37 * i) >> 8)) >> 2)));
      *v9 ^= *(v19 + i);
    }

    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          *(v19 + 3) = 0;
          LODWORD(v19[0]) = 0;
          if (CFEqual(Copy, @"com.apple.Siri"))
          {
            v16 = 2;
          }

          else if (CFEqual(Copy, @"com.apple.NowPlaying"))
          {
            v16 = 1;
          }

          else if (CFEqual(Copy, @"com.apple.fetchsamplepayload"))
          {
            v16 = -1;
          }

          else
          {
            v16 = 0;
          }

          BYTE6(v19[0]) = v16;
          break;
        case 4:
          LOBYTE(v19[0]) |= 0xC0u;
          break;
        case 5:
          *(v19 + 3) = 0;
          LODWORD(v19[0]) = 0;
          v13 = rand();
          BYTE6(v19[0]) = v13 + v13 / 255;
          if (CFEqual(Copy, @"com.apple.private.handoff.ping"))
          {
            v14 = BYTE5(v19[0]);
            v15 = 0x80;
          }

          else
          {
            if (!CFEqual(Copy, @"com.apple.private.handoff.pong"))
            {
              break;
            }

            v14 = BYTE5(v19[0]);
            v15 = 64;
          }

          BYTE5(v19[0]) = v15 & 0xC0 | v14 & 0x3F;
          break;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        v10 = v19[0];
        v11 = 0x80;
        goto LABEL_27;
      }

      if (a1 == 2)
      {
        v10 = v19[0];
        v11 = 64;
LABEL_27:
        LOBYTE(v19[0]) = v11 & 0xC0 | v10 & 0x3F;
      }
    }

    else
    {
      *(v19 + 3) = 0;
      LODWORD(v19[0]) = 0;
    }

    v12 = CFDataCreate(*MEMORY[0x1E695E480], v19, 7);
    goto LABEL_39;
  }

  if (theString)
  {
    CFRetain(theString);
    goto LABEL_7;
  }

LABEL_17:
  v12 = 0;
LABEL_40:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _LSCompareHashedBytesFromAdvertisingStrings(CFDataRef theData, const __CFData *a2)
{
  result = -1;
  if (theData && a2)
  {
    if (CFDataGetLength(theData) < 7 || CFDataGetLength(a2) < 7)
    {
      return -1;
    }

    else
    {
      BytePtr = CFDataGetBytePtr(theData);
      v6 = CFDataGetBytePtr(a2);
      v7 = bswap32(*BytePtr);
      v8 = bswap32(*v6);
      if (v7 == v8 && (v7 = bswap32(*(BytePtr + 3)), v8 = bswap32(*(v6 + 3)), v7 == v8))
      {
        return 0;
      }

      else if (v7 < v8)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

CFStringRef _LSCopyAdvertisementStringForTeamIdentifierAndActivityType(const __CFAllocator *a1, __CFString *a2, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  v9.length = CFStringGetLength(theString);
  v9.location = 0;
  if (!CFStringFindWithOptions(theString, @".", v9, 0, 0) && (CFStringHasPrefix(theString, @"NS") || CFStringHasPrefix(theString, @"IN") || CFEqual(theString, @"TVUserActivityTypeBrowsingChannelGuide")))
  {

    return CFRetain(theString);
  }

  else
  {
    v6 = &stru_1EEF65710;
    if (a2)
    {
      if (!CFEqual(a2, @"0000000000"))
      {
        v6 = a2;
      }
    }

    return CFStringCreateWithFormat(a1, 0, @"%@:%@", v6, theString);
  }
}

uint64_t _LSCopyClaimedActivityIdentifiersAndDomains(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = -10810;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (_LSCurrentProcessMayMapDatabase())
  {
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v4 = +[_LSDServiceDomain defaultServiceDomain];
    v5 = LaunchServices::Database::Context::_get(&v35, v4, 0);

    if (v5)
    {
      v6 = *MEMORY[0x1E695E480];
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
      v44[3] = Mutable;
      v8 = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
      v40[3] = v8;
      if (v44[3] && v8)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = ___LSCopyClaimedActivityIdentifiersAndDomains_block_invoke;
        v34[3] = &unk_1E6A1CE50;
        v34[4] = &v43;
        v34[5] = &v39;
        v34[6] = v5;
        _LSEnumerateViableBundlesOfClass(v5, 2, v34);
        v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        if (v9)
        {
          for (i = 0; i != 4; ++i)
          {
            v11 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType(v6, 0, off_1E6A1CE98[i]);
            if (v11)
            {
              CFArrayAppendValue(v9, v11);
              CFRelease(v11);
            }
          }

          Copy = CFArrayCreateCopy(v6, v9);
          CFRelease(v9);
        }

        else
        {
          Copy = 0;
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = Copy;
        v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v30 objects:v51 count:16];
        if (v16)
        {
          v17 = *v31;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v15);
              }

              CFSetAddValue(v44[3], *(*(&v30 + 1) + 8 * j));
            }

            v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v30 objects:v51 count:16];
          }

          while (v16);
        }
      }

      else
      {
        *(v48 + 6) = -41;
      }
    }

    if (v35 && v37 == 1)
    {
      _LSContextDestroy(v35);
    }

    v19 = v36;
    v35 = 0;
    v36 = 0;

    v37 = 0;
    v20 = v38;
    v38 = 0;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___LSCopyClaimedActivityIdentifiersAndDomains_block_invoke_2;
    v29[3] = &unk_1E6A18DF0;
    v29[4] = &v47;
    v14 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v29];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___LSCopyClaimedActivityIdentifiersAndDomains_block_invoke_3;
    v28[3] = &unk_1E6A1CE78;
    v28[4] = &v43;
    v28[5] = &v39;
    v28[6] = &v47;
    [v14 getAllUserActivityTypesAndDomainNamesWithCompletionHandler:v28];

    objc_autoreleasePoolPop(v13);
  }

  if (!*(v48 + 6))
  {
    if (a1)
    {
      v21 = v44[3];
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      *a1 = v21;
    }

    if (a2)
    {
      v22 = v40[3];
      if (v22)
      {
        v22 = CFRetain(v22);
      }

      *a2 = v22;
    }
  }

  v23 = v44[3];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = v40[3];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(v48 + 6);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}