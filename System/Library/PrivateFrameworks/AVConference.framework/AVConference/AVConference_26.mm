uint64_t _VCVideoStreamSendGroup_DidTimestampRollBackward(uint64_t a1, double a2)
{
  pthread_rwlock_rdlock((a1 + 504));
  if (*(a1 + 720) == 1)
  {
    v4 = *(a1 + 704);
    v6 = v4 >= a2;
    v5 = v4 - a2;
    v6 = v6 || v5 >= 0x7FFFFFFF;
    v7 = !v6;
  }

  else
  {
    v7 = 0;
  }

  pthread_rwlock_unlock((a1 + 504));
  return v7;
}

void VCNAT64ResolverCleanup()
{
  v8 = *MEMORY[0x1E69E9840];
  if (sharedResolver && !CFDictionaryGetCount(*sharedResolver))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v0 = VRTraceErrorLogLevelToCSTR();
      v1 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315650;
        v3 = v0;
        v4 = 2080;
        v5 = "VCNAT64ResolverCleanup";
        v6 = 1024;
        v7 = 91;
        _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverCleanup: no more registered callbackContexts left. Destroying NAT64Resolver", &v2, 0x1Cu);
      }
    }

    dispatch_release(*(sharedResolver + 8));
    dispatch_release(*(sharedResolver + 16));
    CFRelease(*sharedResolver);
    free(sharedResolver);
    sharedResolver = 0;
  }
}

void VCNAT64ReleaseCallBackContext(CFArrayRef *a1)
{
  if (a1)
  {
    if (a1[4])
    {
      v2 = *a1;
      if (*a1)
      {
        Count = CFArrayGetCount(v2);
        v4 = (Count - 1);
        if (Count - 1 >= 0)
        {
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*a1, v4);
            free(ValueAtIndex);
            CFArrayRemoveValueAtIndex(*a1, v4--);
          }

          while (v4 != -1);
        }

        CFRelease(*a1);
      }

      v6 = a1[3];
      if (v6)
      {
        free(v6);
      }

      free(a1);
    }

    else
    {
      *(a1 + 33) = 1;
    }
  }
}

uint64_t VCNAT64ResolverRegisterForPrefixUpdate(const char *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v28 = v6;
      v29 = 2080;
      v30 = "VCNAT64ResolverRegisterForPrefixUpdate";
      v31 = 1024;
      v32 = 241;
      v33 = 1024;
      v34 = a3;
      v35 = 2080;
      v36 = a1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: begin registration of context %08X on interface %s", buf, 0x2Cu);
    }
  }

  pthread_mutex_lock(&sharedInstanceLock);
  v8 = CFStringCreateWithFormat(0, 0, @"%s", a1);
  SharedInstance = VCNAT64ResolverGetSharedInstance();
  if (!SharedInstance)
  {
    VCNAT64ResolverRegisterForPrefixUpdate_cold_5();
LABEL_23:
    v25 = *buf;
LABEL_32:
    if (v8)
    {
      CFRelease(v8);
    }

    VCNAT64ResolverCleanup();
    pthread_mutex_unlock(&sharedInstanceLock);
    return v25;
  }

  v10 = *SharedInstance;
  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
  if (!v11)
  {
    VCNAT64ResolverRegisterForPrefixUpdate_cold_4();
    goto LABEL_23;
  }

  v12 = v11;
  *v11 = a2;
  v11[1] = a3;
  if (!CFDictionaryContainsKey(v10, v8))
  {
    v17 = malloc_type_calloc(1uLL, 0x28uLL, 0x1030040BF05D1CBuLL);
    if (v17)
    {
      Value = v17;
      v18 = strdup(a1);
      *(Value + 3) = v18;
      if (v18)
      {
        Mutable = CFArrayCreateMutable(0, 1, 0);
        *Value = Mutable;
        if (Mutable)
        {
          v20 = if_nametoindex(a1);
          v21 = *(sharedResolver + 8);
          dispatch_retain(v21);
          v22 = *(sharedResolver + 16);
          dispatch_retain(v22);
          VCNAT64ResolveNAT64Prefix(v20, Value, v21, v22);
          CFDictionaryAddValue(v10, v8, Value);
          goto LABEL_16;
        }

        VCNAT64ResolverRegisterForPrefixUpdate_cold_1();
      }

      else
      {
        VCNAT64ResolverRegisterForPrefixUpdate_cold_2();
      }

      Value[32] = 1;
      VCNAT64ReleaseCallBackContext(Value);
      v25 = 3;
    }

    else
    {
      VCNAT64ResolverRegisterForPrefixUpdate_cold_3();
      v25 = *buf;
    }

LABEL_31:
    free(v12);
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(v10, v8);
  if ((VCNAT64ResolverGetListenerIndexForContext(*Value, a3) & 0x80000000) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v28 = v14;
          v29 = 2080;
          v30 = "VCNAT64ResolverRegisterForPrefixUpdate";
          v31 = 1024;
          v32 = 290;
          v33 = 1024;
          v34 = a3;
          v35 = 2080;
          v36 = a1;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: context %08X has already been registered for interface %s", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v28 = v14;
        v29 = 2080;
        v30 = "VCNAT64ResolverRegisterForPrefixUpdate";
        v31 = 1024;
        v32 = 290;
        v33 = 1024;
        v34 = a3;
        v35 = 2080;
        v36 = a1;
        _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: context %08X has already been registered for interface %s", buf, 0x2Cu);
      }
    }

    v25 = 49;
    goto LABEL_31;
  }

LABEL_16:
  CFArrayAppendValue(*Value, v12);
  pthread_mutex_unlock(&sharedInstanceLock);
  CFRelease(v8);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v28 = v23;
      v29 = 2080;
      v30 = "VCNAT64ResolverRegisterForPrefixUpdate";
      v31 = 1024;
      v32 = 300;
      v33 = 1024;
      v34 = a3;
      v35 = 2080;
      v36 = a1;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverRegisterForPrefixUpdate: successfully registered context %08X on interface %s", buf, 0x2Cu);
    }
  }

  return 0;
}

uint64_t VCNAT64ResolverGetSharedInstance()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = sharedResolver;
  if (!sharedResolver)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v1 = VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 136315650;
        *&v9[4] = v1;
        v10 = 2080;
        v11 = "VCNAT64ResolverGetSharedInstance";
        v12 = 1024;
        v13 = 56;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverGetSharedInstance: shared instance of NAT64Resolver does not exist. Creating it...", v9, 0x1Cu);
      }
    }

    v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
    if (!v3)
    {
      VCNAT64ResolverGetSharedInstance_cold_4(v9);
      return *v9;
    }

    v0 = v3;
    Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E528], 0);
    *v0 = Mutable;
    if (Mutable)
    {
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      v6 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCNAT64Resolver.dnsCallbackQueue", 0, CustomRootQueue);
      *(v0 + 8) = v6;
      if (v6)
      {
        v7 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCNAT64Resolver.dnsRetryQueue", 0, CustomRootQueue);
        *(v0 + 16) = v7;
        if (v7)
        {
          sharedResolver = v0;
          return v0;
        }

        VCNAT64ResolverGetSharedInstance_cold_1();
      }

      else
      {
        VCNAT64ResolverGetSharedInstance_cold_2();
      }
    }

    else
    {
      VCNAT64ResolverGetSharedInstance_cold_3();
    }

    if (*v0)
    {
      CFRelease(*v0);
    }

    free(v0);
    return 0;
  }

  return v0;
}

void VCNAT64ResolveNAT64Prefix(uint64_t a1, uint64_t a2, NSObject *a3, NSObject *a4)
{
  if (a2)
  {
    nw_nat64_copy_prefixes_async();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCNAT64ResolveNAT64Prefix_cold_1(v6);
      }
    }

    dispatch_release(a3);
    dispatch_release(a4);
  }
}

uint64_t VCNAT64ResolverGetListenerIndexForContext(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  v5 = (Count - 1);
  if (Count - 1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (ValueAtIndex)
    {
      if (ValueAtIndex[1] == a2)
      {
        break;
      }
    }

    if (v5-- < 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t VCNAT64ResolverDeregisterAll(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&sharedInstanceLock);
  SharedInstance = VCNAT64ResolverGetSharedInstance();
  if (SharedInstance)
  {
    Copy = CFDictionaryCreateCopy(0, *SharedInstance);
    CFDictionaryApplyFunction(Copy, VCNAT64ResolverDeregisterFromInterface, a1);
    CFRelease(Copy);
    pthread_mutex_unlock(&sharedInstanceLock);
    return 0;
  }

  else
  {
    pthread_mutex_unlock(&sharedInstanceLock);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v5;
        v9 = 2080;
        v10 = "VCNAT64ResolverDeregisterAll";
        v11 = 1024;
        v12 = 328;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverDeregisterAll: nothing to deregister", &v7, 0x1Cu);
      }
    }

    return 3;
  }
}

void VCNAT64ResolverDeregisterFromInterface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *sharedResolver;
  v6 = *a2;
  ListenerIndexForContext = VCNAT64ResolverGetListenerIndexForContext(*a2, a3);
  if ((ListenerIndexForContext & 0x80000000) == 0)
  {
    v8 = ListenerIndexForContext;
    v9 = ListenerIndexForContext;
    ValueAtIndex = CFArrayGetValueAtIndex(v6, ListenerIndexForContext);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      if (*(ValueAtIndex + 1) == a3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a2 + 24);
            *buf = 136316418;
            v20 = v12;
            v21 = 2080;
            v22 = "VCNAT64ResolverDeregisterFromInterface";
            v23 = 1024;
            v24 = 152;
            v25 = 1024;
            *v26 = a3;
            *&v26[4] = 2080;
            *&v26[6] = v14;
            v27 = 1024;
            v28 = v8;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverDeregisterFromInterface: removing context %08x from interface %s at index %d", buf, 0x32u);
          }
        }

        CFArrayRemoveValueAtIndex(v6, v9);
        free(v11);
      }
    }
  }

  if (!CFArrayGetCount(v6))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a2 + 24);
        *buf = 136315906;
        v20 = v15;
        v21 = 2080;
        v22 = "VCNAT64ResolverDeregisterFromInterface";
        v23 = 1024;
        v24 = 159;
        v25 = 2080;
        *v26 = v17;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolverDeregisterFromInterface: removing interface %s as it has no listeners", buf, 0x26u);
      }
    }

    v18 = CFStringCreateWithFormat(0, 0, @"%s", *(a2 + 24));
    CFDictionaryRemoveValue(v5, v18);
    CFRelease(v18);
    VCNAT64ReleaseCallBackContext(a2);
    VCNAT64ResolverCleanup();
  }
}

uint64_t VCNAT64ResolverGetPrefix(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  pthread_mutex_lock(&sharedInstanceLock);
  SharedInstance = VCNAT64ResolverGetSharedInstance();
  if (!SharedInstance)
  {
    VCNAT64ResolverGetPrefix_cold_2();
LABEL_7:
    v8 = v10;
    goto LABEL_4;
  }

  v5 = SharedInstance;
  v6 = CFStringCreateWithFormat(0, 0, @"%s", a1);
  Value = CFDictionaryGetValue(*v5, v6);
  CFRelease(v6);
  if (!Value)
  {
    VCNAT64ResolverGetPrefix_cold_1(a1, &v10);
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = *(Value + 8);
LABEL_4:
  VCNAT64ResolverCleanup();
  pthread_mutex_unlock(&sharedInstanceLock);
  return v8;
}

_DWORD *VCNAT64ResolverIsNonzeroPrefix(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

BOOL VCNAT64ResolverIsBehindNat64(uint64_t a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  if (VCNAT64ResolverGetPrefix(a1, v3))
  {
    v1 = 1;
  }

  else
  {
    v1 = LODWORD(v3[0]) == 0;
  }

  return !v1;
}

void __VCNAT64ResolveNAT64Prefix_block_invoke(uint64_t a1, int a2, __int128 *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&sharedInstanceLock);
  v6 = *(a1 + 32);
  *(v6 + 32) = 1;
  if (*(v6 + 33) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 24);
        *buf = 136315906;
        v37 = v7;
        v38 = 2080;
        v39 = "VCNAT64ResolveNAT64Prefix_block_invoke";
        v40 = 1024;
        v41 = 188;
        v42 = 2080;
        v43 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolveNAT64Prefix: DNS callback context has already been released for nterface %s", buf, 0x26u);
      }
    }

    VCNAT64ReleaseCallBackContext(*(a1 + 32));
    pthread_mutex_unlock(&sharedInstanceLock);
    dispatch_release(*(a1 + 40));
    dispatch_release(*(a1 + 48));
    return;
  }

  if (a2 <= 0)
  {
    if (a2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __VCNAT64ResolveNAT64Prefix_block_invoke_cold_1(v18, a2, v19);
        }
      }
    }

    else
    {
      v20 = *(v6 + 36);
      *(v6 + 36) = v20 + 1;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v20 < 3)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 32);
            v28 = *(v27 + 24);
            LODWORD(v27) = *(v27 + 36);
            *buf = 136316418;
            v37 = v25;
            v38 = 2080;
            v39 = "VCNAT64ResolveNAT64Prefix_block_invoke";
            v40 = 1024;
            v41 = 201;
            v42 = 2080;
            v43 = v28;
            v44 = 1024;
            v45 = v27;
            v46 = 1024;
            v47 = 3;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolveNAT64Prefix: Re-trying in 1 second for Interface %s, attempt %d out of %d", buf, 0x32u);
          }
        }

        *(*(a1 + 32) + 32) = 0;
        v29 = dispatch_time(0, 1000000000);
        v30 = *(a1 + 48);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 0x40000000;
        v31[2] = __VCNAT64ResolveNAT64Prefix_block_invoke_4;
        v31[3] = &__block_descriptor_tmp_18;
        v34 = *(a1 + 56);
        v32 = *(a1 + 32);
        v33 = v30;
        dispatch_after(v29, v30, v31);
        goto LABEL_25;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(*(a1 + 32) + 24);
          *buf = 136315906;
          v37 = v22;
          v38 = 2080;
          v39 = "VCNAT64ResolveNAT64Prefix_block_invoke";
          v40 = 1024;
          v41 = 199;
          v42 = 2080;
          v43 = v24;
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolveNAT64Prefix: Interface %s IS NOT behind NAT 64", buf, 0x26u);
        }
      }
    }

    dispatch_release(*(a1 + 40));
    dispatch_release(*(a1 + 48));
LABEL_25:
    pthread_mutex_unlock(&sharedInstanceLock);
    return;
  }

  v35 = *a3;
  *(v6 + 8) = v35;
  v10 = **(a1 + 32);
  Count = CFArrayGetCount(v10);
  v12 = (Count - 1);
  if (Count - 1 >= 0)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
      if (ValueAtIndex && *ValueAtIndex)
      {
        (*ValueAtIndex)(ValueAtIndex[1], *(*(a1 + 32) + 24), &v35);
      }
    }

    while (v12-- > 0);
  }

  dispatch_release(*(a1 + 40));
  dispatch_release(*(a1 + 48));
  pthread_mutex_unlock(&sharedInstanceLock);
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 32) + 24);
      *buf = 136315906;
      v37 = v15;
      v38 = 2080;
      v39 = "VCNAT64ResolveNAT64Prefix_block_invoke";
      v40 = 1024;
      v41 = 234;
      v42 = 2080;
      v43 = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNAT64ResolveNAT64Prefix: Interface %s IS behind NAT 64", buf, 0x26u);
    }
  }
}

__n128 VCSDInfoConstructWithIPPorts@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 112) = 0;
  result.n128_u64[0] = 0;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  if (a1)
  {
    if (a2)
    {
      *a5 = 1;
      v6 = *(a1 + 16);
      *(a5 + 8) = *a1;
      *(a5 + 24) = v6;
      *(a5 + 40) = *(a1 + 32);
      result = *a2;
      v7 = *(a2 + 16);
      *(a5 + 48) = *a2;
      *(a5 + 64) = v7;
      *(a5 + 80) = *(a2 + 32);
      *(a5 + 88) = a3;
      *(a5 + 90) = a4;
    }
  }

  return result;
}

uint64_t VCSDInfoConstructWithDatagramChannel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 4;
  *(a5 + 112) = a1;
  *(a5 + 96) = a4;
  *(a5 + 12) = a2;
  *(a5 + 20) = a3;
  result = VCDatagramChannelIDS_Token(a1);
  *(a5 + 8) = result;
  return result;
}

double VCSDInfoConstructWithNWConnection@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *a2 = 5;
  *(a2 + 8) = a1;
  return result;
}

uint64_t VCSDInfoConstructWithDatagramChannelMultiLink@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *a2 = 6;
  result = VCDatagramChannelMultiLink_Token(a1);
  *(a2 + 8) = result;
  *(a2 + 112) = a1;
  return result;
}

void VCSDInfoConstructWithSocket(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a3 + 112) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *&v24.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v24.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v15 = 16;
  if (getpeername(a1, &v24, &v15) != -1)
  {
    *a3 = 3;
    sa_family = v24.sa_family;
    *(a3 + 8) = a1;
    *(a3 + 12) = sa_family;
    SAToIPPORT();
    v7 = *(a3 + 12);
    goto LABEL_8;
  }

  if (a2)
  {
    *a3 = 2;
    if (*a2)
    {
      v7 = 30;
    }

    else
    {
      v7 = 2;
    }

    *(a3 + 8) = a1;
    *(a3 + 12) = v7;
    v8 = *(a2 + 16);
    *(a3 + 16) = *a2;
    *(a3 + 32) = v8;
    *(a3 + 48) = *(a2 + 32);
LABEL_8:
    if (v7 == 30)
    {
      v13 = 4;
      v14 = 0;
      if (!getsockopt(a1, 41, 36, &v14, &v13))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v17 = v9;
            v18 = 2080;
            v19 = "VCSDInfoConstructWithSocket";
            v20 = 1024;
            v21 = 95;
            v22 = 1024;
            v23 = v14;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Get ipv6 tclass socket option for DSCP value=%d", buf, 0x22u);
          }
        }

        *(a3 + 56) = v14;
      }
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCSDInfoConstructWithSocket_cold_1(v11, a1, v12);
    }
  }
}

BOOL VCSDInfoIsPacketFromKnownRemote(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v40 = 136316162;
      v41 = v6;
      v42 = 2080;
      v43 = "VCSDInfoIsPacketFromKnownRemote";
      v44 = 1024;
      v45 = 185;
      v46 = 1024;
      *v47 = a1 == 0;
      *&v47[4] = 1024;
      *&v47[6] = a2 == 0;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameters! cachedSrcDstInfo isValid:%d, packetSrcDstInfo isValid:%d!", &v40, 0x28u);
    }

    return 0;
  }

  v4 = *a2;
  if (*a2 > 3)
  {
    if (v4 != 4)
    {
      if (v4 == 5)
      {
        v22 = *(a2 + 8);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          v25 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *a1;
              v40 = 136316162;
              v41 = v23;
              v42 = 2080;
              v43 = "VCSDInfoIsSrcDstInfoMatchedWithNWConnection";
              v44 = 1024;
              v45 = 141;
              v46 = 2048;
              *v47 = v22;
              *&v47[8] = 1024;
              LODWORD(v48) = v26;
              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d matching NW %p to srcDstInfo mode %d", &v40, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v38 = *a1;
            v40 = 136316162;
            v41 = v23;
            v42 = 2080;
            v43 = "VCSDInfoIsSrcDstInfoMatchedWithNWConnection";
            v44 = 1024;
            v45 = 141;
            v46 = 2048;
            *v47 = v22;
            *&v47[8] = 1024;
            LODWORD(v48) = v38;
            _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, " [%s] %s:%d matching NW %p to srcDstInfo mode %d", &v40, 0x2Cu);
          }
        }

        v30 = *a1;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v30 == 5)
        {
          if (ErrorLogLevelForModule >= 8)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *MEMORY[0x1E6986650];
            v34 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(a1 + 8);
                v40 = 136316162;
                v41 = v32;
                v42 = 2080;
                v43 = "VCSDInfoIsSrcDstInfoMatchedWithNWConnection";
                v44 = 1024;
                v45 = 144;
                v46 = 2048;
                *v47 = v22;
                *&v47[8] = 2048;
                v48 = v35;
                _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d matching NW %p to srcDstInfo conn %p", &v40, 0x30u);
              }
            }

            else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(a1 + 8);
              v40 = 136316162;
              v41 = v32;
              v42 = 2080;
              v43 = "VCSDInfoIsSrcDstInfoMatchedWithNWConnection";
              v44 = 1024;
              v45 = 144;
              v46 = 2048;
              *v47 = v22;
              *&v47[8] = 2048;
              v48 = v39;
              _os_log_debug_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEBUG, " [%s] %s:%d matching NW %p to srcDstInfo conn %p", &v40, 0x30u);
            }
          }

          if (*(a1 + 8) == v22)
          {
            return 1;
          }
        }

        else if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCSDInfoIsPacketFromKnownRemote_cold_1();
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *MEMORY[0x1E6986650];
          result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v40 = 136315650;
          v41 = v36;
          v42 = 2080;
          v43 = "VCSDInfoIsSrcDstInfoMatchedWithNWConnection";
          v44 = 1024;
          v45 = 150;
          v14 = " [%s] %s:%d NW Connection mismatch!";
          v15 = v37;
          v16 = 28;
          goto LABEL_57;
        }

        return 0;
      }

      if (v4 != 6)
      {
        goto LABEL_19;
      }
    }

    v9 = *(a2 + 112);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = VCDatagramChannelMultiLink_Token(v9);
    }

    else
    {
      v10 = VCDatagramChannelIDS_Token(v9);
    }

    v17 = v10;
    if (*a1 == 6)
    {
      v27 = VCDatagramChannelMultiLink_Token(*(a1 + 112));
      if (v27 != v17)
      {
        v28 = v27;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return 0;
        }

        v29 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v40 = 136316162;
        v41 = v29;
        v42 = 2080;
        v43 = "VCSDInfoIsSrcDstInfoMatchedWithChannelToken";
        v44 = 1024;
        v45 = 174;
        v46 = 1024;
        *v47 = v28;
        *&v47[4] = 1024;
        *&v47[6] = v17;
        v14 = " [%s] %s:%d ChannelToken mismatch! expected %d actual %d";
        goto LABEL_37;
      }
    }

    else
    {
      if (*a1 != 4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          VCSDInfoIsPacketFromKnownRemote_cold_2();
        }

        return 0;
      }

      v18 = VCDatagramChannelIDS_Token(*(a1 + 112));
      if (v18 != v17)
      {
        v19 = v18;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return 0;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v40 = 136316162;
        v41 = v20;
        v42 = 2080;
        v43 = "VCSDInfoIsSrcDstInfoMatchedWithChannelToken";
        v44 = 1024;
        v45 = 167;
        v46 = 1024;
        *v47 = v19;
        *&v47[4] = 1024;
        *&v47[6] = v17;
        v14 = " [%s] %s:%d ChannelToken mismatch! expected %d actual %d";
LABEL_37:
        v15 = v21;
        v16 = 40;
LABEL_57:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v40, v16);
        return 0;
      }
    }

    return 1;
  }

  if ((v4 - 2) >= 2)
  {
    if (v4 == 1)
    {
      v5 = a2 + 48;
      goto LABEL_16;
    }

LABEL_19:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v13 = *a2;
      v40 = 136315906;
      v41 = v11;
      v42 = 2080;
      v43 = "VCSDInfoIsPacketFromKnownRemote";
      v44 = 1024;
      v45 = 208;
      v46 = 1024;
      *v47 = v13;
      v14 = " [%s] %s:%d invalid packet srcDstInfo mode %d";
      v15 = v12;
      v16 = 34;
      goto LABEL_57;
    }

    return 0;
  }

  v5 = a2 + 16;
LABEL_16:

  return VCSDInfoIsSrcDstInfoMatchedWithIP(a1, v5);
}

BOOL VCSDInfoIsSrcDstInfoMatchedWithIP(int *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCSDInfoIsSrcDstInfoMatchedWithIP_cold_2(v4, v5);
    }

    return 0;
  }

  v2 = *a1;
  if (*a1 == 3)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if ((a1[4] & 1) == (*a2 & 1))
    {
      if ((a1[4] & 1) == 0)
      {
        v3 = a1[9];
LABEL_14:
        if (v3 == *(a2 + 20))
        {
          return 1;
        }

        goto LABEL_25;
      }

      v7 = *(a1 + 9);
      v8 = *(a2 + 20);
      v9 = *(a1 + 11);
      goto LABEL_21;
    }

LABEL_25:
    *&v29[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v11;
    *v29 = v11;
    v27 = v11;
    *&v26[14] = 0xAAAAAAAAAAAAAAAALL;
    v25 = v11;
    *v26 = v11;
    v24 = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v12;
        v16 = 2080;
        v17 = "VCSDInfoIsSrcDstInfoMatchedWithIP";
        v18 = 1024;
        v19 = 129;
        v20 = 2080;
        v21 = IPPORTToStringWithSize();
        v22 = 2080;
        v23 = IPPORTToStringWithSize();
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IPPort mismatch! expected %s actual %s", &v14, 0x30u);
      }
    }

    return 0;
  }

  if (v2 == 1)
  {
    if ((a1[12] & 1) == (*a2 & 1))
    {
      if ((a1[12] & 1) == 0)
      {
        v3 = a1[17];
        goto LABEL_14;
      }

      v7 = *(a1 + 17);
      v8 = *(a2 + 20);
      v9 = *(a1 + 19);
LABEL_21:
      if (v7 == v8 && v9 == *(a2 + 28))
      {
        return 1;
      }

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCSDInfoIsSrcDstInfoMatchedWithIP_cold_1();
  }

  return 0;
}

char *VCSDInfoToStringRepresentation(uint64_t a1, char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    if (*a1 > 3)
    {
      switch(v5)
      {
        case 4:
          VCDatagramChannelIDS_Token(*(a1 + 112));
          sprintf(a2, "VCSourceDestinationInfo IDSLink mode with datagramChannel:%p datagramToken: %d linkID: %d");
          return a2;
        case 5:
          sprintf(a2, "VCSourceDestinationInfo NW mode with conn: %p");
          return a2;
        case 6:
          v6 = *(a1 + 112);
          VCDatagramChannelMultiLink_Token(v6);
          [v6 connectionsCount];
          sprintf(a2, "VCSourceDestinationInfo NWMultiLink mode with datagramChannel=%p datagramToken=%d connection count=%lu");
          return a2;
      }
    }

    else
    {
      switch(v5)
      {
        case 1:
          IPPORTToStringWithSize();
          IPPORTToStringWithSize();
          sprintf(a2, "VCSourceDestinationInfo IPPort mode with IP port: %s-%s isRelay %d, relayChannelNumber %d");
          return a2;
        case 2:
          IPPORTToStringWithSize();
          sprintf(a2, "VCSourceDestinationInfo BoundSocket mode with socket: %d destination: %s");
          return a2;
        case 3:
          sprintf(a2, "VCSourceDestinationInfo ConnectedSocket mode with socket: %d");
          return a2;
      }
    }

    sprintf(a2, "Unrecogized VCSourceDestinationInfoMode %d");
    return a2;
  }

  return result;
}

uint64_t VCTestMonitorManager_GetEnableLoopbackInterface()
{
  v0 = +[VCTestMonitorManager sharedManager];

  return [v0 enableLoopbackInterface];
}

uint64_t VCTestMonitorManager_GetForcedTargetBitrate()
{
  v0 = +[VCTestMonitorManager sharedManager];

  return [v0 forcedTargetBitrate];
}

uint64_t VCTestMonitorManager_GetForcedCapBitrate()
{
  v0 = +[VCTestMonitorManager sharedManager];

  return [v0 forcedCapBitrate];
}

uint64_t VCTestMonitorManager_GetEnableAudioPowerSpectrumReport()
{
  v0 = +[VCTestMonitorManager sharedManager];

  return [v0 enableAudioPowerSpectrumReport];
}

void VCCaptionsReceiver_ProcessCaptionsData(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (!a1)
  {
    VCCaptionsReceiver_ProcessCaptionsData_cold_2();
    return;
  }

  v3 = VCCaptionsDecoder_Decode(*(a1 + 32), [a2 bytes], objc_msgSend(a2, "length"), &v11);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v11 == 0;
  }

  if (v4)
  {
    VCCaptionsReceiver_ProcessCaptionsData_cold_1(v3);
    return;
  }

  v5 = [v11 isLocal];
  [v11 setIsLocal:v5 ^ 1u];
  v6 = *(a1 + 8);
  if (v6 <= [v11 utteranceNumber])
  {
    v7 = *(a1 + 8);
    if (v7 >= [v11 utteranceNumber])
    {
      v9 = *(a1 + 12);
      if (v9 > [v11 updateNumber])
      {
        return;
      }
    }

    else
    {
      *(a1 + 8) = [v11 utteranceNumber];
      v8 = *(a1 + 24);
      if (v8)
      {
        [v8 setIsFinal:1];
        [*(a1 + 16) didReceiveCaptions:*(a1 + 24)];
      }
    }

    *(a1 + 12) = [v11 updateNumber];
    [*(a1 + 16) didReceiveCaptions:v11];
    if ([v11 isFinal])
    {
      v10 = 0;
    }

    else
    {
      v10 = v11;
    }

    *(a1 + 24) = v10;
  }
}

CVPixelBufferRef VCImageRotationConverterBase_CreateRotatedPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (!pixelBuffer)
  {
    VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_6();
    return pixelBufferOut;
  }

  if (!a1)
  {
    VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_5();
    return pixelBufferOut;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v8 = Height;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = Height;
  }

  else
  {
    v10 = Width;
  }

  if (v9)
  {
    v11 = Width;
  }

  else
  {
    v11 = Height;
  }

  [a1 ensureBufferPoolSupportsOutputWidth:v10 outputHeight:v11];
  v12 = *(a1 + 8);
  if (!v12)
  {
    VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_4();
    return pixelBufferOut;
  }

  if (!*(a1 + 48))
  {
    VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_3();
    return pixelBufferOut;
  }

  v13 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v12, &pixelBufferOut);
  if (v13)
  {
    VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_1(v13);
    return pixelBufferOut;
  }

  v14 = MEMORY[0x1E695E4C0];
  if (a3)
  {
    v14 = MEMORY[0x1E695E4D0];
  }

  MEMORY[0x1E128B1B0](*(a1 + 48), *MEMORY[0x1E6983D00], *v14);
  v15 = MEMORY[0x1E128B1C0](*(a1 + 48), pixelBuffer, pixelBufferOut);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v15)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v38 = CVPixelBufferGetWidth(pixelBufferOut);
        v39 = CVPixelBufferGetHeight(pixelBufferOut);
        *buf = 136316930;
        v43 = v36;
        v44 = 2080;
        v45 = "VCImageRotationConverterBase_CreateRotatedPixelBuffer";
        v46 = 1024;
        v47 = 63;
        v48 = 1024;
        *v49 = v15;
        *&v49[4] = 2048;
        *&v49[6] = Width;
        *&v49[14] = 2048;
        *&v49[16] = v8;
        *&v49[24] = 2048;
        *&v49[26] = v38;
        *&v49[34] = 2048;
        *&v49[36] = v39;
        _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, " [%s] %s:%d Rotation session error %d. input size (%ldx%ld) output size (%ldx%ld)", buf, 0x4Au);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = pixelBufferOut;
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
          v22 = FourccToCStr(PixelFormatType);
          v23 = CVPixelBufferGetWidth(pixelBufferOut);
          v24 = CVPixelBufferGetHeight(pixelBufferOut);
          *buf = 136316930;
          v43 = v17;
          v44 = 2080;
          v45 = "VCImageRotationConverterBase_CreateRotatedPixelBuffer";
          v46 = 1024;
          v47 = 64;
          v48 = 2048;
          *v49 = a1;
          *&v49[8] = 2048;
          *&v49[10] = v20;
          *&v49[18] = 2080;
          *&v49[20] = v22;
          *&v49[28] = 2048;
          *&v49[30] = v23;
          *&v49[38] = 2048;
          *&v49[40] = v24;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pointer=%p, newPixelBuffer=%p, formatType=%s, width=%lu, height=%lu", buf, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v31 = pixelBufferOut;
        v32 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
        v33 = FourccToCStr(v32);
        v34 = CVPixelBufferGetWidth(pixelBufferOut);
        v35 = CVPixelBufferGetHeight(pixelBufferOut);
        *buf = 136316930;
        v43 = v17;
        v44 = 2080;
        v45 = "VCImageRotationConverterBase_CreateRotatedPixelBuffer";
        v46 = 1024;
        v47 = 64;
        v48 = 2048;
        *v49 = a1;
        *&v49[8] = 2048;
        *&v49[10] = v31;
        *&v49[18] = 2080;
        *&v49[20] = v33;
        *&v49[28] = 2048;
        *&v49[30] = v34;
        *&v49[38] = 2048;
        *&v49[40] = v35;
        _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d pointer=%p, newPixelBuffer=%p, formatType=%s, width=%lu, height=%lu", buf, 0x4Eu);
      }
    }

    CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(pixelBuffer);
    if (CVOFromPixelBuffer != -1)
    {
      v25 = *(a1 + 56);
      if (v25 == 90)
      {
        v26 = -1;
      }

      else
      {
        if (v25 != 270)
        {
LABEL_27:
          if (a3)
          {
            VCCVOExtensionUtils_MirrorCVO(&CVOFromPixelBuffer);
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            v29 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v43 = v27;
                v44 = 2080;
                v45 = "VCImageRotationConverterBase_CreateRotatedPixelBuffer";
                v46 = 1024;
                v47 = 77;
                v48 = 1024;
                *v49 = CVOFromPixelBuffer;
                _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CVO=0x%02x", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              VCImageRotationConverterBase_CreateRotatedPixelBuffer_cold_2(v27, &CVOFromPixelBuffer, v28);
            }
          }

          VCCVOExtensionUtils_AttachCVOToPixelBuffer(pixelBufferOut, CVOFromPixelBuffer);
          return pixelBufferOut;
        }

        v26 = -3;
      }

      VCCVOExtensionUtils_RotateCVO(&CVOFromPixelBuffer, v26);
      goto LABEL_27;
    }
  }

  return pixelBufferOut;
}

uint64_t VCBitrateArbiter_ModeFromOperatingMode(int a1)
{
  if ((a1 - 1) < 0xC)
  {
    return byte_1DBD50E30[a1 - 1];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCBitrateArbiter_ModeFromOperatingMode_cold_1();
  }

  return 0;
}

BOOL rangeCheck(int a1)
{
  v1 = a1 - 36;
  if ((a1 - 36) >= 0x1941 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      rangeCheck_cold_1();
    }
  }

  return v1 < 0x1941;
}

BOOL IsValidAudioBitrateRange(int a1)
{
  v1 = a1 - 10;
  if ((a1 - 10) >= 0x122 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      IsValidAudioBitrateRange_cold_1();
    }
  }

  return v1 < 0x122;
}

uint64_t VCCaptionsDecoder_Create(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10900408D69EB25uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  result = 0;
  *v3 = v4;
  v3[8] = -1;
  *a1 = v3;
  return result;
}

void VCCaptionsDecoder_Destroy(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      [*v1 removeAllObjects];

      v2 = *(v1 + 24);
      if (v2)
      {
        free(v2);
      }

      free(v1);
    }
  }
}

uint64_t VCCaptionsDecoder_Decode(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || ((v7 = *a2, (v7 & 3) == 0) ? (v8 = a4 == 0) : (v8 = 1), v8))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCCaptionsDecoder_Decode_cold_4();
      }
    }

    return 4294967294;
  }

  v12 = v7 >> 4;
  v13 = [*a1 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", v7 >> 4)}];
  v14 = v13;
  if (v13)
  {
    if (*(a1 + 8) != v7 >> 4)
    {
      VCCaptionsDecoder_Decode_cold_1(&v44, &v47);
      v23 = v44;
      v9 = v47;
      goto LABEL_63;
    }

    ++*(a1 + 16);
  }

  else
  {
    *(a1 + 8) = v12;
    ++*(a1 + 12);
    *(a1 + 16) = 0;
    [*a1 setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", (v12 + 12) & 0xF)}];
  }

  v15 = 0;
  v16 = 0;
  v17 = a2 + 1;
  v18 = -1;
  do
  {
    if (v15 + 2 > a3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v23 = 0;
        v9 = 4294967291;
        goto LABEL_63;
      }

      v22 = v14;
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCCaptionsDecoder_Decode_cold_3();
      }

      v23 = 0;
      v9 = 4294967291;
      goto LABEL_61;
    }

    v19 = v17[v15];
    v16 += ((v19 >> 3) + 1) & ((v19 << 30) >> 31);
    ++v15;
    --v18;
  }

  while ((v19 & 4) == 0);
  v39 = v7 >> 4;
  v20 = a3 - v15;
  if (*(a1 + 32) >= a3 - v15)
  {
    v21 = *(a1 + 24);
  }

  else
  {
    *(a1 + 32) = v20 + 49;
    v21 = malloc_type_realloc(*(a1 + 24), v20 + 49, 0x85B8E02CuLL);
    *(a1 + 24) = v21;
    if (!v21)
    {
      *(a1 + 32) = 0;
      v9 = 0xFFFFFFFFLL;
      goto LABEL_57;
    }
  }

  memcpy(v21, &v17[v15], v20 - 1);
  *(*(a1 + 24) + a3 + v18) = 0;
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 24)];
  if (!v24 || (v25 = v24, [v24 length] != v16))
  {
    v9 = 4294967290;
LABEL_57:
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      v23 = 0;
      goto LABEL_63;
    }

    v22 = v14;
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCCaptionsDecoder_Decode_cold_2();
    }

    v23 = 0;
LABEL_61:
    v14 = v22;
    goto LABEL_63;
  }

  v38 = a4;
  v23 = v25;
  v42 = [[VCCaptionsTranscription alloc] initWithUtteranceNumber:*(a1 + 12) updateNumber:*(a1 + 16) isLocal:(v7 >> 3) & 1 isFinal:(v7 >> 2) & 1 streamToken:0 isTranslated:0];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v15)
  {
    v26 = 0;
    v43 = 0;
    v27 = 0;
    v40 = v14;
    v41 = v23;
    while (1)
    {
      v28 = [v14 formattedText];
      v29 = v17[v26];
      v30 = v46;
      if (!v27)
      {
        v30 = v29 & 1;
      }

      LODWORD(v46) = v30;
      if (v30 != (v29 & 1))
      {
        _VCCaptionsDecoder_InsertCompletedSegment(v42, &v44);
        v27 = v44;
      }

      v31 = (v29 >> 3) + 1;
      if (!v27)
      {
        v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:(v29 >> 3) + 1];
        v44 = v27;
      }

      if ((v17[v26] & 2) == 0)
      {
        break;
      }

      [v27 appendString:{objc_msgSend(v23, "substringWithRange:", v43, v31)}];
      v43 += v31;
      LODWORD(v33) = HIDWORD(v45);
LABEL_54:
      HIDWORD(v45) = v33 + v31;
      if (v15 == ++v26)
      {
        goto LABEL_55;
      }
    }

    v32 = [v28 length];
    v33 = HIDWORD(v45);
    if (v32 > HIDWORD(v45))
    {
      v34 = [v28 length];
      if (v34 - v33 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = (v34 - v33);
      }

      v36 = v34 - v33;
      if (v34 != v33)
      {
        [v27 appendString:{objc_msgSend(v28, "substringWithRange:", v33, v35)}];
      }

      v37 = v36 >= v31;
      v14 = v40;
      if (!v37)
      {
LABEL_52:
        [v27 appendString:{objc_msgSend(&stru_1F570E008, "stringByPaddingToLength:withString:startingAtIndex:", (v31 - v35), @"\uFFFD", 0)}];
      }

      v23 = v41;
      goto LABEL_54;
    }

    LODWORD(v35) = 0;
    goto LABEL_52;
  }

LABEL_55:
  _VCCaptionsDecoder_InsertCompletedSegment(v42, &v44);
  [*a1 setObject:v42 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", v39)}];

  v9 = 0;
  *v38 = v42;
LABEL_63:

  return v9;
}

void _VCCaptionsDecoder_InsertCompletedSegment(void *a1, uint64_t a2)
{
  v4 = -[VCCaptionsTranscriptionSegment initWithConfidence:text:range:]([VCCaptionsTranscriptionSegment alloc], "initWithConfidence:text:range:", *(a2 + 16), *a2, *(a2 + 8), [*a2 length]);
  [a1 addSegment:v4];

  *(a2 + 8) += [*a2 length];
  *a2 = 0;
}

uint64_t VCMediaNegotiationFaceTimeSettingsReadFrom(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v37;
          }

LABEL_79:
          v41 = 8;
        }

        else
        {
          if (v12 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v46 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v46 & 0x7F) << v19;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_87:
          v41 = 20;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 28) |= 0x10u;
            while (1)
            {
              v48 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v48 & 0x7F) << v24;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                LOBYTE(v29) = 0;
                goto LABEL_71;
              }
            }

            v29 = (v26 != 0) & ~[a2 hasError];
LABEL_71:
            *(a1 + 24) = v29;
            goto LABEL_89;
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v45 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v45 & 0x7F) << v30;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v32;
            }

LABEL_75:
            v41 = 16;
            break;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v44 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v44 & 0x7F) << v13;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_83:
            v41 = 12;
            break;
          default:
            goto LABEL_68;
        }
      }

      *(a1 + v41) = v18;
LABEL_89:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void VCStatisticsHistory_AddStatsHistory(uint64_t a1, unsigned __int8 *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *a2;
    if (*(a1 + 32848) != v4)
    {
      *(a1 + 32848) = v4;
      *(a1 + 32776) = 0;
      *(a1 + 32784) = 0u;
      *(a1 + 32800) = 0u;
      *(a1 + 32816) = 0u;
      *(a1 + 32832) = 0u;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315650;
          v27 = v5;
          v28 = 2080;
          v29 = "_VCStatisticsHistory_ResetHistory";
          v30 = 1024;
          v31 = 387;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Reset VCRC statistics history", &v26, 0x1Cu);
        }
      }
    }

    if (*(a1 + 32776) >= 1)
    {
      v7 = *(a1 + 32780);
      if ((*(a2 + 8) - *(a1 + (v7 << 6) + 24)) > 0x7FFEu)
      {
        return;
      }

      *(a1 + 32780) = (v7 + 1) & 0x1FF;
    }

    v8 = *(a1 + 32816);
    if ((*(a2 + 4) - v8) < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = *(a2 + 4);
          v19 = *(a1 + 32816);
          v26 = 136316162;
          v27 = v16;
          v28 = 2080;
          v29 = "_VCStatisticsHistory_HandleWrappedAroundByteCountForStats";
          v30 = 1024;
          v31 = 363;
          v32 = 2048;
          v33 = v18;
          v34 = 2048;
          v35 = v19;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Statistics history receives out of order statistics for totalByteSent! [current:%llu, previous:%llu]", &v26, 0x30u);
        }
      }
    }

    else
    {
      v9 = *(a2 + 5);
      v10 = *(a1 + 32824);
      if (v9 - v10 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCStatisticsHistory_AddStatsHistory_cold_1(v20);
          }
        }
      }

      else
      {
        *(a2 + 4) = (v8 & 0xFFFFFFFF00000000 | *(a2 + 4)) + ((*(a2 + 4) < v8) << 32);
        *(a2 + 5) = (v10 & 0xFFFFFFFF00000000 | v9) + ((v9 < v10) << 32);
        v11 = *a2;
        v12 = *(a2 + 1);
        v13 = *(a2 + 3);
        *(a1 + 32816) = *(a2 + 2);
        *(a1 + 32832) = v13;
        *(a1 + 32784) = v11;
        *(a1 + 32800) = v12;
      }
    }

    v21 = a1 + (*(a1 + 32780) << 6);
    v22 = *a2;
    v23 = *(a2 + 1);
    v24 = *(a2 + 2);
    *(v21 + 56) = *(a2 + 3);
    *(v21 + 40) = v24;
    *(v21 + 24) = v23;
    *(v21 + 8) = v22;
    v25 = *(a1 + 32776);
    if (v25 < 512)
    {
      ++v25;
    }

    *(a1 + 32776) = v25;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136316162;
      v27 = v14;
      v28 = 2080;
      v29 = "VCStatisticsHistory_AddStatsHistory";
      v30 = 1024;
      v31 = 51;
      v32 = 2048;
      v33 = a1;
      v34 = 2048;
      v35 = a2;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Invalid parameter. statisticsHistory=%p statsElement=%p", &v26, 0x30u);
    }
  }
}

double VCStatisticsHistory_PacketLossRate(uint64_t a1, double a2, double a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v44 = -1431655766;
  v5 = 0.0;
  if (_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v44, a2, a3))
  {
    v6 = a1 + 8;
    v7 = *(a1 + 32780);
    v8 = a1 + 8 + (v7 << 6);
    if (*(v8 + 20) != *(v8 + 24))
    {
      v42 = a1;
      v43 = 0;
      v9 = *v8;
      v10 = *(v8 + 32);
      v11 = *(v8 + 48);
      v65[1] = *(v8 + 16);
      v65[2] = v10;
      v12 = (v6 + (v44 << 6));
      v13 = v12[1];
      v63[0] = *v12;
      v63[1] = v13;
      v14 = v12[3];
      v63[2] = v12[2];
      v15 = (v6 + (((v7 - 1) & 0x1FF) << 6));
      v16 = v15[3];
      v66[2] = v15[2];
      v66[3] = v16;
      v17 = v15[1];
      v66[0] = *v15;
      v66[1] = v17;
      v65[3] = v11;
      v18 = (v6 + (((v44 + 1) & 0x1FF) << 6));
      v19 = v18[2];
      v64[3] = v18[3];
      v65[0] = v9;
      v20 = *v18;
      v64[1] = v18[1];
      v64[2] = v19;
      v5 = 1.0;
      v21 = v65;
      v22 = 1;
      v63[3] = v14;
      v64[0] = v20;
      while (2)
      {
        v23 = 0;
        v41 = v22;
        v24 = *(v21 + 5);
        v25 = *(v21 + 6);
        v26 = v63;
        v27 = 1;
        do
        {
          v28 = v27;
          v29 = v24 - *(v26 + 5);
          v30 = v25 - *(v26 + 6);
          if ((v29 & 0x80000000) != 0 || (v30 & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v32 = VRTraceErrorLogLevelToCSTR();
              v33 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(v42 + 32780);
                *buf = 136317186;
                v46 = v32;
                v47 = 2080;
                v48 = "VCStatisticsHistory_PacketLossRate";
                v49 = 1024;
                v50 = 106;
                v51 = 1024;
                v52 = v29;
                v53 = 1024;
                v54 = v30;
                v55 = 2048;
                v56 = a2;
                v57 = 1024;
                v58 = v34;
                v59 = 1024;
                v60 = v43;
                v61 = 1024;
                v62 = v23;
                _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Statistics has reverse history! packet count is not incremental, sendDiff:%d, receiveDiff:%d, time:%f, index:%d [%d,%d]", buf, 0x44u);
              }
            }
          }

          else
          {
            v31 = v29 - v30;
            if (v29 < v30)
            {
              v5 = 0.0;
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v35 = VRTraceErrorLogLevelToCSTR();
                v36 = *MEMORY[0x1E6986650];
                v37 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    v38 = *(v42 + 32780);
                    *buf = 136317186;
                    v46 = v35;
                    v47 = 2080;
                    v48 = "VCStatisticsHistory_PacketLossRate";
                    v49 = 1024;
                    v50 = 108;
                    v51 = 1024;
                    v52 = v29;
                    v53 = 1024;
                    v54 = v30;
                    v55 = 2048;
                    v56 = a2;
                    v57 = 1024;
                    v58 = v38;
                    v59 = 1024;
                    v60 = v43;
                    v61 = 1024;
                    v62 = v23;
                    _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Received more packets than sent, sendDiff:%d, receiveDiff:%d, time:%f, index:%d [%d,%d]", buf, 0x44u);
                  }
                }

                else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  v40 = *(v42 + 32780);
                  *buf = 136317186;
                  v46 = v35;
                  v47 = 2080;
                  v48 = "VCStatisticsHistory_PacketLossRate";
                  v49 = 1024;
                  v50 = 108;
                  v51 = 1024;
                  v52 = v29;
                  v53 = 1024;
                  v54 = v30;
                  v55 = 2048;
                  v56 = a2;
                  v57 = 1024;
                  v58 = v40;
                  v59 = 1024;
                  v60 = v43;
                  v61 = 1024;
                  v62 = v23;
                  _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d Received more packets than sent, sendDiff:%d, receiveDiff:%d, time:%f, index:%d [%d,%d]", buf, 0x44u);
                }
              }

              return v5;
            }

            if (v29 == v30)
            {
              return 0.0;
            }

            if (v5 >= v31 / v29)
            {
              v5 = v31 / v29;
            }
          }

          v27 = 0;
          v23 = 1;
          v26 = v64;
        }

        while ((v28 & 1) != 0);
        v22 = 0;
        v43 = 1;
        v21 = v66;
        if (v41)
        {
          continue;
        }

        break;
      }
    }
  }

  return v5;
}

BOOL _VCStatisticsHistory_GetStatsHistoryElementIndex(uint64_t a1, _DWORD *a2, double a3, double a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _VCStatisticsHistory_GetStatsHistoryElementIndex_cold_1(v13);
    }

    return 0;
  }

  v6 = a1 + 0x8000;
  v7 = *(a1 + 32776);
  if (v7 < 1)
  {
    v12 = 0.0;
LABEL_11:
    if (a3 - *(a1 + 32856) > 2.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v15;
          v19 = 2080;
          v20 = "_VCStatisticsHistory_GetStatsHistoryElementIndex";
          v21 = 1024;
          v22 = 354;
          v23 = 2048;
          v24 = a4;
          v25 = 2048;
          v26 = v12;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Statistics history does not have enough history for the stats within the most recent %f seconds. History size: %f seconds", &v17, 0x30u);
        }
      }

      result = 0;
      *(v6 + 88) = a3;
      return result;
    }

    return 0;
  }

  v8 = *(a1 + 32780);
  v9 = a3 - a4;
  while (1)
  {
    v10 = v8 & 0x1FF;
    v11 = *(a1 + 8 + (v10 << 6) + 8);
    if (v11 < v9)
    {
      break;
    }

    LOWORD(v8) = v8 - 1;
    if (!--v7)
    {
      v12 = a3 - v11;
      goto LABEL_11;
    }
  }

  *a2 = v10;
  return 1;
}

double VCStatisticsHistory_SendingBitrate(uint64_t a1, int *a2, double a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *a2;
    v18 = v7;
    if (v7 == -1)
    {
      v8 = 0.0;
      if (!_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v18, a3, a4))
      {
        return v8;
      }

      v7 = v18;
      if (*a2 == -1)
      {
        *a2 = v18;
      }
    }
  }

  else
  {
    v18 = -1;
    v8 = 0.0;
    if (!_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v18, a3, a4))
    {
      return v8;
    }

    v7 = v18;
  }

  v9 = a1 + 8 + (*(a1 + 32780) << 6);
  v10 = *(v9 + 32);
  v11 = a1 + 8 + (v7 << 6);
  v12 = *(v11 + 32);
  if (v10 - v12 < 0)
  {
    v8 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32780);
        *buf = 136316930;
        v20 = v14;
        v21 = 2080;
        v22 = "VCStatisticsHistory_SendingBitrate";
        v23 = 1024;
        v24 = 138;
        v25 = 1024;
        v26 = v10 - v12;
        v27 = 2048;
        v28 = v10;
        v29 = 2048;
        v30 = v12;
        v31 = 2048;
        v32 = a3;
        v33 = 1024;
        v34 = v17;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Statistics has reverse history! byte count is not incremental, sendDiff:%d, currentCount:%llu, previousCount:%llu, time:%f, index:%d", buf, 0x46u);
      }
    }
  }

  else
  {
    v13 = *(v9 + 8) - *(v11 + 8);
    v8 = 0.0;
    if (v13 > 0.0)
    {
      return (8 * (v10 - v12)) / v13;
    }
  }

  return v8;
}

double VCStatisticsHistory_ReceivingBitrate(uint64_t a1, int *a2, double a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *a2;
    v18 = v7;
    if (v7 == -1)
    {
      v8 = 0.0;
      if (!_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v18, a3, a4))
      {
        return v8;
      }

      v7 = v18;
      if (*a2 == -1)
      {
        *a2 = v18;
      }
    }
  }

  else
  {
    v18 = -1;
    v8 = 0.0;
    if (!_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v18, a3, a4))
    {
      return v8;
    }

    v7 = v18;
  }

  v9 = a1 + 8 + (*(a1 + 32780) << 6);
  v10 = *(v9 + 40);
  v11 = a1 + 8 + (v7 << 6);
  v12 = *(v11 + 40);
  if (v10 - v12 < 0)
  {
    v8 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32780);
        *buf = 136316930;
        v20 = v14;
        v21 = 2080;
        v22 = "VCStatisticsHistory_ReceivingBitrate";
        v23 = 1024;
        v24 = 162;
        v25 = 1024;
        v26 = v10 - v12;
        v27 = 2048;
        v28 = v10;
        v29 = 2048;
        v30 = v12;
        v31 = 2048;
        v32 = a3;
        v33 = 1024;
        v34 = v17;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Statistics has reverse history! byte count is not incremental, receiveDiff:%d, currentCount:%llu, previousCount:%llu, time:%f, index:%d", buf, 0x46u);
      }
    }
  }

  else
  {
    v13 = *(v9 + 8) - *(v11 + 8);
    v8 = 0.0;
    if (v13 > 0.0)
    {
      return (8 * (v10 - v12)) / v13;
    }
  }

  return v8;
}

double VCStatisticsHistory_ServerStatsBitrate(uint64_t a1, double a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v15 = -1431655766;
  v5 = 0.0;
  if (_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v15, a2, a3))
  {
    v6 = a1 + 8 + (*(a1 + 32780) << 6);
    v7 = *(v6 + 48);
    v8 = a1 + 8 + (v15 << 6);
    v9 = *(v8 + 48);
    if (v7 - v9 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32780);
          *buf = 136316930;
          v17 = v11;
          v18 = 2080;
          v19 = "VCStatisticsHistory_ServerStatsBitrate";
          v20 = 1024;
          v21 = 182;
          v22 = 1024;
          v23 = v7 - v9;
          v24 = 2048;
          v25 = v7;
          v26 = 2048;
          v27 = v9;
          v28 = 2048;
          v29 = a2;
          v30 = 1024;
          v31 = v14;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Statistics has reverse history! byte count is not incremental, serverStatsDiff:%d, currentCount:%llu, previousCount:%llu, time:%f, index:%d", buf, 0x46u);
        }
      }
    }

    else
    {
      v10 = *(v6 + 8) - *(v8 + 8);
      if (v10 > 0.0)
      {
        return (8 * (v7 - v9)) / v10;
      }
    }
  }

  return v5;
}

uint64_t VCStatisticsHistory_GetBurstyLoss(uint64_t a1, double a2, double a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = -1431655766;
  if (_VCStatisticsHistory_GetStatsHistoryElementIndex(a1, &v17, a2, a3))
  {
    bzero(buf, 0x800uLL);
    v7 = *(a1 + 32780);
    v8 = v7 - v17;
    v9 = (v7 - v17) & 0x1FF;
    if (((v7 - v17) & 0x1FF) != 0)
    {
      v10 = buf;
      v11 = (v7 - v17) & 0x1FF;
      do
      {
        *v10 = *(a1 + 8 + ((v7 & 0x1FF) << 6) + 56);
        v10 += 4;
        --v7;
        --v11;
      }

      while (v11);
      v12 = v8 & 0x1FF;
    }

    else
    {
      v12 = 0;
    }

    qsort(buf, v12, 4uLL, compare);
    return *&buf[4 * (v9 * a4)];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v19 = v13;
          v20 = 2080;
          v21 = "VCStatisticsHistory_GetBurstyLoss";
          v22 = 1024;
          v23 = 196;
          v24 = 2048;
          v25 = a3;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Statistics history does not have enough history for the stats within the most recent %f seconds", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        VCStatisticsHistory_GetBurstyLoss_cold_1(v13, v14, a3);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

void VCStatisticsHistory_AddAndPruneSendHistory(uint64_t a1, int *a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 32864);
    if (v5)
    {
      v6 = (v5 + 40);
      v7 = *(v5 + 40);
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          if (*(v5 + 8) < a3)
          {
            v11 = *(v5 + 48);
            if (v11)
            {
              *(v11 + 40) = v7;
              v7 = *v6;
              *(*v6 + 48) = v11;
            }

            else
            {
              *(a1 + 32864) = v7;
              *(v7 + 48) = 0;
              v7 = *v6;
            }

            free(v5);
            ++v10;
          }

          v5 = v7;
          ++v9;
          v6 = (v7 + 40);
          v7 = *(v7 + 40);
        }

        while (v7);
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      *(v5 + 40) = a2;
      *(a2 + 6) = v5;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      *(a1 + 32864) = a2;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (a2)
        {
          v20 = *a2;
        }

        else
        {
          v20 = 0;
        }

        v22 = 136316418;
        v23 = v17;
        v24 = 2080;
        v25 = "VCStatisticsHistory_AddAndPruneSendHistory";
        v26 = 1024;
        v27 = 252;
        v28 = 1024;
        *v29 = v20;
        *&v29[4] = 1024;
        *&v29[6] = v9;
        v30 = 1024;
        v31 = v10;
        v14 = "AVCRC [%s] %s:%d Adding sendStats with packetId:%u [len:%d, pruned:%d]";
        v15 = v18;
        v16 = 46;
        goto LABEL_28;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        if (a2)
        {
          v21 = *a2;
        }

        else
        {
          v21 = 0;
        }

        v22 = 136316418;
        v23 = v17;
        v24 = 2080;
        v25 = "VCStatisticsHistory_AddAndPruneSendHistory";
        v26 = 1024;
        v27 = 252;
        v28 = 1024;
        *v29 = v21;
        *&v29[4] = 1024;
        *&v29[6] = v9;
        v30 = 1024;
        v31 = v10;
        _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d Adding sendStats with packetId:%u [len:%d, pruned:%d]", &v22, 0x2Eu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = v12;
      v24 = 2080;
      v25 = "VCStatisticsHistory_AddAndPruneSendHistory";
      v26 = 1024;
      v27 = 217;
      v28 = 2048;
      *v29 = 0;
      v14 = "AVCRC [%s] %s:%d Invalid parameter. statisticsHistory=%p";
      v15 = v13;
      v16 = 38;
LABEL_28:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v22, v16);
    }
  }
}

uint64_t VCStatisticsHistory_GetSendHistoryElement(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v9;
        v13 = 2080;
        v14 = "VCStatisticsHistory_GetSendHistoryElement";
        v15 = 1024;
        v16 = 257;
        v17 = 2048;
        *v18 = 0;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Invalid parameter. statisticsHistory=%p", &v11, 0x26u);
      }
    }

    return 0;
  }

  if (!*(a1 + 32864))
  {
    return 0;
  }

  v4 = 0;
  result = *(a1 + 32864);
  while (*result != a2)
  {
    ++v4;
    result = *(result + 40);
    if (!result)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = **(a1 + 32864);
          v11 = 136316418;
          v12 = v6;
          v13 = 2080;
          v14 = "VCStatisticsHistory_GetSendHistoryElement";
          v15 = 1024;
          v16 = 269;
          v17 = 1024;
          *v18 = a2;
          *&v18[4] = 1024;
          *&v18[6] = v8;
          v19 = 1024;
          v20 = v4;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Cannot find sendStatsElement in history with packetId %d [earliest packetId: %d, len:%d]", &v11, 0x2Eu);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t VCStatisticsHistory_GetCurrentStatsHistoryElement(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1 + (*(a1 + 32780) << 6) + 8;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "VCStatisticsHistory_GetCurrentStatsHistoryElement";
      v8 = 1024;
      v9 = 276;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Invalid parameter. statisticsHistory=%p", &v4, 0x26u);
    }
  }

  return 0;
}

double VCStatisticsHistory_BytesInFlight(uint64_t a1, double *a2, double *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 && (v3 = *(a1 + 32864)) != 0)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 40);
    }

    while (v3);
    if (a3)
    {
      result = *(v4 + 8);
      *a3 = result;
    }

    v6 = v4;
    while ((*(v6 + 32) & 1) == 0)
    {
      v6 = *(v6 + 48);
      if (!v6)
      {
        return result;
      }
    }

    if (a2)
    {
      result = *(v6 + 8);
      *a2 = result;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "VCStatisticsHistory_BytesInFlight";
      v13 = 1024;
      v14 = 284;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Empty send history with bytesInFlight query!", &v9, 0x1Cu);
    }
  }

  return result;
}

double VCStatisticsHistory_RoundTripTimeWithPacketId(uint64_t a1, int a2, double a3)
{
  v3 = *(a1 + 32864);
  v4 = 0.0;
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 40);
      if (!v3)
      {
        v4 = 0.0;
        return fmax(v4, 0.0);
      }
    }

    *(v3 + 32) = 1;
    v4 = a3 - *(v3 + 8);
  }

  return fmax(v4, 0.0);
}

FILE *openLogDump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = &stru_1F570E008;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = &stru_1F570E008;
    goto LABEL_8;
  }

  v11 = &stru_1F570E008;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
LABEL_8:
  v14 = [LogDumpUtility logFilename:a1 dumpID:v11 logNameType:a3 prefix:v12 suffix:v13];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  if (![MEMORY[0x1E6986628] createDefaultLogDirectoryIfNeeded])
  {
    return 0;
  }

  v16 = fopen([v15 UTF8String], "w+");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v16)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v24 = v18;
        v25 = 2080;
        v26 = "openLogDump";
        v27 = 1024;
        v28 = 57;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d successfully created %@", &v23, 0x26u);
        if (!a6)
        {
          return v16;
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    if (!a6)
    {
      return v16;
    }

    goto LABEL_20;
  }

  if (ErrorLogLevelForModule < 3)
  {
    goto LABEL_19;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

  openLogDump_cold_1();
  if (!a6)
  {
    return v16;
  }

LABEL_20:
  if (v16)
  {
    v21 = [v15 maximumLengthOfBytesUsingEncoding:4];
    v22 = malloc_type_malloc(v21 + 1, 0x87484E0BuLL);
    *a6 = v22;
    [v15 getCString:v22 maxLength:v21 + 1 encoding:4];
  }

  else
  {
    *a6 = 0;
  }

  return v16;
}

char *VRLogfileGetTimestamp(char *a1, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v6, 0);
  v7.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.tm_mon = v4;
  *&v7.tm_isdst = v4;
  *&v7.tm_sec = v4;
  localtime_r(&v6.tv_sec, &v7);
  snprintf(a1, a2, "%02d%02d%02d.%06d", v7.tm_hour, v7.tm_min, v7.tm_sec, v6.tv_usec);
  return a1;
}

char *VRLogfileGetTimestampMicro(uint64_t a1, char *a2, unsigned int a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 32) + a4;
    v10 = v6;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v7 = *(a1 + 40) + ((a4 - a4) * 1000000.0);
    LODWORD(v11) = v7;
    if (v7 >= 1000001)
    {
      v10 = v6 + 1;
      LODWORD(v11) = v7 - 1000000;
    }

    v12.tm_zone = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v12.tm_mon = v8;
    *&v12.tm_isdst = v8;
    *&v12.tm_sec = v8;
    localtime_r(&v10, &v12);
    snprintf(a2, a3, "%02d%02d%02d.%06d", v12.tm_hour, v12.tm_min, v12.tm_sec, v11);
  }

  else
  {
    VRLogfileGetTimestamp(a2, a3);
  }

  return a2;
}

__darwin_time_t VRLogfileAlloc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x10B0040208A8F78uLL);
  if (!v12)
  {
    VRLogfileAlloc_cold_3(&v23);
    return v23.tv_sec;
  }

  v13 = v12;
  v14 = openLogDump(a1, a2, a4 != 0, a3, a4, v12 + 6);
  *v13 = v14;
  if (v14)
  {
    *(v13 + 16) = a6;
    v15 = dispatch_queue_create(a5, 0);
    v13[1] = v15;
    if (v15)
    {
      v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      *&v23.tv_usec = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&v23, 0);
      v16 = micro();
      v17 = v16;
      v18 = ((v16 - v16) * 1000000.0);
      tv_usec = v23.tv_usec;
      if (v23.tv_usec >= v18)
      {
        v20 = v23.tv_sec - v17;
      }

      else
      {
        v20 = v23.tv_sec + ~v17;
        tv_usec = v23.tv_usec + 1000000;
      }

      v23.tv_sec = v20;
      v23.tv_usec = tv_usec - v18;
      *(v13 + 2) = v23;
      return v13;
    }

    VRLogfileAlloc_cold_1();
  }

  else
  {
    VRLogfileAlloc_cold_2();
  }

  if (*v13)
  {
    fclose(*v13);
  }

  v22 = v13[1];
  if (v22)
  {
    dispatch_release(v22);
  }

  free(v13);
  return 0;
}

uint64_t VRLogfileZip(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (*(a1 + 48))
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  v5 = v4;
  if (a2)
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{a2), "stringByAppendingPathComponent:", -[__CFString lastPathComponent](v4, "lastPathComponent")}];
  }

  v6 = [(__CFString *)v5 stringByAppendingString:@".gz"];
  v7 = fopen([(__CFString *)v4 UTF8String], "r");
  if (!v7)
  {
    VRLogfileZip_cold_2(v4, buf);
    return *buf;
  }

  v8 = v7;
  v9 = fopen([(__CFString *)v6 UTF8String], "w+");
  if (!v9)
  {
    VRLogfileZip_cold_1(v6, buf);
    v10 = *buf;
    goto LABEL_28;
  }

  v10 = VCDiskUtils_FileZipToFile();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v10)
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v25 = v21;
        v26 = 2080;
        v27 = "VRLogfileZip";
        v28 = 1024;
        v29 = 188;
        v30 = 2112;
        v31 = v6;
        v32 = 1024;
        LODWORD(v33) = v10;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to create %@: %d", buf, 0x2Cu);
      }
    }

LABEL_28:
    fclose(v8);
    if ((*(a1 + 56) & 1) != 0 || !v4)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = v12;
      v26 = 2080;
      v27 = "VRLogfileZip";
      v28 = 1024;
      v29 = 189;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d compressed to %@", buf, 0x26u);
    }
  }

  fclose(v8);
  v10 = 0;
  if (v4)
  {
LABEL_13:
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v23 localizedFailureReason];
        *buf = 136316162;
        v25 = v14;
        v26 = 2080;
        v27 = "VRLogfileZip";
        v28 = 1024;
        v29 = 196;
        v30 = 2112;
        v31 = v4;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d removed origFileName=%@, error=%@", buf, 0x30u);
      }
    }

LABEL_16:
    if (!v9)
    {
      return v10;
    }
  }

  fclose(v9);
  if (v10)
  {
    if (v6)
    {
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v23 localizedFailureReason];
          *buf = 136316162;
          v25 = v17;
          v26 = 2080;
          v27 = "VRLogfileZip";
          v28 = 1024;
          v29 = 203;
          v30 = 2112;
          v31 = v6;
          v32 = 2112;
          v33 = v19;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d removed zipFileName=%@, error=%@", buf, 0x30u);
        }
      }
    }
  }

  return v10;
}

uint64_t VRLogfileZipOnly(const char *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VRLogfileZipOnly_cold_3(&v9);
    return v9;
  }

  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10B0040208A8F78uLL);
  if (!v4)
  {
    VRLogfileZipOnly_cold_2(&v9);
    return v9;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x400uLL, 0xED0DD6C5uLL);
  v5[6] = v6;
  if (v6)
  {
    snprintf(v6, 0x400uLL, "%s", a1);
    v7 = VRLogfileZip(v5, a2);
  }

  else
  {
    VRLogfileZipOnly_cold_1(&v9);
    v7 = v9;
  }

  free(v5[6]);
  free(v5);
  return v7;
}

void VRLogfileFree(uint64_t *a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      *a1 = 0;
      v2 = *(v1 + 8);
      if (v2)
      {
        v3[0] = MEMORY[0x1E69E9820];
        v3[1] = 3221225472;
        v3[2] = __VRLogfileFree_block_invoke;
        v3[3] = &__block_descriptor_40_e5_v8__0l;
        v3[4] = v1;
        dispatch_async(v2, v3);
      }
    }
  }
}

void __VRLogfileFree_block_invoke(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 8));
  fclose(**(a1 + 32));
  if (VCDefaults_GetBoolValueForKey(@"enableZipDump", 1))
  {
    VRLogfileZip(*(a1 + 32), 0);
  }

  free(*(*(a1 + 32) + 48));
  v2 = *(a1 + 32);

  free(v2);
}

uint64_t VRLogfileGetFilePointer(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void VRLogfilePrint(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      bzero(__str, 0x400uLL);
      v11 = vsnprintf(__str, 0x400uLL, a2, &a9);
      if ((v11 & 0x80000000) == 0)
      {
        if (v11 >= 0x3FF)
        {
          v12 = 1023;
        }

        else
        {
          v12 = v11;
        }

        __str[v12] = 0;
        v13 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __VRLogfilePrint_block_invoke;
        block[3] = &__block_descriptor_1064_e5_v8__0l;
        block[4] = a1;
        memcpy(v15, __str, sizeof(v15));
        dispatch_async(v13, block);
        *(a1 + 56) = 1;
      }
    }
  }
}

void VRLogfileWrite(void *a1, uint64_t a2, uint64_t a3)
{
  v4[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      v3 = a1[1];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __VRLogfileWrite_block_invoke;
      v4[3] = &__block_descriptor_56_e5_v8__0l;
      v4[4] = a2;
      v4[5] = a3;
      v4[6] = a1;
      dispatch_sync(v3, v4);
    }
  }
}

void VRLogFileLog(void *a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      v2 = a1[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __VRLogFileLog_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = a1;
      block[5] = a2;
      dispatch_sync(v2, block);
    }
  }
}

void __VRLogFileLog_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E128BE00](**(a1 + 32));
  v3 = *(a1 + 32);
  *__error() = 0;
  rewind(*v3);
  v4 = *__error();
  if (v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = *v3;
        *buf = 136316418;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "_VRLogfileRewind";
        *&buf[22] = 1024;
        *&buf[24] = 304;
        *&buf[28] = 2048;
        *&buf[30] = v3;
        *&buf[38] = 2048;
        *&buf[40] = v7;
        *&buf[48] = 2080;
        *&buf[50] = strerror(v4);
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Failed to rewind file=%p with error=%s", buf, 0x3Au);
      }
    }
  }

  else
  {
    memset(buf, 170, sizeof(buf));
    if (fgets(buf, 1024, **(a1 + 32)))
    {
      v8 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 40);
            *v12 = 136316162;
            v13 = v9;
            v14 = 2080;
            v15 = "VRLogFileLog_block_invoke";
            v16 = 1024;
            v17 = 321;
            v18 = 2080;
            v19 = v11;
            v20 = 2080;
            v21 = buf;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: %s", v12, 0x30u);
          }
        }
      }

      while (fgets(buf, 1024, **(a1 + 32)));
    }

    fseek(**(a1 + 32), v2, 0);
  }
}

void VRLogfilePrintWithTimestamp(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(__str, 0x400uLL);
    memset(v18, 170, sizeof(v18));
    VRLogfileGetTimestamp(v18, 0x14u);
    v11 = vsnprintf(__str, 0x400uLL, a2, &a9);
    if ((v11 & 0x80000000) == 0)
    {
      if (v11 >= 0x3FF)
      {
        v12 = 1023;
      }

      else
      {
        v12 = v11;
      }

      __str[v12] = 0;
      v13 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __VRLogfilePrintWithTimestamp_block_invoke;
      block[3] = &__block_descriptor_1084_e5_v8__0l;
      block[4] = a1;
      v15 = *v18;
      v16 = *&v18[16];
      memcpy(v17, __str, sizeof(v17));
      dispatch_async(v13, block);
    }
  }
}

FILE **VRLogfilePrintSync(FILE **result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return vfprintf(*result, a2, &a9);
  }

  return result;
}

char *VRLogfile_CreateTimeAndDateString(char *result, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    memset(&v5, 0, sizeof(v5));
    v4.tv_sec = 0;
    *&v4.tv_usec = 0;
    gettimeofday(&v4, 0);
    localtime_r(&v4.tv_sec, &v5);
    return snprintf(v3, a2, "%04d%02d%02d-%02d%02d%02d", v5.tm_year + 1900, v5.tm_mon + 1, v5.tm_mday, v5.tm_hour, v5.tm_min, v5.tm_sec);
  }

  return result;
}

void *LogDumpUtility_CopyLogFilename(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = &stru_1F570E008;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = &stru_1F570E008;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  if (a5)
  {
LABEL_4:
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
    goto LABEL_8;
  }

LABEL_7:
  v11 = &stru_1F570E008;
LABEL_8:
  v12 = [LogDumpUtility logFilename:a1 dumpID:v9 logNameType:a3 prefix:v10 suffix:v11];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [v12 maximumLengthOfBytesUsingEncoding:4];
  v15 = malloc_type_malloc(v14 + 1, 0x16F0B882uLL);
  if (v15)
  {
    [v13 getCString:v15 maxLength:v14 + 1 encoding:4];
  }

  return v15;
}

uint64_t VCTransportStreamRunLoopGetClassID()
{
  if (VCTransportStreamRunLoopGetClassID_onceToken != -1)
  {
    VCTransportStreamRunLoopGetClassID_cold_1();
  }

  return VCTransportStreamRunLoopGetClassID_classID;
}

uint64_t __VCTransportStreamRunLoopGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&VCTransportStreamRunLoopGetClassID_descriptor, ClassID, 1, &VCTransportStreamRunLoopGetClassID_classID);
}

uint64_t VCTransportStreamRunLoopCreateWithTransportStreams(const __CFAllocator *a1, CFArrayRef theArray, CFTypeRef *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!theArray)
  {
    if (VCTransportStreamRunLoopCreateWithTransportStreams_cold_5(&v18))
    {
      return 2151022593;
    }

LABEL_22:
    v14 = v18;
    goto LABEL_18;
  }

  if (!a3)
  {
    VCTransportStreamRunLoopCreateWithTransportStreams_cold_4(&v18);
    goto LABEL_22;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    VCTransportStreamRunLoopCreateWithTransportStreams_cold_3(&v18);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = Count & 0x7FFFFFFF;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
    if (!ValueAtIndex)
    {
      VCTransportStreamRunLoopCreateWithTransportStreams_cold_2(&v18);
      goto LABEL_22;
    }

    v10 = ValueAtIndex;
    v11 = cf;
    if (cf)
    {
      goto LABEL_10;
    }

    if ((VCTransportStreamIsOfKindVTP(ValueAtIndex) & 1) == 0)
    {
      break;
    }

    v12 = VCTransportStreamRunLoopVTPCreate(a1, &cf);
    if ((v12 & 0x80000000) != 0)
    {
      v14 = v12;
      goto LABEL_18;
    }

    v11 = cf;
LABEL_10:
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v13)
    {
      v14 = 4294954514;
      goto LABEL_18;
    }

    v14 = v13(v11, v10);
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    if (v8 == ++v7)
    {
      *a3 = cf;
      return v14;
    }
  }

  v14 = 2150760449;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCTransportStreamRunLoopCreateWithTransportStreams_cold_1(v15);
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t VCMediaNegotiationBlobV2StreamGroupStreamReadFrom(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v85 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v85 & 0x7F) << v5;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v85 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v85 & 0x7F) << v12;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_171:
              v83 = 24;
              goto LABEL_192;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_171;
        case 2u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v85 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v85 & 0x7F) << v57;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v10 = v58++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_175;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v59;
          }

LABEL_175:
          v83 = 40;
          goto LABEL_192;
        case 3u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 84) |= 0x80u;
          while (1)
          {
            v85 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v85 & 0x7F) << v41;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_159;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v43;
          }

LABEL_159:
          v83 = 48;
          goto LABEL_192;
        case 4u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 84) |= 0x400u;
          while (1)
          {
            v85 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v85 & 0x7F) << v47;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v10 = v48++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_163;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v49;
          }

LABEL_163:
          v83 = 72;
          goto LABEL_192;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 84) |= 0x800u;
          while (1)
          {
            v85 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v85 & 0x7F) << v28;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_151;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v30;
          }

LABEL_151:
          v83 = 76;
          goto LABEL_192;
        case 6u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v85 = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v85 & 0x7F) << v62;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v10 = v63++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v64;
          }

LABEL_179:
          v83 = 16;
          goto LABEL_192;
        case 7u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            v85 = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v74 |= (v85 & 0x7F) << v72;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v10 = v73++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_187;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v74;
          }

LABEL_187:
          v83 = 52;
          goto LABEL_192;
        case 8u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v85 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v85 & 0x7F) << v52;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v10 = v53++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_167;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v54;
          }

LABEL_167:
          v83 = 8;
          goto LABEL_192;
        case 9u:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          *(a1 + 84) |= 0x1000u;
          while (1)
          {
            v85 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v85 & 0x7F) << v78;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v10 = v79++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_191;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v80;
          }

LABEL_191:
          v83 = 80;
          goto LABEL_192;
        case 0xAu:
          Data = PBReaderReadData();

          v39 = Data;
          v40 = 64;
          goto LABEL_130;
        case 0xBu:
          v77 = PBReaderReadData();

          v39 = v77;
          v40 = 32;
LABEL_130:
          *(a1 + v40) = v39;
          goto LABEL_193;
        case 0xCu:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v85 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v85 & 0x7F) << v23;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_147;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v25;
          }

LABEL_147:
          v83 = 12;
          goto LABEL_192;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            v85 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v85 & 0x7F) << v33;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_155;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v35;
          }

LABEL_155:
          v83 = 44;
          goto LABEL_192;
        case 0xEu:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v85 = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v85 & 0x7F) << v67;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v10 = v68++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_183;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v69;
          }

LABEL_183:
          v83 = 20;
          goto LABEL_192;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 84) |= 0x200u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_193;
      }

      while (1)
      {
        v85 = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v85 & 0x7F) << v18;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_143;
        }
      }

      v17 = [a2 hasError] ? 0 : v20;
LABEL_143:
      v83 = 56;
LABEL_192:
      *(a1 + v83) = v17;
LABEL_193:
      v84 = [a2 position];
    }

    while (v84 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unsigned int *VCAudioReceiver_CreateReceiver(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_CreateReceiver_cold_5();
      }
    }

    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x2928uLL, 0x10F0040C040CECCuLL);
  v3 = v2;
  if (!v2)
  {
    VCAudioReceiver_CreateReceiver_cold_4();
LABEL_61:
    VCAudioReceiver_Finalize(v3);
    return 0;
  }

  v2[206] = 2143289344;
  *(v2 + 617) = 0;
  memcpy(v2, a1, 0x1B8uLL);
  v4 = *(a1 + 232);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(v3 + 55) = v4;
  *(v3 + 75) = 0xFFFFFFFFLL;
  v3[148] = VCReporting_GetDynamicReportingModuleID();
  v3[234] = -1;
  *(v3 + 9180) = VCDefaults_GetBoolValueForKey(@"forceUseInternalRTPThreading", 0);
  v5 = *(a1 + 280);
  if (v5)
  {
    v5 = CFHash(v5);
  }

  *(v3 + 1148) = v5;
  *(v3 + 9192) = *(a1 + 300);
  *(v3 + 575) = *(a1 + 312);
  *(v3 + 576) = *(a1 + 328);
  *(v3 + 1154) = *(a1 + 344);
  v3[2601] = -1;
  *(v3 + 10512) = VCFeatureFlagManager_DetectInactiveAudioFramesACC24();
  v3[2631] = 0;
  if (v3 >= v3 + 2634)
  {
    goto LABEL_65;
  }

  _VCBoundsSafety_ReleaseAssignAndRetain(v3 + 1155, *(a1 + 352));
  _VCBoundsSafety_ReleaseAssignAndRetain(v3 + 73, *(a1 + 264));
  _VCBoundsSafety_ReleaseAssignAndRetain(v3 + 1161, *(a1 + 360));
  reportingInheritModuleSpecificInfoFromParent();
  *(v3 + 10528) = *(a1 + 435);
  v6 = *v3;
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 56);
    v9 = v3 + 14;
    while ((v8 - 6) < a1 + 232 && (v8 - 6) >= a1 + 8)
    {
      if (*(v8 - 37) == 1)
      {
        *(v3 + 4585) = v7;
      }

      if (v9 - 6 >= v3 + 29 || v9 - 6 < v3 + 1)
      {
        break;
      }

      *(v9 - 2) = v3;
      v11 = *(v8 - 4);
      if (v11)
      {
        v11 = CFRetain(v11);
        v6 = *v3;
      }

      *(v9 - 4) = v11;
      v12 = *v8;
      v8 += 7;
      *v9 = v12;
      v9 += 7;
      if (++v7 >= v6)
      {
        goto LABEL_22;
      }
    }

LABEL_65:
    __break(0x5519u);
  }

LABEL_22:
  if (*(v3 + 9180) == 1)
  {
    v13 = VCRealTimeThread_Initialize(21, _VCAudioReceiver_ReceiveProc, v3, "com.apple.avconference.audioreceiver.rtprecvproc", 0);
    *(v3 + 72) = v13;
    if (!v13)
    {
      VCAudioReceiver_CreateReceiver_cold_3();
      goto LABEL_61;
    }
  }

  pthread_mutex_init((v3 + 156), 0);
  pthread_mutex_init((v3 + 2262), 0);
  pthread_mutex_init((v3 + 172), 0);
  v14 = *(a1 + 298);
  v15 = *(a1 + 301);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v67 = v16;
  v63 = v16;
  v64 = v16;
  v65 = v16;
  v66 = v16;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  *v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  LODWORD(v63) = *(a1 + 244);
  BYTE4(v63) = *(a1 + 256) != 0;
  *(&v63 + 1) = *(v3 + 73);
  LOBYTE(v64) = *(a1 + 276);
  BYTE1(v64) = v14;
  BYTE2(v64) = v15;
  if (v63 == 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a1 + 252);
  }

  *(&v64 + 4) = __PAIR64__(*(a1 + 304), v17);
  *&v65 = *(v3 + 1155);
  DWORD2(v65) = v3[94];
  BYTE12(v65) = *(a1 + 302);
  if (v63 == 3)
  {
    v18 = *(a1 + 248);
  }

  else
  {
    v18 = 0;
  }

  if (*(a1 + 392))
  {
    v19 = 20;
  }

  else
  {
    v19 = 0;
  }

  *&v66 = __PAIR64__(v19, v18);
  DWORD2(v66) = *(a1 + 384);
  BYTE12(v66) = *(a1 + 296) == 1;
  BYTE13(v66) = *(a1 + 425);
  *&v67 = v3;
  *(&v67 + 1) = _VCAudioReceiver_DTMFEventCallback;
  LOBYTE(v68) = *(a1 + 426);
  BYTE1(v68) = *(a1 + 432);
  WORD1(v68) = *(a1 + 433);
  BYTE4(v68) = *(v3 + 10528);
  BYTE5(v68) = *(a1 + 436);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 352);
      *buf = 136315906;
      v37 = v20;
      v38 = 2080;
      v39 = "VCAudioReceiver_CreateReceiver";
      v40 = 1024;
      v41 = 284;
      v42 = 2048;
      v43 = v22;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Creating Audio Receiver with jbTargetEstimatorSynchronizer=%p", buf, 0x26u);
    }
  }

  if (*(v3 + 276) == 1)
  {
    v23 = v3[94];
    CFStringGetCStringPtr(*(v3 + 36), 0x8000100u);
    CFStringGetCStringPtr(*(v3 + 35), 0x8000100u);
    if (v23)
    {
      FourccToCStr(v3[94]);
      __sprintf_chk(v50, 0, 0xC8uLL, "session_%s-participant_%s-groupid_%s");
    }

    else
    {
      __sprintf_chk(v50, 0, 0xC8uLL, "session_%s-participant_%s");
    }
  }

  else
  {
    __sprintf_chk(v50, 0, 0xC8uLL, "%010u");
  }

  VCJitterBuffer_Create(v50);
  *(v3 + 56) = v24;
  if (!v24)
  {
    VCAudioReceiver_CreateReceiver_cold_2();
    goto LABEL_61;
  }

  *(v3 + 1139) = v3 + 2;
  if (*v3)
  {
    v25 = 0;
    v26 = (v3 + 2);
    while (1)
    {
      if (v26 >= v3 + 29 || v26 < v3 + 1)
      {
        goto LABEL_65;
      }

      if ((RTPSetAudioReceiver(*v26, v3) & 0x80000000) != 0)
      {
        break;
      }

      ++v25;
      v26 += 7;
      if (v25 >= *v3)
      {
        goto LABEL_52;
      }
    }

    VCAudioReceiver_CreateReceiver_cold_1();
    goto LABEL_61;
  }

LABEL_52:
  *(v3 + 1169) = 0;
  if (*(v3 + 380) == 1)
  {
    *(v3 + 1169) = VCAudioIssueDetector_Create(1u);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(v3 + 1169);
        *buf = 136316162;
        v37 = v27;
        v38 = 2080;
        v39 = "VCAudioReceiver_CreateReceiver";
        v40 = 1024;
        v41 = 306;
        v42 = 2048;
        v43 = v29;
        v44 = 2048;
        v45 = v3;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Audio issue detector=%p is created in audio receiver=%p", buf, 0x30u);
      }
    }
  }

  v3[2340] = v3[97];
  *(v3 + 10416) = *(a1 + 408);
  *(v3 + 1301) = 0;
  *(v3 + 1313) = micro();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v3 + 56);
      v33 = *(v3 + 148);
      v34 = *(a1 + 432);
      *buf = 136316674;
      v37 = v30;
      v38 = 2080;
      v39 = "VCAudioReceiver_CreateReceiver";
      v40 = 1024;
      v41 = 319;
      v42 = 2048;
      v43 = v3;
      v44 = 2048;
      v45 = v32;
      v46 = 1024;
      v47 = v33;
      v48 = 1024;
      v49 = v34;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Initialized AudioReceiver=%p with JitterBuffer=%p for direction=%d enableAACELDInactiveFrameDetection=%d", buf, 0x3Cu);
    }
  }

  return v3;
}

void _VCAudioReceiver_ReceiveProc(unsigned int *a1, unsigned int *a2, _BYTE *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 617) & 1) == 0)
  {
    v43[0] = 0;
    v43[1] = 0;
    memset(v42, 0, sizeof(v42));
    v6 = *a1;
    if (*a1)
    {
      v7 = (a1 + 2);
      v8 = v42;
      v9 = *a1;
      v10 = v43;
      do
      {
        if (v10 >= buf || v10 < v43)
        {
          goto LABEL_58;
        }

        *v10 = 48;
        v10 += 4;
        v11 = *v7;
        v7 += 7;
        *v8++ = v11;
        --v9;
      }

      while (v9);
      if (v6 >= 5)
      {
LABEL_58:
        __break(0x5519u);
      }
    }

    if ((RTPGetReceiveStatus(v42, v43, v6, *a2) & 0x80000000) != 0)
    {
      usleep(0x2710u);
      return;
    }

    if (!*a1)
    {
      return;
    }

    v12 = 0;
    v13 = 0;
    v40 = a1 + 2634;
    v39 = a1 + 2;
    v38 = a1 + 236;
    while (1)
    {
      v14 = v43 + 4 * v12;
      if (v14 >= buf || v14 < v43)
      {
        goto LABEL_58;
      }

      if ((*v14 & 0x10) != 0)
      {
        if (v40 <= a1)
        {
          goto LABEL_58;
        }

        if (*(a1 + 456) != 1)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          v13 = -2144862152;
          if (ErrorLogLevelForModule >= 3)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            v24 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            v13 = -2144862152;
            if (v24)
            {
              *buf = 136315650;
              v45 = v22;
              v46 = 2080;
              v47 = "_VCAudioReceiver_ProcessRTPPacket";
              v48 = 1024;
              v49 = 1349;
              _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d ERROR bad handle", buf, 0x1Cu);
              v13 = -2144862152;
            }
          }

          goto LABEL_47;
        }

        v16 = &v39[14 * v12];
        while (1)
        {
          v41 = 0;
          v17 = RTPRecvRTP(*v16, &v41);
          v18 = v17;
          *(a1 + 616) = 0;
          if ((v17 & 0x80000000) == 0)
          {
            _VCAudioReceiver_HandleRTPPacket(a1, v16, v41);
            RTPReleaseRTPPacket(*v16, &v41);
LABEL_31:
            v13 = v18;
            goto LABEL_32;
          }

          if ((v17 & 0x40000000) == 0)
          {
            break;
          }

          usleep(0x3A98u);
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v45 = v19;
              v46 = 2080;
              v47 = "_VCAudioReceiver_ProcessRTPPacket";
              v48 = 1024;
              v49 = 1376;
              v50 = 2048;
              v51 = a1;
              v52 = 1024;
              v53 = v18;
              _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Audio receiver %p RTPRecvRTP returned[%x] sleeping 15000usecs??", buf, 0x2Cu);
            }
          }
        }

        v13 = -2147418057;
        if (v17 != -2147418057)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v45 = v36;
              v46 = 2080;
              v47 = "_VCAudioReceiver_ProcessRTPPacket";
              v48 = 1024;
              v49 = 1379;
              v50 = 2048;
              v51 = a1;
              v52 = 1024;
              v53 = v18;
              _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d Audio receiver %p received an error %x", buf, 0x2Cu);
            }
          }

          goto LABEL_31;
        }
      }

LABEL_32:
      if (!v13)
      {
        if ((*v14 & 0x20) != 0)
        {
          if (v40 <= a1)
          {
            goto LABEL_58;
          }

          v25 = (a1[234] & 1) == 0;
          v26 = &v38[410 * ((a1[234] & 1) == 0)];
          v27 = *&v39[14 * v12];
          if (v26)
          {
            if (v26 >= (a1 + 1056) || v26 < v38)
            {
              goto LABEL_58;
            }

            v29 = RTPRecvRTCP(v27, &v38[410 * ((a1[234] & 1) == 0)]);
            if ((v29 & 0x80000000) == 0)
            {
              v30 = a1;
              v31 = &v39[14 * v12];
              v32 = v26;
LABEL_46:
              _VCAudioReceiver_ProcessAudioRTCPInternal(v30, v31, v32);
              RTCPCleanupPacketList(v26);
              v13 = 0;
              a1[234] = v25;
              goto LABEL_47;
            }
          }

          else
          {
            v29 = RTPRecvRTCP(v27, 0);
            if ((v29 & 0x80000000) == 0)
            {
              v30 = a1;
              v31 = &v39[14 * v12];
              v32 = 0;
              goto LABEL_46;
            }
          }

          v33 = v29;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v34 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v45 = v34;
              v46 = 2080;
              v47 = "_VCAudioReceiver_ProcessRTCPPacket";
              v48 = 1024;
              v49 = 2180;
              v50 = 1024;
              LODWORD(v51) = v33;
              _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d Failed to retrieve RTCP packet. Error:%x", buf, 0x22u);
            }
          }
        }

        v13 = 0;
      }

LABEL_47:
      if (++v12 >= *a1)
      {
        return;
      }
    }
  }

  *a3 = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v45 = v3;
      v46 = 2080;
      v47 = "_VCAudioReceiver_ReceiveProc";
      v48 = 1024;
      v49 = 2194;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Tearing down audio receiver thread", buf, 0x1Cu);
    }
  }
}

uint64_t _VCAudioReceiver_DTMFEventCallback(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 9232);
    if (v1)
    {
      return v1(*(result + 9200));
    }
  }

  return result;
}

void VCAudioReceiver_Finalize(unsigned int *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 55);
    if (v2)
    {
      CFRelease(v2);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v3;
        v18 = 2080;
        v19 = "VCAudioReceiver_Finalize";
        v20 = 1024;
        v21 = 368;
        v22 = 2048;
        v23 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Cleaning up audioReceiver (%p)", buf, 0x26u);
      }
    }

    if (*a1)
    {
      v5 = 0;
      v6 = (a1 + 6);
      do
      {
        if (v6 - 2 >= a1 + 29 || v6 - 2 < a1 + 1)
        {
          __break(0x5519u);
        }

        RTPSetAudioReceiver(*(v6 - 2), 0);
        if (*v6)
        {
          CFRelease(*v6);
        }

        ++v5;
        v6 += 7;
      }

      while (v5 < *a1);
    }

    pthread_mutex_lock((a1 + 172));
    if (*(a1 + 617) == 1)
    {
      pthread_mutex_unlock((a1 + 172));
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = v8;
          v18 = 2080;
          v19 = "_VCAudioReceiver_Lock";
          v20 = 1024;
          v21 = 332;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Receiver is being torn down", buf, 0x1Cu);
        }
      }
    }

    *(a1 + 617) = 1;
    pthread_mutex_unlock((a1 + 172));
    v10 = *(a1 + 1169);
    if (v10)
    {
      VCAudioIssueDetector_Stop(v10);
      VCAudioIssueDetector_Finalize(a1 + 1169);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 1169);
          *buf = 136316162;
          v17 = v11;
          v18 = 2080;
          v19 = "_VCAudioIssueDetectorStopAndFinalize";
          v20 = 1024;
          v21 = 123;
          v22 = 2048;
          v23 = v13;
          v24 = 2048;
          v25 = a1;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Audio issue detector=%p destroyed in audio receiver=%p", buf, 0x30u);
        }
      }

      *(a1 + 1169) = 0;
    }

    if (*(a1 + 9180) == 1)
    {
      VCRealTimeThread_Stop(*(a1 + 72));
      global_queue = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VCAudioReceiver_Finalize_block_invoke;
      block[3] = &__block_descriptor_tmp_20;
      block[4] = a1;
      dispatch_async(global_queue, block);
    }

    else
    {
      _VCAudioReceiver_UnregisterTransportCallbacks(a1);
      _VCAudioReceiver_Cleanup(a1);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_Finalize_cold_1();
    }
  }
}

void _VCAudioReceiver_Cleanup(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  _VCAudioReceiver_UnregisterReportingTask(a1);
  VCAudioDecoderList_Cleanup(a1 + 752);
  v2 = *(a1 + 9240);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 9240) = 0;
  }

  v3 = *(a1 + 9288);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 9288) = 0;
  }

  v4 = *(a1 + 10448);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 10448) = 0;
  }

  if (*(a1 + 10472))
  {
    VCOverlayManager_releaseOverlaySourceWithToken(*(a1 + 10464), 0);
    v5 = *(a1 + 10472);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 10472) = 0;
    }
  }

  VCJitterBuffer_Finalize(*(a1 + 448));
  VCAudioDump_Finalize((a1 + 10408));
  pthread_mutex_destroy((a1 + 624));
  pthread_mutex_destroy((a1 + 9048));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "_VCAudioReceiver_Cleanup";
      v12 = 1024;
      v13 = 357;
      v14 = 2048;
      v15 = a1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d VCAudioReceiver cleanup DONE (%p)", &v8, 0x26u);
    }
  }

  free(a1);
}

uint64_t _VCAudioReceiver_UnregisterTransportCallbacks(uint64_t result)
{
  if (*(result + 9181) == 1)
  {
    v1 = result;
    if (*result)
    {
      v2 = 0;
      v3 = result + 8;
      v4 = result + 232;
      v5 = result + 8;
      while (v5 < v4 && v5 >= v3)
      {
        RTPUnregisterPacketCallback();
        v5 += 56;
        result = RTCPUnregisterPacketCallback();
        if (++v2 >= *v1)
        {
          goto LABEL_7;
        }
      }

      __break(0x5519u);
    }

    else
    {
LABEL_7:
      *(v1 + 9181) = 0;
    }
  }

  return result;
}

void _VCAudioReceiver_StartIssueDetector(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 464);
  v3 = *(a1 + 584);
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v3;
  WORD1(v8[0]) = v2;
  LOWORD(v8[0]) = *(a1 + 504);
  v4 = *(a1 + 9360);
  v9 = *(a1 + 592);
  v10 = v4;
  VCAudioIssueDetector_Configure(*(a1 + 9352), v8);
  VCAudioIssueDetector_Start(*(a1 + 9352));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 9352);
      *buf = 136316674;
      v12 = v5;
      v13 = 2080;
      v14 = "_VCAudioReceiver_StartIssueDetector";
      v15 = 1024;
      v16 = 405;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = a1;
      v21 = 1024;
      v22 = WORD1(v8[0]);
      v23 = 1024;
      v24 = LOWORD(v8[0]);
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Audio issue detector=%p is configured in audioReceiver=%p with audioIOSampleRate=%d, audioIOSampleCount=%d", buf, 0x3Cu);
    }
  }
}

uint64_t VCAudioReceiver_Start(unsigned int *a1, double a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioReceiver_Start_cold_4();
    }

    return 0;
  }

  if (*(a1 + 148) != 1 && (a1[114] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioReceiver_Start_cold_1();
    }

    return 0;
  }

  LODWORD(a2) = a1[126];
  v3 = *&a2 / *(a1 + 58);
  v4 = *(a1 + 30);
  v15 = *(a1 + 29);
  v16 = v4;
  v17 = *(a1 + 31);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18 = @"AudioReceiverDelay";
  LODWORD(v19) = vcvtpd_u64_f64(*(a1 + 1307) / v3);
  v20 = 32;
  if ((VCAudioFrameDelay_Create(*MEMORY[0x1E695E480], &v15, a1 + 1306) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioReceiver_Start_cold_2();
    }

    return 0;
  }

  *(a1 + 64) = 0x7FF8000000000000;
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *(a1 + 130) = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a1 + 67) = v7;
  *(a1 + 34) = v6;
  *(a1 + 70) = v7;
  if (*(a1 + 73))
  {
    v8 = CFPreferencesCopyAppValue(@"forceNOLOG", @"com.apple.VideoConference");
    if (v8)
    {
      CFRelease(v8);
    }

    else
    {
      Handle = CreateHandle();
      if (Handle != 0xFFFFFFFFLL)
      {
        v11 = Handle;
        v12 = (Handle + 4);
        *(a1 + 75) = Handle;
        VCJitterBuffer_ResetPlaybackReportingMetrics(*(a1 + 56));
        v21[0] = 0;
        v21[1] = v21;
        v21[2] = 0x2000000000;
        v21[3] = *(a1 + 73);
        *&v15 = MEMORY[0x1E69E9820];
        *(&v15 + 1) = 0x40000000;
        *&v16 = ___VCAudioReceiver_RegisterReportingTask_block_invoke;
        *(&v16 + 1) = &unk_1E85F9B98;
        v18 = v12;
        v19 = v11;
        *&v17 = v21;
        *(&v17 + 1) = v11;
        reportingRegisterPeriodicTask();
        _Block_object_dispose(v21, 8);
      }
    }
  }

  if (*(a1 + 1169))
  {
    _VCAudioReceiver_StartIssueDetector(a1);
  }

  _VCAudioReceiver_RegisterStatistics(a1);
  if (!*(a1 + 1309) && VCOverlayManager_isOverlayEnabled())
  {
    *(a1 + 1309) = VCOverlayManager_createOverlaySourceForToken(*(a1 + 1308), 0);
  }

  if (*(a1 + 9180) != 1)
  {
    if (*(a1 + 9181))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioReceiver_Start_cold_3();
        }
      }
    }

    else
    {
      result = 1;
      *(a1 + 9181) = 1;
      if (!*a1)
      {
        return result;
      }

      v13 = 0;
      v14 = (a1 + 2);
      do
      {
        if (v14 >= a1 + 29 || v14 < a1 + 1)
        {
          __break(0x5519u);
        }

        RTPRegisterPacketCallback(*v14, v14, &__block_literal_global_109);
        RTCPRegisterPacketCallback(*v14, v14, &__block_literal_global_23);
        ++v13;
        v14 += 7;
      }

      while (v13 < *a1);
    }

    return 1;
  }

  if (VCRealTimeThread_Start(*(a1 + 72)))
  {
    return 1;
  }

  result = *(a1 + 1306);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a1 + 1306) = 0;
  }

  return result;
}

void _VCAudioReceiver_RegisterStatistics(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 393) == 1)
  {
    if (*(a1 + 10404) != -1)
    {
      _VCAudioReceiver_UnregisterStatistics(a1);
    }

    v2 = *(a1 + 9288);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___VCAudioReceiver_RegisterStatistics_block_invoke;
    v7[3] = &__block_descriptor_tmp_17;
    v7[4] = a1;
    *(a1 + 10404) = VCRateControlRegisterStatisticsChangeHandler(v2, 11, v7);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 9288);
        v6 = *(a1 + 10404);
        *buf = 136316418;
        v9 = v3;
        v10 = 2080;
        v11 = "_VCAudioReceiver_RegisterStatistics";
        v12 = 1024;
        v13 = 169;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = v5;
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] Registered statisticsCollector[%p] with index=%d", buf, 0x36u);
      }
    }
  }
}

void VCAudioReceiver_Stop(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 9352);
    if (v2)
    {
      VCAudioIssueDetector_Stop(v2);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 9352);
          v7 = 136316162;
          v8 = v3;
          v9 = 2080;
          v10 = "VCAudioReceiver_Stop";
          v11 = 1024;
          v12 = 459;
          v13 = 2048;
          v14 = v5;
          v15 = 2048;
          v16 = a1;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Audio issue detector=%p is stopped in audio receiver=%p", &v7, 0x30u);
        }
      }
    }

    _VCAudioReceiver_UnregisterStatistics(a1);
    if (*(a1 + 9180) == 1)
    {
      VCRealTimeThread_Stop(*(a1 + 576));
    }

    else
    {
      _VCAudioReceiver_UnregisterTransportCallbacks(a1);
    }

    if (*(a1 + 10408))
    {
      VCAudioDump_Finalize((a1 + 10408));
      free(*(a1 + 10408));
      *(a1 + 10408) = 0;
    }

    _VCAudioReceiver_UnregisterReportingTask(a1);
    v6 = *(a1 + 10448);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 10448) = 0;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_Stop_cold_1();
    }
  }
}

void _VCAudioReceiver_UnregisterStatistics(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 10404);
  if (v1 != -1)
  {
    VCRateControlUnregisterStatisticsChangeHandler(*(a1 + 9288), 11, v1);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 9288);
        v6 = *(a1 + 10404);
        v7 = 136316418;
        v8 = v3;
        v9 = 2080;
        v10 = "_VCAudioReceiver_UnregisterStatistics";
        v11 = 1024;
        v12 = 156;
        v13 = 2048;
        v14 = a1;
        v15 = 2048;
        v16 = v5;
        v17 = 1024;
        v18 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] Unregistered statisticsCollector[%p] with index=%d", &v7, 0x36u);
      }
    }

    *(a1 + 10404) = -1;
  }
}

void _VCAudioReceiver_UnregisterReportingTask(uint64_t a1)
{
  if (*(a1 + 584))
  {
    if (CheckInHandleDebug())
    {
      CheckOutHandleDebug();
    }

    if ((reportingUnregisterPeriodicTask() & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioReceiver_UnregisterReportingTask_cold_1();
      }
    }

    reportingCacheModuleSpecificInfo();
    v2 = *(a1 + 584);
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 584) = 0;
    *(a1 + 600) = 0xFFFFFFFFLL;
  }
}

void VCAudioReceiver_Reset(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 512) = 0x7FF8000000000000;
    v1 = MEMORY[0x1E6960C70];
    *(a1 + 520) = *MEMORY[0x1E6960C70];
    *(a1 + 536) = *(v1 + 16);
    VCJitterBuffer_Reset(*(a1 + 448));
  }
}

double VCAudioReceiver_GetLatestAudioTimestamp(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 512);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_GetLatestAudioTimestamp_cold_1();
    }
  }

  return NAN;
}

__CFString *_VCAudioReceiver_CreateStringForPayloadData(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  for (i = 0; i != 128; ++i)
  {
    v4 = *(a1 + 9880 + 4 * i);
    if (v4)
    {
      CFStringAppendFormat(Mutable, 0, @"%d=%d;", i, v4);
    }
  }

  return Mutable;
}

void VCAudioReceiver_FlushQueues(uint64_t a1)
{
  if (a1)
  {
    VCJitterBuffer_Flush(*(a1 + 448));
  }
}

uint64_t VCAudioReceiver_SetupDecoders(uint64_t a1, uint64_t a2, int a3, __int128 *a4, int a5)
{
  v90 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_SetupDecoders_cold_3();
      }
    }

    goto LABEL_45;
  }

  pthread_mutex_lock((a1 + 624));
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v10 = *a4;
  v11 = a4[1];
  v63 = -1431655766;
  v64 = v10;
  v61 = a2;
  v62 = a3;
  v12 = a4[2];
  v65 = v11;
  v66 = v12;
  LODWORD(v67) = a5;
  BYTE4(v67) = *(a1 + 409);
  BYTE5(v67) = *(a1 + 424);
  v13 = MEMORY[0x1E6986658];
  if (*MEMORY[0x1E6986658] == 1)
  {
    VCAudioReceiver_SetupDecoders_cold_1();
  }

  v14 = (a1 + 752);
  v15 = VCAudioDecoderList_Setup(a1 + 752, &v61);
  v16 = v15;
  if (*v13 == 1)
  {
    VCAudioReceiver_SetupDecoders_cold_2();
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  if (v15 < 0)
  {
LABEL_44:
    pthread_mutex_unlock((a1 + 624));
LABEL_45:
    v55 = 0;
    return v55 & 1;
  }

LABEL_6:
  v57 = a2;
  v58 = a4;
  v17 = MEMORY[0x1E6986650];
  if (*(a1 + 760))
  {
    v18 = 0;
    v19 = 0;
    v20 = *MEMORY[0x1E695E480];
    v59 = *MEMORY[0x1E695E480];
    do
    {
      v21 = (*v14 + v18);
      v22 = *(v21 + 1);
      if (!v22)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *v17;
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *v21;
            *buf = 136315906;
            v69 = v38;
            v70 = 2080;
            v71 = "_VCAudioReceiver_LogDecoderConfigurations";
            v72 = 1024;
            v73 = 832;
            v74 = 1024;
            LODWORD(v75) = v40;
            _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d SoundDec_Create NOT called for payload=%u", buf, 0x22u);
          }
        }

        goto LABEL_22;
      }

      v23 = VCSoundDec_CopyDescription(v20, v22);
      v24 = *(a1 + 276);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v24)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *v17;
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v17;
            v29 = *(a1 + 409);
            v30 = *v21;
            v31 = *(a1 + 276);
            v60 = *(a1 + 296);
            v32 = FourccToCStr(*(a1 + 376));
            v33 = *(a1 + 280);
            v34 = *(a1 + 288);
            *buf = 136317698;
            v69 = v26;
            v70 = 2080;
            v71 = "_VCAudioReceiver_LogDecoderConfigurations";
            v72 = 1024;
            v73 = 841;
            v74 = 2112;
            v75 = v23;
            v76 = 1024;
            v77 = v29;
            v17 = v28;
            v14 = (a1 + 752);
            v78 = 1024;
            v79 = v30;
            v80 = 1024;
            v81 = v31;
            v20 = v59;
            v82 = 1024;
            v83 = v60;
            v84 = 2080;
            v85 = v32;
            v86 = 2112;
            v87 = v33;
            v88 = 2112;
            v89 = v34;
            v35 = v27;
            v36 = "VCAudioReceiver [%s] %s:%d SoundDec_Create yielded instance=%@ outOfProcess=%{BOOL}d payload=%u for multiwayMode=%{BOOL}d direction=%hu streamGroupID=%s participantID=%@ sessionID=%@";
            v37 = 92;
LABEL_19:
            _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
          }
        }
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a1 + 409);
          v44 = *v21;
          v45 = *(a1 + 276);
          *buf = 136316674;
          v69 = v41;
          v70 = 2080;
          v71 = "_VCAudioReceiver_LogDecoderConfigurations";
          v72 = 1024;
          v73 = 837;
          v74 = 2112;
          v75 = v23;
          v76 = 1024;
          v77 = v43;
          v78 = 1024;
          v79 = v44;
          v80 = 1024;
          v81 = v45;
          v35 = v42;
          v36 = "VCAudioReceiver [%s] %s:%d SoundDec_Create yielded instance=%@ outOfProcess=%{BOOL}d payload=%u for multiwayMode=%{BOOL}d";
          v37 = 56;
          goto LABEL_19;
        }
      }

      if (v23)
      {
        CFRelease(v23);
      }

LABEL_22:
      ++v19;
      v18 += 40;
    }

    while (v19 < *(a1 + 760));
  }

  if (v57)
  {
    *(a1 + 10420) = *v57;
    *(a1 + 10424) = *(v57 + 16);
    *(a1 + 10425) = *(v57 + 36);
    *(a1 + 10432) = v58;
    *(a1 + 10408) = VCAudioDump_Create(2u, a1 + 10416);
    v14 = (a1 + 752);
    VCJitterBuffer_SetPayloadInfo(*(a1 + 448), a1 + 10416);
  }

  v46 = VCJitterBuffer_InitializePlayback(*(a1 + 448), v58);
  *(a1 + 456) = v46 >= 0;
  if (v46 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v51 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v69 = v50;
        v70 = 2080;
        v71 = "VCAudioReceiver_SetupDecoders";
        v72 = 1024;
        v73 = 889;
        v74 = 2048;
        v75 = a1;
        v76 = 1024;
        v77 = v46;
        _os_log_error_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d Failed to initialize audio receiver (%p) playback, result=%X.", buf, 0x2Cu);
      }
    }

    VCAudioDecoderList_Cleanup(v14);
    pthread_mutex_unlock((a1 + 624));
    v49 = 3;
  }

  else
  {
    v47 = *v58;
    v48 = v58[2];
    *(a1 + 480) = v58[1];
    *(a1 + 496) = v48;
    *(a1 + 464) = v47;
    pthread_mutex_unlock((a1 + 624));
    if (*(a1 + 456))
    {
      v49 = 7;
    }

    else
    {
      v49 = 3;
    }
  }

  if (v49 <= VRTraceGetErrorLogLevelForModule())
  {
    v52 = VRTraceErrorLogLevelToCSTR();
    v53 = *v17;
    v54 = *v17;
    if (v49 > 4)
    {
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v69 = v52;
        v70 = 2080;
        v71 = "VCAudioReceiver_SetupDecoders";
        v72 = 1024;
        v73 = 896;
        v74 = 2048;
        v75 = a1;
        v76 = 1024;
        v77 = v46;
        _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Done updating audio receiver (%p) decoders. Status=%X", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v69 = v52;
      v70 = 2080;
      v71 = "VCAudioReceiver_SetupDecoders";
      v72 = 1024;
      v73 = 896;
      v74 = 2048;
      v75 = a1;
      v76 = 1024;
      v77 = v46;
      _os_log_error_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d Done updating audio receiver (%p) decoders. Status=%X", buf, 0x2Cu);
    }
  }

  v55 = *(a1 + 456);
  return v55 & 1;
}

void VCAudioReceiver_RegisterCodecRateModeRequestCallback(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a1)
  {
    *(a1 + 872) = a2;
    v3 = *a3;
    *(a1 + 896) = *(a3 + 2);
    *(a1 + 880) = v3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_RegisterCodecRateModeRequestCallback_cold_1();
    }
  }
}

void VCAudioReceiver_RegisterActiveAudioStreamRequestCallback(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a1)
  {
    *(a1 + 904) = a2;
    v3 = *a3;
    *(a1 + 928) = *(a3 + 2);
    *(a1 + 912) = v3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_RegisterActiveAudioStreamRequestCallback_cold_1();
    }
  }
}

void VCAudioReceiver_ResetLagReference(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    VCJitterBuffer_ResetLagReference(*(a1 + 448));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v1 = VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315650;
        v4 = v1;
        v5 = 2080;
        v6 = "VCAudioReceiver_ResetLagReference";
        v7 = 1024;
        v8 = 995;
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Force to reset audio jitter buffer lag reference", &v3, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_ResetLagReference_cold_1();
    }
  }
}

float VCAudioReceiver_GetOWRD(uint64_t a1)
{
  if (a1)
  {
    return VCJitterBuffer_GetOWRD(*(a1 + 448));
  }

  else
  {
    return NAN;
  }
}

float VCAudioReceiver_GetAverageInterarrivalTimeForWindow(uint64_t a1)
{
  if (a1)
  {
    return VCJitterBuffer_GetAverageJitter(*(a1 + 448));
  }

  else
  {
    return NAN;
  }
}

void VCAudioReceiver_UpdateCellTech(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a3 | a2;
    VCJitterBuffer_SetNetworkType(*(a1 + 448), (a3 | a2) != 0, a2, a3);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "VCAudioReceiver_UpdateCellTech";
        v12 = 1024;
        v13 = 1014;
        v14 = 1024;
        v15 = v5 != 0;
        v16 = 1024;
        v17 = a2;
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d JB: Updated CellTech isCellular[%d] LocalCellTech:%d, RemoteCellTech=%d", &v8, 0x2Eu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_UpdateCellTech_cold_1();
    }
  }
}

uint64_t VCAudioReceiver_GetActiveStreamId(uint64_t a1, _WORD *a2)
{
  if (a1 && a2)
  {
    pthread_mutex_lock((a1 + 9048));
    v4 = *(a1 + 9112);
    if (v4)
    {
      *a2 = *(v4 + 8);
      pthread_mutex_unlock((a1 + 9048));
      return 0;
    }

    pthread_mutex_unlock((a1 + 9048));
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_GetActiveStreamId_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_GetActiveStreamId_cold_1();
    }
  }

  return 1;
}

float VCAudioReceiver_GetPercentPacketsLateAndMissing(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 448);

    return VCJitterBuffer_GetPercentPacketLateAndMissing(v2);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_GetPercentPacketsLateAndMissing_cold_1();
      }
    }

    return NAN;
  }
}

uint64_t VCAudioReceiver_PullAudioSamples(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 0u;
  v33 = 1;
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  if (!a1 || (*(a1 + 456) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_PullAudioSamples_cold_2();
      }
    }

    goto LABEL_13;
  }

  v15 = SampleCount;
  pthread_mutex_lock((a1 + 688));
  if (*(a1 + 617) == 1)
  {
    pthread_mutex_unlock((a1 + 688));
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v16;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VCAudioReceiver_Lock";
        HIWORD(buf.epoch) = 1024;
        v35 = 332;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Receiver is being torn down", &buf, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v18;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "VCAudioReceiver_PullAudioSamples";
        HIWORD(buf.epoch) = 1024;
        v35 = 1091;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d VCAudioReceiver_PullAudioSamples: Failed to grab the lock", &buf, 0x1Cu);
      }
    }

LABEL_13:
    VCAudioBufferList_ZeroMemory(a2);
    return 0;
  }

  if (a4)
  {
    *a4 = *(a1 + 512);
  }

  if (*(a1 + 9296) == 1)
  {
    v21 = *(a1 + 512);
    if (v21 > *(a1 + 9344))
    {
      ++*(a1 + 9312);
      *(a1 + 9344) = v21;
    }
  }

  MaxPlaybackSizeSamples = VCJitterBuffer_GetMaxPlaybackSizeSamples(*(a1 + 448));
  if (v15 && v15 < MaxPlaybackSizeSamples - 2 * *(a1 + 504))
  {
    v30 = 0;
    v23 = *(a1 + 10448);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = __VCAudioReceiver_PullAudioSamples_block_invoke;
    v28[3] = &__block_descriptor_tmp_12_0;
    v28[4] = a1;
    v29 = v15;
    VCAudioFrameDelay_PullAudioSamples(v23, a2, &v30, v28);
    v24 = v30;
    if (!v30)
    {
      v24 = &v31;
    }

    v30 = v24;
    result = kdebug_trace();
    if (a5)
    {
      v25 = *(v30 + 21);
      if (*(a5 + 8) >= v25)
      {
        if (v25 > 0x10)
        {
          __break(0x5519u);
          return result;
        }

        memcpy(*a5, v30 + 5, v25);
        *(a5 + 16) = *(v30 + 21);
      }
    }

    VCAudioBufferList_InvalidateAveragePower(a2);
    VCAudioBufferList_SetVoiceActivity(a2, *(v30 + 7) == 0);
    if (*(v30 + 4) == 1)
    {
      memset(&buf, 170, sizeof(buf));
      _VCAudioReceiver_ComputeExtendedTimestamp(a1, *v30, &buf);
      VCAudioBufferList_SetNetworkTimestamp(a2, &buf.value);
    }

    if (a6)
    {
      *a6 = *(v30 + 6) != 0;
    }

    if (a7)
    {
      *a7 = VCJitterBuffer_GetTargetTime(*(a1 + 448));
    }

    if (a4)
    {
      *a4 = *(a1 + 512);
    }

    if (a3)
    {
      *a3 = *v30;
    }

    v26 = micro();
    if (*(a1 + 4224) == 0.0)
    {
      *(a1 + 4224) = v26;
    }

    v27 = *(a1 + 9128);
    if (v27 != 0.0)
    {
      if (v26 - v27 < 1.0)
      {
LABEL_45:
        VCAudioReceiver_UpdateStallMetrics(a1, v26);
        pthread_mutex_unlock((a1 + 688));
        if (*(a1 + 9352))
        {
          buf.value = 0xAAAAAAAAAAAAAAAALL;
          *&buf.timescale = -1431655766;
          buf.epoch = 0xAAAAAAAAAAAAAAAALL;
          VCJitterBuffer_GetLastDecodedAudioFrameInfo(*(a1 + 448), &buf);
          VCAudioIssueDetector_ProcessFrame(*(a1 + 9352), &buf);
          *(a1 + 10396) = LOWORD(buf.epoch);
        }

        return 1;
      }

      _VCAudioReceiver_UpdateStatisticsCollectorWithAudioErasure(a1, v26);
    }

    *(a1 + 9128) = v26;
    goto LABEL_45;
  }

  pthread_mutex_unlock((a1 + 688));
  VCAudioBufferList_ZeroMemory(a2);
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (result)
  {
    VCAudioReceiver_PullAudioSamples_cold_1();
    return 0;
  }

  return result;
}

CMTime *_VCAudioReceiver_ComputeExtendedTimestamp@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, CMTime *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 520);
  v7 = HIDWORD(v6);
  if (v6 <= a2)
  {
    if (v6 < a2 && v6 - a2 <= 0x7FFFFFFE)
    {
      v7 += 0xFFFFFFFFLL;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v12;
          v16 = 2080;
          v17 = "_VCAudioReceiver_ComputeExtendedTimestamp";
          v18 = 1024;
          v19 = 1268;
          v20 = 2048;
          v21 = a1;
          v10 = "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] Detected misordered packet during timestamp rollover";
          goto LABEL_13;
        }
      }
    }
  }

  else if (a2 - v6 <= 0x7FFFFFFE)
  {
    ++v7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v8;
        v16 = 2080;
        v17 = "_VCAudioReceiver_ComputeExtendedTimestamp";
        v18 = 1024;
        v19 = 1263;
        v20 = 2048;
        v21 = a1;
        v10 = "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] Detected timestamp rollover";
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0x26u);
      }
    }
  }

  return CMTimeMake(a3, a2 | (v7 << 32), *(a1 + 464));
}

uint64_t _VCAudioReceiver_UpdateStatisticsCollectorWithAudioErasure(uint64_t result, double a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(result + 9288);
  if (v2)
  {
    v4 = result;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    VCJitterBuffer_GetWRMReportingMetrics(*(result + 448), &v18);
    v5 = *(v4 + 9248);
    v6 = 0.0;
    if (v18 != v5)
    {
      v6 = (*(v4 + 9260) + DWORD2(v18) - (HIDWORD(v18) + *(v4 + 9256))) / (v18 - v5);
    }

    if ((*(v4 + 10480) & 1) == 0)
    {
      v7 = v6 + *(v4 + 10488);
      *(v4 + 10488) = v7;
      v8 = *(v4 + 10496) + 1;
      *(v4 + 10496) = v8;
      if (*(v4 + 584))
      {
        v9 = *(v4 + 428);
        if (v9)
        {
          if (v8)
          {
            v10 = *(v4 + 10504);
            if (v10 != 0.0 && a2 - v10 >= 5.0)
            {
              v11 = (v7 * 10000.0 / v8);
              if (v9 <= v11)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 6)
                {
                  v12 = VRTraceErrorLogLevelToCSTR();
                  v13 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v14 = *(v4 + 428);
                    *buf = 136316418;
                    v22 = v12;
                    LOWORD(v23) = 2080;
                    *(&v23 + 2) = "_VCAudioReceiver_CheckAndReportRegressedAudioErasuresPercentage";
                    WORD5(v23) = 1024;
                    HIDWORD(v23) = 665;
                    *v24 = 2048;
                    *&v24[2] = v4;
                    *&v24[10] = 1024;
                    v25 = *&v11;
                    LOWORD(v26) = 1024;
                    *(&v26 + 2) = v14;
                    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] AudioErasurePercentage=%d >= AudioErasurePercentageReportingThreshold=%d", buf, 0x32u);
                  }
                }

                reportingSymptom();
                *(v4 + 10480) = 1;
              }
            }
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioReceiver_UpdateStatisticsCollectorWithAudioErasure_cold_1();
        }
      }
    }

    *&v23 = 0;
    v22 = 0;
    *(&v23 + 1) = 0x600000000;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v6;
    v16 = *(v4 + 400);
    *buf = 10;
    memset(v24, 0, sizeof(v24));
    v25 = v15;
    v29 = v16;
    result = VCRateControlSetStatistics(v2, buf);
    v17 = v19;
    *(v4 + 9248) = v18;
    *(v4 + 9264) = v17;
    *(v4 + 9280) = v20;
  }

  return result;
}

void VCAudioReceiver_UpdateStallMetrics(uint64_t a1, double a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 - *(a1 + 512) <= 0.5)
  {
    if ((*(a1 + 9296) & 1) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 9296) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 512);
        v12 = 136316162;
        v13 = v4;
        v14 = 2080;
        v15 = "VCAudioReceiver_UpdateStallMetrics";
        v16 = 1024;
        v17 = 1204;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = a2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Entering short media stall lastReceivedPacketTime=%f, currentTime=%f", &v12, 0x30u);
      }
    }

    *(a1 + 9304) = a2;
    *(a1 + 9344) = *(a1 + 512);
    *(a1 + 9296) = 1;
    *(a1 + 9312) = 0;
    return;
  }

  if (*(a1 + 9312) >= 6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 512);
        v10 = *(a1 + 9312);
        v12 = 136316418;
        v13 = v7;
        v14 = 2080;
        v15 = "VCAudioReceiver_UpdateStallMetrics";
        v16 = 1024;
        v17 = 1211;
        v18 = 2048;
        v19 = v9;
        v20 = 2048;
        v21 = a2;
        v22 = 1024;
        v23 = v10;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Leaving short media stall lastReceivedPacketTime=%f, currentTime=%f, packetCount=%d", &v12, 0x36u);
      }
    }

    v11 = a2 - *(a1 + 9304) + 0.5;
    *(a1 + 9320) = *(a1 + 9320) + v11;
    if (*(a1 + 9328) > v11)
    {
      v11 = *(a1 + 9328);
    }

    *(a1 + 9328) = v11;
    ++*(a1 + 9336);
    *(a1 + 9304) = 0;
    *(a1 + 9344) = 0;
    *(a1 + 9296) = 0;
  }
}

void VCAudioReceiver_CollectChannelMetrics(uint64_t a1, _DWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a2 = *(a1 + 4232);
    a2[6] = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 9176);
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "VCAudioReceiver_CollectChannelMetrics";
        v10 = 1024;
        v11 = 1199;
        v12 = 2048;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] PullAudioSamples count:%u", &v6, 0x2Cu);
      }
    }
  }
}

void VCAudioReceiver_DiscardQueueExcess(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 448);

    VCJitterBuffer_DiscardQueueExcess(v2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_DiscardQueueExcess_cold_1();
    }
  }
}

uint64_t _VCAudioReceiver_SetActiveStream(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = (result + 0x2000);
  if (*(result + 9112) != a2)
  {
    v6 = result;
    pthread_mutex_lock((result + 9048));
    *(v6 + 1139) = a2;
    result = pthread_mutex_unlock((v6 + 2262));
    v4[464] = v4[465] - *(a3 + 14) + 1;
    v4[424] = 0;
    if (*(v6 + 276) == 1)
    {
      v7 = *(v6 + 113);
      if (v7)
      {
        result = *(v6 + 114);
        if (result)
        {
          result = v7(result, *(a2 + 8));
        }
      }

      v8 = *v6;
      if (v8)
      {
        v9 = 0;
        v10 = v6 + 2;
        v11 = v6 + 58;
        v12 = v6 + 2;
        do
        {
          if (v12 != a2)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                if (v12 >= v11 || v12 < v10)
                {
LABEL_19:
                  __break(0x5519u);
                }

                v15 = *(v12 + 4);
                *buf = 136316162;
                v18 = v13;
                v19 = 2080;
                v20 = "_VCAudioReceiver_SetActiveStream";
                v21 = 1024;
                v22 = 1248;
                v23 = 2048;
                v24 = v6;
                v25 = 1024;
                v26 = v15;
                _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] resetting non target stream %d", buf, 0x2Cu);
              }
            }

            if (v12 >= v11 || v12 < v10)
            {
              goto LABEL_19;
            }

            result = RTPResetHandle();
            v8 = *v6;
          }

          ++v9;
          v12 += 14;
        }

        while (v9 < v8);
      }
    }
  }

  v16 = v4[464] + *(a3 + 14);
  *(a3 + 14) = v16;
  v4[465] = v16;
  return result;
}

uint64_t VCAudioReceiver_CalculateBurstLoss(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1 + 0x2000;
  v4 = *(a1 + 9040);
  v5 = 0;
  if (*(a1 + 9040))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (*(v3 + 850) % 0x12Cu + 300);
    v10 = a1 + 4240;
    do
    {
      v11 = v10 + 16 * (v9 - 300 * (((458129845 * v9) >> 37) + ((458129845 * v9) >> 63)));
      if (v10 > v11 || v11 + 16 > v3 + 848)
      {
LABEL_27:
        __break(0x5519u);
      }

      if (*(v11 + 13) == 1)
      {
        if (v6)
        {
          if (v6 + 16 > v7 || v8 > v6)
          {
            goto LABEL_27;
          }

          if (*(v6 + 8) - (*(v11 + 8) + *v11) > v5 && (*(v6 + 12) & 1) == 0 && !*(v11 + 12))
          {
            v5 = *(v6 + 8) - (*(v11 + 8) + *v11);
          }

          v7 = v3 + 848;
          v8 = a1 + 4240;
          if ((v5 / *(a1 + 464) * 1000.0) > 0x1388)
          {
            break;
          }
        }

        else
        {
          v7 = v3 + 848;
          v8 = a1 + 4240;
        }
      }

      else
      {
        v11 = v6;
      }

      --v9;
      v6 = v11;
      --v4;
    }

    while (v4);
  }

  LODWORD(v1) = vcvtad_u64_f64((v5 / *(a1 + 464) * 1000.0) / 20.0);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v15 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 464);
        v19 = 136316418;
        v20 = v13;
        v21 = 2080;
        v22 = "VCAudioReceiver_CalculateBurstLoss";
        v23 = 1024;
        v24 = 1631;
        v25 = 1024;
        v26 = v5;
        v27 = 1024;
        v28 = v1;
        v29 = 2048;
        v30 = v16;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Calculated maxBurstLoss in samples: %u, in 20ms blocks: %u, sampleRate: %f", &v19, 0x32u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 464);
      v19 = 136316418;
      v20 = v13;
      v21 = 2080;
      v22 = "VCAudioReceiver_CalculateBurstLoss";
      v23 = 1024;
      v24 = 1631;
      v25 = 1024;
      v26 = v5;
      v27 = 1024;
      v28 = v1;
      v29 = 2048;
      v30 = v18;
      _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d Calculated maxBurstLoss in samples: %u, in 20ms blocks: %u, sampleRate: %f", &v19, 0x32u);
    }
  }

  return v1;
}

void _VCAudioReceiver_SplitRedPacket(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v7 = VCAudioRedBuilder_SplitRedAudioPacket(*a2, a3, v11, 4, *(a1 + 464), *(a1 + 260));
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = v11;
    while (1)
    {
      v10 = VCJitterBuffer_AudioPacketAlloc(*(a1 + 448));
      AudioPacket_initNewPacket(a3, v10);
      if (v9 && (v9 >= v12 || v9 < v11))
      {
        __break(0x5519u);
      }

      if (!VCAudioRedBuilder_UpdateAudioPacketWithRedPayload(v10, v9))
      {
        break;
      }

      AudioPacketArray_Append(a4, v10);
      v9 += 8;
      if (!--v8)
      {
        goto LABEL_12;
      }
    }

    VCJitterBuffer_AudioPacketFree(*(a1 + 448), v10);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioReceiver_SplitRedPacket_cold_1();
      }
    }
  }

LABEL_12:
  VCJitterBuffer_AudioPacketFree(*(a1 + 448), a3);
}

void _VCAudioReceiver_SplitEVSPacket(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 276))
  {
    goto LABEL_2;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v32 = 0;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = a2 + 11;
  LODWORD(v12) = a2[379];
  if (!VCAudioDecoderList_GetSpeechCodecBundleData(a1 + 752, a2[6], a2[7], &v11) || !DWORD2(v13) || (BYTE4(v14) & 1) == 0)
  {
    goto LABEL_2;
  }

  v6 = WORD4(v14);
  v7 = HIDWORD(v14);
  v8 = VCJitterBuffer_AudioPacketAlloc(*(a1 + 448));
  AudioPacket_initNewPacket(a2, v8);
  v8[12] = 1;
  v8[1848] = 1;
  *(v8 + 463) = v7;
  *(v8 + 4) -= v6 * (*(a1 + 464) * 0.02);
  v9 = a2[6];
  *(v8 + 5) = a2[4];
  *(v8 + 6) = v9;
  v10 = a2[379];
  if (v10 <= 0x5C0)
  {
    memcpy(v8 + 44, a2 + 11, v10);
    *(v8 + 379) = a2[379];
    *(v8 + 7) -= v6;
    if (v8 < v8 + 1864)
    {
      AudioPacketArray_Append(a3, v8);
LABEL_2:
      a2[5] = a2[4];
      AudioPacketArray_Append(a3, a2);
      return;
    }
  }

  __break(0x5519u);
}

BOOL VCAudioReceiver_ReportAWDMetrics(unsigned int *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = "VCAudioReceiver_ReportAWDMetrics";
      *&buf[22] = 1024;
      *&buf[24] = 2442;
      v7 = "VCAudioReceiver [%s] %s:%d CollectAWDMetrics:audioReceiver is nil";
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x1Cu);
    }

    return 0;
  }

  if (*(a1 + 148) == 1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 172));
  if (*(a1 + 617) == 1)
  {
    pthread_mutex_unlock((a1 + 172));
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = "_VCAudioReceiver_Lock";
        *&buf[22] = 1024;
        *&buf[24] = 332;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Receiver is being torn down", buf, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 0;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315650;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = "VCAudioReceiver_ReportAWDMetrics";
    *&buf[22] = 1024;
    *&buf[24] = 2451;
    v7 = "VCAudioReceiver [%s] %s:%d VCAudioReceiver_CollectAWDMetrics: Failed to grab the lock";
    goto LABEL_13;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(buf, 0, sizeof(buf));
  VCJitterBuffer_GetPlaybackReportingMetrics(*(a1 + 56), buf);
  if (*a1)
  {
    v9 = 0;
    v10 = (a1 + 2);
    do
    {
      if (v10 >= a1 + 29 || v10 < a1 + 1)
      {
        __break(0x5519u);
      }

      v11 = *v10;
      v10 += 7;
      v12[8] = v21;
      v12[9] = v22;
      v13 = v23;
      v12[4] = v17;
      v12[5] = v18;
      v12[6] = v19;
      v12[7] = v20;
      v12[0] = *buf;
      v12[1] = *&buf[16];
      v12[2] = v15;
      v12[3] = v16;
      _VCAudioReceiver_ReportAWDMetrics(a1, v11, v12);
      ++v9;
    }

    while (v9 < *a1);
  }

  pthread_mutex_unlock((a1 + 172));
  return 1;
}

void _VCAudioReceiver_ReportAWDMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v146 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return;
  }

  v8 = Mutable;
  v9 = *(a3 + 56);
  v10 = *(a3 + 80);
  v11 = *(a3 + 116);
  v12 = *(a3 + 120);
  v13 = *(a3 + 124);
  v14 = *(a3 + 128);
  v15 = *(a3 + 132);
  v77 = *(a3 + 136);
  v95 = 0;
  v94 = 0;
  RTPGetPacketLossMetrics(a2, &v95 + 1, &v95, &v94);
  v92 = 0;
  *v93 = 0;
  VCJitterBuffer_GetAWDReportingMetrics(*(a1 + 448), &v92);
  v90 = *(&v92 + 1);
  v91 = *&v92;
  v16 = v93[0];
  v88 = v12;
  v89 = v11;
  v86 = v14 * 1000.0;
  v87 = v13;
  v85 = v15 * 1000.0;
  v83 = NAN;
  v84 = v10;
  v17 = *(a1 + 464);
  v18 = v17;
  if (v17)
  {
    *&v17 = v93[1];
    v19 = *&v17 * 1000.0 / v18;
    v83 = v19;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  valuePtr = NAN;
  if (v95)
  {
    valuePtr = v94 / v95;
    v21 = CFNumberCreate(v6, kCFNumberFloatType, &valuePtr);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(v8, @"RTPPacketLossRate", v21);
      CFRelease(v22);
    }
  }

  v81 = NAN;
  if (v9)
  {
    v81 = v84 / v9;
    v23 = CFNumberCreate(v6, kCFNumberFloatType, &v81);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(v8, @"JitterBufferLossRate", v23);
      CFRelease(v24);
    }
  }

  *buf = v9;
  v25 = CFNumberCreate(v6, kCFNumberIntType, buf);
  CFDictionaryAddValue(v8, @"FramesPlayedCount", v25);
  CFRelease(v25);
  if (v95)
  {
    v26 = CFNumberCreate(v6, kCFNumberIntType, &v95 + 4);
    if (v26)
    {
      v27 = v26;
      CFDictionaryAddValue(v8, @"AudioRTPPacketsReceivedCount", v26);
      CFRelease(v27);
    }

    v28 = CFNumberCreate(v6, kCFNumberIntType, &v94);
    if (v28)
    {
      v29 = v28;
      CFDictionaryAddValue(v8, @"AudioRTPPacketsLostCount", v28);
      CFRelease(v29);
    }

    v30 = CFNumberCreate(v6, kCFNumberIntType, &v84);
    if (v30)
    {
      v31 = v30;
      CFDictionaryAddValue(v8, @"JitterBufferLossCount", v30);
      CFRelease(v31);
    }
  }

  v32 = CFNumberCreate(v6, kCFNumberFloatType, &v91);
  if (v32)
  {
    v33 = v32;
    CFDictionaryAddValue(v8, @"JitterBufferUnderflowRate", v32);
    CFRelease(v33);
  }

  v34 = CFNumberCreate(v6, kCFNumberIntType, (a1 + 9364));
  if (v34)
  {
    v35 = v34;
    CFDictionaryAddValue(v8, @"Payload", v34);
    CFRelease(v35);
  }

  v80 = *(a1 + 10396);
  v36 = CFNumberCreate(v6, kCFNumberIntType, &v80);
  if (v36)
  {
    v37 = v36;
    CFDictionaryAddValue(v8, @"CodecSampleRate", v36);
    CFRelease(v37);
  }

  if (!*(a1 + 10400))
  {
    *(a1 + 10400) = 2400;
  }

  v38 = CFNumberCreate(v6, kCFNumberIntType, (a1 + 10400));
  if (v38)
  {
    v39 = v38;
    CFDictionaryAddValue(v8, @"DownlinkCodecBitRate", v38);
    CFRelease(v39);
  }

  *buf = 0;
  v40 = *(a1 + 9360);
  switch(v40)
  {
    case 6:
      v40 = 3;
      break;
    case 3:
      v40 = 1;
      break;
    case 2:
      break;
    default:
      goto LABEL_35;
  }

  *buf = v40;
LABEL_35:
  v41 = CFNumberCreate(v6, kCFNumberIntType, buf);
  if (v41)
  {
    v42 = v41;
    CFDictionaryAddValue(v8, @"RATType", v41);
    CFRelease(v42);
  }

  v76 = *buf;
  v43 = CFNumberCreate(v6, kCFNumberFloatType, &v90);
  if (v43)
  {
    v44 = v43;
    CFDictionaryAddValue(v8, @"FrameErasureRate", v43);
    CFRelease(v44);
  }

  if (v90 > 0.04 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v45 = VRTraceErrorLogLevelToCSTR();
    v46 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v97 = v45;
      v98 = 2080;
      v99 = "_VCAudioReceiver_CollectAWDMetrics";
      v100 = 1024;
      v101 = 2356;
      v102 = 2048;
      v103 = v90;
      _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d High audio erasure rate: %f", buf, 0x26u);
    }
  }

  *buf = v16;
  v47 = CFNumberCreate(v6, kCFNumberFloat32Type, buf);
  CFDictionaryAddValue(v8, @"FrameSpeechErasureRate", v47);
  CFRelease(v47);
  if (v20)
  {
    v48 = CFNumberCreate(v6, kCFNumberFloatType, &v83);
    if (v48)
    {
      v49 = v48;
      CFDictionaryAddValue(v8, @"JitterBufferResidencyTime", v48);
      CFRelease(v49);
    }
  }

  v50 = CFNumberCreate(v6, kCFNumberFloatType, &v89);
  if (v50)
  {
    v51 = v50;
    CFDictionaryAddValue(v8, @"TimescaleRate", v50);
    CFRelease(v51);
  }

  v52 = CFNumberCreate(v6, kCFNumberFloatType, &v88);
  if (v52)
  {
    v53 = v52;
    CFDictionaryAddValue(v8, @"SpeechTimescaleRate", v52);
    CFRelease(v53);
  }

  v54 = CFNumberCreate(v6, kCFNumberFloatType, &v87);
  if (v54)
  {
    v55 = v54;
    CFDictionaryAddValue(v8, @"SilenceTimescaleRate", v54);
    CFRelease(v55);
  }

  v79 = 0;
  v78 = 0;
  RTPGetJitter(a2, &v79 + 1, &v79, &v78);
  v56 = v18 / 1000.0;
  v57 = (v79 | 0x408F400000000000uLL) / v56;
  v58 = vcvtad_u64_f64(v57);
  LODWORD(v57) = v78;
  v78 = vcvtad_u64_f64(*&v57 / v56);
  LODWORD(v79) = v58;
  v59 = CFNumberCreate(v6, kCFNumberIntType, &v79);
  if (v59)
  {
    v60 = v59;
    CFDictionaryAddValue(v8, @"MaxInterArrivalJitter", v59);
    CFRelease(v60);
  }

  v61 = CFNumberCreate(v6, kCFNumberIntType, &v78);
  if (v61)
  {
    v62 = v61;
    CFDictionaryAddValue(v8, @"AverageInterArrivalJitter", v61);
    CFRelease(v62);
  }

  v63 = CFNumberCreate(v6, kCFNumberFloatType, &v86);
  if (v63)
  {
    v64 = v63;
    CFDictionaryAddValue(v8, @"AveragePacketLifetime", v63);
    CFRelease(v64);
  }

  v65 = CFNumberCreate(v6, kCFNumberFloatType, &v85);
  if (v65)
  {
    v66 = v65;
    CFDictionaryAddValue(v8, @"MaxPacketLifetime", v65);
    CFRelease(v66);
  }

  *buf = *(a1 + 302);
  v67 = CFNumberCreate(v6, kCFNumberIntType, buf);
  CFDictionaryAddValue(v8, @"DTMFTonePlaybackEnabled", v67);
  CFRelease(v67);
  *buf = *(a1 + 425);
  v68 = CFNumberCreate(v6, kCFNumberIntType, buf);
  CFDictionaryAddValue(v8, @"DTMFEventCallbacksEnabled", v68);
  CFRelease(v68);
  *buf = v77;
  v69 = CFNumberCreate(v6, kCFNumberIntType, buf);
  CFDictionaryAddValue(v8, @"DTMFEventTotalCount", v69);
  CFRelease(v69);
  *buf = *(a1 + 244);
  v70 = CFNumberCreate(v6, kCFNumberIntType, buf);
  CFDictionaryAddValue(v8, @"JitterBufferMode", v70);
  CFRelease(v70);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v71 = VRTraceErrorLogLevelToCSTR();
    v72 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v73 = *(a1 + 9364);
      v74 = *(a1 + 10400);
      v75 = *(a1 + 244);
      *buf = 136321282;
      v97 = v71;
      v98 = 2080;
      v99 = "_VCAudioReceiver_CollectAWDMetrics";
      v100 = 1024;
      v101 = 2425;
      v102 = 2048;
      v103 = valuePtr;
      v104 = 2048;
      v105 = v91;
      v106 = 2048;
      v107 = v90;
      v108 = 2048;
      v109 = v16;
      v110 = 2048;
      v111 = v83;
      v112 = 1024;
      v113 = v73;
      v114 = 1024;
      v115 = v18;
      v116 = 1024;
      v117 = v74;
      v118 = 1024;
      v119 = v76;
      v120 = 2048;
      v121 = v89;
      v122 = 2048;
      v123 = v88;
      v124 = 2048;
      v125 = v87;
      v126 = 2048;
      v127 = v86;
      v128 = 2048;
      v129 = v85;
      v130 = 1024;
      v131 = v79;
      v132 = 1024;
      v133 = v78;
      v134 = 2048;
      v135 = v81;
      v136 = 1024;
      v137 = HIDWORD(v95);
      v138 = 1024;
      v139 = v94;
      v140 = 1024;
      v141 = v84;
      v142 = 1024;
      v143 = v9;
      v144 = 1024;
      v145 = v75;
      _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Collected AWD metric samples (rtpPacketLossRate=%f, jitterBufferUnderflowRate=%f, frameErasureRate=%f, speechErasureRate=%f, jitterBufferResidencyTime=%f, payloadType=%d, sampleRate=%d, bitRate=%d, ratType=%d, timescaleRate=%f, speechTimescaleRate=%f, silenceTimescaleRate=%f, averagePacketLifetime=%f, maxPacketLifetime=%f, maxInterArrivalJitter=%u, averageInterArrivalJitter=%u, jitterBufferLossRate=%f, packetsReceived=%u, packetsLost=%u, totalJBLossCount=%u totalFramesPlayed=%u jitterBufferMode=%u)", buf, 0xCCu);
    }
  }

  reportingAudioStreamLogMetricSample();
  CFRelease(v8);
}

void VCAudioReceiver_UpdateWrmMetrics(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 464);
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      VCJitterBuffer_GetWRMReportingMetrics(*(a1 + 448), &v5);
      *(a2 + 60) = v7;
      *(a2 + 24) = v5;
      v4 = *(&v6 + 1) * 1000.0 / v3;
      *(a2 + 72) = v6;
      *(a2 + 80) = v4;
      *(a2 + 192) = v3;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_UpdateWrmMetrics_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_UpdateWrmMetrics_cold_2();
    }
  }
}

void VCAudioReceiver_GetJitterBufferMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 296) != 1)
      {
        v3 = *(a1 + 464);
        VCJitterBuffer_GetWRMReportingMetrics(*(a1 + 448), a2);
        *(a2 + 24) = (*(a2 + 24) * 1000.0 / v3);
        *(a2 + 36) = v3;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioReceiver_GetJitterBufferMetrics_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_GetJitterBufferMetrics_cold_2();
    }
  }
}

BOOL VCAudioReceiver_SetMagicCookieForPayload(uint64_t a1, int a2, int a3, void *a4, UInt32 a5)
{
  if (a1)
  {
    return VCAudioDecoderList_SetMagicCookieForPayload(a1 + 752, a2, a3, a4, a5) >= 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCAudioReceiver_SetMagicCookieForPayload_cold_1();
  }

  return 0;
}

void VCAudioReceiver_SetTargetStreamID(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    *(a1 + 9174) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_SetTargetStreamID_cold_1();
    }
  }
}

void VCAudioReceiver_SetOverlayToken(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 10464) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioReceiver_SetOverlayToken_cold_1();
    }
  }
}

void VCAudioReceiver_ProcessConnectionType(uint64_t a1, int a2)
{
  if (a1)
  {
    VCAudioIssueDetector_Stop(*(a1 + 9352));
    VCAudioReceiver_ReportAWDMetrics(a1);
    *(a1 + 9360) = a2;
    *(a1 + 388) = a2;
    if (a2 == 3)
    {
      *(a1 + 10441) = 0;
    }

    VCAudioIssueDetector_UpdateConnectionType(*(a1 + 9352), a2);
    v4 = *(a1 + 9352);

    VCAudioIssueDetector_Start(v4);
  }

  else
  {
    VCAudioReceiver_ProcessConnectionType_cold_1();
  }
}

void VCAudioReceiver_SetAudioPlayoutDelay(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    *(a1 + 10456) = a2;
    if (*(a1 + 10448))
    {
      LODWORD(a3) = *(a1 + 504);
      v4 = vcvtpd_u64_f64(a2 / (*&a3 / *(a1 + 464)));
      v5 = *(a1 + 10448);

      VCAudioFrameDelay_UpdateDelay(v5, v4);
    }
  }

  else
  {
    VCAudioReceiver_SetAudioPlayoutDelay_cold_1();
  }
}

void VCAudioReceiver_SetVADFiltering(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 10528) = a2;
    v3 = *(a1 + 448);

    VCJitterBuffer_SetVADFilteringEnabled(v3, a2);
  }

  else
  {
    VCAudioReceiver_SetVADFiltering_cold_1();
  }
}

void _VCAudioReceiver_HandleRTPPacket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a1 + 0x2000;
  if (*a3 == 1)
  {
    atomic_fetch_add((a1 + 844), 1u);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v20 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v18;
          LOWORD(v49[0]) = 2080;
          *(v49 + 2) = "_VCAudioReceiver_HandleRTPBasebandNotificationPacket";
          HIWORD(v49[2]) = 1024;
          LODWORD(v50) = 2081;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d received VTP_PKT_BBNOTE", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        _VCAudioReceiver_HandleRTPPacket_cold_1();
      }
    }

    if (*(a3 + 8) == 3)
    {
      if (*(a3 + 26))
      {
        *(v11 + 944) = 1;
        *(v11 + 946) = *(a3 + 26);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v24;
            LOWORD(v49[0]) = 2080;
            *(v49 + 2) = "_VCAudioReceiver_HandleRTPBasebandNotificationPacket";
            HIWORD(v49[2]) = 1024;
            LODWORD(v50) = 2085;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Received local codec rate mode change request", buf, 0x1Cu);
          }
        }
      }
    }
  }

  else
  {
    if (!*a3)
    {
      atomic_fetch_add((a1 + 832), 1u);
      v12 = *(a3 + 88);
      if (v12 >= 0xD)
      {
        goto LABEL_103;
      }

      v3 = a2;
      if (_VCAudioReceiver_ShouldProcessAudioPacket(a1, a2, *(a3 + 50), *(a3 + 56), (a3 + 64), v12))
      {
        if (*(a3 + 136) && (*(v11 + 1000) & 1) == 0)
        {
          LODWORD(theBuffer) = -1431655766;
          LODWORD(lengthAtOffsetOut) = -1431655766;
          RTPGetRecvStats(*v3, &theBuffer, &lengthAtOffsetOut);
          *&v49[1] = 0;
          v50 = 0uLL;
          *buf = *(a3 + 40);
          *&buf[8] = *(a3 + 160);
          v49[0] = theBuffer;
          v13 = *(a3 + 24);
          *&v49[1] = lengthAtOffsetOut >> 3;
          DWORD1(v50) = v13;
          WORD4(v50) = *(a3 + 20);
          WORD5(v50) = *(a3 + 200);
          BYTE12(v50) = *(a3 + 203);
          BYTE13(v50) = *(a3 + 104);
          v15 = *(a3 + 136);
          v14 = *(a3 + 144);
          if (!v15 && v14)
          {
            goto LABEL_103;
          }

          ControlInfoWithBuffer = VCMediaControlInfoGeneratorCreateControlInfoWithBuffer(*(a1 + 440), v14, v15, buf);
          VCMediaControlInfoDispose(ControlInfoWithBuffer);
        }

        if (*(a3 + 200) == 1)
        {
          v17 = (a1 + 840);
LABEL_79:
          atomic_fetch_add(v17, 1u);
          return;
        }

        v4 = (a3 + 24);
        kdebug_trace();
        if (*(v3 + 11) != *(v11 + 976))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            Mutable = VRTraceErrorLogLevelToCSTR();
            v26 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v3 + 11);
              *buf = 136315906;
              *&buf[4] = Mutable;
              LOWORD(v49[0]) = 2080;
              *(v49 + 2) = "_VCAudioReceiver_SwitchStreamConfigs";
              HIWORD(v49[2]) = 1024;
              LODWORD(v50) = 1982;
              WORD2(v50) = 1024;
              *(&v50 + 6) = v27;
              _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Switching Audio Stream configs isOneToOne:%d", buf, 0x22u);
            }
          }

          *(v11 + 976) = *(v3 + 11);
          VCJitterBuffer_SetMode(*(a1 + 448), *(v3 + 24));
          VCJitterBuffer_SetSkipDecodeOnSilence(*(a1 + 448), (*(v3 + 11) & 1) == 0);
          VCJitterBuffer_ResetPlaybackReportingMetrics(*(a1 + 448));
          VCJitterBuffer_ResetJitterQueueUnderflowRate(*(a1 + 448));
          *(v11 + 1000) = *(v3 + 28);
          *(a1 + 440) = *(v3 + 40);
          _VCAudioReceiver_UnregisterStatistics(a1);
          _VCBoundsSafety_ReleaseAssignAndRetain((a1 + 9288), *(v3 + 48));
          _VCAudioReceiver_RegisterStatistics(a1);
          if (*(v3 + 11) == 1)
          {
            *(v11 + 980) = 0;
            v28 = *MEMORY[0x1E695E480];
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *buf = *(v11 + 980);
            v29 = CFNumberCreate(v28, kCFNumberIntType, buf);
            CFDictionaryAddValue(Mutable, @"VCASActiveStreamID", v29);
            reportingAudioStreamEvent();
            CFRelease(v29);
            CFRelease(Mutable);
          }
        }

        if (*(v11 + 2248) == 1)
        {
          VCJitterBuffer_SetMode(*(a1 + 448), *(a1 + 244));
          *(v11 + 2248) = 0;
        }

        if (*(a3 + 160) >= 0x5C1uLL)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCAudioReceiver_HandleRTPPacket_cold_12();
            }
          }

          goto LABEL_78;
        }

        if (*(a3 + 184) >= 0x101uLL)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCAudioReceiver_HandleRTPPacket_cold_11();
            }
          }

          goto LABEL_78;
        }

        v5 = VCJitterBuffer_AudioPacketAlloc(*(a1 + 448));
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v5)
        {
          v7 = (a3 + 8);
          v8 = (a3 + 208);
          if (ErrorLogLevelForModule >= 8)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            Mutable = *MEMORY[0x1E6986650];
            v31 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(a3 + 40);
                *buf = 136315906;
                *&buf[4] = v11;
                LOWORD(v49[0]) = 2080;
                *(v49 + 2) = "_VCAudioReceiver_HandleRTPMediaPacket";
                HIWORD(v49[2]) = 1024;
                LODWORD(v50) = 2043;
                WORD2(v50) = 2048;
                *(&v50 + 6) = v32;
                _os_log_impl(&dword_1DB56E000, Mutable, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d received packet time[%f]", buf, 0x26u);
              }
            }

            else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              _VCAudioReceiver_HandleRTPPacket_cold_3();
            }
          }

          if (v7 >= v8)
          {
            goto LABEL_103;
          }

          *(v5 + 230) = 0;
          *(v5 + 458) = *(a3 + 96);
          v5[1856] = *(a3 + 89);
          v33 = *(v3 + 10) == 1 ? *(v3 + 8) : 0;
          *(v5 + 929) = v33;
          Mutable = (a3 + 40);
          v34 = *(a3 + 40);
          *v5 = *(a3 + 8);
          *(v5 + 3) = *(a3 + 12);
          v11 = a3 + 20;
          *(v5 + 7) = *(a3 + 20);
          *(v5 + 4) = *(a3 + 24);
          *(v5 + 228) = v34;
          *(v5 + 1) = *(a3 + 48);
          v35 = *(a3 + 184);
          v5[1776] = v35;
          *(v5 + 2) = *(a3 + 120);
          *(v5 + 379) = *(a3 + 160);
          if (v35 >= 0x101)
          {
            goto LABEL_103;
          }

          v7 = (a1 + 448);
          v8 = v5 + 1864;
          memcpy(v5 + 1520, *(a3 + 192), v35);
          if (!*(v3 + 16))
          {
            v39 = *(a3 + 160);
            if (v39 <= 0x5C0)
            {
              memcpy(v5 + 44, *(a3 + 168), v39);
              goto LABEL_83;
            }

            goto LABEL_103;
          }

          *buf = 0;
          theBuffer = 0;
          v36 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], *(a3 + 168), *(a3 + 160), *MEMORY[0x1E695E498], 0, 0, *(a3 + 160), 1u, buf);
          if (v36 < 0)
          {
            _VCAudioReceiver_HandleRTPPacket_cold_8(v36, &lengthAtOffsetOut);
            v38 = lengthAtOffsetOut;
          }

          else
          {
            if ((VCCryptor_Decrypt(*(v3 + 16), *buf, &theBuffer) & 0x80000000) != 0)
            {
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_96;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_96;
              }

              goto LABEL_104;
            }

            RTPProcessDecryptionStatusChange(*v3, 1);
            dataPointerOut = 0;
            lengthAtOffsetOut = 0;
            if (CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
            {
              _VCAudioReceiver_HandleRTPPacket_cold_6(&v47);
            }

            else
            {
              v37 = lengthAtOffsetOut;
              if (lengthAtOffsetOut < 0x5C1)
              {
                *(v5 + 379) = lengthAtOffsetOut;
                memcpy(v5 + 44, dataPointerOut, v37);
                v38 = 1;
                goto LABEL_69;
              }

              _VCAudioReceiver_HandleRTPPacket_cold_7(a3 + 160, &lengthAtOffsetOut, &v47);
            }

            v38 = v47;
          }

          while (1)
          {
LABEL_69:
            if (*buf)
            {
              CFRelease(*buf);
            }

            if (theBuffer)
            {
              CFRelease(theBuffer);
            }

            if (v38)
            {
LABEL_83:
              if (VCJitterBuffer_GetIsRunning(*v7) || !*(v5 + 1))
              {
                atomic_fetch_add((a1 + 776), *(v5 + 2));
                atomic_fetch_add((a1 + 828), *(v5 + 379));
              }

              if (v5 < v8)
              {
                _VCAudioReceiver_DetectStreamReset(a1, v5);
                _VCAudioReceiver_UpdateLastReceivedTimestamp(a1, *(v5 + 4));
                *(a1 + 512) = *(v5 + 228);
                bzero(buf, 0x328uLL);
                _VCAudioReceiver_SetActiveStream(a1, v3, v5);
                _VCAudioReceiver_SplitPacket(a1, v3, v5, buf);
                _VCAudioReceiver_ValidateAndEnqueuePackets(a1, buf, v3);
                _VCAudioReceiver_UpdateAudioOverlayStats(a1, buf);
                v40 = *(a1 + 9352);
                if (v40)
                {
                  VCAudioIssueDetector_ReportRTPTraffic(v40);
                  VCAudioIssueDetector_FlushLogEvents(*(a1 + 9352));
                }

                v41 = *(a1 + 10408);
                if (!v41)
                {
                  return;
                }

                v43 = *(a3 + 160);
                v42 = *(a3 + 168);
                if (v43 || !v42)
                {
                  VCAudioDump_LogCompressedAudio(v41, v42, v43, v4, v11, Mutable);
                  return;
                }
              }
            }

            else if (v5 < v8)
            {
              VCJitterBuffer_AudioPacketFree(*v7, v5);
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _VCAudioReceiver_HandleRTPPacket_cold_9();
                }
              }

              goto LABEL_78;
            }

LABEL_103:
            __break(0x5519u);
LABEL_104:
            _VCAudioReceiver_HandleRTPPacket_cold_4();
LABEL_96:
            RTPProcessDecryptionStatusChange(*v3, 0);
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _VCAudioReceiver_HandleRTPPacket_cold_5();
              }
            }

            v38 = 0;
          }
        }

        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCAudioReceiver_HandleRTPPacket_cold_10();
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        v23 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v21;
            LOWORD(v49[0]) = 2080;
            *(v49 + 2) = "_VCAudioReceiver_HandleRTPMediaPacket";
            HIWORD(v49[2]) = 1024;
            LODWORD(v50) = 2003;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Ignoring invalid incoming RTP media packet.", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          _VCAudioReceiver_HandleRTPPacket_cold_2();
        }
      }

LABEL_78:
      v17 = (a1 + 836);
      goto LABEL_79;
    }

    atomic_fetch_add((a1 + 848), 1u);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioReceiver_HandleRTPPacket_cold_13();
      }
    }
  }
}

uint64_t _VCAudioReceiver_ShouldProcessAudioPacket(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 276) != 1 || (*(a2 + 11) & 1) != 0)
  {
    return 1;
  }

  if (a3 && *(a1 + 400) != a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 400);
        v28 = 136316418;
        v29 = v18;
        v30 = 2080;
        v31 = "_VCAudioReceiver_ShouldProcessAudioPacket";
        v32 = 1024;
        v33 = 1312;
        v34 = 2048;
        v35 = a1;
        v36 = 2048;
        *v37 = a4;
        *&v37[8] = 2048;
        v38 = v20;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] Unexpected idsParticipantID=%llu, expected=%llu", &v28, 0x3Au);
      }
    }

    return 0;
  }

  if ((*(a2 + 10) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioReceiver_ShouldProcessAudioPacket_cold_1();
      }
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

  v9 = *(a1 + 9174);
  v10 = *(a1 + 9172);
  v11 = a6;
  v12 = *a5;
  v6 = 1;
  if (v12 != v10 && v12 != v9)
  {
    v13 = 1;
    do
    {
      v14 = v13;
      if (a6 == v13)
      {
        break;
      }

      v15 = a5[v13++];
    }

    while (v15 != v10 && v15 != v9);
    v6 = v14 < a6;
  }

  if (v10 != v9)
  {
    while (1)
    {
      v17 = *a5++;
      if (v17 == v9)
      {
        break;
      }

      if (!--v11)
      {
        return v6;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 9172);
        v28 = 136316418;
        v29 = v22;
        v30 = 2080;
        v31 = "_VCAudioReceiver_CompleteStreamSwitch";
        v32 = 1024;
        v33 = 1296;
        v34 = 2048;
        v35 = a1;
        v36 = 1024;
        *v37 = v24;
        *&v37[4] = 1024;
        *&v37[6] = v9;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver[%p] Switching audio stream: %d -> %d", &v28, 0x32u);
      }
    }

    (*(a1 + 9216))(*(a1 + 9200), *(a1 + 9172), v9);
    *(a1 + 9172) = v9;
    v25 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v28 = *(a1 + 9172);
    v27 = CFNumberCreate(v25, kCFNumberIntType, &v28);
    CFDictionaryAddValue(Mutable, @"VCASActiveStreamID", v27);
    reportingAudioStreamEvent();
    CFRelease(v27);
    CFRelease(Mutable);
  }

  return v6;
}

CMTime *_VCAudioReceiver_UpdateLastReceivedTimestamp(uint64_t a1, int64_t value)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 520);
  if (*(a1 + 532))
  {
    _VCAudioReceiver_ComputeExtendedTimestamp(a1, value, &v8);
    *v3 = v8;
    time1 = *(a1 + 544);
    v6 = *v3;
    result = CMTimeMaximum(&v8, &time1, &v6);
    *(a1 + 544) = *&v8.value;
    epoch = v8.epoch;
  }

  else
  {
    result = CMTimeMake(&v8, value, *(a1 + 464));
    *&v3->value = *&v8.value;
    epoch = v8.epoch;
    v3->epoch = v8.epoch;
    *(a1 + 544) = *&v3->value;
  }

  *(a1 + 560) = epoch;
  return result;
}

void _VCAudioReceiver_SplitPacket(uint64_t a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = a3[6];
  if ((v6 - 107) > 4 || ((1 << (v6 - 107)) & 0x13) == 0)
  {
    if (v6 == 20)
    {
      _VCAudioReceiver_SplitRedPacket(a1, a2, a3, a4);
    }

    else
    {
      AudioPacketArray_Append(a4, a3);
    }
  }

  else
  {
    _VCAudioReceiver_SplitEVSPacket(a1, a3, a4);
  }

  if (AudioPacketArray_Last(a4))
  {
    v8 = *(AudioPacketArray_Last(a4) + 16);
    v9 = v8 - *(AudioPacketArray_First(a4) + 16);
    if (v9 != *(a1 + 768))
    {
      *(a1 + 768) = v9;
      v10 = *(a1 + 448);

      VCJitterBuffer_SetRedAudioDelayInSamples(v10, v9);
    }
  }
}

unint64_t _VCAudioReceiver_ValidateAndEnqueuePackets(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v196[1] = *MEMORY[0x1E69E9840];
  v6 = a1 + 0x2000;
  if (*(a1 + 432))
  {
    v163 = 0;
  }

  else
  {
    v163 = *(a1 + 10512) ^ 1;
  }

  result = AudioPacketArray_Next(a2);
  if (!result)
  {
    return result;
  }

  v8 = result;
  v155 = v5 + 9144;
  v170 = v5 + 9368;
  v167 = v5 + 9880;
  v158 = v5 + 4240;
  v161 = v5 + 8;
  v156 = v5 + 232;
  v157 = (v6 + 848);
  v154 = v5 + 4269;
  v153 = v5 + 4256;
  v159 = a3;
  v160 = v4;
  v171 = v5;
  v164 = v6;
  do
  {
    if (((*(a3 + 11) | v163) & 1) == 0)
    {
      if (v8 >= v8 + 1864)
      {
        goto LABEL_226;
      }

      v9 = *(v5 + 10520);
      if (!v9)
      {
        v9 = *(v8 + 16);
        *(v5 + 10520) = v9;
      }

      if (*(v6 + 2325))
      {
        v10 = 1;
      }

      else
      {
        v10 = *(v8 + 12);
      }

      *(v6 + 2325) = v10 & 1;
      if ((*(v8 + 16) - v9) / *(v5 + 464) >= 1.0)
      {
        *v179 = 0;
        LODWORD(v177) = 0;
        v176 = 0;
        RTPGetPacketLossMetrics(*a3, v179, &v177, &v176);
        if (v177)
        {
          v11 = v176 / v177;
        }

        else
        {
          v11 = 0.0;
        }

        *(v5 + 10524) = v11;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          v14 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(v5 + 10524);
              *buf = 136316930;
              *&buf[4] = v12;
              *&buf[12] = 2080;
              *&buf[14] = "_VCAudioReceiver_InactiveFramesAndDetectLossAndREDForMultiway";
              *&buf[22] = 1024;
              *&buf[24] = 1798;
              *&buf[28] = 2048;
              *&buf[30] = v5;
              *&buf[38] = 1024;
              *&buf[40] = *v179;
              *&buf[44] = 1024;
              *&buf[46] = v177;
              *&buf[50] = 1024;
              *&buf[52] = v176;
              *&buf[56] = 2048;
              *&buf[58] = v15;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver=%p packetsReceivedForInterval=%d packetsExpectedForInterval=%d packetsLostForInterval=%d rtpPacketLossRate=%f", buf, 0x42u);
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v139 = *(v5 + 10524);
            *buf = 136316930;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioReceiver_InactiveFramesAndDetectLossAndREDForMultiway";
            *&buf[22] = 1024;
            *&buf[24] = 1798;
            *&buf[28] = 2048;
            *&buf[30] = v5;
            *&buf[38] = 1024;
            *&buf[40] = *v179;
            *&buf[44] = 1024;
            *&buf[46] = v177;
            *&buf[50] = 1024;
            *&buf[52] = v176;
            *&buf[56] = 2048;
            *&buf[58] = v139;
            _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d AudioReceiver=%p packetsReceivedForInterval=%d packetsExpectedForInterval=%d packetsLostForInterval=%d rtpPacketLossRate=%f", buf, 0x42u);
          }
        }

        *(v5 + 10520) = *(v8 + 16);
      }

      *(v6 + 2324) = *(v5 + 10524) != 0.0;
    }

    v16 = (v8 + 1840);
    if (!VCAudioDecoderList_GetDecoderSettings(v5 + 752, *(v8 + 24), *(v8 + 28), (v8 + 1840)))
    {
      VCJitterBuffer_AudioPacketFree(*(v5 + 448), v8);
      atomic_fetch_add((v5 + 836), 1u);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v22 = *(v8 + 24);
          *buf = 136315906;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioReceiver_ValidateAndEnqueuePackets";
          *&buf[22] = 1024;
          *&buf[24] = 1822;
          *&buf[28] = 1024;
          *&buf[30] = v22;
          _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d ERROR unknown payloadType[%d]", buf, 0x22u);
        }
      }

      goto LABEL_220;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioReceiver_EnqueuePacket";
          *&buf[22] = 1024;
          *&buf[24] = 1690;
          *&buf[28] = 2048;
          *&buf[30] = v5;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p]", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "_VCAudioReceiver_EnqueuePacket";
        *&buf[22] = 1024;
        *&buf[24] = 1690;
        *&buf[28] = 2048;
        *&buf[30] = v5;
        _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p]", buf, 0x26u);
      }
    }

    v162 = (v8 + 1840);
    if (!VCPayloadUtils_supportsInternalDTXForPayload(**v16) || !*(v5 + 872) || !*(v5 + 880))
    {
      goto LABEL_77;
    }

    memset(&buf[8], 0, 328);
    *buf = v8 + 44;
    *&buf[8] = *(v8 + 1516);
    SpeechCodecBundleData = VCAudioDecoderList_GetSpeechCodecBundleData(v5 + 752, *(v8 + 24), *(v8 + 28), buf);
    v25 = v196;
    v24 = &buf[12];
    v26 = v196;
    v27 = &buf[16];
    if (!SpeechCodecBundleData)
    {
      v26 = 0;
      v24 = 12;
      v27 = 16;
      v25 = 336;
    }

    v28 = VCPayloadUtils_DefaultAudioCodecBandwidthCodecForSampleRate((*v16)[4]);
    v29 = VCPayloadUtils_AudioCodecBandwidthForVCAudioCodecBandwidth(v28);
    if (SpeechCodecBundleData)
    {
      if (v25 > v26)
      {
        goto LABEL_226;
      }

      v30 = **v162;
      v31 = v30 - 97;
      if (*v24 == 1)
      {
        v32 = *v27;
        v33 = *(v27 + 4);
        v35 = *(v27 + 8);
        v34 = *(v27 + 12);
        if (v31 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = v29;
        }
      }

      else
      {
        v34 = 0;
        if (*(v171 + 299) != 1 || v31 > 1)
        {
          v35 = 0;
          v32 = 0;
          goto LABEL_55;
        }

        if (v30 == 97)
        {
          v37 = 7;
        }

        else
        {
          v37 = 8;
        }

        v32 = VCPayloadUtils_BitrateForAudioCodecRateMode(v30, v37);
        v34 = 0;
        v35 = 0;
      }

      *(v6 + 948) = v32;
LABEL_55:
      if (v32 >= *(v6 + 946))
      {
        v38 = *(v6 + 946);
      }

      else
      {
        v38 = v32;
      }

      if (*(v6 + 946))
      {
        v36 = v38;
      }

      else
      {
        v36 = v32;
      }

      goto LABEL_61;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
LABEL_61:
    if (*(v6 + 944) == 1)
    {
      v36 = *(v6 + 946);
      *(v6 + 944) = 0;
    }

    if (v36)
    {
      LODWORD(v177) = *(v8 + 24);
      v39 = v177;
      v40 = VCPayloadUtils_AudioCodecRateModeForBitrate(**(v8 + 1840), v36);
      DWORD1(v177) = v40;
      v41 = VCPayloadUtils_AudioCodecBandwidthForBandwidth(v29);
      DWORD2(v177) = v41;
      v42 = VCPayloadUtils_BitrateForAudioCodecRateMode(v39, v40);
      HIDWORD(v177) = v42;
      v178 = __PAIR64__(v34, v35);
      if (v177 != *v155 || *(&v177 + 1) != *(v155 + 8) || __PAIR64__(v34, v35) != *(v155 + 16))
      {
        v45 = v42;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v172 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(v8 + 16);
            v48 = *(v8 + 14);
            *v179 = 136317954;
            *&v179[4] = v172;
            *&v179[12] = 2080;
            *&v179[14] = "_VCAudioReceiver_ProcessCMR";
            *&v179[22] = 1024;
            v180 = 982;
            v181 = 2048;
            *v182 = v171;
            *&v182[8] = 1024;
            *v183 = v40;
            *&v183[4] = 1024;
            v184 = v45;
            v185 = 1024;
            v186 = v41;
            v187 = 1024;
            v188 = v39;
            v189 = 1024;
            v190 = v47;
            v191 = 1024;
            *v192 = v48;
            *&v192[4] = 1024;
            *&v192[6] = v35;
            v193 = 1024;
            v194 = v34;
            _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d VCAudioReceiver[%p] Codec rate mode change requested: mode=%u bitrate=%d bandwidth=%d payload=%u rtpTimestamp=%u seqNum=%u evs_ch_rf offset=%d indicator=%d", v179, 0x56u);
          }
        }

        v49 = *(v171 + 872);
        v50 = *(v171 + 880);
        *v179 = v177;
        *&v179[16] = v178;
        v49(v50, v179);
        *v155 = v177;
        *(v155 + 16) = v178;
      }

      v4 = v160;
    }

    v5 = v171;
LABEL_77:
    v51 = (v8 + 44);
    v52 = *(v8 + 1516);
    if (*(*(v8 + 1840) + 32) == 2)
    {
      v53 = (bswap32(*v51) >> 19) + 2;
      if (v52 < v53)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v54 = VRTraceErrorLogLevelToCSTR();
          v55 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v54;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioReceiver_ParsePacket";
            *&buf[22] = 1024;
            *&buf[24] = 1402;
            *&buf[28] = 1024;
            *&buf[30] = v53;
            *&buf[34] = 1024;
            *&buf[36] = v52;
            _os_log_error_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_ERROR, "VCAudioReceiver [%s] %s:%d Audio buffer corrupted. Access unit length=%d, packet length=%d", buf, 0x28u);
          }
        }

        goto LABEL_187;
      }

      v165 = (v8 + 46);
      v56 = &v51[v53];
      v52 -= v53;
    }

    else
    {
      v165 = (v8 + 44);
      v56 = (v8 + 44);
    }

    v169 = *v8;
    if ((*(a3 + 11) & 1) != 0 || *(v164 + 2324) != 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(v164 + 2325) ^ 1;
    }

    *&v58 = 0xAAAAAAAAAAAAAAAALL;
    *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[224] = v58;
    *&buf[240] = v58;
    *&buf[192] = v58;
    *&buf[208] = v58;
    *&buf[160] = v58;
    *&buf[176] = v58;
    *&buf[128] = v58;
    *&buf[144] = v58;
    *&buf[96] = v58;
    *&buf[112] = v58;
    *&buf[64] = v58;
    *&buf[80] = v58;
    *&buf[32] = v58;
    *&buf[48] = v58;
    *&buf[16] = v58;
    *buf = v58;
    snprintf(buf, 0x100uLL, " isEnabledACC24InactiveFrameDetection=%d", *(v164 + 2320));
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v59 = VRTraceErrorLogLevelToCSTR();
      v60 = *MEMORY[0x1E6986650];
      v61 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(v164 + 2324);
          v63 = *(v164 + 2325);
          v64 = *(a3 + 11);
          v65 = *(v5 + 432);
          *v179 = 136317442;
          *&v179[4] = v59;
          *&v179[12] = 2080;
          *&v179[14] = "_VCAudioReceiver_ParsePacket";
          *&v179[22] = 1024;
          v180 = 1418;
          v181 = 2048;
          *v182 = v5;
          *&v182[8] = 1024;
          *v183 = v57 & 1;
          *&v183[4] = 1024;
          v184 = v62;
          v185 = 1024;
          v186 = v63;
          v187 = 1024;
          v188 = v64;
          v189 = 1024;
          v190 = v65;
          v191 = 2080;
          *v192 = buf;
          _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d AudioReceiver=%p shouldDisableInactiveFrameFlagging=%d detectedRTPLoss=%d detectedREDEnabled=%d stream->isOneToOne=%d enableAACELDInactiveFrameDetection=%d%s", v179, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v140 = *(v164 + 2324);
        v141 = *(v164 + 2325);
        v142 = *(a3 + 11);
        v143 = *(v5 + 432);
        *v179 = 136317442;
        *&v179[4] = v59;
        *&v179[12] = 2080;
        *&v179[14] = "_VCAudioReceiver_ParsePacket";
        *&v179[22] = 1024;
        v180 = 1418;
        v181 = 2048;
        *v182 = v5;
        *&v182[8] = 1024;
        *v183 = v57 & 1;
        *&v183[4] = 1024;
        v184 = v140;
        v185 = 1024;
        v186 = v141;
        v187 = 1024;
        v188 = v142;
        v189 = 1024;
        v190 = v143;
        v191 = 2080;
        *v192 = buf;
        _os_log_debug_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d AudioReceiver=%p shouldDisableInactiveFrameFlagging=%d detectedRTPLoss=%d detectedREDEnabled=%d stream->isOneToOne=%d enableAACELDInactiveFrameDetection=%d%s", v179, 0x4Eu);
      }
    }

    v178 = 0xAAAAAAAAAAAAAAAALL;
    v177 = **v162;
    LODWORD(v178) = 0;
    if (v57)
    {
      v66 = 0;
      v67 = 0;
    }

    else
    {
      v66 = *(v5 + 432);
      v67 = *(v164 + 2320);
    }

    BYTE4(v178) = v66;
    BYTE5(v178) = v67 & 1;
    if (v52 < 1)
    {
      goto LABEL_186;
    }

    v68 = 0;
    v69 = v8 + 1516;
    v168 = v8 + 1784;
    v166 = (v8 + 1816);
    while (1)
    {
      v70 = *(v8 + 1840);
      v71 = v70[5];
      if (!v71)
      {
        v71 = v52;
      }

      v173 = v71;
      v72 = *(v8 + 16);
      v73 = *v70;
      if (*v70 <= 8)
      {
        if (v73)
        {
          if (v73 == 3)
          {
            if (v68)
            {
              if (v52 <= 0x20)
              {
                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  goto LABEL_186;
                }

                v151 = VRTraceErrorLogLevelToCSTR();
                v152 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_186;
                }

                *v179 = 136316162;
                *&v179[4] = v151;
                *&v179[12] = 2080;
                *&v179[14] = "_VCAudioReceiver_ParsePacket";
                *&v179[22] = 1024;
                v180 = 1457;
                v181 = 1024;
                *v182 = v52;
                *&v182[4] = 1024;
                *&v182[6] = 33;
                v102 = v152;
                v103 = "VCAudioReceiver [%s] %s:%d GSM Audio buffer corrupted. Packet too short (%d < %d)";
LABEL_178:
                v104 = 40;
LABEL_185:
                _os_log_error_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_ERROR, v103, v179, v104);
                goto LABEL_186;
              }

              v82 = v56 - 1;
              ++v52;
              v83 = 33;
              do
              {
                if ((v56 - 1) >= v69 || v56 - 1 < v51 || v56 >= v69 || v56 < v51)
                {
                  goto LABEL_226;
                }

                HIDWORD(v87) = *v56;
                LODWORD(v87) = *(v56 - 1) << 24;
                *(v56++ - 1) = v87 >> 28;
                --v83;
              }

              while (v83);
              v77 = 33;
              v56 = v82;
            }

            else
            {
              v77 = 33;
            }
          }

          else
          {
            v77 = v173;
            v78 = v52;
            if (v73 != 8)
            {
              goto LABEL_149;
            }
          }
        }

        else
        {
          v77 = v173;
        }
      }

      else if ((v73 - 101) > 0x12 || ((1 << (v73 - 101)) & 0x418B9) == 0)
      {
        if (v73 != 9)
        {
LABEL_128:
          v78 = v52;
          goto LABEL_149;
        }

        v77 = 60;
      }

      else
      {
        v75 = v70[8];
        if (v75 == 1)
        {
          if (v56 >= v69 || v56 < v51)
          {
            goto LABEL_226;
          }

          v80 = v56 + 1;
          v79 = *v56;
          v81 = -1;
          if (v52 >= 0x100 && v79 <= 1)
          {
            if (v80 >= v69 || v80 < v51)
            {
              goto LABEL_226;
            }

            v79 += 2 * v56[1] + 256;
            v80 = v56 + 2;
            v81 = -2;
          }

          v52 += v81;
          if (v79 >= v52)
          {
            v78 = v52;
          }

          else
          {
            v78 = v79;
          }

          v56 = v80;
          goto LABEL_149;
        }

        if (v75 != 2)
        {
          goto LABEL_128;
        }

        if (v165 >= v69 || v165 < v51)
        {
          goto LABEL_226;
        }

        v76 = *v165++;
        v77 = bswap32(v76) >> 19;
      }

      if (v77 > v52)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v107 = VRTraceErrorLogLevelToCSTR();
          v108 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v109 = **v162;
            *v179 = 136316418;
            *&v179[4] = v107;
            *&v179[12] = 2080;
            *&v179[14] = "_VCAudioReceiver_ParsePacket";
            *&v179[22] = 1024;
            v180 = 1532;
            v181 = 1024;
            *v182 = v52;
            *&v182[4] = 1024;
            *&v182[6] = v77;
            *v183 = 1024;
            *&v183[2] = v109;
            v102 = v108;
            v103 = "VCAudioReceiver [%s] %s:%d Audio buffer corrupted. Packet too short (%d < %d), payload=%d";
            v104 = 46;
            goto LABEL_185;
          }
        }

        goto LABEL_186;
      }

      v78 = v77;
LABEL_149:
      if (v56 && (v56 >= v69 || v56 < v51))
      {
        goto LABEL_226;
      }

      *(&v177 + 1) = v56;
      LODWORD(v178) = v78;
      v176 = 0;
      v175 = 0;
      v174 = 1;
      IsDTXFrame = VCAudioDecoderList_IsDTXFrame(v171 + 752, &v177, &v176, &v175, &v174);
      v89 = IsDTXFrame;
      if (v176 >= 0x961)
      {
        *(v171 + 10400) = v176;
      }

      v90 = *(v171 + 9364);
      v91 = (v170 + 4 * v90);
      if (v90 != *(v8 + 24))
      {
        goto LABEL_229;
      }

      if (v91 >= v167 || v91 < v170)
      {
        goto LABEL_226;
      }

      if (*v91)
      {
        v92 = *(v171 + 10392) + 1;
      }

      else
      {
LABEL_229:
        if (v91 >= v167 || v91 < v170)
        {
          goto LABEL_226;
        }

        *v91 += *(v171 + 10392);
        *(v171 + 9364) = *(v8 + 24);
        v92 = 1;
      }

      *(v171 + 10392) = v92;
      *(v8 + 40) |= IsDTXFrame;
      if (v68 == 4)
      {
        break;
      }

      if (v78 > 0x465 || *(v8 + 1776) >= 0x11u)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_186;
        }

        v99 = VRTraceErrorLogLevelToCSTR();
        v100 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_186;
        }

        v101 = *(v8 + 1776);
        *v179 = 136316162;
        *&v179[4] = v99;
        *&v179[12] = 2080;
        *&v179[14] = "_VCAudioReceiver_ParsePacket";
        *&v179[22] = 1024;
        v180 = 1560;
        v181 = 1024;
        *v182 = v78;
        *&v182[4] = 1024;
        *&v182[6] = v101;
        v102 = v100;
        v103 = "VCAudioReceiver [%s] %s:%d Unable to fit audio data into the audioFrame buffer. Data size: %d, padding len: %u";
        goto LABEL_178;
      }

      v93 = VCJitterBuffer_AudioFrameAlloc(*(v171 + 448));
      *v93 = 0;
      *(v93 + 1) = v169;
      *(v93 + 294) = v89;
      *(v93 + 152) = *(v8 + 1840);
      *(v93 + 5) = *(v8 + 14);
      v93[8] = *(v8 + 12);
      *(v93 + 3) = v72 + v173 * v68;
      *(v93 + 286) = v78;
      if (v69 < v56)
      {
        goto LABEL_226;
      }

      if (v51 > v56)
      {
        goto LABEL_226;
      }

      if (v69 - v56 < v78)
      {
        goto LABEL_226;
      }

      v94 = v93;
      memcpy(v93 + 16, v56, v78);
      v95 = *(v8 + 1776);
      if (v95 > 0x10)
      {
        goto LABEL_226;
      }

      memcpy((v94 + 1152), (v8 + 1520), v95);
      *(v94 + 1168) = *(v8 + 1776);
      *(v94 + 1172) = v173;
      *(v94 + 1224) = *(v8 + 1848);
      *(v94 + 1228) = *(v8 + 1852);
      *(v94 + 1232) = *(v8 + 1856);
      *(v94 + 1234) = *(v8 + 1858);
      *(v94 + 1196) = *(v8 + 24);
      *(v94 + 1256) = v176;
      *(v94 + 1260) = *(v8 + 20);
      *(v94 + 1269) = v174;
      *(v94 + 1270) = v175;
      if (v94 >= v94 + 1272)
      {
        goto LABEL_226;
      }

      v96 = *v166;
      *v166 = v96 + 1;
      v97 = (v168 + 8 * v96);
      if (v97 >= v166 || v97 < v168)
      {
        goto LABEL_226;
      }

      v169 = 0;
      *v97 = v94;
      v56 += v78;
      ++v68;
      v98 = __OFSUB__(v52, v78);
      v52 -= v78;
      if ((v52 < 0) ^ v98 | (v52 == 0))
      {
        goto LABEL_186;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v105 = VRTraceErrorLogLevelToCSTR();
      v106 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v179 = 136315650;
        *&v179[4] = v105;
        *&v179[12] = 2080;
        *&v179[14] = "_VCAudioReceiver_ParsePacket";
        *&v179[22] = 1024;
        v180 = 1555;
        v102 = v106;
        v103 = "VCAudioReceiver [%s] %s:%d Too many frames in audio packet, possible corruption";
        v104 = 28;
        goto LABEL_185;
      }
    }

LABEL_186:
    a3 = v159;
    v4 = v160;
    v5 = v171;
LABEL_187:
    v6 = v164;
    if ((*(v8 + 12) & 1) == 0)
    {
      v110 = *(v8 + 14);
      v111 = *v157;
      if (*v157)
      {
        v112 = *(v164 + 850);
        v113 = v112 - v110;
        v114 = v158;
        if ((v112 - v110) < 0x7FFFu)
        {
          if (v111 < v113)
          {
            v123 = v111 + v113;
            if (v123 >= 0x12C)
            {
              LOWORD(v123) = 300;
            }

            *v157 = v123;
          }
        }

        else
        {
          v115 = (v110 - v112);
          if (v115 >= 2)
          {
            v116 = v115 - 1;
            v117 = v154 + 16 * v112;
            v118 = v112 + 1;
            v119 = v153 + 16 * v112;
            while (1)
            {
              v120 = v119 - 4800 * (v118 / 0x12C);
              if (v120 >= v157 || v120 < v158)
              {
                break;
              }

              *(v117 - 4800 * (v118 / 0x12C)) = 0;
              v117 += 16;
              ++v118;
              v119 += 16;
              if (!--v116)
              {
                goto LABEL_198;
              }
            }

LABEL_226:
            __break(0x5519u);
          }

LABEL_198:
          v122 = v115 + v111;
          if (v122 >= 300)
          {
            LOWORD(v122) = 300;
          }

          *(v164 + 848) = v122;
          *(v164 + 850) = v110;
        }
      }

      else
      {
        *(v164 + 848) = 1;
        *(v164 + 850) = v110;
        v114 = v158;
      }

      v124 = (v114 + 16 * (v110 % 0x12Cu));
      if (v124 + 4 > v157 || v114 > v124)
      {
        goto LABEL_226;
      }

      *(v124 + 2) = v110;
      v124[2] = *(v8 + 16);
      *(v124 + 12) = *(v8 + 40) != 0;
      *v124 = *(v8 + 1816);
      *(v124 + 13) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v125 = VRTraceErrorLogLevelToCSTR();
        v126 = *MEMORY[0x1E6986650];
        v127 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            v128 = *(v124 + 2);
            v129 = v124[2];
            v130 = *(v124 + 12);
            v131 = *v124;
            v132 = *(v124 + 13);
            v133 = *(v164 + 850);
            v134 = *(v164 + 848);
            *buf = 136317442;
            *&buf[4] = v125;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioReceiver_UpdatePacketHistory";
            *&buf[22] = 1024;
            *&buf[24] = 1675;
            *&buf[28] = 1024;
            *&buf[30] = v128;
            *&buf[34] = 1024;
            *&buf[36] = v129;
            *&buf[40] = 1024;
            *&buf[42] = v130;
            *&buf[46] = 1024;
            *&buf[48] = v131;
            *&buf[52] = 1024;
            *&buf[54] = v132;
            *&buf[58] = 1024;
            *&buf[60] = v133;
            *&buf[64] = 1024;
            *&buf[66] = v134;
            _os_log_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d New burst loss entry: SQ: %u, timestamp: %u, isDTX: %d, duration: %u, isValid: %d, AR highest received SQ: %u, AR packet entry count: %u", buf, 0x46u);
          }
        }

        else if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
        {
          v144 = *(v124 + 2);
          v145 = v124[2];
          v146 = *(v124 + 12);
          v147 = *v124;
          v148 = *(v124 + 13);
          v149 = *(v164 + 850);
          v150 = *(v164 + 848);
          *buf = 136317442;
          *&buf[4] = v125;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioReceiver_UpdatePacketHistory";
          *&buf[22] = 1024;
          *&buf[24] = 1675;
          *&buf[28] = 1024;
          *&buf[30] = v144;
          *&buf[34] = 1024;
          *&buf[36] = v145;
          *&buf[40] = 1024;
          *&buf[42] = v146;
          *&buf[46] = 1024;
          *&buf[48] = v147;
          *&buf[52] = 1024;
          *&buf[54] = v148;
          *&buf[58] = 1024;
          *&buf[60] = v149;
          *&buf[64] = 1024;
          *&buf[66] = v150;
          _os_log_debug_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d New burst loss entry: SQ: %u, timestamp: %u, isDTX: %d, duration: %u, isValid: %d, AR highest received SQ: %u, AR packet entry count: %u", buf, 0x46u);
        }
      }
    }

    VCJitterBuffer_EnqueuePacket(*(v5 + 448), v8);
    v135 = 856;
    if (v136)
    {
      v135 = 852;
    }

    atomic_fetch_add((v5 + v135), 1u);
    if (*(v164 + 976) == 1)
    {
      v137 = v161 + 56 * *(v164 + 978);
      if (v137 >= v156 || v137 < v161)
      {
        goto LABEL_226;
      }
    }

    OWRD = VCJitterBuffer_GetOWRD(*(v5 + 448));
    RTPSetOWRD(OWRD);
LABEL_220:
    result = AudioPacketArray_Next(v4);
    v8 = result;
  }

  while (result);
  return result;
}