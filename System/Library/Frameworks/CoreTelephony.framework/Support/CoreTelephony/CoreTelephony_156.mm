void sub_10136CDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100F98440(&a36);
  if (*(v43 - 217) < 0)
  {
    operator delete(*(v43 - 240));
  }

  if (*(v43 - 153) < 0)
  {
    operator delete(*(v43 - 176));
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  xpc_release(*(v43 - 104));
  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
  }

  if ((v42 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  _Unwind_Resume(a1);
}

const void **sub_10136CFD8(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = 0;
  sub_10136E680(&v33, a2, a3);
  if (!v33)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return sub_10001021C(&v33);
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *v26 = 0u;
  *v23 = 0u;
  *v24 = 0u;
  ServiceMap = Registry::getServiceMap(*(a2 + 64));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_11:
  v22 = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  (*(*v13 + 32))(v23, v13, &v22);
  sub_10001021C(&v22);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(__p, v31, *(&v31 + 1));
  }

  else
  {
    *__p = v31;
    v21 = v32;
  }

  v15 = HIBYTE(v21);
  v16 = HIBYTE(v21);
  if (v21 < 0)
  {
    v15 = __p[1];
  }

  if (!v15)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (v16 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  theDict = 0;
  Registry::getFileSystemInterface(&buf, *(a2 + 64));
  (*(*buf + 152))(&theDict);
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (theDict)
  {
    if (CFDictionaryContainsKey(theDict, @"CarrierName"))
    {
      CFDictionaryGetValue(theDict, @"CarrierName");
      buf = 0uLL;
      v35 = 0;
      ctu::cf::assign();
      *a1 = buf;
      a1[2] = v35;
      goto LABEL_31;
    }

    v17 = *(a2 + 56);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Carrier name key does not exist", &buf, 2u);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
LABEL_31:
  sub_10001021C(&theDict);
  if (v21 < 0)
  {
LABEL_32:
    operator delete(__p[0]);
  }

LABEL_33:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[1]);
  }

  if (SHIBYTE(v27[0]) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[0]);
  }

  return sub_10001021C(&v33);
}

void sub_10136D30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1002F27AC(&a19);
  sub_10001021C((v21 - 120));
  _Unwind_Resume(a1);
}

double sub_10136D3A8(Registry *a1)
{
  ServiceMap = Registry::getServiceMap(a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v14 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v14);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (!v9)
  {
LABEL_7:
    Current = CFAbsoluteTimeGetCurrent();
    goto LABEL_11;
  }

LABEL_10:
  Current = (*(*v9 + 96))(v9);
LABEL_11:
  v12 = Current;
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return v12;
}

void sub_10136D4C0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10136D4E0(uint64_t a1, double a2, double a3)
{
  if (a3 >= a2)
  {
    return ((a3 - a2) / 3600.0);
  }

  v3 = *(a1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_101373BC0(v11);
    v5 = v12;
    v6 = v11[0];
    sub_101373BC0(__p);
    v7 = v11;
    if (v5 < 0)
    {
      v7 = v6;
    }

    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "End time [%s] is before start time [%s]! Returning zero.", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  return 0;
}

void sub_10136D624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10136D648(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  v10 = a3;
  sub_100074920(&v11, a4);
  v7 = *(a1 + 32);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10136D7E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void sub_10136D824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v6[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10136D9E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

uint64_t sub_10136DA2C(uint64_t a1)
{
  v2 = *(a1 + 1152);
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (sub_10136DCB8(a1))
    {
      v15 = *(a1 + 56);
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        LOWORD(v21) = 0;
        v4 = "#I Device currently has no SIMs, returning false";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v4, &v21, 2u);
        return 0;
      }
    }

    else
    {
      v5 = *(a1 + 1216);
      v6 = *(a1 + 1224);
      if (v5 == v6)
      {
        v7 = 0;
LABEL_34:
        v17 = 1;
      }

      else
      {
        v7 = 0;
        v8 = (a1 + 1248);
        v9 = (a1 + 1272);
        while (1)
        {
          if (subscriber::isSimReady())
          {
            ++v7;
            v10 = *v8;
            if (*v8)
            {
              v11 = *v5;
              v12 = a1 + 1248;
              do
              {
                if (*(v10 + 28) >= v11)
                {
                  v12 = v10;
                }

                v10 = *(v10 + 8 * (*(v10 + 28) < v11));
              }

              while (v10);
              if (v12 != v8 && v11 >= *(v12 + 28) && *(v12 + 32) == 1)
              {
                v18 = *(a1 + 56);
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }
            }

            v13 = *v9;
            if (*v9)
            {
              v14 = *v5;
              v12 = a1 + 1272;
              do
              {
                if (*(v13 + 28) >= v14)
                {
                  v12 = v13;
                }

                v13 = *(v13 + 8 * (*(v13 + 28) < v14));
              }

              while (v13);
              if (v12 != v9 && v14 >= *(v12 + 28) && *(v12 + 32) == 1)
              {
                break;
              }
            }
          }

          v5 += 42;
          if (v5 == v6)
          {
            goto LABEL_34;
          }
        }

        v18 = *(a1 + 56);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

LABEL_42:
        v19 = subscriber::asString();
        v20 = *(v12 + 32);
        v21 = 136315394;
        v22 = v19;
        v23 = 1024;
        v24 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I slot %s roamingSetting = %d", &v21, 0x12u);
LABEL_43:
        v17 = 0;
      }

      if (v7)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v15 = *(a1 + 56);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v21) = 0;
      v4 = "#I Bootstrap is enabled, returning false";
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t sub_10136DCB8(uint64_t *a1)
{
  for (i = a1[149]; ; i += 88)
  {
    if (i == a1[150])
    {
      v5 = a1[152];
      v6 = a1[153];
      while (1)
      {
        if (v5 == v6)
        {
          return 1;
        }

        if (*(v5 + 95) < 0)
        {
          v7 = *(v5 + 80);
          if (!v7)
          {
            goto LABEL_21;
          }

          sub_100005F2C(__p, *(v5 + 72), v7);
        }

        else
        {
          if (!*(v5 + 95))
          {
            goto LABEL_21;
          }

          *__p = *(v5 + 72);
          v12 = *(v5 + 88);
        }

        v8 = sub_10136BCA0(a1[149], a1[150], __p);
        v9 = v8;
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
          if ((v9 & 1) == 0)
          {
            return 0;
          }
        }

        else if (!v8)
        {
          return 0;
        }

LABEL_21:
        v5 += 168;
      }
    }

    if (*(i + 80) == 1)
    {
      v3 = *(i + 56);
      v4 = *(i + 64);
      if (v3 != v4)
      {
        while (*(v3 + 89) == 1)
        {
          v3 += 216;
          if (v3 == v4)
          {
            goto LABEL_9;
          }
        }
      }

      if (v3 != v4)
      {
        break;
      }
    }

LABEL_9:
    ;
  }

  return 0;
}

uint64_t sub_10136DDC4(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1013883EC;
  v6[3] = &unk_101EA6CB8;
  v6[4] = a1 + 24;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_101386EAC;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000589B8;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3 & 1;
}

uint64_t sub_10136DF14(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_101388618;
  v6[3] = &unk_101EA6CB8;
  v6[4] = a1 + 24;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_101386EAC;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000589B8;
    v11 = &unk_101E26940;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3 & 1;
}

void sub_10136E064(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10136E154(uint64_t a1, uint64_t a2)
{
  v43 = 0;
  sub_10136E680(&v43, a1, a2);
  if (v43)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    *v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    *v36 = 0u;
    *buf = 0u;
    *v34 = 0u;
    ServiceMap = Registry::getServiceMap(*(a1 + 64));
    v5 = ServiceMap;
    if (v6 < 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, __p);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
LABEL_13:
    v32 = v43;
    if (v43)
    {
      CFRetain(v43);
    }

    (*(*v12 + 32))(buf, v12, &v32);
    sub_10001021C(&v32);
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }

    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    if (SHIBYTE(v42) < 0)
    {
      sub_100005F2C(__p, v41, *(&v41 + 1));
    }

    else
    {
      *__p = v41;
      v31 = v42;
    }

    v16 = HIBYTE(v31);
    if (v31 < 0)
    {
      v16 = __p[1];
    }

    if (!v16)
    {
      v24 = *(a1 + 56);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "missing bundle path", v44, 2u);
      }

      v15 = 1;
      goto LABEL_39;
    }

    theDict = 0;
    Registry::getFileSystemInterface(v44, *(a1 + 64));
    (*(**v44 + 152))(&theDict);
    if (*&v44[8])
    {
      sub_100004A34(*&v44[8]);
    }

    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"GeofenceOptimizations");
      v18 = Value;
      if (Value)
      {
        v19 = CFGetTypeID(Value);
        if (v19 == CFDictionaryGetTypeID())
        {
          if (CFDictionaryContainsKey(v18, @"Enabled"))
          {
            v20 = CFDictionaryGetValue(v18, @"Enabled");
            v21 = v20;
            v44[0] = 0;
            if (v20)
            {
              v22 = CFGetTypeID(v20);
              if (v22 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(v44, v21, v23);
                LODWORD(v21) = v44[0];
              }

              else
              {
                LODWORD(v21) = 0;
              }
            }

            v27 = *(a1 + 56);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a2 + 23) >= 0)
              {
                v28 = a2;
              }

              else
              {
                v28 = *a2;
              }

              *v44 = 136315394;
              *&v44[4] = v28;
              *&v44[12] = 1024;
              *&v44[14] = v21;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I cb reports iccid [%s] is private network [%d]", v44, 0x12u);
            }

            v15 = v21 ^ 1;
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      v25 = *(a1 + 56);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "missing carrier dict", v44, 2u);
      }
    }

    v15 = 1;
LABEL_38:
    sub_10001021C(&theDict);
LABEL_39:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }

    if (SBYTE7(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[1]);
    }

    if (SHIBYTE(v37[0]) < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[1]);
    }

    if (SHIBYTE(v34[0]) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_53;
  }

  v14 = *(a1 + 56);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "missing matching criteria", buf, 2u);
  }

  v15 = 1;
LABEL_53:
  sub_10001021C(&v43);
  return v15 & 1;
}

void sub_10136E5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1002F27AC(&a19);
  sub_10001021C((v21 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_10136E680(uint64_t *a1, void *a2, uint64_t a3)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v33 = *(a3 + 16);
  }

  v6 = a2[149];
  v7 = a2[150];
  if (v6 != v7)
  {
    if (v33 >= 0)
    {
      v8 = HIBYTE(v33);
    }

    else
    {
      v8 = __p[1];
    }

    if (v33 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    do
    {
      if (*(v6 + 80) == 1)
      {
        v10 = *(v6 + 56);
        v11 = *(v6 + 64);
        while (v10 != v11)
        {
          v12 = *(v10 + 39);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v10 + 24);
          }

          if (v12 == v8)
          {
            v14 = v13 >= 0 ? (v10 + 16) : *(v10 + 16);
            if (!memcmp(v14, v9, v8))
            {
              sub_100F11F00(&v35, v10);
              goto LABEL_25;
            }
          }

          v10 += 216;
        }
      }

      v6 += 88;
    }

    while (v6 != v7);
  }

  v38 = 0u;
  memset(v39, 0, 29);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
LABEL_25:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = BYTE7(v37);
  if (SBYTE7(v37) < 0)
  {
    v15 = *(&v36 + 1);
  }

  if (v15)
  {
    VinylProfileDetails::createCarrierBundleCriteria(a1, &v35);
    return sub_100E3A5D4(&v35);
  }

  *a1 = 0;
  v16 = a2[152];
  v17 = a2[153];
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v31 = *(a3 + 16);
  }

  v18 = HIBYTE(v31);
  if (v16 == v17)
  {
    v17 = v16;
LABEL_52:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (v31 >= 0)
    {
      v19 = HIBYTE(v31);
    }

    else
    {
      v19 = __dst[1];
    }

    if (v31 >= 0)
    {
      v20 = __dst;
    }

    else
    {
      v20 = __dst[0];
    }

    v21 = v16 + 72;
    while (1)
    {
      v22 = v21[23];
      v23 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 1);
      }

      if (v22 == v19)
      {
        v24 = v23 >= 0 ? v21 : *v21;
        if (!memcmp(v24, v20, v19))
        {
          break;
        }
      }

      v25 = (v21 + 96);
      v21 += 168;
      if (v25 == v17)
      {
        goto LABEL_52;
      }
    }

    v17 = (v21 - 72);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_54;
    }
  }

  operator delete(__dst[0]);
LABEL_54:
  if (v17 == a2[153])
  {
    v26 = a2[7];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Failed to find iccid (%s)", buf, 0xCu);
    }
  }

  else
  {
    BasicSimInfo::createBundleCriteria(&v29, v17);
    if (&v29 != a1)
    {
      *buf = *a1;
      *a1 = v29;
      v29 = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(&v29);
  }

  return sub_100E3A5D4(&v35);
}

void sub_10136E9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_10001021C(v24);
  sub_100E3A5D4(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_10136EA08(void *a1, const void **a2)
{
  v4 = a1[152];
  v5 = a1[153];
  if (v4 != v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = v4 + 72;
    do
    {
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        if (!*(v9 + 8))
        {
          goto LABEL_20;
        }
      }

      else if (!*(v9 + 23))
      {
        goto LABEL_20;
      }

      v11 = *(v9 + 8);
      if (v10 >= 0)
      {
        v11 = *(v9 + 23);
      }

      if (v11 == v7)
      {
        v12 = v10 >= 0 ? v9 : *v9;
        if (!memcmp(v12, v8, v7))
        {
          return 1;
        }
      }

LABEL_20:
      v13 = v9 + 96;
      v9 += 168;
    }

    while (v13 != v5);
  }

  v14 = a1[149];
  for (i = a1[150]; v14 != i; v14 += 88)
  {
    if (*(v14 + 80) == 1)
    {
      v16 = *(v14 + 56);
      v17 = *(v14 + 64);
      while (v16 != v17)
      {
        v37 = 0;
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
        v24 = 0u;
        sub_100F11F00(&v24, v16);
        if ((BYTE9(v29) & 1) == 0)
        {
          if ((SBYTE7(v26) & 0x80u) == 0)
          {
            v18 = BYTE7(v26);
          }

          else
          {
            v18 = *(&v25 + 1);
          }

          v19 = *(a2 + 23);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = a2[1];
          }

          if (v18 == v19)
          {
            v21 = (SBYTE7(v26) & 0x80u) == 0 ? &v25 : v25;
            v22 = v20 >= 0 ? a2 : *a2;
            if (!memcmp(v21, v22, v18))
            {
              sub_100E3A5D4(&v24);
              return 1;
            }
          }
        }

        sub_100E3A5D4(&v24);
        v16 += 216;
      }
    }
  }

  return 0;
}

BOOL sub_10136EBE4(uint64_t a1, uint64_t a2)
{
  if (a1 + 1112 == sub_100007A6C(a1 + 1104, a2) || *(sub_1000E20F0(a1 + 1104, a2) + 80) == 0.0)
  {
    return 0;
  }

  v5 = sub_10136D3A8(*(a1 + 64));
  v6 = v5 - *(sub_1000E20F0(a1 + 1104, a2) + 80);
  v7 = *(a1 + 56);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 <= 5184000.0)
  {
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v10 = 136315394;
      v11 = v9;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Plan (%s) still valid, latest registration was [%f] seconds ago", &v10, 0x16u);
      return 0;
    }
  }

  else
  {
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Plan (%s) has expired", &v10, 0xCu);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10136ED5C(uint64_t a1)
{
  v1 = *(a1 + 1104);
  v2 = (a1 + 1112);
  if (v1 == (a1 + 1112))
  {
    return 0;
  }

  do
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    *__p = 0u;
    v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
    sub_101380DE0(v8, v1 + 2);
    v3 = BYTE8(v9);
    if (v14 == 1 && SHIBYTE(v13) < 0)
    {
      operator delete(__p[1]);
    }

    sub_100009970(&v10 + 8, v11);
    if (SBYTE7(v9) < 0)
    {
      operator delete(v8[0]);
    }

    if (v3)
    {
      break;
    }

    v4 = *(v1 + 1);
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = *(v1 + 2);
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return v3;
}

uint64_t sub_10136EE40(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100009970(a1 + 40, *(a1 + 48));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10136EE9C(uint64_t *a1, void **a2)
{
  v2 = a1[152];
  v3 = a1[153];
  if (v2 != v3)
  {
    v6 = a1 + 139;
    v7 = v2 + 72;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_100005F2C(__p, *v7, *(v7 + 8));
      }

      else
      {
        v8 = *v7;
        v15 = *(v7 + 16);
        *__p = v8;
      }

      v9 = sub_10136BCA0(a1[149], a1[150], __p);
      v10 = v9;
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
        if (v10)
        {
          goto LABEL_14;
        }
      }

      else if (v9)
      {
        goto LABEL_14;
      }

      if (subscriber::isSimReady())
      {
        if (v6 != sub_100007A6C((a1 + 138), v7) && *(sub_1000E20F0((a1 + 138), v7) + 8) == 3)
        {
          v11 = sub_1000E20F0((a1 + 138), v7);
          if (v11 + 24 != sub_100007A6C(v11 + 16, a2))
          {
            return 1;
          }
        }
      }

LABEL_14:
      v12 = v7 + 96;
      v7 += 168;
    }

    while (v12 != v3);
  }

  return 0;
}

BOOL sub_10136EFC4(uint64_t a1, void **a2)
{
  if (a1 + 1112 == sub_100007A6C(a1 + 1104, a2))
  {
    return 0;
  }

  if (*(sub_1000E20F0(a1 + 1104, a2) + 8) == 3)
  {
    v4 = *(a1 + 56);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Ignore the list from entitlement", v6, 2u);
    return 0;
  }

  return *(sub_1000E20F0(a1 + 1104, a2) + 32) != 0;
}

void sub_10136F078(uint64_t a1)
{
  if (*(a1 + 368) == 1)
  {
    if (*(a1 + 335) < 0)
    {
      operator delete(*(a1 + 312));
    }

    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    sub_100009970(a1 + 264, *(a1 + 272));
    sub_100FF11AC(a1 + 24);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 368) = 0;
  }
}

uint64_t sub_10136F0F0(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  sub_10136E680(&v35, a1, a2);
  if (!v35)
  {
    LOBYTE(v13) = 0;
    goto LABEL_43;
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_10:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_11:
  v24 = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  (*(*v11 + 32))(v25, v11, &v24);
  sub_10001021C(&v24);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  if (SHIBYTE(v34) < 0)
  {
    sub_100005F2C(__p, v33, *(&v33 + 1));
  }

  else
  {
    *__p = v33;
    v23 = v34;
  }

  v14 = HIBYTE(v23);
  if (v23 < 0)
  {
    v14 = __p[1];
  }

  if (!v14)
  {
    LOBYTE(v13) = 0;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  theDict = 0;
  Registry::getFileSystemInterface(&v19, *(a1 + 64));
  (*(*v19 + 152))(&theDict);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (!theDict || !CFDictionaryContainsKey(theDict, @"GlobalMVNO"))
  {
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(theDict, @"GlobalMVNO");
  v13 = Value;
  LOBYTE(v19) = 0;
  if (!Value)
  {
    goto LABEL_29;
  }

  v16 = CFGetTypeID(Value);
  if (v16 == CFBooleanGetTypeID())
  {
    ctu::cf::assign(&v19, v13, v17);
    LOBYTE(v13) = v19;
  }

  else
  {
LABEL_28:
    LOBYTE(v13) = 0;
  }

LABEL_29:
  sub_10001021C(&theDict);
  if (v23 < 0)
  {
LABEL_30:
    operator delete(__p[0]);
  }

LABEL_31:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  if (SHIBYTE(v26[0]) < 0)
  {
    operator delete(v25[0]);
  }

LABEL_43:
  sub_10001021C(&v35);
  return v13 & 1;
}

void sub_10136F3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1002F27AC(&a21);
  sub_10001021C((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_10136F470(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  ServiceMap = Registry::getServiceMap(*(a2 + 64));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v20 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
  if (!v12)
  {
    v14 = 0;
LABEL_10:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
LABEL_7:
      v16 = *(a2 + 56);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to get isoCache", &v20, 2u);
      }

      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_11:
  (*(*v14 + 64))(&v20, v14, a3);
  v17 = v20;
  if (v20 == v21)
  {
    v18 = *(a2 + 56);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "mccs are empty", buf, 2u);
    }

    goto LABEL_25;
  }

  while ((*(v17 + 23) & 0x80000000) == 0)
  {
    if (*(v17 + 23))
    {
      goto LABEL_21;
    }

LABEL_16:
    v17 += 24;
    if (v17 == v21)
    {
      goto LABEL_25;
    }
  }

  if (!*(v17 + 8))
  {
    goto LABEL_16;
  }

  v17 = *v17;
LABEL_21:
  v19 = *v17;
  if (*(v5 + 23) < 0)
  {
    v5[1] = 1;
    v5 = *v5;
  }

  else
  {
    *(v5 + 23) = 1;
  }

  *v5 = v19;
  *(v5 + 1) = 0;
LABEL_25:
  *buf = &v20;
  sub_1000087B4(buf);
LABEL_26:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10136F694(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10136F6C8(uint64_t a1)
{
  v2 = sub_10136DCB8(a1);
  if (v2)
  {
    goto LABEL_95;
  }

  if (capabilities::ct::dataOnlySingleSIMDevice(v2))
  {
    v3 = *(a1 + 1216);
    v4 = *(a1 + 1224);
    if (v3 != v4)
    {
      v5 = (a1 + 1248);
      while (1)
      {
        if (*(v3 + 95) < 0)
        {
          sub_100005F2C(__p, *(v3 + 9), *(v3 + 10));
        }

        else
        {
          *__p = *(v3 + 18);
          v49 = *(v3 + 11);
        }

        v6 = sub_10136BCA0(*(a1 + 1192), *(a1 + 1200), __p);
        v7 = v6;
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p[0]);
          if (v7)
          {
            goto LABEL_21;
          }
        }

        else if (v6)
        {
          goto LABEL_21;
        }

        if (subscriber::isSimReady())
        {
          v8 = *v5;
          if (*v5)
          {
            v9 = *v3;
            v10 = a1 + 1248;
            do
            {
              if (*(v8 + 28) >= v9)
              {
                v10 = v8;
              }

              v8 = *(v8 + 8 * (*(v8 + 28) < v9));
            }

            while (v8);
            if (v10 != v5 && v9 >= *(v10 + 28) && (*(v10 + 32) & 1) != 0)
            {
              v44 = 1;
              return v44 & 1;
            }
          }
        }

LABEL_21:
        v3 += 42;
        if (v3 == v4)
        {
          goto LABEL_95;
        }
      }
    }

    goto LABEL_95;
  }

  if (*(a1 + 447) < 0)
  {
    sub_100005F2C(v46, *(a1 + 424), *(a1 + 432));
  }

  else
  {
    *v46 = *(a1 + 424);
    v47 = *(a1 + 440);
  }

  v11 = *(a1 + 1216);
  v12 = *(a1 + 1224);
  if (SHIBYTE(v47) < 0)
  {
    sub_100005F2C(__p, v46[0], v46[1]);
  }

  else
  {
    *__p = *v46;
    v49 = v47;
  }

  v13 = HIBYTE(v49);
  if (v11 == v12)
  {
    v12 = v11;
LABEL_47:
    if (v13 < 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v49 >= 0)
    {
      v14 = HIBYTE(v49);
    }

    else
    {
      v14 = __p[1];
    }

    if (v49 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = v11 + 18;
    while (1)
    {
      v17 = *(v16 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 1);
      }

      if (v17 == v14)
      {
        v19 = v18 >= 0 ? v16 : *v16;
        if (!memcmp(v19, v15, v14))
        {
          break;
        }
      }

      v20 = v16 + 24;
      v16 += 42;
      if (v20 == v12)
      {
        goto LABEL_47;
      }
    }

    v12 = v16 - 18;
    if (v13 < 0)
    {
LABEL_48:
      operator delete(__p[0]);
    }
  }

  if (v12 != *(a1 + 1224))
  {
    v21 = *v12;
    if (*v12)
    {
      v22 = *(a1 + 56);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

      v23 = SHIBYTE(v47);
      v24 = v46[0];
      v25 = subscriber::asString();
      v26 = v46;
      if (v23 < 0)
      {
        v26 = v24;
      }

      *buf = 136315394;
      v51 = v26;
      v52 = 2080;
      v53 = v25;
      v27 = "#I sim info -> slot for ICCID (%s) : (%s)";
      goto LABEL_85;
    }
  }

  v28 = *(a1 + 1192);
  v29 = *(a1 + 1200);
  if (v28 != v29)
  {
    if (v47 >= 0)
    {
      v30 = HIBYTE(v47);
    }

    else
    {
      v30 = v46[1];
    }

    if (v47 >= 0)
    {
      v31 = v46;
    }

    else
    {
      v31 = v46[0];
    }

    do
    {
      if (*(v28 + 80) == 1 && *(v28 + 12) == 3)
      {
        v33 = *(v28 + 56);
        v34 = *(v28 + 64);
        while (v33 != v34)
        {
          v35 = *(v33 + 39);
          v36 = v35;
          if ((v35 & 0x80u) != 0)
          {
            v35 = *(v33 + 24);
          }

          if (v35 == v30)
          {
            v37 = v36 >= 0 ? (v33 + 16) : *(v33 + 16);
            if (!memcmp(v37, v31, v30))
            {
              v21 = *(v28 + 4);
              if (!v21)
              {
                break;
              }

              goto LABEL_81;
            }
          }

          v33 += 216;
        }
      }

      v28 += 88;
    }

    while (v28 != v29);
  }

  v21 = 0;
LABEL_81:
  v22 = *(a1 + 56);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v38 = SHIBYTE(v47);
    v39 = v46[0];
    v40 = subscriber::asString();
    v41 = v46;
    if (v38 < 0)
    {
      v41 = v39;
    }

    *buf = 136315394;
    v51 = v41;
    v52 = 2080;
    v53 = v40;
    v27 = "#I vinyl info -> slot for ICCID (%s) : (%s)";
LABEL_85:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
  }

LABEL_86:
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  v42 = *(a1 + 1248);
  if (v42)
  {
    v43 = a1 + 1248;
    do
    {
      if (*(v42 + 28) >= v21)
      {
        v43 = v42;
      }

      v42 = *(v42 + 8 * (*(v42 + 28) < v21));
    }

    while (v42);
    if (v43 != a1 + 1248 && v21 >= *(v43 + 28))
    {
      v44 = *(v43 + 32);
      return v44 & 1;
    }
  }

LABEL_95:
  v44 = 0;
  return v44 & 1;
}

void sub_10136FAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10136FB18(uint64_t a1, uint64_t a2)
{
  if ((capabilities::ct::dataOnlySingleSIMDevice(a1) & 1) != 0 || !sub_10136AC30(a1))
  {
    return 0;
  }

  if (a1 + 1112 == sub_100007A6C(a1 + 1104, a2))
  {
LABEL_9:
    if (sub_10136E154(a1, a2))
    {
      v8 = *(a1 + 279);
      if (v8 < 0)
      {
        v8 = *(a1 + 264);
      }

      if (v8)
      {
        cf = 0;
        sub_10136E680(&cf, a1, a2);
        if (!cf)
        {
          v11 = *(a1 + 56);
          v7 = 0;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v12 = a2;
            }

            else
            {
              v12 = *a2;
            }

            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Iccid (%s) is not found.", buf, 0xCu);
            v7 = 0;
          }

          goto LABEL_198;
        }

        v83 = 0;
        v84 = 0;
        v85 = 0;
        v82 = cf;
        CFRetain(cf);
        sub_101370A08(&v83, a1, a2, &v82);
        sub_10001021C(&v82);
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v78 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        if (sub_10136F0F0(a1, a2))
        {
          v80 = 0;
          v81 = 0;
          v79 = &v80;
          goto LABEL_139;
        }

        v13 = *(a1 + 288);
        if (v13)
        {
          v14 = a1 + 288;
          do
          {
            v15 = sub_1000068BC((v13 + 32), a2);
            if ((v15 & 0x80u) == 0)
            {
              v14 = v13;
            }

            v13 = *(v13 + ((v15 >> 4) & 8));
          }

          while (v13);
          if (v14 != a1 + 288 && (sub_1000068BC(a2, (v14 + 32)) & 0x80) == 0)
          {
            *buf = 0;
            v16 = *sub_100005C2C(a1 + 280, buf, a2);
            if (!v16)
            {
              sub_1000A58E4("map::at:  key not found");
            }

            sub_100074920(&v79, v16 + 56);
            goto LABEL_139;
          }
        }

        ServiceMap = Registry::getServiceMap(*(a1 + 64));
        v18 = ServiceMap;
        if (v19 < 0)
        {
          v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
          v21 = 5381;
          do
          {
            v19 = v21;
            v22 = *v20++;
            v21 = (33 * v21) ^ v22;
          }

          while (v22);
        }

        std::mutex::lock(ServiceMap);
        *buf = v19;
        v23 = sub_100009510(&v18[1].__m_.__sig, buf);
        if (v23)
        {
          v24 = v23[3];
          v25 = v23[4];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v18);
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v25);
            v77 = 0;
            goto LABEL_44;
          }
        }

        else
        {
          v24 = 0;
        }

        std::mutex::unlock(v18);
        v25 = 0;
        v77 = 1;
LABEL_44:
        v76 = v25;
        if (v24)
        {
          if (v78)
          {
            v119 = 0;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v112 = 0u;
            memset(buf, 0, sizeof(buf));
            v26 = Registry::getServiceMap(*(a1 + 64));
            v27 = v26;
            if (v28 < 0)
            {
              v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
              v30 = 5381;
              do
              {
                v28 = v30;
                v31 = *v29++;
                v30 = (33 * v30) ^ v31;
              }

              while (v31);
            }

            std::mutex::lock(v26);
            *v98 = v28;
            v32 = sub_100009510(&v27[1].__m_.__sig, v98);
            if (v32)
            {
              v34 = v32[3];
              v33 = v32[4];
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v27);
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v33);
                v35 = 0;
LABEL_57:
                sub_100010024(&v107, &v78);
                (*(*v34 + 32))(buf, v34, &v107);
                sub_10001021C(&v107);
                if ((v35 & 1) == 0)
                {
                  sub_100004A34(v33);
                }

                __dst[0] = 0;
                __dst[1] = 0;
                v106 = 0;
                if (SHIBYTE(v119) < 0)
                {
                  sub_100005F2C(__dst, v118, *(&v118 + 1));
                }

                else
                {
                  *__dst = v118;
                  v106 = v119;
                }

                *v103 = 0u;
                v104 = 0u;
                *v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                *v100 = 0u;
                memset(v98, 0, sizeof(v98));
                sub_10004964C(v98, buf);
                v37 = HIBYTE(v106);
                if (v106 < 0)
                {
                  v37 = __dst[1];
                }

                if (v37)
                {
                  theDict = 0;
                  Registry::getFileSystemInterface(&v108, *(a1 + 64));
                  (*(*v108 + 152))(&theDict);
                  if (v109)
                  {
                    sub_100004A34(v109);
                  }

                  if (theDict && (Value = CFDictionaryGetValue(theDict, @"IntlDataRoamingAllowed"), (v39 = Value) != 0) && (v40 = CFGetTypeID(Value), v40 == CFArrayGetTypeID()))
                  {
                    v41 = v39;
                    v80 = 0;
                    v81 = 0;
                    v79 = &v80;
                    v93 = 0u;
                    v94 = 0u;
                    v95 = 0u;
                    v96 = 0u;
                    v42 = v41;
                    v43 = [v42 countByEnumeratingWithState:&v93 objects:&v108 count:16];
                    if (v43)
                    {
                      v44 = *v94;
                      do
                      {
                        for (i = 0; i != v43; i = i + 1)
                        {
                          if (*v94 != v44)
                          {
                            objc_enumerationMutation(v42);
                          }

                          v46 = *(*(&v93 + 1) + 8 * i);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            memset(&__str, 0, sizeof(__str));
                            v47 = v46;
                            sub_10000501C(&__str, [v46 UTF8String]);
                            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              size = __str.__r_.__value_.__l.__size_;
                            }

                            if (size)
                            {
                              v49 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
                              v50 = memchr(v49, 95, size);
                              if (v50)
                              {
                                if (v50 - v49 != -1)
                                {
                                  std::string::basic_string(v90, &__str, 0, v50 - v49, &__p);
                                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(__str.__r_.__value_.__l.__data_);
                                  }

                                  __str = *v90;
                                }
                              }
                            }

                            v91 = 0u;
                            memset(v90, 0, sizeof(v90));
                            sub_100A34BC8(v90);
                            __p = 0;
                            v88 = 0;
                            v89 = 0;
                            (*(*v24 + 24))(&__p, v24, v90);
                            v51 = SHIBYTE(v89);
                            if ((SHIBYTE(v89) & 0x8000000000000000) != 0)
                            {
                              v51 = v88;
                              if (v88)
                              {
                                p_p = __p;
                                goto LABEL_93;
                              }

LABEL_97:
                              operator delete(__p);
                            }

                            else if (HIBYTE(v89))
                            {
                              p_p = &__p;
LABEL_93:
                              v53 = &p_p[v51];
                              while (p_p != v53)
                              {
                                *p_p = __tolower(*p_p);
                                ++p_p;
                              }

                              sub_100073EE8(&v79, &__p);
                              if (SHIBYTE(v89) < 0)
                              {
                                goto LABEL_97;
                              }
                            }

                            if (SHIBYTE(v91) < 0)
                            {
                              operator delete(*&v90[24]);
                            }

                            if ((v90[23] & 0x80000000) != 0)
                            {
                              operator delete(*v90);
                            }

                            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__str.__r_.__value_.__l.__data_);
                            }

                            continue;
                          }
                        }

                        v43 = [v42 countByEnumeratingWithState:&v93 objects:&v108 count:16];
                      }

                      while (v43);
                    }

                    if (v81)
                    {
                      *v90 = a2;
                      v54 = (sub_1007AA92C(a1 + 280, a2) + 56);
                      if (v54 != &v79)
                      {
                        sub_1001730B8(v54, v79, &v80);
                      }
                    }
                  }

                  else
                  {
                    v80 = 0;
                    v81 = 0;
                    v79 = &v80;
                  }

                  sub_10001021C(&theDict);
                }

                else
                {
                  v80 = 0;
                  v81 = 0;
                  v79 = &v80;
                }

                if (SBYTE7(v104) < 0)
                {
                  operator delete(v103[0]);
                }

                if (SHIBYTE(v102) < 0)
                {
                  operator delete(v101[1]);
                }

                if (SHIBYTE(v101[0]) < 0)
                {
                  operator delete(v100[0]);
                }

                if (SHIBYTE(v99) < 0)
                {
                  operator delete(*&v98[24]);
                }

                if ((v98[23] & 0x80000000) != 0)
                {
                  operator delete(*v98);
                }

                if (SHIBYTE(v106) < 0)
                {
                  operator delete(__dst[0]);
                }

                if (SHIBYTE(v119) < 0)
                {
                  operator delete(v118);
                }

                if (SBYTE7(v117) < 0)
                {
                  operator delete(v116);
                }

                if (SHIBYTE(v115) < 0)
                {
                  operator delete(*(&v114 + 1));
                }

                if (SBYTE7(v114) < 0)
                {
                  operator delete(v113);
                }

                if (SHIBYTE(v112) < 0)
                {
                  operator delete(*&buf[24]);
                }

                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

LABEL_137:
                if ((v77 & 1) == 0)
                {
                  sub_100004A34(v76);
                }

LABEL_139:
                sub_10001021C(&v78);
                *&buf[8] = 0;
                *&buf[16] = 0;
                *buf = &buf[8];
                memset(v98, 0, 24);
                sub_10136F470(v98, a1, a1 + 256);
                v55 = v83;
                if (v83 != &v84)
                {
                  do
                  {
                    sub_10136F470(&v108, a1, (v55 + 4));
                    sub_10017695C(buf, &v108);
                    if (v110 < 0)
                    {
                      operator delete(v108);
                    }

                    v56 = v55[1];
                    if (v56)
                    {
                      do
                      {
                        v57 = v56;
                        v56 = *v56;
                      }

                      while (v56);
                    }

                    else
                    {
                      do
                      {
                        v57 = v55[2];
                        v58 = *v57 == v55;
                        v55 = v57;
                      }

                      while (!v58);
                    }

                    v55 = v57;
                  }

                  while (v57 != &v84);
                }

                if (*&buf[16] > 1uLL)
                {
                  goto LABEL_157;
                }

                if ((v98[23] & 0x80000000) != 0)
                {
                  if (*&v98[8] != 1)
                  {
                    goto LABEL_157;
                  }

                  v59 = *v98;
                }

                else
                {
                  if (v98[23] != 1)
                  {
                    goto LABEL_157;
                  }

                  v59 = v98;
                }

                if (*v59 == 50 && &buf[8] != sub_100007A6C(buf, v98))
                {
                  v60 = 1;
                  goto LABEL_158;
                }

LABEL_157:
                v60 = 0;
LABEL_158:
                if ((v98[23] & 0x80000000) != 0)
                {
                  operator delete(*v98);
                }

                sub_100009970(buf, *&buf[8]);
                if (v60)
                {
                  v61 = *(a1 + 56);
                  v7 = 0;
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v62 = a2;
                    }

                    else
                    {
                      v62 = *a2;
                    }

                    *buf = 136315138;
                    *&buf[4] = v62;
                    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Iccid (%s) works within Europe.", buf, 0xCu);
                    v7 = 0;
                  }

LABEL_197:
                  sub_100009970(&v79, v80);
                  sub_100009970(&v83, v84);
LABEL_198:
                  sub_10001021C(&cf);
                  return v7;
                }

                memset(v98, 0, 24);
                if (sub_1013715E0(a1))
                {
                  v63 = v98;
                  std::string::operator=(v98, (*(a1 + 1168) + 32));
                  if (v98[23] >= 0)
                  {
                    v64 = &v98[v98[23]];
                  }

                  else
                  {
                    v64 = (*v98 + *&v98[8]);
                  }

                  if (v98[23] < 0)
                  {
                    v63 = *v98;
                  }

                  while (v63 != v64)
                  {
                    *v63 = __tolower(*v63);
                    ++v63;
                  }

                  v7 = &v84 != sub_100007A6C(&v83, v98) || &v80 != sub_100007A6C(&v79, v98);
                  v72 = *(a1 + 56);
                  if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_195;
                  }

                  if (*(a2 + 23) >= 0)
                  {
                    v73 = a2;
                  }

                  else
                  {
                    v73 = *a2;
                  }

                  v74 = "does not ";
                  if (v7)
                  {
                    v74 = "";
                  }

                  v75 = v98;
                  *buf = 136315650;
                  if (v98[23] < 0)
                  {
                    v75 = *v98;
                  }

                  *&buf[4] = v73;
                  *&buf[12] = 2080;
                  *&buf[14] = v74;
                  *&buf[22] = 2080;
                  *&buf[24] = v75;
                  v69 = "#I Iccid (%s) %swork in (%s).";
                  v70 = v72;
                  v71 = 32;
                }

                else
                {
                  if (!v85)
                  {
                    v7 = 0;
                    goto LABEL_195;
                  }

                  v65 = sub_100007A6C(&v83, (a1 + 256));
                  v7 = &v84 == v65;
                  v66 = *(a1 + 56);
                  if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_195;
                  }

                  v67 = *a2;
                  v68 = "";
                  if (*(a2 + 23) >= 0)
                  {
                    v67 = a2;
                  }

                  if (&v84 == v65)
                  {
                    v68 = "does not ";
                  }

                  *buf = 136315394;
                  *&buf[4] = v67;
                  *&buf[12] = 2080;
                  *&buf[14] = v68;
                  v69 = "#I Iccid (%s) %swork in home country.";
                  v70 = v66;
                  v71 = 22;
                }

                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, v69, buf, v71);
LABEL_195:
                if ((v98[23] & 0x80000000) != 0)
                {
                  operator delete(*v98);
                }

                goto LABEL_197;
              }
            }

            else
            {
              v34 = 0;
            }

            std::mutex::unlock(v27);
            v33 = 0;
            v35 = 1;
            goto LABEL_57;
          }
        }

        else
        {
          v36 = *(a1 + 56);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Unable to get isoCache", buf, 2u);
          }
        }

        v80 = 0;
        v81 = 0;
        v79 = &v80;
        goto LABEL_137;
      }

      v9 = *(a1 + 56);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Home country is not set!", buf, 2u);
      }
    }

    return 0;
  }

  v4 = sub_1000E20F0(a1 + 1104, a2);
  sub_10000501C(buf, "*");
  v5 = sub_100007A6C(v4 + 16, buf);
  v6 = v4 + 24;
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v6 == v5)
  {
    if (*(sub_1000E20F0(a1 + 1104, a2) + 8) == 3)
    {
      return 0;
    }

    goto LABEL_9;
  }

  return 1;
}

void sub_101370810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, const void *a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, uint64_t a20, uint64_t a21, const void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, const void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  sub_100009970(&a15, a16);

  sub_10001021C(&a45);
  sub_10016C520(&a46);
  if (a67 < 0)
  {
    operator delete(__p);
  }

  sub_1002F27AC(v68 - 256);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  sub_10001021C(&a14);
  sub_100009970(&a19, a20);
  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

void sub_101370A08(uint64_t **a1, uint64_t a2, void **a3, const void **a4)
{
  v6 = a2;
  v7 = a2 + 1112;
  if (a2 + 1112 != sub_100007A6C(a2 + 1104, a3) && *(sub_1000E20F0(v6 + 1104, a3) + 32))
  {
    v8 = sub_1000E20F0(v6 + 1104, a3) + 16;

    sub_100074920(a1, v8);
    return;
  }

  if (sub_10136F0F0(v6, a3))
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
    return;
  }

  ServiceMap = Registry::getServiceMap(*(v6 + 64));
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = v6 + 1112;
      sub_100004A34(v16);
      v68 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v68 = 1;
LABEL_16:
  v67 = v16;
  if (!v17)
  {
    v28 = *(v6 + 56);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to get isoCache", buf, 2u);
    }

    goto LABEL_26;
  }

  if (!*a4)
  {
LABEL_26:
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
    goto LABEL_149;
  }

  v110 = 0;
  v108 = 0u;
  *__src = 0u;
  v106 = 0u;
  *v107 = 0u;
  *v104 = 0u;
  *v105 = 0u;
  *v102 = 0u;
  v103 = 0u;
  *buf = 0u;
  v18 = Registry::getServiceMap(*(v6 + 64));
  v19 = v18;
  if (v20 < 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v18);
  v90[0] = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, v90);
  v71 = a3;
  if (!v24)
  {
    v26 = 0;
    goto LABEL_28;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
LABEL_28:
    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    goto LABEL_29;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
LABEL_29:
  sub_100010024(&v100, a4);
  (*(*v26 + 32))(buf, v26, &v100);
  sub_10001021C(&v100);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  v65 = v7;
  __dst[0] = 0;
  __dst[1] = 0;
  v99 = 0;
  if (SHIBYTE(v110) < 0)
  {
    sub_100005F2C(__dst, __src[0], __src[1]);
  }

  else
  {
    *__dst = *__src;
    v99 = v110;
  }

  v29 = v71;
  *v96 = 0u;
  v97 = 0u;
  *v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  *v93 = 0u;
  *v90 = 0u;
  *v91 = 0u;
  sub_10004964C(v90, buf);
  v30 = HIBYTE(v99);
  if (v99 < 0)
  {
    v30 = __dst[1];
  }

  if (!v30)
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
    goto LABEL_125;
  }

  theDict = 0;
  Registry::getFileSystemInterface(v72, *(v6 + 64));
  (*(**v72 + 152))(&theDict);
  if (*&v72[8])
  {
    sub_100004A34(*&v72[8]);
  }

  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"SupportedSIMs"), v66 = CFDictionaryGetValue(theDict, @"SupportedPLMNs"), !Value) || (v32 = CFGetTypeID(Value), v32 != CFArrayGetTypeID()))
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
    goto LABEL_123;
  }

  v33 = Value;
  a1[1] = 0;
  a1[2] = 0;
  v64 = a1 + 1;
  *a1 = (a1 + 1);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v33;
  v34 = [obj countByEnumeratingWithState:&v85 objects:v111 count:16];
  if (!v34)
  {
    goto LABEL_115;
  }

  v35 = *v86;
  do
  {
    v36 = 0;
    do
    {
      if (*v86 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v85 + 1) + 8 * v36);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_109;
      }

      memset(&__str, 0, sizeof(__str));
      v38 = v37;
      v39 = v6;
      sub_10000501C(&__str, [v37 UTF8String]);
      __p[0] = 0;
      __p[1] = 0;
      v83 = 0;
      v80[0] = 0;
      v80[1] = 0;
      v81 = 0;
      v40 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = __str.__r_.__value_.__l.__size_;
      }

      if (v42 && ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), (v44 = memchr(p_str, 95, v42)) != 0 && (v45 = v44 - p_str, v44 - p_str != -1)))
      {
        std::string::basic_string(v72, &__str, 0, v45, &v77);
        v46 = v45 + 1;
      }

      else if (v40 < 0)
      {
        sub_100005F2C(v72, __str.__r_.__value_.__l.__data_, size);
        v46 = 0;
      }

      else
      {
        v46 = 0;
        *v72 = __str;
      }

      v6 = v39;
      if (SHIBYTE(v83) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v72;
      v83 = *&v72[16];
      v47 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = __str.__r_.__value_.__l.__size_;
      }

      if (v46 < v47)
      {
        std::string::basic_string(v72, &__str, v46, 0xFFFFFFFFFFFFFFFFLL, &v77);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(v80[0]);
        }

        v81 = *&v72[16];
        *v80 = *v72;
        v48 = v72[23];
        if (v72[23] >= 0)
        {
          v49 = v80;
        }

        else
        {
          v49 = *v72;
        }

        if (v72[23] < 0)
        {
          v48 = *&v72[8];
        }

        if (v48 >= 3)
        {
          v50 = v49 + v48;
          v51 = v49;
          do
          {
            v52 = memchr(v51, 73, v48 - 2);
            if (!v52)
            {
              break;
            }

            if (*v52 == 17481 && v52[2] == 45)
            {
              if (v52 == v50 || v52 - v49 == -1)
              {
                break;
              }

              v54 = v66;
              if (v83 >= 0)
              {
                v55 = __p;
              }

              else
              {
                v55 = __p[0];
              }

              v56 = [NSString stringWithUTF8String:v55];
              if ([v54 containsObject:v56])
              {

                break;
              }

              v60 = *(v39 + 56);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                *v72 = 0;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I Cannot find MCC/MNC in SupportedPLMNs", v72, 2u);
              }

              v29 = v71;
              goto LABEL_103;
            }

            v51 = (v52 + 1);
            v48 = v50 - v51;
          }

          while (v50 - v51 >= 3);
        }
      }

      v73 = 0u;
      memset(v72, 0, sizeof(v72));
      sub_100A34BC8(v72);
      v77 = 0;
      v78 = 0;
      v79 = 0;
      (*(*v17 + 24))(&v77, v17, v72);
      v57 = SHIBYTE(v79);
      if ((SHIBYTE(v79) & 0x8000000000000000) != 0)
      {
        v57 = v78;
        v29 = v71;
        if (!v78)
        {
          goto LABEL_98;
        }

        v58 = v77;
      }

      else
      {
        v29 = v71;
        if (!HIBYTE(v79))
        {
          goto LABEL_99;
        }

        v58 = &v77;
      }

      v59 = &v58[v57];
      while (v58 != v59)
      {
        *v58 = __tolower(*v58);
        ++v58;
      }

      sub_100073EE8(a1, &v77);
      v29 = v71;
      if (SHIBYTE(v79) < 0)
      {
LABEL_98:
        operator delete(v77);
      }

LABEL_99:
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*&v72[24]);
      }

      if ((v72[23] & 0x80000000) != 0)
      {
        operator delete(*v72);
      }

LABEL_103:
      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80[0]);
      }

      if (SHIBYTE(v83) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_109:
      v36 = v36 + 1;
    }

    while (v36 != v34);
    v61 = [obj countByEnumeratingWithState:&v85 objects:v111 count:16];
    v34 = v61;
  }

  while (v61);
LABEL_115:

  if (a1[2])
  {
    if (v65 == sub_100007A6C(v6 + 1104, v29))
    {
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      *&v72[24] = 0;
      v73 = 0u;
      *v72 = 0u;
      *&v72[16] = &v72[24];
      __str.__r_.__value_.__r.__words[0] = v29;
      v62 = sub_1013858F8(v6 + 1104, v29);
      sub_1013750E0(v62 + 56, v72);
      sub_100F98440(v72);
    }

    *v72 = v29;
    v63 = (sub_1013858F8(v6 + 1104, v29) + 72);
    if (v63 != a1)
    {
      sub_1001730B8(v63, *a1, v64);
    }

    *v72 = v29;
    *(sub_1013858F8(v6 + 1104, v29) + 64) = 2;
    sub_10136AD80(v6);
  }

LABEL_123:
  sub_10001021C(&theDict);
LABEL_125:
  if (SBYTE7(v97) < 0)
  {
    operator delete(v96[0]);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94[1]);
  }

  if (SHIBYTE(v94[0]) < 0)
  {
    operator delete(v93[0]);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91[1]);
  }

  if (SHIBYTE(v91[0]) < 0)
  {
    operator delete(v90[0]);
  }

  if (SHIBYTE(v99) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v110) < 0)
  {
    operator delete(__src[0]);
  }

  if (SBYTE7(v108) < 0)
  {
    operator delete(v107[0]);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105[1]);
  }

  if (SHIBYTE(v105[0]) < 0)
  {
    operator delete(v104[0]);
  }

  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[1]);
  }

  if (SHIBYTE(v102[0]) < 0)
  {
    operator delete(*buf);
  }

LABEL_149:
  if ((v68 & 1) == 0)
  {
    sub_100004A34(v67);
  }
}

void sub_101371460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13, char a14, uint64_t a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, const void *a51, __int16 a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100F98440(&a18);
  sub_100009970(a15, *(a15 + 8));

  sub_10001021C(&a51);
  sub_10016C520(&a52);
  if (a72 < 0)
  {
    operator delete(__p);
  }

  sub_1002F27AC(&a73);
  if ((a14 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1013715E0(capabilities::ct *a1)
{
  if ((capabilities::ct::dataOnlySingleSIMDevice(a1) & 1) != 0 || !sub_10136AC30(a1))
  {
    return 0;
  }

  return sub_101371864(a1);
}

uint64_t sub_101371638(void *a1, void **a2)
{
  v2 = a1[138];
  v3 = (a1 + 139);
  if (v2 == (a1 + 139))
  {
    return 0;
  }

  while (1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    *v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *__dst = 0u;
    sub_101380DE0(__dst, v2 + 2);
    if (v25 == 3)
    {
      goto LABEL_3;
    }

    v7 = a1[152];
    v8 = a1[153];
    if (v7 != v8)
    {
      v9 = v7 + 72;
      while (1)
      {
        if (subscriber::isSimReady())
        {
          v10 = *(v9 + 23);
          if (v10 >= 0)
          {
            v11 = *(v9 + 23);
          }

          else
          {
            v11 = *(v9 + 8);
          }

          v12 = BYTE7(v24);
          if (SBYTE7(v24) < 0)
          {
            v12 = __dst[1];
          }

          if (v11 == v12)
          {
            v13 = v10 >= 0 ? v9 : *v9;
            v14 = (SBYTE7(v24) & 0x80u) == 0 ? __dst : __dst[0];
            if (!memcmp(v13, v14, v11))
            {
              break;
            }
          }
        }

        v15 = v9 + 96;
        v9 += 168;
        if (v15 == v8)
        {
          goto LABEL_21;
        }
      }

LABEL_3:
      v6 = 3;
      goto LABEL_26;
    }

LABEL_21:
    if (&v26 == sub_100007A6C(&v25 + 8, a2))
    {
      sub_10000501C(__p, "*");
      v16 = sub_100007A6C(&v25 + 8, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = &v26 != v16;
    }

    else
    {
      v6 = 1;
    }

LABEL_26:
    if (v29 == 1 && SHIBYTE(v28) < 0)
    {
      operator delete(v27[1]);
    }

    sub_100009970(&v25 + 8, v26);
    if (SBYTE7(v24) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v6 != 3 && v6)
    {
      return 1;
    }

    v17 = *(v2 + 1);
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = *(v2 + 2);
        v19 = *v18 == v2;
        v2 = v18;
      }

      while (!v19);
    }

    v2 = v18;
    if (v18 == v3)
    {
      return 0;
    }
  }
}

void sub_101371830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10136EE40(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_101371864(uint64_t a1)
{
  if (!*(a1 + 1184))
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v2 = *(a1 + 1168);
  if (*(v2 + 55) < 0)
  {
    sub_100005F2C(__p, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    *__p = *(v2 + 32);
    v15 = *(v2 + 48);
  }

  v4 = HIBYTE(v15);
  v5 = HIBYTE(v15);
  v6 = __p[1];
  if (v15 >= 0)
  {
    v7 = (__p + HIBYTE(v15));
  }

  else
  {
    v7 = (__p[0] + __p[1]);
  }

  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v8 != v7)
  {
    do
    {
      *v8 = __tolower(*v8);
      v8 = (v8 + 1);
    }

    while (v8 != v7);
    v4 = HIBYTE(v15);
    v6 = __p[1];
    v5 = HIBYTE(v15);
  }

  v9 = *(a1 + 279);
  if (v9 >= 0)
  {
    v10 = *(a1 + 279);
  }

  else
  {
    v10 = *(a1 + 264);
  }

  if (v5 < 0)
  {
    v4 = v6;
  }

  if (v10 == v4)
  {
    if (v9 >= 0)
    {
      v11 = (a1 + 256);
    }

    else
    {
      v11 = *(a1 + 256);
    }

    if (v5 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v3 = memcmp(v11, v12, v10) != 0;
    if (v5 < 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v3 = 1;
    if (v5 < 0)
    {
LABEL_30:
      operator delete(__p[0]);
    }
  }

  return v3;
}

void sub_101371994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013719B0(uint64_t a1)
{
  v2 = *(a1 + 1216);
  for (i = *(a1 + 1224); v2 != i; v2 += 42)
  {
    if ((*(v2 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 10))
      {
        continue;
      }
    }

    else if (!*(v2 + 95))
    {
      continue;
    }

    if (!sub_10016FA58(a1 + 328, v2 + 9))
    {
      if (v2[2] == 8 && v2[16] == 1)
      {
        BasicSimInfo::createBundleCriteria(&v28, v2);
        v4 = sub_101371EF0(a1, &v28);
        sub_10001021C(&v28);
        if ((v4 & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_31:
        __p[0] = v2 + 18;
        *(sub_100170224(a1 + 328, v2 + 9) + 56) = 1;
        continue;
      }

      v5 = *v2;
      v41[0] = @"TravelSettings";
      v41[1] = @"EnableEnhancedTravelEducation";
      __p[1] = 0;
      *&v31[0] = 0;
      __p[0] = 0;
      sub_10005B328(__p, v41, v42, 2uLL);
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v7 = ServiceMap;
      if (v8 < 0)
      {
        v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
        v10 = 5381;
        do
        {
          v8 = v10;
          v11 = *v9++;
          v10 = (33 * v10) ^ v11;
        }

        while (v11);
      }

      std::mutex::lock(ServiceMap);
      v41[0] = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, v41);
      if (v12)
      {
        v14 = v12[3];
        v13 = v12[4];
        if (v13)
        {
          v15 = 1;
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v7);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          if (!v14)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

        std::mutex::unlock(v7);
        if (v14)
        {
LABEL_22:
          v41[0] = 0;
          (*(*v14 + 104))(v41, v14, v5, 1, __p, 0, 0);
          v16 = v41[0];
          v15 = 1;
          v29 = 1;
          if (v41[0])
          {
            v17 = CFGetTypeID(v41[0]);
            if (v17 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v29, v16, v18);
              v15 = v29;
            }

            else
            {
              v15 = 1;
            }
          }

          sub_10000A1EC(v41);
          if (v13)
          {
LABEL_27:
            sub_100004A34(v13);
          }
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        std::mutex::unlock(v7);
        v15 = 1;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if ((v15 & 1) == 0)
      {
LABEL_54:
        __p[0] = v2 + 18;
        v26 = sub_100170224(a1 + 328, v2 + 9);
        v21 = 0;
        *(v26 + 56) = 0;
        return v21;
      }

      goto LABEL_31;
    }

    if ((*sub_1000E20F0(a1 + 328, v2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(a1 + 1192);
  v20 = *(a1 + 1200);
  v21 = 1;
  if (v19 != v20)
  {
    do
    {
      if (*(v19 + 12) == 3 && *(v19 + 80) == 1)
      {
        v22 = *(v19 + 56);
        v23 = *(v19 + 64);
        while (v22 != v23)
        {
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          memset(v31, 0, sizeof(v31));
          *__p = 0u;
          sub_100F11F00(__p, v22);
          if ((BYTE9(v32) & 1) == 0 && (BYTE10(v32) & 1) == 0)
          {
            if (sub_10016FA58(a1 + 328, v31))
            {
              if ((*sub_1000E20F0(a1 + 328, v31) & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            else
            {
              VinylProfileDetails::createCarrierBundleCriteria(&v27, __p);
              v24 = sub_101371EF0(a1, &v27);
              sub_10001021C(&v27);
              if ((v24 & 1) == 0)
              {
                v41[0] = v31;
                *(sub_100170224(a1 + 328, v31) + 56) = 0;
LABEL_51:
                sub_100E3A5D4(__p);
                return 0;
              }

              v41[0] = v31;
              *(sub_100170224(a1 + 328, v31) + 56) = 1;
            }
          }

          sub_100E3A5D4(__p);
          v22 += 216;
        }
      }

      v19 += 88;
    }

    while (v19 != v20);
    return 1;
  }

  return v21;
}

uint64_t sub_101371EF0(uint64_t a1, const void **a2)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  *v29 = 0u;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  sub_100010024(&v28, a2);
  (*(*v12 + 32))(v29, v12, &v28);
  sub_10001021C(&v28);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v27 = v38;
  }

  v14 = HIBYTE(v27);
  if (v27 < 0)
  {
    v14 = __p[1];
  }

  if (v14)
  {
    theDict = 0;
    Registry::getFileSystemInterface(&v23, *(a1 + 64));
    (*(*v23 + 152))(&theDict);
    if (v24)
    {
      sub_100004A34(v24);
    }

    if (theDict && (v15 = CFDictionaryGetValue(theDict, @"TravelSettings"), (v16 = v15) != 0) && (v17 = CFGetTypeID(v15), v17 == CFDictionaryGetTypeID()) && CFDictionaryContainsKey(v16, @"EnableEnhancedTravelEducation"))
    {
      Value = CFDictionaryGetValue(v16, @"EnableEnhancedTravelEducation");
      v19 = Value;
      LOBYTE(v23) = 0;
      if (Value)
      {
        v20 = CFGetTypeID(Value);
        if (v20 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v23, v19, v21);
          LOBYTE(v19) = v23;
        }

        else
        {
          LOBYTE(v19) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v19) = 1;
    }

    sub_10001021C(&theDict);
    if (v27 < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v19) = 1;
    if (v27 < 0)
    {
LABEL_28:
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v33[0]) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  if (SHIBYTE(v30[0]) < 0)
  {
    operator delete(v29[0]);
  }

  return v19 & 1;
}

uint64_t sub_101372268(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  if (*(a1 + 1096) == 1)
  {
    if (*(a1 + 895) < 0)
    {
      sub_100005F2C(__p, *(a1 + 872), *(a1 + 880));
    }

    else
    {
      *__p = *(a1 + 872);
      v13 = *(a1 + 888);
    }
  }

  else
  {
    sub_10000501C(__p, "");
  }

  v2 = *(a1 + 1104);
  if (v2 == (a1 + 1112))
  {
LABEL_16:
    v7 = 0;
  }

  else
  {
    while (1)
    {
      v3 = (v2 + 4);
      if (*(v2 + 56) == 1)
      {
        v8 = *(a1 + 56);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        if (*(v2 + 55) < 0)
        {
          v3 = *v3;
        }

        *buf = 136315138;
        v15 = v3;
        v9 = "#I user installed travel iccid [%s] at home, skip pre-departure notif";
        goto LABEL_25;
      }

      if (sub_10016FA58((v2 + 9), __p) && !sub_10136EBE4(a1, (v2 + 4)))
      {
        break;
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
      if (v5 == (a1 + 1112))
      {
        goto LABEL_16;
      }
    }

    v8 = *(a1 + 56);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v10 = __p;
    if (v13 < 0)
    {
      v10 = __p[0];
    }

    *buf = 136315138;
    v15 = v10;
    v9 = "#I user still has a valid sim for [%s]";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
LABEL_26:
    v7 = 1;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_101372478()
{
  if ((atomic_load_explicit(&qword_101FCA960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA960))
  {
    sub_10000501C(v5, "ru");
    sub_10000501C(v6, "ir");
    sub_10000501C(v7, "sy");
    sub_10000501C(v8, "cu");
    sub_10000501C(v9, "kp");
    sub_10000501C(v10, "by");
    sub_10011C9B0(&v2, v5, 6);
    v0 = v3;
    qword_101FCA968 = v2;
    qword_101FCA970 = v3;
    qword_101FCA978 = v4;
    if (v4)
    {
      *(v3 + 16) = &qword_101FCA970;
      v2 = &v3;
      v3 = 0;
      v4 = 0;
      v0 = 0;
    }

    else
    {
      qword_101FCA968 = &qword_101FCA970;
    }

    sub_100009970(&v2, v0);
    for (i = 0; i != -144; i -= 24)
    {
      if (v10[i + 23] < 0)
      {
        operator delete(*&v10[i]);
      }
    }

    __cxa_guard_release(&qword_101FCA960);
  }
}

void sub_101372610(_Unwind_Exception *a1)
{
  v3 = (v1 + 143);
  v4 = -144;
  v5 = (v1 + 143);
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_101FCA960);
      _Unwind_Resume(a1);
    }
  }
}

void sub_101372680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  value = a5;
  if (v20)
  {
    v21 = v20[3];
    v22 = v20[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v23 = 0;
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v15);
  v22 = 0;
  v23 = 1;
  if (!v21)
  {
LABEL_7:
    v24 = *(a1 + 56);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
    }

    goto LABEL_122;
  }

LABEL_11:
  v78[0] = 0;
  v25 = xpc_dictionary_create(0, 0, 0);
  v26 = v25;
  if (v25)
  {
    v78[0] = v25;
  }

  else
  {
    v26 = xpc_null_create();
    v78[0] = v26;
    if (!v26)
    {
      v27 = xpc_null_create();
      v26 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v26) == &_xpc_type_dictionary)
  {
    xpc_retain(v26);
    goto LABEL_19;
  }

  v27 = xpc_null_create();
LABEL_18:
  v78[0] = v27;
LABEL_19:
  xpc_release(v26);
  if (*(a2 + 23) < 0)
  {
    v28 = *(a2 + 8);
    if (!v28)
    {
      goto LABEL_40;
    }

    memset(buf, 0, sizeof(buf));
    v77 = 0;
    sub_100005F2C(buf, *a2, v28);
  }

  else
  {
    if (!*(a2 + 23))
    {
      goto LABEL_40;
    }

    *buf = *a2;
    v77 = *(a2 + 16);
  }

  v29 = HIBYTE(v77);
  v30 = *buf;
  if (v77 >= 0)
  {
    v31 = &buf[HIBYTE(v77)];
  }

  else
  {
    v31 = (*buf + *&buf[8]);
  }

  if (v77 >= 0)
  {
    v32 = buf;
  }

  else
  {
    v32 = *buf;
  }

  if (v32 != v31)
  {
    do
    {
      *v32 = __toupper(*v32);
      ++v32;
    }

    while (v32 != v31);
    v29 = HIBYTE(v77);
    v30 = *buf;
  }

  if (v29 >= 0)
  {
    v33 = buf;
  }

  else
  {
    v33 = v30;
  }

  v74 = xpc_string_create(v33);
  if (!v74)
  {
    v74 = xpc_null_create();
  }

  v72 = v78;
  v73 = "home_country";
  sub_10000F688(&v72, &v74, &v75);
  xpc_release(v75);
  v75 = 0;
  xpc_release(v74);
  v74 = 0;
  if (SHIBYTE(v77) < 0)
  {
    operator delete(*buf);
  }

LABEL_40:
  if (*(a3 + 23) < 0)
  {
    v34 = *(a3 + 8);
    if (!v34)
    {
      goto LABEL_61;
    }

    memset(buf, 0, sizeof(buf));
    v77 = 0;
    sub_100005F2C(buf, *a3, v34);
  }

  else
  {
    if (!*(a3 + 23))
    {
      goto LABEL_61;
    }

    *buf = *a3;
    v77 = *(a3 + 16);
  }

  v35 = HIBYTE(v77);
  v36 = *buf;
  if (v77 >= 0)
  {
    v37 = &buf[HIBYTE(v77)];
  }

  else
  {
    v37 = (*buf + *&buf[8]);
  }

  if (v77 >= 0)
  {
    v38 = buf;
  }

  else
  {
    v38 = *buf;
  }

  if (v38 != v37)
  {
    do
    {
      *v38 = __toupper(*v38);
      ++v38;
    }

    while (v38 != v37);
    v35 = HIBYTE(v77);
    v36 = *buf;
  }

  if (v35 >= 0)
  {
    v39 = buf;
  }

  else
  {
    v39 = v36;
  }

  v70 = xpc_string_create(v39);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  v72 = v78;
  v73 = "previous_country";
  sub_10000F688(&v72, &v70, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v70);
  v70 = 0;
  if (SHIBYTE(v77) < 0)
  {
    operator delete(*buf);
  }

LABEL_61:
  if (*(a4 + 23) < 0)
  {
    v40 = *(a4 + 8);
    if (!v40)
    {
      goto LABEL_82;
    }

    memset(buf, 0, sizeof(buf));
    v77 = 0;
    sub_100005F2C(buf, *a4, v40);
  }

  else
  {
    if (!*(a4 + 23))
    {
      goto LABEL_82;
    }

    *buf = *a4;
    v77 = *(a4 + 16);
  }

  v41 = HIBYTE(v77);
  v42 = *buf;
  if (v77 >= 0)
  {
    v43 = &buf[HIBYTE(v77)];
  }

  else
  {
    v43 = (*buf + *&buf[8]);
  }

  if (v77 >= 0)
  {
    v44 = buf;
  }

  else
  {
    v44 = *buf;
  }

  if (v44 != v43)
  {
    do
    {
      *v44 = __toupper(*v44);
      ++v44;
    }

    while (v44 != v43);
    v41 = HIBYTE(v77);
    v42 = *buf;
  }

  if (v41 >= 0)
  {
    v45 = buf;
  }

  else
  {
    v45 = v42;
  }

  v68 = xpc_string_create(v45);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  v72 = v78;
  v73 = "current_country";
  sub_10000F688(&v72, &v68, &v69);
  xpc_release(v69);
  v69 = 0;
  xpc_release(v68);
  v68 = 0;
  if (SHIBYTE(v77) < 0)
  {
    operator delete(*buf);
  }

LABEL_82:
  v66 = xpc_BOOL_create(value);
  v47 = a7;
  v46 = a8;
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  *buf = v78;
  *&buf[8] = "did_show";
  sub_10000F688(buf, &v66, &v67);
  xpc_release(v67);
  v67 = 0;
  xpc_release(v66);
  v66 = 0;
  if (*(a6 + 23) < 0)
  {
    if (!a6[1])
    {
      goto LABEL_92;
    }

    a6 = *a6;
  }

  else if (!*(a6 + 23))
  {
    goto LABEL_92;
  }

  v64 = xpc_string_create(a6);
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  *buf = v78;
  *&buf[8] = "profile_status";
  sub_10000F688(buf, &v64, &v65);
  xpc_release(v65);
  v65 = 0;
  xpc_release(v64);
  v64 = 0;
LABEL_92:
  if (*(a7 + 23) < 0)
  {
    if (!*(a7 + 8))
    {
      goto LABEL_100;
    }

    v47 = *a7;
  }

  else if (!*(a7 + 23))
  {
    goto LABEL_100;
  }

  v62 = xpc_string_create(v47);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  *buf = v78;
  *&buf[8] = "options_shown";
  sub_10000F688(buf, &v62, &v63);
  xpc_release(v63);
  v63 = 0;
  xpc_release(v62);
  v62 = 0;
LABEL_100:
  if ((*(a8 + 23) & 0x80000000) == 0)
  {
    if (!*(a8 + 23))
    {
      goto LABEL_108;
    }

LABEL_105:
    v60 = xpc_string_create(v46);
    if (!v60)
    {
      v60 = xpc_null_create();
    }

    *buf = v78;
    *&buf[8] = "reason";
    sub_10000F688(buf, &v60, &v61);
    xpc_release(v61);
    v61 = 0;
    xpc_release(v60);
    v60 = 0;
    goto LABEL_108;
  }

  if (*(a8 + 8))
  {
    v46 = *a8;
    goto LABEL_105;
  }

LABEL_108:
  v48 = *(a1 + 1152);
  if (v48)
  {
    v49 = v48 == 3;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  v51 = sub_100932A98(v50, *(a1 + 1157));
  v58 = xpc_int64_create(v51);
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  *buf = v78;
  *&buf[8] = "internet_transport";
  sub_10000F688(buf, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  v56 = xpc_int64_create(*(a1 + 172));
  if (!v56)
  {
    v56 = xpc_null_create();
  }

  *buf = v78;
  *&buf[8] = "rate_limit";
  sub_10000F688(buf, &v56, &v57);
  xpc_release(v57);
  v57 = 0;
  xpc_release(v56);
  v55 = v78[0];
  v56 = 0;
  if (v78[0])
  {
    xpc_retain(v78[0]);
  }

  else
  {
    v55 = xpc_null_create();
  }

  (*(*v21 + 16))(v21, "commCentereSIMTravelBuddy", &v55);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v78[0]);
LABEL_122:
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }
}

void sub_101372DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(*(v14 - 104));
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_101372ED8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a2 + 64));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v61[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v61);
  if (!v12)
  {
    std::mutex::unlock(v7);
    goto LABEL_9;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    std::mutex::unlock(v7);
    if (v14)
    {
LABEL_11:
      *a1 = 0;
      v71 = 0;
      v15 = kCBMessageLocalizationTable;
      (*(*v14 + 40))(&v71, v14, kCBMessageLocalizationTable, @"TRAVEL_NOTIFICATION_POST_ARRIVAL_MESSAGE_%@", @"TRAVEL_NOTIFICATION_POST_ARRIVAL_MESSAGE_%@");
      v16 = Registry::getServiceMap(*(a2 + 64));
      v17 = v16;
      if (v18 < 0)
      {
        v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = 5381;
        do
        {
          v18 = v20;
          v21 = *v19++;
          v20 = (33 * v20) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(v16);
      v61[0] = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, v61);
      if (v22)
      {
        v23 = a3;
        v24 = v15;
        v25 = a1;
        v26 = v13;
        v28 = v22[3];
        v27 = v22[4];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = v27;
          sub_100004A34(v27);
          v30 = 0;
          v13 = v26;
          a1 = v25;
          v15 = v24;
          a3 = v23;
          goto LABEL_20;
        }

        v13 = v26;
        a1 = v25;
        v15 = v24;
        a3 = v23;
      }

      else
      {
        v28 = 0;
      }

      std::mutex::unlock(v17);
      v29 = 0;
      v30 = 1;
LABEL_20:
      v70 = 0;
      v68 = 0u;
      *v69 = 0u;
      *v66 = 0u;
      *v67 = 0u;
      *v64 = 0u;
      v65 = 0u;
      *v62 = 0u;
      v63 = 0u;
      *v61 = 0u;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(buf, *a3, *(a3 + 8));
      }

      else
      {
        *buf = *a3;
        v78 = *(a3 + 16);
      }

      (*(*v28 + 184))(v61, v28, buf);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(*buf);
      }

      v31 = BYTE7(v65);
      if (SBYTE7(v65) < 0)
      {
        v31 = v64[1];
      }

      if (!v31)
      {
        v36 = *(a2 + 56);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 23) >= 0)
          {
            v37 = a3;
          }

          else
          {
            v37 = *a3;
          }

          *buf = 136315138;
          *&buf[4] = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Label is invalid for (%s)", buf, 0xCu);
        }

        (*(*v14 + 40))(&v73, v14, v15, @"TRAVEL_NOTIFICATION_POST_ARRIVAL_MESSAGE", @"TRAVEL_NOTIFICATION_POST_ARRIVAL_MESSAGE");
        if (&v73 != a1)
        {
          *buf = *a1;
          *a1 = v73;
          *&v73 = 0;
          sub_100005978(buf);
        }

        sub_100005978(&v73);
        goto LABEL_99;
      }

      v32 = HIBYTE(v68);
      if (v68 >= 0)
      {
        v33 = HIBYTE(v68);
      }

      else
      {
        v33 = v68;
      }

      v34 = 10;
      if (v33)
      {
        v34 = 13;
        v35 = &v67[1];
      }

      else
      {
        v35 = v66;
      }

      if (!v33)
      {
        v32 = HIBYTE(v67[0]);
      }

      if (v32 < 0)
      {
        if (v33)
        {
          v38 = v68;
        }

        else
        {
          v38 = v66[1];
        }

        sub_100005F2C(buf, v61[v34], v38);
      }

      else
      {
        *buf = *v35;
        v78 = v35[2];
      }

      if (SHIBYTE(v78) < 0)
      {
        v44 = *&buf[8];
        operator delete(*buf);
        if (v44)
        {
LABEL_52:
          v39 = v71;
          v40 = HIBYTE(v68);
          if (v68 >= 0)
          {
            v41 = HIBYTE(v68);
          }

          else
          {
            v41 = v68;
          }

          v42 = 10;
          if (v41)
          {
            v42 = 13;
            v43 = &v67[1];
          }

          else
          {
            v43 = v66;
          }

          if (!v41)
          {
            v40 = HIBYTE(v67[0]);
          }

          if (v40 < 0)
          {
            if (v41)
            {
              v46 = v68;
            }

            else
            {
              v46 = v66[1];
            }

            sub_100005F2C(&__dst, v61[v42], v46);
          }

          else
          {
            __dst = *v43;
            v59 = v43[2];
          }

          if (SHIBYTE(v59) < 0)
          {
            sub_100005F2C(&v73, __dst, *(&__dst + 1));
          }

          else
          {
            v73 = __dst;
            v74 = v59;
          }

          v72 = 0;
          if (SHIBYTE(v74) < 0)
          {
            sub_100005F2C(buf, v73, *(&v73 + 1));
          }

          else
          {
            *buf = v73;
            v78 = v74;
          }

          v75 = 0;
          if (ctu::cf::convert_copy())
          {
            v47 = v72;
            v72 = v75;
            v76 = v47;
            sub_100005978(&v76);
          }

          if (SHIBYTE(v78) < 0)
          {
            operator delete(*buf);
          }

          v48 = v72;
          v60 = v72;
          v72 = 0;
          sub_100005978(&v72);
          if (SHIBYTE(v74) < 0)
          {
            operator delete(v73);
          }

          StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v39, 0, v48);
          v50 = *a1;
          *a1 = StringWithValidatedFormat;
          *buf = v50;
          sub_100005978(buf);
          sub_100005978(&v60);
          if (SHIBYTE(v59) < 0)
          {
            v51 = __dst;
LABEL_98:
            operator delete(v51);
            goto LABEL_99;
          }

          goto LABEL_99;
        }
      }

      else if (HIBYTE(v78))
      {
        goto LABEL_52;
      }

      v45 = v71;
      if (SHIBYTE(v62[0]) < 0)
      {
        sub_100005F2C(__p, v61[0], v61[1]);
      }

      else
      {
        *__p = *v61;
        v57 = v62[0];
      }

      if (SHIBYTE(v57) < 0)
      {
        sub_100005F2C(&v73, __p[0], __p[1]);
      }

      else
      {
        v73 = *__p;
        v74 = v57;
      }

      v72 = 0;
      if (SHIBYTE(v74) < 0)
      {
        sub_100005F2C(buf, v73, *(&v73 + 1));
      }

      else
      {
        *buf = v73;
        v78 = v74;
      }

      v75 = 0;
      if (ctu::cf::convert_copy())
      {
        v52 = v72;
        v72 = v75;
        v76 = v52;
        sub_100005978(&v76);
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(*buf);
      }

      v53 = v72;
      v60 = v72;
      v72 = 0;
      sub_100005978(&v72);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
      }

      v54 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v45, 0, v53);
      v55 = *a1;
      *a1 = v54;
      *buf = v55;
      sub_100005978(buf);
      sub_100005978(&v60);
      if (SHIBYTE(v57) < 0)
      {
        v51 = __p[0];
        goto LABEL_98;
      }

LABEL_99:
      if (SHIBYTE(v70) < 0)
      {
        operator delete(v69[0]);
      }

      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67[1]);
      }

      if (SHIBYTE(v67[0]) < 0)
      {
        operator delete(v66[0]);
      }

      if (SBYTE7(v65) < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[1]);
      }

      if (SHIBYTE(v62[0]) < 0)
      {
        operator delete(v61[0]);
        if (v30)
        {
LABEL_112:
          sub_100005978(&v71);
          if (!v13)
          {
            return;
          }

          goto LABEL_113;
        }
      }

      else if (v30)
      {
        goto LABEL_112;
      }

      sub_100004A34(v29);
      goto LABEL_112;
    }

LABEL_9:
    *a1 = 0;
    return;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  if (v14)
  {
    goto LABEL_11;
  }

  *a1 = 0;
LABEL_113:
  sub_100004A34(v13);
}

void sub_101373648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978((v32 - 184));
  if (*(v32 - 153) < 0)
  {
    operator delete(*(v32 - 176));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100FB0A00(&a26);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  sub_100005978((v32 - 192));
  sub_100005978(v29);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void *sub_1013737D4(void *result, uint64_t a2)
{
  v2 = *(a2 + 127);
  if (v2 < 0)
  {
    v2 = *(a2 + 112);
  }

  v3 = v2 == 0;
  v4 = 104;
  if (v3)
  {
    v4 = 80;
  }

  v5 = a2 + v4;
  if (*(v5 + 23) < 0)
  {
    return sub_100005F2C(result, *v5, *(v5 + 8));
  }

  *result = *v5;
  result[2] = *(v5 + 16);
  return result;
}

void sub_101373818(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 144);
  if (!v5)
  {
    v15 = *(a2 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      v16 = "missing travel model";
      goto LABEL_43;
    }

LABEL_18:
    *a1 = 0;
    a1[80] = 0;
    return;
  }

  v6 = a3;
  v7 = *(a3 + 23);
  v8 = *(a3 + 8);
  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  v10 = *(a2 + 279);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 264);
  }

  if (v9 != v10 || ((v12 = *v6, v7 >= 0) ? (v13 = v6) : (v13 = *v6), v11 >= 0 ? (v14 = (a2 + 256)) : (v14 = *(a2 + 256)), memcmp(v13, v14, v9)))
  {
    v15 = *(a2 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      v16 = "dont support non-home countries";
LABEL_43:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, v29, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (v7 < 0)
  {
    sub_100005F2C(__p, v12, v8);
  }

  else
  {
    *__p = *v6;
    v28 = v6[2];
  }

  (*(*v5 + 32))(v29, v5, __p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *&v29[8];
  if (*v29 == *&v29[8])
  {
    v25 = *(a2 + 56);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (*(v6 + 23) < 0)
      {
        v6 = *v6;
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "journal empty for country [%s]", buf, 0xCu);
    }

    *a1 = 0;
    a1[80] = 0;
  }

  else
  {
    while (v17 != *v29)
    {
      v19 = *(v17 - 80);
      v17 -= 80;
      v18 = v19;
      if (v19 != (v17 + 8))
      {
        v20 = 0;
        do
        {
          v21 = sub_10136FB18(a2, (v18 + 4));
          v22 = v18[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v18[2];
              v24 = *v23 == v18;
              v18 = v23;
            }

            while (!v24);
          }

          v20 |= v21;
          v18 = v23;
        }

        while (v23 != (v17 + 8));
        if (v20)
        {
          continue;
        }
      }

      sub_101380638(a1, v17);
      goto LABEL_41;
    }

    v26 = *(a2 + 56);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I All entries have travel SIM, fallback to latest entry", buf, 2u);
    }

    sub_101380638(a1, *&v29[8] - 80);
  }

LABEL_41:
  *buf = v29;
  sub_101368BCC(buf);
}

void sub_101373B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  a20 = &a16;
  sub_101368BCC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_101373B64(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    sub_100009970(a1, *(a1 + 8));
  }

  return a1;
}

void sub_101373BC0(_BYTE *a1)
{
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyyMMdd"];
  v3 = +[NSTimeZone systemTimeZone];
  [v2 setTimeZone:v3];

  v4 = [v2 stringFromDate:v5];
  sub_10000501C(a1, [v4 UTF8String]);
}

void sub_101373CBC(std::string *this, uint64_t a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  *v25 = 0u;
  v26 = 0u;
  v4 = *(a2 + 1104);
  v5 = (a2 + 1112);
  if (v4 != (a2 + 1112))
  {
    while (1)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      *__p = 0u;
      v30 = 0u;
      memset(__str, 0, sizeof(__str));
      sub_101380DE0(__str, v4 + 2);
      if (__str[24] == 1)
      {
        if (sub_10136FB18(a2, __str))
        {
          break;
        }
      }

      if (v34 == 1 && SHIBYTE(v33) < 0)
      {
        operator delete(__p[1]);
      }

      sub_100009970(&v30 + 8, v31);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        goto LABEL_25;
      }
    }

    v9 = *(a2 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __str;
      if (__str[23] < 0)
      {
        v10 = *__str;
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Iccid (%s) was installed in your home country.", buf, 0xCu);
    }

    std::string::operator=(this, __str);
    if (v34 == 1 && SHIBYTE(v33) < 0)
    {
      operator delete(__p[1]);
    }

    sub_100009970(&v30 + 8, v31);
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }

LABEL_25:
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v12 = *(a2 + 1192);
    v13 = *(a2 + 1200);
    if (v12 != v13)
    {
      while (1)
      {
        if (*(v12 + 80) == 1)
        {
          v14 = *(v12 + 64);
          if (v14 != *(v12 + 56))
          {
            break;
          }
        }

LABEL_52:
        v12 += 88;
        if (v12 == v13)
        {
          goto LABEL_53;
        }
      }

      v15 = (v14 - 200);
      while (1)
      {
        if (v15[3].__r_.__value_.__s.__data_[2])
        {
          goto LABEL_46;
        }

        memset(__str, 0, 24);
        if (SHIBYTE(v15->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(__str, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        }

        else
        {
          v16 = *&v15->__r_.__value_.__l.__data_;
          *&__str[16] = *(&v15->__r_.__value_.__l + 2);
          *__str = v16;
        }

        if (v5 == sub_100007A6C(a2 + 1104, __str))
        {
          goto LABEL_41;
        }

        v17 = sub_1000E20F0(a2 + 1104, __str);
        sub_10000501C(buf, "*");
        v18 = sub_100007A6C(v17 + 16, buf);
        if (v28 < 0)
        {
          operator delete(*buf);
        }

        if (v17 + 24 != v18)
        {
          break;
        }

        v21 = sub_1000E20F0(a2 + 1104, __str);
        if (v21 + 24 == sub_100007A6C(v21 + 16, (a2 + 208)) || *(sub_1000E20F0(a2 + 1104, __str) + 8) > 2)
        {
          v19 = 0;
        }

        else
        {
          std::string::operator=(this, v15);
          v19 = 8;
        }

LABEL_42:
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        if (v19 != 10 && v19)
        {
          goto LABEL_52;
        }

LABEL_46:
        v20 = &v15[-1].__r_.__value_.__r.__words[1];
        v15 -= 9;
        if (v20 == *(v12 + 56))
        {
          goto LABEL_52;
        }
      }

      sub_1001696A4(v25, __str);
LABEL_41:
      v19 = 10;
      goto LABEL_42;
    }

LABEL_53:
    if (BYTE8(v26))
    {
      v22 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v22 & 0x80u) != 0)
      {
        v22 = this->__r_.__value_.__l.__size_;
      }

      if (!v22)
      {
        std::string::operator=(this, v25);
        v23 = *(a2 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = this;
          }

          else
          {
            v24 = this->__r_.__value_.__r.__words[0];
          }

          *__str = 136315138;
          *&__str[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I GMVNO SIM (%s) will be suggested.", __str, 0xCu);
        }
      }
    }
  }

  if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_1013740D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10137415C(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 != a3)
  {
    while (*a2 != a4)
    {
      a2 += 168;
      if (a2 == a3)
      {
        goto LABEL_8;
      }
    }
  }

  if (a2 == a3)
  {
LABEL_8:
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  else if (*(a2 + 95) < 0)
  {
    return sub_100005F2C(result, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v4 = *(a2 + 72);
    result[2] = *(a2 + 88);
    *result = v4;
  }

  return result;
}

void sub_1013741BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a2 + 64));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v20 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      v17 = *(a3 + 23);
      if (v17 < 0)
      {
        v19 = *a3;
        v18 = (*a3 + *(a3 + 8));
      }

      else
      {
        v18 = (a3 + v17);
        v19 = a3;
      }

      while (v19 != v18)
      {
        *v19 = __tolower(*v19);
        ++v19;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      (*(*v14 + 96))(&v20, v14, a3);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      if (v21 == v20)
      {
        sub_10000501C(a1, "");
      }

      else
      {
        (*(*v14 + 24))(v14);
      }

      v23 = &v20;
      sub_1000087B4(&v23);
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      return;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  v16 = *(a2 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "IsoMccCache is not available", &v20, 2u);
  }

  sub_10000501C(a1, "");
  if ((v15 & 1) == 0)
  {
LABEL_10:
    sub_100004A34(v13);
  }
}

void sub_1013743D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101374410(_BYTE *a1, uint64_t a2, int a3, uint64_t a4)
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v35 = 0u;
  sub_10000C320(&v35);
  if (a3 == 1)
  {
    v8 = sub_10000C030(&v36);
    v9 = sub_10000C030(v8);
    v10 = sub_10000C030(v9);
    sub_10000C030(v10);
    sub_101371864(a2);
    v11 = std::ostream::operator<<();
    sub_10000C030(v11);
    v12 = std::ostream::operator<<();
    v13 = sub_10000C030(v12);
    sub_10000C030(v13);
    sub_100061574(&v35, a1);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v53 = 0u;
    memset(&v54, 0, sizeof(v54));
    v51 = 0u;
    v52 = 0u;
    if (a2 + 1112 == sub_100007A6C(a2 + 1104, a4))
    {
      sub_10000501C(&v32, "");
    }

    else
    {
      v14 = sub_1000E20F0(a2 + 1104, a4);
      if (*v14 == 1)
      {
        v15 = *(a2 + 56);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a4 + 23) >= 0)
          {
            v16 = a4;
          }

          else
          {
            v16 = *a4;
          }

          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Found an iccid (%s) that was installed in your home country.", buf, 0xCu);
        }

        *v14 = 0;
      }

      std::string::operator=(&v51, a4);
      if (v14[41] == 1 && (v14[40] & 1) == 0)
      {
        std::string::operator=(&v54, a4);
      }

      sub_10136AD80(a2);
      v17 = BYTE7(v52);
      if (SBYTE7(v52) < 0)
      {
        v17 = *(&v51 + 1);
      }

      if (v17)
      {
        std::string::operator=((&v52 + 8), (a2 + 400));
        v18 = HIBYTE(v53);
        if (v53 < 0)
        {
          v18 = v53;
        }

        if (v18)
        {
          size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v54.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            std::string::operator=(&v54, (&v52 + 8));
          }
        }

        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        memset(v57, 0, sizeof(v57));
        *buf = 0u;
        sub_10000C320(buf);
        v20 = sub_10000C030(&v56);
        v21 = sub_10000C030(v20);
        v22 = sub_10000C030(v21);
        v23 = sub_10000C030(v22);
        v24 = sub_10000C030(v23);
        sub_10000C030(v24);
        sub_100061574(buf, &v32);
        *&v56 = v25;
        if (SHIBYTE(v59) < 0)
        {
          operator delete(*(&v58 + 1));
        }

        std::locale::~locale(v57);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      else
      {
        v26 = *(a2 + 56);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = (a2 + 208);
          if (*(a2 + 231) < 0)
          {
            v27 = *v27;
          }

          *buf = 136315138;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Cannot find a travel SIM that works in country (%s)", buf, 0xCu);
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
      }
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(*(&v52 + 1));
    }

    if (SBYTE7(v52) < 0)
    {
      operator delete(v51);
    }

    v28 = sub_10000C030(&v36);
    v29 = sub_10000C030(v28);
    sub_10000C030(v29);
    sub_100061574(&v35, a1);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  *&v36 = v30;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[1]);
  }

  std::locale::~locale(v37);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_101374B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  sub_1000CFBA0(&a52);
  sub_10068C9D8(&a16);
  _Unwind_Resume(a1);
}

void sub_101374B80(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a3 + 23);
  if (v7 < 0)
  {
    v9 = *a3;
    v8 = (*a3 + *(a3 + 8));
  }

  else
  {
    v8 = (a3 + v7);
    v9 = a3;
  }

  while (v9 != v8)
  {
    *v9 = __tolower(*v9);
    ++v9;
  }

  ServiceMap = Registry::getServiceMap(*(a2 + 64));
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v17 = v16[3];
    v18 = v16[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v32 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v11);
  v18 = 0;
  v32 = 1;
LABEL_14:
  v31 = v18;
  if (v17)
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = a1 + 1;
    v19 = *(a2 + 1192);
    for (i = *(a2 + 1200); v19 != i; v19 += 88)
    {
      if (*(v19 + 80) == 1)
      {
        v21 = *(v19 + 56);
        v20 = *(v19 + 64);
        while (v21 != v20)
        {
          if ((*(v21 + 89) & 1) == 0)
          {
            VinylProfileDetails::createCarrierBundleCriteria(&v41, v21);
            memset(buf, 0, sizeof(buf));
            v36[0] = 0;
            v42 = v41;
            if (v41)
            {
              CFRetain(v41);
            }

            sub_101370A08(buf, a2, (v21 + 16), &v42);
            sub_10001021C(&v42);
            v22 = sub_100007A6C(buf, a3);
            sub_100009970(buf, *&buf[8]);
            sub_10001021C(&v41);
            if (&buf[8] != v22 || a4 && ctu::starts_with())
            {
              *buf = v21 + 16;
              *(sub_100170224(a1, (v21 + 16)) + 56) = 0;
            }
          }

          v21 += 216;
        }
      }
    }

    v23 = *(a2 + 1216);
    for (j = *(a2 + 1224); v23 != j; v23 += 168)
    {
      if (*(v23 + 95) < 0)
      {
        sub_100005F2C(__p, *(v23 + 72), *(v23 + 80));
      }

      else
      {
        *__p = *(v23 + 72);
        v40 = *(v23 + 88);
      }

      v25 = sub_10136BCA0(*(a2 + 1192), *(a2 + 1200), __p);
      v26 = v25;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
        if (v26)
        {
          continue;
        }
      }

      else if (v25)
      {
        continue;
      }

      BasicSimInfo::createBundleCriteria(&cf, v23);
      memset(buf, 0, sizeof(buf));
      v36[0] = 0;
      v42 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_101370A08(buf, a2, (v23 + 72), &v42);
      sub_10001021C(&v42);
      v27 = sub_100007A6C(buf, a3);
      sub_100009970(buf, *&buf[8]);
      sub_10001021C(&cf);
      if (&buf[8] == v27)
      {
        if ((*(v23 + 119) & 0x8000000000000000) != 0)
        {
          if (*(v23 + 104))
          {
LABEL_46:
            *v36 = 0u;
            v37 = 0u;
            *buf = 0u;
            sub_100A34BC8(buf);
            if (a4 && ctu::starts_with())
            {
              isSimReady = subscriber::isSimReady();
              v42 = (v23 + 72);
              *(sub_100170224(a1, (v23 + 72)) + 56) = isSimReady;
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[1]);
            }

            if (SHIBYTE(v36[0]) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else if (*(v23 + 119))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v28 = subscriber::isSimReady();
        *buf = v23 + 72;
        *(sub_100170224(a1, (v23 + 72)) + 56) = v28;
      }
    }
  }

  else
  {
    v30 = *(a2 + 56);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to get isoCache", buf, 2u);
    }

    a1[2] = 0;
    a1[1] = 0;
    *a1 = a1 + 1;
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }
}

void sub_101375044(_Unwind_Exception *a1, std::__shared_weak_count *a2, int a3, char a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000D6F38(va);
  sub_100009970(v6, *(v6 + 8));
  if ((a4 & 1) == 0)
  {
    sub_100004A34(a2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013750E0(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u64[0];
  *(a1 + 8) = a2->n128_u32[2];
  *a1 = v4;
  sub_100173768(a1 + 16, a2[1].n128_u64);
  *(a1 + 40) = a2[2].n128_u16[4];
  sub_10016A270(a1 + 48, a2 + 3);
  *(a1 + 80) = a2[5].n128_u64[0];
  return a1;
}

void sub_101375140(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Clearing current trip", v3, 2u);
  }

  sub_10136F078(a1 + 728);
  if (*(a1 + 207) < 0)
  {
    **(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  else
  {
    *(a1 + 184) = 0;
    *(a1 + 207) = 0;
  }

  sub_1013751D4(a1);
}

void sub_1013751D4(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    LOBYTE(__dst[0]) = 0;
    v10 = 0;
    if (*(a1 + 1096) == 1)
    {
      sub_1013812FC(__dst, (a1 + 728));
      v10 = 1;
    }

    (*(*v1 + 72))(v1, __dst);
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6[3]);
      }

      sub_100009970(v6, v6[1]);
      sub_100FF11AC(&v5);
      if (v4 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else
  {
    v2 = *(a1 + 56);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }
  }
}

void sub_1013752F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a56 == 1)
  {
    sub_101375324(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101375324(uint64_t a1)
{
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  sub_100009970(a1 + 264, *(a1 + 272));
  sub_100FF11AC(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10137538C(void *a1)
{
  v2 = a1[35];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

uint64_t sub_1013753E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_1013811D0(a1);
}

void sub_101375428(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[5];
      if (v10)
      {
        if ((a2 & 0xFFFFFFFD) == 0)
        {
          v11 = *(a4 + 23);
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(a4 + 8);
          }

          if (v11)
          {
            v12 = std::string::find(a4, 32, 0);
            if (v12 == -1)
            {
              std::string::operator=((v10 + 456), a4);
            }

            else
            {
              v13 = v12;
              std::string::basic_string(&v21, a4, 0, v12, &v20);
              v14 = (v10 + 456);
              if (*(v10 + 479) < 0)
              {
                operator delete(*v14);
              }

              *v14 = *&v21.__r_.__value_.__l.__data_;
              *(v10 + 472) = *(&v21.__r_.__value_.__l + 2);
              std::string::basic_string(&v21, a4, v13 + 1, 0xFFFFFFFFFFFFFFFFLL, &v20);
              if (*(v10 + 503) < 0)
              {
                operator delete(*(v10 + 480));
              }

              *(v10 + 480) = v21;
            }

            v16 = *(v8 + 56);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = (v10 + 456);
              if (*(v10 + 479) < 0)
              {
                v17 = *v17;
              }

              v18 = (v10 + 480);
              if (*(v10 + 503) < 0)
              {
                v18 = *v18;
              }

              LODWORD(v21.__r_.__value_.__l.__data_) = 136315394;
              *(v21.__r_.__value_.__r.__words + 4) = v17;
              WORD2(v21.__r_.__value_.__r.__words[1]) = 2080;
              *(&v21.__r_.__value_.__r.__words[1] + 6) = v18;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Names from Apple Account (%s %s).", &v21, 0x16u);
            }
          }

          v19 = a1[10];
          if (!v19)
          {
            sub_100022DB4();
          }

          (*(*v19 + 48))(v19);
        }

LABEL_17:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = a1[10];
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15);
  if (v9)
  {
    goto LABEL_17;
  }
}

uint64_t sub_101375698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a1 + 56, a2 + 56);
}

void sub_1013756DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013756F4(uint64_t a1)
{
  sub_10002B644(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_101375740(uint64_t a1, std::string *__str, int a3)
{
  v6 = (a1 + 728);
  if (*(a1 + 1096) == 1)
  {
    std::string::operator=((a1 + 728), __str);
    sub_101381250(a1 + 752, &__str[1]);
    if (v6 != __str)
    {
      sub_1001730B8((a1 + 992), __str[11].__r_.__value_.__l.__data_, &__str[11].__r_.__value_.__l.__size_);
    }

    std::string::operator=((a1 + 1016), __str + 12);
    std::string::operator=((a1 + 1040), __str + 13);
    *(a1 + 1064) = __str[14].__r_.__value_.__l.__data_;
    v7 = *&__str[14].__r_.__value_.__r.__words[1];
    *(a1 + 1088) = __str[15].__r_.__value_.__l.__data_;
    *(a1 + 1072) = v7;
  }

  else
  {
    sub_1013812FC((a1 + 728), __str);
    *(a1 + 1096) = 1;
  }

  *(a1 + 576) = *(a1 + 568);
  v8 = *(a1 + 56);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Set current trip", buf, 2u);
  }

  std::string::operator=((a1 + 184), __str + 6);
  if (*(a1 + 1096))
  {
    v9 = (a1 + 568);
    v10 = *(a1 + 912);
    v11 = (v10 - sub_10136D3A8(*(a1 + 64)) + -86400.0);
    if (v11 < 0)
    {
      v14 = *(a1 + 56);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I timerPeriod is negative", v46, 2u);
        v14 = *(a1 + 56);
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Flight event is detected within 24 hours.", v45, 2u);
      }

      v11 = 1;
      goto LABEL_44;
    }

    if (*(a1 + 1072) == 1 && a3)
    {
      v12 = *(a1 + 56);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Notification should have been shown once and skip the first timer!", v44, 2u);
      }

      goto LABEL_44;
    }

    if ((*(a1 + 1096) & 1) == 0)
    {
      sub_1000D1644();
    }

    v15 = *(a1 + 912);
    v16 = (v15 - sub_10136D3A8(*(a1 + 64)) + -604800.0);
    v17 = *(a1 + 576);
    v18 = *(a1 + 584);
    if (v16 < 0)
    {
      if (v17 < v18)
      {
        *v17 = 1;
        v19 = (v17 + 1);
        goto LABEL_43;
      }

      v27 = *v9;
      v28 = v17 - *v9;
      v29 = v28 >> 3;
      v30 = (v28 >> 3) + 1;
      if (v30 >> 61)
      {
        goto LABEL_59;
      }

      v31 = v18 - v27;
      if (v31 >> 2 > v30)
      {
        v30 = v31 >> 2;
      }

      v25 = v31 >= 0x7FFFFFFFFFFFFFF8;
      v32 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v32 = v30;
      }

      if (v32)
      {
        sub_10006A8B4(a1 + 568, v32);
      }

      *(8 * v29) = 1;
      v19 = 8 * v29 + 8;
      memcpy(0, v27, v28);
      v33 = *(a1 + 568);
      *(a1 + 568) = 0;
      *(a1 + 576) = v19;
      *(a1 + 584) = 0;
      if (!v33)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v17 < v18)
      {
        *v17 = v16;
        v19 = (v17 + 1);
LABEL_43:
        *(a1 + 576) = v19;
LABEL_44:
        v34 = *(a1 + 576);
        v35 = *(a1 + 584);
        if (v34 < v35)
        {
          *v34 = v11;
          v36 = v34 + 1;
LABEL_55:
          *(a1 + 576) = v36;
          *(a1 + 592) = *(a1 + 568);
          TravelHandler::maybeStartPreDepartureNotificationTimer_sync(a1);
          return;
        }

        v37 = *v9;
        v38 = v34 - *v9;
        v39 = (v38 >> 3) + 1;
        if (!(v39 >> 61))
        {
          v40 = v35 - v37;
          if (v40 >> 2 > v39)
          {
            v39 = v40 >> 2;
          }

          v25 = v40 >= 0x7FFFFFFFFFFFFFF8;
          v41 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v41 = v39;
          }

          if (v41)
          {
            sub_10006A8B4(a1 + 568, v41);
          }

          v42 = (8 * (v38 >> 3));
          *v42 = v11;
          v36 = v42 + 1;
          memcpy(0, v37, v38);
          v43 = *(a1 + 568);
          *(a1 + 568) = 0;
          *(a1 + 576) = v36;
          *(a1 + 584) = 0;
          if (v43)
          {
            operator delete(v43);
          }

          goto LABEL_55;
        }

LABEL_59:
        sub_1000CE3D4();
      }

      v20 = *v9;
      v21 = v17 - *v9;
      v22 = v21 >> 3;
      v23 = (v21 >> 3) + 1;
      if (v23 >> 61)
      {
        goto LABEL_59;
      }

      v24 = v18 - v20;
      if (v24 >> 2 > v23)
      {
        v23 = v24 >> 2;
      }

      v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
      v26 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = v23;
      }

      if (v26)
      {
        sub_10006A8B4(a1 + 568, v26);
      }

      *(8 * v22) = v16;
      v19 = 8 * v22 + 8;
      memcpy(0, v20, v21);
      v33 = *(a1 + 568);
      *(a1 + 568) = 0;
      *(a1 + 576) = v19;
      *(a1 + 584) = 0;
      if (!v33)
      {
        goto LABEL_43;
      }
    }

    operator delete(v33);
    goto LABEL_43;
  }

  v13 = *(a1 + 56);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v47 = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No trip is set", v47, 2u);
  }
}

void sub_101375C04()
{
  v1 = 0;
  v2 = 0;
  v0 = "TravelHandler";
  sub_1001048A4();
}

void sub_101375ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  sub_1000FF0B4(v35 - 88);
  sub_101375F90(&a35);
  sub_1000D6F38(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a30)
  {
    sub_100004A34(a30);
  }

  if (a34)
  {
    sub_100004A34(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101375F90(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50(a1 + 8);
  return a1;
}

uint64_t sub_101375FD4(uint64_t result)
{
  if (*(result + 1156) == 1)
  {
    if ((*(result + 279) & 0x8000000000000000) != 0)
    {
      if (!*(result + 264))
      {
        return result;
      }
    }

    else if (!*(result + 279))
    {
      return result;
    }

    result = *(result + 80);
    if (result)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

uint64_t *sub_101376028(uint64_t *result)
{
  v1 = result[41];
  v2 = result + 42;
  if (v1 != result + 42)
  {
    v3 = result;
    do
    {
      v4 = (v1 + 32);
      if (sub_10136EA08(v3, (v1 + 32)))
      {
        v5 = *(v1 + 8);
        if (v5)
        {
          do
          {
            result = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            result = *(v1 + 16);
            v6 = *result == v1;
            v1 = result;
          }

          while (!v6);
        }
      }

      else
      {
        v7 = v3[7];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 55) < 0)
          {
            v4 = *v4;
          }

          *buf = 136315138;
          v9 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Clearing iccid (%s) from fIccidSupportsEnhancedTravelEducationMap", buf, 0xCu);
        }

        result = sub_100075658(v3 + 41, v1);
      }

      v1 = result;
    }

    while (result != v2);
  }

  return result;
}

void sub_101376164(uint64_t a1, void **a2)
{
  if (a1 + 1112 != sub_100007A6C(a1 + 1104, a2))
  {
    v4 = sub_10136D3A8(*(a1 + 64));
    *(sub_1000E20F0(a1 + 1104, a2) + 80) = v4;

    sub_10136AD80(a1);
  }
}

uint64_t sub_1013761E4(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 96);
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    sub_100009970(a1 + 8, *(a1 + 16));
  }

  return a1;
}

void sub_101376254(int a1, uint64_t a2, CFTypeRef cf1)
{
  if (a2 && cf1 && CFEqual(cf1, kCFLocaleCurrentLocaleDidChangeNotification))
  {

    sub_1013762B4(a2);
  }
}

void sub_1013762B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  (*(**(a1 + 128) + 8))(v4);
  v2 = 0;
  v3 = 0;
  v1 = "TravelHandler";
  sub_1001048A4();
}

void sub_101376420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_10001C200(v18 - 56);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_101376480(uint64_t a1, int a2)
{
  v2 = *(a1 + 1144);
  if (a2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  if (v2 != 1 || v4 == 0)
  {
    return;
  }

  v7 = *(a1 + 231);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 231))
    {
      goto LABEL_13;
    }

LABEL_30:
    v16 = *(a1 + 56);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v17 = "#I No value for fCurrentCountry";
LABEL_47:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    return;
  }

  if (!*(a1 + 216))
  {
    goto LABEL_30;
  }

LABEL_13:
  v8 = (a1 + 208);
  v9 = (a1 + 232);
  v10 = *(a1 + 255);
  v11 = *(a1 + 240);
  if (v10 >= 0)
  {
    v12 = *(a1 + 255);
  }

  else
  {
    v12 = *(a1 + 240);
  }

  v13 = *(a1 + 216);
  if (v7 >= 0)
  {
    v13 = *(a1 + 231);
  }

  if (v12 == v13)
  {
    v14 = (v10 >= 0 ? a1 + 232 : *v9);
    v15 = (v7 >= 0 ? a1 + 208 : *v8);
    if (!memcmp(v14, v15, v12))
    {
      v16 = *(a1 + 56);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v17 = "#I Do not issue travel notif if no change in country";
      goto LABEL_47;
    }
  }

  if (v10 < 0)
  {
    sub_100005F2C(__dst, *(a1 + 232), v11);
    if ((*(a1 + 231) & 0x80) == 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100005F2C(__p, *(a1 + 208), *(a1 + 216));
    goto LABEL_34;
  }

  *__dst = *v9;
  v24 = *(a1 + 248);
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  *__p = *v8;
  v22 = *(a1 + 224);
LABEL_34:
  sub_101376714(a1, __dst, __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  v18 = *(a1 + 56);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1 + 232;
    if (*(a1 + 255) < 0)
    {
      v19 = *v9;
    }

    v20 = a1 + 208;
    if (*(a1 + 231) < 0)
    {
      v20 = *v8;
    }

    *buf = 136315394;
    v26 = v19;
    v27 = 2080;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Regulatory should be up to date now set prevCountryCacheForAPM [%s] to currentCountry [%s]", buf, 0x16u);
  }

  std::string::operator=((a1 + 232), (a1 + 208));
  sub_101377E24(a1);
}

void sub_1013766D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101376714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10136AC30(a1);
  if (v6)
  {
    if ((*(a1 + 169) & 1) != 0 || !capabilities::ct::dataOnlySingleSIMDevice(v6))
    {
      v9 = sub_10136F6C8(a1);
      if (v9 && capabilities::ct::dataOnlySingleSIMDevice(v9))
      {
        v10 = *(a1 + 1168);
        sub_10000501C(&buf, "");
        sub_10000501C(v30, "");
        sub_10000501C(&__p, "roaming enabled");
        sub_101372680(a1, a1 + 256, a2, v10 + 32, 0, &buf, v30, &__p);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        if (buf_8[15] < 0)
        {
          operator delete(*&buf);
        }
      }

      else
      {
        v11 = *(a1 + 279);
        if (v11 >= 0)
        {
          v12 = *(a1 + 279);
        }

        else
        {
          v12 = *(a1 + 264);
        }

        v13 = *(a3 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a3 + 8);
        }

        if (v12 == v13 && (v11 >= 0 ? (v15 = (a1 + 256)) : (v15 = *(a1 + 256)), v14 >= 0 ? (v16 = a3) : (v16 = *a3), !memcmp(v15, v16, v12)))
        {
          v18 = *(a1 + 56);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I user returning home", &buf, 2u);
          }

          if (!capabilities::ct::dataOnlySingleSIMDevice(v19))
          {
            v25 = a1;
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v26, *a2, *(a2 + 8));
            }

            else
            {
              *v26 = *a2;
              v26[2] = *(a2 + 16);
            }

            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(v27, *a3, *(a3 + 8));
            }

            else
            {
              *v27 = *a3;
              v27[2] = *(a3 + 16);
            }

            v32 = 0;
            operator new();
          }

          sub_1013794B0(a1, a2, a3);
        }

        else
        {
          v17 = sub_1013719B0(a1);
          if (v17 & 1) != 0 || (capabilities::ct::dataOnlySingleSIMDevice(v17) & 1) != 0 || (sub_10136ED5C(a1) & 1) != 0 || (sub_101371638(a1, a3))
          {

            TravelHandler::maybeSendTravelOutboundNotification_sync(a1, a2, a3);
          }

          else
          {
            v20 = *(a1 + 56);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Reduced education and no valid travel sims, postpone post-arrival notification by 24h", &buf, 2u);
            }

            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v23, *a2, *(a2 + 8));
            }

            else
            {
              *v23 = *a2;
              v24 = *(a2 + 16);
            }

            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(v21, *a3, *(a3 + 8));
            }

            else
            {
              *v21 = *a3;
              v22 = *(a3 + 16);
            }

            TravelHandler::setPostArrivalNotificationTimer_sync(a1, v23, v21, 86400);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(v21[0]);
            }

            if (SHIBYTE(v24) < 0)
            {
              operator delete(v23[0]);
            }

            buf = sub_10136D3A8(*(a1 + 64)) + 86400.0;
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(buf_8, *a2, *(a2 + 8));
            }

            else
            {
              *buf_8 = *a2;
              v35 = *(a2 + 16);
            }

            if (*(a1 + 231) < 0)
            {
              sub_100005F2C(v36, *(a1 + 208), *(a1 + 216));
            }

            else
            {
              *v36 = *(a1 + 208);
              v37 = *(a1 + 224);
            }

            sub_10137B7D0(a1 + 600, &buf);
            sub_1000EFBF0(&buf);
            TravelHandler::savePostArrivalCache_sync(a1);
          }
        }
      }
    }

    else
    {
      v7 = *(a1 + 1168);
      sub_10000501C(&buf, "");
      sub_10000501C(v30, "");
      sub_10000501C(&__p, "location disabled");
      sub_101372680(a1, a1 + 256, a2, v7 + 32, 0, &buf, v30, &__p);
      if (v29 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (buf_8[15] < 0)
      {
        operator delete(*&buf);
      }

      v8 = *(a1 + 56);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I location not enabled", &buf, 2u);
      }
    }
  }
}

void sub_101377B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000296E0(&a66);
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 201) < 0)
  {
    operator delete(*(v73 - 224));
  }

  sub_101365424(&a30);
  sub_101365424(v73 - 192);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  sub_101373B64(&a54);
  sub_10000FF50(&a73);
  sub_1000EFBF0(&a23);
  _Unwind_Resume(a1);
}

void sub_101377E24(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    if (*(a1 + 255) < 0)
    {
      sub_100005F2C(__p, *(a1 + 232), *(a1 + 240));
    }

    else
    {
      *__p = *(a1 + 232);
      v4 = *(a1 + 248);
    }

    v5 = 1;
    (*(*v1 + 64))(v1, __p);
    if (v5 == 1 && SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v2 = *(a1 + 56);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }
  }
}

void sub_101377F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101377F30(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    sub_10137415C(__p, *(a1 + 1216), *(a1 + 1224), *(a2 + 56));
    if (sub_10016FA58(a1 + 328, __p))
    {
      v3 = *(a1 + 56);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = __p;
        if (v6 < 0)
        {
          v4 = __p[0];
        }

        *buf = 136315138;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle change detected for iccid (%s), reset fIccidSupportsEnhancedTravelEducationMap cache", buf, 0xCu);
      }

      sub_1000727F0((a1 + 328), __p);
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_101378054(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I PreferredNetworks change event on slot (%s)", buf, 0xCu);
  }

  v52 = 0;
  v53 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_11:
  (*(*v13 + 8))(&v52, v13, a2);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!v52)
  {
    v26 = *(a1 + 56);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unable to get entitlement controller.", buf, 2u);
    }

    goto LABEL_86;
  }

  v15 = Registry::getServiceMap(*(a1 + 64));
  v16 = v15;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  if (!v21)
  {
    v23 = 0;
LABEL_26:
    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
LABEL_20:
      v25 = *(a1 + 56);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to get isoCache", buf, 2u);
      if (v24)
      {
        goto LABEL_86;
      }

LABEL_85:
      sub_100004A34(v22);
      goto LABEL_86;
    }

    goto LABEL_27;
  }

  v23 = v21[3];
  v22 = v21[4];
  if (!v22)
  {
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v22);
  v24 = 0;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_27:
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_10137415C(&v49, *(a1 + 1216), *(a1 + 1224), a2);
  v27 = HIBYTE(v51);
  if (v51 < 0)
  {
    v27 = v50;
  }

  if (!v27)
  {
    v33 = *(a1 + 56);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to get iccid from slot (%s)", buf, 0xCu);
    }

    goto LABEL_83;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  *buf = 0u;
  v64 = 0u;
  if (((*(*v52 + 152))(v52, buf) & 1) == 0)
  {
    v35 = *(a1 + 56);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Entitlements roaming priority info is not ready", v59, 2u);
    }

    goto LABEL_77;
  }

  v47 = 0;
  v48 = 0;
  v46 = &v47;
  if ((v24 & 1) == 0)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (BYTE8(v64) != 1)
  {
    goto LABEL_74;
  }

  v28 = *buf;
  v29 = *&buf[8];
  while (v28 != v29)
  {
    *v59 = 0u;
    v60[0] = 0u;
    MCC::MCC();
    if ((MCC::valid(v59) & 1) == 0)
    {
      goto LABEL_49;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    MCC::getStringValue(__p, v59);
    (*(*v23 + 24))(&v56, v23, __p);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    v30 = SHIBYTE(v58);
    if ((SHIBYTE(v58) & 0x8000000000000000) != 0)
    {
      v30 = v57;
      if (!v57)
      {
        goto LABEL_48;
      }

      v31 = v56;
    }

    else
    {
      if (!HIBYTE(v58))
      {
        goto LABEL_49;
      }

      v31 = &v56;
    }

    v32 = &v31[v30];
    while (v31 != v32)
    {
      *v31 = __tolower(*v31);
      ++v31;
    }

    sub_100073EE8(&v46, &v56);
    if (SHIBYTE(v58) < 0)
    {
LABEL_48:
      operator delete(v56);
    }

LABEL_49:
    if (SHIBYTE(v60[0]) < 0)
    {
      operator delete(*&v59[8]);
    }

    v28 += 72;
  }

  sub_1000727F0(&v46, (a1 + 256));
  if (v48)
  {
    if (a1 + 1112 == sub_100007A6C(a1 + 1104, &v49))
    {
      v61 = 0u;
      v62 = 0;
      *(&v60[0] + 1) = 0;
      memset(&v60[1], 0, 32);
      *v59 = 0u;
      *&v60[0] = v60 + 8;
      BYTE8(v61) = 0;
      v56 = &v49;
      v42 = sub_1013858F8(a1 + 1104, &v49);
      sub_1013750E0(v42 + 56, v59);
      sub_100F98440(v59);
    }

    else if (*(sub_1000E20F0(a1 + 1104, &v49) + 8) != 2)
    {
      v36 = *(a1 + 56);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = &v49;
        if (v51 < 0)
        {
          v37 = v49;
        }

        *v59 = 136315138;
        *&v59[4] = v37;
        v38 = "#I Skip overwriting supportedCountries for iccid (%s)";
        v39 = v36;
        v40 = 12;
LABEL_65:
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, v59, v40);
      }

      goto LABEL_74;
    }

    v43 = *(a1 + 56);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = &v49;
      if (v51 < 0)
      {
        v44 = v49;
      }

      *v59 = 136315138;
      *&v59[4] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Setting supportedCountries for iccid (%s)", v59, 0xCu);
    }

    *v59 = &v49;
    *(sub_1013858F8(a1 + 1104, &v49) + 64) = 3;
    *v59 = &v49;
    v45 = (sub_1013858F8(a1 + 1104, &v49) + 72);
    if (v45 != &v46)
    {
      sub_1001730B8(v45, v46, &v47);
    }

    sub_10136AD80(a1);
    goto LABEL_74;
  }

  v41 = *(a1 + 56);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *v59 = 0;
    v38 = "#I Unlimited PLMN info is absent";
    v39 = v41;
    v40 = 2;
    goto LABEL_65;
  }

LABEL_74:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  sub_100009970(&v46, v47);
LABEL_77:
  if (BYTE8(v68) == 1)
  {
    *v59 = &v67;
    sub_1003EA960(v59);
  }

  if (BYTE8(v66) == 1)
  {
    *v59 = &v65;
    sub_1003EA960(v59);
  }

  if (BYTE8(v64) == 1)
  {
    *v59 = buf;
    sub_1003EA960(v59);
  }

LABEL_83:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v49);
    if (v24)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_84:
  if ((v24 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_86:
  if (v53)
  {
    sub_100004A34(v53);
  }
}

void sub_1013787CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_100F98440(&a32);
  if (v48)
  {
    v50 = 1;
  }

  else
  {
    sub_100004A34(v47);
    v50 = 0;
  }

  sub_100009970(&a9, a10);
  sub_1003EAA2C(&a47);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v50 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1013788DC(uint64_t a1, void *a2)
{
  if (*(a1 + 1184))
  {
    memset(&buf, 0, sizeof(buf));
    v4 = *(a1 + 1168);
    if (*(v4 + 55) < 0)
    {
      sub_100005F2C(&buf, *(v4 + 32), *(v4 + 40));
    }

    else
    {
      buf = *(v4 + 32);
    }

    v6 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    size = buf.__r_.__value_.__l.__size_;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = (&buf + HIBYTE(buf.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v8 = (buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_);
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (p_buf != v8)
    {
      do
      {
        p_buf->__r_.__value_.__s.__data_[0] = __tolower(p_buf->__r_.__value_.__s.__data_[0]);
        p_buf = (p_buf + 1);
      }

      while (p_buf != v8);
      v6 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
    }

    v10 = v6;
    if ((v6 & 0x80u) == 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
LABEL_57:
      if (!a2[2])
      {
        v28 = *(a1 + 56);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_144;
        }

        LOWORD(v61.__r_.__value_.__l.__data_) = 0;
        v26 = "#I No previous country found";
        v27 = v28;
        goto LABEL_63;
      }

      v23 = *(a1 + 1184);
      v24 = *(a1 + 56);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23 >= 2)
      {
        if (!v25)
        {
          goto LABEL_144;
        }

        LOWORD(v61.__r_.__value_.__l.__data_) = 0;
        v26 = "#I More than one country has been detected.";
        v27 = v24;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, &v61, 2u);
        goto LABEL_144;
      }

      if (v25)
      {
        sub_1013793B0(__dst, a2);
        sub_100074B94(*__dst, &__dst[8], ",", 1, &v61);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v61;
        }

        else
        {
          v29 = v61.__r_.__value_.__r.__words[0];
        }

        LODWORD(v62) = 136446210;
        *(&v62 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I prev country: %{public}s", &v62, 0xCu);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        sub_100009970(__dst, *&__dst[8]);
        v24 = *(a1 + 56);
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_1013793B0(__dst, (a1 + 1168));
        sub_100074B94(*__dst, &__dst[8], ",", 1, &v61);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v61;
        }

        else
        {
          v30 = v61.__r_.__value_.__r.__words[0];
        }

        LODWORD(v62) = 136446210;
        *(&v62 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I current country: %{public}s", &v62, 0xCu);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        sub_100009970(__dst, *&__dst[8]);
      }

      v31 = &v61;
      p_size = &v61.__r_.__value_.__l.__size_;
      *&v61.__r_.__value_.__r.__words[1] = 0uLL;
      v61.__r_.__value_.__r.__words[0] = &v61.__r_.__value_.__l.__size_;
      v33 = (a2 + 1);
      v34 = *a2;
      v35 = *(a1 + 1168);
      *&v62 = &v61;
      *(&v62 + 1) = &v61.__r_.__value_.__l.__size_;
      if (v34 != a2 + 1)
      {
        if (v35 == (a1 + 1176))
        {
LABEL_105:
          *__dst = v31;
          *&__dst[8] = p_size;
          do
          {
            sub_10138157C(__dst, v34 + 4);
            v45 = v34[1];
            if (v45)
            {
              do
              {
                v46 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v46 = v34[2];
                v42 = *v46 == v34;
                v34 = v46;
              }

              while (!v42);
            }

            v34 = v46;
          }

          while (v46 != v33);
        }

        else
        {
          while (1)
          {
            if (RegulatoryCountry::operator<(v34 + 4, v35 + 4))
            {
              sub_10138157C(&v62, v34 + 4);
              v36 = v34[1];
              if (v36)
              {
                do
                {
                  v34 = v36;
                  v36 = *v36;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v37 = v34;
                  v34 = v34[2];
                }

                while (*v34 != v37);
              }
            }

            else if (RegulatoryCountry::operator<(v35 + 4, v34 + 4))
            {
              v38 = v35[1];
              if (v38)
              {
                do
                {
                  v35 = v38;
                  v38 = *v38;
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v35;
                  v35 = v35[2];
                }

                while (*v35 != v39);
              }
            }

            else
            {
              v40 = v34[1];
              if (v40)
              {
                do
                {
                  v41 = v40;
                  v40 = *v40;
                }

                while (v40);
              }

              else
              {
                do
                {
                  v41 = v34[2];
                  v42 = *v41 == v34;
                  v34 = v41;
                }

                while (!v42);
              }

              v43 = v35[1];
              if (v43)
              {
                do
                {
                  v35 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = v35;
                  v35 = v35[2];
                }

                while (*v35 != v44);
              }

              v34 = v41;
            }

            if (v34 == v33)
            {
              break;
            }

            if (v35 == (a1 + 1176))
            {
              p_size = *(&v62 + 1);
              v31 = v62;
              goto LABEL_105;
            }
          }
        }
      }

      if (v61.__r_.__value_.__r.__words[2])
      {
        if (*(a1 + 1144) != 2)
        {
          memset(__dst, 0, sizeof(__dst));
          v57 = 0;
          v49 = *a2;
          if (*(*a2 + 55) < 0)
          {
            sub_100005F2C(__dst, v49[4], v49[5]);
          }

          else
          {
            *__dst = *(v49 + 2);
            v57 = v49[6];
          }

          v50 = HIBYTE(v57);
          if (SHIBYTE(v57) >= 0)
          {
            v51 = &__dst[HIBYTE(v57)];
          }

          else
          {
            v51 = (*__dst + *&__dst[8]);
          }

          if (SHIBYTE(v57) >= 0)
          {
            v52 = __dst;
          }

          else
          {
            v52 = *__dst;
          }

          if (v52 != v51)
          {
            do
            {
              *v52 = __tolower(*v52);
              ++v52;
            }

            while (v52 != v51);
            v50 = HIBYTE(v57);
          }

          if (v50 < 0)
          {
            sub_100005F2C(v54, *__dst, *&__dst[8]);
          }

          else
          {
            *v54 = *__dst;
            v55 = v57;
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&v53, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            v53 = buf;
          }

          sub_101376714(a1, v54, &v53);
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54[0]);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(*__dst);
          }

          goto LABEL_143;
        }

        v47 = *(a1 + 56);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          v48 = "#I regulatory change detected with APM ON";
LABEL_118:
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, __dst, 2u);
        }
      }

      else
      {
        v47 = *(a1 + 56);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          v48 = "#I No changes in regulatory country list";
          goto LABEL_118;
        }
      }

LABEL_143:
      sub_100009970(&v61, v61.__r_.__value_.__l.__size_);
LABEL_144:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      return;
    }

    if ((v6 & 0x80) != 0)
    {
      if (size != 2)
      {
        goto LABEL_26;
      }

      v12 = buf.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_26;
      }

      v12 = &buf;
    }

    if (LOWORD(v12->__r_.__value_.__l.__data_) == 31352)
    {
      goto LABEL_144;
    }

LABEL_26:
    v13 = *(a1 + 552);
    if (!v13)
    {
      goto LABEL_42;
    }

    v14 = *(a1 + 279);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 264);
    }

    if (v14 != v11)
    {
      goto LABEL_42;
    }

    v16 = v15 >= 0 ? (a1 + 256) : *(a1 + 256);
    v17 = v10 >= 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    if (memcmp(v16, v17, v11))
    {
      goto LABEL_42;
    }

    v18 = *(a1 + 56);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v61.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I user returned home within post-arrival timer, resetting", &v61, 2u);
      v13 = *(a1 + 552);
      *(a1 + 552) = 0;
      if (!v13)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *(a1 + 552) = 0;
    }

    (*(*v13 + 8))(v13);
LABEL_42:
    v19 = *(a1 + 56);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
      *(v61.__r_.__value_.__r.__words + 4) = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Setting fCurrentCountry to (%s)", &v61, 0xCu);
    }

    std::string::operator=((a1 + 208), &buf);
    if (*(a1 + 231) < 0)
    {
      sub_100005F2C(__p, *(a1 + 208), *(a1 + 216));
    }

    else
    {
      *__p = *(a1 + 208);
      v59 = *(a1 + 224);
    }

    sub_1013791E4(a1, __p);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 1144) != 2)
    {
      v21 = *(a1 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
        *(v61.__r_.__value_.__r.__words + 4) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Syncing fPreviousCountryCacheForAPM to (%s) while APM off", &v61, 0xCu);
      }

      std::string::operator=((a1 + 232), &buf);
      sub_101377E24(a1);
    }

    goto LABEL_57;
  }

  v5 = *(a1 + 56);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No current country found", &buf, 2u);
  }
}

void sub_10137911C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_100009970(v42 - 128, *(v42 - 120));
  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void sub_1013791E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 279);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 264);
  }

  if (v5 == v6 && ((v9 = *a2, v3 >= 0) ? (v10 = a2) : (v10 = *a2), v7 >= 0 ? (v11 = (a1 + 256)) : (v11 = *(a1 + 256)), !memcmp(v10, v11, v5)))
  {
    if (v3 < 0)
    {
      sub_100005F2C(__dst, v9, v4);
    }

    else
    {
      *__dst = *a2;
      v17 = *(a2 + 16);
    }

    sub_101380498(buf, a1, __dst);
    v13 = v24;
    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      sub_100009970(buf, v19);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v13 & 1) == 0)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v14, *a2, *(a2 + 8));
      }

      else
      {
        *v14 = *a2;
        v15 = *(a2 + 16);
      }

      sub_10137FE80(a1, v14);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

  else
  {
    v12 = *(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "dont support non-home countries", buf, 2u);
    }
  }
}

void sub_101379380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013793B0(void *a1, void *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v2 = a2 + 1;
  v3 = *a2;
  v9[0] = a1;
  v9[1] = a1 + 1;
  if (v3 != a2 + 1)
  {
    do
    {
      if (*(v3 + 55) < 0)
      {
        sub_100005F2C(__p, v3[4], v3[5]);
      }

      else
      {
        *__p = *(v3 + 2);
        v8 = v3[6];
      }

      sub_101381464(v9, __p);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1013794B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 170) & 1) == 0 && (capabilities::ct::dataOnlySingleSIMDevice(a1))
  {
    return;
  }

  sub_101372478();
  if (sub_100007A6C(&qword_101FCA968, a3) != &qword_101FCA970)
  {
    v26 = *(a1 + 56);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Denylisted country and skip showing return to home notification", buf, 2u);
    }

    sub_10000501C(buf, "");
    sub_10000501C(v156, "");
    sub_10000501C(__p, "deny listed country");
    sub_101372680(a1, a1 + 256, a2, a3, 0, buf, v156, __p);
    if (SBYTE7(v148) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v157) < 0)
    {
      operator delete(v156[0]);
    }

    if (SBYTE7(v167) < 0)
    {
      v27 = *buf;
LABEL_139:
      operator delete(v27);
      return;
    }

    return;
  }

  v141 = 0;
  v142 = 0;
  v143 = 0;
  sub_10136F470(&v141, a1, a2);
  v6 = SHIBYTE(v143);
  if (v143 >= 0)
  {
    v7 = HIBYTE(v143);
  }

  else
  {
    v7 = v142;
  }

  if (!v7)
  {
    v28 = *(a1 + 56);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_137;
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve previous continent code", buf, 2u);
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_138;
  }

  v138 = 0;
  v139 = 0;
  v140 = 0;
  sub_10136F470(&v138, a1, a3);
  v8 = HIBYTE(v140);
  v9 = v139;
  if (v140 >= 0)
  {
    v10 = HIBYTE(v140);
  }

  else
  {
    v10 = v139;
  }

  if (!v10)
  {
    v29 = *(a1 + 56);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to retrieve current continent code", buf, 2u);
    }

    goto LABEL_136;
  }

  v131 = v6;
  if (v10 == v7)
  {
    v11 = v138;
    v12 = v140 >= 0 ? &v138 : v138;
    v13 = v6 >= 0 ? &v141 : v141;
    if (!memcmp(v12, v13, v7))
    {
      if ((v8 & 0x80) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_20;
        }

        v33 = *v11;
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_20;
        }

        v33 = v11;
      }

      if (v33 == 50)
      {
        v54 = *(a1 + 56);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I In EU, skip return to home notification", buf, 2u);
        }

        sub_10000501C(buf, "");
        sub_10000501C(v156, "");
        sub_10000501C(__p, "EU Travel");
        sub_101372680(a1, a1 + 256, a2, a3, 0, buf, v156, __p);
        if (SBYTE7(v148) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v157) < 0)
        {
          operator delete(v156[0]);
        }

        if (SBYTE7(v167) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_136;
      }
    }
  }

LABEL_20:
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  if (!v20)
  {
    v23 = v8;
    v22 = 0;
    goto LABEL_42;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    v23 = v8;
LABEL_42:
    std::mutex::unlock(v15);
    v21 = 0;
    v25 = 1;
    if (!v22)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v23 = v8;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v25 = 0;
  if (v22)
  {
LABEL_43:
    *(a1 + 170) = 0;
    (*(*v22 + 16))(v22, @"TravelNotificationShowReturnHome", kCFBooleanFalse, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v24 = (*(*v22 + 48))(v22, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

LABEL_44:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  LOBYTE(v8) = v23;
  if (capabilities::ct::supportsGemini(v24))
  {
    v136 = 0;
    v137 = 0;
    v135 = &stru_101F6AFB8;
    CFRetain(&stru_101F6AFB8);
    v6 = v131;
    for (i = *(a1 + 1192); i != *(a1 + 1200); i += 22)
    {
      if (*i)
      {
        v31 = i[3] == 5;
      }

      else
      {
        v31 = 1;
      }

      v32 = !v31;
      if (i[1] == 3)
      {
        if (v32)
        {
LABEL_91:
          *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE";
          sub_10021D11C(&v137, buf);
          *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE";
          sub_10021D11C(&v136, buf);
          goto LABEL_93;
        }

        break;
      }

      if (v32)
      {
        goto LABEL_91;
      }
    }

    *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_PSIM";
    sub_10021D11C(&v137, buf);
    *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_PSIM";
    sub_10021D11C(&v136, buf);
LABEL_93:
    v134 = 0uLL;
    v161 = 0;
    *v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    *v156 = 0u;
    if (*(a1 + 279) < 0)
    {
      sub_100005F2C(v154, *(a1 + 256), *(a1 + 264));
    }

    else
    {
      *v154 = *(a1 + 256);
      v155 = *(a1 + 272);
    }

    sub_101373818(v156, a1, v154);
    if (SHIBYTE(v155) < 0)
    {
      operator delete(v154[0]);
    }

    if (v161)
    {
      if (v157)
      {
        v39 = Registry::getServiceMap(*(a1 + 64));
        v40 = v39;
        if (v41 < 0)
        {
          v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v43 = 5381;
          do
          {
            v41 = v43;
            v44 = *v42++;
            v43 = (33 * v43) ^ v44;
          }

          while (v44);
        }

        std::mutex::lock(v39);
        *buf = v41;
        v45 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v45)
        {
          v46 = v45[3];
          v47 = v45[4];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v47);
            if (!v46)
            {
              v134 = 0uLL;
LABEL_435:
              sub_100004A34(v47);
              goto LABEL_110;
            }

LABEL_158:
            v153 = 0uLL;
            v55 = Registry::getServiceMap(*(a1 + 64));
            v56 = v55;
            if (v57 < 0)
            {
              v58 = (v57 & 0x7FFFFFFFFFFFFFFFLL);
              v59 = 5381;
              do
              {
                v57 = v59;
                v60 = *v58++;
                v59 = (33 * v59) ^ v60;
              }

              while (v60);
            }

            std::mutex::lock(v55);
            *buf = v57;
            v61 = sub_100009510(&v56[1].__m_.__sig, buf);
            v130 = v46;
            if (v61)
            {
              v62 = v61[3];
              v63 = v61[4];
              if (v63)
              {
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v56);
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v63);
                v64 = 0;
LABEL_166:
                v151 = 0;
                v152 = 0;
                v65 = v156[0];
                if (v156[0] != &v156[1])
                {
                  do
                  {
                    if (sub_10136EA08(a1, v65 + 4))
                    {
                      v66 = v65[1];
                      if (v66)
                      {
                        do
                        {
                          v67 = v66;
                          v66 = *v66;
                        }

                        while (v66);
                      }

                      else
                      {
                        do
                        {
                          v67 = v65[2];
                          v31 = *v67 == v65;
                          v65 = v67;
                        }

                        while (!v31);
                      }
                    }

                    else
                    {
                      v67 = sub_100075658(v156, v65);
                    }

                    v65 = v67;
                  }

                  while (v67 != &v156[1]);
                }

                if ((v161 & 1) == 0)
                {
                  sub_1000D1644();
                }

                if (v157 != 2)
                {
                  if (v157 != 1)
                  {
                    goto LABEL_431;
                  }

                  memset(&v150, 0, sizeof(v150));
                  v128 = v63;
                  v129 = v64;
                  if (*(v156[0] + 55) < 0)
                  {
                    sub_100005F2C(&v150, *(v156[0] + 4), *(v156[0] + 5));
                  }

                  else
                  {
                    v150 = *(v156[0] + 32);
                  }

                  v148 = 0u;
                  v149 = 0u;
                  *__p = 0u;
                  v72 = *(a1 + 1216);
                  v73 = *(a1 + 1224);
                  if (v72 == v73)
                  {
                    goto LABEL_224;
                  }

                  v74 = v72 + 96;
                  do
                  {
                    if ((subscriber::isEsimCapable() & 1) == 0)
                    {
                      v75 = *(v74 - 1);
                      if (v75 < 0 ? *(v74 - 16) : *(v74 - 1))
                      {
                        if (v75 >= 0)
                        {
                          v77 = *(v74 - 1);
                        }

                        else
                        {
                          v77 = *(v74 - 16);
                        }

                        size = HIBYTE(v150.__r_.__value_.__r.__words[2]);
                        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          size = v150.__r_.__value_.__l.__size_;
                        }

                        if (v77 == size)
                        {
                          v79 = v75 >= 0 ? (v74 - 24) : *(v74 - 24);
                          v80 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
                          if (!memcmp(v79, v80, v77))
                          {
                            v167 = 0u;
                            v168 = 0u;
                            *buf = 0u;
                            sub_100A34BC8(buf);
                            sub_10136CFD8(&v180, a1, v74 - 24);
                            if (SBYTE7(v148) < 0)
                            {
                              operator delete(__p[0]);
                            }

                            *__p = *&v180.__r_.__value_.__l.__data_;
                            *&v148 = *(&v180.__r_.__value_.__l + 2);
                            std::string::operator=((&v148 + 8), buf);
                            if (SHIBYTE(v168) < 0)
                            {
                              operator delete(*(&v167 + 1));
                            }

                            if (SBYTE7(v167) < 0)
                            {
                              operator delete(*buf);
                            }
                          }
                        }
                      }
                    }

                    v81 = v74 + 72;
                    v74 += 168;
                  }

                  while (v81 != v73);
                  v82 = BYTE7(v148);
                  if (SBYTE7(v148) < 0)
                  {
                    v82 = __p[1];
                  }

                  if (!v82)
                  {
LABEL_224:
                    v83 = *(a1 + 1192);
                    for (j = *(a1 + 1200); v83 != j; v83 += 88)
                    {
                      if (*(v83 + 12) == 3 && *(v83 + 80) == 1)
                      {
                        v85 = *(v83 + 56);
                        v86 = *(v83 + 64);
                        while (v85 != v86)
                        {
                          v179 = 0;
                          v177 = 0u;
                          v178 = 0u;
                          v175 = 0u;
                          v176 = 0u;
                          v173 = 0u;
                          *v174 = 0u;
                          *v171 = 0u;
                          *v172 = 0u;
                          *v169 = 0u;
                          v170 = 0u;
                          v167 = 0u;
                          v168 = 0u;
                          *buf = 0u;
                          sub_100F11F00(buf, v85);
                          if ((BYTE1(v171[1]) & 1) == 0)
                          {
                            if ((SBYTE7(v168) & 0x80u) == 0)
                            {
                              v87 = BYTE7(v168);
                            }

                            else
                            {
                              v87 = *(&v167 + 1);
                            }

                            v88 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
                            if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v88 = v150.__r_.__value_.__l.__size_;
                            }

                            if (v87 == v88)
                            {
                              v89 = (SBYTE7(v168) & 0x80u) == 0 ? &v167 : v167;
                              v90 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
                              if (!memcmp(v89, v90, v87))
                              {
                                sub_10136CFD8(&v180, a1, &v167);
                                if (SBYTE7(v148) < 0)
                                {
                                  operator delete(__p[0]);
                                }

                                *__p = *&v180.__r_.__value_.__l.__data_;
                                *&v148 = *(&v180.__r_.__value_.__l + 2);
                                std::string::operator=((&v148 + 8), v172);
                              }
                            }
                          }

                          sub_100E3A5D4(buf);
                          v85 += 216;
                        }
                      }
                    }
                  }

                  v91 = *(a1 + 1192);
                  v92 = *(a1 + 1200);
                  v63 = v128;
                  if (v91 == v92)
                  {
LABEL_258:
                    v95 = kCBMessageLocalizationTable;
                    (*(*v130 + 40))(&v180, v130, kCBMessageLocalizationTable, @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_PSIM_ONLY_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_PSIM_ONLY_%@");
                  }

                  else
                  {
                    while (1)
                    {
                      v93 = !*v91 || v91[3] == 5;
                      v94 = !v93;
                      if (v91[1] == 3)
                      {
                        break;
                      }

                      if (v94)
                      {
                        goto LABEL_338;
                      }

                      v91 += 22;
                      if (v91 == v92)
                      {
                        goto LABEL_258;
                      }
                    }

                    if (!v94)
                    {
                      goto LABEL_258;
                    }

LABEL_338:
                    v95 = kCBMessageLocalizationTable;
                    (*(*v130 + 40))(&v180, v130, kCBMessageLocalizationTable, @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_%@");
                  }

                  *buf = v152;
                  v152 = v180.__r_.__value_.__r.__words[0];
                  v180.__r_.__value_.__r.__words[0] = 0;
                  sub_100005978(buf);
                  sub_100005978(&v180.__r_.__value_.__l.__data_);
                  v64 = v129;
                  if (*(a1 + 721) == 1)
                  {
                    if (*(a1 + 720) == 1)
                    {
                      (*(*v130 + 40))(&v180, v130, v95, @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_TRAVEL_PSIM_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_TRAVEL_PSIM_%@");
                      *buf = v151;
                      v151 = v180.__r_.__value_.__r.__words[0];
                      v180.__r_.__value_.__r.__words[0] = 0;
                      sub_100005978(buf);
                      sub_100005978(&v180.__r_.__value_.__l.__data_);
                    }

                    (*(*v130 + 40))(&v180, v130, v95, @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_%@");
                  }

                  else
                  {
                    (*(*v130 + 40))(&v180, v130, v95, @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_NO_TRAVEL_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_NO_TRAVEL_%@");
                  }

                  *buf = v151;
                  v151 = v180.__r_.__value_.__r.__words[0];
                  v180.__r_.__value_.__r.__words[0] = 0;
                  sub_100005978(buf);
                  v108 = sub_100005978(&v180.__r_.__value_.__l.__data_);
                  *&v175 = 0;
                  v173 = 0u;
                  *v174 = 0u;
                  *v171 = 0u;
                  *v172 = 0u;
                  *v169 = 0u;
                  v170 = 0u;
                  v167 = 0u;
                  v168 = 0u;
                  *buf = 0u;
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(v108, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v180 = v150;
                  }

                  (*(*v62 + 184))(buf, v62, &v180);
                  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v180.__r_.__value_.__l.__data_);
                  }

                  if ((SBYTE7(v170) & 0x80u) == 0)
                  {
                    v109 = BYTE7(v170);
                  }

                  else
                  {
                    v109 = v169[1];
                  }

                  if (v109)
                  {
                    v110 = v152;
                    if (SBYTE7(v148) < 0)
                    {
                      sub_100005F2C(&v146, __p[0], __p[1]);
                    }

                    else
                    {
                      *&v146.__r_.__value_.__l.__data_ = *__p;
                      v146.__r_.__value_.__r.__words[2] = v148;
                    }

                    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v165, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v165 = v146;
                    }

                    v163 = 0;
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v180, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v180 = v165;
                    }

                    v164 = 0;
                    if (ctu::cf::convert_copy())
                    {
                      v113 = v163;
                      v163 = v164;
                      v144.__r_.__value_.__r.__words[0] = v113;
                      sub_100005978(&v144.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180.__r_.__value_.__l.__data_);
                    }

                    v162 = v163;
                    v163 = 0;
                    sub_100005978(&v163);
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v165.__r_.__value_.__l.__data_);
                    }

                    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v110, 0, v162);
                    v115 = v153;
                    *&v153 = StringWithValidatedFormat;
                    v180.__r_.__value_.__r.__words[0] = v115;
                    sub_100005978(&v180.__r_.__value_.__l.__data_);
                    sub_100005978(&v162);
                    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v146.__r_.__value_.__l.__data_);
                    }

                    v116 = HIBYTE(v173);
                    if (v173 >= 0)
                    {
                      v117 = HIBYTE(v173);
                    }

                    else
                    {
                      v117 = v173;
                    }

                    v118 = 104;
                    if (!v117)
                    {
                      v118 = 80;
                    }

                    v119 = &buf[v118];
                    if (!v117)
                    {
                      v116 = HIBYTE(v172[0]);
                    }

                    if (v116 < 0)
                    {
                      if (v117)
                      {
                        v120 = v173;
                      }

                      else
                      {
                        v120 = v171[1];
                      }

                      sub_100005F2C(&v180, v119->__r_.__value_.__l.__data_, v120);
                    }

                    else
                    {
                      v180 = *v119;
                    }

                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v121 = v180.__r_.__value_.__l.__size_;
                      operator delete(v180.__r_.__value_.__l.__data_);
                      if (!v121)
                      {
                        goto LABEL_412;
                      }
                    }

                    else if (!*(&v180.__r_.__value_.__s + 23))
                    {
                      goto LABEL_412;
                    }

                    v122 = *(a1 + 56);
                    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_1013737D4(&v180, buf);
                      v123 = (v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v180 : v180.__r_.__value_.__r.__words[0];
                      LODWORD(v165.__r_.__value_.__l.__data_) = 136315138;
                      *(v165.__r_.__value_.__r.__words + 4) = v123;
                      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "#I mdn (%s)", &v165, 0xCu);
                      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v180.__r_.__value_.__l.__data_);
                      }
                    }

                    v124 = v151;
                    sub_1013737D4(&v144, buf);
                    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v165, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v165 = v144;
                    }

                    v162 = 0;
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v180, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v180 = v165;
                    }

                    v163 = 0;
                    if (ctu::cf::convert_copy())
                    {
                      v125 = v162;
                      v162 = v163;
                      v164 = v125;
                      sub_100005978(&v164);
                    }

                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180.__r_.__value_.__l.__data_);
                    }

                    v145 = v162;
                    v162 = 0;
                    sub_100005978(&v162);
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v165.__r_.__value_.__l.__data_);
                    }

                    v126 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v124, 0, v145);
                    v127 = *(&v153 + 1);
                    *(&v153 + 1) = v126;
                    v180.__r_.__value_.__r.__words[0] = v127;
                    sub_100005978(&v180.__r_.__value_.__l.__data_);
                    sub_100005978(&v145);
                    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v144.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    v111 = *(a1 + 56);
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                    {
                      v112 = &v150;
                      if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v112 = v150.__r_.__value_.__r.__words[0];
                      }

                      LODWORD(v180.__r_.__value_.__l.__data_) = 136315138;
                      *(v180.__r_.__value_.__r.__words + 4) = v112;
                      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I Invalid label for (%s)", &v180, 0xCu);
                    }

                    v134 = 0uLL;
                  }

LABEL_412:
                  if (SBYTE7(v175) < 0)
                  {
                    operator delete(v174[0]);
                  }

                  if (SHIBYTE(v173) < 0)
                  {
                    operator delete(v172[1]);
                  }

                  if (SHIBYTE(v172[0]) < 0)
                  {
                    operator delete(v171[0]);
                  }

                  if (SBYTE7(v170) < 0)
                  {
                    operator delete(v169[0]);
                  }

                  if (SHIBYTE(v168) < 0)
                  {
                    operator delete(*(&v167 + 1));
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(v149) < 0)
                  {
                    operator delete(*(&v148 + 1));
                  }

                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  if (!v109)
                  {
LABEL_432:
                    sub_100005978(&v151);
                    sub_100005978(&v152);
                    if ((v64 & 1) == 0)
                    {
                      sub_100004A34(v63);
                    }

                    sub_100005978(&v153 + 1);
                    sub_100005978(&v153);
                    v6 = v131;
                    if (!v47)
                    {
                      goto LABEL_110;
                    }

                    goto LABEL_435;
                  }

LABEL_431:
                  v134 = v153;
                  v153 = 0uLL;
                  goto LABEL_432;
                }

                memset(&v180, 0, sizeof(v180));
                memset(&v165, 0, sizeof(v165));
                for (k = *(a1 + 1192); ; k += 22)
                {
                  if (k == *(a1 + 1200))
                  {
                    v71 = v46;
                    goto LABEL_263;
                  }

                  if (*k)
                  {
                    v69 = k[3] == 5;
                  }

                  else
                  {
                    v69 = 1;
                  }

                  v70 = !v69;
                  if (k[1] == 3)
                  {
                    v71 = v46;
                    goto LABEL_263;
                  }

                  if (v70)
                  {
                    break;
                  }
                }

                v71 = v46;
LABEL_263:
                (*(*v71 + 40))(__p);
                *buf = v152;
                v152 = __p[0];
                __p[0] = 0;
                sub_100005978(buf);
                sub_100005978(__p);
                if (*(a1 + 721) == 1 && *(a1 + 720) == 1)
                {
                  (*(*v46 + 40))(__p);
                  *buf = v151;
                  v151 = __p[0];
                  __p[0] = 0;
                  sub_100005978(buf);
                  sub_100005978(__p);
                }

                (*(*v46 + 40))(__p);
                *buf = v151;
                v151 = __p[0];
                __p[0] = 0;
                sub_100005978(buf);
                sub_100005978(__p);
                if ((v161 & 1) == 0)
                {
                  sub_1000D1644();
                }

                v96 = v156[0];
                if (v156[0] == &v156[1])
                {
LABEL_300:
                  sub_100222570(&v153, &v152);
                  v102 = v151;
                  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v150, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v150 = v180;
                  }

                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(__p, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *__p = *&v150.__r_.__value_.__l.__data_;
                    *&v148 = *(&v150.__r_.__value_.__l + 2);
                  }

                  v164 = 0;
                  if (SBYTE7(v148) < 0)
                  {
                    sub_100005F2C(buf, __p[0], __p[1]);
                  }

                  else
                  {
                    *buf = *__p;
                    *&v167 = v148;
                  }

                  v144.__r_.__value_.__r.__words[0] = 0;
                  if (ctu::cf::convert_copy())
                  {
                    v103 = v164;
                    v164 = v144.__r_.__value_.__r.__words[0];
                    v146.__r_.__value_.__r.__words[0] = v103;
                    sub_100005978(&v146.__r_.__value_.__l.__data_);
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  v162 = v164;
                  v164 = 0;
                  sub_100005978(&v164);
                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v104 = v162;
                  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v146, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v146 = v165;
                  }

                  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(__p, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *__p = *&v146.__r_.__value_.__l.__data_;
                    *&v148 = *(&v146.__r_.__value_.__l + 2);
                  }

                  v163 = 0;
                  if (SBYTE7(v148) < 0)
                  {
                    sub_100005F2C(buf, __p[0], __p[1]);
                  }

                  else
                  {
                    *buf = *__p;
                    *&v167 = v148;
                  }

                  v164 = 0;
                  if (ctu::cf::convert_copy())
                  {
                    v105 = v163;
                    v163 = v164;
                    v144.__r_.__value_.__r.__words[0] = v105;
                    sub_100005978(&v144.__r_.__value_.__l.__data_);
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  v145 = v163;
                  v163 = 0;
                  sub_100005978(&v163);
                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v106 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v102, 0, v104, v145);
                  v107 = *(&v153 + 1);
                  *(&v153 + 1) = v106;
                  *buf = v107;
                  sub_100005978(buf);
                  sub_100005978(&v145);
                  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v146.__r_.__value_.__l.__data_);
                  }

                  sub_100005978(&v162);
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v165.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v180.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_431;
                }

                while (1)
                {
                  *&v175 = 0;
                  v173 = 0u;
                  *v174 = 0u;
                  *v171 = 0u;
                  *v172 = 0u;
                  *v169 = 0u;
                  v170 = 0u;
                  v167 = 0u;
                  v168 = 0u;
                  *buf = 0u;
                  if (*(v96 + 55) < 0)
                  {
                    sub_100005F2C(__p, v96[4], v96[5]);
                  }

                  else
                  {
                    *__p = *(v96 + 2);
                    *&v148 = v96[6];
                  }

                  (*(*v62 + 184))(buf, v62, __p);
                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v97 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
                  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v97 = v180.__r_.__value_.__l.__size_;
                  }

                  if (v97)
                  {
                    v98 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
                    if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v98 = v165.__r_.__value_.__l.__size_;
                    }

                    if (v98)
                    {
                      goto LABEL_282;
                    }

                    v99 = &v165;
                  }

                  else
                  {
                    v99 = &v180;
                  }

                  std::string::operator=(v99, buf);
LABEL_282:
                  if (SBYTE7(v175) < 0)
                  {
                    operator delete(v174[0]);
                  }

                  if (SHIBYTE(v173) < 0)
                  {
                    operator delete(v172[1]);
                  }

                  if (SHIBYTE(v172[0]) < 0)
                  {
                    operator delete(v171[0]);
                  }

                  if (SBYTE7(v170) < 0)
                  {
                    operator delete(v169[0]);
                  }

                  if (SHIBYTE(v168) < 0)
                  {
                    operator delete(*(&v167 + 1));
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  v100 = v96[1];
                  if (v100)
                  {
                    do
                    {
                      v101 = v100;
                      v100 = *v100;
                    }

                    while (v100);
                  }

                  else
                  {
                    do
                    {
                      v101 = v96[2];
                      v31 = *v101 == v96;
                      v96 = v101;
                    }

                    while (!v31);
                  }

                  v96 = v101;
                  if (v101 == &v156[1])
                  {
                    goto LABEL_300;
                  }
                }
              }
            }

            else
            {
              v62 = 0;
            }

            std::mutex::unlock(v56);
            v63 = 0;
            v64 = 1;
            goto LABEL_166;
          }

          std::mutex::unlock(v40);
          if (v46)
          {
            goto LABEL_158;
          }
        }

        else
        {
          std::mutex::unlock(v40);
        }
      }

      else
      {
        v53 = *(a1 + 56);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I No user enabled iccids to restore.", buf, 2u);
        }
      }
    }

    else
    {
      v48 = *(a1 + 56);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "no home settings saved", buf, 2u);
      }
    }

    v134 = 0uLL;
LABEL_110:
    if (v161 == 1)
    {
      if (SBYTE7(v160) < 0)
      {
        operator delete(v159[0]);
      }

      if (SHIBYTE(v158) < 0)
      {
        operator delete(*(&v157 + 1));
      }

      sub_100009970(v156, v156[1]);
    }

    if (v134 && *(&v134 + 1))
    {
      v49 = *(a1 + 56);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Set title and message with home cellular settings.", buf, 2u);
      }

      sub_100222570(&v137, &v134);
      sub_100222570(&v136, &v134 + 1);
    }

    v51 = v136;
    v50 = v137;
    v52 = v135;
    sub_10000501C(buf, [@"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR" UTF8String]);
    sub_10000501C(v156, "");
    sub_10000501C(__p, "");
    sub_10137EED0(a1, v50, v51, v52, buf, v156, __p);
    if (SBYTE7(v148) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v157) < 0)
    {
      operator delete(v156[0]);
    }

    if (SBYTE7(v167) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v134 + 1);
    sub_100005978(&v134);
    sub_100005978(&v135);
    sub_100005978(&v136);
    sub_100005978(&v137);
    goto LABEL_136;
  }

  memset(buf, 0, sizeof(buf));
  *&v167 = 0;
  v6 = v131;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v133 = *(a3 + 16);
  }

  if ((v23 & 0x80) != 0)
  {
    if (v9 == 1)
    {
      v34 = v138;
      goto LABEL_69;
    }

LABEL_70:
    v35 = 0;
    goto LABEL_71;
  }

  if (v23 != 1)
  {
    goto LABEL_70;
  }

  v34 = &v138;
LABEL_69:
  v35 = *v34 == 50;
LABEL_71:
  sub_101374B80(buf, a1, __dst, v35);
  if (SHIBYTE(v133) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v167)
  {
    v36 = *buf;
    if (*buf == &buf[8])
    {
LABEL_82:
      sub_10000501C(v156, [@"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR" UTF8String]);
      sub_10000501C(__p, "");
      sub_10000501C(&v180, "");
      sub_10137EED0(a1, @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_%@", &stru_101F6AFB8, v156, __p, &v180);
      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v180.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v148) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v157) < 0)
      {
        operator delete(v156[0]);
      }

      sub_10000501C(v156, "");
      sub_10000501C(__p, "");
      sub_10000501C(&v180, "");
      sub_101372680(a1, a1 + 256, a2, a3, 1, v156, __p, &v180);
    }

    else
    {
      while ((v36[56] & 1) == 0)
      {
        v37 = *(v36 + 1);
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = *(v36 + 2);
            v31 = *v38 == v36;
            v36 = v38;
          }

          while (!v31);
        }

        v36 = v38;
        if (v38 == &buf[8])
        {
          goto LABEL_82;
        }
      }

      sub_10000501C(v156, "");
      sub_10000501C(__p, "");
      sub_10000501C(&v180, "local plan enabled");
      sub_101372680(a1, a1 + 256, a2, a3, 0, v156, __p, &v180);
    }
  }

  else
  {
    sub_10000501C(v156, "");
    sub_10000501C(__p, "");
    sub_10000501C(&v180, "Home Plan Enabled");
    sub_101372680(a1, a1 + 256, a2, a3, 0, v156, __p, &v180);
  }

  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v148) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v157) < 0)
  {
    operator delete(v156[0]);
  }

  sub_100009970(buf, *&buf[8]);
LABEL_136:
  if ((v8 & 0x80) == 0)
  {
LABEL_137:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_138;
  }

  operator delete(v138);
  if (v6 < 0)
  {
LABEL_138:
    v27 = v141;
    goto LABEL_139;
  }
}