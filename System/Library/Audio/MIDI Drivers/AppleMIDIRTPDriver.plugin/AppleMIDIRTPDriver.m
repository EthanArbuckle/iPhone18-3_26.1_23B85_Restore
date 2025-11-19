void sub_93C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_978(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

char *sub_A00(uint64_t a1, size_t a2, const void *a3)
{
  v6 = malloc_type_malloc(a2 + 14, 0x100004013C699A6uLL);
  *v6 = 1;
  *(v6 + 4) = a1;
  *(v6 + 6) = a2;
  memcpy(v6 + 14, a3, a2);
  return v6;
}

unsigned __int8 *sub_A70(unsigned __int8 *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = v2 >> 4;
  if (v2 >> 4 > 0xF)
  {
    goto LABEL_18;
  }

  if (((1 << v3) & 0x4F00) != 0)
  {
LABEL_3:
    v4 = a1 + 3;
LABEL_4:
    if (v4 >= a2)
    {
      return a2;
    }

    else
    {
      return v4;
    }
  }

  if (((1 << v3) & 0x3000) != 0)
  {
    if ((a1 + 2) >= a2)
    {
      return a2;
    }

    else
    {
      return a1 + 2;
    }
  }

  if (v3 != 15)
  {
    goto LABEL_18;
  }

  if (*a1 > 0xF1u)
  {
    if (v2 == 242)
    {
      goto LABEL_3;
    }

    if (v2 != 243)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  if (v2 == 240)
  {
LABEL_18:
    v6 = a1 + 1;
    v7 = a1 + 1;
    do
    {
      v9 = *v7++;
      v8 = v9;
      v11 = (v9 & 0x80u) == 0 || v8 == 247;
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 = v7;
    }

    while (v11);
    goto LABEL_4;
  }

  if (v2 != 241)
  {
LABEL_15:
    if ((a1 + 1) >= a2)
    {
      return a2;
    }

    else
    {
      return a1 + 1;
    }
  }

LABEL_30:
  if ((a1 + 2) >= a2)
  {
    return a2;
  }

  else
  {
    return a1 + 2;
  }
}

uint64_t sub_B44(uint64_t a1)
{
  *a1 = off_1C6B0;
  v2 = *(a1 + 8);
  if (v2)
  {
    Current = CFRunLoopGetCurrent();
    CFNetServiceUnscheduleFromRunLoop(v2, Current, kCFRunLoopCommonModes);
    CFNetServiceSetClient(*(a1 + 8), 0, 0);
    CFNetServiceCancel(*(a1 + 8));
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_BD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    Current = CFRunLoopGetCurrent();
    CFNetServiceUnscheduleFromRunLoop(v1, Current, kCFRunLoopCommonModes);
    CFNetServiceSetClient(*(a1 + 8), 0, 0);
    CFNetServiceCancel(*(a1 + 8));
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_C50(uint64_t a1)
{
  sub_B44(a1);

  operator delete();
}

uint64_t sub_C88(CFNetServiceRef *a1, CFStringRef serviceType, CFStringRef name, CFStringRef domain, SInt32 a5)
{
  clientContext.version = 0;
  clientContext.info = a1;
  memset(&clientContext.retain, 0, 24);
  v6 = CFNetServiceCreate(kCFAllocatorDefault, domain, serviceType, name, a5);
  a1[1] = v6;
  if (!v6)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(__str, 0xFFFFFFFF);
      *buf = 136315906;
      v15 = "NetServicePublisher.cpp";
      v16 = 1024;
      v17 = 24;
      v18 = 2080;
      v19 = __str;
      v20 = 2080;
      v21 = "CFNetServiceCreate failed";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    sub_EBC(exception, "CFNetServiceCreate failed", -1);
  }

  CFNetServiceSetClient(v6, sub_FBC, &clientContext);
  v7 = a1[1];
  Current = CFRunLoopGetCurrent();
  CFNetServiceScheduleWithRunLoop(v7, Current, kCFRunLoopCommonModes);
  result = CFNetServiceRegisterWithOptions(a1[1], 0, &error);
  if (!result)
  {
    sub_BD0(a1);
    snprintf(buf, 0x100uLL, "CFNetServiceRegisterWithOptions returned (domain = %d, error = %d)", LODWORD(error.domain), error.error);
    v11 = __cxa_allocate_exception(0x110uLL);
    sub_EBC(v11, buf, error.error);
  }

  return result;
}

uint64_t sub_EBC(uint64_t result, char *__s, int a3)
{
  v3 = result;
  *result = &off_1C688;
  *(result + 264) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy((v3 + 8), __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 2);
      *(v3 + 56) = *(__s + 3);
      *(v3 + 40) = v7;
      *(v3 + 24) = v6;
      *(v3 + 8) = v5;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 6);
      *(v3 + 120) = *(__s + 7);
      *(v3 + 104) = v10;
      *(v3 + 88) = v9;
      *(v3 + 72) = v8;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 10);
      *(v3 + 184) = *(__s + 11);
      *(v3 + 168) = v13;
      *(v3 + 152) = v12;
      *(v3 + 136) = v11;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(v3 + 247) = *(__s + 239);
      *(v3 + 232) = v16;
      *(v3 + 216) = v15;
      *(v3 + 200) = v14;
      *(v3 + 263) = 0;
    }

    return v3;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_FBC(uint64_t a1, uint64_t *a2, CFNetServiceRef *a3)
{
  if (*a2 == kCFStreamErrorDomainNetServices)
  {
    v4 = a3[1];
    if (*(a2 + 2) == -72001)
    {
      if (v4)
      {
        Current = CFRunLoopGetCurrent();
        CFNetServiceUnscheduleFromRunLoop(v4, Current, kCFRunLoopCommonModes);
        CFNetServiceSetClient(a3[1], 0, 0);
        CFNetServiceCancel(a3[1]);
        CFRelease(a3[1]);
        a3[1] = 0;
      }

      v6 = *(*a3 + 2);

      v6(a3);
    }

    else
    {
      if (v4)
      {
        v8 = CFRunLoopGetCurrent();
        CFNetServiceUnscheduleFromRunLoop(v4, v8, kCFRunLoopCommonModes);
        CFNetServiceSetClient(a3[1], 0, 0);
        CFNetServiceCancel(a3[1]);
        CFRelease(a3[1]);
        a3[1] = 0;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v9 = *a2;
        v10 = *(a2 + 2);
        v11 = 136315906;
        v12 = "NetServicePublisher.cpp";
        v13 = 1024;
        v14 = 56;
        v15 = 1024;
        v16 = v9;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d NetServicePublisher::RegisterCallback: domain = %d, error = %d", &v11, 0x1Eu);
      }
    }
  }
}

char *sub_11B0(char *__str, unsigned int a2)
{
  v4 = bswap32(a2);
  *(__str + 1) = v4;
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v4] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v5 = __str[2];
  if (v5 < 0)
  {
    if (!__maskrune(v5, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v5] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = __str[3];
  if (v6 < 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v6] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = __str[4];
  if (v7 < 0)
  {
    if (__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_15;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) != 0)
  {
LABEL_15:
    *(__str + 5) = 39;
    *__str = 39;
    return __str;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(__str, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(__str, 0x10uLL, "%d");
  }

  return __str;
}

uint64_t sub_12F8(char *a1, size_t a2)
{
  snprintf(a1, a2, "0.0.0.0");
  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  *&v12.sa_len = 0;
  *&v12.sa_data[6] = 0;
  v14 = 0;
  v13 = 0;
  v4 = socket(2, 2, 0);
  if (v4 >= 1)
  {
    v5 = v4;
    sub_14D4("8.8.8.8", "5000", &v15);
    if (!connect(v5, &v15, v15.sa_len))
    {
      v11 = 28;
      if (!getsockname(v5, &v12, &v11))
      {
LABEL_8:
        if (v12.sa_family == 30)
        {
          *v18 = 0u;
          memset(v19, 0, sizeof(v19));
          v9 = inet_ntop(30, &v12.sa_data[6], v18, 0x2Eu);
          if (v9)
          {
            v10 = v9;
            if (strlen(v9) < a2)
            {
              strlcpy(a1, v10, a2);
            }
          }
        }

        else if (v12.sa_family == 2)
        {
          v7.s_addr = *&v12.sa_data[2];
          v8 = inet_ntoa(v7);
          snprintf(a1, a2, "%s", v8);
        }

        return close(v5);
      }
    }

    close(v5);
  }

  result = socket(30, 2, 0);
  if (result < 1)
  {
    return result;
  }

  v5 = result;
  sub_14D4("1234::1234", "5000", &v15);
  if (!connect(v5, &v15, v15.sa_len))
  {
    v11 = 28;
    if (!getsockname(v5, &v12, &v11))
    {
      goto LABEL_8;
    }
  }

  return close(v5);
}

void sub_14D4(const char *a1, const char *a2, void *a3)
{
  memset(&v10, 0, sizeof(v10));
  v10.ai_flags = 1536;
  v10.ai_socktype = 2;
  v9 = 0;
  v4 = getaddrinfo(a1, a2, &v10, &v9);
  if (v4)
  {
    v8 = v4;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(__str, v8);
      *buf = 136315906;
      v13 = "NetUtils.cpp";
      v14 = 1024;
      v15 = 260;
      v16 = 2080;
      v17 = __str;
      v18 = 2080;
      v19 = "getaddrinfo";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    sub_EBC(exception, "getaddrinfo", v8);
  }

  v5 = v9;
  if (v9)
  {
    ai_addr = v9->ai_addr;
    if (ai_addr)
    {
      memcpy(a3, ai_addr, ai_addr->sa_len);
    }
  }

  freeaddrinfo(v5);
}

uint64_t sub_1660(uint64_t a1, char *a2, size_t a3)
{
  v5 = *(a1 + 1);
  if (v5 == 30)
  {
    *v11 = 0u;
    memset(v12, 0, sizeof(v12));
    v8 = inet_ntop(30, (a1 + 8), v11, 0x2Eu);
    if (v8)
    {
      v9 = v8;
      if (strlen(v8) < a3)
      {
        strlcpy(a2, v9, a3);
        return 0;
      }
    }
  }

  else if (v5 == 2)
  {
    v6.s_addr = *(a1 + 4);
    v7 = inet_ntoa(v6);
    snprintf(a2, a3, "%s", v7);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_175C(CFStringRef serviceType, CFStringRef name, CFStringRef domain, sockaddr *a4)
{
  v4 = CFNetServiceCreate(kCFAllocatorDefault, domain, serviceType, name, 0);
  if (!v4)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(&v47, 0xFFFFFFFF);
      *__str = 136315906;
      v40 = "NetUtils.cpp";
      v41 = 1024;
      v42 = 278;
      v43 = 2080;
      v44 = &v47;
      v45 = 2080;
      v46 = "CFNetServiceCreate failed";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", __str, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    sub_EBC(exception, "CFNetServiceCreate failed", -1);
  }

  v5 = v4;
  if (!CFNetServiceResolveWithTimeout(v4, 5.0, &error))
  {
    CFRelease(v5);
    v30 = error.error;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(&v47, v30);
      *__str = 136315906;
      v40 = "NetUtils.cpp";
      v41 = 1024;
      v42 = 283;
      v43 = 2080;
      v44 = &v47;
      v45 = 2080;
      v46 = "CFNetServiceResolve failed";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", __str, 0x26u);
    }

    v31 = __cxa_allocate_exception(0x110uLL);
    sub_EBC(v31, "CFNetServiceResolve failed", v30);
  }

  Addressing = CFNetServiceGetAddressing(v5);
  Count = CFArrayGetCount(Addressing);
  if (Addressing)
  {
    v8 = Count < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    CFRelease(v5);
    v32 = error.error;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(&v47, v32);
      *__str = 136315906;
      v40 = "NetUtils.cpp";
      v41 = 1024;
      v42 = 289;
      v43 = 2080;
      v44 = &v47;
      v45 = 2080;
      v46 = "CFNetServiceGetAddressing failed";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", __str, 0x26u);
    }

    v33 = __cxa_allocate_exception(0x110uLL);
    sub_EBC(v33, "CFNetServiceGetAddressing failed", v32);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = Count & 0x7FFFFFFF;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Addressing, v9);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      v15 = BytePtr[1];
      if (v15 != 30 && v15 != 2)
      {
        break;
      }

      flags = 0;
      v17 = SCNetworkReachabilityCreateWithAddress(0, BytePtr);
      v18 = v17;
      if (v17)
      {
        SCNetworkReachabilityGetFlags(v17, &flags);
        CFRelease(v18);
      }

      v19 = (2 * flags) & 4;
      v20 = BytePtr[1];
      if (v20 == 30)
      {
        v47 = 0u;
        memset(v48, 0, sizeof(v48));
        v23 = inet_ntop(30, BytePtr + 8, &v47, 0x2Eu);
        v24 = v23;
        if (v23 && strlen(v23) < 0x100)
        {
          strlcpy(__str, v24, 0x100uLL);
          goto LABEL_22;
        }
      }

      else if (v20 == 2)
      {
        v21.s_addr = *(BytePtr + 1);
        v22 = inet_ntoa(v21);
        snprintf(__str, 0x100uLL, "%s", v22);
LABEL_22:
        v19 |= 2u;
      }

      if (BytePtr[1] == 30)
      {
        v25 = v19 + 1;
      }

      else
      {
        v25 = v19;
      }

      if (((v25 <= v11) & v10) == 0)
      {
        v26 = *BytePtr;
        *&a4->sa_data[10] = *(BytePtr + 12);
        *a4 = v26;
        v11 = v25;
      }

      v47 = 0u;
      memset(v48, 0, sizeof(v48));
      v27 = BytePtr[1];
      v28 = 8;
      if (v27 == 2)
      {
        v28 = 4;
      }

      inet_ntop(v27, &BytePtr[v28], &v47, 0x2Eu);
      ++v9;
      v10 = 1;
      if (v9 == v12)
      {
        CFRelease(v5);
        return;
      }
    }

    ++v9;
  }

  while (v12 != v9);
  CFRelease(v5);
  if ((v10 & 1) == 0)
  {
    v34 = error.error;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(&v47, v34);
      *__str = 136315906;
      v40 = "NetUtils.cpp";
      v41 = 1024;
      v42 = 354;
      v43 = 2080;
      v44 = &v47;
      v45 = 2080;
      v46 = "CFNetServiceGetAddressing was not able to resolve the address address";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", __str, 0x26u);
    }

    v35 = __cxa_allocate_exception(0x110uLL);
    sub_EBC(v35, "CFNetServiceGetAddressing was not able to resolve the address address", v34);
  }
}

void sub_1D44(const __CFString *a1, CFStringRef theString, sockaddr *a3)
{
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
  v30 = 0u;
  v31 = 0u;
  *buffer = 0u;
  v29 = 0u;
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(v19, 0xFFFFFFFF);
      *buf = 136315906;
      v21 = "NetUtils.cpp";
      v22 = 1024;
      v23 = 361;
      v24 = 2080;
      v25 = v19;
      v26 = 2080;
      v27 = "string conversion failed";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    sub_EBC(exception, "string conversion failed", -1);
  }

  if (buffer[0] == 9)
  {
    v5 = strchr(&buffer[1], 9);
    if (!v5)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        sub_11B0(v19, 0xFFFFFFFF);
        *buf = 136315906;
        v21 = "NetUtils.cpp";
        v22 = 1024;
        v23 = 403;
        v24 = 2080;
        v25 = v19;
        v26 = 2080;
        v27 = "invalid Bonjour name";
        _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v16 = __cxa_allocate_exception(0x110uLL);
      sub_EBC(v16, "invalid Bonjour name", -1);
    }

    *v5 = 0;
    v6 = v5 + 1;
    v7 = CFStringCreateWithCString(0, &buffer[1], 0x8000100u);
    v8 = CFStringCreateWithCString(0, v6, 0x8000100u);
    sub_175C(a1, v7, v8, a3);
    CFRelease(v7);
    CFRelease(v8);
  }

  else
  {
    v9 = strchr(buffer, 91);
    if (v9)
    {
      v10 = v9;
      v11 = strstr(buffer, "]:");
      if (!v11)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          sub_11B0(v19, 0xFFFFFFFF);
          *buf = 136315906;
          v21 = "NetUtils.cpp";
          v22 = 1024;
          v23 = 372;
          v24 = 2080;
          v25 = v19;
          v26 = 2080;
          v27 = "invalid ipv6 [host]:port string";
          _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v17 = __cxa_allocate_exception(0x110uLL);
        sub_EBC(v17, "invalid ipv6 [host]:port string", -1);
      }

      *v11 = 0;
      v12 = v11 + 2;
      v13 = v10 + 1;
    }

    else
    {
      v14 = strchr(buffer, 58);
      if (!v14)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          sub_11B0(v19, 0xFFFFFFFF);
          *buf = 136315906;
          v21 = "NetUtils.cpp";
          v22 = 1024;
          v23 = 382;
          v24 = 2080;
          v25 = v19;
          v26 = 2080;
          v27 = "invalid host:port string";
          _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v18 = __cxa_allocate_exception(0x110uLL);
        sub_EBC(v18, "invalid host:port string", -1);
      }

      *v14 = 0;
      v12 = v14 + 1;
      v13 = buffer;
    }

    sub_14D4(v13, v12, a3);
  }
}

uint64_t sub_2234(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (v2 == a2[1] && *a1 == *a2)
  {
    if (v2 == 30)
    {
      v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
      if (v4 && *(a1 + 1) == *(a2 + 1) && *(a1 + 1) == *(a2 + 1) && *(a1 + 6) == *(a2 + 6))
      {
        return 1;
      }
    }

    else if (v2 == 2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 1) == *(a2 + 1))
    {
      return 1;
    }
  }

  return 0;
}

MIDIPacket *sub_22E0(uint64_t a1, MIDITimeStamp time, int a3, Byte *data)
{
  v7 = a3;
  result = MIDIPacketListAdd((a1 + 48), 0x400uLL, *(a1 + 40), time, a3, data);
  if (result || *(a1 + 48) && ((*(*a1 + 16))(a1, a1 + 48), v9 = MIDIPacketListInit((a1 + 48)), (result = MIDIPacketListAdd((a1 + 48), 0x400uLL, v9, time, v7, data)) != 0))
  {
    *(a1 + 40) = result;
  }

  else
  {
    v10 = sub_A00(time, v7, data);
    (*(*a1 + 16))(a1, v10);
    free(v10);
    *(a1 + 40) = MIDIPacketListInit((a1 + 48));
    result = MIDIPacketListInit((a1 + 48));
    *(a1 + 40) = result;
  }

  return result;
}

MIDIPacket *sub_2408(MIDIPacket *result, int *a2)
{
  if (*a2 >= 1)
  {
    v2 = result;
    v3 = (a2 + 1);
    v4 = *a2 + 1;
    do
    {
      result = sub_22E0(v2, *v3, *(v3 + 8), (v3 + 10));
      v3 = (v3 + *(v3 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

BOOL sub_2478(uint64_t a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(a1 + 8) = byte_17498[a2];
    v3 = a2 == 2 || a2 == 5;
    *(a1 + 4) = v3;
    *(a1 + 16) = qword_174A0[a2];
    *(a1 + 24) = byte_174E0[a2];
    *a1 = a2;
  }

  return a2 < 8;
}

uint64_t sub_24D0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 4))
    {
      do
      {
        while (1)
        {
          a2 = (a2 + 1);
          if (v3 == a2)
          {
            a2 = (a2 & 0xFFFFFF00) + 256;
            if ((a2 & 0xFF00) == 0x3C00)
            {
              a2 = (a2 & 0xFFFF0000) + 0x10000;
              if ((a2 & 0xFF0000) == 0x3C0000)
              {
                v5 = (a2 & 0xFF000000) + 0x1000000;
                if ((v5 & 0x1F000000) == 0x18000000)
                {
                  a2 = v5 & 0xE0000000;
                }

                else
                {
                  a2 = v5;
                }
              }
            }
          }

          if ((a2 & 0xFFFE) == 0)
          {
            break;
          }

          v4 = __OFSUB__(a3--, 1);
          if ((a3 < 0) ^ v4 | (a3 == 0))
          {
            return a2;
          }
        }

        HIDWORD(v6) = -858993459 * BYTE2(a2);
        LODWORD(v6) = HIDWORD(v6);
        if ((v6 >> 1) >= 0x1999999A)
        {
          a2 = a2 | 2;
        }

        else
        {
          a2 = a2;
        }

        v4 = __OFSUB__(a3--, 1);
      }

      while (!((a3 < 0) ^ v4 | (a3 == 0)));
    }

    else
    {
      do
      {
        a2 = (a2 + 1);
        if (v3 == a2)
        {
          a2 = (a2 & 0xFFFFFF00) + 256;
          if ((a2 & 0xFF00) == 0x3C00)
          {
            a2 = (a2 & 0xFFFF0000) + 0x10000;
            if ((a2 & 0xFF0000) == 0x3C0000)
            {
              v8 = (a2 & 0xFF000000) + 0x1000000;
              if ((v8 & 0x1F000000) == 0x18000000)
              {
                a2 = v8 & 0xE0000000;
              }

              else
              {
                a2 = v8;
              }
            }
          }
        }

        v4 = __OFSUB__(a3--, 1);
      }

      while (!((a3 < 0) ^ v4 | (a3 == 0)));
    }
  }

  return a2;
}

uint64_t sub_25F4(uint64_t a1, unsigned int a2)
{
  v2 = HIBYTE(a2) & 0x1F;
  v3 = *(a1 + 24) * (60 * (60 * v2 + BYTE2(a2)) + BYTE1(a2)) + a2;
  if (*(a1 + 4) == 1)
  {
    return -108 * v2 - 18 * (BYTE2(a2) / 0xAu) - 2 * ((BYTE2(a2) % 0xAu) & 0x7F) + v3;
  }

  else
  {
    return v3;
  }
}

void sub_2664(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_26C0(exception, a1);
}

std::logic_error *sub_26C0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_26F4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_2728()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_2774(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6, const char *a7)
{
  *a1 = off_1C790;
  *(a1 + 8) = 0;
  v14 = pthread_self();
  *(a1 + 16) = sub_283C(v14, 0);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 112) = 0;
  *(a1 + 104) = a4;
  *(a1 + 108) = 0;
  *(a1 + 120) = 1;
  *(a1 + 122) = a5;
  *(a1 + 123) = a6;
  if (a7)
  {
    strlcpy((a1 + 40), a7, 0x40uLL);
  }

  else
  {
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
  }

  return a1;
}

_opaque_pthread_t *sub_283C(_opaque_pthread_t *result, int a2)
{
  if (result)
  {
    v3 = result;
    thread_info_outCnt = 10;
    v4 = pthread_mach_thread_np(result);
    thread_info(v4, 3u, thread_info_out, &thread_info_outCnt);
    switch(v13)
    {
      case 4:
        thread_info_outCnt = 4;
        v7 = pthread_mach_thread_np(v3);
        thread_info(v7, 0xCu, v11, &thread_info_outCnt);
        if (a2 == 1 && v11[2])
        {
          return v11[3];
        }

        else
        {
          return v11[1];
        }

      case 2:
        thread_info_outCnt = 5;
        v6 = pthread_mach_thread_np(v3);
        thread_info(v6, 0xBu, v10, &thread_info_outCnt);
        if (a2 == 1 && v10[3])
        {
          return v10[4];
        }

        else
        {
          return v10[1];
        }

      case 1:
        thread_info_outCnt = 5;
        v5 = pthread_mach_thread_np(v3);
        thread_info(v5, 0xAu, v9, &thread_info_outCnt);
        if (a2 == 1)
        {
          return v9[2];
        }

        else
        {
          return v9[1];
        }

      default:
        return 0;
    }
  }

  return result;
}

uint64_t sub_2984(uint64_t result)
{
  if (atomic_load((result + 8)))
  {
    sub_14E04();
  }

  if (!atomic_load((result + 8)))
  {
    v3 = result;
    v4 = pthread_attr_init(&v16);
    if (v4)
    {
      v7 = v4;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v13 = "CAPThread.cpp";
      v14 = 1024;
      v15 = 255;
      v8 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v16, 2);
      if (v5)
      {
        v7 = v5;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v13 = "CAPThread.cpp";
        v14 = 1024;
        v15 = 258;
        v8 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v16, &v11);
        v11.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v16, &v11);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v16, 4);
        }

        v10 = 0;
        v6 = pthread_create(&v10, &v16, sub_2BE8, v3);
        if (!v6 && v10)
        {
          atomic_store(v10, (v3 + 8));
          return pthread_attr_destroy(&v16);
        }

        v7 = v6;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_1C660;
          exception[2] = v7;
        }

        *buf = 136315394;
        v13 = "CAPThread.cpp";
        v14 = 1024;
        v15 = 272;
        v8 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2BE8(uint64_t a1)
{
  atomic_store(pthread_self(), (a1 + 8));
  if (*(a1 + 40))
  {
    pthread_setname_np((a1 + 40));
  }

  if (*(a1 + 121) != 1)
  {
    goto LABEL_6;
  }

  *(a1 + 121) = 1;
  if (!atomic_load((a1 + 8)))
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 116);
  *policy_info = *(a1 + 108);
  v4 = *(a1 + 120);
  v12 = v3;
  v13 = v4;
  v5 = atomic_load((a1 + 8));
  v6 = pthread_mach_thread_np(v5);
  if (thread_policy_set(v6, 2u, policy_info, 4u))
  {
    v9 = CAVerboseAbort();
    __cxa_begin_catch(v9);
    __cxa_end_catch();
  }

  else
  {
LABEL_6:
    v7 = *(a1 + 24);
    if (v7)
    {
      result = v7(*(a1 + 32));
      atomic_store(0, (a1 + 8));
      if (*(a1 + 123) != 1)
      {
        return result;
      }

LABEL_11:
      v10 = result;
      (*(*a1 + 8))(a1);
      return v10;
    }
  }

  result = 0;
  atomic_store(0, (a1 + 8));
  if (*(a1 + 123) == 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2D30(uint64_t a1, uint64_t a2)
{
  *a1 = off_1C7E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v3 = pthread_mutex_init((a1 + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_1C660;
    exception[2] = v5;
  }

  return a1;
}

uint64_t sub_2E68(uint64_t a1)
{
  *a1 = off_1C7E0;
  pthread_mutex_destroy((a1 + 24));
  return a1;
}

void sub_2EB0(uint64_t a1)
{
  *a1 = off_1C7E0;
  pthread_mutex_destroy((a1 + 24));

  operator delete();
}

BOOL sub_2F18(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((a1 + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_1C660;
      exception[2] = v6;
    }

    atomic_store(v2, (a1 + 16));
    v3 = 0;
  }

  return v3 == 0;
}

void sub_305C(uint64_t a1)
{
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    atomic_store(0, (a1 + 16));
    v3 = pthread_mutex_unlock((a1 + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_1C660;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

uint64_t sub_31E4(uint64_t a1, char *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((a1 + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_1C660;
      exception[2] = v8;
    }

    atomic_store(v4, (a1 + 16));
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

void sub_33CC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_11B0(&v2, *(a1 + 264));
    strlcpy(__dst, &v2, 0x100uLL);
    v2 = 136315906;
    v3 = "MIDIRTPSession.cpp";
    v4 = 1024;
    v5 = 102;
    v6 = 2080;
    v7 = a1 + 8;
    v8 = 2080;
    v9 = __dst;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: %s\n", &v2, 0x26u);
  }
}

void sub_34C4(uint64_t a1, uint64_t a2)
{
  *a1 = off_1C828;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 144) = -1;
  *(a1 + 148) = 0;
  *(a1 + 128) = off_1C888;
  *(a1 + 136) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0;
  *(a1 + 160) = a1;
  *(a1 + 168) = off_1C888;
  *(a1 + 216) = 0;
  *(a1 + 224) = -1;
  *(a1 + 228) = 0;
  *(a1 + 200) = a1;
  *(a1 + 208) = off_1C8D8;
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  *(a1 + 268) = 0;
  *(a1 + 240) = a1;
  *(a1 + 248) = off_1C8D8;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1;
  *(a1 + 280) = a1;
  *(a1 + 288) = &off_1C900;
  sub_2E64(a1 + 312, "MIDIRTPSession.mSessionLock");
  *(a1 + 424) = a1 + 432;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 452) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 7;
  *(a1 + 536) = 0;
  *(a1 + 516) = 0;
  *(a1 + 484) = 0u;
  *(a1 + 500) = 0u;
  *(a1 + 544) = 0x3F847AE147AE147BLL;
  *(a1 + 552) = off_1C950;
  *(a1 + 584) = 0;
  *(a1 + 592) = MIDIPacketListInit((a1 + 600));
  *(a1 + 552) = off_1C928;
  *(a1 + 1624) = a1;
  *(a1 + 1633) = 0;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = a1 + 1672;
  *(a1 + 1680) = a1 + 1672;
  *(a1 + 1688) = 0;
  operator new();
}

void sub_3790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  v21 = v15;
  sub_9D48(v18);
  sub_A48C(v21);
  sub_9DA8(v17);
  sub_9E5C(v16);
  sub_9814(v12 + 424, *v20);
  sub_2E68(v12 + 312);
  sub_B44(v19);
  sub_386C(a9);
  sub_386C(a10);
  sub_3824(a11);
  sub_3824(a12);
  sub_38BC(v14);
  sub_38BC(v13);
  _Unwind_Resume(a1);
}

void *sub_3824(void *a1)
{
  *a1 = off_1C8B0;
  sub_11624(a1);
  return a1;
}

void *sub_386C(void *a1)
{
  *a1 = off_1C8B0;
  sub_11624(a1);
  return a1;
}

uint64_t sub_38BC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_3900(uint64_t a1)
{
  *a1 = off_1C828;
  sub_3C38(a1);
  if (*(a1 + 1688))
  {
    v2 = *(a1 + 1680);
    v3 = *(*(a1 + 1672) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 1688) = 0;
    if (v2 != (a1 + 1672))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 1672));
    }
  }

  v6 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 16) = 0;
    }

    std::recursive_mutex::~recursive_mutex((v6 + 24));
    operator delete();
  }

  v8 = *(a1 + 1640);
  if (v8)
  {
    v9 = *(a1 + 1648);
    v10 = *(a1 + 1640);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *(a1 + 1640);
    }

    *(a1 + 1648) = v8;
    operator delete(v10);
  }

  *(a1 + 552) = off_1C928;
  if (*(a1 + 600))
  {
    sub_77D0(*(a1 + 1624), a1 + 600);
  }

  *(a1 + 592) = MIDIPacketListInit((a1 + 600));
  *(a1 + 552) = off_1C950;
  if (*(a1 + 600))
  {
    __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
  }

  v12 = *(a1 + 584);
  if (v12 == a1 + 560)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  sub_9814(a1 + 424, *(a1 + 432));
  sub_2E68(a1 + 312);
  sub_B44(a1 + 288);
  *(a1 + 248) = off_1C8B0;
  sub_11624(a1 + 248);
  *(a1 + 208) = off_1C8B0;
  sub_11624(a1 + 208);
  *(a1 + 168) = off_1C8B0;
  sub_11624(a1 + 168);
  *(a1 + 128) = off_1C8B0;
  sub_11624(a1 + 128);
  if (*(a1 + 112) == 1)
  {
    v13 = *(a1 + 104);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (*(a1 + 32) == 1)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  return a1;
}

void sub_3C38(uint64_t a1)
{
  v14 = a1 + 312;
  v15 = (*(*(a1 + 312) + 16))();
  v2 = *(a1 + 1664);
  std::recursive_mutex::lock((v2 + 24));
  CFRunLoopTimerInvalidate(*(v2 + 16));
  std::recursive_mutex::unlock((v2 + 24));
  v3 = *(a1 + 512);
  if (v3)
  {
    if (*v3)
    {
      MIDITimerTaskDispose();
    }

    operator delete();
  }

  *(a1 + 512) = 0;
  v4 = *(a1 + 536);
  if (v4)
  {
    if (*v4)
    {
      MIDITimerTaskDispose();
    }

    operator delete();
  }

  *(a1 + 536) = 0;
  for (i = *(a1 + 1648); *(a1 + 1640) != i; i = *(a1 + 1648))
  {
    v6 = *(i - 8);
    v13[0] = *(i - 16);
    v13[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_4930(a1, v13, 1, 1);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  sub_11624(a1 + 128);
  sub_11624(a1 + 168);
  sub_11624(a1 + 208);
  sub_11624(a1 + 248);
  sub_BD0(a1 + 288);
  v7 = (a1 + 1672);
  v8 = *(a1 + 1680);
  if (v8 != a1 + 1672)
  {
    do
    {
      free(*(v8 + 32));
      v8 = *(v8 + 8);
    }

    while (v8 != v7);
  }

  if (*(a1 + 1688))
  {
    v9 = *(a1 + 1680);
    v10 = *(*(a1 + 1672) + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *(a1 + 1688) = 0;
    if (v9 != v7)
    {
      do
      {
        v12 = v9[1];
        operator delete(v9);
        v9 = v12;
      }

      while (v12 != v7);
    }
  }

  *(a1 + 16) = 0;
  if (v15 == 1)
  {
    (*(*v14 + 24))(v14);
  }
}

void sub_3E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::recursive_mutex::unlock((v3 + 24));
  sub_4C78(va);
  _Unwind_Resume(a1);
}

void sub_3E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4C78(va);
  _Unwind_Resume(a1);
}

void sub_3EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_4C00(&a9);
  sub_4C78(&a11);
  _Unwind_Resume(a1);
}

void sub_3EC4(uint64_t a1)
{
  sub_3900(a1);

  operator delete();
}

BOOL sub_3EFC(uint64_t a1, unsigned int a2)
{
  *(a1 + 120) = a2;
  *(a1 + 122) = a2 + 1;
  v6 = 0;
  *&v5.sa_data[6] = 0;
  v7 = 0;
  *&v5.sa_len = 528;
  *&v5.sa_data[2] = 0;
  *v5.sa_data = __rev16(a2);
  if (bind(*(a1 + 144), &v5, 0x10u) < 0)
  {
    if ((*__error() & 0xFFFFFFFE) == 0x30)
    {
      v3 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 148) = bswap32(*v5.sa_data) >> 16;
  }

  *v5.sa_data = bswap32(*(a1 + 122)) >> 16;
  if (bind(*(a1 + 224), &v5, v5.sa_len) < 0)
  {
    v3 = (*__error() & 0xFFFFFFFE) != 48;
  }

  else
  {
    *(a1 + 228) = bswap32(*v5.sa_data) >> 16;
    v3 = 1;
  }

LABEL_8:
  *&v5.sa_data[2] = 0;
  v7 = 0;
  *&v5.sa_len = 7708;
  *&v5.sa_data[6] = 0;
  v6 = 0;
  *v5.sa_data = bswap32(*(a1 + 120)) >> 16;
  if (bind(*(a1 + 184), &v5, 0x1Cu) < 0)
  {
    if ((*__error() & 0xFFFFFFFE) == 0x30)
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 188) = bswap32(*v5.sa_data) >> 16;
  }

  *v5.sa_data = bswap32(*(a1 + 122)) >> 16;
  if (bind(*(a1 + 264), &v5, v5.sa_len) < 0)
  {
    return v3 & ((*__error() & 0xFFFFFFFE) != 48);
  }

  *(a1 + 268) = bswap32(*v5.sa_data) >> 16;
  return v3;
}

void sub_40D8(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!qword_20078)
  {
    operator new();
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    *(a1 + 104) = a2;
    *(a1 + 113) = 0;
    goto LABEL_11;
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    CFRelease(v6);
    v7 = *(a1 + 112);
    *(a1 + 104) = a2;
    *(a1 + 113) = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 1;
    *(a1 + 104) = a2;
    *(a1 + 113) = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (v7)
  {
    CFRetain(a2);
  }

LABEL_11:
  sub_46F4(a1);
  sub_11670(a1 + 128, qword_20078, 2, 2, 0, 32769);
  sub_11670(a1 + 168, qword_20078, 30, 2, 0, 32769);
  sub_11670(a1 + 208, qword_20078, 2, 2, 0, 1);
  sub_11670(a1 + 248, qword_20078, 30, 2, 0, 1);
  if (!a3 || !sub_3EFC(a1, a3))
  {
    v8 = 5004;
    while (!sub_3EFC(a1, v8))
    {
      v8 += 2;
      if (v8 == 65534)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          sub_11B0(__str, 0xFFFFFFFF);
          *buf = 136315906;
          v18 = "MIDIRTPSession.cpp";
          v19 = 1024;
          v20 = 329;
          v21 = 2080;
          v22 = __str;
          v23 = 2080;
          v24 = "Couldn't find free port";
          _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        sub_EBC(exception, "Couldn't find free port", -1);
      }
    }

    if (a3 != v8)
    {
      (*(**(a1 + 8) + 40))(*(a1 + 8), v8);
    }
  }

  fcntl(*(a1 + 144), 4, 4);
  fcntl(*(a1 + 184), 4, 4);
  fcntl(*(a1 + 224), 4, 4);
  fcntl(*(a1 + 264), 4, 4);
  v10 = *(a1 + 104);
  if (v10 && CFStringGetLength(v10) >= 1)
  {
    sub_C88((a1 + 288), @"_apple-midi._udp", *(a1 + 104), @"local.", *(a1 + 120));
  }

  v11 = open("/dev/urandom", 4);
  v12 = v11;
  *buf = 0;
  if (v11 < 0 || read(v11, buf, 4uLL) < 0)
  {
    *(a1 + 400) = rand();
    *buf = 0;
    if (v12 < 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(a1 + 400) = *buf;
    *buf = 0;
  }

  if ((read(v12, buf, 4uLL) & 0x8000000000000000) == 0)
  {
    v13 = *buf;
LABEL_31:
    *(a1 + 416) = v13 + 1;
    v14 = mach_absolute_time();
    *buf = 0;
    if (v12 < 0 || read(v12, buf, 4uLL) < 0)
    {
      v15 = rand();
    }

    else
    {
      v15 = *buf;
    }

    *(a1 + 408) = v14 ^ v15 & 0xFFFFFF;
    sub_9814(a1 + 424, *(a1 + 432));
    *(a1 + 424) = a1 + 432;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0;
    *(a1 + 452) = 0;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 7;
    *(a1 + 492) = 0;
    *(a1 + 500) = 0;
    *(a1 + 484) = 0;
    *(a1 + 508) = 0;
    *(a1 + 16) = 1;
    CFRunLoopGetCurrent();
    operator new();
  }

LABEL_30:
  v13 = rand();
  goto LABEL_31;
}

void sub_4638(uint64_t a1, int a2)
{
  if (a2)
  {
    operator delete();
  }

  JUMPOUT(0x46E4);
}

void sub_46DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_C38(exception_object);
}

uint64_t sub_46F4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && CFStringGetLength(v2) >= 1)
  {
    if (*(a1 + 32) == 1)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = *(a1 + 104);
    *(a1 + 24) = v4;
    v5 = *(a1 + 112);
    *(a1 + 32) = v5;
    *(a1 + 33) = *(a1 + 113);
    if (v5 == 1 && v4)
    {
      CFRetain(v4);
      v4 = *(a1 + 24);
    }
  }

  else
  {
    sub_12F8(cStr, 0x80uLL);
    v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (*(a1 + 32) == 1 && *(a1 + 24))
    {
      v6 = v4;
      CFRelease(*(a1 + 24));
      v4 = v6;
    }

    *(a1 + 24) = v4;
    *(a1 + 33) = 0;
  }

  return CFStringGetCString(v4, (a1 + 40), 64, 0x8000100u);
}

double sub_4804(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_9814(a1, *(a1 + 8));
  *a1 = v2;
  result = 0.0;
  *v2 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 7;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 68) = 0;
  *(a1 + 84) = 0;
  return result;
}

uint64_t sub_4864(uint64_t a1)
{
  v2 = a1 + 312;
  v6 = a1 + 312;
  v3 = (*(*(a1 + 312) + 16))(a1 + 312);
  v7 = v3;
  v5[0] = 0;
  *(a1 + 520) = -1;
  result = sub_754C(a1, v5, 0);
  if (v3)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_4930(uint64_t a1, uint64_t *a2, char a3, int a4)
{
  v8 = (a1 + 1672);
  v9 = *(a1 + 1680);
  if (v9 != (a1 + 1672))
  {
    do
    {
      v14 = v9[1];
      if (v9[3] == *a2)
      {
        free(v9[4]);
        v16 = *v9;
        v15 = v9[1];
        *(v16 + 8) = v15;
        *v15 = v16;
        --*(a1 + 1688);
        operator delete(v9);
      }

      v9 = v14;
    }

    while (v14 != v8);
  }

  if (a3)
  {
    v10 = *a2;
    if (*(*a2 + 28) >= 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v22 = 0x20000005942FFFFLL;
      v11 = bswap32(*(a1 + 400));
      v23 = 0;
      v24 = v11;
      *v21 = *(v10 + 64);
      *&v21[12] = *(v10 + 76);
      sub_1660(v21, v41, 0x100uLL);
      if ((sendto(*(a1 + 40 * (v21[1] == 30) + 144), &v22, 0x10uLL, 0, v21, v21[0]) & 0x80000000) != 0)
      {
        __error();
      }
    }
  }

  v12 = *(a1 + 1640);
  v13 = *(a1 + 1648);
  if (v12 == v13)
  {
LABEL_9:
    if (a4)
    {
LABEL_28:
      (*(**(a1 + 8) + 24))(*(a1 + 8), *(*a2 + 48));
    }
  }

  else
  {
    while (*v12 != *a2)
    {
      v12 += 2;
      if (v12 == v13)
      {
        goto LABEL_9;
      }
    }

    v17 = v12 + 2;
    if (v12 + 2 != v13)
    {
      do
      {
        v12 = v17;
        v18 = *v17;
        *v17 = 0;
        v17[1] = 0;
        v19 = *(v17 - 1);
        *(v17 - 1) = v18;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 = v12 + 2;
      }

      while (v12 + 2 != v13);
      v13 = *(a1 + 1648);
    }

    for (; v13 != v12; v13 -= 2)
    {
      v20 = *(v13 - 1);
      if (v20)
      {
        if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }

    *(a1 + 1648) = v12;
    if (a4)
    {
      goto LABEL_28;
    }
  }
}

uint64_t sub_4C00(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

_BYTE *sub_4C78(_BYTE *result)
{
  if (result[8] == 1)
  {
    v1 = result;
    (*(**result + 24))(*result);
    return v1;
  }

  return result;
}

uint64_t sub_4CD8(uint64_t a1, const __CFString *a2)
{
  sub_BD0(a1 + 288);
  if (*(a1 + 112))
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      CFRelease(v4);
      v5 = *(a1 + 112);
      *(a1 + 104) = a2;
      *(a1 + 113) = 0;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 1;
      *(a1 + 104) = a2;
      *(a1 + 113) = 0;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    if (v5)
    {
      CFRetain(a2);
      a2 = *(a1 + 104);
    }
  }

  else
  {
    *(a1 + 104) = a2;
    *(a1 + 113) = 0;
  }

LABEL_9:
  if (a2 && CFStringGetLength(a2) >= 1)
  {
    sub_C88((a1 + 288), @"_apple-midi._udp", *(a1 + 104), @"local.", *(a1 + 120));
  }

  return sub_46F4(a1);
}

uint64_t sub_4DA0(uint64_t a1)
{
  CFStringGetCString(*(a1 + 104), buffer, 55, 0x8000100u);
  v2 = strrchr(buffer, 32);
  if (!v2)
  {
    v2 = &buffer[strlen(buffer)];
  }

  v3 = word_20000++;
  snprintf(v2, 8uLL, " %d", v3);
  v4 = CFStringCreateWithCString(0, buffer, 0x8000100u);
  if (*(a1 + 112) == 1)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  *(a1 + 104) = v4;
  *(a1 + 113) = 0;
  (*(**(a1 + 8) + 8))(*(a1 + 8), v4);
  sub_C88((a1 + 288), @"_apple-midi._udp", *(a1 + 104), @"local.", *(a1 + 120));
  return sub_46F4(a1);
}

ssize_t sub_4EDC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6)
{
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v15[0] = bswap32(a3);
  v15[1] = 0x2000000;
  v7 = bswap32(*(a1 + 400));
  v15[2] = bswap32(a4);
  v15[3] = v7;
  if (a6)
  {
    v8 = a2;
    v9 = a1;
    v10 = a3;
    CFStringGetCString(*(a1 + 24), v16, 256, 0x8000100u);
    HIBYTE(v17) = 0;
    v11 = strlen(v16);
    a2 = v8;
    a3 = v10;
    v12 = v11;
    a1 = v9;
    v13 = v12 + 17;
  }

  else
  {
    v13 = 16;
  }

  return sub_7FE0(a1, a2, a3, a5, v15, v13);
}

void sub_5008(void *a1, const __CFString *a2, int a3)
{
  v11 = a3;
  v9 = a1 + 39;
  v10 = (*(a1[39] + 16))();
  sub_1D44(@"_apple-midi._udp", a2, &__s2);
  v5 = a1[205];
  for (i = a1[206]; v5 != i; v5 += 16)
  {
    if (!memcmp((*v5 + 64), &__s2, *(*v5 + 64)))
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        sub_11B0(__str, 0xFFFFFFFD);
        buf = 136315906;
        buf_4 = "MIDIRTPSession.cpp";
        v15 = 1024;
        v16 = 558;
        v17 = 2080;
        v18 = __str;
        v19 = 2080;
        v20 = "";
        _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", &buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      sub_EBC(exception, "", -3);
    }
  }

  sub_A624();
}

void sub_56D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_5728(void *a1, const void *a2)
{
  v8 = a1 + 39;
  v9 = (*(a1[39] + 16))();
  v4 = a1[205];
  v5 = a1[206];
  if (v4 != v5)
  {
    while (!CFEqual(*(*v4 + 48), a2))
    {
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    v6 = v4[1];
    v7[0] = *v4;
    v7[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_4930(a1, v7, 1, 0);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_4:
  if (v9 == 1)
  {
    (*(*v8 + 24))(v8);
  }
}

void sub_5864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_4C00(&a9);
  sub_4C78(&a11);
  _Unwind_Resume(a1);
}

void sub_5884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4C78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5898(void *a1, const void *a2, int a3)
{
  v6 = a1 + 39;
  result = (*(a1[39] + 16))(a1 + 39);
  v8 = result;
  v9 = a1[205];
  v10 = a1[206];
  if (v9 == v10)
  {
LABEL_4:
    if (!v8)
    {
      return result;
    }

    return (*(*v6 + 24))(v6);
  }

  while (1)
  {
    result = CFEqual(*(*v9 + 48), a2);
    if (result)
    {
      break;
    }

    v9 += 2;
    if (v9 == v10)
    {
      goto LABEL_4;
    }
  }

  v11 = *v9;
  if (a3 < 0)
  {
    result = __udivti3();
    *(v11 + 128) = -result;
    if (!v8)
    {
      return result;
    }

    return (*(*v6 + 24))(v6);
  }

  *(v11 + 128) = 24000 * a3;
  if (v8)
  {
    return (*(*v6 + 24))(v6);
  }

  return result;
}

MIDIPacketList *sub_59E0(void *a1, int a2)
{
  *&pktlist.packet[0].data[18] = 0;
  *&pktlist.packet[0].data[26] = MIDIPacketListInit(&pktlist.packet[0].data[34]);
  *&pktlist.numPackets = &off_1C860;
  v92 = 0;
  v93 = a1;
  while (1)
  {
    v86[0] = 28;
    v4 = recvfrom(a1[5 * (a2 == 30) + 28], v94, 0x5C1uLL, 0, &v88, v86);
    v5 = v4;
    if (v4 != v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = &off_1CA80;
    }

    if (v4 < 1)
    {
      break;
    }

    if (v4 >= 4)
    {
      *v86 = a1 + 39;
      v87 = 0;
      v87 = (*(a1[39] + 16))(a1 + 39);
      v6 = bswap32(v94[0]);
      if (v6 >= 0xFFFF0000)
      {
        sub_6450(a1, 0, v94, v5 & 0x7FFFFFFF, &v88);
        goto LABEL_18;
      }

      if (LOBYTE(v94[0]) == 128 && v5 >= 0xE && (v94[0] & 0xFF00) == 0x6100)
      {
        v7 = a1[205];
        v8 = a1[206];
        if (v7 != v8)
        {
          v9 = bswap32(v94[2]);
          while (1)
          {
            v10 = *v7;
            if (*(*v7 + 120) == v9)
            {
              break;
            }

            v7 += 2;
            if (v7 == v8)
            {
              goto LABEL_14;
            }
          }

          v12 = v7[1];
          v84 = v10;
          v85 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v10 + 7) != 2)
          {
            goto LABEL_15;
          }

          v13 = v95;
          if (v95 < 0)
          {
            v14 = bswap32(v95 & 0xFF0F) >> 16;
            v15 = 14;
          }

          else
          {
            v14 = v95 & 0xF;
            v15 = 13;
          }

          v80 = bswap32(v94[1]);
          if (v5 - v15 >= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v5 - v15;
          }

          v17 = v15;
          v18 = v16 + v15;
          v19 = v5 - v18;
          v21 = (v95 & 0x40) == 0 || v19 < 3;
          v22 = v6;
          v23 = *(v10 + 75);
          v24 = v6 - v23;
          v25 = v23 + (v22 - v23);
          if (v23)
          {
            v26 = v23 + (v22 - v23);
          }

          else
          {
            v26 = v22;
          }

          v79 = v26;
          v90 = v26;
          v91 = 1;
          if (v23)
          {
            if ((v22 - v23) - 1 < 0)
            {
              *(v10 + 75) = v25;
              goto LABEL_15;
            }

            if (v24 != 1 && !v21)
            {
              v27 = v10[32];
              if (v27)
              {
                v28 = v27 + v80 - v27;
              }

              else
              {
                v28 = v80;
              }

              v29 = (v28 + v10[21]) * 2400.0;
              v30 = v10[16] + a1[51];
              v10[32] = v28;
              sub_13BD4(v10 + 312, v94 + v18, v19, v23 + 1, v25, v30 + v29, &pktlist);
              if (v92)
              {
                v92 = 0;
                v31 = a1[205];
                v32 = a1[206];
                if (v31 == v32)
                {
LABEL_48:
                  v33 = 0;
                  v10 = 0;
                }

                else
                {
                  while (1)
                  {
                    v10 = *v31;
                    if (*(*v31 + 120) == v9)
                    {
                      break;
                    }

                    v31 += 2;
                    if (v31 == v32)
                    {
                      goto LABEL_48;
                    }
                  }

                  v33 = v31[1];
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                  }
                }

                v34 = v85;
                v84 = v10;
                v85 = v33;
                if (v34)
                {
                  if (!atomic_fetch_add(v34 + 1, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v77 = v34;
                    (*(*v34 + 16))(v34);
                    std::__shared_weak_count::__release_weak(v77);
                  }

                  v10 = v84;
                }

                if (v10)
                {
                  goto LABEL_58;
                }

LABEL_15:
                v11 = v85;
                if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v11->__on_zero_shared)(v11);
                  std::__shared_weak_count::__release_weak(v11);
                }

                goto LABEL_18;
              }

              v10 = v84;
            }
          }

LABEL_58:
          *(v10 + 75) = v79;
          if (!v21)
          {
            v35 = bswap32(*(v94 + v18 + 1)) >> 16;
            if (v79)
            {
              v36 = v79 + (v35 - v79);
            }

            else
            {
              v36 = v35;
            }

            sub_14774((v10 + 39), v36);
            v10 = v84;
          }

          if ((atomic_fetch_or(v10 + 296, 1u) & 1) == 0)
          {
            v37 = v84[36];
            Current = CFAbsoluteTimeGetCurrent();
            v39 = Current + 1.0;
            CFRunLoopTimerSetNextFireDate(*(v37 + 16), Current + 1.0);
            NextFireDate = CFRunLoopTimerGetNextFireDate(*(v37 + 16));
            v41 = Current + 1.0001;
            while (NextFireDate > v41)
            {
              CFRunLoopTimerSetNextFireDate(*(v37 + 16), v39);
              NextFireDate = CFRunLoopTimerGetNextFireDate(*(v37 + 16));
            }
          }

          if (v16)
          {
            v42 = v94 + v17;
            v43 = v94 + v17 + v16;
            v68 = (v13 & 0x20) == 0;
            v44 = 0;
            v45 = v68;
            v78 = (v94 + v17 + v16);
            while (1)
            {
              if (v45)
              {
                v46 = v42;
                v47 = *v42++;
                v48 = v47;
                if ((v47 & 0x80000000) == 0)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                v46 = v42 + 1;
                v50 = *v42;
                if (*v42 < 0)
                {
                  v51 = v50 & 0x7F;
                  while (v46 < v43)
                  {
                    v52 = *v46++;
                    v50 = v52 & 0x7F | (v51 << 7);
                    v51 = v50;
                    if ((v52 & 0x80) == 0)
                    {
                      goto LABEL_86;
                    }
                  }

                  v50 = v51;
                }

LABEL_86:
                if (v46 == v43)
                {
                  goto LABEL_15;
                }

                LODWORD(v80) = v50 + v80;
                v42 = v46 + 1;
                v48 = *v46;
                if ((*v46 & 0x80000000) == 0)
                {
LABEL_74:
                  if (!v44)
                  {
                    goto LABEL_15;
                  }

                  data = v44;
                  v82 = v48;
                  if ((v44 & 0xE0) == 0xC0)
                  {
                    v49 = 2;
                    goto LABEL_101;
                  }

                  if (v42 == v43)
                  {
                    goto LABEL_15;
                  }

                  v42 = v46 + 2;
                  v53 = v46[1];
LABEL_84:
                  v83 = v53;
                  v49 = 3;
                  goto LABEL_101;
                }
              }

              if (v48 > 0xEF)
              {
                if (v48 > 0xF7)
                {
                  data = v48;
                  goto LABEL_100;
                }

                if (v48 > 242)
                {
                  if (v48 == 243)
                  {
                    goto LABEL_129;
                  }

                  if (v48 == 246)
                  {
                    v44 = 0;
                    data = -10;
LABEL_100:
                    v49 = 1;
LABEL_101:
                    p_data = &data;
                    goto LABEL_102;
                  }

                  v65 = v42;
                  if (v48 != 247)
                  {
                    goto LABEL_15;
                  }
                }

                else
                {
                  if (v48 != 240)
                  {
                    if (v48 == 241)
                    {
LABEL_129:
                      data = v48;
                      if (v42 != v43)
                      {
                        v44 = 0;
                        v42 = v46 + 2;
                        v82 = v46[1];
                        v49 = 2;
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                      data = -14;
                      if (v42 != v43)
                      {
                        v42 = v46 + 2;
                        v82 = v46[1];
                        if (v46 + 2 != v43)
                        {
                          v44 = 0;
                          v42 = v46 + 3;
                          v53 = v46[2];
                          goto LABEL_84;
                        }
                      }
                    }

                    v44 = 0;
                    v49 = 2;
                    goto LABEL_101;
                  }

                  v65 = v42;
                }

                do
                {
                  if (v65 >= v43)
                  {
                    break;
                  }

                  v66 = *v65++;
                  v67 = (1 << (v66 + 16)) & 0x91;
                  v68 = (v66 - 240) > 7 || v67 == 0;
                }

                while (v68);
                v69 = *(v65 - 1);
                v70 = v65 - 1 - v46;
                v71 = v70 - 1;
                if (v69 == 247)
                {
                  v72 = v42;
                }

                else
                {
                  v72 = v46;
                }

                if (v69 == 247)
                {
                  v73 = v65 - 1 - v46;
                }

                else
                {
                  v73 = v65 - v46;
                }

                if (v69 == 244)
                {
                  v72 = v46;
                  v73 = 1;
                }

                if (v69 == 240)
                {
                  v74 = v42;
                }

                else
                {
                  v74 = v72;
                }

                if (v69 != 240)
                {
                  v71 = v73;
                  v70 = v65 - v46;
                }

                v44 = 0;
                if (v48 == 240)
                {
                  p_data = v46;
                }

                else
                {
                  p_data = v74;
                }

                if (v48 == 240)
                {
                  v49 = v70;
                }

                else
                {
                  v49 = v71;
                }

                v42 = v65;
              }

              else
              {
                data = v48;
                if (v42 == v43)
                {
                  goto LABEL_15;
                }

                v42 = v46 + 2;
                v82 = v46[1];
                if ((v48 & 0xE0) == 0xC0)
                {
                  v49 = 2;
                }

                else
                {
                  if (v42 == v43)
                  {
                    goto LABEL_15;
                  }

                  v42 = v46 + 3;
                  v83 = v46[2];
                  v49 = 3;
                }

                p_data = &data;
                v44 = v48;
              }

LABEL_102:
              v55 = v84[32];
              if (v55)
              {
                v56 = v55 + v80 - v55;
              }

              else
              {
                v56 = v80;
              }

              v57 = ((v56 + v84[21]) * 2400.0);
              v58 = v84[16] + a1[51];
              v84[32] = v56;
              sub_22E0(&pktlist, v58 + v57, v49, p_data);
              if (v92)
              {
                v92 = 0;
                v59 = a1[205];
                v60 = a1[206];
                if (v59 == v60)
                {
LABEL_109:
                  v62 = v44;
                  v61 = 0;
                  v63 = v85;
                  v84 = 0;
                  v85 = 0;
                  if (!v63)
                  {
                    goto LABEL_122;
                  }
                }

                else
                {
                  while (1)
                  {
                    v61 = *v59;
                    if (*(*v59 + 120) == v9)
                    {
                      break;
                    }

                    v59 += 2;
                    if (v59 == v60)
                    {
                      goto LABEL_109;
                    }
                  }

                  v64 = v59[1];
                  if (v64)
                  {
                    v62 = v44;
                    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                    v63 = v85;
                    v84 = v61;
                    v85 = v64;
                    if (!v63)
                    {
                      goto LABEL_122;
                    }
                  }

                  else
                  {
                    v62 = v44;
                    v63 = v85;
                    v84 = v61;
                    v85 = 0;
                    if (!v63)
                    {
                      goto LABEL_122;
                    }
                  }
                }

                if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v63->__on_zero_shared)(v63);
                  std::__shared_weak_count::__release_weak(v63);
                }

                v61 = v84;
LABEL_122:
                v44 = v62;
                v43 = v78;
                if (!v61)
                {
                  goto LABEL_15;
                }

                goto LABEL_123;
              }

              v61 = v84;
LABEL_123:
              sub_12540((v61 + 39), v79, v58 + v57, p_data);
              v45 = 0;
              if (v42 >= v43)
              {
                goto LABEL_15;
              }
            }
          }

          goto LABEL_15;
        }

LABEL_14:
        v84 = 0;
        v85 = 0;
        goto LABEL_15;
      }

LABEL_18:
      if (v87 == 1)
      {
        (*(**v86 + 24))(*v86);
      }
    }
  }

  v91 = 0;
  if (*&pktlist.packet[0].data[34])
  {
    (*(*&pktlist.numPackets + 16))(&pktlist, &pktlist.packet[0].data[34]);
  }

  *&pktlist.packet[0].data[26] = MIDIPacketListInit(&pktlist.packet[0].data[34]);
  if (v5)
  {
    __error();
  }

  return sub_A218(&pktlist);
}

void sub_6450(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_8FE0(exception, "GSL: Precondition failure at /Library/Caches/com.apple.xbs/Sources/CoreMIDI_Drivers/Source/MIDI/Drivers/RTP/MIDIRTPSession.cpp: 1704");
    sub_14E24(exception);
  }

  v5 = a4;
  memset(__str, 0, sizeof(__str));
  memset(v77, 0, sizeof(v77));
  if (*a3 == 1262747647)
  {
    if (a4 >= 0x14)
    {

      sub_8D0C(a1, a3);
    }

    return;
  }

  v10 = bswap32(*a3);
  if (sub_1660(a5, v77, 0x100uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "MIDIRTPSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1712;
      v71 = 2048;
      v72 = a5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d NetUtils::AddressToName(%p, peerNameAddrWithoutPort, sizeof(peerNameAddrWithoutPort) failed. Cannot handle control packet.", buf, 0x1Cu);
    }

    if (v10 <= -45238)
    {
LABEL_9:
      if (v10 == -48551)
      {
        if (v5 >= 0x10)
        {
          *buf = a1 + 312;
          buf[8] = (*(*(a1 + 312) + 16))();
          v23 = *(a1 + 1640);
          v24 = *(a1 + 1648);
          if (v23 != v24)
          {
            v25 = bswap32(*(a3 + 12));
            while (1)
            {
              v26 = *v23;
              if (*(*v23 + 120) == v25)
              {
                break;
              }

              v23 += 2;
              if (v23 == v24)
              {
                goto LABEL_121;
              }
            }

            v38 = v23[1];
            v68 = *v23;
            v69 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              v60 = v26;
              v61 = v38;
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              v60 = v26;
              v61 = 0;
            }

            sub_4930(a1, &v60, 0, 1);
            sub_4C00(&v60);
            if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v38->__on_zero_shared)(v38);
              std::__shared_weak_count::__release_weak(v38);
            }
          }

LABEL_121:
          if (buf[8] == 1)
          {
            (*(**buf + 24))(*buf);
          }
        }
      }

      else if (v10 == -46770)
      {
        if (v5 >= 0x10)
        {
          v68 = (a1 + 312);
          LOBYTE(v69) = (*(*(a1 + 312) + 16))();
          v31 = *(a1 + 1640);
          v32 = *(a1 + 1648);
          if (v31 == v32)
          {
LABEL_51:
            v67 = 0uLL;
            v66 = 0;
            v65 = 0;
            sub_AE70();
          }

          v33 = bswap32(*(a3 + 12));
          while (1)
          {
            v34 = *v31;
            if (*(*v31 + 120) == v33)
            {
              break;
            }

            v31 += 2;
            if (v31 == v32)
            {
              goto LABEL_51;
            }
          }

          v44 = v31[1];
          *&v67 = v34;
          *(&v67 + 1) = v44;
          if (v44)
          {
            atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
          }

          v45 = v67;
          if (a2)
          {
            v46 = *a5;
            *(v67 + 76) = *(a5 + 12);
            *(v45 + 64) = v46;
            sub_880C(v45);
            v47 = CFStringCreateWithCString(0, __str, 0x8000100u);
            if (!v47)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "MIDIRTPSession.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1755;
                _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d CoreMIDI network peer address name CFStringRef was NULL! This should never happen.", buf, 0x12u);
              }

              v47 = CFStringCreateWithCString(0, "??????", 0x8000100u);
            }

            v48 = v67;
            if (*(v67 + 56) == 1)
            {
              v49 = *(v67 + 48);
              if (v49)
              {
                CFRelease(v49);
              }
            }

            *(v67 + 48) = v47;
            *(v48 + 57) = 0;
          }

          else
          {
            v50 = *a5;
            *(v67 + 104) = *(a5 + 12);
            *(v45 + 92) = v50;
            sub_880C(v45);
          }

          v51 = v67;
          *(v67 + 120) = bswap32(*(a3 + 12));
          if (v5 >= 0x11)
          {
            LODWORD(v5) = v5 - (*(a3 + v5 - 1) == 0);
          }

          v52 = CFStringCreateWithBytes(0, (a3 + 16), v5 - 16, 0x8000100u, 1u);
          if (*(v51 + 40) == 1)
          {
            v53 = *(v51 + 32);
            if (v53)
            {
              CFRelease(v53);
            }
          }

          *(v51 + 32) = v52;
          *(v51 + 41) = 0;
          v54 = v67;
          *(v67 + 408) = *(a1 + 416) - 1;
          v55 = bswap32(*(a3 + 4));
          if (v55 > 1)
          {
            sub_4EDC(a1, a2, 0xFFFF4F4B, bswap32(*(a3 + 8)), v54, 1);
            sub_880C(v67);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              *&buf[4] = "MIDIRTPSession.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1772;
              v71 = 2080;
              v72 = a1 + 40;
              v73 = 2080;
              v74 = __str;
              v75 = 1024;
              v76 = v55;
              _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: rejected connection from %s: unsupported version %d protocol\n", buf, 0x2Cu);
            }

            sub_AFD4(buf, qword_20098, __str);
            (*(**(a1 + 8) + 48))(*(a1 + 8), *&buf[8]);
            sub_8CBC(buf);
            sub_4EDC(a1, a2, 0xFFFF4E4F, bswap32(*(a3 + 8)), v67, 0);
            v64 = v67;
            if (*(&v67 + 1))
            {
              atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            sub_4930(a1, &v64, 1, 1);
            sub_4C00(&v64);
          }

          v57 = *(&v67 + 1);
          if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v57->__on_zero_shared)(v57);
            std::__shared_weak_count::__release_weak(v57);
          }

          if (v69 == 1)
          {
            (*(*v68 + 24))(v68);
          }
        }
      }

      else if (v10 == -45489 && v5 >= 0x10)
      {
        v68 = (a1 + 312);
        LOBYTE(v69) = (*(*(a1 + 312) + 16))();
        v11 = *(a1 + 1640);
        v12 = *(a1 + 1648);
        if (v11 == v12)
        {
LABEL_17:
          v15 = 0;
          v67 = 0uLL;
        }

        else
        {
          v13 = bswap32(*(a3 + 8));
          while (1)
          {
            v14 = *v11;
            if (*(*v11 + 24) == v13)
            {
              break;
            }

            v11 += 2;
            if (v11 == v12)
            {
              goto LABEL_17;
            }
          }

          v15 = v11[1];
          *&v67 = *v11;
          *(&v67 + 1) = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_9018(a1, -46770, v14);
            v62 = v14;
            v63 = v15;
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            sub_9018(a1, -46770, v14);
            v62 = v14;
            v63 = 0;
          }

          sub_4930(a1, &v62, 0, 1);
          sub_4C00(&v62);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "MIDIRTPSession.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1846;
          v71 = 2080;
          v72 = a1 + 40;
          v73 = 2080;
          v74 = __str;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: connection attempt to %s rejected\n", buf, 0x26u);
        }

        v58 = CFStringCreateWithFormat(0, 0, qword_20090, __str);
        *buf = off_1CAA8;
        *&buf[8] = v58;
        (*(**(a1 + 8) + 48))(*(a1 + 8));
        *buf = off_1C9E8;
        if (*&buf[8])
        {
          CFRelease(*&buf[8]);
        }

        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v69 == 1)
        {
          (*(*v68 + 24))(v68);
        }
      }

      return;
    }
  }

  else
  {
    v16 = bswap32(*(a5 + 2)) >> 16;
    if (*(a5 + 1) == 30)
    {
      snprintf(__str, 0x100uLL, "[%s]:%d", v77, v16);
      if (v10 <= -45238)
      {
        goto LABEL_9;
      }
    }

    else
    {
      snprintf(__str, 0x100uLL, "%s:%d", v77, v16);
      if (v10 <= -45238)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 == -45237)
  {
    if (v5 >= 0x10)
    {
      *buf = a1 + 312;
      buf[8] = (*(*(a1 + 312) + 16))();
      v27 = *(a1 + 1640);
      v28 = *(a1 + 1648);
      if (v27 != v28)
      {
        v29 = bswap32(*(a3 + 8));
        while (1)
        {
          v30 = *v27;
          if ((*v27)[6] == v29)
          {
            break;
          }

          v27 += 2;
          if (v27 == v28)
          {
            goto LABEL_115;
          }
        }

        v39 = v27[1];
        v68 = *v27;
        v69 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_9018(a1, -46770, v30);
        v30[30] = bswap32(*(a3 + 12));
        v30[102] = *(a1 + 416) - 1;
        sub_880C(v30);
        if (a2)
        {
          sub_4EDC(a1, 0, 0xFFFF494E, v30[6], v30, 1);
        }

        else
        {
          sub_8684(v30);
        }

        if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }
      }

LABEL_115:
      if (buf[8] == 1)
      {
        goto LABEL_105;
      }
    }
  }

  else
  {
    if (v10 != -44468)
    {
      if (v10 == -44461 && v5 >= 0xA)
      {
        v17 = a1 + 312;
        v18 = (*(*(a1 + 312) + 16))(a1 + 312);
        v19 = *(a1 + 1640);
        v20 = *(a1 + 1648);
        if (v19 != v20)
        {
          v21 = bswap32(*(a3 + 4));
          while (1)
          {
            v22 = *v19;
            if (*(*v19 + 120) == v21)
            {
              break;
            }

            v19 += 2;
            if (v19 == v20)
            {
              goto LABEL_73;
            }
          }

          v40 = v19[1];
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v41 = bswap32(*(a3 + 8)) >> 16;
          v42 = *(v22 + 408);
          if (v42)
          {
            v41 = v42 + (v41 - v42);
          }

          *(v22 + 408) = v41;
          if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v43 = v18;
            (v40->__on_zero_shared)(v40);
            std::__shared_weak_count::__release_weak(v40);
            v18 = v43;
          }
        }

LABEL_73:
        if (v18)
        {
          (*(*v17 + 24))(v17);
        }
      }

      return;
    }

    if (v5 >= 0xC)
    {
      *buf = a1 + 312;
      buf[8] = (*(*(a1 + 312) + 16))();
      v35 = *(a1 + 1640);
      v36 = *(a1 + 1648);
      if (v35 != v36)
      {
        v37 = bswap32(*(a3 + 4));
        while ((*v35)[30] != v37)
        {
          v35 += 2;
          if (v35 == v36)
          {
            goto LABEL_104;
          }
        }

        v56 = v35[1];
        v68 = *v35;
        v69 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(**(a1 + 8) + 56))(*(a1 + 8), bswap32(*(a3 + 8)));
        if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56);
          std::__shared_weak_count::__release_weak(v56);
        }
      }

LABEL_104:
      if (buf[8] == 1)
      {
LABEL_105:
        (*(**buf + 24))(*buf);
      }
    }
  }
}

void sub_7388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_4C00(va);
  sub_4C00(va1);
  sub_4C78(va2);
  _Unwind_Resume(a1);
}

void sub_7414(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_C38();
  }

  _Unwind_Resume(a1);
}

void sub_7468(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x746CLL);
  }

  _Unwind_Resume(a1);
}

void sub_7470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_4C00(va);
  sub_4C78(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_74A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 1075) = 1;
  if (*(a1 + 1074) == 1)
  {
    v3 = a2;
    sub_305C(*(a1 + 1080) + 312);
    a2 = v3;
  }

  result = (***(*(a1 + 1080) + 8))(*(*(a1 + 1080) + 8), a2);
  if (*(a1 + 1074) == 1)
  {
    v5 = *(a1 + 1080) + 312;

    return sub_2F18(v5);
  }

  return result;
}

uint64_t sub_754C(uint64_t a1, int *a2, char a3)
{
  v6 = a1 + 312;
  result = (*(*(a1 + 312) + 16))(a1 + 312);
  v8 = result;
  if (*(a1 + 16) != 1)
  {
    goto LABEL_8;
  }

  if ((a3 & 2) != 0)
  {
    *(a1 + 1633) = 1;
  }

  result = sub_2408((a1 + 552), a2);
  if (!*(a1 + 600))
  {
LABEL_8:
    if (!v8)
    {
      return result;
    }

    return (*(*v6 + 24))(v6);
  }

  if ((a3 & 1) == 0)
  {
    if ((*(a1 + 1632) & 1) == 0)
    {
      *(a1 + 1632) = 1;
      mach_absolute_time();
      v9 = *(a1 + 544) * 24000000.0;
      v10 = **(a1 + 536);
      result = MIDITimerTaskSetNextWakeTime();
    }

    goto LABEL_8;
  }

  (*(*(a1 + 552) + 16))(a1 + 552, a1 + 600);
  result = MIDIPacketListInit((a1 + 600));
  *(a1 + 592) = result;
  if (!v8)
  {
    return result;
  }

  return (*(*v6 + 24))(v6);
}

MIDIPacket *sub_76D4(uint64_t a1)
{
  v2 = a1 + 312;
  result = (*(*(a1 + 312) + 16))(a1 + 312);
  v4 = result;
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 600))
    {
      (*(*(a1 + 552) + 16))(a1 + 552, a1 + 600);
    }

    result = MIDIPacketListInit((a1 + 600));
    *(a1 + 592) = result;
    *(a1 + 1632) = 0;
  }

  if (v4)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

uint64_t sub_77D0(uint64_t a1, uint64_t a2)
{
  v11 = a2 + 4;
  v10 = 0;
  v9 = (a2 + 14);
  v8 = 0;
  do
  {
    result = sub_78E4(a1, a2, &v10, &v11, &v9, &v8 + 1, &v8);
  }

  while (!result);
  if (*a2)
  {
    if (v8)
    {
      v5 = 0.0025;
    }

    else
    {
      v5 = 0.1;
    }
  }

  else
  {
    if (HIBYTE(v8) != 1)
    {
      return result;
    }

    v5 = fmin(*(a1 + 528) + *(a1 + 528), 1.0);
  }

  result = mach_absolute_time();
  v6 = result + (v5 * 24000000.0);
  *(a1 + 528) = v5;
  if (v6 < *(a1 + 520))
  {
    *(a1 + 520) = v6;
    v7 = **(a1 + 512);

    return MIDITimerTaskSetNextWakeTime();
  }

  return result;
}

uint64_t sub_78E4(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t *a4, char **a5, _BYTE *a6, _BYTE *a7)
{
  v7 = *(a1 + 1640);
  v8 = *(a1 + 1648);
  if (v7 != v8)
  {
    v15 = 0;
    v16 = *(a1 + 416);
    v17 = v16;
    do
    {
      if (*(*v7 + 28) == 2)
      {
        v18 = *(*v7 + 408);
        if (v18 < v17 && v18 != 0)
        {
          v17 = v18 + 1;
        }

        v15 = 1;
      }

      v7 += 16;
    }

    while (v7 != v8);
    if (v15)
    {
      v76 = a3;
      v20 = *a4;
      v21 = *a5;
      if (!*a2 || (v22 = *v20) == 0)
      {
        v22 = mach_absolute_time();
        v16 = *(a1 + 416);
      }

      v71 = a4;
      v72 = a5;
      v73 = a7;
      v74 = a6;
      v23 = ((v22 - *(a1 + 408)) * 0.000416666667 + 0.5);
      v89[0] = 24960;
      v89[1] = bswap32(v16) >> 16;
      v24 = bswap32(*(a1 + 400));
      v90 = bswap32(v23);
      v91 = v24;
      __n = sub_12BBC(a1 + 424, v17, v16, v88, 1400);
      if (*v76 < *a2)
      {
        __n_4 = 0;
        v25 = 0;
        if (__n <= 3)
        {
          v26 = 1472;
        }

        else
        {
          v26 = 1472 - __n;
        }

        v79 = v89 + v26;
        v27 = 1;
        v28 = v93;
LABEL_20:
        v29 = *(v20 + 8);
        v30 = *v20;
        if (!*v20)
        {
          v30 = mach_absolute_time();
        }

        v31 = v20 + v29 + 10;
        v32 = ((v30 - *(a1 + 408)) * 0.000416666667 + 0.5);
        while (1)
        {
          v33 = *v21;
          if ((v27 & 1) == 0)
          {
            v34 = v32 - v23;
            v35 = (v32 - v23) & 0x7F;
            if ((v32 - v23) >= 0x80)
            {
              do
              {
                v36 = (v35 << 8) | (v34 >> 7) & 0x7F;
                v37 = v34 >> 14;
                v34 >>= 7;
                v35 = v36 | 0x80;
              }

              while (v37);
            }

            do
            {
              v38 = v35;
              *v28++ = v35;
              v35 >>= 8;
            }

            while (v38 < 0);
            LODWORD(v23) = v32;
          }

          sub_12540(a1 + 424, *(a1 + 416), *v20, v21);
          v39 = sub_A70(v21, v31);
          if (v25)
          {
            if (v33 == v25)
            {
              break;
            }
          }

          if ((v33 & 0x80) != 0)
          {
            if (v33 > 0xEF)
            {
              if (v33 > 0xF7)
              {
                v40 = 0;
                __n_4 = 1;
              }

              else if (v33 == 247 || v33 == 240)
              {
                v25 = 0;
                if (v33 == 247)
                {
                  v56 = -12;
                }

                else
                {
                  v56 = 0;
                }

                if (*(v39 - 1) == 247)
                {
                  v40 = v56;
                }

                else
                {
                  v40 = -16;
                }
              }

              else
              {
                v40 = 0;
                v25 = 0;
              }
            }

            else
            {
              v40 = 0;
              __n_4 |= v33 < 0xA0;
              v25 = v33;
            }

LABEL_32:
            if (v40)
            {
              v41 = v39 + 1;
            }

            else
            {
              v41 = v39;
            }

            v42 = v41 - v21;
            v43 = v79 - v28;
            if (v79 - v28 < v42)
            {
              v63 = v71;
              v62 = v72;
              if (v43 > 33)
              {
                goto LABEL_82;
              }

              goto LABEL_83;
            }

            v44 = v21;
            if (v21 >= v39)
            {
              goto LABEL_52;
            }

            goto LABEL_37;
          }

          v51 = *(v39 - 1);
          if (v51 == 247)
          {
            v52 = v39;
          }

          else
          {
            v52 = v39 + 1;
          }

          v53 = v52 - v21 + 1;
          v43 = v79 - v28;
          if (v79 - v28 < v53)
          {
            if (v43 >= 34)
            {
              *v28++ = -9;
              v63 = v71;
              v62 = v72;
LABEL_82:
              v64 = (v43 - 2);
              memcpy(v28, v21, v64);
              v65 = &v28[v64];
              *v65 = -16;
              v28 = v65 + 1;
              v21 += v64;
LABEL_83:
              v58 = 0;
              *v63 = v20;
              *v62 = v21;
              v59 = v28 - v93;
              if (v59 <= 15)
              {
                goto LABEL_76;
              }

              goto LABEL_84;
            }

            v58 = 0;
            *v71 = v20;
            *v72 = v21;
            v59 = v28 - v93;
            if (v59 <= 15)
            {
              goto LABEL_76;
            }

LABEL_84:
            v60 = v59 + 14;
            v92 = bswap32(v59 | 0x8000) >> 16;
            LOBYTE(v59) = v92;
            v61 = __n;
            if (__n >= 4)
            {
              goto LABEL_85;
            }

            goto LABEL_86;
          }

          v25 = 0;
          if (v51 == 247)
          {
            v40 = 0;
          }

          else
          {
            v40 = -16;
          }

          *v28++ = -9;
          v44 = v21;
          if (v21 >= v39)
          {
LABEL_52:
            v46 = v28;
            v21 = v44;
            goto LABEL_56;
          }

LABEL_37:
          v45 = v39 - v21;
          if ((v39 - v21) < 0x20 || (v28 - v44) < 0x20)
          {
            v21 = v44;
            v46 = v28;
          }

          else
          {
            v21 = &v44[v45 & 0xFFFFFFFFFFFFFFE0];
            v46 = &v28[v45 & 0xFFFFFFFFFFFFFFE0];
            v47 = v28 + 16;
            v48 = (v44 + 16);
            v49 = v45 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v50 = *v48;
              *(v47 - 1) = *(v48 - 1);
              *v47 = v50;
              v47 += 2;
              v48 += 2;
              v49 -= 32;
            }

            while (v49);
            if (v45 == (v45 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_56;
            }
          }

          v54 = &v44[v45];
          do
          {
            v55 = *v21++;
            *v46++ = v55;
          }

          while (v21 != v54);
LABEL_56:
          if (v40)
          {
            *v46++ = v40;
          }

          v28 = v46;
          v27 = 0;
          if (v21 >= v31)
          {
            v27 = 0;
            v20 = (v20 + *(v20 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
            v21 = (v20 + 10);
            v57 = *v76 + 1;
            *v76 = v57;
            v58 = 1;
            if (v57 < *a2)
            {
              goto LABEL_20;
            }

            goto LABEL_75;
          }
        }

        v40 = 0;
        ++v21;
        goto LABEL_32;
      }

      __n_4 = 0;
      v58 = 1;
      v28 = v93;
LABEL_75:
      v59 = v28 - v93;
      if (v59 > 15)
      {
        goto LABEL_84;
      }

LABEL_76:
      memmove(&v92 + 1, v93, v59);
      LOBYTE(v92) = v59;
      v60 = v59 + 13;
      --v28;
      v61 = __n;
      if (__n >= 4)
      {
LABEL_85:
        LOBYTE(v92) = v59 | 0x40;
        memcpy(v28, v88, v61);
        v60 += v61;
      }

LABEL_86:
      if (v60 >= 14)
      {
        if (*(a1 + 1633) == 1)
        {
          *(a1 + 1633) = 0;
        }

        else
        {
          v66 = *(a1 + 1640);
          for (i = *(a1 + 1648); v66 != i; v66 += 16)
          {
            if (*(*v66 + 28) == 2 && (sendto(*(a1 + 224 + 40 * (*(*v66 + 93) == 30)), v89, v60, 0, (*v66 + 92), *(*v66 + 92)) & 0x80000000) != 0)
            {
              v68 = *__error();
              if (v68 < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v81 = "MIDIRTPSession.cpp";
                v82 = 1024;
                v83 = 1398;
                v84 = 2080;
                v85 = a1 + 40;
                v86 = 1024;
                v87 = v68;
                _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: couldn't send (%d)\n", buf, 0x22u);
              }
            }
          }
        }
      }

      ++*(a1 + 416);
      if (__n_4)
      {
        v69 = v74;
        *v73 = 1;
        if (__n < 4)
        {
          return v58;
        }
      }

      else
      {
        v69 = v74;
        if (__n < 4)
        {
          return v58;
        }
      }

      *v69 = 1;
      return v58;
    }
  }

  return 1;
}

void sub_7FCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_C38(a1);
  }

  _Unwind_Resume(a1);
}

ssize_t sub_7FE0(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, int a6)
{
  v10 = 92;
  if (a2)
  {
    v10 = 64;
  }

  v11 = (a4 + v10);
  *v15 = *v11;
  *&v15[12] = *(v11 + 12);
  if (a3 != -48309)
  {
    if (a3 == -46770)
    {
      v12 = malloc_type_malloc(a6, 0x746F71F6uLL);
      memcpy(v12, a5, a6);
      *v16 = *v15;
      *&v16[12] = *&v15[12];
      CFAbsoluteTimeGetCurrent();
      (*(*(a1 + 312) + 16))(a1 + 312);
      operator new();
    }

    sub_1660(v15, v16, 0x100uLL);
  }

  v13 = a1 + 40 * (v15[1] == 30);
  if (a2)
  {
    result = sendto(*(v13 + 144), a5, a6, 0, v15, v15[0]);
  }

  else
  {
    result = sendto(*(v13 + 224), a5, a6, 0, v15, v15[0]);
  }

  if ((result & 0x80000000) != 0)
  {
    return __error();
  }

  return result;
}

void sub_8288(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_82CC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = bswap64(*(a3 + 12));
  v4 = bswap64(*(a3 + 20));
  v5 = bswap64(*(a3 + 28));
  v6 = v3 + ((v5 - v3) >> 1);
  v7 = v6 - v4;
  if (!a2)
  {
    v7 = v4 - v6;
  }

  v8 = *(a1 + 144);
  v9 = v8 + 1;
  *(a1 + 144) = v8 + 1;
  if (v8 == -1)
  {
    return;
  }

  v11 = v7;
  if (!a2)
  {
    v6 = v4;
  }

  v12 = *(a1 + 152);
  v13 = *(a1 + 160);
  if (v8 < 5)
  {
    if (v8)
    {
      v24 = 0.7;
    }

    else
    {
      v24 = 0.0;
    }

    if (v8)
    {
      v25 = 0.9;
    }

    else
    {
      v25 = 0.0;
    }

    if (v8)
    {
      v26 = 0.1;
    }

    else
    {
      v26 = 0.0;
    }

    if (v8)
    {
      v27 = 0;
    }

    else
    {
      v13 = v7;
      v27 = -1;
    }

    if (!v8)
    {
      v12 = 0.0;
    }

    v23 = -1.0;
    goto LABEL_36;
  }

  if (v9 >= 0xA)
  {
    v14 = 10;
  }

  else
  {
    v14 = v9;
  }

  v15 = (a1 + 176);
  v16 = 0.0;
  v17 = v14;
  do
  {
    v18 = *v15++;
    v16 = v18 + v16;
    --v17;
  }

  while (v17);
  v19 = v16 * 0.1;
  v20 = (a1 + 176);
  v21 = 0.0;
  do
  {
    v22 = *v20++;
    v21 = v21 + (v22 - v19) * (v22 - v19);
    --v14;
  }

  while (v14);
  v23 = sqrt(v21 * 0.1);
  if (v23 <= 30.0)
  {
    v27 = 1;
    v26 = 0.8;
    v25 = 0.97;
    v24 = 0.9;
  }

  else
  {
    v24 = dbl_175E0[v23 > 300.0];
    v25 = 0.9;
    if (v23 <= 300.0)
    {
      v25 = 0.95;
    }

    v26 = 0.15;
    if (v23 <= 300.0)
    {
      v27 = 2;
    }

    else
    {
      v26 = 0.04;
      v27 = 3;
    }
  }

  if (v8 < 12)
  {
    v25 = 0.5;
  }

  v29 = fmax(v23 * 3.0, 100.0);
  if (v11 - v13 < v12 - v29)
  {
    v28 = v12 - v29 + v13;
    goto LABEL_44;
  }

  v30 = v29 + v12;
  if (v11 - v13 <= v30)
  {
LABEL_36:
    v28 = v7;
    goto LABEL_44;
  }

  v28 = v30 + v13;
LABEL_44:
  v31 = v28 + v26 * v12 + (v13 - v28) * v24;
  v32 = v28 - v31 + (v12 - (v28 - v31)) * v25;
  *(a1 + 168) = v31;
  *(a1 + 8 * (v9 % 10) + 176) = v28 - v31;
  *(a1 + 152) = v32;
  *(a1 + 160) = v31;
  if (!a2)
  {
    v4 = v5;
  }

  *(a1 + 256) = v4;
  v33 = *(a1 + 280);
  if (v33)
  {
    v34 = a2;
    v35 = a3;
    fprintf(v33, "%d\t%.f\t%.f\t%.f\t%.1f\t%.1f\t%.1f\t%d", v9, v6, v11, v31, v32, v28 - v31, v23, v27);
    fflush(*(a1 + 280));
    a3 = v35;
    LOBYTE(a2) = v34;
    v9 = *(a1 + 144);
  }

  if (v9 > 4 || *(a3 + 8) != 2 || (a2 & 1) != 0)
  {
    sub_8760(a1);
    v36 = *(a1 + 28);
    if (v36)
    {
      if (v36 != 1)
      {
        return;
      }
    }

    else
    {
      if (!*(a1 + 66))
      {
        return;
      }

      if (!*(a1 + 94))
      {
        return;
      }

      *(a1 + 28) = 1;
      (*(**(*(a1 + 16) + 8) + 32))(*(*(a1 + 16) + 8), *(a1 + 48), @"connected");
      if (*(a1 + 28) != 1)
      {
        return;
      }
    }

    if (*(a1 + 144) >= 5)
    {
      *(a1 + 28) = 2;
      v37 = *(a1 + 48);
      v38 = *(**(*(a1 + 16) + 8) + 32);

      v38();
    }
  }

  else
  {

    sub_8684(a1);
  }
}

void sub_8684(uint64_t a1)
{
  v7 = 0uLL;
  memset(v8, 0, sizeof(v8));
  v2 = *(a1 + 16);
  v3 = bswap32(*(v2 + 400));
  v5[0] = 1262747647;
  v5[1] = v3;
  v6 = 0;
  *(&v7 + 3) = bswap64(((mach_absolute_time() - *(v2 + 408)) * 0.000416666667 + 0.5));
  *(a1 + 272) = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 16);
  v9[0] = *(a1 + 92);
  *&v9[0].sa_data[10] = *(a1 + 104);
  if ((sendto(*(v4 + 40 * (v9[0].sa_family == 30) + 224), v5, 0x24uLL, 0, v9, v9[0].sa_len) & 0x80000000) != 0)
  {
    __error();
  }

  sub_8760(a1);
}

void sub_8760(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (*(a1 + 24))
  {
    if (*(a1 + 144) >= 5)
    {
      v3 = 10.0;
    }

    else
    {
      v3 = 1.5;
    }

    Current = *(a1 + 272);
  }

  else
  {
    v3 = 60.0;
    Current = CFAbsoluteTimeGetCurrent();
  }

  v5 = fmax(*(a1 + 264), Current) + v3;
  CFRunLoopTimerSetNextFireDate(*(v2 + 16), v5);
  while (CFRunLoopTimerGetNextFireDate(*(v2 + 16)) > v5 + 0.0001)
  {
    CFRunLoopTimerSetNextFireDate(*(v2 + 16), v5);
  }
}

uint64_t sub_880C(uint64_t result)
{
  v1 = *(result + 28);
  if (v1)
  {
    if (v1 != 1)
    {
      return result;
    }
  }

  else
  {
    if (!*(result + 66))
    {
      return result;
    }

    if (!*(result + 94))
    {
      return result;
    }

    *(result + 28) = 1;
    v4 = result;
    (*(**(*(result + 16) + 8) + 32))(*(*(result + 16) + 8), *(result + 48), @"connected");
    result = v4;
    if (*(v4 + 28) != 1)
    {
      return result;
    }
  }

  if (*(result + 144) >= 5)
  {
    *(result + 28) = 2;
    v2 = *(result + 48);
    v3 = *(**(*(result + 16) + 8) + 32);

    return v3();
  }

  return result;
}

void sub_8904(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 264);
  if (Current > v3 + 59.0)
  {
    v13 = *(a1 + 16) + 312;
    v14 = (*(*v13 + 16))(v13);
    CFStringGetCString(*(a1 + 48), buffer, 64, 0x8000100u);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 16) + 40;
      *buf = 136315906;
      *&buf[4] = "MIDIRTPSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1626;
      v16 = 2080;
      v17 = v4;
      v18 = 2080;
      v19 = buffer;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: connection to %s timed out\n", buf, 0x26u);
    }

    v5 = CFStringCreateWithFormat(0, 0, qword_200A0, *(a1 + 48));
    *buf = off_1CAA8;
    *&buf[8] = v5;
    (*(**(*(a1 + 16) + 8) + 48))(*(*(a1 + 16) + 8));
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v11 = *a1;
    if (v6)
    {
      v8 = std::__shared_weak_count::lock(v6);
      v12 = v8;
      if (v8)
      {
        v9 = v8;
        sub_4930(v7, &v11, 1, 1);
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          *buf = off_1C9E8;
          v10 = *&buf[8];
          if (!*&buf[8])
          {
LABEL_19:
            if (v14 == 1)
            {
              (*(*v13 + 24))(v13);
            }

            return;
          }
        }

        else
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          *buf = off_1C9E8;
          v10 = *&buf[8];
          if (!*&buf[8])
          {
            goto LABEL_19;
          }
        }

        CFRelease(v10);
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
    }

    sub_AE24();
  }

  if (*(a1 + 24) && Current > dbl_175F0[*(a1 + 144) < 5] + fmax(v3, *(a1 + 272)))
  {

    sub_8684(a1);
  }

  else
  {

    sub_8760(a1);
  }
}

void sub_8C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_8CBC(void *a1)
{
  *a1 = off_1C9E8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_8D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1640);
  v3 = *(a1 + 1648);
  if (v2 != v3)
  {
    v6 = bswap32(*(a2 + 4));
    while (1)
    {
      v7 = *v2;
      if (*(*v2 + 120) == v6)
      {
        break;
      }

      v2 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    v8 = v2[1];
    v10 = *v2;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 8);
    *(v7 + 264) = CFAbsoluteTimeGetCurrent();
    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        sub_82CC(v7, 0, a2);
      }
    }

    else
    {
      *(a2 + 8) = v9 + 1;
      *(a2 + 4) = bswap32(*(a1 + 400));
      *(a2 + 8 * v9 + 20) = bswap64(((mach_absolute_time() - *(a1 + 408)) * 0.000416666667 + 0.5));
      if (v9 == 1)
      {
        sub_82CC(v7, 1, a2);
      }

      v11[0] = *(v7 + 92);
      *&v11[0].sa_data[10] = *(v7 + 104);
      if ((sendto(*(a1 + 40 * (v11[0].sa_family == 30) + 224), a2, 0x24uLL, 0, v11, v11[0].sa_len) & 0x80000000) != 0)
      {
        __error();
      }
    }

    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

ssize_t sub_8EE0(uint64_t a1, int a2)
{
  v3 = a1 + 40 * (a2 == 30);
  v6 = 28;
  result = recvfrom(*(v3 + 144), v7, 0x5C1uLL, 0, &v5, &v6);
  if (result >= 1)
  {
    do
    {
      if (result >= 4)
      {
        sub_6450(a1, 1, v7, result & 0x7FFFFFFF, &v5);
      }

      v6 = 28;
      result = recvfrom(*(v3 + 144), v7, 0x5C1uLL, 0, &v5, &v6);
    }

    while (result > 0);
  }

  return result;
}

std::runtime_error *sub_8FE0(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &off_1CA08;
  return result;
}

void sub_9018(uint64_t *a1, int a2, uint64_t a3)
{
  for (i = a1[210]; i != a1 + 209; i = i[1])
  {
    if (*(i + 5) == a2 && i[3] == a3)
    {
      free(i[4]);
      v6 = *i;
      v5 = i[1];
      *(v6 + 8) = v5;
      *v5 = v6;
      --a1[211];

      operator delete(i);
      return;
    }
  }
}

BOOL sub_90AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 != -46770)
  {
    return v2 == -46770;
  }

  sub_1660(a2 + 28, v19, 0x100uLL);
  snprintf(__str, 0x100uLL, "%s:%d", v19, bswap32(*(a2 + 30)) >> 16);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "MIDIRTPSession.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1926;
    v15 = 2080;
    v16 = a1 + 40;
    v17 = 2080;
    v18 = __str;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Connection attempt to %s timed out\n", buf, 0x26u);
  }

  v5 = CFStringCreateWithFormat(0, 0, qword_20088, __str);
  *buf = off_1CAA8;
  *&buf[8] = v5;
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  v6 = *(a2 + 8);
  v7 = v6[1];
  v12 = *v6;
  if (!v7)
  {
    v13 = 0;
LABEL_13:
    sub_AE24();
  }

  v8 = std::__shared_weak_count::lock(v7);
  v13 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  sub_4930(a1, &v12, 1, 1);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *buf = off_1C9E8;
    v10 = *&buf[8];
    if (!*&buf[8])
    {
      return v2 == -46770;
    }

    goto LABEL_10;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  *buf = off_1C9E8;
  v10 = *&buf[8];
  if (*&buf[8])
  {
LABEL_10:
    CFRelease(v10);
  }

  return v2 == -46770;
}

void sub_9324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_8CBC(va);
  _Unwind_Resume(a1);
}

void sub_9374(void *a1)
{
  v17 = a1 + 39;
  v18 = (*(a1[39] + 16))();
  v2 = a1 + 209;
  while (1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[210];
    if (v4 == v2)
    {
      break;
    }

    while (*(v4 + 10) >= Current)
    {
LABEL_4:
      v4 = v4[1];
      if (v4 == v2)
      {
        v4 = a1[210];
        goto LABEL_15;
      }
    }

    v5 = *(v4 + 18);
    *(v4 + 18) = v5 + 1;
    if (v5 != 12)
    {
      v6 = CFAbsoluteTimeGetCurrent();
      v7 = (v4 + 44);
      v8 = *(v4 + 44);
      *(v4 + 10) = v6 + 1.0;
      v9 = *(v4 + 45) == 30;
      v10 = v4[4];
      v11 = *(v4 + 10);
      if (*(v4 + 16) == 1)
      {
        v12 = sendto(a1[5 * (*(v4 + 45) == 30) + 18], v10, v11, 0, v7, v8);
      }

      else
      {
        v12 = sendto(a1[5 * (*(v4 + 45) == 30) + 28], v10, v11, 0, v7, v8);
      }

      if (v12 < 0)
      {
        __error();
      }

      goto LABEL_4;
    }

    if (!sub_90AC(a1, (v4 + 2)))
    {
      free(v4[4]);
      v14 = *v4;
      v13 = v4[1];
      *(*&v14 + 8) = v13;
      *v13 = v14;
      --a1[211];
      operator delete(v4);
    }
  }

LABEL_15:
  v15 = a1[208];
  for (i = 1.0e40; v4 != v2; v4 = v4[1])
  {
    i = fmin(*(v4 + 10), i);
  }

  do
  {
    CFRunLoopTimerSetNextFireDate(*(v15 + 16), i);
  }

  while (CFRunLoopTimerGetNextFireDate(*(v15 + 16)) > i + 0.0001);
  if (v18 == 1)
  {
    (*(*v17 + 24))(v17);
  }
}

void sub_95F8(MIDIPacketList *a1)
{
  sub_A218(a1);

  operator delete();
}

void sub_9630(void *a1)
{
  *a1 = off_1C8B0;
  sub_11624(a1);

  operator delete();
}

void *sub_96A8(void *a1)
{
  *a1 = off_1C8B0;
  sub_11624(a1);
  return a1;
}

void sub_96F0(void *a1)
{
  *a1 = off_1C8B0;
  sub_11624(a1);

  operator delete();
}

void sub_975C(void *a1)
{
  *a1 = off_1C8B0;
  sub_11624(a1);

  operator delete();
}

void sub_97D4(uint64_t a1)
{
  sub_B44(a1);

  operator delete();
}

void sub_9814(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_9814(a1, *a2);
    sub_9814(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_986C(MIDIPacketList *pktlist)
{
  *&pktlist->numPackets = off_1C928;
  v2 = &pktlist->packet[0].data[34];
  if (*&pktlist->packet[0].data[34])
  {
    sub_77D0(*&pktlist[3].packet[0].data[242], v2);
  }

  *&pktlist->packet[0].data[26] = MIDIPacketListInit(v2);
  *&pktlist->numPackets = off_1C950;
  if (!*&pktlist->packet[0].data[34])
  {
    v3 = *&pktlist->packet[0].data[18];
    if (v3 == (&pktlist->packet[0].timeStamp + 4))
    {
      (*(*&v3->numPackets + 32))(v3);
    }

    else if (v3)
    {
      (*(*&v3->numPackets + 40))(v3);
    }

    operator delete();
  }

  __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
}

uint64_t sub_99A8(uint64_t a1)
{
  *a1 = off_1C950;
  if (*(a1 + 48))
  {
    __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
  }

  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_9A84(uint64_t a1)
{
  *a1 = off_1C950;
  if (!*(a1 + 48))
  {
    v1 = a1 + 8;
    v2 = *(a1 + 32);
    if (v2 == v1)
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    operator delete();
  }

  __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
}

uint64_t sub_9B74(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_2728();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_9BC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_9C54(uint64_t a1)
{
  *a1 = off_1C950;
  if (*(a1 + 48))
  {
    __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
  }

  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t *sub_9D48(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void **sub_9DA8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9E5C(MIDIPacketList *pktlist)
{
  *&pktlist->numPackets = off_1C928;
  v2 = &pktlist->packet[0].data[34];
  if (*&pktlist->packet[0].data[34])
  {
    sub_77D0(*&pktlist[3].packet[0].data[242], v2);
  }

  *&pktlist->packet[0].data[26] = MIDIPacketListInit(v2);

  return sub_9C54(pktlist);
}

uint64_t sub_9ED4(uint64_t a1, int a2)
{
  *a1 = off_1C9B0;
  v3 = sub_2774(a1, sub_9C4, a1, a2, 0, 0, 0);
  *(v3 + 128) = "SSThread";
  *(v3 + 136) = 0;
  *v3 = &off_1C978;
  *(v3 + 144) = v3;
  sub_2E64(v3 + 152, "SSThreadLock");
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  *(a1 + 280) = CFRunLoopTimerCreate(0, 0.0, 1.0e11, 0, 0, sub_A040, &context);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(Current, *(a1 + 280), kCFRunLoopDefaultMode);
  pipe((a1 + 240));
  sub_2984(a1);
  return a1;
}

void sub_A010(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 256) = v5;
    operator delete(v5);
  }

  sub_2E68(v1 + 152);
  nullsub_2(v1);
  _Unwind_Resume(a1);
}

void sub_A04C(uint64_t a1)
{
  nullsub_2(a1);

  operator delete();
}

void *sub_A098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v6 = sub_A104(a1, a2);
    *(a1 + 8) = v6;
    return (v6 - 16);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 8) = v3 + 2;
    return v3;
  }
}

uint64_t sub_A104(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_9D30();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_26F4();
  }

  v12 = 16 * v2;
  v13 = *a2;
  *(16 * v2) = *a2;
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v12 + 16;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v12 - v9;
  memcpy((v12 - v9), *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

MIDIPacketList *sub_A218(MIDIPacketList *pktlist)
{
  *&pktlist->numPackets = &off_1C860;
  v2 = &pktlist->packet[0].data[34];
  if (*&pktlist->packet[0].data[34])
  {
    pktlist[3].packet[0].data[245] = 1;
    if (pktlist[3].packet[0].data[244] == 1)
    {
      sub_305C(*&pktlist[3].packet[0].data[250] + 312);
    }

    (***(*&pktlist[3].packet[0].data[250] + 8))(*(*&pktlist[3].packet[0].data[250] + 8), v2);
    if (pktlist[3].packet[0].data[244] == 1)
    {
      sub_2F18(*&pktlist[3].packet[0].data[250] + 312);
    }
  }

  *&pktlist->packet[0].data[26] = MIDIPacketListInit(v2);
  *&pktlist->numPackets = off_1C950;
  if (*&pktlist->packet[0].data[34])
  {
    __assert_rtn("~MIDIPacketEmitter", "MIDIPacketEmitter.h", 33, "TheList()->numPackets == 0");
  }

  v3 = *&pktlist->packet[0].data[18];
  if (v3 == (&pktlist->packet[0].timeStamp + 4))
  {
    (*(*&v3->numPackets + 32))(v3);
    return pktlist;
  }

  else
  {
    if (v3)
    {
      (*(*&v3->numPackets + 40))(v3);
    }

    return pktlist;
  }
}

void *sub_A394(void *a1)
{
  *a1 = off_1C9E8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_A3E4(void *a1)
{
  *a1 = off_1C9E8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  operator delete();
}

void sub_A454(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t *sub_A48C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 16) = 0;
    }

    std::recursive_mutex::~recursive_mutex((v1 + 24));
    operator delete();
  }

  return result;
}

void *sub_A4F0(void *a1, uint64_t a2, uint64_t a3, __CFRunLoop *a4, CFTimeInterval a5)
{
  *a1 = a2;
  a1[1] = a3;
  std::recursive_mutex::recursive_mutex((a1 + 3));
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  Current = CFAbsoluteTimeGetCurrent();
  v9 = CFRunLoopTimerCreate(0, Current + 31536000.0, a5, 0, 0, sub_A5AC, &context);
  a1[2] = v9;
  CFRunLoopAddTimer(a4, v9, kCFRunLoopDefaultMode);
  return a1;
}

void sub_A5AC(uint64_t a1, uint64_t a2)
{
  if (std::recursive_mutex::try_lock((a2 + 24)))
  {
    v3 = *(a2 + 16);
    if (v3 && CFRunLoopTimerIsValid(v3))
    {
      (*(a2 + 8))(*a2);
    }

    std::recursive_mutex::unlock((a2 + 24));
  }
}

void sub_A770(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A7A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1CA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A808(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 120) = 0;
  *(a1 + 168) = 0;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0;
  *(a1 + 340) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 7;
  *(a1 + 372) = 0u;
  *(a1 + 388) = 0u;
  if (a3)
  {
    do
    {
      v4 = random();
      *(a1 + 24) = v4;
    }

    while (!v4);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 66) = 0;
  *(a1 + 94) = 0;
  sub_A960(a1);
}

void sub_A928(_Unwind_Exception *a1)
{
  sub_9814(v1 + 312, *(v1 + 320));
  sub_38BC(v3);
  sub_38BC(v2);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void sub_A960(uint64_t a1)
{
  CFRunLoopGetCurrent();
  *(a1 + 144) = -1;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 264) = Current;
  *(a1 + 272) = Current;
  operator new();
}

ssize_t sub_ABA0(ssize_t result)
{
  *(result + 296) = 0;
  v1 = *(result + 300);
  if (v1)
  {
    v2 = result;
    if (*(result + 304) != v1)
    {
      v3 = *(result + 16);
      v4 = bswap32(*(v3 + 400));
      v5[0] = 1397948415;
      v5[1] = v4;
      v6 = bswap32(v1) >> 16;
      *v7 = *(result + 64);
      *&v7[12] = *(result + 76);
      sub_1660(v7, v8, 0x100uLL);
      result = sendto(*(v3 + 40 * (v7[1] == 30) + 144), v5, 0xCuLL, 0, v7, v7[0]);
      if ((result & 0x80000000) != 0)
      {
        result = __error();
      }
    }

    *(v2 + 304) = v1;
  }

  return result;
}

uint64_t sub_AC94(uint64_t a1)
{
  v2 = *(a1 + 288);
  std::recursive_mutex::lock((v2 + 24));
  CFRunLoopTimerInvalidate(*(v2 + 16));
  std::recursive_mutex::unlock((v2 + 24));
  v3 = *(a1 + 136);
  std::recursive_mutex::lock((v3 + 24));
  CFRunLoopTimerInvalidate(*(v3 + 16));
  std::recursive_mutex::unlock((v3 + 24));
  v4 = *(a1 + 280);
  if (v4)
  {
    fclose(v4);
  }

  sub_9814(a1 + 312, *(a1 + 320));
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_AD7C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_ADB4(void *a1)
{
  *a1 = off_1C9E8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  operator delete();
}

void sub_AE24()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_AFBC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_AFD4(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = off_1CAA8;
  a1[1] = v4;
  return a1;
}

void sub_B038(uint64_t a1, CFUUIDRef factoryID)
{
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = off_1CAE0;
  *(a1 + 8) = &unk_20008;
  *(a1 + 16) = factoryID;
  CFPlugInAddInstanceForFactory(factoryID);
  *(a1 + 24) = 1;
  v3 = off_1CB70;
  v4 = a1;
  operator new();
}

void sub_B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_B3A8(void *a1)
{
  *a1 = off_1CAE0;
  v2 = a1[2];
  if (v2)
  {
    CFPlugInRemoveInstanceForFactory(v2);
  }

  v3 = a1[10];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[7];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_B49C(void *a1)
{
  sub_B3A8(a1);

  operator delete();
}

uint64_t sub_B4D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (!v5)
  {
    return 7;
  }

  a1[4] = a3;
  a1[5] = a4;
  (*(*v5 + 16))(v5);
  return 0;
}

uint64_t sub_B52C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 7;
  }

  *(a1 + 64) = a2;
  (*(*v4 + 16))(v4, a3);
  return 0;
}

uint64_t sub_B5C8(_DWORD *a1, CFUUIDBytes a2, void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Fu, 0xD9u, 0x4Du, 0xFu, 0x8Cu, 0x2Au, 0x48u, 0x2Au, 0x8Au, 0xD8u, 0x7Du, 0x9Eu, 0xA3u, 0x81u, 0xC9u, 0xC1u);
  if (CFEqual(v5, v6))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    a1[5] = 3;
  }

  else
  {
    v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x43u, 0xC9u, 0x8Cu, 0x3Cu, 0x30u, 0x6Cu, 0x11u, 0xD5u, 0xAFu, 0x73u, 0, 0x30u, 0x65u, 0xA8u, 0x30u, 0x1Eu);
    if (CFEqual(v5, v8))
    {
      (*(*a1 + 16))(a1);
      *a3 = a1;
      CFRelease(v5);
      result = 0;
      a1[5] = 2;
    }

    else
    {
      v9 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
      if (CFEqual(v5, v9))
      {
        (*(*a1 + 16))(a1);
        *a3 = a1;
        CFRelease(v5);
        return 0;
      }

      else
      {
        *a3 = 0;
        CFRelease(v5);
        return 2147483652;
      }
    }
  }

  return result;
}

uint64_t sub_B7B4(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_B7C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 - 1);
  *(a1 + 16) = v2;
  if (v1 != 1)
  {
    return (v1 - 1);
  }

  (*(*(a1 - 8) + 8))();
  return v2;
}

void *sub_B994(void *a1)
{
  *a1 = off_1CB50;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_B9E8(void *a1)
{
  *a1 = off_1CB50;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_BA5C(uint64_t a1, _DWORD *a2)
{
  v8 = *(a1 + 8);
  (*(v8 + 8))(v9, a1 + 16);
  v11 = 0;
  v10 = v12;
  if (*a2 == 2)
  {
    v6[0] = a1;
    v6[1] = &v8;
    v7 = v6;
    sub_C664(a2, &v7);
  }

  else
  {
    if (*a2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "GSL: Precondition failure at /Library/Caches/com.apple.xbs/Sources/CoreMIDI_Drivers/Source/MIDI/CppSPI/EventConversion.h: 657");
      exception->__vftable = &off_1CA08;
    }

    v6[0] = &v8;
    sub_BC74(a2, v6);
  }

  if (v11)
  {
    v6[0] = &v11;
    (*v8)(v9, v6);
  }

  v11 = 0;
  v10 = v12;
  return (*(v8 + 24))(v9);
}

void sub_BBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CFB4(va);
  _Unwind_Resume(a1);
}

void sub_BBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v12);
  sub_CFB4(&a12);
  _Unwind_Resume(a1);
}

void sub_BBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CFB4(va);
  _Unwind_Resume(a1);
}

void sub_BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CFB4(va);
  _Unwind_Resume(a1);
}

void sub_BC20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BC74(uint64_t result, void *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    while (1)
    {
      v6 = *(v5 + 8);
      v19 = v5 + 12;
      v20 = v6;
      v21 = *v5;
      v22 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      result = sub_BE34(&v19, &v18, &v16);
      if (result)
      {
        break;
      }

LABEL_3:
      v5 += 4 * *(v5 + 8) + 12;
      if (++v4 >= *(v3 + 4))
      {
        return result;
      }
    }

    for (i = v18; ; i = v14)
    {
      v23[0] = *a2;
      v23[1] = &i;
      result = sub_BF40(&v16, v23);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      if (v22 >= v20)
      {
        goto LABEL_3;
      }

      v8 = (v19 + 4 * v22);
      v7 = *v8;
      v12 = byte_17648[v7 >> 28];
      v13 = v22 + v12;
      if (v22 + v12 > v20)
      {
        goto LABEL_3;
      }

      v14 = v21;
      v18 = v21;
      v10 = &v16;
      if (v12 > 1)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_9;
      }

LABEL_10:
      v22 = v13;
    }

    if (v12 != 2)
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_8FE0(exception, "GSL: Precondition failure at /Library/Caches/com.apple.xbs/Sources/CoreMIDI_Drivers/Source/MIDI/CppSPI/EventList.h: 76");
        }

        LODWORD(v16) = v7;
        v9 = v8[1];
        ++v8;
        LODWORD(v7) = v9;
        v10 = (&v16 + 4);
      }

      *v10 = v7;
      v10 = (v10 + 4);
      v11 = v8[1];
      ++v8;
      LODWORD(v7) = v11;
    }

    *v10 = v7;
    v10 = (v10 + 4);
    LODWORD(v7) = v8[1];
LABEL_9:
    *v10 = v7;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_BE34(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = byte_17648[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_8FE0(exception, "GSL: Precondition failure at /Library/Caches/com.apple.xbs/Sources/CoreMIDI_Drivers/Source/MIDI/CppSPI/EventList.h: 76");
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

unsigned __int8 *sub_BF40(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = v2 >> 28;
  v4 = &v42;
  if (v2 >> 28 == 3)
  {
    v19 = (v2 >> 16) & 0xF;
    if (v19 > 6 || BYTE2(v2) > 0x3Fu)
    {
      return result;
    }

    v20 = (v2 >> 20) + 3;
    v21 = bswap32(*(result + 1));
    v40[0] = bswap32(v2);
    v40[1] = v21;
    if (BYTE2(v2) > 0x1Fu)
    {
      v22 = 0;
      p_dst = &__dst;
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
      __dst = -16;
      v22 = 1;
      p_dst = &v42;
      if (!v19)
      {
LABEL_42:
        if ((v20 & 2) != 0)
        {
          *(&__dst + v22++) = -9;
        }

        v26 = *a2;
        v27 = **(a2 + 8);
        result = *(v26 + 56);
        v28 = v26 + 1088;
        v29 = *(v26 + 64);
        if (v29)
        {
          if (*result == v27)
          {
            v30 = *(result + 4);
            if (result[v30 + 9] != 247 && __dst != 240)
            {
              if (&result[v22 + 10 + v30] <= v28)
              {
LABEL_55:
                v31 = &result[v30 + 10];
                v32 = &__dst;
                if (v22 <= 1)
                {
                  if (!v22)
                  {
LABEL_81:
                    *(result + 4) += v22;
                    goto LABEL_82;
                  }

                  if (v22 == 1)
                  {
LABEL_80:
                    *v31 = *v32;
                    goto LABEL_81;
                  }
                }

                else
                {
                  switch(v22)
                  {
                    case 2:
                      v36 = &__dst;
LABEL_79:
                      *v31++ = *v36;
                      v32 = v36 + 1;
                      goto LABEL_80;
                    case 3:
                      v4 = &__dst;
                      goto LABEL_78;
                    case 4:
                      *v31 = __dst;
                      v31 = &result[v30 + 11];
LABEL_78:
                      v37 = *v4;
                      v36 = v4 + 1;
                      *v31++ = v37;
                      goto LABEL_79;
                  }
                }

                v33 = result;
                memmove(&result[v30 + 10], &__dst, v22);
                result = v33;
                goto LABEL_81;
              }

              goto LABEL_53;
            }
          }

          else
          {
            v30 = *(result + 4);
          }

          result = (&result[v30 + 13] & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (&result[v22 + 10] <= v28)
        {
          LODWORD(v30) = 0;
          *(v26 + 64) = v29 + 1;
          *result = v27;
          *(result + 4) = 0;
          goto LABEL_55;
        }

LABEL_53:
        result = sub_C478(v26, v27, &__dst, v22);
LABEL_82:
        *(v26 + 56) = result;
        return result;
      }
    }

    v25 = a2;
    memcpy(p_dst, v40 + 2, v19);
    a2 = v25;
    v22 += (v19 - 1) + 1;
    goto LABEL_42;
  }

  if (v3 == 2)
  {
    v13 = v2 & 0xE00000;
    __dst = BYTE2(*result);
    v42 = BYTE1(v2) & 0x7F;
    if ((v2 & 0xE00000) == 0xC00000)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    if (v13 != 12582912)
    {
      v43 = v2 & 0x7F;
    }

    v6 = *a2;
    v7 = **(a2 + 8);
    v14 = *(v6 + 56);
    v15 = v6 + 1088;
    v16 = *(v6 + 64);
    if (v16)
    {
      if (*v14 == v7)
      {
        v17 = BYTE2(v2);
        v18 = *(v14 + 8);
        if (v17 != 240 && *(v14 + v18 + 9) != 247)
        {
          if (v14 + v5 + v18 + 10 > v15)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = *(v14 + 8);
      }

      v14 = (v14 + v18 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v14 + v5 + 10 > v15)
    {
      goto LABEL_34;
    }

    LODWORD(v18) = 0;
    *(v6 + 64) = v16 + 1;
    *v14 = v7;
    *(v14 + 8) = 0;
LABEL_36:
    v24 = (v14 + v18 + 10);
    if (v13 == 12582912)
    {
      v4 = &__dst;
    }

    else
    {
      *v24++ = __dst;
    }

    *v24 = *v4;
    v24[1] = v4[1];
    *(v14 + 8) += v5;
    *(v6 + 56) = v14;
    return result;
  }

  if (v3 == 1 && BYTE2(v2) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v2) + 16)) & 1) == 0)
  {
    v5 = byte_17658[BYTE2(v2) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v2) + 16)) & 1) == 0)
    {
      v42 = BYTE1(v2) & 0x7F;
      if (BYTE2(v2) == 242)
      {
        v43 = v2 & 0x7F;
      }
    }

    v6 = *a2;
    v7 = **(a2 + 8);
    v8 = *(v6 + 56);
    v9 = v6 + 1088;
    v10 = *(v6 + 64);
    if (v10)
    {
      if (*v8 == v7)
      {
        v11 = BYTE2(v2);
        v12 = *(v8 + 8);
        if (v11 != 240 && *(v8 + v12 + 9) != 247)
        {
          if (v8 + v12 + v5 + 10 <= v9)
          {
LABEL_68:
            result = (v8 + v12 + 10);
            v34 = &__dst;
            if (v5 <= 1)
            {
              if (v5)
              {
                goto LABEL_88;
              }
            }

            else
            {
              switch(v5)
              {
                case 2:
                  v38 = &__dst;
LABEL_87:
                  *result++ = *v38;
                  v34 = v38 + 1;
LABEL_88:
                  *result = *v34;
                  goto LABEL_89;
                case 3:
                  v4 = &__dst;
                  goto LABEL_86;
                case 4:
                  *result++ = __dst;
LABEL_86:
                  v39 = *v4;
                  v38 = v4 + 1;
                  *result++ = v39;
                  goto LABEL_87;
              }

              v35 = v5;
              result = memmove(result, &__dst, v5);
              LOWORD(v5) = v35;
            }

LABEL_89:
            *(v8 + 8) += v5;
            *(v6 + 56) = v8;
            return result;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v12 = *(v8 + 8);
      }

      v8 = (v8 + v12 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v8 + v5 + 10 <= v9)
    {
      LODWORD(v12) = 0;
      *(v6 + 64) = v10 + 1;
      *v8 = v7;
      *(v8 + 8) = 0;
      goto LABEL_68;
    }

LABEL_34:
    result = sub_C478(v6, v7, &__dst, v5);
    *(v6 + 56) = result;
  }

  return result;
}

uint64_t sub_C478(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v15 = a1 + 64;
    (**a1)(a1 + 8, &v15);
    v8 = a3;
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      result = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v9 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_18:
          v13 = 0;
          goto LABEL_19;
        }

        if (a4 == 1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_12:
            v11 = *v8++;
            *v9++ = v11;
LABEL_16:
            *v9 = *v8;
            v13 = *(a1 + 76);
LABEL_19:
            *(a1 + 76) = v13 + a4;
            return result;
          case 3:
LABEL_11:
            v10 = *v8++;
            *v9++ = v10;
            goto LABEL_12;
          case 4:
            v8 = a3 + 1;
            v9 = (a1 + 79);
            *(a1 + 78) = *a3;
            goto LABEL_11;
        }
      }

      memmove((a1 + 78), a3, a4);
      result = a1 + 68;
      goto LABEL_18;
    }
  }

  MIDI::LegacyPacketList::create();
  v15 = v14;
  (**a1)(a1 + 8, &v15);
  if (v14)
  {
    MIDI::LegacyPacketListDeleter::operator()();
  }

  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  return a1 + 68;
}

void *sub_C62C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    MIDI::LegacyPacketListDeleter::operator()();
    return v2;
  }

  return result;
}

uint64_t sub_C664(uint64_t result, uint64_t **a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v12[0] = v5 + 12;
      v12[1] = v6;
      v12[2] = *v5;
      v12[3] = 0;
      v10 = 0;
      v11 = 0;
      v9 = 0;
      result = sub_BE34(v12, &v11, &v9);
      if (result)
      {
        do
        {
          v7 = *a2;
          v14 = v11;
          v8 = *v7;
          *&v13 = v7[1];
          *(&v13 + 1) = &v14;
          sub_C74C((v8 + 64), &v9, &v13);
          v10 = 0;
          v11 = 0;
          v9 = 0;
          result = sub_BE34(v12, &v11, &v9);
        }

        while ((result & 1) != 0);
      }

      v5 += 4 * *(v5 + 8) + 12;
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

unsigned __int8 *sub_C74C(unsigned __int8 *result, unsigned __int8 *a2, _OWORD *a3)
{
  v3 = *a2;
  if (((1 << (v3 >> 28)) & 0xA02F) != 0)
  {
    v29 = *a3;
    v4 = a2;
    return sub_CA7C(v4, &v29);
  }

  if (v3 >> 28 == 4)
  {
    v5 = BYTE3(v3) & 0xF | 0x20;
    v6 = *(a2 + 1);
    v7 = BYTE2(v3) >> 4;
    if (v7 > 0xB)
    {
      switch(v7)
      {
        case 0xCu:
          if (v3)
          {
            v28 = 0;
            *&v27[8] = 0;
            v23 = v5 << 24;
            v24 = BYTE2(v3) << 16;
            v25 = (v5 << 24) | (v24 - 0x100000);
            *v27 = (v5 << 24) | (v24 - 0x100000) & 0xFFFFFF80 | (v6 >> 8) & 0x7F;
            v29 = *a3;
            v26 = a3;
            sub_CA7C(v27, &v29);
            v28 = 0;
            *&v27[8] = 0;
            *v27 = v25 & 0xFFFFFF80 | v6 & 0x7F | 0x2000;
            v29 = *v26;
            sub_CA7C(v27, &v29);
            a3 = v26;
          }

          else
          {
            v23 = v5 << 24;
            v24 = BYTE2(v3) << 16;
          }

          v28 = 0;
          *&v27[4] = 0;
          v9 = HIWORD(v6) & 0x7F00 | v23 | v24;
          break;
        case 0xDu:
          v28 = 0;
          *&v27[4] = 0;
          v9 = (BYTE2(v3) << 16) | (v5 << 24) | (v6 >> 25 << 8);
          break;
        case 0xEu:
          v28 = 0;
          *&v27[4] = 0;
          v9 = (v6 >> 10) & 0x7F00 | (BYTE2(v3) << 16) | (v5 << 24) | (v6 >> 25);
          break;
        default:
          return result;
      }

LABEL_35:
      *v27 = v9;
      v22 = *a3;
      goto LABEL_36;
    }

    if (v7 - 8 < 4)
    {
      v8 = v7 == 9;
      if (v6 >> 25)
      {
        v8 = v6 >> 25;
      }

      v28 = 0;
      *&v27[4] = 0;
      v9 = v8 | (BYTE2(v3) << 16) | (v5 << 24) | v3 & 0x7F00;
      goto LABEL_35;
    }

    if (v7 - 2 < 2)
    {
      v10 = (v3 >> 16) & 0xF;
      v11 = &result[48 * (BYTE3(v3) & 0xF) + 3 * v10];
      v12 = (v3 >> 8) & 0x7F;
      v13 = *a2 & 0x7F;
      v14 = (v6 >> 18) & 0x7F;
      if ((v3 & 0x100000) != 0)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      if (v15 == *v11 && v12 == v11[1])
      {
        v16 = v10 | 0xB0;
        if (v13 == v11[2])
        {
          v17 = (v5 << 24) | (v16 << 16);
          goto LABEL_28;
        }
      }

      else
      {
        v16 = v10 | 0xB0;
      }

      if ((v3 & 0x100000) != 0)
      {
        v18 = 25344;
      }

      else
      {
        v18 = 25856;
      }

      v28 = 0;
      *&v27[8] = 0;
      v17 = (v5 << 24) | (v16 << 16);
      v19 = v17 | v18;
      *v27 = v17 | v18 | v12;
      v29 = *a3;
      v20 = a3;
      sub_CA7C(v27, &v29);
      v28 = 0;
      *&v27[8] = 0;
      *v27 = (v19 | v13) - 256;
      v29 = *v20;
      sub_CA7C(v27, &v29);
      a3 = v20;
      *v11 = v15;
      v11[1] = v12;
      v11[2] = v13;
LABEL_28:
      v28 = 0;
      *&v27[8] = 0;
      *v27 = v17 | (v6 >> 25) | 0x600;
      v29 = *a3;
      v21 = a3;
      result = sub_CA7C(v27, &v29);
      if (v14)
      {
        v28 = 0;
        *&v27[8] = 0;
        *v27 = v14 | v17 | 0x2600u;
        v22 = *v21;
LABEL_36:
        v29 = v22;
        v4 = v27;
        return sub_CA7C(v4, &v29);
      }
    }
  }

  return result;
}

unsigned __int8 *sub_CA7C(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = v2 >> 28;
  v4 = &v42;
  if (v2 >> 28 == 3)
  {
    v19 = (v2 >> 16) & 0xF;
    if (v19 > 6 || BYTE2(v2) > 0x3Fu)
    {
      return result;
    }

    v20 = (v2 >> 20) + 3;
    v21 = bswap32(*(result + 1));
    v40[0] = bswap32(v2);
    v40[1] = v21;
    if (BYTE2(v2) > 0x1Fu)
    {
      v22 = 0;
      p_dst = &__dst;
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
      __dst = -16;
      v22 = 1;
      p_dst = &v42;
      if (!v19)
      {
LABEL_42:
        if ((v20 & 2) != 0)
        {
          *(&__dst + v22++) = -9;
        }

        v26 = *a2;
        v27 = **(a2 + 8);
        result = *(v26 + 56);
        v28 = v26 + 1088;
        v29 = *(v26 + 64);
        if (v29)
        {
          if (*result == v27)
          {
            v30 = *(result + 4);
            if (result[v30 + 9] != 247 && __dst != 240)
            {
              if (&result[v22 + 10 + v30] <= v28)
              {
LABEL_55:
                v31 = &result[v30 + 10];
                v32 = &__dst;
                if (v22 <= 1)
                {
                  if (!v22)
                  {
LABEL_81:
                    *(result + 4) += v22;
                    goto LABEL_82;
                  }

                  if (v22 == 1)
                  {
LABEL_80:
                    *v31 = *v32;
                    goto LABEL_81;
                  }
                }

                else
                {
                  switch(v22)
                  {
                    case 2:
                      v36 = &__dst;
LABEL_79:
                      *v31++ = *v36;
                      v32 = v36 + 1;
                      goto LABEL_80;
                    case 3:
                      v4 = &__dst;
                      goto LABEL_78;
                    case 4:
                      *v31 = __dst;
                      v31 = &result[v30 + 11];
LABEL_78:
                      v37 = *v4;
                      v36 = v4 + 1;
                      *v31++ = v37;
                      goto LABEL_79;
                  }
                }

                v33 = result;
                memmove(&result[v30 + 10], &__dst, v22);
                result = v33;
                goto LABEL_81;
              }

              goto LABEL_53;
            }
          }

          else
          {
            v30 = *(result + 4);
          }

          result = (&result[v30 + 13] & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (&result[v22 + 10] <= v28)
        {
          LODWORD(v30) = 0;
          *(v26 + 64) = v29 + 1;
          *result = v27;
          *(result + 4) = 0;
          goto LABEL_55;
        }

LABEL_53:
        result = sub_C478(v26, v27, &__dst, v22);
LABEL_82:
        *(v26 + 56) = result;
        return result;
      }
    }

    v25 = a2;
    memcpy(p_dst, v40 + 2, v19);
    a2 = v25;
    v22 += (v19 - 1) + 1;
    goto LABEL_42;
  }

  if (v3 == 2)
  {
    v13 = v2 & 0xE00000;
    __dst = BYTE2(*result);
    v42 = BYTE1(v2) & 0x7F;
    if ((v2 & 0xE00000) == 0xC00000)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    if (v13 != 12582912)
    {
      v43 = v2 & 0x7F;
    }

    v6 = *a2;
    v7 = **(a2 + 8);
    v14 = *(v6 + 56);
    v15 = v6 + 1088;
    v16 = *(v6 + 64);
    if (v16)
    {
      if (*v14 == v7)
      {
        v17 = BYTE2(v2);
        v18 = *(v14 + 8);
        if (v17 != 240 && *(v14 + v18 + 9) != 247)
        {
          if (v14 + v5 + v18 + 10 > v15)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = *(v14 + 8);
      }

      v14 = (v14 + v18 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v14 + v5 + 10 > v15)
    {
      goto LABEL_34;
    }

    LODWORD(v18) = 0;
    *(v6 + 64) = v16 + 1;
    *v14 = v7;
    *(v14 + 8) = 0;
LABEL_36:
    v24 = (v14 + v18 + 10);
    if (v13 == 12582912)
    {
      v4 = &__dst;
    }

    else
    {
      *v24++ = __dst;
    }

    *v24 = *v4;
    v24[1] = v4[1];
    *(v14 + 8) += v5;
    *(v6 + 56) = v14;
    return result;
  }

  if (v3 == 1 && BYTE2(v2) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v2) + 16)) & 1) == 0)
  {
    v5 = byte_17658[BYTE2(v2) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v2) + 16)) & 1) == 0)
    {
      v42 = BYTE1(v2) & 0x7F;
      if (BYTE2(v2) == 242)
      {
        v43 = v2 & 0x7F;
      }
    }

    v6 = *a2;
    v7 = **(a2 + 8);
    v8 = *(v6 + 56);
    v9 = v6 + 1088;
    v10 = *(v6 + 64);
    if (v10)
    {
      if (*v8 == v7)
      {
        v11 = BYTE2(v2);
        v12 = *(v8 + 8);
        if (v11 != 240 && *(v8 + v12 + 9) != 247)
        {
          if (v8 + v12 + v5 + 10 <= v9)
          {
LABEL_68:
            result = (v8 + v12 + 10);
            v34 = &__dst;
            if (v5 <= 1)
            {
              if (v5)
              {
                goto LABEL_88;
              }
            }

            else
            {
              switch(v5)
              {
                case 2:
                  v38 = &__dst;
LABEL_87:
                  *result++ = *v38;
                  v34 = v38 + 1;
LABEL_88:
                  *result = *v34;
                  goto LABEL_89;
                case 3:
                  v4 = &__dst;
                  goto LABEL_86;
                case 4:
                  *result++ = __dst;
LABEL_86:
                  v39 = *v4;
                  v38 = v4 + 1;
                  *result++ = v39;
                  goto LABEL_87;
              }

              v35 = v5;
              result = memmove(result, &__dst, v5);
              LOWORD(v5) = v35;
            }

LABEL_89:
            *(v8 + 8) += v5;
            *(v6 + 56) = v8;
            return result;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v12 = *(v8 + 8);
      }

      v8 = (v8 + v12 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v8 + v5 + 10 <= v9)
    {
      LODWORD(v12) = 0;
      *(v6 + 64) = v10 + 1;
      *v8 = v7;
      *(v8 + 8) = 0;
      goto LABEL_68;
    }

LABEL_34:
    result = sub_C478(v6, v7, &__dst, v5);
    *(v6 + 56) = result;
  }

  return result;
}

uint64_t sub_CFB4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

void sub_D090(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_D0C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t NewRTPDriver(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

void sub_D2FC(_Unwind_Exception *a1)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      sub_B3A8(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[14] = v5;
  operator delete(v5);
  sub_B3A8(v1);
  _Unwind_Resume(a1);
}

void *sub_D348(void *a1)
{
  *a1 = off_1CC08;
  v3 = a1[13];
  for (i = a1[14]; v3 != i; ++v3)
  {
    if (*v3)
    {
      sub_EF24(*v3);
      operator delete();
    }
  }

  sub_2E68((a1 + 19));
  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  return sub_B3A8(a1);
}

void sub_D414(void *a1)
{
  sub_D348(a1);

  operator delete();
}

const void *sub_D44C(uint64_t a1)
{
  outDict = 0;
  if (MIDIObjectGetDictionaryProperty(*(a1 + 100), @"apple.midirtp.addressbook", &outDict))
  {
    return 0;
  }

  if (outDict)
  {
    v3 = CFGetTypeID(outDict);
    if (v3 == CFDictionaryGetTypeID())
    {
      v4 = outDict;
      if (outDict)
      {
        Value = CFDictionaryGetValue(outDict, @"entries");
        CFRelease(v4);
        return Value;
      }
    }
  }

  return 0;
}

void sub_D500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D514(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D514(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void sub_D554(uint64_t a1, const void *a2)
{
  v5 = a1 + 152;
  v4 = *(a1 + 152);
  v15 = a1 + 152;
  v6 = (*(v4 + 16))(a1 + 152);
  v16 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = *(a1 + 128);
  if (*(a1 + 136) != v8)
  {
    while (*v8 <= Current + -300.0)
    {
      CFRelease(*(v8 + 8));
      *(v8 + 8) = 0;
      v10 = *(a1 + 128);
      v9 = *(a1 + 136);
      v11 = v9 - (v10 + 16);
      if (v9 == v10 + 16)
      {
        v8 = *(a1 + 128);
        *(a1 + 136) = v9 - 16;
        if (v9 - 16 == v10)
        {
          break;
        }
      }

      else
      {
        memmove(*(a1 + 128), (v10 + 16), v9 - (v10 + 16));
        v8 = *(a1 + 128);
        *(a1 + 136) = v10 + v11;
        if (v10 + v11 == v8)
        {
          break;
        }
      }
    }
  }

  if (a2)
  {
    *buffer = Current;
    *&buffer[8] = a2;
    CFRetain(a2);
    sub_D7CC(a1 + 128, buffer);
  }

  Mutable = CFDataCreateMutable(0, 0);
  for (i = *(a1 + 128); i != *(a1 + 136); i += 16)
  {
    CFDataAppendBytes(Mutable, i, 8);
    bzero(buffer, 0x400uLL);
    CFStringGetCString(*(i + 8), buffer, 1024, 0x8000100u);
    buffer[1023] = 0;
    *bytes = strlen(buffer) + 1;
    CFDataAppendBytes(Mutable, bytes, 2);
    CFDataAppendBytes(Mutable, buffer, *bytes);
  }

  MIDIObjectSetDataProperty(*(a1 + 100), @"apple.midirtp.errors", Mutable);
  CFRelease(Mutable);
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }
}

void sub_D790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_D7CC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_9D30();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_26F4();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_D8EC(uint64_t notifyRefCon, MIDIDeviceListRef devList)
{
  if (!qword_20080)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AppleMIDIRTPDriver");
    if (BundleWithIdentifier)
    {
      v5 = BundleWithIdentifier;
      CFRetain(BundleWithIdentifier);
      qword_20080 = CFBundleCopyLocalizedString(v5, @"BadHostErr", @"BadHostErr", @"RTPMIDILocalizable");
      qword_20088 = CFBundleCopyLocalizedString(v5, @"NoConnectResponseErr", @"NoConnectResponseErr", @"RTPMIDILocalizable");
      qword_20090 = CFBundleCopyLocalizedString(v5, @"RefusedConnectionErr", @"RefusedConnectionErr", @"RTPMIDILocalizable");
      qword_20098 = CFBundleCopyLocalizedString(v5, @"IncompatibleProtocolErr", @"IncompatibleProtocolErr", @"RTPMIDILocalizable");
      qword_200A0 = CFBundleCopyLocalizedString(v5, @"LostConnectionErr", @"LostConnectionErr", @"RTPMIDILocalizable");
      qword_200A8 = CFBundleCopyLocalizedString(v5, @"NetworkDevice", @"NetworkDevice", @"RTPMIDILocalizable");
      CFRelease(v5);
    }
  }

  if (!*(notifyRefCon + 96))
  {
    v6 = MIDIClientCreate(@"MIDIRTP driver", sub_DE68, notifyRefCon, (notifyRefCon + 96));
    if (v6)
    {
      v11 = v6;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        sub_11B0(v17, v11);
        *buf = 136315906;
        v19 = "RTPDriver.cpp";
        v20 = 1024;
        v21 = 157;
        v22 = 2080;
        v23 = v17;
        v24 = 2080;
        v25 = "MIDIClientCreate";
        _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      sub_EBC(exception, "MIDIClientCreate", v11);
    }
  }

  if (MIDIDeviceListGetNumberOfDevices(devList))
  {
    Device = MIDIDeviceListGetDevice(devList, 0);
    *(notifyRefCon + 100) = Device;
    if ((byte_200B0 & 1) == 0)
    {
      MIDIObjectSetStringProperty(Device, kMIDIPropertyName, qword_200A8);
      byte_200B0 = 1;
    }
  }

  else
  {
    v8 = MIDIDeviceCreate((notifyRefCon + 8), qword_200A8, &stru_1CEB8, &stru_1CEB8, (notifyRefCon + 100));
    if (v8)
    {
      v13 = v8;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        sub_11B0(v17, v13);
        *buf = 136315906;
        v19 = "RTPDriver.cpp";
        v20 = 1024;
        v21 = 169;
        v22 = 2080;
        v23 = v17;
        v24 = 2080;
        v25 = "MIDIDeviceCreate";
        _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v14 = __cxa_allocate_exception(0x110uLL);
      sub_EBC(v14, "MIDIDeviceCreate", v13);
    }

    v9 = MIDISetupAddDevice(*(notifyRefCon + 100));
    if (v9)
    {
      v15 = v9;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        sub_11B0(v17, v15);
        *buf = 136315906;
        v19 = "RTPDriver.cpp";
        v20 = 1024;
        v21 = 170;
        v22 = 2080;
        v23 = v17;
        v24 = 2080;
        v25 = "MIDISetupAddDevice";
        _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v16 = __cxa_allocate_exception(0x110uLL);
      sub_EBC(v16, "MIDISetupAddDevice", v15);
    }
  }

  sub_D554(notifyRefCon, 0);
  MIDIObjectSetIntegerProperty(*(notifyRefCon + 100), kMIDIPropertyOffline, 0);
  MIDIObjectSetIntegerProperty(*(notifyRefCon + 100), kMIDIPropertyAdvanceScheduleTimeMuSec, 50000);
  MIDIObjectSetStringProperty(*(notifyRefCon + 100), kMIDIPropertyImage, @"/System/Library/Audio/MIDI Drivers/AppleMIDIRTPDriver.plugin/Contents/Resources/RTPDriverIcon.tiff");
  sub_E008(notifyRefCon);
  return 0;
}

void sub_DE4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_C38(a1);
  }

  _Unwind_Resume(a1);
}

void sub_DE68(CFTypeRef *a1, uint64_t a2)
{
  v2 = *a1;
  if ((*a1 - 2) >= 2)
  {
    if (v2 == 4 && *(a1 + 3) == 1)
    {
      v3 = *(a2 + 104);
      v4 = *(a2 + 112);
      if (v3 != v4)
      {
        while (1)
        {
          v5 = *v3;
          if (*(*v3 + 16) == *(a1 + 2))
          {
            break;
          }

          if (++v3 == v4)
          {
            return;
          }
        }

        if (CFEqual(a1[2], @"apple.midirtp.session"))
        {

          sub_E2F4(v5);
        }
      }
    }
  }

  else if (*(a1 + 2) == *(a2 + 100))
  {
    if (v2 == 2)
    {

      sub_E008(a2);
    }

    else
    {
      v7 = *(a2 + 104);
      v6 = *(a2 + 112);
      if (v7 != v6)
      {
        v8 = *(a1 + 4);
        v9 = *(a2 + 104);
        do
        {
          v10 = *v9;
          if (*(*v9 + 16) == v8)
          {
            while (*(*v7 + 16) != v8)
            {
              if (++v7 == v6)
              {
                goto LABEL_23;
              }
            }

            v11 = v6 - (v7 + 1);
            if (v6 != v7 + 1)
            {
              v12 = a2;
              memmove(v7, v7 + 1, v6 - (v7 + 1));
              a2 = v12;
            }

            *(a2 + 112) = v7 + v11;
LABEL_23:
            sub_EF24(v10);

            operator delete();
          }

          ++v9;
        }

        while (v9 != v6);
      }
    }
  }
}

ItemCount sub_E008(uint64_t a1)
{
  if ((byte_200B1 & 1) == 0)
  {
    byte_200B1 = 1;
  }

  result = MIDIDeviceGetNumberOfEntities(*(a1 + 100));
  if (result)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = MIDIDeviceGetEntity(*(a1 + 100), i);
      if (result)
      {
        v5 = *(a1 + 104);
        v6 = *(a1 + 112);
        if (v5 == v6)
        {
LABEL_10:
          operator new();
        }

        while (*(*v5 + 16) != result)
        {
          v5 += 8;
          if (v5 == v6)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return result;
}

void sub_E150(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_9D30();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_26F4();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_E268(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_754C(a4, a2, 0);
  }

  return 0;
}

uint64_t sub_E298(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3;
    sub_33CC(v3);
    v5 = v4[66];
    __cxa_end_catch();
    return v5;
  }

  else
  {
    __cxa_end_catch();
    return 0xFFFFFFFFLL;
  }
}

void sub_E2F4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
  {
    sub_14E4C();
  }

  v2 = qword_200B8;
  if (os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 16);
    *buf = 136315906;
    *&buf[4] = "RTPDriver.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 420;
    *&buf[18] = 2112;
    *&buf[20] = v3;
    v29 = 1024;
    v30 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ (0x%x): EntityInfoPropertyChanged", buf, 0x22u);
  }

  outDict = 0;
  memset(buf, 0, 24);
  if (!MIDIObjectGetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", &outDict))
  {
    v5 = outDict;
    cf = outDict;
    v26 = 257;
    if (outDict && (v6 = CFDictionaryGetValue(outDict, @"flags"), v7 = v6, LODWORD(valuePtr) = 0, v6) && (v8 = CFGetTypeID(v6), v8 == CFNumberGetTypeID()) && (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr), (valuePtr & 1) != 0))
    {
      Value = CFDictionaryGetValue(v5, @"port");
      v19 = Value;
      LODWORD(valuePtr) = 0;
      if (Value)
      {
        v20 = CFGetTypeID(Value);
        if (v20 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr);
          v21 = *(a1 + 80);
          if (v21)
          {
            if (valuePtr >= 1 && valuePtr != *(v21 + 148))
            {
              sub_EFA4(a1);
            }
          }
        }
      }

      sub_EC44(a1);
      valuePtr = 0;
      v23 = 1;
    }

    else
    {
      sub_EFA4(a1);
      valuePtr = 0;
      v23 = 1;
      if (!v5)
      {
LABEL_23:
        sub_F15C(a1, &cf, buf);
        DeepCopy = CFPropertyListCreateDeepCopy(0, outDict, 1uLL);
        if (*(a1 + 72) == 1)
        {
          v16 = *(a1 + 64);
          if (v16)
          {
            CFRelease(v16);
          }
        }

        *(a1 + 64) = DeepCopy;
        *(a1 + 73) = 1;
        v17 = *&buf[8];
        if (*&buf[8] != *buf)
        {
          if (DeepCopy)
          {
            DeepCopy = CFDictionaryGetValue(DeepCopy, @"peers");
            v17 = *&buf[8];
          }

          do
          {
            CFArrayRemoveValueAtIndex(DeepCopy, *(v17 - 4));
            v17 = *&buf[8] - 4;
            *&buf[8] = v17;
          }

          while (v17 != *buf);
          CFDictionarySetValue(*(a1 + 64), @"peers", DeepCopy);
          MIDIObjectSetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", *(a1 + 64));
        }

        if (v23 == 1 && valuePtr)
        {
          CFRelease(valuePtr);
        }

        if (v26 == 1 && cf)
        {
          CFRelease(cf);
        }

        goto LABEL_37;
      }
    }

    if (CFDictionaryContainsKey(v5, @"dns-sd-name"))
    {
      v9 = CFDictionaryGetValue(v5, @"dns-sd-name");
      valuePtr = v9;
      v24 = 0;
      if (v9)
      {
        v10 = v9;
        CFRetain(v9);
        v9 = v10;
      }

      if (!CFEqual(v9, *(a1 + 48)))
      {
        if (*(a1 + 56) == 1)
        {
          v11 = *(a1 + 48);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        v12 = valuePtr;
        *(a1 + 48) = valuePtr;
        v13 = v23;
        *(a1 + 56) = v23;
        *(a1 + 57) = v24;
        if (v13 == 1 && v12)
        {
          CFRetain(v12);
        }

        v14 = *(a1 + 80);
        if (v14)
        {
          sub_4CD8(v14, *(a1 + 48));
        }
      }
    }

    goto LABEL_23;
  }

LABEL_37:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

void sub_E6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E738(uint64_t a1, uint64_t a2, MIDIEntityRef a3, int a4)
{
  *a1 = off_1CC78;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  v7 = (a1 + 32);
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v8 = (a1 + 48);
  *(a1 + 56) = 1;
  *(a1 + 64) = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 72) = 257;
  *(a1 + 80) = 0;
  *(a1 + 20) = MIDIEntityGetSource(a3, 0);
  *(a1 + 24) = MIDIEntityGetDestination(a3, 0);
  str = 0;
  MIDIObjectGetStringProperty(a3, kMIDIPropertyName, &str);
  v9 = str;
  if (str)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      *(a1 + 32) = str;
      *(a1 + 41) = 0;
      goto LABEL_9;
    }

    if (*v7)
    {
      CFRelease(*v7);
      v10 = *(a1 + 40);
      *(a1 + 32) = v9;
      *(a1 + 41) = 0;
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 32) = str;
      *(a1 + 41) = 0;
    }

    CFRetain(v9);
  }

LABEL_9:
  sub_EAF8(a1);
  if (a4)
  {
    v11 = MGCopyAnswer();
    if (v11)
    {
      Value = v11;
    }

    else
    {
      Value = @"Unknown";
    }

    if (*(a1 + 56) == 1)
    {
      v13 = *v8;
      if (*v8)
      {
LABEL_23:
        CFRelease(v13);
        v16 = *(a1 + 56);
        *(a1 + 48) = Value;
        *(a1 + 57) = 0;
        if ((v16 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v14 = *(a1 + 64);
  if (!v14 || !CFDictionaryContainsKey(v14, @"dns-sd-name"))
  {
    if (*(a1 + 56) == 1)
    {
      v13 = *v8;
      Value = &stru_1CEB8;
      if (*v8)
      {
        goto LABEL_23;
      }

LABEL_27:
      *(a1 + 48) = Value;
      *(a1 + 57) = 0;
LABEL_34:
      CFRetain(Value);
      goto LABEL_35;
    }

    Value = &stru_1CEB8;
    goto LABEL_26;
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, @"dns-sd-name");
    if (*(a1 + 56) == 1)
    {
      goto LABEL_29;
    }

LABEL_26:
    *(a1 + 48) = Value;
    *(a1 + 57) = 0;
    goto LABEL_35;
  }

  Value = 0;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_26;
  }

LABEL_29:
  if (*v8)
  {
    CFRelease(*v8);
    v17 = *(a1 + 56);
    *(a1 + 48) = Value;
    *(a1 + 57) = 0;
    if (!Value)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = 1;
    *(a1 + 48) = Value;
    *(a1 + 57) = 0;
    if (!Value)
    {
      goto LABEL_35;
    }
  }

  if (v17)
  {
    goto LABEL_34;
  }

LABEL_35:
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFDictionarySetValue(*(a1 + 64), @"peers", Mutable);
  MIDIObjectSetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", *(a1 + 64));
  v19 = *(a1 + 64);
  if (v19)
  {
    v20 = CFDictionaryGetValue(v19, @"flags");
    v21 = v20;
    valuePtr = 0;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          v23 = *(a1 + 64);
          if (v23)
          {
            v24 = CFDictionaryGetValue(v23, @"port");
            v25 = v24;
            valuePtr = 0;
            if (v24)
            {
              v26 = CFGetTypeID(v24);
              if (v26 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
              }
            }
          }

          sub_EC44(a1);
        }
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_EAA0(_Unwind_Exception *a1)
{
  sub_D514(v1 + 64);
  sub_38BC(v3);
  sub_38BC(v2);
  _Unwind_Resume(a1);
}

void sub_EAF8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
  {
    sub_14E4C();
  }

  v2 = qword_200B8;
  if (os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 16);
    *propertyList = 136315906;
    *&propertyList[4] = "RTPDriver.cpp";
    v8 = 1024;
    v9 = 352;
    v10 = 2112;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ (0x%x): LoadState:", propertyList, 0x22u);
  }

  *propertyList = 0;
  if (!MIDIObjectGetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", propertyList))
  {
    DeepCopy = CFPropertyListCreateDeepCopy(0, *propertyList, 1uLL);
    if (*(a1 + 72) == 1)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(a1 + 64) = DeepCopy;
    *(a1 + 73) = 1;
    CFRelease(*propertyList);
  }
}

uint64_t sub_EC44(uint64_t result)
{
  if (!*(result + 80))
  {
    v1 = result;
    if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
    {
      sub_14E4C();
    }

    v2 = qword_200B8;
    if (os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(v1 + 32);
      v4 = *(v1 + 16);
      v5 = 136315906;
      v6 = "RTPDriver.cpp";
      v7 = 1024;
      v8 = 378;
      v9 = 2112;
      v10 = v3;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ (0x%x): Session starting", &v5, 0x22u);
    }

    MIDIObjectRemoveProperty(*(v1 + 16), kMIDIPropertyMaxSysExSpeed);
    operator new();
  }

  return result;
}

void sub_EE20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_C38(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EEE4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_EF24(uint64_t a1)
{
  sub_EFA4(a1);
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return a1;
}

void sub_EFA4(uint64_t a1)
{
  MIDIEndpointSetRefCons(*(a1 + 24), 0, 0);
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_3C38(v2);
    v3 = *(a1 + 80);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(a1 + 80) = 0;
    if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
    {
      sub_14E4C();
    }

    v4 = qword_200B8;
    if (os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 16);
      v7 = 136315906;
      v8 = "RTPDriver.cpp";
      v9 = 1024;
      v10 = 412;
      v11 = 2112;
      v12 = v5;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ (0x%x): Session ended", &v7, 0x22u);
    }
  }
}

void sub_F144(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xF14CLL);
  }

  sub_C38(a1);
}

void sub_F15C(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  if (!*(a1 + 80))
  {
    return;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"peers");
    v8 = *a2;
    if (*a2)
    {
LABEL_4:
      v9 = CFDictionaryGetValue(v8, @"peers");
      goto LABEL_7;
    }
  }

  else
  {
    Value = 0;
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_7:
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v25 = Mutable;
  v26 = 257;
  cf = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v24 = 257;
  if (!Value)
  {
    Value = Mutable;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v25 = Value;
  HIBYTE(v26) = 0;
  CFRetain(Value);
  if (v9)
  {
LABEL_13:
    if (cf)
    {
      CFRelease(cf);
    }

    cf = v9;
    HIBYTE(v24) = 0;
    CFRetain(v9);
  }

LABEL_16:
  sub_F4AC(&v21, &v25);
  sub_F4AC(&__p, &cf);
  v17[2] = a3;
  v18 = a1;
  v17[0] = a1;
  v17[1] = &cf;
  v16[0] = a1;
  v16[1] = &cf;
  v12 = v21;
  v11 = v22;
  v13 = __p;
  v14 = v20;
  v31 = sub_111F4;
  v32 = &v18;
  v29 = sub_11208;
  v30 = v17;
  v27 = sub_114F8;
  v28 = v16;
  v15 = v21;
  if (v21 < v22)
  {
    goto LABEL_19;
  }

LABEL_27:
  while (v13 < v14)
  {
LABEL_18:
    v29(&v30, v13);
    v13 += 2;
    v12 = v15;
    if (v15 < v11)
    {
LABEL_19:
      while (v13 < v14)
      {
        if ((CFStringCompare(*v15, *v13, 0) & 0x80000000) != 0)
        {
          v31(&v32, v12);
LABEL_23:
          v15 += 2;
          v12 += 2;
          if (v15 >= v11)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((CFStringCompare(*v13, *v15, 0) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }

          v27(&v28, v15, v13);
          v15 += 2;
          v13 += 2;
          v12 = v15;
          if (v15 >= v11)
          {
            goto LABEL_27;
          }
        }
      }

      v31(&v32, v15);
      goto LABEL_23;
    }
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (Value)
  {
    CFRelease(Value);
  }
}

void sub_F430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_EEE4(&a21);
  sub_EEE4(&a23);
  _Unwind_Resume(a1);
}

void sub_F4AC(void *a1, CFArrayRef *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  Count = CFArrayGetCount(*a2);
  if (Count < 1)
  {
    v9 = 0uLL;
  }

  else
  {
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v5);
      if (!ValueAtIndex || (Value = CFDictionaryGetValue(ValueAtIndex, @"address")) == 0)
      {
        Value = &stru_1CEB8;
      }

      *&v10 = Value;
      DWORD2(v10) = v5;
      sub_101D8(a1, &v10);
      ++v5;
    }

    while (v6 != v5);
    v9 = *a1;
  }

  sub_102F8(v9, *(&v9 + 1));
}

void sub_F570(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F590(uint64_t result, const void *a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  if (*(result + 56))
  {
    v4 = *(result + 48);
    if (v4)
    {
      CFRelease(v4);
      v5 = *(v3 + 56);
      *(v3 + 48) = a2;
      *(v3 + 57) = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v3 + 48) = a2;
      *(v3 + 57) = 0;
    }

    CFRetain(a2);
  }

  else
  {
    *(result + 48) = a2;
    *(result + 57) = 0;
  }

LABEL_10:
  sub_EAF8(v3);
  CFDictionarySetValue(*(v3 + 64), @"dns-sd-name", a2);
  v6 = *(v3 + 16);
  v7 = *(v3 + 64);

  return MIDIObjectSetDictionaryProperty(v6, @"apple.midirtp.session", v7);
}

uint64_t sub_F63C(uint64_t a1, int a2)
{
  sub_EAF8(a1);
  valuePtr = a2;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(*(a1 + 64), @"port", v4);
  CFRelease(v4);
  return MIDIObjectSetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", *(a1 + 64));
}

BOOL sub_F6BC(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"join-policy");
    *valuePtr = 0;
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, valuePtr);
        if (*valuePtr == 1)
        {
          if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
          {
            sub_14EA8();
          }

          v15 = qword_200B8;
          if (os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG))
          {
            *valuePtr = 136315906;
            *&valuePtr[4] = "RTPDriver.cpp";
            v40 = 1024;
            v41 = 633;
            v42 = 2112;
            v43 = a2;
            v44 = 2112;
            v45 = a3;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Join policy is kRTPJoinPolicy_UsersInDirectory: Looking up %@ %@", valuePtr, 0x26u);
          }

          sub_1D44(&stru_1CEB8, a3, &v29);
          sub_1660(&v29, valuePtr, 0x100uLL);
          v16 = sub_D44C(*(a1 + 8));
          v17 = v16;
          if (v16)
          {
            Count = CFArrayGetCount(v16);
            v19 = Count;
            if (Count >= 1)
            {
              v20 = 0;
              v21 = Count & 0x7FFFFFFF;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
                if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
                {
                  sub_14EA8();
                }

                v23 = qword_200B8;
                if (os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136316162;
                  *&buf[4] = "RTPDriver.cpp";
                  v31 = 1024;
                  v32 = 653;
                  v33 = 1024;
                  v34 = v20;
                  v35 = 1024;
                  v36 = v19;
                  v37 = 2112;
                  v38 = ValueAtIndex;
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d   Address Book entry %d/%d: %@", buf, 0x28u);
                }

                if (ValueAtIndex)
                {
                  v24 = CFGetTypeID(ValueAtIndex);
                  if (v24 == CFDictionaryGetTypeID())
                  {
                    v25 = CFDictionaryGetValue(ValueAtIndex, @"address");
                    v26 = v25;
                    if (v25)
                    {
                      v27 = CFGetTypeID(v25);
                      if (v27 == CFStringGetTypeID())
                      {
                        sub_1D44(&stru_1CEB8, v26, &v28);
                        sub_1660(&v28, buf, 0x100uLL);
                        if (sub_2234(&v28.sa_len, &v29.sa_len))
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                if (v21 == ++v20)
                {
                  return 0;
                }
              }

              goto LABEL_6;
            }
          }

          return 0;
        }

        if (*valuePtr == 2)
        {
LABEL_6:
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          *valuePtr = Mutable;
          *&valuePtr[8] = 257;
          if (CFStringGetLength(a2))
          {
            v11 = a2;
          }

          else
          {
            v11 = a3;
          }

          CFDictionarySetValue(Mutable, @"name", v11);
          CFDictionarySetValue(Mutable, @"address", a3);
          CFDictionarySetValue(Mutable, @"state", @"initialized");
          sub_EAF8(a1);
          v12 = *(a1 + 64);
          if (v12)
          {
            v12 = CFDictionaryGetValue(v12, @"peers");
          }

          *buf = v12;
          *&buf[8] = 256;
          CFArrayAppendValue(v12, Mutable);
          MIDIObjectSetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", *(a1 + 64));
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return 1;
        }
      }
    }
  }

  if ((atomic_load_explicit(&qword_200C0, memory_order_acquire) & 1) == 0)
  {
    sub_14EA8();
  }

  v14 = qword_200B8;
  result = os_log_type_enabled(qword_200B8, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *valuePtr = 136315906;
    *&valuePtr[4] = "RTPDriver.cpp";
    v40 = 1024;
    v41 = 629;
    v42 = 2112;
    v43 = a2;
    v44 = 2112;
    v45 = a3;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Join policy is kRTPJoinPolicy_NoOne: %@ %@ is not allowed to connect", valuePtr, 0x26u);
    return 0;
  }

  return result;
}

void sub_FB60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_C38(a1);
  }

  _Unwind_Resume(a1);
}

void sub_FB84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3;
      sub_33CC(v3);
      LODWORD(v4) = v4[66];
      __cxa_end_catch();
      if (!v4)
      {
        JUMPOUT(0xF998);
      }
    }

    else
    {
      __cxa_end_catch();
    }

    JUMPOUT(0xF8B0);
  }

  _Unwind_Resume(a1);
}

void sub_FBCC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xFB68);
}

void sub_FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_EEE4(&a19);
  sub_D514(&a51);
  _Unwind_Resume(a1);
}

CFIndex sub_FC14(uint64_t a1, const void *a2)
{
  sub_EAF8(a1);
  v4 = *(a1 + 64);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"peers");
  }

  else
  {
    Value = 0;
  }

  result = CFArrayGetCount(Value);
  if (result >= 1)
  {
    v7 = 0;
    v8 = result & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
      if (!ValueAtIndex || (v10 = CFDictionaryGetValue(ValueAtIndex, @"address")) == 0)
      {
        v10 = &stru_1CEB8;
      }

      result = CFEqual(v10, a2);
      if (result)
      {
        break;
      }

      if (v8 == ++v7)
      {
        return result;
      }
    }

    CFArrayRemoveValueAtIndex(Value, v7);
    return MIDIObjectSetDictionaryProperty(*(a1 + 16), @"apple.midirtp.session", *(a1 + 64));
  }

  return result;
}

uint64_t sub_FD48(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_EAF8(a1);
  v6 = *(a1 + 64);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"peers");
    if (Value)
    {
      v8 = Value;
      CFRetain(Value);
      theArray = v8;
      v9 = CFGetTypeID(v8);
      if (v9 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      Count = CFArrayGetCount(theArray);
      v11 = CFArrayGetCount(theArray);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          if (v11 == i)
          {
            break;
          }

          v13 = sub_11574(theArray, i);
          v14 = v13;
          if (v13)
          {
            CFRetain(v13);
            v15 = CFGetTypeID(v14);
            if (v15 != CFDictionaryGetTypeID())
            {
              v22 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v22, "Could not construct");
            }

            if (v14)
            {
              v16 = CFDictionaryGetValue(v14, @"address");
              if (v16)
              {
                if (CFStringCompare(v16, a2, 0))
                {
                  v17 = 3;
                }

                else
                {
                  CFDictionarySetValue(v14, @"state", a3);
                  v17 = 2;
                }

                v18 = v14;
              }

              else
              {
                v17 = 0;
                v18 = v14;
              }

              CFRelease(v18);
              if (v17 != 3)
              {
                if (v17)
                {
                  break;
                }
              }
            }
          }
        }
      }

      CFRelease(theArray);
    }
  }

  v19 = *(a1 + 16);
  v20 = *(a1 + 64);

  return MIDIObjectSetDictionaryProperty(v19, @"apple.midirtp.session", v20);
}

void sub_10064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_11124(&a10);
  _Unwind_Resume(a1);
}

void sub_10088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1118C(&a9);
  sub_111C0(&a10);
  _Unwind_Resume(a1);
}

void sub_100E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_11158(&a9);
  sub_111C0(&a10);
  _Unwind_Resume(a1);
}

void sub_10104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_111C0(va);
  _Unwind_Resume(a1);
}

void sub_10120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_11158(&a9);
  sub_111C0(&a10);
  _Unwind_Resume(a1);
}

void sub_1013C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_111C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10158(uint64_t a1, SInt32 value)
{
  v2 = *(a1 + 16);
  if (value)
  {
    return MIDIObjectSetIntegerProperty(v2, kMIDIPropertyMaxSysExSpeed, value);
  }

  else
  {
    return MIDIObjectRemoveProperty(v2, kMIDIPropertyMaxSysExSpeed);
  }
}

_BYTE *sub_10178(_BYTE *result)
{
  if (result[8] == 1)
  {
    v1 = result;
    (*(**result + 24))(*result);
    return v1;
  }

  return result;
}

void sub_101D8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_9D30();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_26F4();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_102F8(unint64_t a1, CFStringRef *a2)
{
  v2 = 126 - 2 * __clz((a2 - a1) >> 4);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_1033C(a1, a2, &v4, v3, 1);
}

void sub_1033C(unint64_t a1, CFStringRef *a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 2;
    v11 = a1;
LABEL_2:
    v12 = a4 - 1;
    while (1)
    {
      a1 = v11;
      a4 = v12;
      v13 = (a2 - v11) >> 4;
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3uLL:

            sub_107D4(v11, v11 + 2, a2 - 2);
            return;
          case 4uLL:
            sub_107D4(v11, v11 + 2, v11 + 4);
            if ((CFStringCompare(*v10, v11[4], 0) & 0x80000000) != 0)
            {
              v18 = *(v11 + 2);
              *(v11 + 2) = *v10;
              *v10 = v18;
              if ((CFStringCompare(v11[4], v11[2], 0) & 0x80000000) != 0)
              {
                v19 = *(v11 + 1);
                *(v11 + 1) = *(v11 + 2);
                *(v11 + 2) = v19;
                if ((CFStringCompare(v11[2], *v11, 0) & 0x80000000) != 0)
                {
                  v43 = *v11;
                  *v11 = *(v11 + 1);
                  *(v11 + 1) = v43;
                }
              }
            }

            return;
          case 5uLL:

            sub_108E8(v11, v11 + 2, v11 + 4, v11 + 6, a2 - 2);
            return;
        }
      }

      else
      {
        if (v13 < 2)
        {
          return;
        }

        if (v13 == 2)
        {
          if ((CFStringCompare(*v10, *v11, 0) & 0x80000000) != 0)
          {
            v42 = *v11;
            *v11 = *v10;
            *v10 = v42;
          }

          return;
        }
      }

      if (v13 <= 23)
      {
        v20 = v11 + 2;
        v22 = v11 == a2 || v20 == a2;
        if (a5)
        {
          if (!v22)
          {
            v23 = 0;
            v24 = v11;
            do
            {
              v26 = v20;
              if ((CFStringCompare(v24[2], *v24, 0) & 0x80000000) != 0)
              {
                v27 = *v26;
                v28 = v24[3];
                v29 = v23;
                v25 = v26;
                while (1)
                {
                  *v25 = *(v25 - 1);
                  if (!v29)
                  {
                    break;
                  }

                  v30 = CFStringCompare(v27, *(v25 - 4), 0);
                  v25 -= 2;
                  v29 += 16;
                  if ((v30 & 0x80000000) == 0)
                  {
                    goto LABEL_46;
                  }
                }

                v25 = v11;
LABEL_46:
                *v25 = v27;
                v25[1] = v28;
              }

              v20 = v26 + 2;
              v23 -= 16;
              v24 = v26;
            }

            while (v26 + 2 != a2);
          }
        }

        else if (!v22)
        {
          do
          {
            v35 = v20;
            if ((CFStringCompare(*(a1 + 16), *a1, 0) & 0x80000000) != 0)
            {
              v36 = *v35;
              v37 = *(a1 + 24);
              v38 = v35;
              do
              {
                v39 = v38 - 2;
                *v38 = *(v38 - 1);
                v40 = CFStringCompare(v36, *(v38 - 4), 0);
                v38 = v39;
              }

              while (v40 < 0);
              *v39 = v36;
              v39[1] = v37;
            }

            v20 = v35 + 2;
            a1 = v35;
          }

          while (v35 + 2 != a2);
        }

        return;
      }

      if (v12 == -1)
      {
        if (v11 != a2)
        {
          v31 = (v13 - 2) >> 1;
          v32 = v31 + 1;
          v33 = &v11[2 * v31];
          do
          {
            sub_10E7C(v11, a3, (a2 - v11) >> 4, v33);
            v33 -= 2;
            --v32;
          }

          while (v32);
          do
          {
            sub_10FB4(v11, a2, a3, v13);
            a2 -= 2;
          }

          while (v13-- > 2);
        }

        return;
      }

      v14 = &v11[2 * (v13 >> 1)];
      if (v13 < 0x81)
      {
        sub_107D4((a1 + 16 * (v13 >> 1)), a1, a2 - 2);
        if (a5)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_107D4(a1, (a1 + 16 * (v13 >> 1)), a2 - 2);
        sub_107D4((a1 + 16), v14 - 2, a2 - 4);
        sub_107D4((a1 + 32), v14 + 2, a2 - 6);
        sub_107D4(v14 - 2, (a1 + 16 * (v13 >> 1)), v14 + 2);
        v41 = *a1;
        *a1 = *v14;
        *v14 = v41;
        if (a5)
        {
          goto LABEL_17;
        }
      }

      if ((CFStringCompare(*(a1 - 16), *a1, 0) & 0x80000000) == 0)
      {
        v11 = sub_10A34(a1, a2);
        a5 = 0;
        goto LABEL_2;
      }

LABEL_17:
      v15 = sub_10B50(a1, a2);
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = sub_10C64(a1, v15);
      v11 = (v15 + 1);
      if (sub_10C64(v15 + 2, a2))
      {
        break;
      }

      v12 = a4 - 1;
      if (!v17)
      {
LABEL_20:
        sub_1033C(a1, v15, a3, a4, a5 & 1);
        a5 = 0;
        v11 = (v15 + 1);
        goto LABEL_2;
      }
    }

    a2 = v15;
    if (!v17)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_107D4(CFStringRef *a1, CFStringRef *a2, CFStringRef *a3)
{
  v6 = CFStringCompare(*a2, *a1, 0);
  v7 = CFStringCompare(*a3, *a2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 0;
    }

    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if ((CFStringCompare(*a2, *a1, 0) & 0x80000000) != 0)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }

    return 1;
  }

  if (v7 < 0)
  {
    v10 = *a1;
    *a1 = *a3;
  }

  else
  {
    v9 = *a1;
    *a1 = *a2;
    *a2 = v9;
    if ((CFStringCompare(*a3, *a2, 0) & 0x80000000) == 0)
    {
      return 1;
    }

    v10 = *a2;
    *a2 = *a3;
  }

  *a3 = v10;
  return 1;
}

__n128 sub_108E8(CFStringRef *a1, CFStringRef *a2, CFStringRef *a3, CFStringRef *a4, CFStringRef *a5)
{
  sub_107D4(a1, a2, a3);
  if ((CFStringCompare(*a4, *a3, 0) & 0x80000000) != 0)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    if ((CFStringCompare(*a3, *a2, 0) & 0x80000000) != 0)
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      if ((CFStringCompare(*a2, *a1, 0) & 0x80000000) != 0)
      {
        v12 = *a1;
        *a1 = *a2;
        *a2 = v12;
      }
    }
  }

  if ((CFStringCompare(*a5, *a4, 0) & 0x80000000) != 0)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((CFStringCompare(*a4, *a3, 0) & 0x80000000) != 0)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((CFStringCompare(*a3, *a2, 0) & 0x80000000) != 0)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((CFStringCompare(*a2, *a1, 0) & 0x80000000) != 0)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

CFStringRef *sub_10A34(const __CFString **a1, CFStringRef *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a1[1];
  if ((CFStringCompare(*a1, *(a2 - 2), 0) & 0x80000000) != 0)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v7 += 2;
    }

    while ((CFStringCompare(v4, v8, 0) & 0x80000000) == 0);
  }

  else
  {
    v6 = (a1 + 2);
    do
    {
      v7 = v6;
      if (v6 >= v2)
      {
        break;
      }

      v6 += 16;
    }

    while ((CFStringCompare(v4, *v7, 0) & 0x80000000) == 0);
  }

  if (v7 < v2)
  {
    do
    {
      v9 = *(v2 - 2);
      v2 -= 2;
    }

    while ((CFStringCompare(v4, v9, 0) & 0x80000000) != 0);
  }

  while (v7 < v2)
  {
    v13 = *v7;
    *v7 = *v2;
    *v2 = v13;
    do
    {
      v10 = v7[2];
      v7 += 2;
    }

    while ((CFStringCompare(v4, v10, 0) & 0x80000000) == 0);
    do
    {
      v11 = *(v2 - 2);
      v2 -= 2;
    }

    while ((CFStringCompare(v4, v11, 0) & 0x80000000) != 0);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 2) = v4;
  *(v7 - 1) = v5;
  return v7;
}