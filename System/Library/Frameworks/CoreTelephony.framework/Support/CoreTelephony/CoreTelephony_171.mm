void sub_10148764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1014877D0(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_10000501C(&v5, "false");
  ctu::cf::assign();
  if (SHIBYTE(v7) < 0)
  {
    v3 = v6 == 4 && *v5 == 1702195828;
    operator delete(v5);
  }

  else
  {
    return SHIBYTE(v7) == 4 && v5 == 1702195828;
  }

  return v3;
}

void sub_10148789C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014878B8(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  return ctu::cf::assign();
}

void sub_10148791C(uint64_t a1)
{
  v1 = a1;
  memset(v2, 0, sizeof(v2));
  sub_100A5C398(v2, &v1, "kSettingsModelGetProperty", sub_101487C98, 3);
}

void sub_101487C98(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFIndex *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = Registry::getServiceMap(*a1);
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
  *&buf = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, &buf);
  if (!v24)
  {
    v26 = 0;
    goto LABEL_16;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
LABEL_16:
    std::mutex::unlock(v19);
    v25 = 0;
    v42 = 1;
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v42 = 0;
LABEL_17:
  if (xpc_dictionary_get_value(*a4, "kSettingsModelCopySystemCapabilities") && v26)
  {
    v70 = 0;
    (*(*v26 + 64))(&v70, v26, 1);
    if (v70)
    {
      v81 = _CFXPCCreateXPCObjectFromCFObject();
      if (!v81)
      {
        v81 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kSettingsModelSystemCapabilitiesDict";
      sub_10000F688(&buf, &v81, &v82);
      xpc_release(v82);
      v82 = 0;
      xpc_release(v81);
      v81 = 0;
    }

    sub_10001021C(&v70);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelCopyBasebandSettings"))
  {
    sub_100020AB8();
    v27 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSettingsCopyBasebandSettings", &buf, 2u);
    }

    if (v16)
    {
      v70 = 0;
      LODWORD(length) = 0;
      (*(*v16 + 384))(v16, &v70, &length);
      if (v70)
      {
        v28 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v70, length, kCFAllocatorNull);
        if (v28)
        {
          v29 = CFPropertyListCreateWithData(kCFAllocatorDefault, v28, 0, 0, 0);
          if (v29)
          {
            v79 = _CFXPCCreateXPCObjectFromCFObject();
            if (!v79)
            {
              v79 = xpc_null_create();
            }

            *&buf = *a5;
            *(&buf + 1) = "kSettingsModelBasebandSettingsDict";
            sub_10000F688(&buf, &v79, &v80);
            xpc_release(v80);
            v80 = 0;
            xpc_release(v79);
            v79 = 0;
            CFRelease(v29);
          }

          CFRelease(v28);
        }

        vm_deallocate(mach_task_self_, v70, length);
      }

      else
      {
        *&buf = *a5;
        *(&buf + 1) = "kSettingsModelBasebandSettingsDict";
        sub_100E3F0C8(&buf, &v78);
        xpc_release(v78);
        v78 = 0;
      }
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelIsUnconditionalCallForwardingActive"))
  {
    sub_100020AB8();
    v30 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I ## server_CTIsUnconditionalCallForwardingActive", &buf, 2u);
    }

    if (v16)
    {
      v31 = (*(*v16 + 104))(v16, 1);
      if ((v31 & 0x100) != 0)
      {
        v76 = xpc_BOOL_create(v31 & 1);
        if (!v76)
        {
          v76 = xpc_null_create();
        }

        *&buf = *a5;
        *(&buf + 1) = "kSettingsModelActive";
        sub_10000F688(&buf, &v76, &v77);
        xpc_release(v77);
        v77 = 0;
        xpc_release(v76);
        v76 = 0;
      }

      else
      {
        v74 = xpc_int64_create(35);
        if (!v74)
        {
          v74 = xpc_null_create();
        }

        *&buf = *a5;
        *(&buf + 1) = "kPosixError";
        sub_10000F688(&buf, &v74, &v75);
        xpc_release(v75);
        v75 = 0;
        xpc_release(v74);
        v74 = 0;
      }
    }

    else
    {
      v72 = xpc_BOOL_create(0);
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kSettingsModelActive";
      sub_10000F688(&buf, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelGetVoiceMailInfo"))
  {
    sub_100020AB8();
    v32 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I ## server_SettingsModelGetVoiceMailInfo", &buf, 2u);
    }

    *&buf = 4096;
    if (IsTelephonyRunningExtended(&buf))
    {
      v70 = 0;
      v71 = 0;
      sub_100DF07C8(*a1, &v70);
      if (v70)
      {
        buf = 0u;
        v69 = 0u;
        (*(*v70 + 72))(v70, 1);
        if ((SBYTE7(v69) & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        v66 = xpc_string_create(p_buf);
        if (!v66)
        {
          v66 = xpc_null_create();
        }

        length = *a5;
        v65 = "kSettingsModelNumber";
        sub_10000F688(&length, &v66, &v67);
        xpc_release(v67);
        v67 = 0;
        xpc_release(v66);
        v66 = 0;
        v62 = xpc_int64_create(SDWORD2(v69));
        if (!v62)
        {
          v62 = xpc_null_create();
        }

        length = *a5;
        v65 = "kSettingsModelType";
        sub_10000F688(&length, &v62, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v62);
        v62 = 0;
        if (SBYTE7(v69) < 0)
        {
          operator delete(buf);
        }
      }

      if (v71)
      {
        sub_100004A34(v71);
      }
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelGetEffectiveSimInfo"))
  {
    sub_100020AB8();
    v34 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I ## server_CTGetEffectiveSimInfo", &buf, 2u);
    }

    v60 = xpc_BOOL_create(0);
    if (!v60)
    {
      v60 = xpc_null_create();
    }

    *&buf = *a5;
    *(&buf + 1) = "kSettingsModelValid";
    sub_10000F688(&buf, &v60, &v61);
    xpc_release(v61);
    v61 = 0;
    xpc_release(v60);
    v60 = 0;
    buf = 0uLL;
    sub_10006C5D0(&buf);
    v35 = buf;
    if (buf)
    {
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3321888768;
      v54[2] = sub_10148D7A4;
      v54[3] = &unk_101F3FF30;
      v37 = *a5;
      v36 = a5[1];
      v55 = &stru_101F3FF08;
      v56 = v37;
      v57 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = v16;
      v59 = v15;
      if ((v17 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v35 + 24))(v35, v54);
      if (v59)
      {
        sub_100004A34(v59);
      }

      if (v57)
      {
        sub_100004A34(v57);
      }
    }

    else
    {
      v38 = a5[1];
      v53[0] = *a5;
      v53[1] = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52[0] = v16;
      v52[1] = v15;
      if ((v17 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      CSIPhoneNumber::CSIPhoneNumber(&v43);
      v83.var0.var0 = v53;
      v83.var0.var1 = v52;
      v84.var1 = &v43;
      v84.var0 = 0;
      sub_10148D580(v39, v83, v84, v40, v41);
      if (v51 < 0)
      {
        operator delete(__p);
      }

      if (v49 < 0)
      {
        operator delete(v48);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }

      if (*(&v43.var2.__rep_.__l + 23) < 0)
      {
        operator delete(v43.var2.__rep_.__l.__data_);
      }

      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v38)
      {
        sub_100004A34(v38);
      }
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }

  if ((v42 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1014885F4(_Unwind_Exception *a1, int a2, char a3, ...)
{
  va_start(va, a3);
  sub_10034F8E8(va);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  v9 = *(v7 - 232);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if ((a3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  if ((v6 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10148872C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v21 = xpc_BOOL_create(0);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v20[0] = *a5;
  v20[1] = "kSettingsModelValid";
  sub_10000F688(v20, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v20[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v20);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_12:
  v17 = a5[1];
  v18 = *a5;
  v19 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 320))(v15, &v18);
  if (v19)
  {
    sub_100004A34(v19);
  }

LABEL_16:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1014888C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014888F4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
    v12 = v11[3];
    v13 = v11[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = v13;
      sub_100004A34(v13);
      v58 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v57 = 0;
  v58 = 1;
LABEL_9:
  if (xpc_dictionary_get_value(*a4, "kSettingsModelSetBasebandSettings"))
  {
    sub_100020AB8();
    v14 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSettingsSetBasebandSettings", buf, 2u);
    }

    if (v12)
    {
      *buf = 0;
      xpc_dictionary_get_value(*a4, "kSettingsModelBasebandSettingsDict");
      error[0] = _CFXPCCreateCFObjectFromXPCObject();
      sub_100138C38(buf, error);
      error[0] = 0;
      Data = CFPropertyListCreateData(kCFAllocatorDefault, *buf, kCFPropertyListBinaryFormat_v1_0, 0, error);
      v16 = Data;
      if (Data)
      {
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v16);
        (*(*v12 + 392))(v12, BytePtr, Length);
        CFRelease(v16);
      }

      if (error[0])
      {
        CFRelease(error[0]);
      }

      sub_10001021C(buf);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallForwardingValue"))
  {
    sub_100020AB8();
    v19 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveCallForwardingValue", buf, 2u);
    }

    if (v12)
    {
      *buf = a4;
      *&buf[8] = "kSettingsModelReason";
      sub_100006354(buf, error);
      v21 = xpc::dyn_cast_or_default(error, 0, v20);
      xpc_release(error[0]);
      *buf = a4;
      *&buf[8] = "kSettingsModelClss";
      sub_100006354(buf, error);
      v23 = xpc::dyn_cast_or_default(error, 0, v22);
      xpc_release(error[0]);
      *buf = a4;
      *&buf[8] = "kSettingsModelEnabled";
      sub_100006354(buf, error);
      v25 = xpc::dyn_cast_or_default(error, 0, v24);
      xpc_release(error[0]);
      LOBYTE(v65) = v25;
      *buf = a4;
      *&buf[8] = "kSettingsModelSaveNumber";
      sub_100006354(buf, error);
      v27 = xpc::dyn_cast_or_default(error, 0, v26);
      xpc_release(error[0]);
      error[0] = 0;
      error[1] = 0;
      v80 = 0;
      v76 = a4;
      v77 = "kSettingsModelNumber";
      sub_100006354(&v76, &v78);
      memset(buf, 0, sizeof(buf));
      *&v67 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v67) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(v78);
      *buf = a4;
      *&buf[8] = "kSettingsModelCallFwdSaveTime";
      sub_100006354(buf, &v76);
      v29 = xpc::dyn_cast_or_default(&v76, 0, v28);
      xpc_release(v76);
      *buf = a4;
      *&buf[8] = "kSettingsModelTime";
      sub_100006354(buf, &v76);
      v31 = xpc::dyn_cast_or_default(&v76, 0, v30);
      xpc_release(v76);
      LOBYTE(v76) = v31;
      *__p = 0u;
      v75 = 0u;
      *v72 = 0u;
      v73 = 0u;
      *v70 = 0u;
      v71 = 0u;
      *v68 = 0u;
      v69 = 0u;
      *buf = 0u;
      v67 = 0u;
      CSIPhoneNumber::CSIPhoneNumber();
      if (v27)
      {
        v32 = buf;
      }

      else
      {
        v32 = 0;
      }

      if (v29)
      {
        v33 = &v76;
      }

      else
      {
        v33 = 0;
      }

      (*(*v12 + 96))(v12, 1, &v65, v32, v33, v21, v23);
      if (SBYTE7(v75) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72[1]);
      }

      if (SBYTE7(v71) < 0)
      {
        operator delete(v70[0]);
      }

      if (SBYTE7(v69) < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(*&buf[8]);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(error[0]);
      }
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallBarringValue"))
  {
    sub_100020AB8();
    v34 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I ## server_SaveCallBarringValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelEnabled";
    sub_100006354(buf, error);
    v36 = xpc::dyn_cast_or_default(error, 0, v35);
    xpc_release(error[0]);
    LOBYTE(v65) = v36;
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    v76 = a4;
    v77 = "kSettingsModelPin2";
    sub_100006354(&v76, &v78);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v78);
    *buf = a4;
    *&buf[8] = "kSettingsModelClss";
    sub_100006354(buf, &v76);
    v38 = xpc::dyn_cast_or_default(&v76, 0, v37);
    xpc_release(v76);
    *buf = a4;
    *&buf[8] = "kSettingsModelFacility";
    sub_100006354(buf, &v76);
    v40 = xpc::dyn_cast_or_default(&v76, 0, v39);
    xpc_release(v76);
    if (v12)
    {
      (*(*v12 + 144))(v12, 1, &v65, error, v40, v38);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallWaitingValue"))
  {
    sub_100020AB8();
    v41 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I ## server_SaveCallWaitingValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelClss";
    sub_100006354(buf, error);
    v43 = xpc::dyn_cast_or_default(error, 0, v42);
    xpc_release(error[0]);
    *buf = a4;
    *&buf[8] = "kSettingsModelEnabled";
    sub_100006354(buf, error);
    v45 = xpc::dyn_cast_or_default(error, 0, v44);
    xpc_release(error[0]);
    if (v12)
    {
      (*(*v12 + 168))(v12, 1, v45, v43);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelChangePinPassword"))
  {
    sub_100020AB8();
    v46 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I ## server_CTChangePinPassword", buf, 2u);
    }

    v78 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelOldPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v78, buf);
    v65 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelNewPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v65, buf);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    sub_10000501C(buf, "");
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    sub_10000501C(error, "");
    ctu::cf::assign();
    ctu::cf::assign();
    v76 = 0;
    v77 = 0;
    sGetSubscriberSimInterface();
    v47 = v76;
    if (v76)
    {
      if (SBYTE7(v67) < 0)
      {
        sub_100005F2C(__dst, *buf, *&buf[8]);
      }

      else
      {
        *__dst = *buf;
        v64 = v67;
      }

      if (SHIBYTE(v80) < 0)
      {
        sub_100005F2C(v61, error[0], error[1]);
      }

      else
      {
        *v61 = *error;
        v62 = v80;
      }

      (*(*v47 + 15))(v47, 1, __dst, v61);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    if (v77)
    {
      sub_100004A34(v77);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }

    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v65);
    sub_100005978(&v78);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelChangePin2Password"))
  {
    sub_100020AB8();
    v48 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I ## server_CTChangePin2Password", buf, 2u);
    }

    v76 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelOldPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v76, buf);
    v78 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelNewPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v78, buf);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    sub_10000501C(buf, "");
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    sub_10000501C(error, "");
    ctu::cf::assign();
    ctu::cf::assign();
    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }

    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v78);
    sub_100005978(&v76);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveSimLockValue"))
  {
    sub_100020AB8();
    v49 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveSimLockValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelEnabled";
    sub_100006354(buf, error);
    v51 = xpc::dyn_cast_or_default(error, 0, v50);
    xpc_release(error[0]);
    v76 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelPin");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v76, buf);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    sub_10000501C(buf, "");
    ctu::cf::assign();
    error[0] = 0;
    error[1] = 0;
    sGetSubscriberSimInterface();
    v52 = error[0];
    if (error[0])
    {
      if (SBYTE7(v67) < 0)
      {
        sub_100005F2C(v59, *buf, *&buf[8]);
      }

      else
      {
        *v59 = *buf;
        v60 = v67;
      }

      (*(*v52 + 96))(v52, 1, v51, v59);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59[0]);
      }
    }

    if (error[1])
    {
      sub_100004A34(error[1]);
    }

    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v76);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallingLineIdRestrictionValue"))
  {
    sub_100020AB8();
    v53 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveCallingLineIdRestrictionValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelValue";
    sub_100006354(buf, error);
    v55 = xpc::dyn_cast_or_default(error, 0, v54);
    xpc_release(error[0]);
    LODWORD(v76) = v55;
    if (v12)
    {
      (*(*v12 + 224))(v12, 1, &v76);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveServiceCenterAddressValue"))
  {
    sub_100020AB8();
    v56 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveServiceCenterAddressValue", buf, 2u);
    }

    v76 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelNumber");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v76, buf);
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    sub_10000501C(error, "");
    ctu::cf::assign();
    *__p = 0u;
    v75 = 0u;
    *v72 = 0u;
    v73 = 0u;
    *v70 = 0u;
    v71 = 0u;
    *v68 = 0u;
    v69 = 0u;
    *buf = 0u;
    v67 = 0u;
    CSIPhoneNumber::CSIPhoneNumber();
    if (v12)
    {
      (*(*v12 + 248))(v12, 1, buf);
    }

    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[1]);
    }

    if (SBYTE7(v71) < 0)
    {
      operator delete(v70[0]);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(*&buf[8]);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }

    sub_100005978(&v76);
  }

  if ((v58 & 1) == 0)
  {
    sub_100004A34(v57);
  }
}

void sub_1014896A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v40 = *(v38 - 104);
  if (v40)
  {
    sub_100004A34(v40);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_100005978((v38 - 136));
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

void sub_101489A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  ## server_SettingsModelEraseCommCentersPreferences", buf, 2u);
  }

  if ((atomic_load_explicit(&qword_101FCAAC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAAC8))
  {
    WirelessUserDirectory = _GetWirelessUserDirectory();
    sub_10000501C(buf, WirelessUserDirectory);
    v14 = std::string::append(buf, "/Library/Preferences/com.apple.commcenter.plist", 0x2FuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    unk_101FCAAF0 = *(&v14->__r_.__value_.__l + 2);
    xmmword_101FCAAE0 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SBYTE3(v21) < 0)
    {
      operator delete(*buf);
    }

    __cxa_atexit(&std::string::~string, &xmmword_101FCAAE0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FCAAC8);
  }

  v18 = &off_101EA1020;
  if (sub_1009C7B10(&v18, &xmmword_101FCAAE0))
  {
    v7 = sub_1009C861C(&v18, &xmmword_101FCAAE0);
    if (v7)
    {
      v16 = xpc_int64_create(5);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      *buf = *a5;
      *&buf[8] = "kMachError";
      sub_10000F688(buf, &v16, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v16);
      v16 = 0;
      sub_100020AB8();
      v8 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_ERROR))
      {
        v9 = byte_101FCAAF7;
        v10 = xmmword_101FCAAE0;
        v11 = strerror(v7);
        if (v9 >= 0)
        {
          v12 = &xmmword_101FCAAE0;
        }

        else
        {
          v12 = v10;
        }

        *buf = 136315650;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v7;
        v20 = 2080;
        v21 = v11;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete %s, returned error code %d: %s", buf, 0x1Cu);
      }
    }
  }

  FileSystemInterface::~FileSystemInterface(&v18);
}

void sub_101489CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_101FCAAC8);
  _Unwind_Resume(a1);
}

void sub_101489D60(Registry **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }

LABEL_13:
      v67 = 0;
      v68 = 0;
      v69 = 0;
      __p = a4;
      v63 = "kSettingsModelEraseWhat";
      sub_100006354(&__p, &object);
      *buf = 0;
      v73 = 0;
      v74 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v74) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(object);
      if (v69 >= 0)
      {
        v18 = &v67;
      }

      else
      {
        v18 = v67;
      }

      v19 = CFStringCreateWithCStringNoCopy(0, v18, 0x8000100u, kCFAllocatorNull);
      v20 = v19;
      if (v19)
      {
        if (SHIBYTE(v69) < 0)
        {
          if (v68)
          {
            goto LABEL_21;
          }
        }

        else if (HIBYTE(v69))
        {
LABEL_21:
          if (CFEqual(v19, @"kCTBasebandSettingsEraseSFP"))
          {
            sub_100020AB8();
            v21 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Initiating SFP erasure of baseband settings", buf, 2u);
            }

            v22 = 6;
LABEL_79:
            CFRelease(v20);
            v49 = a5[1];
            v56 = *a5;
            v57 = v49;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v16 + 184))(v16, v22, &v56);
            if (v57)
            {
              sub_100004A34(v57);
            }

            goto LABEL_83;
          }

          if (CFEqual(v20, @"kCTBasebandSettingsEraseEFS"))
          {
            v51 = v20;
            v52 = a5;
            v54 = v17;
            v53 = v15;
            subscriber::makeSimSlotRange();
            v23 = *buf;
            v24 = v73;
            if (*buf == v73)
            {
              goto LABEL_72;
            }

            v25 = v74;
            do
            {
              if (v25(*v23))
              {
                break;
              }

              ++v23;
            }

            while (v23 != v24);
            v26 = v73;
            if (v23 == v73)
            {
LABEL_72:
              sub_100020AB8();
              v47 = qword_101FCAAB8;
              a5 = v52;
              v15 = v53;
              v17 = v54;
              v20 = v51;
              if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Initiating EFS erasure of baseband settings", buf, 2u);
              }

              v22 = 1;
              goto LABEL_79;
            }

            v55 = v73;
            while (1)
            {
              sub_10080BF40();
              __p = 0;
              v63 = 0;
              v64 = 0;
              PersonalityIdFromSlotId();
              v27 = HIBYTE(v64);
              if (v64 < 0)
              {
                v27 = v63;
              }

              if (!v27)
              {
                goto LABEL_67;
              }

              v28 = Registry::getServiceMap(*a1);
              v29 = v28;
              if (v30 < 0)
              {
                v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
                v32 = 5381;
                do
                {
                  v30 = v32;
                  v33 = *v31++;
                  v32 = (33 * v32) ^ v33;
                }

                while (v33);
              }

              std::mutex::lock(v28);
              object = v30;
              v34 = sub_100009510(&v29[1].__m_.__sig, &object);
              if (!v34)
              {
                std::mutex::unlock(v29);
                goto LABEL_55;
              }

              v36 = v34[3];
              v35 = v34[4];
              if (v35)
              {
                atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v29);
                atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                v26 = v55;
                sub_100004A34(v35);
                if (!v36)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                std::mutex::unlock(v29);
                if (!v36)
                {
                  goto LABEL_55;
                }
              }

              object = 0;
              v61 = 0;
              (**v36)(&object, v36, &__p);
              if (object)
              {
                (*(*object + 544))(object, "CSIM reset via kSettingsModelEraseBasebandSettings");
                (*(*object + 384))(object, 1);
              }

              if (v61)
              {
                sub_100004A34(v61);
              }

              if (v35)
              {
LABEL_54:
                sub_100004A34(v35);
              }

LABEL_55:
              v37 = Registry::getServiceMap(*a1);
              v38 = v37;
              if (v39 < 0)
              {
                v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
                v41 = 5381;
                do
                {
                  v39 = v41;
                  v42 = *v40++;
                  v41 = (33 * v41) ^ v42;
                }

                while (v42);
              }

              std::mutex::lock(v37);
              object = v39;
              v43 = sub_100009510(&v38[1].__m_.__sig, &object);
              if (!v43)
              {
                v45 = 0;
LABEL_63:
                std::mutex::unlock(v38);
                v44 = 0;
                v46 = 1;
                if (!v45)
                {
                  goto LABEL_65;
                }

LABEL_64:
                (*(*v45 + 32))(v45, &__p, 1);
                (*(*v45 + 40))(v45, &__p, 7, 0);
                goto LABEL_65;
              }

              v45 = v43[3];
              v44 = v43[4];
              if (!v44)
              {
                goto LABEL_63;
              }

              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v38);
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              v26 = v55;
              sub_100004A34(v44);
              v46 = 0;
              if (v45)
              {
                goto LABEL_64;
              }

LABEL_65:
              if ((v46 & 1) == 0)
              {
                sub_100004A34(v44);
              }

LABEL_67:
              if (SHIBYTE(v64) < 0)
              {
                operator delete(__p);
              }

              do
              {
                ++v23;
              }

              while (v23 != v24 && (v25(*v23) & 1) == 0);
              if (v23 == v26)
              {
                goto LABEL_72;
              }
            }
          }

          if (CFEqual(v20, @"kCTBasebandSettingsEraseEverything"))
          {
            sub_100020AB8();
            v48 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Initiating erasure of all baseband settings", buf, 2u);
            }

            v22 = 7;
            goto LABEL_79;
          }

          sub_100020AB8();
          v50 = qword_101FCAAB8;
          if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Invalid erase string; canceling request", buf, 2u);
          }

          CFRelease(v20);
          v58 = xpc_int64_create(4);
          if (!v58)
          {
            v58 = xpc_null_create();
          }

          *buf = *a5;
          v73 = "kMachError";
          sub_10000F688(buf, &v58, &v59);
          xpc_release(v59);
          v59 = 0;
          xpc_release(v58);
          v58 = 0;
LABEL_83:
          if (SHIBYTE(v69) < 0)
          {
            operator delete(v67);
            if (v17)
            {
              return;
            }
          }

          else if (v17)
          {
            return;
          }

LABEL_85:
          sub_100004A34(v15);
          return;
        }
      }

      v65 = xpc_int64_create(5);
      if (!v65)
      {
        v65 = xpc_null_create();
      }

      *buf = *a5;
      v73 = "kSettingsModelError";
      sub_10000F688(buf, &v65, &v66);
      xpc_release(v66);
      v66 = 0;
      xpc_release(v65);
      v65 = 0;
      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_83;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_7:
  v70 = xpc_int64_create(45);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  *buf = *a5;
  v73 = "kPosixError";
  sub_10000F688(buf, &v70, &v71);
  xpc_release(v71);
  v71 = 0;
  xpc_release(v70);
  v70 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_85;
  }
}

void sub_10148A53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if ((v36 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148A66C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v19 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v19);
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
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_10148DB68;
  v17[3] = &unk_101F3FF60;
  v16 = a5[1];
  v17[4] = *a5;
  v18 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 136))(v14, v17);
  if (v18)
  {
    sub_100004A34(v18);
  }

LABEL_14:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10148A7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = dispatch_group_create();
  sub_100020AB8();
  v8 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in PersonalityShop", group, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
  group[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, group);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_12:
  group[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group[0])
    {
      dispatch_group_enter(group[0]);
    }
  }

  (*(*v17 + 352))(v17, group);
  if (group[0])
  {
    dispatch_group_leave(group[0]);
    if (group[0])
    {
      dispatch_release(group[0]);
    }
  }

LABEL_18:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_100020AB8();
  v19 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Max Data Rate Manager", group, 2u);
  }

  v20 = Registry::getServiceMap(*a1);
  v21 = v20;
  if (v22 < 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v20);
  group[0] = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, group);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v29 = 0;
      if (!v28)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
  if (!v28)
  {
    goto LABEL_37;
  }

LABEL_31:
  v152 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (v152)
    {
      dispatch_group_enter(v152);
    }
  }

  (*(*v28 + 40))(v28, &v152);
  if (v152)
  {
    dispatch_group_leave(v152);
    if (v152)
    {
      dispatch_release(v152);
    }
  }

LABEL_37:
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  sub_100020AB8();
  v30 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in CDMA Roaming Handler", group, 2u);
  }

  v31 = Registry::getServiceMap(*a1);
  v32 = v31;
  if (v33 < 0)
  {
    v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
    v35 = 5381;
    do
    {
      v33 = v35;
      v36 = *v34++;
      v35 = (33 * v35) ^ v36;
    }

    while (v36);
  }

  std::mutex::lock(v31);
  group[0] = v33;
  v37 = sub_100009510(&v32[1].__m_.__sig, group);
  if (v37)
  {
    v39 = v37[3];
    v38 = v37[4];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v32);
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v38);
      v40 = 0;
      if (!v39)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v39 = 0;
  }

  std::mutex::unlock(v32);
  v38 = 0;
  v40 = 1;
  if (!v39)
  {
    goto LABEL_56;
  }

LABEL_50:
  v151 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (v151)
    {
      dispatch_group_enter(v151);
    }
  }

  (*(*v39 + 56))(v39, &v151);
  if (v151)
  {
    dispatch_group_leave(v151);
    if (v151)
    {
      dispatch_release(v151);
    }
  }

LABEL_56:
  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  sub_100020AB8();
  v41 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Roaming Handler", group, 2u);
  }

  v42 = Registry::getServiceMap(*a1);
  v43 = v42;
  if (v44 < 0)
  {
    v45 = (v44 & 0x7FFFFFFFFFFFFFFFLL);
    v46 = 5381;
    do
    {
      v44 = v46;
      v47 = *v45++;
      v46 = (33 * v46) ^ v47;
    }

    while (v47);
  }

  std::mutex::lock(v42);
  group[0] = v44;
  v48 = sub_100009510(&v43[1].__m_.__sig, group);
  if (v48)
  {
    v50 = v48[3];
    v49 = v48[4];
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v43);
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v49);
      v51 = 0;
LABEL_68:
      object = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (object)
        {
          dispatch_group_enter(object);
        }
      }

      (*(*v50 + 64))(v50, &object);
      if (object)
      {
        dispatch_group_leave(object);
        if (object)
        {
          dispatch_release(object);
        }
      }

      if ((v51 & 1) == 0)
      {
        sub_100004A34(v49);
      }

      v52 = Registry::getServiceMap(*a1);
      v53 = v52;
      if (v54 < 0)
      {
        v55 = (v54 & 0x7FFFFFFFFFFFFFFFLL);
        v56 = 5381;
        do
        {
          v54 = v56;
          v57 = *v55++;
          v56 = (33 * v56) ^ v57;
        }

        while (v57);
      }

      std::mutex::lock(v52);
      group[0] = v54;
      v58 = sub_100009510(&v53[1].__m_.__sig, group);
      if (v58)
      {
        v60 = v58[3];
        v59 = v58[4];
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v53);
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v59);
          v61 = 0;
          if (!v60)
          {
            goto LABEL_93;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v60 = 0;
      }

      std::mutex::unlock(v53);
      v59 = 0;
      v61 = 1;
      if (!v60)
      {
        goto LABEL_93;
      }

LABEL_85:
      sub_100020AB8();
      v62 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(group[0]) = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Registration", group, 2u);
      }

      v149 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v149)
        {
          dispatch_group_enter(v149);
        }
      }

      (*(*v60 + 400))(v60, &v149);
      if (v149)
      {
        dispatch_group_leave(v149);
        if (v149)
        {
          dispatch_release(v149);
        }
      }

LABEL_93:
      if ((v61 & 1) == 0)
      {
        sub_100004A34(v59);
      }

      v63 = Registry::getServiceMap(*a1);
      v64 = v63;
      if (v65 < 0)
      {
        v66 = (v65 & 0x7FFFFFFFFFFFFFFFLL);
        v67 = 5381;
        do
        {
          v65 = v67;
          v68 = *v66++;
          v67 = (33 * v67) ^ v68;
        }

        while (v68);
      }

      std::mutex::lock(v63);
      group[0] = v65;
      v69 = sub_100009510(&v64[1].__m_.__sig, group);
      if (v69)
      {
        v71 = v69[3];
        v70 = v69[4];
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v64);
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v70);
          v72 = 0;
          if (!v71)
          {
            goto LABEL_112;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v71 = 0;
      }

      std::mutex::unlock(v64);
      v70 = 0;
      v72 = 1;
      if (!v71)
      {
        goto LABEL_112;
      }

LABEL_104:
      sub_100020AB8();
      v73 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(group[0]) = 0;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Settings Controller", group, 2u);
      }

      v148 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v148)
        {
          dispatch_group_enter(v148);
        }
      }

      (*(*v71 + 176))(v71, &v148);
      if (v148)
      {
        dispatch_group_leave(v148);
        if (v148)
        {
          dispatch_release(v148);
        }
      }

LABEL_112:
      if ((v72 & 1) == 0)
      {
        sub_100004A34(v70);
      }

      v74 = Registry::getServiceMap(*a1);
      v75 = v74;
      if (v76 < 0)
      {
        v77 = (v76 & 0x7FFFFFFFFFFFFFFFLL);
        v78 = 5381;
        do
        {
          v76 = v78;
          v79 = *v77++;
          v78 = (33 * v78) ^ v79;
        }

        while (v79);
      }

      std::mutex::lock(v74);
      group[0] = v76;
      v80 = sub_100009510(&v75[1].__m_.__sig, group);
      if (v80)
      {
        v82 = v80[3];
        v81 = v80[4];
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v75);
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v81);
          v83 = 0;
          if (!v82)
          {
            goto LABEL_127;
          }

          goto LABEL_123;
        }
      }

      else
      {
        v82 = 0;
      }

      std::mutex::unlock(v75);
      v81 = 0;
      v83 = 1;
      if (!v82)
      {
        goto LABEL_127;
      }

LABEL_123:
      v147 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      (*(*v82 + 248))(v82, &v147);
      if (v147)
      {
        dispatch_release(v147);
      }

LABEL_127:
      if ((v83 & 1) == 0)
      {
        sub_100004A34(v81);
      }

      v84 = Registry::getServiceMap(*a1);
      v85 = v84;
      if (v86 < 0)
      {
        v87 = (v86 & 0x7FFFFFFFFFFFFFFFLL);
        v88 = 5381;
        do
        {
          v86 = v88;
          v89 = *v87++;
          v88 = (33 * v88) ^ v89;
        }

        while (v89);
      }

      std::mutex::lock(v84);
      group[0] = v86;
      v90 = sub_100009510(&v85[1].__m_.__sig, group);
      if (v90)
      {
        v92 = v90[3];
        v91 = v90[4];
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v85);
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v91);
          v93 = 0;
          if (!v92)
          {
            goto LABEL_146;
          }

          goto LABEL_138;
        }
      }

      else
      {
        v92 = 0;
      }

      std::mutex::unlock(v85);
      v91 = 0;
      v93 = 1;
      if (!v92)
      {
        goto LABEL_146;
      }

LABEL_138:
      sub_100020AB8();
      v94 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(group[0]) = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Save Data Mode Controller", group, 2u);
      }

      v146 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v146)
        {
          dispatch_group_enter(v146);
        }
      }

      (*(*v92 + 96))(v92, &v146);
      if (v146)
      {
        dispatch_group_leave(v146);
        if (v146)
        {
          dispatch_release(v146);
        }
      }

LABEL_146:
      if ((v93 & 1) == 0)
      {
        sub_100004A34(v91);
      }

      v95 = Registry::getServiceMap(*a1);
      v96 = v95;
      if (v97 < 0)
      {
        v98 = (v97 & 0x7FFFFFFFFFFFFFFFLL);
        v99 = 5381;
        do
        {
          v97 = v99;
          v100 = *v98++;
          v99 = (33 * v99) ^ v100;
        }

        while (v100);
      }

      std::mutex::lock(v95);
      group[0] = v97;
      v101 = sub_100009510(&v96[1].__m_.__sig, group);
      if (v101)
      {
        v103 = v101[3];
        v102 = v101[4];
        if (v102)
        {
          atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v96);
          atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v102);
          v104 = 0;
          if (!v103)
          {
            goto LABEL_163;
          }

          goto LABEL_157;
        }
      }

      else
      {
        v103 = 0;
      }

      std::mutex::unlock(v96);
      v102 = 0;
      v104 = 1;
      if (!v103)
      {
        goto LABEL_163;
      }

LABEL_157:
      v145 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v145)
        {
          dispatch_group_enter(v145);
        }
      }

      (*(*v103 + 448))(v103, &v145);
      if (v145)
      {
        dispatch_group_leave(v145);
        if (v145)
        {
          dispatch_release(v145);
        }
      }

LABEL_163:
      if ((v104 & 1) == 0)
      {
        sub_100004A34(v102);
      }

      v105 = Registry::getServiceMap(*a1);
      v106 = v105;
      if (v107 < 0)
      {
        v108 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
        v109 = 5381;
        do
        {
          v107 = v109;
          v110 = *v108++;
          v109 = (33 * v109) ^ v110;
        }

        while (v110);
      }

      std::mutex::lock(v105);
      group[0] = v107;
      v111 = sub_100009510(&v106[1].__m_.__sig, group);
      if (v111)
      {
        v113 = v111[3];
        v112 = v111[4];
        if (v112)
        {
          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v106);
          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v112);
          v114 = 0;
          if (!v113)
          {
            goto LABEL_180;
          }

          goto LABEL_174;
        }
      }

      else
      {
        v113 = 0;
      }

      std::mutex::unlock(v106);
      v112 = 0;
      v114 = 1;
      if (!v113)
      {
        goto LABEL_180;
      }

LABEL_174:
      v144 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v144)
        {
          dispatch_group_enter(v144);
        }
      }

      (*(*v113 + 48))(v113, &v144);
      if (v144)
      {
        dispatch_group_leave(v144);
        if (v144)
        {
          dispatch_release(v144);
        }
      }

LABEL_180:
      if ((v114 & 1) == 0)
      {
        sub_100004A34(v112);
      }

      v115 = Registry::getServiceMap(*a1);
      v116 = v115;
      if (v117 < 0)
      {
        v118 = (v117 & 0x7FFFFFFFFFFFFFFFLL);
        v119 = 5381;
        do
        {
          v117 = v119;
          v120 = *v118++;
          v119 = (33 * v119) ^ v120;
        }

        while (v120);
      }

      std::mutex::lock(v115);
      group[0] = v117;
      v121 = sub_100009510(&v116[1].__m_.__sig, group);
      if (v121)
      {
        v123 = v121[3];
        v122 = v121[4];
        if (v122)
        {
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v116);
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v122);
          v124 = 0;
          if (!v123)
          {
LABEL_192:
            if ((v124 & 1) == 0)
            {
              sub_100004A34(v122);
            }

            v143[0] = 0;
            v143[1] = 0;
            Registry::getMobileHelper(v143, *a1);
            if (v143[0])
            {
              sub_100020AB8();
              v125 = qword_101FCAAB8;
              if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(group[0]) = 0;
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in MobileHelper", group, 2u);
              }

              (*(*v143[0] + 88))(v143[0]);
            }

            v126 = Registry::getServiceMap(*a1);
            v127 = v126;
            if (v128 < 0)
            {
              v129 = (v128 & 0x7FFFFFFFFFFFFFFFLL);
              v130 = 5381;
              do
              {
                v128 = v130;
                v131 = *v129++;
                v130 = (33 * v130) ^ v131;
              }

              while (v131);
            }

            std::mutex::lock(v126);
            group[0] = v128;
            v132 = sub_100009510(&v127[1].__m_.__sig, group);
            if (v132)
            {
              v134 = v132[3];
              v133 = v132[4];
              if (v133)
              {
                atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v127);
                atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v133);
                v135 = 0;
                if (!v134)
                {
                  goto LABEL_213;
                }

                goto LABEL_207;
              }
            }

            else
            {
              v134 = 0;
            }

            std::mutex::unlock(v127);
            v133 = 0;
            v135 = 1;
            if (!v134)
            {
              goto LABEL_213;
            }

LABEL_207:
            v142 = v7;
            if (v7)
            {
              dispatch_retain(v7);
              if (v142)
              {
                dispatch_group_enter(v142);
              }
            }

            (*(*v134 + 72))(v134, &v142);
            if (v142)
            {
              dispatch_group_leave(v142);
              if (v142)
              {
                dispatch_release(v142);
              }
            }

LABEL_213:
            if ((v135 & 1) == 0)
            {
              sub_100004A34(v133);
            }

            global_queue = dispatch_get_global_queue(0, 0);
            if (global_queue)
            {
              dispatch_retain(global_queue);
            }

            v138 = *a5;
            v137 = *(a5 + 8);
            group[0] = v138;
            group[1] = v137;
            if (v137)
            {
              atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
            }

            v140 = *a1;
            v139 = *(a1 + 8);
            group[2] = v140;
            group[3] = v139;
            if (v139)
            {
              atomic_fetch_add_explicit((v139 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

LABEL_191:
          (*(*v123 + 32))(v123);
          goto LABEL_192;
        }
      }

      else
      {
        v123 = 0;
      }

      std::mutex::unlock(v116);
      v122 = 0;
      v124 = 1;
      if (!v123)
      {
        goto LABEL_192;
      }

      goto LABEL_191;
    }
  }

  else
  {
    v50 = 0;
  }

  std::mutex::unlock(v43);
  v49 = 0;
  v51 = 1;
  goto LABEL_68;
}

void sub_10148B7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, uint64_t a15, std::__shared_weak_count *a16, dispatch_group_t object, dispatch_group_t a18, dispatch_group_t a19, uint64_t a20, dispatch_group_t a21, dispatch_group_t a22, dispatch_group_t a23)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148BA20(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallForwardingValue", buf, 2u);
  }

  *buf = a4;
  v24 = "kSettingsModelReason";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  *buf = a4;
  v24 = "kSettingsModelClss";
  sub_100006354(buf, &object);
  v10 = xpc::dyn_cast_or_default(&object, 0, v9);
  xpc_release(object);
  sub_100020AB8();
  v11 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I _CTFetchCallForwardingValue for reason = %d", buf, 8u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
LABEL_13:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (v20)
  {
LABEL_14:
    (*(*v20 + 80))(v20, 1, v8, v10);
  }

LABEL_15:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }
}

void sub_10148BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148BCC0(Registry **a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallBarringValue", buf, 2u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  v21[0] = a4;
  v21[1] = "kSettingsModelPin2";
  sub_100006354(v21, &object);
  *buf = 0;
  v26 = 0;
  v27 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  *buf = a4;
  v26 = "kSettingsModelClss";
  sub_100006354(buf, v21);
  v8 = xpc::dyn_cast_or_default(v21, 0, v7);
  xpc_release(v21[0]);
  *buf = a4;
  v26 = "kSettingsModelFacility";
  sub_100006354(buf, v21);
  v10 = xpc::dyn_cast_or_default(v21, 0, v9);
  xpc_release(v21[0]);
  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v17)
  {
    v19 = 0;
LABEL_13:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (v19)
  {
LABEL_14:
    (*(*v19 + 128))(v19, 1, __p, v10, v8);
  }

LABEL_15:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10148BEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10148BF80(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFTypeRef *a5)
{
  sub_100020AB8();
  v7 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I ## server_CTPreferencesSetValue", v12, 2u);
  }

  if ((atomic_load_explicit(&qword_101FCAAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAAD0))
  {
    qword_101FCAAF8 = @"Modem";
    unk_101FCAB00 = @"IMSIOverride";
    qword_101FCAB08 = @"FakePrimaryDns";
    unk_101FCAB10 = @"FakeSecondaryDns";
    qword_101FCAB18 = @"VerifyBundles";
    unk_101FCAB20 = @"VerifyAPN";
    qword_101FCAB28 = @"DualIPBringUp";
    unk_101FCAB30 = @"WiFiCallingInCallHandover";
    qword_101FCAB38 = kCFSettingsModelKeyEPDGAddress;
    unk_101FCAB40 = kCFSettingsModelKeyPCSCFAddress;
    qword_101FCAB48 = @"ShowVoLTEStatusIndicator";
    unk_101FCAB50 = @"ShowLazuliStatusIndicator";
    qword_101FCAB58 = @"ShowFR2StatusIndicator";
    __cxa_guard_release(&qword_101FCAAD0);
  }

  theString1 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelKey");
  v12[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&theString1, v12);
  xpc_dictionary_get_value(*a4, "kSettingsModelValue");
  v8 = 0;
  cf = _CFXPCCreateCFObjectFromXPCObject();
  do
  {
    if (CFStringCompare(theString1, *(&unk_101FCAAB0 + v8 + 72), 0) == kCFCompareEqualTo)
    {
      v9 = CFGetTypeID(cf);
      if (v9 == CFNullGetTypeID())
      {
        v10 = 0;
      }

      else
      {
        v10 = cf;
      }

      CFPreferencesSetValue(theString1, v10, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_1000929F0();
      goto LABEL_14;
    }

    v8 += 8;
  }

  while (v8 != 104);
  v13 = xpc_int64_create(4);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v12[0] = *a5;
  v12[1] = "kMachError";
  sub_10000F688(v12, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
LABEL_14:
  sub_10000A1EC(&cf);
  return sub_100005978(&theString1);
}

void sub_10148C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **sub_10148C208(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFTypeRef *a5)
{
  v12 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelNoBackupKey");
  v8[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&v12, v8);
  xpc_dictionary_get_value(*a4, "kSettingsModelNoBackupValue");
  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v9 = xpc_int64_create(4);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8[0] = *a5;
  v8[1] = "kMachError";
  sub_10000F688(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  sub_10000A1EC(&v11);
  return sub_100005978(&v12);
}

const void **sub_10148C2F8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  sub_100020AB8();
  v8 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I ## server_CTPreferencesCopyValue", buf, 2u);
  }

  if ((atomic_load_explicit(&qword_101FCAAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAAD8))
  {
    qword_101FCAB60 = @"Modem";
    unk_101FCAB68 = @"IMSIOverride";
    qword_101FCAB70 = @"FakePrimaryDns";
    unk_101FCAB78 = @"FakeSecondaryDns";
    qword_101FCAB80 = @"VerifyBundles";
    unk_101FCAB88 = @"VerifyAPN";
    qword_101FCAB90 = @"DualIPBringUp";
    unk_101FCAB98 = @"WiFiCallingInCallHandover";
    qword_101FCABA0 = kCFSettingsModelKeyEPDGAddress;
    unk_101FCABA8 = kCFSettingsModelKeyPCSCFAddress;
    qword_101FCABB0 = @"ShowVoLTEStatusIndicator";
    unk_101FCABB8 = @"ShowFR2StatusIndicator";
    qword_101FCABC0 = @"ShowLazuliStatusIndicator";
    unk_101FCABC8 = @"iWlanGatewayAddress";
    __cxa_guard_release(&qword_101FCAAD8);
  }

  v45 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelKey");
  *buf = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&v45, buf);
  for (i = 0; i != 112; i += 8)
  {
    if (CFStringCompare(v45, *(&unk_101FCAAB0 + i + 176), 0) == kCFCompareEqualTo)
    {
      if (CFStringCompare(v45, @"iWlanGatewayAddress", 0))
      {
        v10 = CFPreferencesCopyValue(v45, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        v40 = v10;
        if (!v10 || (v11 = CFGetTypeID(v10), v11 == CFNullGetTypeID()))
        {
          if (CFStringCompare(v45, @"VerifyBundles", 0))
          {
            if (CFStringCompare(v45, @"VerifyAPN", 0))
            {
              if (CFStringCompare(v45, @"DualIPBringUp", 0) && CFStringCompare(v45, @"ShowVoLTEStatusIndicator", 0) && CFStringCompare(v45, @"ShowLazuliStatusIndicator", 0) && CFStringCompare(v45, @"ShowFR2StatusIndicator", 0))
              {
                if (CFStringCompare(v45, @"WiFiCallingInCallHandover", 0) == kCFCompareEqualTo)
                {
                  theDict = 0;
                  *buf = 0;
                  v42 = 0;
                  ServiceMap = Registry::getServiceMap(*a1);
                  sub_10148DCA0(&v34, ServiceMap);
                  (*(*v34 + 32))(buf);
                  if (v35)
                  {
                    sub_100004A34(v35);
                  }

                  if (*buf)
                  {
                    (*(**buf + 40))(&v38);
                    v13 = v38;
                    v34 = theDict;
                    v38 = 0;
                    theDict = v13;
                    sub_10001021C(&v34);
                    sub_10001021C(&v38);
                  }

                  if (v42)
                  {
                    sub_100004A34(v42);
                  }

                  if (theDict)
                  {
                    Value = CFDictionaryGetValue(theDict, @"SupportCallHandover");
                    v15 = Value;
                    if (Value && (v16 = CFGetTypeID(Value), v16 == CFBooleanGetTypeID()))
                    {
                      *buf = v15;
                      sub_100E542E8(&v40, buf);
                    }

                    else
                    {
                      *buf = kCFBooleanTrue;
                      sub_100E542E8(&v40, buf);
                    }
                  }

                  else
                  {
                    *buf = kCFBooleanFalse;
                    sub_100E542E8(&v40, buf);
                  }

                  sub_10001021C(&theDict);
                }
              }

              else
              {
                *buf = kCFBooleanFalse;
                sub_100E542E8(&v40, buf);
              }

              goto LABEL_61;
            }

            sub_100020AB8();
            v30 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I ## VerifyAPN DEFAULT", buf, 2u);
            }
          }

          else
          {
            sub_100020AB8();
            v27 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I ## VerifyBundles DEFAULT", buf, 2u);
            }
          }

          *buf = kCFBooleanTrue;
          sub_100E542E8(&v40, buf);
        }

LABEL_61:
        v32 = _CFXPCCreateXPCObjectFromCFObject();
        if (!v32)
        {
          v32 = xpc_null_create();
        }

        *buf = *a5;
        v42 = "kSettingsModelValue";
        sub_10000F688(buf, &v32, &v33);
        xpc_release(v33);
        v33 = 0;
        xpc_release(v32);
        v32 = 0;
LABEL_64:
        sub_10000A1EC(&v40);
        return sub_100005978(&v45);
      }

      theDict = 0;
      v40 = 0;
      *buf = 0;
      v42 = 0;
      v17 = Registry::getServiceMap(*a1);
      v18 = v17;
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

      std::mutex::lock(v17);
      v34 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &v34);
      if (v23)
      {
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
LABEL_41:
          (*(*v25 + 32))(buf, v25, 1);
          if ((v26 & 1) == 0)
          {
            sub_100004A34(v24);
          }

          if (*buf)
          {
            (*(**buf + 40))(&v38);
            v28 = v38;
            v34 = theDict;
            v38 = 0;
            theDict = v28;
            sub_10001021C(&v34);
            sub_10001021C(&v38);
          }

          if (v42)
          {
            sub_100004A34(v42);
          }

          if (theDict)
          {
            v29 = CFDictionaryGetValue(theDict, @"IKE");
            if (v29)
            {
              *buf = CFDictionaryGetValue(v29, @"RemoteAddress");
              sub_1000673E0(&v40, buf);
            }
          }

          v36 = _CFXPCCreateXPCObjectFromCFObject();
          if (!v36)
          {
            v36 = xpc_null_create();
          }

          *buf = *a5;
          v42 = "kSettingsModelValue";
          sub_10000F688(buf, &v36, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v36);
          v36 = 0;
          sub_10001021C(&theDict);
          goto LABEL_64;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
      goto LABEL_41;
    }
  }

  v43 = xpc_int64_create(4);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  *buf = *a5;
  v42 = "kMachError";
  sub_10000F688(buf, &v43, &v44);
  xpc_release(v44);
  v44 = 0;
  xpc_release(v43);
  v43 = 0;
  return sub_100005978(&v45);
}

void sub_10148CA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10000A1EC(va1);
  sub_100005978((v9 - 56));
  _Unwind_Resume(a1);
}

const void **sub_10148CB7C(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFTypeRef *a5)
{
  v10 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelNoBackupKey");
  v7[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&v10, v7);
  v8 = xpc_int64_create(4);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = *a5;
  v7[1] = "kMachError";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  return sub_100005978(&v10);
}

void sub_10148CC34(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallWaitingValue", v19, 2u);
  }

  v19[0] = a4;
  v19[1] = "kSettingsModelClss";
  sub_100006354(v19, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v19[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v19);
  if (!v15)
  {
    v17 = 0;
LABEL_11:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
LABEL_12:
    (*(*v17 + 152))(v17, 1, v8);
  }

LABEL_13:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10148CDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148CDF4(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchSimLockValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 80))(v11);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148CF44(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148CF64(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchConnectedLinePresentationValue", v19, 2u);
  }

  v19[0] = a4;
  v19[1] = "kSettingsModelLinePresentation";
  sub_100006354(v19, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v19[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v19);
  if (!v15)
  {
    v17 = 0;
LABEL_11:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
LABEL_12:
    (*(*v17 + 176))(v17, 1, v8);
  }

LABEL_13:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10148D0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D124(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchConnectedLineIdRestrictionValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 192))(v11, 1);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148D278(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D298(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallingLineIdRestrictionValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 208))(v11, 1);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148D3EC(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D40C(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchServiceCenterAddressValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 240))(v11, 1);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148D560(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D580(id a1, auto_reply a2, shared_ptr<SettingsInterface> a3, BOOL a4, CSIPhoneNumber *a5)
{
  var0 = a3.var0;
  var1 = a2.var0.var1;
  v7 = a2.var0.var0;
  memset(&v21, 0, sizeof(v21));
  CSIPhoneNumber::getFullNumber(&v21, a3.var1);
  if (var0)
  {
    v8 = 1;
  }

  else
  {
    v9 = *var1;
    if (*var1)
    {
      __p = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v16 = 0;
      memset(__str, 0, sizeof(__str));
      if ((*(*v9 + 256))())
      {
        std::string::operator=(&v21, __str);
      }

      v8 = HIBYTE(v17);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = xpc_BOOL_create(v8);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  *__str = v7->fObj.fObj;
  *&__str[8] = "kSettingsModelValid";
  sub_10000F688(__str, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  if (v8)
  {
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v21;
    }

    else
    {
      v10 = v21.__r_.__value_.__r.__words[0];
    }

    v11 = xpc_string_create(v10);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    *__str = v7->fObj.fObj;
    *&__str[8] = "kSettingsEffectivePhoneNumber";
    sub_10000F688(__str, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_10148D750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D7A4(void *a1, unsigned __int8 *a2)
{
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(&v37, 0, sizeof(v37));
  CSIPhoneNumber::CSIPhoneNumber(&v37);
  v4 = *a2;
  if (v4 == 1)
  {
    CSIPhoneNumber::CSIPhoneNumber();
    *&v37.var0 = v23;
    if (*(&v37.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v37.var2.__rep_.__l.__data_);
    }

    v37.var2 = v24;
    *(&v24.__rep_.__l + 23) = 0;
    v24.__rep_.__s.__data_[0] = 0;
    if (SBYTE7(v39) < 0)
    {
      operator delete(v38);
    }

    v38 = v25;
    *&v39 = v26;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    DWORD2(v39) = v27;
    BYTE12(v39) = v28;
    if (SBYTE7(v41) < 0)
    {
      operator delete(v40);
    }

    v40 = v29;
    v41 = v30;
    BYTE7(v30) = 0;
    LOBYTE(v29) = 0;
    LOWORD(v42[0]) = v31;
    if (SHIBYTE(v42[1]) < 0)
    {
      operator delete(*(&v42[0] + 1));
    }

    *(v42 + 8) = __p;
    *(&v42[1] + 1) = v33;
    HIBYTE(v33) = 0;
    LOBYTE(__p) = 0;
    if (SBYTE7(v44) < 0)
    {
      operator delete(v43);
      v43 = v34;
      *&v44 = v35;
      HIBYTE(v35) = 0;
      LOBYTE(v34) = 0;
      DWORD2(v44) = v36;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v43 = v34;
      *&v44 = v35;
      HIBYTE(v35) = 0;
      LOBYTE(v34) = 0;
      DWORD2(v44) = v36;
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (*(&v24.__rep_.__l + 23) < 0)
    {
      operator delete(v24.__rep_.__l.__data_);
    }
  }

  v5 = a1[4];
  v6 = a1[6];
  v21 = a1[5];
  v22 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[8];
  v19 = a1[7];
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000AE428(&v8, &v37);
  (*(v5 + 16))(v5, &v21, &v19, v4, &v8);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (SBYTE7(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v42[1]) < 0)
  {
    operator delete(*(&v42[0] + 1));
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38);
  }

  if (*(&v37.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v37.var2.__rep_.__l.__data_);
  }
}

void *sub_10148DAE4(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10148DB18(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_10148DB68(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_100020AB8();
  v3 = qword_101FCAAB8;
  if (v2 == 1)
  {
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Vinyl: Deleted all user profiles", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Vinyl: Failed to delete all user profiles", v4, 2u);
  }
}

uint64_t *sub_10148DC18(uint64_t a1)
{
  v3 = a1;
  sub_100020AB8();
  v1 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I All reset network setting handlers are complete", buf, 2u);
  }

  return sub_100313630(&v3);
}

void sub_10148DC8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100313630(va);
  _Unwind_Resume(a1);
}

void sub_10148DCA0(void *a1, std::mutex *this)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_10148DD64()
{
  v0 = objc_autoreleasePoolPush();
  sub_100A5C110(&unk_101FCAAB2, sub_10148791C);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10148DDB8(uint64_t a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "carrier.space.info");
  sub_10148DEA8((a1 + 8), a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101F400B0;
  v6 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_10148DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CarrierSpaceInfoModelInterface::~CarrierSpaceInfoModelInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_10148DEA8(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_10148DF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_10148DF34(uint64_t a1)
{
  *a1 = off_101F400B0;

  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  CarrierSpaceInfoModelInterface::~CarrierSpaceInfoModelInterface(a1);
}

void sub_10148DFC8(uint64_t a1)
{
  sub_10148DF34(a1);

  operator delete();
}

void sub_10148E098(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10148E0B8(void *a1)
{
  v2 = objc_alloc_init(CTCarrierSpaceCapabilities);
  v3 = a1[10];
  a1[10] = v2;

  v4 = objc_alloc_init(CTCarrierSpaceInfo);
  v5 = a1[12];
  a1[12] = v4;

  v6 = a1[11];
  a1[11] = 0;
}

void sub_10148E120(void *a1)
{
  v2 = a1[10];
  a1[10] = 0;

  v3 = a1[12];
  a1[12] = 0;

  v4 = a1[11];
  a1[11] = 0;
}

id sub_10148E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 80) setSupportsServices:a2];
  [*(a1 + 80) setSupportsUsage:a3];
  [*(a1 + 80) setSupportsPlans:a4];
  v9 = *(a1 + 80);

  return [v9 setSupportsApplications:a5];
}

void sub_10148E1E0(uint64_t a1, id **a2)
{
  if (*a2)
  {
    v3 = **a2;
  }

  else
  {
    v3 = 0;
  }

  if (([v3 isEqual:*(a1 + 88)] & 1) == 0)
  {
    objc_storeStrong((a1 + 88), v3);
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 64);
        if (v6)
        {
          (*(*v6 + 80))(v6);
LABEL_13:
          sub_100004A34(v5);
          goto LABEL_14;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v8, 2u);
    }

    if (v5)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_10148E2E4(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

void sub_10148E304(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [*(a1 + 96) setUsageInfo:**a2];
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        (*(*v5 + 72))(v5, 1);
LABEL_11:
        sub_100004A34(v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v7, 2u);
  }

  if (v4)
  {
    goto LABEL_11;
  }
}

void sub_10148E3EC(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [*(a1 + 96) setPlansInfo:**a2];
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        (*(*v5 + 72))(v5, 2);
LABEL_11:
        sub_100004A34(v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v7, 2u);
  }

  if (v4)
  {
    goto LABEL_11;
  }
}

void sub_10148E4D4(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [*(a1 + 96) setAppsInfo:**a2];
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        (*(*v5 + 72))(v5, 4);
LABEL_11:
        sub_100004A34(v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v7, 2u);
  }

  if (v4)
  {
    goto LABEL_11;
  }
}

uint64_t sub_10148E5BC(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    v3 = [*(a1 + 96) usageInfo];
    v4 = [v3 accountMetrics];
    v5 = [v4 count];

    if (i >= v5)
    {
      return 0;
    }

    v6 = [*(a1 + 96) usageInfo];
    v7 = [v6 accountMetrics];
    v8 = [v7 objectAtIndex:i];

    if ([v8 localDevice])
    {
      break;
    }
  }

  v10 = [v8 billingCycleEndDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12;
}

id sub_10148E6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*(a1 + 80) || (result = objc_alloc_init(CTCarrierSpaceCapabilities)) != 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10148E7BC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*(result + 88))
  {
    operator new();
  }

  return result;
}

void sub_10148E850(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  [*(a1 + 96) usageInfo];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }
}

void sub_10148E908(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  [*(a1 + 96) plansInfo];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }
}

void sub_10148E9C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  [*(a1 + 96) appsInfo];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }
}

void sub_10148EA78(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = [*(a1 + 96) plansInfo];
  v6 = v5;
  if (v5 && ([v5 planGroupsList], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = [NSString stringWithUTF8String:v8];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10148EC98;
    v20 = sub_10148ECA8;
    v21 = 0;
    v10 = [v6 planGroupsList];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10148ECB0;
    v13[3] = &unk_101F40148;
    v11 = v9;
    v14 = v11;
    v15 = &v16;
    [v10 enumerateObjectsUsingBlock:v13];

    v12 = v17[5];
    *a3 = 0;
    a3[1] = 0;
    if (v12)
    {
      operator new();
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_10148EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10148EC98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10148ECB0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a2 groupOptionsList];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 planId];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t sub_10148EE24(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  (*(*a1 + 128))(&v15);
  if (!v15)
  {
    goto LABEL_14;
  }

  v5 = *(a3 + 24);
  if (!v5)
  {
    goto LABEL_14;
  }

  v13 = v15;
  v14 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a3 + 24);
    if (!v5)
    {
      sub_100022DB4();
    }
  }

  v6 = (*(*v5 + 48))(v5, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v6)
  {
    v7 = a1[9];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = a1[8];
        if (v10)
        {
          (*(*v10 + 72))(v10, 2);
        }

        sub_100004A34(v9);
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return v11;
}

void sub_10148EF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100004A34(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10148F054(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10148F128);
  __cxa_rethrow();
}

void sub_10148F094(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10148F0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10148F128(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10148F174(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10148F1F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F402D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10148F254(NSObject **a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v7 = a5;
  v8 = a3;
  v11 = sub_100D9CBEC(a5 & ~a3, a4);
  if (v11)
  {
    object[1] = 0;
    v12 = MAEGetActivationStateWithError();
    v13 = 0;
    if ([v12 isEqualToString:kMAActivationStateActivated])
    {
      if ((atomic_load_explicit(qword_101FCABF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_101FCABF0))
      {
        sub_1014903A8();
      }

      v14 = xmmword_101FCAC00;
      if (*(&xmmword_101FCAC00 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_101FCAC00 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      object[0] = v15;
      if (v15)
      {
        dispatch_retain(v15);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_10148F734;
      v20[3] = &unk_101F40348;
      v20[4] = a2;
      v23 = v8;
      sub_1011F2210(v21, a6);
      v24 = v7;
      v16 = *a1;
      v22 = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      v26 = 0;
      v25[0] = off_101F40478;
      v25[1] = objc_retainBlock(v20);
      v26 = v25;
      (*(*v14 + 16))(v14, v11, object, v25);
      sub_101020704(v25);
      if (object[0])
      {
        dispatch_release(object[0]);
      }

      if (*(&v14 + 1))
      {
        sub_100004A34(*(&v14 + 1));
      }

      if (v22)
      {
        dispatch_release(v22);
      }

      sub_100ED2CDC(v21);
    }

    else
    {
      sub_10148F648();
      v18 = qword_101FCABE0;
      if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 138412546;
        *&buf[1] = v12;
        LOWORD(buf[3]) = 2112;
        *(&buf[3] + 2) = v13;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Device is not activated! activationState= %@, queryError= %@", buf, 0x16u);
      }

      sub_10148F6DC(*(a6 + 24), 0, 0x100000001);
    }
  }

  else
  {
    sub_10148F648();
    v17 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "creating options for BAA cert generation failed", buf, 2u);
    }

    sub_10148F6DC(*(a6 + 24), 0, &_mh_execute_header);
  }
}

void sub_10148F5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_object_t object, uint64_t a24, char a25)
{
  __cxa_guard_abort(qword_101FCABF0);

  _Unwind_Resume(a1);
}

void sub_10148F648()
{
  if ((atomic_load_explicit(&qword_101FCABE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCABE8))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCABE0, kCtLoggingSystemName, qword_101FCABD8);

    __cxa_guard_release(&qword_101FCABE8);
  }
}

uint64_t sub_10148F6DC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a3;
  v4 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v4, &v5);
}

void sub_10148F734(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, void *a6)
{
  v9 = a5;
  v10 = a6;
  v37[0] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x5012000000;
  v28 = sub_10148FBB4;
  v29 = sub_10148FBD8;
  v30 = &unk_101CF8E15;
  *__p = 0u;
  v32 = 0u;
  if (v10)
  {
    sub_10148F648();
    v11 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Getting DeviceIdentityCertificate failed w/ %{public}@", buf, 0xCu);
    }

    v12 = [v10 localizedDescription];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = [v13 UTF8String];
    }

    else
    {
      v15 = "Getting DeviceIdentityCertificate failed w/ null error";
    }

    sub_100016890((v26 + 7), v15);
    *(v34 + 6) = 2;
    sub_10148FBEC(v26 + 48, *(a1 + 32));

    goto LABEL_17;
  }

  if (!v9 || [v9 count] != 2)
  {
LABEL_17:
    v17 = *(a1 + 64);
    if (!v17)
    {
      goto LABEL_20;
    }

    v19 = 0;
    v18 = *(v34 + 6) | &_mh_execute_header;
    goto LABEL_19;
  }

  if (*(a1 + 80) == 1)
  {
    sub_10148F648();
    v16 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I BAA fetch for update baseband successful", buf, 2u);
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      v18 = 0;
      v19 = 1;
LABEL_19:
      sub_10148F6DC(v17, v19, v18);
    }
  }

  else
  {
    *(v26 + 48) = 1;
    v39 = kMAOptionsUseCellularOTAConnection;
    v20 = &__kCFBooleanFalse;
    if (*(a1 + 81))
    {
      v20 = &__kCFBooleanTrue;
    }

    v40 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

    v23 = [v9 objectAtIndexedSubscript:0];
    v24 = [v9 objectAtIndexedSubscript:1];
    v37[1] = _NSConcreteStackBlock;
    v37[2] = 3321888768;
    v37[3] = sub_1014900F0;
    v37[4] = &unk_101F40318;
    v37[5] = &v25;
    v37[6] = &v33;
    v37[7] = *(a1 + 32);
    sub_1011F2210(v38, a1 + 40);
    MAEUpdateBasebandTicketWithError();

    sub_100ED2CDC(v38);
  }

LABEL_20:
  _Block_object_dispose(&v25, 8);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  _Block_object_dispose(&v33, 8);
  sub_1005A16F4(v37);
}

void sub_10148FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  sub_100ED2CDC(v31 + 56);

  _Block_object_dispose(&a9, 8);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  sub_1005A16F4(&a26);

  _Unwind_Resume(a1);
}

__n128 sub_10148FBB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_10148FBD8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

void sub_10148FBEC(char *a1, Registry **a2)
{
  if (*a1 == 1 && (a1[1] & 1) != 0)
  {
    goto LABEL_32;
  }

  memset(&v26[1], 0, 32);
  v27 = 0u;
  v32 = 0u;
  v31 = 0u;
  memset(&v29, 0, sizeof(v29));
  v28 = 0u;
  v30 = 23;
  qmemcpy(&v26[2] + 7, "\tActivation Push", 16);
  LOBYTE(v26[1]) = 121;
  v26[0] = *"Telephony";
  BYTE7(v27) = 15;
  sub_1000167D4((&v27 + 8), "BB ticket update failure", 0x18uLL);
  std::string::operator=(&v29, (a1 + 8));
  v30 |= 0x11uLL;
  ServiceMap = Registry::getServiceMap(*a2);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v33 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v33);
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_11:
  sub_100D9EC48(v16, v26);
  v36[0] = off_101F403D8;
  v36[3] = v36;
  (*(*v12 + 16))(v12, v16, v36);
  sub_10010DF14(v36);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v13 & 1) == 0)
  {
LABEL_21:
    sub_100004A34(v11);
  }

LABEL_22:
  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*(&v27 + 1));
  }

  if (SBYTE7(v27) < 0)
  {
    operator delete(v26[3]);
  }

  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
  }

LABEL_32:
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1014906D0;
  v26[3] = &unk_101F40448;
  v26[4] = a1;
  v14 = v26;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v14);
  v35 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x8012Eu);
  if (v35)
  {
    v33 = 0;
    v34 = 0;
    sub_10001C610(&v33);
    if (v33)
    {
      operator new();
    }

    if (v34)
    {
      sub_100004A34(v34);
    }
  }

  sub_10001C0A0(&v35);
}

void sub_101490000(_Unwind_Exception *a1)
{
  v4 = *(v2 - 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10001C0A0((v2 - 112));

  _Unwind_Resume(a1);
}

void sub_1014900F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (v3)
  {
    *(v4 + 49) = 0;
    sub_10148F648();
    v5 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Getting new baseband ticket failed w/ %{public}@", &v12, 0xCu);
    }

    v6 = [v3 localizedDescription];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = [v7 UTF8String];
    }

    else
    {
      v9 = "Getting new baseband ticket failed w/ null error";
    }

    sub_100016890((*(*(a1 + 32) + 8) + 56), v9);
    *(*(*(a1 + 40) + 8) + 24) = 3;
  }

  else
  {
    *(v4 + 49) = 1;
    sub_10148F648();
    v10 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received new baseband ticket successfully", &v12, 2u);
    }
  }

  sub_10148FBEC((*(*(a1 + 32) + 8) + 48), *(a1 + 48));
  v11 = *(a1 + 80);
  if (v11)
  {
    sub_10148F6DC(v11, v3 == 0, *(*(*(a1 + 40) + 8) + 24) | &_mh_execute_header);
  }
}

void sub_1014902E0(uint64_t a1, uint64_t a2)
{
  sub_1011F2210(a1 + 40, a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

uint64_t sub_101490338(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  return sub_100ED2CDC(a1 + 40);
}

uint64_t sub_101490378(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_101490404(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F40388;
  sub_10101FBE0(a1 + 3);
  return a1;
}

void sub_101490480(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101490584(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 23);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_10148F648();
  v6 = qword_101FCABE0;
  if (!os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_3;
  }

  v7 = "failed";
  if (v3)
  {
    v7 = "success";
  }

  v8 = 136315138;
  v9 = v7;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ABC report %s for BB ticket update failure", &v8, 0xCu);
  if (v5 < 0)
  {
LABEL_3:
    operator delete(v4);
  }
}

void sub_10149066C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101490684(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F40438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014906D0(uint64_t a1, uint64_t a2)
{
  sub_10148F648();
  v4 = qword_101FCABE0;
  if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (*v5)
    {
      v6 = "";
    }

    else
    {
      v6 = "not ";
    }

    if (v5[1])
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v16 = 136315394;
    v17 = v6;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending update ticket AWD metric: BAA is %ssuccessful, Ticket update is %ssuccessful", &v16, 0x16u);
  }

  v8 = *(a1 + 32);
  if (*(v8 + 1) != 1 || (*v8 & 1) == 0)
  {
    v9 = *(v8 + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    if (v9)
    {
      *(a2 + 32) |= 2u;
      v10 = *(a2 + 16);
      if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v10, (v8 + 8));
      sub_10148F648();
      v11 = qword_101FCABE0;
      v12 = os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT);
      v8 = *(a1 + 32);
      if (v12)
      {
        v13 = (v8 + 8);
        if (*(v8 + 31) < 0)
        {
          v13 = *v13;
        }

        v16 = 136315138;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I AWD metric has failure reason: %s", &v16, 0xCu);
        v8 = *(a1 + 32);
      }
    }
  }

  v14 = *(a2 + 32);
  *(a2 + 25) = *v8;
  v15 = *(v8 + 1);
  *(a2 + 32) = v14 | 0xC;
  *(a2 + 24) = v15;
}

void sub_1014908E0(uint64_t a1)
{

  operator delete();
}

id sub_101490934(uint64_t a1, void *a2)
{
  *a2 = off_101F40478;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10149097C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

const void **sub_10149098C(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a1 + 8);
  v5 = *a3;
  *a3 = 0;
  (*(v3 + 16))();
  return sub_10002D760(&v5);
}

void sub_1014909E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002D760(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014909FC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F404E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101490A48()
{
  v0 = objc_autoreleasePoolPush();
  qword_101FCABD8 = sGetLogGroupName();

  objc_autoreleasePoolPop(v0);
}

void sub_101490D78(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101491674(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491940(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491BDC(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10149240C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_101492828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_101492C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1014930AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_1014934C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1014938F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_101493D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_101494170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10149461C(_Unwind_Exception *a1)
{
  v6 = v1;

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10149472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a24)
  {
    JUMPOUT(0x10149471CLL);
  }

  JUMPOUT(0x101494718);
}

uint64_t sub_101494740(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_dictionary_get_count(*a2))
  {
    sub_10000F6D4(a1, a2);
  }

  return xpc::auto_reply::deleter(a2, v4);
}

void sub_1014947C4(uint64_t a1)
{

  operator delete();
}

id sub_10149488C(uint64_t a1, void *a2)
{
  *a2 = off_101F40540;
  a2[1] = objc_retainBlock(*(a1 + 8));
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1014948E4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101494920(id *a1)
{

  operator delete(a1);
}

void sub_101494964(uint64_t a1, id *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = v5;
  if ((v4 & 0x100000000) != 0)
  {
    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v4 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        [v8 getLogContext];
        v9 = v11;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

      ctu::OsLogContext::~OsLogContext(&v10);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Got empty data usage", &v10, 2u);
      }

      v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    }

    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_101494AD0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F405A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101494B50(uint64_t a1)
{

  operator delete();
}

id sub_101494C18(uint64_t a1, void *a2)
{
  *a2 = off_101F405C0;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_101494C70(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101494CAC(id *a1)
{

  operator delete(a1);
}

void sub_101494CF0(uint64_t a1, xpc_object_t **a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (xpc_dictionary_get_value(*v3, "kPosixError"))
  {
    *buf = v3;
    *&buf[8] = "kPosixError";
    sub_100006354(buf, &object);
    v5 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
LABEL_5:
    v6 = *(a1 + 8);
    if (v6)
    {
      [v6 getLogContext];
      v7 = *&buf[8];
    }

    else
    {
      v7 = 0;
      *buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to retrieve active paired device data usage, error: %lu", buf, 0xCu);
    }

    v8 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    (*(*(a1 + 16) + 16))();
    goto LABEL_24;
  }

  object = 0;
  data = xpc_dictionary_get_data(*v3, "kDeviceDataUsage", &object);
  if (!data)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v10 = [NSData dataWithBytes:data length:object];
  if (!v10)
  {
LABEL_15:
    v8 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v15];
  v11 = v15;
LABEL_16:
  if (!(v8 | v11))
  {
    v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:94 userInfo:0];
    v13 = *(a1 + 8);
    if (v13)
    {
      [v13 getLogContext];
      v14 = *&buf[8];
    }

    else
    {
      v14 = 0;
      *buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to retrieve active paired device data usage, error: %@", buf, 0xCu);
    }

    v11 = v12;
  }

  (*(*(a1 + 16) + 16))();

LABEL_24:
}

uint64_t sub_101495038(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F40620))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101495084(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v38 = NSLocalizedDescriptionKey;
      v39 = @"Message is nil";
      v9 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v9];
    }

    goto LABEL_11;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v36 = NSLocalizedDescriptionKey;
      v37 = @"Invalid ConversationID";
      v10 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v10];
    }

    goto LABEL_11;
  }

  v7 = [v6 sequenceNum];
  if (v7 < 0 || +[CTStewieEmergencyTextMessage maxSequenceNum]< v7)
  {
    if (a2)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"Invalid SequenceNum";
      v8 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v8];
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 80) = 0;
    goto LABEL_12;
  }

  v11 = [v6 text];

  if (!v11)
  {
    if (a2)
    {
      v32 = NSLocalizedDescriptionKey;
      v33 = @"Text is missing";
      v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v15];
    }

    goto LABEL_11;
  }

  v12 = [v6 text];
  v13 = [v12 lengthOfBytesUsingEncoding:4];

  if (!v13 || v13 > +[CTStewieEmergencyTextMessage maxLengthInBytesForOutgoingText])
  {
    if (a2)
    {
      v30 = NSLocalizedDescriptionKey;
      v31 = @"Invalid text length";
      v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_11;
  }

  memset(v29, 0, sizeof(v29));
  __p[0] = 512;
  v25 = 0x300000001;
  v24 = off_101EE4118;
  v26 = &unk_101EE41C8;
  v28 = 0uLL;
  __p[1] = 0;
  BYTE2(__p[0]) = [v6 conversationID];
  WORD2(__p[0]) = [v6 sequenceNum];
  v16 = [v6 text];
  v17 = v16;
  v18 = [v16 UTF8String];

  v22 = 0;
  v23 = 0uLL;
  sub_100837690(&v22, v18, v13 + v18, v13);
  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  v19 = v22;
  v20 = v23;
  *a3 = off_101EE42B0;
  *a3 = off_101EE42B0;
  *(a3 + 8) = v25;
  *(a3 + 16) = &unk_101EE4328;
  *a3 = &off_101EE43D0;
  *a3 = off_101EE4118;
  *(a3 + 16) = &unk_101EE41C8;
  *(a3 + 24) = __p[0];
  *(a3 + 28) = WORD2(__p[0]);
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  v28 = 0uLL;
  __p[1] = 0;
  v21 = *v29;
  *(a3 + 48) = *(&v20 + 1);
  *(a3 + 56) = v21;
  *(a3 + 64) = *&v29[8];
  *(a3 + 80) = 1;
LABEL_12:
}

void sub_1014956F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10149945C(va);

  _Unwind_Resume(a1);
}

void sub_101495780(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v32 = NSLocalizedDescriptionKey;
      v33 = @"Message is nil";
      v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];
    }

    goto LABEL_20;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v30 = NSLocalizedDescriptionKey;
      v31 = @"Invalid ConversationID";
      v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v21];
    }

LABEL_20:
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_21;
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0x100000001;
  v25 = off_101EE3DD8;
  v27 = &unk_101EE3E88;
  LODWORD(v28[0]) = 33554688;
  LOBYTE(v28[1]) = 0;
  BYTE2(v28[0]) = [v6 conversationID];
  v7 = [v6 serializedQuestionnaireAnswers];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = [v6 serializedQuestionnaireAnswers];
    v10 = v9;
    v11 = [v9 bytes];
    v12 = [v6 serializedQuestionnaireAnswers];
    v13 = v12;
    v14 = [v12 bytes];
    v15 = [v6 serializedQuestionnaireAnswers];
    v16 = [v15 length];
    __p = 0uLL;
    v24 = 0;
    sub_1000DCF88(&__p, v11, &v16[v14], &v16[v14] - v11);
    sub_1001E9734(&v28[1], &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v17 = [v6 notifyOption];
  v18 = 2 * (v17 != 1);
  if (v17 == 3)
  {
    v18 = 1;
  }

  if (v18 == 2)
  {
    LOBYTE(v18) = 0;
  }

  BYTE3(v28[0]) = v18;
  *a3 = v22;
  *(a3 + *(v22 - 48)) = off_101EE3F70;
  *(a3 + 8) = v26;
  *(a3 + 16) = &unk_101EE3FE8;
  *a3 = &off_101EE4090;
  *a3 = off_101EE3DD8;
  *(a3 + 16) = &unk_101EE3E88;
  *(a3 + 24) = v28[0];
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  v19 = v29;
  if (v29 == 1)
  {
    *(a3 + 32) = *&v28[1];
    *(a3 + 48) = v28[3];
    memset(&v28[1], 0, 24);
    *(a3 + 56) = 1;
  }

  *(a3 + 64) = 1;
  v25 = off_101EE3DD8;
  v27 = &unk_101EE3E88;
  if (v19 && v28[1])
  {
    v28[2] = v28[1];
    operator delete(v28[1]);
  }

LABEL_21:
}

void sub_101495D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10149955C(&a14);
  _Unwind_Resume(a1);
}

void sub_101495DE0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Message is nil";
      v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v19];
    }

    goto LABEL_11;
  }

  v7 = [v5 encryptedData];
  if (!v7 || ([v6 encryptedData], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, !v9))
  {
    if (a2)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Data provided is either nil or empty";
      v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v18];
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 56) = 0;
    goto LABEL_12;
  }

  __p = 1024;
  v23 = 0x500000004;
  v22 = off_101EDD378;
  v24 = &unk_101EDD428;
  memset(__p_8, 0, sizeof(__p_8));
  v10 = [v6 encryptedData];
  v11 = v10;
  v12 = [v10 bytes];
  v13 = [v6 encryptedData];
  v14 = v13;
  v15 = [v13 bytes];
  v16 = [v6 encryptedData];
  v17 = [v16 length];
  v20 = 0uLL;
  v21 = 0;
  sub_1000DCF88(&v20, v12, &v17[v15], &v17[v15] - v12);
  if (*__p_8)
  {
    *&__p_8[8] = *__p_8;
    operator delete(*__p_8);
  }

  *__p_8 = v20;
  *&__p_8[16] = v21;
  v21 = 0;
  v20 = 0uLL;

  *a3 = off_101EDD510;
  *a3 = off_101EDD510;
  *(a3 + 8) = v23;
  *(a3 + 16) = &unk_101EDD588;
  *a3 = &off_101EDD630;
  *a3 = off_101EDD378;
  *(a3 + 16) = &unk_101EDD428;
  *(a3 + 24) = __p;
  *(a3 + 32) = *__p_8;
  *(a3 + 48) = *&__p_8[16];
  *(a3 + 56) = 1;
LABEL_12:
}

void sub_101496328(void *a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = @"Message is nil";
      v9 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v9];
    }

    goto LABEL_11;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Invalid ConversationID";
      v10 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v10];
    }

    goto LABEL_11;
  }

  v7 = [v6 sequenceNum];
  if (v7 < 0 || +[CTStewieEmergencyTextMessage maxSequenceNum]< v7)
  {
    if (a2)
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Invalid SequenceNum";
      v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v8];
    }

LABEL_11:
    a3->n128_u8[0] = 0;
    a3[5].n128_u8[0] = 0;
    goto LABEL_12;
  }

  if ([v6 providerId] >= 0x8000)
  {
    if (a2)
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"Invalid providerId";
      v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v15];
    }

    goto LABEL_11;
  }

  v11 = [v6 text];

  if (!v11)
  {
    if (a2)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Text is missing";
      v16 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];
    }

    goto LABEL_11;
  }

  v12 = [v6 text];
  v13 = [v12 lengthOfBytesUsingEncoding:4];

  if (!v13 || v13 > +[CTStewieRoadsideTextMessage maxLengthInBytesForOutgoingText])
  {
    if (a2)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Invalid text length";
      v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_11;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  *__p = 0u;
  v22 = 0u;
  sub_10149683C(&v22);
  BYTE10(v23) = [v6 conversationID];
  WORD6(v23) = [v6 providerId];
  HIWORD(v23) = [v6 sequenceNum];
  v17 = [v6 text];
  v18 = v17;
  v19 = [v17 UTF8String];

  v20 = 0uLL;
  v21 = 0;
  sub_100837690(&v20, v19, v13 + v19, v13);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v20;
  *&v25 = v21;
  sub_101499750(a3, &v22);
  sub_1014969BC(&v22);
LABEL_12:
}

void sub_1014967A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1014969BC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10149683C(uint64_t result)
{
  *result = off_101F5B0A8;
  *result = off_101F5B0A8;
  *(result + 8) = 8;
  *(result + 12) = 8;
  *(result + 16) = &unk_101F5B120;
  *result = &off_101F5B1C8;
  *result = off_101F5AF10;
  *(result + 16) = &unk_101F5AFC0;
  *(result + 24) = 1792;
  *(result + 26) = 0;
  *(result + 60) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 36) = 0;
  *(result + 49) = 0;
  return result;
}

void *sub_1014969BC(void *a1)
{
  *a1 = off_101F5AF10;
  *a1 = off_101F5AF10;
  a1[2] = &unk_101F5AFC0;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_101496ABC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v44 = NSLocalizedDescriptionKey;
      v45 = @"Message is nil";
      v26 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v26];
    }

    goto LABEL_30;
  }

  if ([v5 conversationID] >= 0x100)
  {
    if (a2)
    {
      v42 = NSLocalizedDescriptionKey;
      v43 = @"Invalid ConversationID";
      v27 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v27];
    }

    goto LABEL_30;
  }

  if ([v6 providerId] >= 0x8000)
  {
    if (a2)
    {
      v40 = NSLocalizedDescriptionKey;
      v41 = @"Invalid providerId";
      v28 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v28];
    }

    goto LABEL_30;
  }

  v7 = [v6 phoneNumber];
  if (v7)
  {
    v8 = [v6 phoneNumber];
    v9 = sub_10149733C(v8, 0);

    if ((v9 & 1) == 0)
    {
      if (a2)
      {
        v38 = NSLocalizedDescriptionKey;
        v39 = @"phoneNumber is invalid. Phone number can only contain digits and must be of length <= 15";
        v29 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v29];
      }

LABEL_30:
      *a3 = 0;
      *(a3 + 96) = 0;
      goto LABEL_31;
    }
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v34 = 0x600000008;
  v33 = off_101F5ABD0;
  v35 = &unk_101F5AC80;
  LOWORD(v36[0]) = 1536;
  LOBYTE(v36[1]) = 0;
  LOBYTE(v36[5]) = 0;
  BYTE2(v36[0]) = [v6 conversationID];
  WORD2(v36[0]) = [v6 providerId];
  BYTE6(v36[0]) = [v6 isPayPerUse];
  v10 = [v6 serializedQuestionnaireAnswers];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [v6 serializedQuestionnaireAnswers];
    v13 = v12;
    v14 = [v12 bytes];
    v15 = [v6 serializedQuestionnaireAnswers];
    v16 = v15;
    v17 = [v15 bytes];
    v18 = [v6 serializedQuestionnaireAnswers];
    v19 = [v18 length];
    __p = 0uLL;
    v32 = 0;
    sub_1000DCF88(&__p, v14, &v19[v17], &v19[v17] - v14);
    sub_1001E9734(&v36[5], &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v20 = [v6 phoneNumber];
  v21 = v20 == 0;

  if (!v21)
  {
    v22 = [v6 phoneNumber];
    v23 = v22;
    __p.n128_u64[0] = [v22 UTF8String];
    sub_100184AD0(&v36[1], &__p);
  }

  *a3 = off_101F5AD68;
  *a3 = off_101F5AD68;
  *(a3 + 8) = v34;
  *(a3 + 16) = v30;
  *(a3 + 16 + *(v30 - 48)) = &off_101F5AE88;
  *a3 = off_101F5ABD0;
  *(a3 + 16) = &unk_101F5AC80;
  *(a3 + 24) = v36[0];
  *(a3 + 27) = *(v36 + 3);
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  v24 = v36[4];
  if (LOBYTE(v36[4]) == 1)
  {
    *(a3 + 32) = *&v36[1];
    *(a3 + 48) = v36[3];
    memset(&v36[1], 0, 24);
    *(a3 + 56) = 1;
  }

  *(a3 + 64) = 0;
  *(a3 + 88) = 0;
  v25 = v37;
  if (v37 == 1)
  {
    *(a3 + 64) = *&v36[5];
    *(a3 + 80) = v36[7];
    memset(&v36[5], 0, 24);
    *(a3 + 88) = 1;
  }

  *(a3 + 96) = 1;
  v33 = off_101F5ABD0;
  v35 = &unk_101F5AC80;
  if (v25 && v36[5])
  {
    v36[6] = v36[5];
    operator delete(v36[5]);
    v24 = v36[4];
  }

  if ((v24 & 1) != 0 && SHIBYTE(v36[3]) < 0)
  {
    operator delete(v36[1]);
  }

LABEL_31:
}

id sub_10149733C(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 && [v3 hasPrefix:@"+"])
  {
    v5 = [v4 substringFromIndex:1];

    v4 = v5;
  }

  if (v4 && [v4 length] && objc_msgSend(v4, "length") <= 0xF)
  {
    v6 = +[NSCharacterSet decimalDigitCharacterSet];
    v7 = [NSCharacterSet characterSetWithCharactersInString:v4];
    v8 = [v6 isSupersetOfSet:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_101497438(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 myShortHandle];
    v8 = sub_101497A9C(v7);

    if (v8)
    {
      v9 = [v6 otherShortHandle];
      v10 = sub_101497A9C(v9);

      if (v10)
      {
        if ([v6 partNumber] - 1 >= 4)
        {
          if (a2)
          {
            v33 = NSLocalizedDescriptionKey;
            v34 = @"Invalid partNumber";
            v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];
          }
        }

        else if ([v6 totalParts] - 1 >= 4)
        {
          if (a2)
          {
            v31 = NSLocalizedDescriptionKey;
            v32 = @"Invalid totalParts";
            v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v21];
          }
        }

        else
        {
          v11 = [v6 payload];
          if (v11 && ([v6 payload], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v13))
          {
            v14 = [v6 payload];
            v15 = [v14 length];

            if (v15 < 0x94)
            {
              v25 = 0u;
              v26 = 0u;
              *__p = 0u;
              memset(v23, 0, sizeof(v23));
              sub_101497B00(v23);
            }

            if (a2)
            {
              v27 = NSLocalizedDescriptionKey;
              v28 = @"Payload is too big";
              v16 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
              *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];
            }
          }

          else if (a2)
          {
            v29 = NSLocalizedDescriptionKey;
            v30 = @"Payload is missing";
            v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v22];
          }
        }
      }

      else if (a2)
      {
        v35 = NSLocalizedDescriptionKey;
        v36 = @"Invalid otherShortHandle";
        v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v19];
      }
    }

    else if (a2)
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = @"Invalid myShortHandle";
      v18 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v18];
    }
  }

  else if (a2)
  {
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Message is nil";
    v17 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v17];
  }

  *a3 = 0;
  a3[112] = 0;
}

BOOL sub_101497A9C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 unsignedLongLongValue];
    v3 = [v2 unsignedLongLongValue] >> 57 == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_101497B00(uint64_t a1)
{
  *a1 = off_101EF2120;
  *a1 = off_101EF2120;
  *(a1 + 8) = 16;
  *(a1 + 12) = 13;
  *(a1 + 16) = &unk_101EF2198;
  *a1 = &off_101EF2240;
  *a1 = off_101EF1F88;
  *(a1 + 16) = &unk_101EF2038;
  *(a1 + 24) = 2560;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  operator new();
}

void sub_101497CE4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_101497D04(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Message is nil";
      v14 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];
    }

    goto LABEL_11;
  }

  v7 = [v5 shortHandles];
  if (!v7 || ([v6 shortHandles], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9))
  {
    if (a2)
    {
      v49 = NSLocalizedDescriptionKey;
      v50 = @"Short handles are missing";
      v13 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v13];
    }

    goto LABEL_11;
  }

  v10 = [v6 shortHandles];
  v11 = [v10 count];

  if (v11 >= 0x18)
  {
    if (a2)
    {
      v47 = NSLocalizedDescriptionKey;
      v48 = @"Too many short handles";
      v12 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v12];
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 56) = 0;
    goto LABEL_12;
  }

  __p = 0;
  v43 = 0uLL;
  v15 = [v6 shortHandles];
  v16 = [v15 count];
  if (v16)
  {
    if (!(v16 >> 61))
    {
      sub_10006A8B4(&__p, v16);
    }

    sub_1000CE3D4();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [v6 shortHandles];
  v37 = v17;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v18)
  {
    v19 = *v39;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || !sub_101497A9C(v21))
        {
          if (a2)
          {
            v44 = NSLocalizedDescriptionKey;
            v45 = @"Invalid shortHandle";
            v36 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v36];
          }

          *a3 = 0;
          *(a3 + 56) = 0;

          if (__p)
          {
            *&v43 = __p;
            operator delete(__p);
          }

          goto LABEL_12;
        }

        v22 = [v21 unsignedLongLongValue];
        v23 = v43;
        if (v43 >= *(&v43 + 1))
        {
          v25 = __p;
          v26 = v43 - __p;
          v27 = (v43 - __p) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            sub_1000CE3D4();
          }

          v29 = *(&v43 + 1) - __p;
          if ((*(&v43 + 1) - __p) >> 2 > v28)
          {
            v28 = v29 >> 2;
          }

          v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
          v31 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v30)
          {
            v31 = v28;
          }

          if (v31)
          {
            sub_10006A8B4(&__p, v31);
          }

          *(8 * v27) = v22;
          v24 = 8 * v27 + 8;
          memcpy(0, v25, v26);
          v32 = __p;
          __p = 0;
          v43 = v24;
          if (v32)
          {
            operator delete(v32);
          }

          v17 = v37;
        }

        else
        {
          *v43 = v22;
          v24 = v23 + 8;
        }

        *&v43 = v24;
      }

      v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v33 = __p;
  v34 = v43;
  __p = 0;
  v35 = *(&v43 + 1);
  v43 = 0uLL;
  *a3 = off_101EF26C8;
  *a3 = off_101EF26C8;
  *(a3 + 8) = 0xE00000010;
  *(a3 + 16) = &unk_101EF2740;
  *a3 = &off_101EF27E8;
  *a3 = off_101EF2530;
  *(a3 + 16) = &unk_101EF25E0;
  *(a3 + 24) = 2816;
  *(a3 + 32) = v33;
  *(a3 + 40) = v34;
  *(a3 + 48) = v35;
  *(a3 + 56) = 1;
LABEL_12:
}

void sub_101498458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101498504(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    if (a2)
    {
      v55 = NSLocalizedDescriptionKey;
      v56 = @"Message is nil";
      v11 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v11];
    }

    goto LABEL_21;
  }

  v7 = [v5 context];

  if (!v7)
  {
    if (a2)
    {
      v53 = NSLocalizedDescriptionKey;
      v54 = @"Context is missing";
      v12 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v12];
    }

    goto LABEL_21;
  }

  v8 = [v6 context];
  v9 = sub_100018A64([v8 slotID]);

  if ((v9 - 3) <= 0xFFFFFFFD)
  {
    if (a2)
    {
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Invalid context slotID";
      v10 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v10];
    }

LABEL_21:
    *a3 = 0;
    a3[96] = 0;
    goto LABEL_22;
  }

  v13 = [v6 destinationPhoneNumber];
  if (!v13 || ([v6 destinationPhoneNumber], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, !v15))
  {
    if (a2)
    {
      v49 = NSLocalizedDescriptionKey;
      v50 = @"destinationPhoneNumber is missing";
      v19 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v19];
    }

    goto LABEL_21;
  }

  v16 = [v6 destinationPhoneNumber];
  v17 = sub_10149733C(v16, 1);

  if ((v17 & 1) == 0)
  {
    if (a2)
    {
      v47 = NSLocalizedDescriptionKey;
      v48 = @"destinationPhoneNumber is invalid";
      v20 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];
    }

    goto LABEL_21;
  }

  if (([v6 codecID] & 0x8000000000000000) != 0 || objc_msgSend(v6, "codecID") >= 0x10)
  {
    if (a2)
    {
      v45 = NSLocalizedDescriptionKey;
      v46 = @"Invalid codecID";
      v18 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v18];
    }

    goto LABEL_21;
  }

  v21 = [v6 textPayload];
  if (!v21 || ([v6 textPayload], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v21, !v23))
  {
    if (a2)
    {
      v43 = NSLocalizedDescriptionKey;
      v44 = @"textPayload is missing";
      v27 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v27];
    }

    goto LABEL_21;
  }

  v24 = [v6 textPayload];
  v25 = [v24 length];

  if (v25 >= 0x8F)
  {
    if (a2)
    {
      v41 = NSLocalizedDescriptionKey;
      v42 = @"textPayload is too big";
      v26 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v26];
    }

    goto LABEL_21;
  }

  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  sub_101498C70(&v38);
  HIDWORD(v39) = v9;
  v28 = [v6 destinationPhoneNumber];
  LOBYTE(v40[0]) = [v28 hasPrefix:@"+"];

  v29 = [v6 destinationPhoneNumber];
  v30 = v29;
  sub_100016890((v40 + 8), [v29 UTF8String]);

  if (LOBYTE(v40[0]) == 1)
  {
    std::string::erase((v40 + 8), 0, 1uLL);
  }

  LOBYTE(v40[2]) = [v6 codecID];
  v31 = [v6 textPayload];
  v32 = v31;
  v33 = [v31 bytes];

  v34 = [v6 textPayload];
  v35 = [v34 length];
  v36 = 0uLL;
  v37 = 0;
  sub_1000DCF88(&v36, v33, v35 + v33, v35);
  if (*(&v40[2] + 1))
  {
    *&v40[3] = *(&v40[2] + 1);
    operator delete(*(&v40[2] + 1));
  }

  *(&v40[2] + 8) = v36;
  *(&v40[3] + 1) = v37;
  v37 = 0;
  v36 = 0uLL;

  BYTE1(v40[0]) = [v6 notifyDowngrade];
  sub_101499BB4(a3, &v38);
  sub_100F2A104(&v38);
LABEL_22:
}

uint64_t sub_101498C70(uint64_t result)
{
  *result = off_101EF2CD0;
  *result = off_101EF2CD0;
  *(result + 8) = 32;
  *(result + 12) = 18;
  *(result + 16) = &unk_101EF2D48;
  *result = &off_101EF2DF0;
  *result = off_101EF2B38;
  *(result + 16) = &unk_101EF2BE8;
  *(result + 24) = 3328;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  return result;
}

id sub_101498DF4(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  sub_1001E0090(__p, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  v6 = [CTStewieEmergencyTextMessage alloc];
  if (*(a1 + 28) == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = *(a1 + 28) == 0;
  }

  v8 = [v6 initIncomingTextMessageWithConversationID:*(a1 + 26) sequenceNum:*(a1 + 30) emergencyText:v5 notifyOption:v7 error:a2];

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_101498ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_101498EF8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_1001E0090(__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  v6 = [[CTStewieRoadsideTextMessage alloc] initIncomingTextMessageWithConversationID:*(a1 + 26) providerId:*(a1 + 28) sequenceNum:*(a1 + 32) text:v5 error:a2];

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_101498FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_101498FE8(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = *(a1 + 64);
  for (i = *(a1 + 72); v5 != i; v5 += 2)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = [CTStewieIMessageLiteSummaryPendingCount alloc];
    v10 = [NSNumber numberWithUnsignedLongLong:v7];
    v11 = [v9 initWithOtherShortHandle:v10 pendingCount:v8 error:0];
    [v4 addObject:v11];
  }

  v12 = [[CTStewieIMessageLiteSummaryMessage alloc] initWithPendingIMessageLiteTotalCount:*(a1 + 30) pendingCounts:v4 error:a2];

  return v12;
}

id sub_101499114(uint64_t a1, uint64_t a2)
{
  v2 = [[CTStewieSatSmsSummaryMessage alloc] initWithPendingSatSmsTotalCount:*(a1 + 31) error:a2];

  return v2;
}

id sub_101499160(uint64_t a1, uint64_t a2)
{
  v4 = [NSData dataWithBytes:*(a1 + 88) length:*(a1 + 96) - *(a1 + 88)];
  v5 = [CTStewieIMessageLiteMessageIncoming alloc];
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  LOBYTE(v13) = *(a1 + 80);
  v11 = [v5 initWithTimestamp:v6 pendingTotalCount:v7 pendingCount:v8 myShortHandle:v9 otherShortHandle:v10 partNumber:*(a1 + 64) totalParts:*(a1 + 72) payload:v4 isRelay:v13 error:a2];

  return v11;
}

id sub_1014992AC(uint64_t a1, uint64_t a2)
{
  v21 = [NSData dataWithBytes:*(a1 + 112) length:*(a1 + 120) - *(a1 + 112)];
  v4 = [CTStewieSatSmsMessageIncoming alloc];
  v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:sub_10000FD54(*(a1 + 40))];
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v7 = *(a1 + 44);
  v8 = *(a1 + 45);
  v9 = [NSString alloc];
  if (*(a1 + 103) >= 0)
  {
    v10 = a1 + 80;
  }

  else
  {
    v10 = *(a1 + 80);
  }

  v11 = [v9 initWithUTF8String:v10];
  v12 = *(a1 + 104);
  v13 = [NSString alloc];
  v16 = *(a1 + 136);
  v15 = a1 + 136;
  v14 = v16;
  if (*(v15 + 23) >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = [v13 initWithUTF8String:v17];
  v19 = [v4 initWithContext:v5 timestamp:v6 pendingTotalCount:v7 pendingCount:v8 sourcePhoneNumber:v11 codecID:v12 textPayload:v21 uniqueID:v18 error:a2];

  return v19;
}

void *sub_10149945C(void *a1)
{
  *a1 = off_101EE4118;
  *a1 = off_101EE4118;
  a1[2] = &unk_101EE41C8;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10149955C(uint64_t a1)
{
  *a1 = off_101EE3DD8;
  *a1 = off_101EE3DD8;
  *(a1 + 16) = &unk_101EE3E88;
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void *sub_10149965C(void *a1)
{
  *a1 = off_101EDD378;
  *a1 = off_101EDD378;
  a1[2] = &unk_101EDD428;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 sub_101499750(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = off_101F5B0A8;
  a1->n128_u64[0] = off_101F5B0A8;
  a1->n128_u64[1] = a2->n128_u64[1];
  a1[1].n128_u64[0] = &unk_101F5B120;
  a1->n128_u64[0] = &off_101F5B1C8;
  a1->n128_u64[0] = off_101F5AF10;
  a1[1].n128_u64[0] = &unk_101F5AFC0;
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u64[0] = 0;
  a1[2] = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  result = a2[4];
  a1[4] = result;
  a2[4].n128_u64[0] = 0;
  a2[4].n128_u64[1] = 0;
  a1[5].n128_u8[0] = 1;
  return result;
}

uint64_t sub_1014998E8(uint64_t a1)
{
  *a1 = off_101F5ABD0;
  *a1 = off_101F5ABD0;
  *(a1 + 16) = &unk_101F5AC80;
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_101499A04(uint64_t result, uint64_t a2)
{
  *result = off_101EF2120;
  *result = off_101EF2120;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = &unk_101EF2198;
  *result = &off_101EF2240;
  *result = off_101EF1F88;
  *(result + 16) = &unk_101EF2038;
  v2 = *(a2 + 24);
  v3 = *(a2 + 40);
  *(result + 49) = *(a2 + 49);
  *(result + 40) = v3;
  *(result + 24) = v2;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v5 = *(a2 + 104);
  *(result + 96) = v4;
  *(result + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 112) = 1;
  return result;
}

__n128 sub_101499BB4(uint64_t a1, uint64_t a2)
{
  *a1 = off_101EF2CD0;
  *a1 = off_101EF2CD0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = &unk_101EF2D48;
  *a1 = &off_101EF2DF0;
  *a1 = off_101EF2B38;
  *(a1 + 16) = &unk_101EF2BE8;
  v2 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v2;
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 1;
  return result;
}

double sub_101499D64@<D0>(_OWORD *a1@<X8>)
{
  sub_100E989C8(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_101499DA0(NanoPreferencesSyncFactoryInterface *a1)
{
  NanoPreferencesSyncFactoryInterface::~NanoPreferencesSyncFactoryInterface(a1);

  operator delete();
}

void sub_101499DF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101499E74(uint64_t a1)
{
  *a1 = off_101F406E0;
  if (*(a1 + 8))
  {
    v2 = **(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v3 = *v3;
      }

      v6 = 136446210;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WiFi assertion released for '%{public}s'", &v6, 0xCu);
    }
  }

  sub_100534838((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101499F74(uint64_t a1)
{
  sub_101499E74(a1);

  operator delete();
}

void sub_10149A218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    (*(a11->isa + 1))(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

WiFiManagerInterface *sub_10149A30C(uint64_t a1)
{
  *a1 = off_101F40700;
  v2 = *(a1 + 184);
  if (v2)
  {
    [v2 suspend];
    [*(a1 + 184) invalidate];
  }

  if (*(a1 + 216) == 1)
  {
    sub_10000501C(__p, "~WiFiManagerImpl");
    sub_10149A434(a1, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100005978((a1 + 256));
  sub_10048662C((a1 + 248));
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  sub_100083940((a1 + 208));

  v3 = *(a1 + 160);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = v3[4];
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  std::mutex::~mutex((a1 + 80));
  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return sub_1014587CC(a1);
}

const void **sub_10149A434(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    if (!SCDynamicStoreSetNotificationKeys(v3, 0, 0))
    {
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Failed to clear dynamic store notification key", v12, 2u);
      }
    }

    if (!SCDynamicStoreSetDispatchQueue(*(a1 + 248), 0))
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to clear dynamic store dispatch queue", v12, 2u);
      }
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *v12 = 136446210;
      *&v12[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring disabled successfully for '%{public}s'", v12, 0xCu);
    }

    v9 = *(a1 + 248);
    *(a1 + 248) = 0;
    *v12 = v9;
    sub_10048662C(v12);
  }

  v10 = *(a1 + 256);
  *(a1 + 256) = 0;
  *v12 = v10;
  return sub_100005978(v12);
}

void sub_10149A5BC(uint64_t a1)
{
  sub_10149A30C(a1);

  operator delete();
}

void sub_10149A5F4(uint64_t a1, NSObject **a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10149A6A0;
  v4[3] = &unk_101F40758;
  v3 = *a2;
  v4[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  sub_10149F148((a1 + 8), v4);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_10149A6A0(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(*(a1 + 32) + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(buf, "/cc/events/dump_state");
  operator new();
}

void sub_10149ACA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149AE28(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 192))
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    *buf = 136315138;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WoW is %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 216) == 1)
    {
      if (*(a1 + 248))
      {
        v4 = "enabled";
      }

      else
      {
        v4 = "requested";
      }
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring is %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(a1 + 264));
    v6 = subscriber::asString();
    *buf = 136315394;
    v15 = v5;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CarrierMobileHotspot usage: active=%s sim=%s", buf, 0x16u);
  }

  std::mutex::lock((a1 + 80));
  for (i = *(a1 + 160); i; i = *i)
  {
    v8 = i[4];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        if (i[3])
        {
          v11 = *(a1 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = asString();
            shared_owners = v10->__shared_owners_;
            *buf = 136315394;
            v15 = v12;
            v16 = 2048;
            v17 = shared_owners;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I WiFiManagerClient type '%s' (%lu refs)", buf, 0x16u);
          }
        }

        sub_100004A34(v10);
      }
    }
  }

  std::mutex::unlock((a1 + 80));
}

void sub_10149B0B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3 == a4)
  {
    sub_10000501C(&__p, "");
  }

  else if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "";
    if (!a2)
    {
      v7 = "un";
    }

    v8 = (a1 + 224);
    if (*(a1 + 247) < 0)
    {
      v8 = *v8;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    v22 = 2080;
    v23 = v8;
    v24 = 2080;
    v25 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I WiFi: %savailable. Interface name changed from '%s' -> '%s'", buf, 0x20u);
  }

  v10 = (a1 + 224);
  v11 = *(a1 + 247);
  if (v11 < 0)
  {
    if (!*(a1 + 232))
    {
      goto LABEL_36;
    }
  }

  else if (!*(a1 + 247))
  {
    goto LABEL_36;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v13 = *(a1 + 232);
    if (v11 >= 0)
    {
      v13 = *(a1 + 247);
    }

    if (v13 != size || (v11 >= 0 ? (v14 = (a1 + 224)) : (v14 = *v10), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &__p) : (v15 = __p.__r_.__value_.__r.__words[0]), memcmp(v14, v15, size)))
    {
      if (*(a1 + 216) == 1)
      {
        sub_10000501C(buf, "Interface change. Tearing down WoW monitoring on previous interface");
        sub_10149A434(a1, buf);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }

        LOBYTE(v11) = *(a1 + 247);
      }
    }
  }

LABEL_36:
  if ((v11 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(a1 + 232);
  }

  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  if (v16 != v17 || ((v11 & 0x80u) == 0 ? (v18 = (a1 + 224)) : (v18 = *v10), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v19 = &__p) : (v19 = __p.__r_.__value_.__r.__words[0]), memcmp(v18, v19, v16)))
  {
    std::string::operator=((a1 + 224), &__p);
    if (*(a1 + 216) == 1)
    {
      if ((*(a1 + 247) & 0x8000000000000000) != 0)
      {
        if (!*(a1 + 232))
        {
          goto LABEL_55;
        }
      }

      else if (!*(a1 + 247))
      {
        goto LABEL_55;
      }

      sub_10149B760(a1);
    }
  }

LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10149B33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149B37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_10149B3D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_10149B420(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10149B520(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149B634;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149B618(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149B634(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v4 = *v4;
      }

      v7 = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring already enabled. requested by: '%{public}s'", &v7, 0xCu);
    }
  }

  else
  {
    *(v2 + 216) = 1;
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v6 = *v6;
      }

      v7 = 136446210;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Requested to enable WoW monitoring for '%{public}s'", &v7, 0xCu);
    }

    sub_10149B760(v2);
  }
}

void sub_10149B760(uint64_t a1)
{
  v2 = *(a1 + 247);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 247))
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = *(a1 + 40);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.version) = 0;
    v4 = "#I Missing interface name";
    goto LABEL_9;
  }

  if (!*(a1 + 232))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(a1 + 248))
  {
    v3 = *(a1 + 40);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.version) = 0;
    v4 = "#I WoW monitoring has already been setup";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 2u);
    return;
  }

  ifname = 0;
  if ((v2 & 0x80000000) != 0)
  {
    sub_100005F2C(__p, *(a1 + 224), *(a1 + 232));
  }

  else
  {
    *__p = *(a1 + 224);
    v22 = *(a1 + 240);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v26 = v22;
  }

  values = 0;
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    *&buf.version = __dst;
    buf.retain = v26;
  }

  *v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = values;
    values = *v27;
    v17[0] = v5;
    sub_100005978(v17);
  }

  if (SHIBYTE(buf.retain) < 0)
  {
    operator delete(buf.version);
  }

  ifname = values;
  values = 0;
  sub_100005978(&values);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, ifname, @"ActiveDuringSleepSupported");
  v7 = *(a1 + 256);
  *(a1 + 256) = NetworkInterfaceEntity;
  buf.version = v7;
  sub_100005978(&buf);
  values = *(a1 + 256);
  buf.version = 0;
  memset(&buf.retain, 0, 24);
  buf.info = a1;
  store = 0;
  store = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:WakeOnWifiChange", sub_10149BF7C, &buf);
  if (!store)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __dst = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      *v17 = __dst;
      v18 = v26;
      v11 = v17;
      if (SHIBYTE(v26) < 0)
      {
        v11 = v17[0];
      }

      *v27 = 136315138;
      *&v27[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Failed to create dynamic store for key '%s'", v27, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }

    goto LABEL_52;
  }

  v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  if (SCDynamicStoreSetNotificationKeys(store, v16, 0))
  {
    if (SCDynamicStoreSetDispatchQueue(store, *(a1 + 24)))
    {
      sub_100DAA5FC((a1 + 248), &store);
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        __dst = 0uLL;
        v26 = 0;
        ctu::cf::assign();
        *v17 = __dst;
        v18 = v26;
        v9 = v17;
        if (SHIBYTE(v26) < 0)
        {
          v9 = v17[0];
        }

        *v27 = 136315138;
        *&v27[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring enabled successfully for key '%s'", v27, 0xCu);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }
      }

      sub_10149BF8C(a1, 0);
      goto LABEL_51;
    }

    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __dst = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      *v17 = __dst;
      v18 = v26;
      v15 = v17;
      if (SHIBYTE(v26) < 0)
      {
        v15 = v17[0];
      }

      *v27 = 136315138;
      *&v27[4] = v15;
      v14 = "#I Failed to set dynamic store dispatch queue for key '%s'";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, v27, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __dst = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      *v17 = __dst;
      v18 = v26;
      v13 = v17;
      if (SHIBYTE(v26) < 0)
      {
        v13 = v17[0];
      }

      *v27 = 136315138;
      *&v27[4] = v13;
      v14 = "#I Failed to set dynamic store notification key '%s'";
      goto LABEL_49;
    }
  }

LABEL_51:
  sub_100010250(&v16);
LABEL_52:
  sub_10048662C(&store);
  sub_100005978(&ifname);
}

void sub_10149BC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, const void *a31)
{
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  sub_100010250(&a10);
  sub_10048662C(&a14);
  sub_100005978(&a31);
  _Unwind_Resume(a1);
}

void sub_10149BD38(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149BE4C;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149BE30(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149BE4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216) == 1)
  {
    *(v2 + 216) = 0;
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v4 = *v4;
      }

      v7 = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Requested to disable WoW monitoring for '%{public}s'", &v7, 0xCu);
    }

    sub_10149A434(v2, (a1 + 40));
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v6 = *v6;
      }

      v7 = 136446210;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I WoW monitoring already disabled. requested by: '%{public}s'", &v7, 0xCu);
    }
  }
}

const void **sub_10149BF8C(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I checkWoWSupport_sync(): triggered by '%s'", buf, 0xCu);
    }
  }

  result = *(a1 + 248);
  if (result)
  {
    v6 = *(a1 + 256);
    if (v6)
    {
      v7 = SCDynamicStoreCopyValue(result, v6);
      v13 = v7;
      v8 = v7 != 0;
      v9 = *(a1 + 217);
      if (v9 != v8)
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = CSIBOOLAsString(v9);
          v12 = CSIBOOLAsString(v7 != 0);
          *buf = 136315394;
          v15 = v11;
          v16 = 2080;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I WoW support changed from %s to %s", buf, 0x16u);
        }

        *(a1 + 217) = v8;
        sub_100083E9C(&event::data::wakeOnWifiChanged, v7 != 0);
      }

      return sub_10000A1EC(&v13);
    }
  }

  return result;
}

void sub_10149C0FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_10149C11C(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149C230;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149C214(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149C230(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 192))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v4 = *v4;
      }

      *buf = 136446210;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WoW already enabled. requested by: '%{public}s'", buf, 0xCu);
    }

    return;
  }

  if (qword_101FCAC18 != -1)
  {
    dispatch_once(&qword_101FCAC18, &stru_101F407E0);
  }

  if (byte_101FCAC12 == 1 && !*(v2 + 184))
  {
    v5 = objc_alloc_init(CWFInterface);
    v6 = *(v2 + 184);
    *(v2 + 184) = v5;

    v7 = *(v2 + 184);
    if (v7)
    {
      [v7 resume];
    }

    else
    {
      v8 = *(v2 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create CWFInterface", buf, 2u);
      }
    }
  }

  if (*(v2 + 184))
  {
    v9 = [CWFActivity activityWithType:4 reason:@"CTWiFiManager"];
    v10 = *(v2 + 184);
    v20 = 0;
    v11 = [v10 beginActivity:v9 error:&v20];
    v12 = v20;
    if (v11)
    {
      objc_storeStrong((v2 + 192), v9);
      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 40);
        if (*(a1 + 63) < 0)
        {
          v14 = *v14;
        }

        *buf = 136446210;
        v22 = v14;
        v15 = "#I WoW enabled successfully for '%{public}s'";
        v16 = v13;
        v17 = 12;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else
    {
      v18 = *(v2 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = (a1 + 40);
        if (*(a1 + 63) < 0)
        {
          v19 = *v19;
        }

        *buf = 136446466;
        v22 = v19;
        v23 = 2112;
        v24 = v12;
        v15 = "#I Failed to enable WoW for '%{public}s'. Error: %@";
        v16 = v18;
        v17 = 22;
        goto LABEL_24;
      }
    }
  }
}

void sub_10149C4E0(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v7 = *(a2 + 2);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10149C5F4;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v7;
  }

  sub_10149F148((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10149C5D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10149C5F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = a1 + 40;
  if (*(v2 + 192))
  {
    [*(v2 + 184) endActivity:?];
    v4 = *(v2 + 192);
    *(v2 + 192) = 0;

    v5 = *(v2 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(a1 + 63) >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *(a1 + 40);
    }

    v9 = 136446210;
    v10 = v6;
    v7 = "#I WoW disabled successfully for '%{public}s'";
  }

  else
  {
    v5 = *(v2 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(a1 + 63) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = 136446210;
    v10 = v8;
    v7 = "#I WoW already disabled. requested by: '%{public}s'";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
}

void sub_10149C714(uint64_t a1@<X0>, unsigned int a2@<W2>, void *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  sub_10149C98C(&v4, a1, a2);
  if (v4)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10149C904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  shared_weak_owners = v11[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_100004A34(shared_weak_owners);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v14);
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_10149C98C(uint64_t **a1, uint64_t a2, unsigned int a3)
{
  std::mutex::lock((a2 + 80));
  v6 = *(a2 + 152);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (v6 <= a3)
    {
      v8 = a3 % *(a2 + 152);
    }
  }

  else
  {
    v8 = (v6 - 1) & a3;
  }

  v9 = *(*(a2 + 144) + 8 * v8);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = *v9;
  if (!v10)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 16) != a3)
  {
    goto LABEL_16;
  }

  v12 = v10[4];
  if (!v12)
  {
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_18;
  }

  v13 = v10[3];
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *a1 = 0;
  v14 = std::__shared_weak_count::lock(v12);
  a1[1] = v14;
  if (!v14 || (*a1 = v13) == 0)
  {
LABEL_18:
    WiFiManagerClientCreate();
    operator new();
  }

  std::__shared_weak_count::__release_weak(v12);
  std::mutex::unlock((a2 + 80));
}

void sub_10149D0B0()
{
  __cxa_end_catch();
  if (v0)
  {
    JUMPOUT(0x10149D0D8);
  }

  JUMPOUT(0x10149D0E0);
}

void sub_10149D0FC(uint64_t a1, Registry **a2)
{
  ServiceMap = Registry::getServiceMap(*a2);
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
  v13[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v13);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  PersonalityIdFromSlotId();
  (*(*v11 + 192))(&v15, v11, v13);
  *a1 = *v19;
  *(a1 + 16) = v20;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
    if (v12)
    {
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  sub_100004A34(v10);
}

void sub_10149D2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149D2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v5 = *(a3 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a3 + 8);
    }

    if (v5)
    {
      std::operator+<char>();
      v6 = std::string::append(&v8, ") ", 2uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v10 = v6->__r_.__value_.__r.__words[2];
      *v9 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_10000501C(v9, "");
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_10149D4E4;
    v11[3] = &unk_101F40788;
    v11[4] = a1;
    if (SHIBYTE(v10) < 0)
    {
      sub_100005F2C(&__p, v9[0], v9[1]);
    }

    else
    {
      __p = *v9;
      v13 = v10;
    }

    sub_1000DEB68(v14, a2);
    sub_10149F148((a1 + 8), v11);
    sub_1000DC854(v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_10149D494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10149D4E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 264) = 0;
  v5 = 0;
  v6 = 0;
  sub_10149C98C(&v5, v2, 0);
  if (v5)
  {
    operator new();
  }

  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    buf = 136446210;
    *buf_4 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N %{public}s: Could not obtain WiFiManagerClient", &buf, 0xCu);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}