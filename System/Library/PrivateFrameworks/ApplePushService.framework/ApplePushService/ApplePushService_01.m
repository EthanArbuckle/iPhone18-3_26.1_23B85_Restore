uint64_t sub_100013188()
{
  v0 = sub_100004328(APSForceAOPConnnection, 1);
  if ([v0 BOOLValue])
  {
    v1 = +[APSLog offloader];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Forcing device to offload to AOP.", v4, 2u);
    }

    v2 = 1;
  }

  else if (_os_feature_enabled_impl() && MGGetBoolAnswer())
  {
    v2 = MGGetBoolAnswer();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000132DC(id a1, int a2)
{
  state64 = 0;
  notify_get_state(a2, &state64);
  v2 = +[APSSystemMonitor sharedInstance];
  [v2 _setSystemLockState:state64 != 0];
}

void *SbfAddString(size_t a1, uint64_t a2, char *a3, char *__s, size_t a5)
{
  if (!a1)
  {
    sub_1000F875C();
  }

  if (!__s)
  {
    sub_1000F8730();
  }

  if (a5 == -1)
  {
    a5 = strlen(__s);
  }

  return sub_10000BBC4(a1, a2, a3, 8u, __s, a5 + 1);
}

uint64_t *sub_100013520(uint64_t *a1, char a2, uint64_t a3, int a4)
{
  v11 = a2;
  if (!*(*a1 + 488))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = *(a3 + 8);
    }

    if (sub_10000B3E4(a1, v7))
    {
      v8 = *a1;
      sub_10000B360(__p, 1);
      sub_1000136B0(v8, (a1 + 2), __p, a3, a4);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_1000135D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000135F8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002358C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_1000136B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v12 = 0;
  v13 = 0;
  v9 = sub_10000B7A8(a1, a2, a3, &v13, &v12);
  v10 = v9;
  if (v9)
  {
    sub_100013730(v9, a2, a4);
    if (a5)
    {
      sub_10000C1A4(a1, a2, v13, v12);
    }
  }

  return v10;
}

void sub_100013730(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  sub_10000BE58(a2, 64, v5, 5);
  v6 = *(v3 + 23);
  if (v6 < 0)
  {
    v6 = v3[1];
    if (!v6)
    {
      return;
    }

    v7 = *(a2 + 8);
    v3 = *v3;
  }

  else
  {
    if (!*(v3 + 23))
    {
      return;
    }

    v7 = *(a2 + 8);
  }

  sub_1000137C4(a2, v7, v3, v3 + v6, v6);
}

char *sub_1000137C4(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    sub_100016C08();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void sub_1000139F4(const char *a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v13;
    *&v5 = 138412546;
    v11 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v10 = NSStringFromSelector(a1);
            *buf = v11;
            v17 = v10;
            v18 = 2112;
            v19 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Delivering %@ to %@", buf, 0x16u);
          }

          [v9 performSelector:a1 withObject:{0, v11}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v6);
  }
}

uint64_t *sub_100013CD0(uint64_t *a1, char a2, int a3, int a4)
{
  v10 = a2;
  if (!*(*a1 + 488))
  {
    if (sub_10000B3E4(a1, 1uLL))
    {
      v7 = *a1;
      sub_10000B360(__p, 1);
      sub_10000BA24(v7, (a1 + 2), __p, a3, a4);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_100013D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013D90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ - systemDidUnlock and we're connected via noncellular, sending active ping to the server", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412290;
    v12 = v10;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [v3 sendSetActiveState:1 forInterval:600];
}

void sub_100013FD0()
{
  v0 = sub_1000143BC();

  if (v0)
  {

    sub_100014350(&stru_100188D28);
  }
}

uint64_t sub_100014024(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100014034(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100014044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100014054(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100014064(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000140CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt64();
  if (*(a1 + 48))
  {
    CSDBSqliteBindTextFromCFString();
  }

  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        CFArrayGetValueAtIndex(v5, i);
        ID = CSDBRecordGetID();
        v10 = sub_1000B5F8C(kCFAllocatorDefault, ID, 0);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(*(a1 + 56), v10);
          CFRelease(v11);
        }
      }
    }

    CFRelease(v5);
  }
}

void sub_1000141E0(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = sub_1000143BC();

  if (v2)
  {
    sub_1000145A0();
    v3 = sub_1000143BC();
    CSDBPerformLockedSectionForQueryForReading();
  }
}

CFMutableArrayRef sub_100014258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [NSString alloc];
  v7 = @"AND topic = ?";
  if (!a2)
  {
    v7 = &stru_10018F6A0;
  }

  v8 = [v6 initWithFormat:@"%s WHERE environment = ? AND priority = ? %@ ORDER BY ROWID ASC LIMIT 100", "SELECT ROWID, guid, token, topic, environment, correlation_identifier, payload, from_storage, last_from_storage, message_id, priority, date, tracing_enabled, tracing_uuid, push_type, push_flags FROM incoming_message ", v7];
  Default = CFAllocatorGetDefault();
  Mutable = CFArrayCreateMutable(Default, 0, &kCFTypeArrayCallBacks);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000140CC;
  v12[3] = &unk_100186690;
  v12[4] = a3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = Mutable;
  sub_1000141E0(v8, v12);

  return Mutable;
}

void sub_100014350(void *a1)
{
  v3 = a1;
  v1 = sub_1000143BC();

  if (v1)
  {
    v2 = sub_1000143BC();
    CSDBPerformLockedSectionForRecordStoreWithoutInitialize();
  }
}

id sub_1000143BC()
{
  if (qword_1001BF8B8 != -1)
  {
    sub_10010CEFC();
  }

  v1 = qword_1001BF8B0;

  return v1;
}

void sub_100014400(void *a1)
{
  v3 = a1;
  v1 = sub_1000143BC();

  if (v1)
  {
    v2 = sub_1000143BC();
    CSDBPerformBlock();
  }
}

void sub_10001447C()
{
  v0 = sub_1000143BC();
  CSDBThreadedRecordStoreOwnsCurrentThread();

  v1 = sub_1000143BC();

  if (v1)
  {
    v2 = +[APSMultiUserMode sharedInstance];
    [v2 isMultiUser];

    v3 = objc_autoreleasePoolPush();
    v4 = sub_1000143BC();
    CSDBThreadedRecordStoreEnsureDatabaseSetup();

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000145A0()
{
  v0 = sub_1000143BC();

  if (v0)
  {

    sub_10001447C();
  }
}

id sub_100015D6C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (sub_100015EF0(v4))
  {
    v14 = objc_opt_class();
  }

  else
  {
    if (!sub_100016014() || !sub_100015F4C())
    {
      goto LABEL_13;
    }

    v8 = v5;
    v9 = sub_100015F4C();
    if (!v9)
    {
      sub_10010C4EC();
    }

    v10 = v9(v8);

    if ((v10 & 1) == 0)
    {
LABEL_13:
      v6 = [v3 description];
      goto LABEL_14;
    }

    if (objc_opt_respondsToSelector())
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<redacted %@ count:%llu>", objc_opt_class(), [v3 count]);
      goto LABEL_5;
    }

    v12 = objc_opt_respondsToSelector();
    v13 = objc_opt_class();
    if (v12)
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<redacted %@ length:%llu>", v13, [v3 length]);
      goto LABEL_5;
    }

    v14 = v13;
  }

  [NSString stringWithFormat:@"<redacted %@>", v14, v15];
  v6 = LABEL_5:;
LABEL_14:
  v7 = v6;
LABEL_15:

  return v7;
}

BOOL sub_100015EF0(void *a1)
{
  v1 = a1;
  v2 = os_variant_has_internal_content() && ([v1 isEqualToString:@"com.tinyspeck.chatlyio"] & 1) != 0;

  return v2;
}

uint64_t sub_100015F4C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1001BF868;
  v6 = qword_1001BF868;
  if (!qword_1001BF868)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100096E20;
    v2[3] = &unk_100187430;
    v2[4] = &v3;
    sub_100096E20(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100015FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016014()
{
  if (!qword_1001BF860)
  {
    qword_1001BF860 = _sl_dlopen();
  }

  return qword_1001BF860;
}

void sub_1000160E4(void *a1)
{
  v3 = a1;
  v1 = sub_1000143BC();

  if (v1)
  {
    sub_1000145A0();
    v2 = sub_1000143BC();
    CSDBPerformLockedSectionForRecordStore();
  }
}

uint64_t sub_100016154(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001B5EC;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000160E4(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000161F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100016210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, unsigned __int16 a15, unsigned int a16)
{
  pthread_once(&stru_1001BC788, sub_1000B7034);
  Instance = _CFRuntimeCreateInstance();
  v24 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = 0;
    sub_1000145A0();
    v25 = CSDBRecordCreate();
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v36[0] = a2;
      v36[1] = a3;
      v36[2] = a4;
      v36[3] = a5;
      v36[4] = a6;
      v36[5] = a7;
      v36[6] = a8;
      v36[7] = a9;
      v36[8] = a10;
      v36[9] = a11;
      v36[10] = a12;
      v36[11] = a13;
      v36[12] = a14;
      v36[13] = a15;
      v36[14] = a16;
      do
      {
        v28 = v36[v27];
        v29 = dword_1001BF900[v27];
        CSDBRecordSetProperty();
        ++v27;
      }

      while (v27 != 15);
      if (sub_100016154(v26))
      {
        v24[3] = CSDBRecordGetID();
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v24[3];
          v32 = 138412546;
          v33 = v24;
          v34 = 2048;
          v35 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - New message record [%@] has ID [%lld].", &v32, 0x16u);
        }
      }

      else
      {
        CFRelease(v24);
        v24 = 0;
      }

      CFRelease(v26);
    }

    else
    {
      CFRelease(v24);
      return 0;
    }
  }

  return v24;
}

CFStringRef sub_10001640C(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<APSOutgoingMessageRecord %p [%p]>{}", a1, v3);
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

CFStringRef sub_100016478(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<APSIncomingMessageRecord %p [%p]>{}", a1, v3);
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

void sub_1000164E4(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 24) = -1;

  os_unfair_lock_unlock((a1 + 16));
}

void sub_100016528(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 24) = -1;

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t *sub_100016C20(uint64_t *a1, char a2, int a3, int a4)
{
  v10 = a2;
  if (!*(*a1 + 488))
  {
    if (sub_10000B3E4(a1, 4uLL))
    {
      v7 = *a1;
      sub_10000B360(__p, 1);
      sub_10000BA24(v7, (a1 + 2), __p, a3, a4);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_100016CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100017154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001735C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = [*(a1 + 32) stateForProtocolConnection:a2];
  v5 = [v4 userState];

  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void *sub_100017864(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((v2 - 21) > 0xFFFFFFFA)
  {
    if (v2 == 19)
    {
      v7 = 0;
      v8 = 0;
      v10 = *(a1 + 8);
      v9 = *(a1 + 16);
      v11 = *a1;
      *(a1 + 40) = v1 + 1;
      v12 = 56;
      do
      {
        v8 |= v1[v7 + 1] << v12;
        v12 -= 8;
        ++v7;
      }

      while (v7 != 8);
      *(a1 + 40) = v1 + 9;

      return SbfAddInt64(v11, v9, v10, v8);
    }

    else
    {
      if (v2 == 20)
      {
        v5 = 0;
        while (v5 != 8)
        {
          if (v1[++v5])
          {
            v3 = "16 byte integer support limited to range 0..2^64-1";
            goto LABEL_3;
          }
        }

        v24 = 0;
        v13 = 0;
        v25 = v1 + 9;
        *(a1 + 40) = v25;
        v26 = 56;
        do
        {
          v13 |= v25[v24] << v26;
          v26 -= 8;
          ++v24;
        }

        while (v24 != 8);
        v15 = *(a1 + 8);
        v14 = *(a1 + 16);
        v16 = *a1;
      }

      else
      {
        v13 = 0;
        v15 = *(a1 + 8);
        v14 = *(a1 + 16);
        v16 = *a1;
        v17 = v2 & 7;
        v18 = 1 << (v2 & 7);
        v19 = v1 + 1;
        *(a1 + 40) = v19;
        v20 = (8 << v17) - 8;
        v21 = v19;
        v22 = v18;
        do
        {
          v23 = *v21++;
          v13 |= v23 << v20;
          v20 -= 8;
          --v22;
        }

        while (v22);
        *(a1 + 40) = &v19[v18];
      }

      return SbfAddUint64(v16, v14, v15, v13);
    }
  }

  else
  {
    v3 = "integer size must be <= 32 bytes";
LABEL_3:
    SbfImportSetError(a1, 22, 12, v3);
    return 0;
  }
}

void *sub_1000179E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = v2 + 1;
  v3 = *v2 & 0xF;
  if ((*v2 & 0xF) == 0xF)
  {
    v3 = 0;
    v4 = 1 << (v2[1] & 0xF);
    v5 = v2 + 2;
    *(a1 + 40) = v5;
    if (v4 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v4;
    }

    v7 = 8 * v6 - 8;
    v8 = v5;
    do
    {
      v9 = *v8++;
      v3 |= v9 << v7;
      v7 -= 8;
    }

    while (v7 != -8);
    *(a1 + 40) = &v5[v4];
  }

  if (!sub_1000190E0(a1, v3 * *(*(a1 + 80) + 7)))
  {
    return 0;
  }

  v10 = SbfAddArray(*a1, *(a1 + 16), *(a1 + 8));
  if (v10 && v3)
  {
    v11 = 0;
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 80) + 7);
    if (v13 >= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = *(*(a1 + 80) + 7);
    }

    v15 = 8 * v14 - 8;
    while (1)
    {
      v16 = 0;
      if (v13)
      {
        v17 = v15;
        v18 = v12;
        do
        {
          v19 = *v18++;
          v16 |= v19 << v17;
          v17 -= 8;
        }

        while (v17 != -8);
      }

      v20 = sub_100019134(a1, v16);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      *(v20 + 1) = 0;
      *(v20 + 2) = v10;
      v22 = sub_100018CD4(v20);
      free(v21);
      if (!v22)
      {
        return 0;
      }

      v12 += v13;
      if (++v11 == v3)
      {
        return v10;
      }
    }

    SbfImportSetError(a1, 12, 1, "no memory for new context");
    return 0;
  }

  return v10;
}

uint64_t *sub_100017B6C(uint64_t *a1, char a2, const UInt8 *a3, CFIndex __val)
{
  v19 = a2;
  if (!*(*a1 + 488) && sub_10000B3E4(a1, __val))
  {
    v7 = sub_100019910(&v18, a3, __val);
    v17 = 0;
    if (sub_100019940(v7, &v17))
    {
      v8 = CFGetTypeID(v17);
      TypeID = CFDictionaryGetTypeID();
      v10 = *a1;
      if (v8 == TypeID)
      {
        sub_10000B360(v14, 1);
        sub_100017D4C(v10, (a1 + 2), v14, v17, 0, 0);
        v11 = v14[0];
        if (v14[0])
        {
          v14[1] = v14[0];
LABEL_11:
          operator delete(v11);
        }
      }

      else
      {
        sub_1000135F8(&__p, "bplist is not a dictionary");
        sub_10002F1A4(v10, 2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v11 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_11;
        }
      }
    }

    else
    {
      v12 = *a1;
      sub_1000135F8(&__str, "invalid bplist");
      sub_10002F1A4(v12, 2, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v11 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_11;
      }
    }

    sub_100017D14(&v17);
    sub_100017D14(&v18);
  }

  return a1;
}

void sub_100017CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100017D14((v23 - 56));
  sub_100017D14((v23 - 48));
  _Unwind_Resume(a1);
}

const void **sub_100017D14(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100017D4C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5, int a6)
{
  v14 = 0;
  v15 = 0;
  if (!sub_10000B7A8(a1, a2, a3, &v15, &v14))
  {
    return 0;
  }

  v13 = 0;
  v11 = sub_100019A48(a1, a2, a4, a5, &v13);
  if (v11 && (v13 & 1) != 0 && a6)
  {
    sub_10000C1A4(a1, a2, v15, v14);
  }

  return v11;
}

void sub_100017DF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100023634();
}

void sub_100017E3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100017DF4(a1, a2);
  }

  sub_100016C08();
}

id sub_100017E88(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableSet);
  v3 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v1 allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) topicName];
        [v2 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);

  return v2;
}

id sub_100018690(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEager];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t SbfImportPlistb(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v6 = a2;
  if (!a2)
  {
    v6 = SbfRoot(a1);
    a3 = 0;
  }

  SbfClearImportContext(a1);
  memset(v22, 0, sizeof(v22));
  v13 = a1;
  v14 = a3;
  v15 = v6;
  v16 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = v22;
  v21 = 0;
  if (a4[2])
  {
    v8 = "importer does not support fill";
    v9 = 78;
LABEL_11:
    SbfImportSetError(&v13, v9, 1, v8);
LABEL_12:
    SbfSetImportContext(a1, v15, v14, 0, 0);
    return 0;
  }

  if (!*a4 || !a4[1])
  {
    v8 = "no input data given";
    v9 = 79;
    goto LABEL_11;
  }

  SbfImportInit(&v13);
  if (!sub_100018A28(&v13))
  {
    goto LABEL_12;
  }

  sub_100018D58(&v13, *(v20 + 2));
  v10 = sub_100018CD4(&v13);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  SbfClearImportContext(a1);
  *(a1 + 78) = 4;
  return v11;
}

void *SbfImportInit(void *result)
{
  if (!result)
  {
    sub_1000FB108();
  }

  v2 = result[3];
  v4 = *v2;
  v3 = v2[1];
  result[4] = *v2;
  result[5] = v4;
  result[6] = v4 + v3;
  result[7] = v3;
  if (v2[2])
  {

    return SbfImportFillBuffer(result);
  }

  else
  {
    result[9] = v3;
  }

  return result;
}

uint64_t sub_100018A28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48) - v2;
  if (v3 > 0x28)
  {
    if (*v2 == 0x30307473696C7062)
    {
      v5 = 0;
      v6 = 0;
      v7 = *(a1 + 80);
      v8 = *(a1 + 48);
      v9 = *(v8 - 16);
      *v7 = *(v8 - 32);
      *(v7 + 16) = v9;
      *__str = *(v7 + 8);
      v10 = 56;
      do
      {
        v6 |= __str[v5] << v10;
        v10 -= 8;
        ++v5;
      }

      while (v5 != 8);
      v11 = 0;
      v12 = 0;
      *(v7 + 8) = v6;
      *__str = *(v7 + 16);
      v13 = 56;
      do
      {
        v12 |= __str[v11] << v13;
        v13 -= 8;
        ++v11;
      }

      while (v11 != 8);
      v14 = 0;
      v15 = 0;
      *(v7 + 16) = v12;
      *__str = *(v7 + 24);
      v16 = 56;
      do
      {
        v15 |= __str[v14] << v16;
        v16 -= 8;
        ++v14;
      }

      while (v14 != 8);
      *(v7 + 24) = v15;
      v17 = *(a1 + 80);
      v18 = *(v17 + 24);
      if (v18 > 7)
      {
        v19 = v3 - 32;
        v20 = v19 - v18;
        if (v19 >= v18)
        {
          v21 = *(v17 + 7);
          v22 = v21 > 8;
          v23 = (1 << v21) & 0x116;
          if (v22 || v23 == 0)
          {
            v4 = "object reference size isn't {1,2,4,8}";
          }

          else
          {
            v25 = *(v17 + 6);
            if (v25 > 8 || ((1 << v25) & 0x116) == 0)
            {
              v4 = "offset size isn't {1,2,4,8}";
            }

            else
            {
              v27 = v20 / v25;
              v28 = *(v17 + 8);
              if (v28 <= v27)
              {
                v29 = *(v17 + 16);
                if (v29 >= v28)
                {
                  v4 = "top object >= number of objects";
                }

                else
                {
                  v30 = *(a1 + 32) + v29 * v25;
                  result = 1;
                  while (1)
                  {
                    v32 = 0;
                    v33 = 8 * v25 - 8;
                    v34 = v30;
                    do
                    {
                      v32 |= *(v34 + v18) << v33;
                      ++v34;
                      v33 -= 8;
                    }

                    while (v33 != -8);
                    if (v32 <= 7)
                    {
                      snprintf(__str, 0x100uLL, "Marker %zu's offset (%zu) is before the marker data set");
                      goto LABEL_38;
                    }

                    if (v32 >= v18)
                    {
                      break;
                    }

                    ++v29;
                    v30 += v25;
                    if (v29 == v28)
                    {
                      return result;
                    }
                  }

                  snprintf(__str, 0x100uLL, "Marker %zu's offset (%zu) extends through offset table");
LABEL_38:
                  v4 = __str;
                }
              }

              else
              {
                v4 = "#objects > #entries in offset table";
              }
            }
          }
        }

        else
        {
          v4 = "offset table extends past data set";
        }
      }

      else
      {
        v4 = "offset table starts inside of header";
      }
    }

    else
    {
      v4 = "data set does not start with bplist00";
    }
  }

  else
  {
    v4 = "data is smaller than absolute minimum size";
  }

  SbfImportSetError(a1, 79, 1, v4);
  return 0;
}

uint64_t sub_100018CD4(uint64_t a1)
{
  v2 = *(a1 + 88) + 1;
  *(a1 + 88) = v2;
  if (v2 < 0x41)
  {
    result = (*(off_10018B2D0 + ((**(a1 + 40) >> 1) & 0x78)))(a1);
    --*(a1 + 88);
  }

  else
  {
    SbfImportSetError(a1, 62, 1, "nesting of arrays/dictionaries too deep");
    return 0;
  }

  return result;
}

uint64_t sub_100018D58(void *a1, unint64_t a2)
{
  v2 = a1[10];
  if (*(v2 + 8) <= a2)
  {
    return 0;
  }

  v3 = *(v2 + 6);
  v4 = a1[4];
  v5 = *(v2 + 24);
  v6 = 0;
  if (v3)
  {
    v7 = (v4 + v5 + v3 * a2);
    if (v3 >= 8)
    {
      LODWORD(v3) = 8;
    }

    v8 = 8 * v3 - 8;
    do
    {
      v9 = *v7++;
      v6 |= v9 << v8;
      v8 -= 8;
    }

    while (v8 != -8);
  }

  if (v6 >= v5)
  {
    return 0;
  }

  a1[5] = v4 + v6;
  return 1;
}

void *sub_100018DD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = v2 + 1;
  v3 = *v2 & 0xF;
  if ((*v2 & 0xF) == 0xF)
  {
    v3 = 0;
    v4 = 1 << (v2[1] & 0xF);
    v5 = v2 + 2;
    *(a1 + 40) = v5;
    if (v4 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v4;
    }

    v7 = 8 * v6 - 8;
    v8 = v5;
    do
    {
      v9 = *v8++;
      v3 |= v9 << v7;
      v7 -= 8;
    }

    while (v7 != -8);
    *(a1 + 40) = &v5[v4];
  }

  if (!sub_1000190E0(a1, 2 * v3 * *(*(a1 + 80) + 7)))
  {
    return 0;
  }

  v10 = *(*(a1 + 80) + 7);
  v11 = *(a1 + 40);
  v12 = SbfAddObject(*a1, *(a1 + 16), *(a1 + 8));
  if (v3)
  {
    v13 = 0;
    v14 = &v11[v3 * v10];
    if (v10 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v10;
    }

    v41 = 8 * v15 - 8;
    while (1)
    {
      v16 = *(*(a1 + 80) + 7);
      if (*(*(a1 + 80) + 7))
      {
        v17 = 0;
        if (v16 >= 8)
        {
          v16 = 8;
        }

        v18 = 8 * v16 - 8;
        v19 = v11;
        do
        {
          v20 = *v19++;
          v17 |= v20 << v18;
          v18 -= 8;
        }

        while (v18 != -8);
      }

      else
      {
        v17 = 0;
      }

      v21 = sub_100019134(a1, v17);
      v22 = v21;
      if (!v21)
      {
        break;
      }

      v23 = v21[5];
      if ((*v23 & 0xF0) != 0x50)
      {
        break;
      }

      v21[5] = v23 + 1;
      v24 = *v23 & 0xF;
      if ((*v23 & 0xF) == 0xF)
      {
        v24 = 0;
        v25 = 1 << (v23[1] & 0xF);
        v26 = v23 + 2;
        v21[5] = v26;
        if (v25 >= 8)
        {
          v27 = 8;
        }

        else
        {
          v27 = v25;
        }

        v28 = 8 * v27 - 8;
        v29 = v26;
        do
        {
          v30 = *v29++;
          v24 |= v30 << v28;
          v28 -= 8;
        }

        while (v28 != -8);
        v21[5] = &v26[v25];
      }

      if (!sub_1000190E0(a1, v24))
      {
        goto LABEL_38;
      }

      v31 = v22[5];
      free(v22);
      v32 = malloc_type_malloc(v24 + 1, 0x787E98F4uLL);
      v33 = v32;
      if (v32)
      {
        memcpy(v32, v31, v24);
        v33[v24] = 0;
      }

      if (!v10)
      {
LABEL_39:
        v35 = 0;
        goto LABEL_40;
      }

LABEL_34:
      v34 = 0;
      v35 = 0;
      v36 = v41;
      do
      {
        v35 |= v14[v34++] << v36;
        v36 -= 8;
      }

      while (v36 != -8);
LABEL_40:
      v37 = sub_100019134(a1, v35);
      v38 = v37;
      if (!v33 || !v37)
      {
        free(v33);
        free(v38);
        SbfImportSetError(a1, 12, 1, "no memory for new context");
        return 0;
      }

      *(v37 + 1) = v33;
      *(v37 + 2) = v12;
      v39 = sub_100018CD4(v37);
      free(v38);
      free(v33);
      if (!v39)
      {
        return 0;
      }

      v11 += v10;
      v14 += v10;
      if (++v13 == v3)
      {
        return v12;
      }
    }

    SbfImportSetError(a1, 22, 1, "expected string");
LABEL_38:
    free(v22);
    v33 = 0;
    if (!v10)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  return v12;
}

BOOL sub_1000190E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40) + a2 - *(a1 + 32);
  v3 = *(*(a1 + 80) + 24);
  if (v2 > v3)
  {
    SbfImportSetError(a1, 7, 1, "marker extends into trailer");
  }

  return v2 <= v3;
}

void *sub_100019134(unsigned int *a1, unint64_t a2)
{
  v4 = malloc_type_malloc(0x60uLL, 0x10F20404C1909FDuLL);
  v5 = v4;
  if (!v4)
  {
    v12 = *__error();
    v10 = "can't allocate new context memory";
    v11 = a1;
    goto LABEL_5;
  }

  v6 = *(a1 + 1);
  *v4 = *a1;
  v4[1] = v6;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 5);
  v4[4] = *(a1 + 4);
  v4[5] = v9;
  v4[2] = v7;
  v4[3] = v8;
  if ((sub_100018D58(v4, a2) & 1) == 0)
  {
    v10 = "marker > number of objects";
    v11 = a1;
    v12 = 7;
LABEL_5:
    SbfImportSetError(v11, v12, 1, v10);
    free(v5);
    return 0;
  }

  return v5;
}

void *sub_1000191E8(size_t *a1)
{
  v2 = a1[5];
  a1[5] = (v2 + 1);
  v3 = *v2 & 0xF;
  if ((*v2 & 0xF) == 0xF)
  {
    v3 = 0;
    v4 = 1 << (v2[1] & 0xF);
    v5 = v2 + 2;
    a1[5] = v5;
    if (v4 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v4;
    }

    v7 = 8 * v6 - 8;
    v8 = v5;
    do
    {
      v9 = *v8++;
      v3 |= v9 << v7;
      v7 -= 8;
    }

    while (v7 != -8);
    a1[5] = &v5[v4];
  }

  if (!sub_1000190E0(a1, v3))
  {
    return 0;
  }

  v11 = a1[1];
  v10 = a1[2];
  v12 = *a1;
  v13 = a1[5];

  return SbfAddBlob(v12, v10, v11, v13, v3);
}

uint64_t sub_1000192B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    result = (*(*(a1 + 80) + 56))(*(a1 + 88), a3, 0, "", 0);
    if (!result)
    {
      return result;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 96) = 0;
  v11 = (a1 + 96);
  *(a1 + 4192) = a1 + 96;
LABEL_4:
  v12 = v7;
  v13 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
LABEL_5:
  v9 = v14;
  while (1)
  {
    v10 = v15;
    if (!(*(a1 + 72) - &v13[*(a1 + 64)] + *(a1 + 32)))
    {
      if (!SbfImportFillBuffer(a1))
      {
        if (v8 != 5)
        {
          goto LABEL_98;
        }

        goto LABEL_95;
      }

      v13 = *(a1 + 40);
    }

    v16 = *v13;
    if (v8 == 5 || !*v13)
    {
      break;
    }

    *(a1 + 40) = ++v13;
    if (v8)
    {
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          if (v16 != byte_10015E110[v10])
          {
            goto LABEL_105;
          }

          if (v10 == 1)
          {
            v8 = 4;
          }

          else
          {
            v8 = 3;
          }

          if (v10 == 1)
          {
            v9 = 0;
          }

          else
          {
            v9 = v14;
          }

          if (v10 == 1)
          {
            v10 = 0;
          }

          else
          {
            ++v10;
          }

          v7 = v12;
        }

        else
        {
          v22 = v16 - 65;
          if ((v16 - 48) >= 0xA)
          {
            v23 = 255;
          }

          else
          {
            v23 = v16 - 48;
          }

          if ((v16 - 97) <= 5)
          {
            v24 = v16 - 87;
          }

          else
          {
            v24 = v23;
          }

          v25 = v16 - 55;
          if (v22 > 5)
          {
            v25 = v24;
          }

          if ((v25 & 0xFFF0) != 0)
          {
            goto LABEL_105;
          }

          v26 = v25 | (16 * v14);
          v14 = v26;
          v15 = v10 + 1;
          if (v10 + 1 < 4)
          {
            goto LABEL_5;
          }

          if ((v9 & 0xFC0) != 0xDC0)
          {
            goto LABEL_105;
          }

          v27 = (v26 & 0x3FF | ((v12 & 0x3FF) << 10)) + 0x10000;
LABEL_89:
          sub_1000ED200(a1, a2, v27);
          v8 = 0;
          v10 = 0;
          v7 = v12;
          v9 = v14;
        }
      }

      else
      {
        if (v8 == 1)
        {
          if (v16 > 101)
          {
            if (v16 <= 113)
            {
              if (v16 == 102)
              {
                v28 = a1;
                v29 = a2;
                v30 = "\f";
              }

              else
              {
                if (v16 != 110)
                {
                  goto LABEL_90;
                }

                v28 = a1;
                v29 = a2;
                v30 = "\n";
              }
            }

            else if (v16 == 114)
            {
              v28 = a1;
              v29 = a2;
              v30 = "\r";
            }

            else
            {
              if (v16 != 116)
              {
                v9 = 0;
                v10 = 0;
                v8 = 2;
                v7 = v12;
                if (v16 == 117)
                {
                  goto LABEL_4;
                }

LABEL_90:
                (*(*(a1 + 80) + 88))(*(a1 + 88), 8, a1, a3);
                return 0;
              }

              v28 = a1;
              v29 = a2;
              v30 = "\t";
            }
          }

          else if (v16 <= 46)
          {
            if (v16 == 34)
            {
              v28 = a1;
              v29 = a2;
              v30 = "";
            }

            else
            {
              if (v16 != 39)
              {
                goto LABEL_90;
              }

              v28 = a1;
              v29 = a2;
              v30 = "'";
            }
          }

          else
          {
            switch(v16)
            {
              case '/':
                v28 = a1;
                v29 = a2;
                v30 = "/";
                break;
              case '\\':
                v28 = a1;
                v29 = a2;
                v30 = "\";
                break;
              case 'b':
                v28 = a1;
                v29 = a2;
                v30 = "\b";
                break;
              default:
                goto LABEL_90;
            }
          }

          sub_1000ED148(v28, v29, v30, 1uLL);
          goto LABEL_85;
        }

        v17 = v16 - 65;
        v18 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          v18 = 255;
        }

        if ((v16 - 97) <= 5)
        {
          v19 = v16 - 87;
        }

        else
        {
          v19 = v18;
        }

        v20 = v16 - 55;
        if (v17 > 5)
        {
          v20 = v19;
        }

        if ((v20 & 0xFFF0) != 0)
        {
LABEL_105:
          (*(*(a1 + 80) + 88))(*(a1 + 88), 6, a1, a3);
          return 0;
        }

        v21 = v20 | (16 * v14);
        v14 = v21;
        v15 = v10 + 1;
        if (v10 + 1 < 4)
        {
          goto LABEL_5;
        }

        v10 = 0;
        v32 = (16 * v9) & 0xFC00;
        v8 = 3;
        v7 = v21;
        v9 = v21;
        if (v32 != 55296)
        {
          if (v32 == 56320)
          {
            goto LABEL_105;
          }

          v27 = v21;
          goto LABEL_89;
        }
      }

      goto LABEL_4;
    }

    if (v16 == 34)
    {
      v15 = 0;
      v8 = 5;
      if (v10)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (v16 <= 0x1F)
      {
        goto LABEL_90;
      }

      if (v16 != 92)
      {
        __src[v10++] = v16;
        v34 = 0;
        v31 = sub_1000EBD4C(__src, v10, &v34);
        if (v31)
        {
          if (v31 != 2 || v10 == 4)
          {
            goto LABEL_90;
          }
        }

        else
        {
          if (v34 != v10)
          {
            goto LABEL_90;
          }

          sub_1000ED148(a1, a2, __src, v10);
          v10 = 0;
        }

LABEL_85:
        v8 = 0;
        v7 = v12;
        goto LABEL_4;
      }

      v15 = 0;
      v8 = 1;
      if (v10)
      {
        goto LABEL_90;
      }
    }
  }

  if (v8 == 5)
  {
LABEL_95:
    v33 = *(a1 + 4192);
    if (v11 == v33)
    {
      if (a2)
      {
        (*(*(a1 + 80) + 56))(*(a1 + 88), 0, 2, 0, 0);
      }
    }

    else if (a2)
    {
      (*(*(a1 + 80) + 56))(*(a1 + 88), 0, 2, a1 + 96, v33 - v11);
    }

    else
    {
      *v33 = 0;
    }

    return 1;
  }

  if (!*v13)
  {
LABEL_98:
    (*(*(a1 + 80) + 88))(*(a1 + 88), 2, a1, a3);
  }

  return 0;
}

void *sub_100019790(size_t *a1)
{
  v2 = a1[5];
  a1[5] = (v2 + 1);
  v3 = *v2 & 0xF;
  if ((*v2 & 0xF) == 0xF)
  {
    v3 = 0;
    v4 = 1 << (v2[1] & 0xF);
    v5 = v2 + 2;
    a1[5] = v5;
    if (v4 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v4;
    }

    v7 = 8 * v6 - 8;
    v8 = v5;
    do
    {
      v9 = *v8++;
      v3 |= v9 << v7;
      v7 -= 8;
    }

    while (v7 != -8);
    a1[5] = &v5[v4];
  }

  if (!sub_1000190E0(a1, v3))
  {
    return 0;
  }

  v11 = a1[1];
  v10 = a1[2];
  v12 = *a1;
  v13 = a1[5];

  return SbfAddString(v12, v10, v11, v13, v3);
}

void *sub_100019860(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = v2 + 1;
  v3 = *v2;
  if (v3 == 9)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    v10 = *a1;
    v11 = 1;

    return SbfAddBoolean(v10, v8, v9, v11);
  }

  if (v3 == 8)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    v10 = *a1;
    v11 = 0;

    return SbfAddBoolean(v10, v8, v9, v11);
  }

  if (*v2)
  {
    *(a1 + 40) = v2;
    SbfImportSetError(a1, 22, 12, "unsupported marker type");
    return 0;
  }

  else
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *a1;

    return SbfAddNull(v6, v4, v5);
  }
}

uint64_t sub_100019940(uint64_t *a1, CFTypeRef *a2)
{
  result = *a1;
  if (result)
  {
    v5 = CFGetTypeID(result);
    if (v5 == CFDataGetTypeID() && (v6 = *a1, CFDataGetLength(v6) >= 8) && *CFDataGetBytePtr(v6) == 0x30307473696C7062)
    {
      result = CFPropertyListCreateWithData(0, v6, 0, 0, 0);
      if (result)
      {
        v7 = result;
        v9 = result;
        CFRetain(result);
        if (&v9 != a2)
        {
          v8 = v7;
          if (*a2)
          {
            CFRelease(*a2);
            v8 = v9;
          }

          *a2 = v8;
          v9 = 0;
        }

        sub_100017D14(&v9);
        CFRelease(v7);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100019A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100019A48(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4, _BYTE *a5)
{
  if (!cf)
  {
    sub_1000135F8(&__p, "value is null");
    sub_10002F1A4(a1, 6, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = __p.__r_.__value_.__r.__words[0];
LABEL_8:
    operator delete(v12);
    return 0;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFDataGetTypeID())
  {
    *a5 = 1;

    return sub_10001A6E8(a1, a2, cf);
  }

  if (v10 == CFStringGetTypeID())
  {
    *a5 = 1;

    return sub_10001A7A8(a1, a2, cf);
  }

  if (v10 == CFNumberGetTypeID())
  {
    *a5 = 1;

    return sub_10001A8D8(a1, a2, cf);
  }

  if (v10 == CFBooleanGetTypeID())
  {
    v13 = 1;
    *a5 = 1;
    if (CFBooleanGetValue(cf))
    {
      v14 = -31;
    }

    else
    {
      v14 = -32;
    }

    v17.__r_.__value_.__s.__data_[0] = v14;
    sub_10000B6B8(a2, &v17);
    return v13;
  }

  if (v10 == CFArrayGetTypeID())
  {
    *a5 = 0;

    return sub_10001AA10(a1, a2, cf, a4);
  }

  if (v10 != CFDictionaryGetTypeID())
  {
    std::to_string(&v17, v10);
    v15 = std::string::insert(&v17, 0, "CoreFoundation value with unsupported type ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_10002F1A4(a1, 2, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = v17.__r_.__value_.__r.__words[0];
    goto LABEL_8;
  }

  *a5 = 0;

  return sub_100019D2C(a1, a2, cf, a4);
}

void sub_100019CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100019D2C(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, int a4)
{
  if (a4 >= 5)
  {
    sub_1000135F8(&__str, "dictionary is too deep");
    sub_10002F1A4(a1, 3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = __str.__r_.__value_.__r.__words[0];
LABEL_7:
      operator delete(v5);
      return 0;
    }

    return 0;
  }

  Count = CFDictionaryGetCount(theDict);
  if (Count >= 0x401)
  {
    sub_1000135F8(&v34, "dictionary is too large");
    sub_10002F1A4(a1, 2, &v34);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v34.__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

    return 0;
  }

  v12 = Count;
  sub_10000BE58(a2, 192, Count, 4);
  values[0] = 0;
  sub_10001A0F0(keys, v12);
  v28 = 0;
  sub_10001A0F0(values, v12);
  CFDictionaryGetKeysAndValues(theDict, keys[0], values[0]);
  if (v12)
  {
    v13 = 0;
    v10 = 0;
    while (1)
    {
      v14 = CFGetTypeID(keys[0][v13]);
      if (v14 != CFStringGetTypeID())
      {
        sub_1000135F8(&v31, "dictionary has non-string key");
        sub_10002F1A4(a1, 2, &v31);
        if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        v23 = v31.__r_.__value_.__r.__words[0];
        goto LABEL_40;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v15 = keys[0][v13];
      __p = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      if (!sub_10001A1C8(&__p, &v28))
      {
        break;
      }

      v16 = HIBYTE(v30);
      if (v30 < 0)
      {
        v16 = v29;
      }

      v17 = v16 - 1;
      sub_100017D14(&__p);
      if (v17 >= 0x40)
      {
        goto LABEL_36;
      }

      __p = 0;
      v25 = 0;
      v26 = 0;
      if (v30 >= 0)
      {
        v18 = &v28;
      }

      else
      {
        v18 = v28;
      }

      if (v30 >= 0)
      {
        v19 = HIBYTE(v30);
      }

      else
      {
        v19 = v29;
      }

      sub_1000137C4(&__p, 0, v18, &v18[v19], v19);
      v20 = values[0][v13];
      v21 = sub_10001A2AC(&xmmword_1001C0408, &v28) != 0;
      v22 = sub_100017D4C(a1, a2, &__p, v20, (a4 + 1), v21);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v28);
      }

      if (v22)
      {
        v10 = v12 <= ++v13;
        if (v12 != v13)
        {
          continue;
        }
      }

      goto LABEL_41;
    }

    sub_100017D14(&__p);
LABEL_36:
    sub_1000135F8(&v27, "dictionary has invalid key");
    sub_10002F1A4(a1, 2, &v27);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30) < 0)
    {
      v23 = v28;
LABEL_40:
      operator delete(v23);
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_41:
  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  return v10;
}

void sub_10001A01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10001A0F0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100017E3C(result, a2);
  }

  return result;
}

void sub_10001A1AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10001A1C8(CFStringRef *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    return 0;
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  v6 = *a1;
  Length = CFStringGetLength(*a1);
  if (Length > 0x4000)
  {
    return 0;
  }

  v10 = Length;
  usedBufLen = 0;
  std::string::resize(a2, 4 * Length, 0);
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v16.location = 0;
  v16.length = v10;
  v14 = CFStringGetBytes(v6, v16, 0x8000100u, 0, 0, v12, v13, &usedBufLen) == v10;
  v8 = v14;
  if (v14)
  {
    std::string::resize(a2, usedBufLen, 0);
  }

  return v8;
}

const void **sub_10001A2AC(void *a1, const void **a2)
{
  v4 = sub_10001A5B0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_10001A998(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t sub_10001A3A8(uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return sub_10002C56C(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_10002C4C0(a2, a3);
  }

  else
  {
    return sub_10001A5F0(a2, a3);
  }
}

unint64_t sub_10001A5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_10001A3A8(&v5, a2, v3);
}

unint64_t sub_10001A5F0(_DWORD *a1, unint64_t a2)
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

uint64_t sub_10001A6E8(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  if (Length < 0 || !BytePtr && Length)
  {
    sub_1000135F8(&__p, "invalid CFData value");
    sub_10002F1A4(a1, 2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    sub_10000BF00(BytePtr, a2, BytePtr, Length);
    return 1;
  }
}

void sub_10001A78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001A7A8(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (sub_10001A1C8(&v11, &v12))
  {
    if (v14 >= 0)
    {
      v5 = HIBYTE(v14);
    }

    else
    {
      v5 = v13;
    }

    v6 = *(a1 + 480);
    v7 = sub_100017D14(&v11);
    if (v5 <= v6)
    {
      sub_100013730(v7, a2, &v12);
      v8 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_100017D14(&v11);
  }

  sub_1000135F8(&__p, "invalid CFString value");
  sub_10002F1A4(a1, 2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = 0;
LABEL_13:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  return v8;
}

void sub_10001A890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001A8D8(uint64_t a1, uint64_t a2, CFNumberRef number)
{
  valuePtr = 0;
  if (CFNumberIsFloatType(number) || (Value = CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr), !Value))
  {
    sub_1000135F8(&__p, "invalid number");
    sub_10002F1A4(a1, 2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    sub_10000BAA4(Value, a2, valuePtr);
    return 1;
  }
}

void sub_10001A97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10001A998(uint64_t a1, const void **a2, const void **a3)
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

uint64_t sub_10001AA10(uint64_t a1, uint64_t a2, CFArrayRef theArray, int a4)
{
  if (a4 >= 5)
  {
    sub_1000135F8(&__str, "array is too deep");
    sub_10002F1A4(a1, 3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      p_str = &__str;
LABEL_7:
      operator delete(p_str->__r_.__value_.__l.__data_);
      return 0;
    }

    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 0x401)
  {
    sub_1000135F8(&v15, "array is too large");
    sub_10002F1A4(a1, 2, &v15);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      p_str = &v15;
      goto LABEL_7;
    }

    return 0;
  }

  v10 = Count;
  sub_10000BE58(a2, 208, Count, 4);
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v12 = v10 - 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    result = sub_100019A48(a1, a2, ValueAtIndex);
    if (!result)
    {
      break;
    }
  }

  while (v12 != v11++);
  return result;
}

void sub_10001AB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SbfDepth(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000F7FA0();
  }

  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 16);
  do
  {
    if (a2 == v4)
    {
      break;
    }

    ++result;
    v5 = *(a2 + 8) << 38;
    a2 -= 32 * (v5 >> 38);
  }

  while (v5);
  return result;
}

uint64_t SbfNamePtr(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000F7E14();
  }

  if ((*(a2 + 15) & 0x10) != 0)
  {
    return a2 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_10001ABEC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 sent] & 1) == 0 && (objc_msgSend(v7, "hasTimedOut") & 1) == 0)
  {
    [*(a1 + 32) setCurrentItem:v7];
    v8 = [v7 sendBlock];
    v13 = 0;
    v9 = (v8)[2](v8, &v13);
    v10 = v13;
    [*(a1 + 32) setCurrentItem:0];
    if (v10)
    {
      [*(a1 + 40) addIndex:a3];
      v11 = [v7 completionBlock];
      v12 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11, 0, v10);
      }
    }

    if (v9)
    {
      [v7 setSent:1];
      [v7 setSendInterface:v9];
    }

    else
    {
      *a4 = 1;
    }
  }
}

uint64_t sub_10001B334(uint64_t a1)
{
  if (a1)
  {
    return 2 * (a1 == 1);
  }

  else
  {
    return 1;
  }
}

__CFString *sub_10001B39C()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

__CFString *sub_10001B3FC(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"UnknownConnectionType %ld", a1];
  }

  else
  {
    v2 = off_1001864F8[a1];
  }

  return v2;
}

uint64_t sub_10001B5EC(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_10001B634(const __CFString *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APSIncomingMessageRecordDeleteMessageForGUID %@", buf, 0xCu);
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 3221225472;
      v2[2] = sub_10001B73C;
      v2[3] = &unk_1001866F8;
      v2[4] = a1;
      sub_1000141E0(@"SELECT ROWID, guid, token, topic, environment, correlation_identifier, payload, from_storage, last_from_storage, message_id, priority, date, tracing_enabled, tracing_uuid, push_type, push_flags FROM incoming_message WHERE guid = ? ORDER BY ROWID ASC", v2);
    }
  }
}

uint64_t sub_10001B73C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v4 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      CFArrayGetValueAtIndex(v4, i);
      CSDBRecordStoreRemoveRecord();
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CSDBRecordSaveStore();

  return _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

void sub_10001BC30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (*(a1 + 64))
    {
      v6 = [NSNumber numberWithUnsignedLongLong:?];
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 32) clientIdentityProvider];
    v8 = *(a1 + 40);
    v16 = 0;
    v17 = 0;
    v9 = [v7 generateNonceAndSignatureWithPublicKey:0 privateKey:a2 dataToSign:v8 time:v6 useIDSNonceVersion:1 nonceOut:&v17 signatureOut:&v16];
    v10 = v17;
    v11 = v16;

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCSignDataWithIdentityEvent obtained cert/nonce/sig", buf, 2u);
      }

      v12 = *(a1 + 48);
      APSInsertNSArraysToXPCDictionary();
      v13 = *(a1 + 48);
      APSInsertDatasToXPCDictionary();
      v14 = *(a1 + 48);
      APSInsertDatasToXPCDictionary();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCSignDataWithIdentityEvent failed to obtain private key, can't sign data", buf, 2u);
  }

  xpc_connection_send_message(*(a1 + 56), *(a1 + 48));
}

BOOL sub_10001BDD8(__SecKey *a1, __SecKey *a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = a3;
  v16 = a4;
  if (a2)
  {
    v17 = +[NSDate date];
    [v17 timeIntervalSince1970];
    v19 = v18;

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Generating nonce with time override.", buf, 2u);
      }

      v20 = [v16 unsignedLongLongValue];
    }

    else
    {
      v20 = 1000 * v19;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v43 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Generating nonce with timestamp %llu", buf, 0xCu);
    }

    v44 = a5;
    v45 = bswap64(v20);
    arc4random_buf(&v46, 8uLL);
    v22 = [NSData dataWithBytes:&v44 length:17];
    v23 = objc_alloc_init(NSMutableData);
    v24 = v23;
    if (v22 && a5)
    {
      [v23 appendData:v22];
    }

    if (v15)
    {
      [v24 appendData:v15];
    }

    if (v22 && (a5 & 1) == 0)
    {
      [v24 appendData:v22];
    }

    v25 = +[APSLog nonce];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 length];
      *buf = 67109378;
      *v43 = v26;
      *&v43[4] = 2112;
      *&v43[6] = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Signature input is %d bytes (%@)", buf, 0x12u);
    }

    if (a6)
    {
      if (a6 != 1)
      {
        v29 = 0;
LABEL_26:
        error = 0;
        v30 = SecKeyCreateSignature(a2, v29, v24, &error);
        if (v30)
        {
          if (a1)
          {
            v31 = SecKeyVerifySignature(a1, v29, v24, v30, &error);
            v32 = +[APSLog nonce];
            v33 = v32;
            if (!v31)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                sub_10010C0B4(v22, &error, v33);
              }

              v35 = 0;
              goto LABEL_41;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v43 = v22;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Succeeded verifying signature for: %@", buf, 0xCu);
            }
          }

          v34 = [NSMutableData dataWithBytes:v41 length:2];
          [v34 appendData:v30];
          v35 = [v34 copy];
        }

        else
        {
          v34 = +[APSLog nonce];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v43 = v22;
            *&v43[8] = 2112;
            *&v43[10] = error;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed signing nonce: %@   with error: %@", buf, 0x16u);
          }

          v35 = 0;
        }

        v36 = v22;
        *v39 = v22;
        v37 = v35;
        *a8 = v35;
        if ([v37 length])
        {
          v21 = [v22 length] != 0;
LABEL_42:

          goto LABEL_43;
        }

LABEL_41:
        v21 = 0;
        goto LABEL_42;
      }

      v27 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
      v28 = 3;
    }

    else
    {
      v27 = &kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1;
      v28 = 1;
    }

    v41[0] = 1;
    v41[1] = v28;
    v29 = *v27;
    goto LABEL_26;
  }

  v21 = 0;
LABEL_43:

  return v21;
}

uint64_t sub_10001C3FC(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_10001C47C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C4D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C53C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001C54C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10001C584@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001C5B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C5EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C624()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C690()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C6C8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C708()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C740()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C778()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C894(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001CD3C(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PSChannelUpdate);
    [a1 addChannelUpdates:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !sub_1000545EC(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_10001D918(void *a1)
{
  v2 = *(a1[4] + 8);
  if (!v2)
  {
    v3 = [objc_alloc(CUTWeakLinkClass()) initWithQueue:*(a1[4] + 16)];
    v4 = a1[4];
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10010811C();
    }

    v2 = *(a1[4] + 8);
  }

  v6 = [v2 signatureWithDomain:@"ApplePushService" type:a1[5] subType:a1[6] detectedProcess:@"apsd" triggerThresholdValues:0];
  v7 = [*(a1[4] + 8) snapshotWithSignature:v6 duration:0 event:0 payload:&stru_100186308 reply:0.0];
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v8)
    {
      sub_1001081A4();
    }
  }

  else if (v8)
  {
    sub_100108160();
  }
}

void sub_10001DA18(id a1, NSDictionary *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1001081E8();
  }
}

void sub_10001DAC8(uint64_t a1)
{
  if (qword_1001BF600 != -1)
  {
    sub_100108264();
  }

  if (qword_1001BF608 != -1)
  {
    sub_100108278();
  }

  if (qword_1001BF610 != -1)
  {
    sub_10010828C();
  }

  if (off_1001BF658 && off_1001BF660 && off_1001BF668)
  {
    v2 = off_1001BF658("com.apple.apsd.connection-failure");
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    off_1001BF660(v2, v4, 0);
    off_1001BF668(v2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10010832C(v3);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1001082A0();
  }
}

void sub_10001DCC8(uint64_t a1)
{
  if (qword_1001BF618 != -1)
  {
    sub_1001083C4();
  }

  if (qword_1001BF620 != -1)
  {
    sub_1001083D8();
  }

  if (qword_1001BF628 != -1)
  {
    sub_1001083EC();
  }

  if (off_1001BF670 && off_1001BF678 && off_1001BF680)
  {
    v2 = off_1001BF670("com.apple.apsd.connection-ok");
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    off_1001BF678(v2, v4, 0);
    off_1001BF680(v2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10010848C(v3);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100108400();
  }
}

void sub_10001DF1C(uint64_t a1)
{
  if (qword_1001BF630 != -1)
  {
    sub_100108524();
  }

  if (qword_1001BF638 != -1)
  {
    sub_100108538();
  }

  if (qword_1001BF648 != -1)
  {
    sub_10010854C();
  }

  if (qword_1001BF650 != -1)
  {
    sub_100108560();
  }

  v2 = off_1001BF688;
  if (off_1001BF688 && off_1001BF690 && off_1001BF698 && off_1001BF640)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 UTF8String];
      v4 = nw_interface_create_with_name();
      type = nw_interface_get_type(v4);
      if (type > nw_interface_type_loopback)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_10015C938[type];
      }

      v2 = off_1001BF688;
    }

    else
    {
      v6 = 1000;
    }

    v7 = v2("com.apple.apsd.public-ip");
    off_1001BF690(v7, v6, 0);
    (off_1001BF640)(v7, 0, [*(a1 + 40) length], objc_msgSend(*(a1 + 40), "bytes"));
    off_1001BF698(v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100108614((a1 + 32));
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100108574();
  }
}

const __CFString *sub_10001E1F8(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"Sent";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"NotSent";
  }
}

const __CFString *sub_10001E224(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_100186538[a1];
  }
}

const __CFString *sub_10001E248(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"<unknown>";
  }

  else
  {
    return off_100186510[a1];
  }
}

void sub_10001F0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10001F140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    ++*(*(*(a1 + 40) + 8) + 24);
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = *(a1 + 56);
      v9 = 138412802;
      v10 = v4;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ user courier finished processing server bag (%ld/%ld)", &v9, 0x20u);
    }

    if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 56))
    {
      v8 = +[APSLog courier];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ all couriers have finished processing server bag", &v9, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    objc_sync_exit(v4);
  }
}

uint64_t sub_10001F438(uint64_t a1, int a2)
{
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ user courier ready to connect? %@", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100021368(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000216B0(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002176C;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000160E4(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100021754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002176C(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

void *sub_1000217B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  valuePtr = a6;
  pthread_once(&stru_1001BB710, sub_100022718);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = 0;
    sub_1000145A0();
    v12 = CSDBRecordCreate();
    if (v12)
    {
      v13 = v12;
      v14 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      v15 = 0;
      v25[0] = a2;
      v25[1] = a3;
      v25[2] = a4;
      v25[3] = a5;
      v25[4] = v14;
      do
      {
        v16 = v25[v15];
        v17 = dword_1001BF6A8[v15];
        CSDBRecordSetProperty();
        ++v15;
      }

      while (v15 != 5);
      if (sub_1000216B0(v13))
      {
        v11[3] = CSDBRecordGetID();
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v11[3];
          *buf = 138412546;
          v22 = v11;
          v23 = 2048;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - New message record [%@] has ID [%lld].", buf, 0x16u);
        }
      }

      else
      {
        CFRelease(v11);
        v11 = 0;
      }

      CFRelease(v13);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      CFRelease(v11);
      return 0;
    }
  }

  return v11;
}

void sub_10002198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    v13 = 2112;
    v14 = a3;
    v15 = 2112;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APSChannelRecordDeleteMessageForChannelID %@ channelTopic %@ environment %@ tokenName %@", buf, 0x2Au);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100021AB8;
  v8[3] = &unk_100186690;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  sub_1000141E0(@"SELECT ROWID, channel_id, channel_topic, environment, token_name, checkpoint FROM channel WHERE channel_id = ? AND channel_topic = ? AND environment = ? AND token_name = ? ORDER BY ROWID ASC", v8);
}

uint64_t sub_100021AB8(void *a1, uint64_t a2)
{
  v4 = a1[4];
  CSDBSqliteBindTextFromCFString();
  v5 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v6 = a1[6];
  CSDBSqliteBindTextFromCFString();
  v7 = a1[7];
  CSDBSqliteBindTextFromCFString();
  v8 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v8);
  if (Count >= 1)
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      CFArrayGetValueAtIndex(v8, i);
      CSDBRecordStoreRemoveRecord();
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  CSDBRecordSaveStore();

  return _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

uint64_t sub_100021B98(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100021C54;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000160E4(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100021C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021C54(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100021C98(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100021D54;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000B29A0(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100021D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021D54(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const void *sub_100021D98(uint64_t a1, uint64_t a2)
{
  pthread_once(&stru_1001BB710, sub_100022718);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v4 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = a2;
  *(Instance + 16) = 0;
  v5 = sub_100021C98(a2);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

uint64_t sub_100021E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = a2;
    *&buf[22] = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APSChannelRecordCopyChannelForChannelIDAndPushTopic %@ %@ environment %@ tokenName %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v12 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021F9C;
  v10[3] = &unk_1001866B8;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  v10[4] = buf;
  v10[5] = a1;
  sub_1000141E0(@"SELECT ROWID, channel_id, channel_topic, environment, token_name, checkpoint FROM channel WHERE channel_id = ? AND channel_topic = ? AND environment = ? AND token_name = ? ORDER BY ROWID ASC", v10);
  v8 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v8;
}

void sub_100021F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021F9C(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v3 = a1[6];
  CSDBSqliteBindTextFromCFString();
  v4 = a1[7];
  CSDBSqliteBindTextFromCFString();
  v5 = a1[8];
  CSDBSqliteBindTextFromCFString();
  v6 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v6);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      CFArrayGetValueAtIndex(v6, i);
      ID = CSDBRecordGetID();
      *(*(a1[4] + 8) + 24) = sub_100021D98(kCFAllocatorDefault, ID);
    }
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

CFMutableArrayRef sub_1000220A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Default = CFAllocatorGetDefault();
  Mutable = CFArrayCreateMutable(Default, 0, &kCFTypeArrayCallBacks);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100022154;
  v9[3] = &unk_100186690;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = Mutable;
  sub_1000141E0(@"SELECT ROWID, channel_id, channel_topic, environment, token_name, checkpoint FROM channel WHERE channel_topic = ? AND environment = ? AND token_name = ? ORDER BY ROWID ASC", v9);
  return Mutable;
}

void sub_100022154(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  v4 = *(a1 + 48);
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        CFArrayGetValueAtIndex(v6, i);
        ID = CSDBRecordGetID();
        v11 = sub_100021D98(kCFAllocatorDefault, ID);
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(*(a1 + 56), v11);
          CFRelease(v12);
        }
      }
    }

    CFRelease(v6);
  }
}

CFMutableArrayRef sub_100022260(uint64_t a1, uint64_t a2)
{
  Default = CFAllocatorGetDefault();
  Mutable = CFArrayCreateMutable(Default, 0, &kCFTypeArrayCallBacks);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002230C;
  v7[3] = &unk_1001866D8;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = Mutable;
  sub_1000141E0(@"SELECT ROWID, channel_id, channel_topic, environment, token_name, checkpoint FROM channel WHERE environment = ? AND token_name = ? ORDER BY ROWID ASC", v7);
  return Mutable;
}

void sub_10002230C(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        CFArrayGetValueAtIndex(v5, i);
        ID = CSDBRecordGetID();
        v10 = sub_100021D98(kCFAllocatorDefault, ID);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(*(a1 + 48), v10);
          CFRelease(v11);
        }
      }
    }

    CFRelease(v5);
  }
}

CFMutableArrayRef sub_10002240C()
{
  Default = CFAllocatorGetDefault();
  Mutable = CFArrayCreateMutable(Default, 0, &kCFTypeArrayCallBacks);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000224A4;
  v3[3] = &unk_1001866F8;
  v3[4] = Mutable;
  sub_1000141E0(@"select * from channel", v3);
  return Mutable;
}

void sub_1000224A4(uint64_t a1)
{
  v2 = CSDBRecordStoreProcessStatement();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        CFArrayGetValueAtIndex(v3, i);
        ID = CSDBRecordGetID();
        v8 = sub_100021D98(kCFAllocatorDefault, ID);
        if (v8)
        {
          v9 = v8;
          CFArrayAppendValue(*(a1 + 32), v8);
          CFRelease(v9);
        }
      }
    }

    CFRelease(v3);
  }
}

void sub_100022588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100022624;
    v6[3] = &unk_100186718;
    v6[4] = a1;
    v6[5] = a2;
    v6[6] = a3;
    v6[7] = a4;
    v6[8] = a5;
    v6[9] = a6;
    sub_1000B2928(a1 + 16, v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1001086A0();
  }
}

void sub_100022624(uint64_t a1)
{
  v2 = sub_100021C98(*(*(a1 + 32) + 24));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

uint64_t sub_100022718()
{
  v0 = 0;
  qword_1001BF6A0 = _CFRuntimeRegisterClass();
  v1 = &off_100186798;
  do
  {
    v2 = *v1;
    v1 += 5;
    result = CSDBRecordIndexOfPropertyNamed();
    dword_1001BF6A8[v0++] = result;
  }

  while (v0 != 5);
  return result;
}

void sub_100022794(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 24) = -1;

  os_unfair_lock_unlock((a1 + 16));
}

CFStringRef sub_1000227F4(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<APSChannelRecord %p [%p]>{}", a1, v3);
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

CFStringRef *sub_1000228AC(CFStringRef *a1, const UInt8 *a2)
{
  v3 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  *a1 = CFStringCreateWithBytes(0, a2, v4, 0x8000100u, 0);
  return a1;
}

CFStringRef *sub_10002291C(CFStringRef *a1, char *__s)
{
  *a1 = 0;
  v4 = strlen(__s);
  *a1 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  return a1;
}

CFNumberRef *sub_100022970(CFNumberRef *a1, uint64_t a2)
{
  valuePtr = a2;
  *a1 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  return a1;
}

CFBooleanRef *sub_1000229E4(CFBooleanRef *result, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  *result = *v2;
  return result;
}

__CFDictionary **sub_100022A08(__CFDictionary **a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = *(a2 + 16);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 39);
      v7 = v6 >= 0 ? (v5 + 2) : v5[2];
      v8 = v6 >= 0 ? *(v5 + 39) : v5[3];
      v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
      v12 = v9;
      if (!v9)
      {
        break;
      }

      v10 = v5[5];
      if (!v10)
      {
        break;
      }

      CFDictionaryAddValue(Mutable, v9, v10);
      sub_100017D14(&v12);
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    CFRelease(Mutable);
    sub_100017D14(&v12);
    Mutable = 0;
  }

LABEL_13:
  *a1 = Mutable;
  return a1;
}

void sub_100022AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef *sub_100022B00(CFMutableArrayRef *a1, const void ***a2)
{
  Mutable = CFArrayCreateMutable(0, a2[1] - *a2, &kCFTypeArrayCallBacks);
  for (i = *a2; i != a2[1]; ++i)
  {
    if (!*i)
    {
      CFRelease(Mutable);
      Mutable = 0;
      break;
    }

    CFArrayAppendValue(Mutable, *i);
  }

  *a1 = Mutable;
  return a1;
}

void sub_100022B8C(CFDataRef *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  if (!v5)
  {
    v10 = "<<null>>";
    v11 = a2;
    v12 = 8;
    goto LABEL_7;
  }

  v7 = CFGetTypeID(v5);
  if (v7 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(*a1);
    Length = CFDataGetLength(*a1);
    if (Length <= 0)
    {
      valuePtr = 0;
      v32 = 0;
      v33 = 0;
      sub_100023668(&valuePtr, 0, 0, 0);
      sub_10003519C(a2, &valuePtr);
      goto LABEL_23;
    }

    if (BytePtr)
    {
      valuePtr = 0;
      v32 = 0;
      v33 = 0;
      sub_100023668(&valuePtr, BytePtr, &BytePtr[Length], Length);
      values[0] = valuePtr;
      v30 = v32;
      sub_100034BF8(a2, values, &v30, a3);
LABEL_23:
      v15 = valuePtr;
      if (!valuePtr)
      {
        return;
      }

      v32 = valuePtr;
      goto LABEL_36;
    }

    v10 = "<<invalid data>>";
    v11 = a2;
    v12 = 16;
    goto LABEL_7;
  }

  if (v7 != CFStringGetTypeID())
  {
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(*a1, kCFNumberSInt64Type, &valuePtr))
      {
        std::ostream::operator<<();
        return;
      }

      v21 = "<<invalid number>>";
      v22 = a2;
      v23 = 18;
      goto LABEL_61;
    }

    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(*a1);
      if (Value)
      {
        v10 = "true";
      }

      else
      {
        v10 = "false";
      }

      if (Value)
      {
        v12 = 4;
      }

      else
      {
        v12 = 5;
      }

      v11 = a2;
    }

    else
    {
      if (v7 == CFDictionaryGetTypeID())
      {
        sub_1000231FC(a2, "{ ", 2);
        Count = CFDictionaryGetCount(*a1);
        values[0] = 0;
        sub_10001A0F0(&valuePtr, Count);
        v30 = 0;
        sub_10001A0F0(values, Count);
        CFDictionaryGetKeysAndValues(*a1, valuePtr, values[0]);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v19 = valuePtr[i];
            v30 = v19;
            if (v19)
            {
              CFRetain(v19);
            }

            sub_100022B8C(&v30, a2, a3);
            sub_100017D14(&v30);
            sub_1000231FC(a2, ": ", 2);
            v20 = values[0][i];
            v30 = v20;
            if (v20)
            {
              CFRetain(v20);
            }

            sub_100022B8C(&v30, a2, a3);
            sub_100017D14(&v30);
            if (Count - 1 > i)
            {
              sub_1000231FC(a2, ", ", 2);
            }
          }
        }

        sub_1000231FC(a2, " }", 2);
        if (values[0])
        {
          values[1] = values[0];
          operator delete(values[0]);
        }

        goto LABEL_23;
      }

      if (v7 == CFArrayGetTypeID())
      {
        sub_1000231FC(a2, "[ ", 2);
        v24 = CFArrayGetCount(*a1);
        v25 = v24 - 1;
        if (v24 >= 1)
        {
          v26 = v24;
          for (j = 0; j != v26; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*a1, j);
            valuePtr = ValueAtIndex;
            if (ValueAtIndex)
            {
              CFRetain(ValueAtIndex);
            }

            sub_100022B8C(&valuePtr, a2, a3);
            sub_100017D14(&valuePtr);
            if (v25 > j)
            {
              sub_1000231FC(a2, ", ", 2);
            }
          }
        }

        v21 = " ]";
        v22 = a2;
        v23 = 2;
LABEL_61:
        sub_1000231FC(v22, v21, v23);
        return;
      }

      sub_1000231FC(a2, "<<unknown type ", 15);
      v11 = std::ostream::operator<<();
      v10 = ">>";
      v12 = 2;
    }

LABEL_7:

    sub_1000231FC(v11, v10, v12);
    return;
  }

  valuePtr = 0;
  v32 = 0;
  v33 = 0;
  if (sub_10001A1C8(a1, &valuePtr))
  {
    if (v33 >= 0)
    {
      p_valuePtr = &valuePtr;
    }

    else
    {
      p_valuePtr = valuePtr;
    }

    if (v33 >= 0)
    {
      v14 = HIBYTE(v33);
    }

    else
    {
      v14 = v32;
    }

    sub_1000231FC(a2, p_valuePtr, v14);
  }

  else
  {
    sub_1000231FC(a2, "<<invalid string>>", 18);
  }

  if (SHIBYTE(v33) < 0)
  {
    v15 = valuePtr;
LABEL_36:
    operator delete(v15);
  }
}

void sub_100022FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef sub_10002308C(CFPropertyListRef *a1, CFTypeRef *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = CFPropertyListCreateData(0, *a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    v6 = result;
    CFRetain(result);
    if (&v6 != a2)
    {
      v5 = v4;
      if (*a2)
      {
        CFRelease(*a2);
        v5 = v6;
      }

      *a2 = v5;
      v6 = 0;
    }

    sub_100017D14(&v6);
    CFRelease(v4);
    return 1;
  }

  return result;
}

void sub_100023124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

const void **sub_100023138@<X0>(CFPropertyListRef *a1@<X0>, void *a2@<X8>)
{
  theData = 0;
  if ((sub_10002308C(a1, &theData) & 1) == 0 || ((v3 = theData, BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(v3), Length >= 1) ? (v6 = BytePtr == 0) : (v6 = 1), v6))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_100023668(a2, BytePtr, &BytePtr[Length], Length);
  }

  return sub_100017D14(&theData);
}

void sub_1000231CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

void *sub_1000231FC(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
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

    if (!sub_1000233A4(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10002333C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10002331CLL);
}

uint64_t sub_1000233A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_10002358C();
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

void sub_100023570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000235A4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100023600(exception, a1);
}

std::logic_error *sub_100023600(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100023634()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_100023668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000B310(result, a4);
  }

  return result;
}

void sub_1000236C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000236DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _getMultiUserMode];
  v4 = *(a1 + 32);
  qword_1001BF6C8 = -[APSMultiUserMode initWithIsMultiUserMode:loggedInUser:]([APSMultiUserMode alloc], "initWithIsMultiUserMode:loggedInUser:", v3, [objc_opt_class() _getIsCurrentlyLoggedIn]);

  return _objc_release_x1();
}

void *sub_10002387C(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *sub_100023888(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

BOOL sub_100023894(void *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 + 1 <= v2)
  {
    *a2 = *(*a1 + v3);
  }

  return v3 + 1 <= v2;
}

BOOL sub_1000238BC(uint64_t *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 + 1;
  if (v3 + 1 <= v2)
  {
    v5 = *a1;
    a1[2] = v4;
    *a2 = *(v5 + v3);
  }

  return v4 <= v2;
}

BOOL sub_1000238E8(void *a1, _WORD *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 + 2;
  if (v3 + 2 <= v2)
  {
    *a2 = bswap32(*(*a1 + v3)) >> 16;
    a1[2] = v4;
  }

  return v4 <= v2;
}

BOOL sub_10002391C(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 + 4;
  if (v3 + 4 <= v2)
  {
    *a2 = bswap32(*(*a1 + v3));
    a1[2] = v4;
  }

  return v4 <= v2;
}

BOOL sub_10002394C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + a2;
  if (v3 <= v2)
  {
    *(a1 + 16) = v3;
  }

  return v3 <= v2;
}

void sub_100026CCC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100026CEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  sub_100034468(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = off_1001868A0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return a1;
}

void sub_100026D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001089A8(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100026DA8(void *a1)
{
  *a1 = off_1001868A0;
  sub_100026E08(a1);
  sub_10002737C(a1 + 3);

  return sub_100034494(a1);
}

uint64_t sub_100026E08(uint64_t a1)
{
  *(*(a1 + 16) + 4) -= (*(*a1 + 16))(a1);
  (*(*a1 + 48))(a1);
  v2 = *(**(a1 + 8) + 32);

  return v2();
}

void sub_100026EC0(void *a1)
{
  sub_100026DA8(a1);

  operator delete();
}

unint64_t sub_100026EF8(void *a1, unint64_t a2)
{
  if (a1[8] <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1[4] + 8 * ((a1[7] + a2) / 0xAA)) + 24 * ((a1[7] + a2) % 0xAA);
  }
}

int64x2_t sub_100026F50(int64x2_t *a1, uint64_t *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_100027528(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0xAA));
  v7 = *v6 + 24 * (v4 % 0xAA);
  if (a1[1].i64[0] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 4080;
  }

  *(v8 - 24) = 0;
  *(v8 - 16) = 0;
  v9 = v8 - 24;
  *(v9 + 16) = 0;
  sub_10000CB64(v9, *a2, a2[1], a2[1] - *a2);
  result = vaddq_s64(a1[2], xmmword_10015C9B0);
  a1[2] = result;
  return result;
}

BOOL sub_100026FF4(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2)
  {
    sub_100027ADC(a2, (*(a1[4] + 8 * ((v2 + a1[7] - 1) / 0xAAuLL)) + 24 * ((v2 + a1[7] - 1) % 0xAAuLL)));
    sub_10002706C(a1 + 3);
  }

  return v2 != 0;
}

uint64_t sub_10002706C(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(a1[1] + 8 * ((v2 + a1[4]) / 0xAAuLL)) + 24 * ((v2 + a1[4]) % 0xAAuLL);
  v4 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return sub_100027B30(a1, 1);
}

void sub_1000270F4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v3 == v2)
  {
    v4 = a1 + 8;
    v3 = a1[4];
  }

  else
  {
    v4 = a1 + 8;
    v5 = a1[7];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[8] + v5) / 0xAA] + 24 * ((a1[8] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v13 = a1[5];
      v2 = (a1[4] + 8);
      a1[4] = v2;
      v12 = (v13 - v2) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      return;
    }

    v14 = 170;
  }

  a1[7] = v14;
}

uint64_t sub_100027220(void *a1, uint64_t a2)
{
  sub_1000272D4(a2);
  v4 = a1[7];
  v5 = a1[4];
  v6 = (v5 + 8 * (v4 / 0xAA));
  if (a1[5] == v5)
  {
    v7 = 0;
    v12 = 0;
    v13 = a1[8];
    v8 = a1 + 8;
    v11 = (v5 + 8 * ((v13 + v4) / 0xAA));
  }

  else
  {
    v7 = (*(v5 + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA));
    v9 = a1[8];
    v8 = a1 + 8;
    v10 = v9 + v4;
    v11 = (v5 + 8 * (v10 / 0xAA));
    v12 = (*v11 + 24 * (v10 % 0xAA));
  }

  sub_10002732C(a2, *(a2 + 8), v6, v7, v11, v12);
  return *v8;
}

void sub_1000272D4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

char **sub_10002732C(void *a1, char **a2, char **a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  if (a6 == a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * (a5 - a3) - 0x5555555555555555 * ((a6 - *a5) >> 3) + 0x5555555555555555 * ((a4 - *a3) >> 3);
  }

  return sub_100027BA8(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t sub_10002737C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 170;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1000274D8(a1);
}

uint64_t sub_1000274D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

const void **sub_100027528(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0xAA)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_100027A94(a1, v10);
  }

  *(a1 + 32) = v5 + 170;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_100027778(a1, v11);
}

void sub_10002772C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_100027778(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100027A94(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100027884(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100027A94(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_10002798C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100027A94(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_100027A94(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100023634();
}

__n128 sub_100027ADC(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100027B30(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

char **sub_100027BA8(void *a1, char **a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7 = a2;
  if (a7 >= 1)
  {
    v13 = a1[1];
    v12 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3)) >= a7)
    {
      v19 = v13 - a2;
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v13 - a2) >> 3);
      if (v20 >= a7)
      {
        sub_100027E18(a1, v7, a1[1], &v7[3 * a7]);
        v37 = a3;
        v38 = a4;
        sub_100027F54(&v37, a7);
        v25 = v37;
        v26 = v38;
        v37 = v7;
        v23 = a3;
        v24 = a4;
      }

      else
      {
        v37 = a3;
        v38 = a4;
        sub_100027F54(&v37, v20);
        v35 = v38;
        v36 = v37;
        a1[1] = sub_100027FF0(a1, v37, v38, a5, a6, a1[1]);
        if (v19 < 1)
        {
          return v7;
        }

        sub_100027E18(a1, v7, v13, &v7[3 * a7]);
        v37 = v7;
        v23 = a3;
        v24 = a4;
        v26 = v35;
        v25 = v36;
      }

      sub_100028140(v23, v24, v25, v26, &v37);
      return v7;
    }

    v14 = *a1;
    v15 = a7 - 0x5555555555555555 * ((v13 - *a1) >> 3);
    if (v15 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100016C08();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
    if (2 * v17 > v15)
    {
      v15 = 2 * v17;
    }

    if (v17 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v15;
    }

    v40 = a1;
    if (v18)
    {
      sub_100028244(a1, v18);
    }

    v37 = 0;
    v38 = (8 * (v16 >> 3));
    v39 = v38;
    sub_100027EB8(&v37, a3, a4, a7);
    v27 = v38;
    memcpy(v39, v7, a1[1] - v7);
    v28 = *a1;
    v29 = v38;
    *&v39 = v39 + a1[1] - v7;
    a1[1] = v7;
    v30 = v7 - v28;
    v31 = v29 - (v7 - v28);
    memcpy(v31, v28, v30);
    v32 = *a1;
    *a1 = v31;
    v33 = a1[2];
    *(a1 + 1) = v39;
    *&v39 = v32;
    *(&v39 + 1) = v33;
    v37 = v32;
    v38 = v32;
    sub_10002829C(&v37);
    return v27;
  }

  return v7;
}

void sub_100027E18(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      sub_100027ADC(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t sub_100027EB8(uint64_t result, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = result;
  v5 = *(result + 16);
  if (a4)
  {
    v8 = &v5[3 * a4];
    v9 = 24 * a4;
    do
    {
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      result = sub_10000CB64(v5, *a3, a3[1], a3[1] - *a3);
      a3 += 3;
      if ((a3 - *a2) == 4080)
      {
        v10 = a2[1];
        ++a2;
        a3 = v10;
      }

      v5 += 3;
      v9 -= 24;
    }

    while (v9);
    v5 = v8;
  }

  *(v4 + 16) = v5;
  return result;
}

void *sub_100027F54(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

void *sub_100027FF0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = a6;
  v14 = a6;
  v15 = a6;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a3 != a5)
  {
    v8 = a3;
    do
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      sub_10000CB64(v6, *v8, v8[1], v8[1] - *v8);
      v8 += 3;
      if ((v8 - *a2) == 4080)
      {
        v10 = a2[1];
        ++a2;
        v8 = v10;
      }

      v6 = v15 + 3;
      v15 += 3;
    }

    while (v8 != a5);
  }

  v13 = 1;
  sub_1000280B8(v12);
  return v6;
}

uint64_t sub_1000280B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000280F0(a1);
  }

  return a1;
}

void sub_1000280F0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **sub_100028140(char ***a1, char **a2, char ***a3, char **a4, char ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = &v18;
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v12 = &v19;
    for (i = v10 + 510; ; i = v15 + 510)
    {
      sub_1000281D8(v12, a2, i, v7);
      v7 = v14;
      *a5 = v14;
      if (v11 == a3)
      {
        break;
      }

      v15 = *v11++;
      a2 = v15;
      v12 = &v20;
    }

    a2 = *v11;
    v8 = &v21;
  }

  result = sub_1000281D8(v8, a2, a4, v7);
  *a5 = v17;
  return result;
}

char **sub_1000281D8(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_10000C8F8(a4, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100028244(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100023634();
}

uint64_t sub_10002829C(uint64_t a1)
{
  sub_1000282D4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000282D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t sub_1000283B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  if (*(a1 + 184))
  {
    return 0;
  }

  sub_100023888(v14, a2, a3);
  v13 = 0;
  v9 = sub_1000284F0(v14, 8, &v13);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    sub_1000135F8(&__str, "invalid frame size");
    sub_100028554(a1, 8, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = __str.__r_.__value_.__r.__words[0];
LABEL_11:
      operator delete(v10);
    }
  }

  else
  {
    if (v13 <= *(a1 + 168))
    {
      *a4 = v13;
      *a5 = v14[2];
      return 1;
    }

    sub_1000135F8(&__p, "frame is too large");
    sub_100028554(a1, 2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }
  }

  return 0;
}

void sub_1000284AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000284F0(uint64_t *a1, char a2, void *a3)
{
  v7 = 0;
  if (sub_1000238BC(a1, &v7))
  {
    return sub_100029CAC(a1, v7, a2, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100028554(uint64_t result, int a2, std::string *__str)
{
  if (!*(result + 184))
  {
    v3 = result;
    *(result + 184) = a2;
    v4 = result + 192;
    std::string::operator=((result + 192), __str);
    if (qword_1001C03A0)
    {
      return sub_10002AA38(&unk_1001C0388, v3, *(v3 + 216));
    }

    else
    {
      v5 = sub_1000231FC(&std::cerr, "Decoder error: ", 15);
      v6 = *(v3 + 215);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *(v3 + 192);
      }

      if (v6 >= 0)
      {
        v8 = *(v3 + 215);
      }

      else
      {
        v8 = *(v3 + 200);
      }

      v9 = sub_1000231FC(v5, v7, v8);
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v10 = std::locale::use_facet(&v11, &std::ctype<char>::id);
      (v10->__vftable[2].~facet_0)(v10, 10);
      std::locale::~locale(&v11);
      std::ostream::put();
      return std::ostream::flush();
    }
  }

  return result;
}

BOOL sub_1000286B4(int64x2_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1[11].i32[2])
  {
    return 0;
  }

  sub_100023888(&v29, a3, a4);
  v9 = 0;
  while (1)
  {
    v4 = v30 == v31;
    if (v30 == v31)
    {
      break;
    }

    v28 = 0;
    if (!sub_10002898C(a1, &v29, &v28))
    {
      return v4;
    }

    __p = 0;
    v26 = 0;
    v27 = 0;
    if ((sub_100028A18(a1, &v29, v28, &__p, 0) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v26 - __p == 1)
    {
      v10 = *__p;
      v21[0] = off_100186AE0;
      v21[1] = a2;
      v22 = v10;
      v23 = 0;
      if (sub_100028EE0(a1, &v29, v28, v21, 0))
      {
        if (v23 <= a1[11].i64[0])
        {
          v9 += v23 + 3;
          if (v9 <= a1[10].i64[1])
          {
            v13 = 1;
            goto LABEL_21;
          }

          sub_1000135F8(&v19, "unpacked frame is too large");
          sub_100028554(a1, 2, &v19);
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            p_str = &v19;
LABEL_18:
            v12 = p_str->__r_.__value_.__r.__words[0];
LABEL_19:
            operator delete(v12);
          }
        }

        else
        {
          sub_1000135F8(&__str, "unpacked attribute is too large");
          sub_100028554(a1, 1, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            p_str = &__str;
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      sub_1000135F8(&v24, "top-level key is longer than 1 byte");
      sub_100028554(a1, 3, &v24);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v24.__r_.__value_.__r.__words[0];
        goto LABEL_19;
      }
    }

LABEL_20:
    v13 = 0;
LABEL_21:
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if ((v13 & 1) == 0)
    {
      return v4;
    }
  }

  v14 = 2;
  v15 = 3;
  v16 = 4;
  if (a4 >= 0x40FE)
  {
    v16 = 5;
  }

  if (a4 >= 0x17E)
  {
    v15 = v16;
  }

  if (a4 >= 0xFF)
  {
    v14 = v15;
  }

  v17 = v14 + a4;
  v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v18.i64[1] = v9 + 5;
  a1[9] = vaddq_s64(a1[9], v18);
  a1[10].i64[0] += v17;
  xmmword_1001C0350 = vaddq_s64(xmmword_1001C0350, v18);
  qword_1001C0360 += v17;
  return v4;
}

void sub_10002892C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10002898C(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v4 = sub_1000238BC(a2, a3);
  if (!v4)
  {
    sub_1000135F8(&__p, "read overflow while reading attribute metadata");
    sub_100028554(a1, 12, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v4;
}

void sub_1000289FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100028A18(void *a1, uint64_t *a2, unsigned int a3, uint64_t a4, int a5)
{
  v8 = (a3 >> 4) & 3;
  if ((v8 - 2) < 2)
  {
    if (a5)
    {
      std::to_string(&v34, a3 & 0x1F);
      v9 = std::string::insert(&v34, 0, "KEY[");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v35, "]");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v42 = v11->__r_.__value_.__r.__words[2];
      v41 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v42 >= 0)
      {
        v13 = &v41;
      }

      else
      {
        v13 = v41;
      }

      if (v42 >= 0)
      {
        v14 = HIBYTE(v42);
      }

      else
      {
        v14 = *(&v41 + 1);
      }

      sub_1000137C4(a4, *(a4 + 8), v13, &v13[v14], v14);
      if ((SHIBYTE(v42) & 0x80000000) == 0)
      {
        return 1;
      }

      v15 = v41;
      goto LABEL_22;
    }

    v18 = sub_100026EF8(a1, a3 & 0x1F);
    if (v18)
    {
      if (v18 != a4)
      {
        sub_10000C8F8(a4, *v18, v18[1], v18[1] - *v18);
      }

      return 1;
    }

    sub_1000135F8(&v36, "key not found");
    sub_100028554(a1, 4, &v36);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = v36.__r_.__value_.__r.__words[0];
LABEL_37:
      operator delete(v25);
    }

    return 0;
  }

  if (v8 == 1)
  {
    v35.__r_.__value_.__r.__words[0] = 0;
    if (sub_100029CAC(a2, a3, 4, &v35))
    {
      sub_1000135F8(&__str, "read overflow while reading key length");
      sub_100028554(a1, 12, &__str);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      p_str = &__str;
    }

    else
    {
      v19 = v35.__r_.__value_.__r.__words[0] + 1;
      if (sub_10002F400(v35.__r_.__value_.__r.__words[0] + 1))
      {
        v20 = a2[2];
        if (a2[1] - v20 >= v19)
        {
          if (a5)
          {
            v32 = *a2 + v20;
            v42 = 0;
            v41 = 0uLL;
            sub_100023668(&v41, v32, v32 + v19, v19);
            sub_100029A70(a4, &v41);
            if (v41)
            {
              *(&v41 + 1) = v41;
              operator delete(v41);
            }
          }

          else
          {
            sub_10000BF7C(a4, *(a4 + 8), (*a2 + v20), (*a2 + v20 + v19), v19);
            if ((sub_10000C604(a1, a4) & 1) == 0)
            {
              sub_1000135F8(&v37, "key indexing failed");
              sub_100028554(a1, 5, &v37);
              if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                return 0;
              }

              p_str = &v37;
              goto LABEL_36;
            }
          }

          sub_10002394C(a2, v19);
          return 1;
        }

        sub_1000135F8(&v38, "read overflow while reading key");
        sub_100028554(a1, 12, &v38);
        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        p_str = &v38;
      }

      else
      {
        sub_1000135F8(&v39, "key length is invalid");
        sub_100028554(a1, 3, &v39);
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        p_str = &v39;
      }
    }

LABEL_36:
    v25 = p_str->__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

  if (!a5)
  {
    v21 = a3 & 0xF;
    v23 = *(a4 + 8);
    v22 = *(a4 + 16);
    if (v23 >= v22)
    {
      v27 = *a4;
      v28 = &v23[-*a4];
      v29 = (v28 + 1);
      if ((v28 + 1) < 0)
      {
        sub_100016C08();
      }

      v30 = v22 - v27;
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        operator new();
      }

      v33 = &v23[-*a4];
      *v28 = v21;
      v24 = v28 + 1;
      memcpy(0, v27, v33);
      *a4 = 0;
      *(a4 + 8) = v28 + 1;
      *(a4 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v23 = v21;
      v24 = v23 + 1;
    }

    *(a4 + 8) = v24;
    return 1;
  }

  v35.__r_.__value_.__s.__data_[0] = a3 & 0xF;
  sub_10000B360(&v41, 1);
  sub_100029A70(a4, &v41);
  v15 = v41;
  if (v41)
  {
    *(&v41 + 1) = v41;
LABEL_22:
    operator delete(v15);
  }

  return 1;
}

void sub_100028E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100028EE0(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = a3 >> 6;
  if (a3 >> 6 <= 1)
  {
    if (!v9)
    {
      return (sub_100029D6C(a1, a2, a4, a5) & 0x100000000) != 0;
    }

    v14 = *a2;
    v15 = a2[2];
    v16 = sub_100029D6C(a1, a2, a4, a5);
    if ((v16 & 0x100000000) == 0)
    {
      return 0;
    }

    if (v16 == 1)
    {
      sub_1000135F8(&__str, "value not indexable");
      sub_100028554(a1, 11, &__str);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v17 = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v5)
      {
        return 1;
      }

      v19 = *a2 + a2[2];
      v30 = 0uLL;
      v31 = 0;
      sub_100023668(&v30, v14 + v15, v19, v19 - (v14 + v15));
      v20 = sub_10000C604(a1 + 72, &v30);
      if (v30)
      {
        *(&v30 + 1) = v30;
        operator delete(v30);
      }

      if (v20)
      {
        return 1;
      }

      sub_1000135F8(&v29, "value indexing failed");
      sub_100028554(a1, 10, &v29);
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v17 = v29.__r_.__value_.__r.__words[0];
    }

LABEL_23:
    operator delete(v17);
    return 0;
  }

  if (v9 != 2)
  {
    sub_1000135F8(&v22, "value metadata cannot be 11");
    sub_100028554(a1, 13, &v22);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v17 = v22.__r_.__value_.__r.__words[0];
    goto LABEL_23;
  }

  __val = 0;
  if (sub_1000284F0(a2, 8, &__val) || __val >> 24)
  {
    sub_1000135F8(&__p, "value index is invalid");
    sub_100028554(a1, 6, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v17 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_23;
  }

  if (v5)
  {
    std::to_string(&v23, __val);
    v10 = std::string::insert(&v23, 0, "VALUE[");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v24, "]");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v31 = v12->__r_.__value_.__r.__words[2];
    v30 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    (*(*a4 + 24))(a4, &v30);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  v21 = sub_100026EF8((a1 + 72), __val);
  if (!v21)
  {
    sub_1000135F8(&v26, "value not found");
    sub_100028554(a1, 7, &v26);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v17 = v26.__r_.__value_.__r.__words[0];
    goto LABEL_23;
  }

  sub_100023888(&v30, *v21, v21[1] - *v21);
  if ((sub_100029D6C(a1, &v30, a4, 0) & 0x100000000) == 0)
  {
    return 0;
  }

  if (*(&v30 + 1) != v31)
  {
    sub_1000135F8(&v25, "indexed value has leftover bytes");
    sub_100028554(a1, 8, &v25);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v17 = v25.__r_.__value_.__r.__words[0];
    goto LABEL_23;
  }

  return 1;
}

void sub_100029228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100029304(unint64_t a1)
{
  if (a1 < 0x40FE)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x17E)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 >= 0xFF)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void sub_10002967C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::locale::~locale((v4 - 72));
  sub_100029954(va);
  _Unwind_Resume(a1);
}

void *sub_100029954(uint64_t a1)
{
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  sub_100026DA8((a1 + 72));

  return sub_100026DA8(a1);
}

uint64_t sub_1000299A0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  result = sub_10002898C(a1, a2, &v11);
  if (result)
  {
    result = sub_100028A18(a1, a2, v11, a3, a5);
    if (result)
    {
      return sub_100028EE0(a1, a2, v11, a4, a5);
    }
  }

  return result;
}

uint64_t sub_100029A2C(uint64_t a1)
{
  *a1 = off_100186B48;
  sub_100017D14((a1 + 8));
  return a1;
}

char *sub_100029A70(uint64_t a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
LABEL_5:
    v10 = *(a1 + 8);

    return sub_1000137C4(a1, v10, v3, v4, v5);
  }

  else
  {
    v7 = (v4 - *a2);
    v8 = *a2;
    while (1)
    {
      v9 = *v8++;
      if ((v9 - 126) < 0xFFFFFFAA)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    sub_10002B4D8(&v18);
    v12 = a2[1];
    __p[0] = *a2;
    v17 = v12;
    sub_100034BF8(&v18, __p, &v17, 64);
    std::stringbuf::str();
    if ((v16 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v14 = v16;
    }

    else
    {
      v14 = __p[1];
    }

    sub_1000137C4(a1, *(a1 + 8), v13, &v13[v14], v14);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[7].__locale_);
    }

    std::locale::~locale(v20);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

void sub_100029C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100029CAC(uint64_t *a1, int a2, char a3, void *a4)
{
  v5 = 0xFFu >> (8 - a3);
  v6 = v5 & a2;
  if (v5 == v6)
  {
    v8 = 0;
    v9 = -7;
    while (1)
    {
      v11 = 0;
      if (!sub_1000238BC(a1, &v11))
      {
        return 1;
      }

      v8 |= (v11 & 0x7F) << (v9 + 7);
      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      if (v9 >= 0x39)
      {
        return 2;
      }
    }

    result = 0;
    v6 = v8 + v5;
  }

  else
  {
    result = 0;
  }

  *a4 = v6;
  return result;
}

unint64_t sub_100029D6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v62 = 0;
  if (!sub_100023894(a2, &v62))
  {
    sub_1000135F8(&v61, "read overflow while reading value's first byte");
    sub_100028554(a1, 12, &v61);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v61.__r_.__value_.__r.__words[0];
LABEL_9:
      operator delete(v10);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v8 = v62 >> 6;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_10002394C(a2, 1);
      v14 = v62;
      if ((v62 & 0x20) != 0)
      {
        if ((v62 & 0x30) == 0x20)
        {
          v19 = 0;
          v20 = (v62 & 7) + 2;
          while (1)
          {
            v45[0] = 0;
            if (!sub_1000238BC(a2, v45))
            {
              break;
            }

            v19 = v45[0] | (v19 << 8);
            if (--v20 <= 1)
            {
              if ((v14 & 8) != 0)
              {
                v15 = -v19;
              }

              else
              {
                v15 = v19;
              }

              goto LABEL_15;
            }
          }

          sub_1000135F8(&v51, "read overflow while reading integer");
          sub_100028554(a1, 12, &v51);
          if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          v10 = v51.__r_.__value_.__r.__words[0];
          goto LABEL_9;
        }

        std::to_string(v45, v62);
        v29 = std::string::insert(v45, 0, "invalid value prefix ");
        v30 = *&v29->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        sub_100028554(a1, 13, &v50);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = v50.__r_.__value_.__r.__words[0];
          goto LABEL_81;
        }

LABEL_82:
        if ((v45[23] & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = *v45;
        goto LABEL_9;
      }

      v15 = v62 & 0x1F;
LABEL_15:
      if (((*(*a3 + 32))(a3, v15) & 1) == 0)
      {
        sub_1000135F8(&v49, "invalid number value");
        sub_100028554(a1, 8, &v49);
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = v49.__r_.__value_.__r.__words[0];
        goto LABEL_9;
      }

LABEL_102:
      v12 = 0;
      v11 = &_mh_execute_header;
      return v12 | v11;
    }

    if ((v62 & 0xF0) != 0xD0)
    {
      if ((v62 & 0xF0) != 0xC0)
      {
        if (v62 == 225)
        {
          sub_10002394C(a2, 1);
          (*(*a3 + 40))(a3, 1);
        }

        else
        {
          if (v62 != 224)
          {
            std::to_string(v45, v62);
            v32 = std::string::insert(v45, 0, "invalid value prefix ");
            v33 = *&v32->__r_.__value_.__l.__data_;
            v36.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
            *&v36.__r_.__value_.__l.__data_ = v33;
            v32->__r_.__value_.__l.__size_ = 0;
            v32->__r_.__value_.__r.__words[2] = 0;
            v32->__r_.__value_.__r.__words[0] = 0;
            sub_100028554(a1, 13, &v36);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              v23 = v36.__r_.__value_.__r.__words[0];
              goto LABEL_81;
            }

            goto LABEL_82;
          }

          sub_10002394C(a2, 1);
          (*(*a3 + 40))(a3, 0);
        }

        goto LABEL_102;
      }

      __n = 0;
      if (sub_1000284F0(a2, 4, &__n) || (v16 = __n, __n >= 0x401))
      {
        sub_1000135F8(&v47, "invalid dictionary size");
        sub_100028554(a1, 8, &v47);
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = v47.__r_.__value_.__r.__words[0];
        goto LABEL_9;
      }

      memset(v45, 0, sizeof(v45));
      v46 = 1065353216;
      sub_10002BEFC(v45, __n);
      if (v16)
      {
        do
        {
          v43 = 0;
          cf[0] = 0;
          cf[1] = 0;
          v41 = off_100186B48;
          v42 = 0;
          v17 = sub_1000299A0(a1, a2, &v43, &v41, a4);
          if (v17)
          {
            memset(&__p, 0, sizeof(__p));
            sub_10002B9A4(&__p, &__p, v43, cf[0], cf[0] - v43);
            p_p = &__p;
            v18 = sub_10002C150(v45, &__p.__r_.__value_.__l.__data_);
            sub_10002A8D8(v18 + 5, &v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v41 = off_100186B48;
          sub_100017D14(&v42);
          if (v43)
          {
            cf[0] = v43;
            operator delete(v43);
          }

          if ((v17 & 1) == 0)
          {
            goto LABEL_95;
          }
        }

        while (--v16);
      }

      if (((*(*a3 + 48))(a3, v45) & 1) == 0)
      {
        sub_1000135F8(&v39, "invalid dictionary");
        sub_100028554(a1, 8, &v39);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

LABEL_95:
        sub_10002BE2C(v45);
        goto LABEL_10;
      }

      sub_10002BE2C(v45);
LABEL_60:
      v11 = &_mh_execute_header;
      v12 = 1;
      return v12 | v11;
    }

    __p.__r_.__value_.__r.__words[0] = 0;
    if (sub_1000284F0(a2, 4, &__p) || (v25 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__r.__words[0] >= 0x401))
    {
      sub_1000135F8(&v38, "invalid array size");
      sub_100028554(a1, 8, &v38);
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      v10 = v38.__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }

    memset(v45, 0, 24);
    sub_10002A928(v45, __p.__r_.__value_.__r.__words[0]);
    if (v25)
    {
      while (1)
      {
        v43 = off_100186B48;
        cf[0] = 0;
        if ((sub_100029D6C(a1, a2, &v43, a4) & 0x100000000) == 0)
        {
          break;
        }

        v26 = *&v45[8];
        if (*&v45[8] >= *&v45[16])
        {
          v28 = sub_10002C84C(v45, cf);
        }

        else
        {
          v27 = cf[0];
          **&v45[8] = cf[0];
          if (v27)
          {
            CFRetain(v27);
          }

          v28 = v26 + 8;
        }

        *&v45[8] = v28;
        v43 = off_100186B48;
        sub_100017D14(cf);
        if (!--v25)
        {
          goto LABEL_58;
        }
      }

      v43 = off_100186B48;
      sub_100017D14(cf);
    }

    else
    {
LABEL_58:
      if ((*(*a3 + 56))(a3, v45))
      {
        v43 = v45;
        sub_10002C6D0(&v43);
        goto LABEL_60;
      }

      sub_1000135F8(&v37, "invalid array");
      sub_100028554(a1, 8, &v37);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }

    v43 = v45;
    sub_10002C6D0(&v43);
    goto LABEL_10;
  }

  if (v8)
  {
    v43 = 0;
    if ((v62 & 0x20) == 0)
    {
      if (sub_1000284F0(a2, 5, &v43))
      {
        sub_1000135F8(&v55, "invalid string length");
        sub_100028554(a1, 8, &v55);
        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = v55.__r_.__value_.__r.__words[0];
        goto LABEL_9;
      }

      v24 = v43;
      if (v43 > *(a1 + 176))
      {
        sub_1000135F8(&v54, "string is too large");
        sub_100028554(a1, 9, &v54);
        if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = v54.__r_.__value_.__r.__words[0];
        goto LABEL_9;
      }

      v34 = a2[2];
      if (a2[1] - v34 < v43)
      {
        sub_1000135F8(&v53, "read overflow while reading string");
        sub_100028554(a1, 12, &v53);
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = v53.__r_.__value_.__r.__words[0];
        goto LABEL_9;
      }

      sub_10002BD80(v45, (*a2 + v34), v43 + *a2 + v34, v43);
      v35 = (*(*a3 + 24))(a3, v45);
      if ((v45[23] & 0x80000000) != 0)
      {
        operator delete(*v45);
      }

      if ((v35 & 1) == 0)
      {
        sub_1000135F8(&v52, "invalid string value");
        sub_100028554(a1, 8, &v52);
        if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        v10 = v52.__r_.__value_.__r.__words[0];
        goto LABEL_9;
      }

LABEL_101:
      sub_10002394C(a2, v24);
      goto LABEL_102;
    }

    std::to_string(v45, v62);
    v21 = std::string::insert(v45, 0, "invalid value prefix ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_100028554(a1, 13, &v56);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v56.__r_.__value_.__r.__words[0];
LABEL_81:
      operator delete(v23);
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  *v45 = 0;
  if (!sub_1000284F0(a2, 6, v45))
  {
    v24 = *v45;
    if (*v45 > *(a1 + 176))
    {
      sub_1000135F8(&v59, "byte array is too large");
      sub_100028554(a1, 9, &v59);
      if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      p_str = &v59;
      goto LABEL_90;
    }

    v31 = a2[2];
    if ((a2[1] - v31) < *v45)
    {
      sub_1000135F8(&v58, "read overflow while reading byte array");
      sub_100028554(a1, 12, &v58);
      if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      p_str = &v58;
      goto LABEL_90;
    }

    if (((*(*a3 + 16))(a3, *a2 + v31, *v45) & 1) == 0)
    {
      sub_1000135F8(&v57, "invalid byte array value");
      sub_100028554(a1, 8, &v57);
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      p_str = &v57;
      goto LABEL_90;
    }

    goto LABEL_101;
  }

  sub_1000135F8(&__str, "invalid byte array length");
  sub_100028554(a1, 8, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    p_str = &__str;
LABEL_90:
    v10 = p_str->__r_.__value_.__r.__words[0];
    goto LABEL_9;
  }

LABEL_10:
  v11 = 0;
  v12 = 0;
  return v12 | v11;
}

void sub_10002A6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFTypeRef *sub_10002A8D8(CFTypeRef *a1, CFTypeRef *a2)
{
  if (a2 != a1)
  {
    if (*a2)
    {
      CFRetain(*a2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = *a2;
  }

  return a1;
}

void *sub_10002A928(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100017DF4(result, a2);
    }

    sub_100016C08();
  }

  return result;
}

void sub_10002A9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C7FC(va);
  _Unwind_Resume(a1);
}

std::string *sub_10002A9E4(uint64_t a1)
{
  sub_100026E08(a1);
  sub_100026E08(a1 + 72);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;

  return std::string::assign((a1 + 192), "");
}

uint64_t sub_10002AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002C968();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void *sub_10002AAAC(void *a1, uint64_t a2)
{
  sub_10002C9B4(v4, a2);
  sub_10002CA4C(v4, a1);
  sub_10002B924(v4);
  return a1;
}

void sub_10002AC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001089A8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002AC48(void *a1)
{
  sub_100026DA8(a1);

  operator delete();
}

void sub_10002AC84()
{
  nullsub_7();

  operator delete();
}

uint64_t sub_10002ACBC(uint64_t a1, void *a2)
{
  v6 = 0;
  v7 = 0;
  __p = 0;
  if ((*(*a2 + 16))(a2) < 0x20)
  {
    return 1;
  }

  v3 = sub_10000C76C(a2, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10002AD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002AE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001089A8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002AE58(void *a1)
{
  sub_100026DA8(a1);

  operator delete();
}

void sub_10002AE94()
{
  nullsub_7();

  operator delete();
}

uint64_t sub_10002AECC(uint64_t result, uint64_t a2)
{
  **(a2 + 16) -= *(result + 8);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10002AEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 8))(*(a1 + 8), *(a1 + 16), a2, a3);
  *(a1 + 24) = a3;
  return 1;
}

uint64_t sub_10002AF5C(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 8))(*(a1 + 8), *(a1 + 16), a2);
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  *(a1 + 24) = v4;
  return 1;
}

uint64_t sub_10002AFCC(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16), a2);
  *(a1 + 24) = 8;
  return 1;
}

uint64_t sub_10002B028(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 16), a2);
  *(a1 + 24) = 8;
  return 1;
}

CFDataRef sub_10002B084(uint64_t a1, uint64_t a2)
{
  sub_100022AFC(&v9, a2);
  if (v9)
  {
    theData = 0;
    v3 = sub_10002308C(&v9, &theData);
    if (v3)
    {
      v4 = theData;
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(v4);
      *(a1 + 24) = Length;
      (*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 16), BytePtr, Length);
    }

    sub_100017D14(&theData);
  }

  else
  {
    v3 = 0;
  }

  sub_100017D14(&v9);
  return v3;
}

void sub_10002B148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100017D14(&a9);
  sub_100017D14(&a10);
  _Unwind_Resume(a1);
}

void sub_10002B174(uint64_t a1)
{
  *a1 = off_100186B48;
  sub_100017D14((a1 + 8));

  operator delete();
}

BOOL sub_10002B1D8(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  sub_100019910(&v6, a2, a3);
  v4 = (a1 + 8);
  if (&v6 != v4)
  {
    if (*v4)
    {
      CFRelease(*v4);
    }

    *v4 = v6;
    v6 = 0;
  }

  sub_100017D14(&v6);
  return *v4 != 0;
}

void sub_10002B244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

BOOL sub_10002B258(uint64_t a1, const UInt8 *a2)
{
  sub_1000228AC(&v5, a2);
  v3 = (a1 + 8);
  if (&v5 != v3)
  {
    if (*v3)
    {
      CFRelease(*v3);
    }

    *v3 = v5;
    v5 = 0;
  }

  sub_100017D14(&v5);
  return *v3 != 0;
}

void sub_10002B2C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

BOOL sub_10002B2D8(uint64_t a1, uint64_t a2)
{
  sub_100022970(&v5, a2);
  v3 = (a1 + 8);
  if (&v5 != v3)
  {
    if (*v3)
    {
      CFRelease(*v3);
    }

    *v3 = v5;
    v5 = 0;
  }

  sub_100017D14(&v5);
  return *v3 != 0;
}

void sub_10002B344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

BOOL sub_10002B358(uint64_t a1, int a2)
{
  sub_1000229E4(&v5, a2);
  v3 = (a1 + 8);
  if (&v5 != v3)
  {
    if (*v3)
    {
      CFRelease(*v3);
    }

    *v3 = v5;
    v5 = 0;
  }

  sub_100017D14(&v5);
  return *v3 != 0;
}

void sub_10002B3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

BOOL sub_10002B3D8(uint64_t a1, uint64_t a2)
{
  sub_100022AFC(&v5, a2);
  v3 = (a1 + 8);
  if (&v5 != v3)
  {
    if (*v3)
    {
      CFRelease(*v3);
    }

    *v3 = v5;
    v5 = 0;
  }

  sub_100017D14(&v5);
  return *v3 != 0;
}

void sub_10002B444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

BOOL sub_10002B458(uint64_t a1, const void ***a2)
{
  sub_100022B88(&v5, a2);
  v3 = (a1 + 8);
  if (&v5 != v3)
  {
    if (*v3)
    {
      CFRelease(*v3);
    }

    *v3 = v5;
    v5 = 0;
  }

  sub_100017D14(&v5);
  return *v3 != 0;
}

void sub_10002B4C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10002B4D8(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_10002B644((a1 + 1), 16);
  return a1;
}

void sub_10002B61C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10002B644(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10002B700(a1);
  return a1;
}

void sub_10002B6D8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10002B700(uint64_t a1)
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

uint64_t sub_10002B808(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_10002B924(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10002B9A4(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    sub_10002BCF8(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = sub_10002BBE8(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return sub_10002BAD0(this, __n_add, v8, a3, a4);
}

void sub_10002BAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002BAD0(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, char *a4, char *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a4 != a5)
  {
    v15 = v12 + __n_copy;
    do
    {
      v16 = *a4++;
      *v15++ = v16;
    }

    while (a4 != a5);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

uint64_t sub_10002BBE8(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void sub_10002BCF8(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_10002BD50(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

_BYTE *sub_10002BD80(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002358C();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_10002BE2C(uint64_t a1)
{
  sub_10002BE68(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002BE68(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10002BEAC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10002BEAC(uint64_t a1)
{
  sub_100017D14((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10002BEFC(uint64_t a1, size_t __n)
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

      sub_10002BFEC(a1, prime);
    }
  }
}

void sub_10002BFEC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100023634();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **sub_10002C150(void *a1, const void **a2)
{
  v4 = sub_10001A5B0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_10002C3C4();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001A998(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10002C3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C474(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C474(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10002BEAC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_10002C4C0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_10002C56C(void *a1, uint64_t a2)
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

void *sub_10002C62C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10002358C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10002C6D0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100017D14(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10002C754(uint64_t a1, const void **a2, const void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a4 - 8;
    v8 = a2;
    do
    {
      v9 = *v8;
      *(v7 + 8) = *v8;
      if (v9)
      {
        CFRetain(v9);
      }

      ++v8;
      v6 -= 8;
      v7 += 8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_100017D14(v5++);
    }
  }
}

void sub_10002C7D8(_Unwind_Exception *exception_object)
{
  for (; v2; v2 += 8)
  {
    sub_100017D14(v1--);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002C7FC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_100017D14((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10002C84C(uint64_t a1, const void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_100016C08();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_100017DF4(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    CFRetain(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = *(a1 + 8);
  v12 = v8 + *a1 - v11;
  sub_10002C754(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10002C7FC(&v17);
  return v16;
}

void sub_10002C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002C7FC(va);
  _Unwind_Resume(a1);
}

void sub_10002C968()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_10002C9B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10002CA4C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10002CCA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000231E8(a1);
}

uint64_t sub_10002CCD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  sub_100034468(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = off_100186BB0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_10000CB64(a1 + 24, 0, 0, 0);
  *(a1 + 48) = 0xFFFFFFFF00000000;
  *(a1 + 56) = a1 + 24;
  *(a1 + 64) = a1 + 24;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return a1;
}

void *sub_10002CDEC(void *a1)
{
  *a1 = off_100186BB0;
  sub_100026E08(a1);
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return sub_100034494(a1);
}

void sub_10002CE58(void *a1)
{
  sub_10002CDEC(a1);

  operator delete();
}

uint64_t sub_10002CE90(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = *v1++;
    result = (v4 - result + 32 * result);
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_10002CEC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 28) - *(*(a1 + 56) + 28));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002CF04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 32) = v2;
  *(result + 40) = a2;
  *(v2 + 40) = result;
  *(*(result + 40) + 32) = result;
  return result;
}

uint64_t sub_10002CF1C(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  *(v2 + 40) = v1;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_10002CF2C(uint64_t result)
{
  *(result + 208) = 0;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  v1 = *(result + 64);
  if (v1 != result + 24)
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    *(v3 + 40) = v2;
    *(v2 + 32) = v3;
    v4 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  *(result + 216) = 0;
  return result;
}

uint64_t sub_10002CFC4(uint64_t a1, uint64_t *a2)
{
  sub_1000272D4(a2);
  for (i = *(a1 + 56); i != (a1 + 24); i = i[4])
  {
    sub_10002D020(a2, i);
  }

  return *(a1 + 216);
}

uint64_t sub_10002D020(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10002D0B0(a1, a2);
  }

  else
  {
    sub_10002D060(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10002D060(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_10000CB64(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_10002D0B0(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100016C08();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100028244(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_10000CB64(24 * v2, *a2, a2[1], a2[1] - *a2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_10002829C(&v14);
  return v8;
}

void sub_10002D1C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002829C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D4C8(void *a1, void *a2)
{
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PSAppChannelSubscriptionResponse);
        [a1 addAppChannelSubscriptionResponse:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10007FAB8(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10002F0EC(uint64_t a1)
{
  if (a1 != &xmmword_1001C0408)
  {
    dword_1001C0428 = *(a1 + 32);
    sub_10002F9C8(&xmmword_1001C0408, *(a1 + 16), 0);
  }
}

void *sub_10002F128(void *a1, uint64_t a2)
{
  sub_1000301B4(v4, a2);
  sub_10003024C(v4, a1);
  sub_10002F8C0(v4);
  return a1;
}

uint64_t sub_10002F1A4(uint64_t result, int a2, std::string *__str)
{
  if (!*(result + 488))
  {
    v3 = result;
    *(result + 488) = a2;
    v4 = result + 496;
    std::string::operator=((result + 496), __str);
    if (qword_1001C0400)
    {
      return sub_10002F304(&unk_1001C03E8, v3, *(v3 + 520));
    }

    else
    {
      v5 = sub_1000231FC(&std::cerr, "Encoder error: ", 15);
      v6 = *(v3 + 519);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *(v3 + 496);
      }

      if (v6 >= 0)
      {
        v8 = *(v3 + 519);
      }

      else
      {
        v8 = *(v3 + 504);
      }

      v9 = sub_1000231FC(v5, v7, v8);
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v10 = std::locale::use_facet(&v11, &std::ctype<char>::id);
      (v10->__vftable[2].~facet_0)(v10, 10);
      std::locale::~locale(&v11);
      std::ostream::put();
      return std::ostream::flush();
    }
  }

  return result;
}

uint64_t sub_10002F304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002C968();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

std::string *sub_10002F3AC(uint64_t a1)
{
  sub_100026E08(a1);
  sub_100026E08(a1 + 224);
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 488) = 0;

  return std::string::assign((a1 + 496), "");
}

void sub_10002F410(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = -31;
  }

  else
  {
    v3 = -32;
  }

  v4 = v3;
  sub_10000B6B8(a2, &v4);
}

uint64_t sub_10002F448(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_10000B7A8(a1, a2, a3, &v10, &v9);
  if (v6)
  {
    if (a4)
    {
      v7 = -31;
    }

    else
    {
      v7 = -32;
    }

    v11 = v7;
    sub_10000B6B8(a2, &v11);
  }

  return v6;
}

uint64_t sub_10002F4B0(int a1, uint64_t a2, CFBooleanRef BOOLean)
{
  if (CFBooleanGetValue(BOOLean))
  {
    v4 = -31;
  }

  else
  {
    v4 = -32;
  }

  v6 = v4;
  sub_10000B6B8(a2, &v6);
  return 1;
}

uint64_t *sub_10002F510(uint64_t *a1, char a2, int a3, int a4)
{
  v10 = a2;
  if (!*(*a1 + 488))
  {
    if (sub_10000B3E4(a1, 2uLL))
    {
      v7 = *a1;
      sub_10000B360(__p, 1);
      sub_10000BA24(v7, (a1 + 2), __p, a3, a4);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_10002F5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002F5D4(uint64_t *a1, char a2, int a3)
{
  v8 = a2;
  if (!*(*a1 + 488))
  {
    if (sub_10000B3E4(a1, 1uLL))
    {
      v5 = *a1;
      sub_10000B360(__p, 1);
      sub_10002F448(v5, (a1 + 2), __p, a3);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_10002F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002F748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001089A8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002F764(void *a1)
{
  sub_10002CDEC(a1);

  operator delete();
}