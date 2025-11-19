uint64_t *sub_1015D3FEC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down CellBroadcastConfig", buf, 2u);
  }

  NotifySubscription::cancel((v2 + 104));
  ctu::RestModule::disconnect((v2 + 544));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1015D4078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1015D40A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = sub_1015C6100(*v3, v5);
  theDict = v6;
  if (!v6)
  {
    *a2 = 0;
    return sub_10001021C(&theDict);
  }

  Count = CFDictionaryGetCount(v6);
  keys = 0;
  v40 = 0;
  v41 = 0;
  sub_1002C40F0(&keys, Count);
  values = 0;
  v37 = 0;
  v38 = 0;
  *buf = 0;
  sub_1002C40F0(&values, Count);
  CFDictionaryGetKeysAndValues(theDict, keys, values);
  v32 = v5;
  v8 = sub_1015C6210(v4);
  value = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      v10 = keys[i];
      if (v10)
      {
        v11 = CFGetTypeID(keys[i]);
        if (v11 == CFStringGetTypeID())
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      MutableCopy = 0;
      v13 = values[i];
      if (v13)
      {
        v14 = CFGetTypeID(values[i]);
        if (v14 == CFDictionaryGetTypeID())
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v15);
      v16 = CFDictionaryGetValue(MutableCopy, @"UseMMI");
      v17 = v16;
      buf[0] = 0;
      if (v16)
      {
        v18 = CFGetTypeID(v16);
        if (v18 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(buf, v17, v19);
        }
      }

      if (buf[0] == 1)
      {
        if ((v8 & 1) == 0)
        {
          v20 = *(v4 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Alert type removed from notification: [%{public}@]", buf, 0xCu);
          }

          goto LABEL_21;
        }

        CFDictionarySetValue(MutableCopy, @"UserConfigurable", kCFBooleanTrue);
      }

      CFDictionaryRemoveValue(MutableCopy, @"UseMMI");
      CFDictionarySetValue(value, v12, MutableCopy);
LABEL_21:
      sub_1000296E0(&MutableCopy);
    }
  }

  MutableCopy = 0;
  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(MutableCopy, @"AlertTypes", value);
  v33 = 0;
  sub_1015C5B00(buf, *(v4 + 368), v32, @"SwitchGroupTitle", 0);
  sub_100060DE8(&v33, buf);
  sub_10000A1EC(buf);
  if (v33)
  {
    CFDictionarySetValue(MutableCopy, @"SwitchGroupTitle", v33);
  }

  ServiceMap = Registry::getServiceMap(*(v4 + 240));
  v22 = ServiceMap;
  if (v23 < 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(ServiceMap);
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
    goto LABEL_35;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
LABEL_35:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    goto LABEL_36;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
LABEL_36:
  (*(*v29 + 56))(v29, kCellBroadcastLocalizationTable, MutableCopy, 1);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  sub_100005978(&v33);
  sub_1000296E0(&MutableCopy);
  sub_1000296E0(&value);
  if (values)
  {
    v37 = values;
    operator delete(values);
  }

  if (keys)
  {
    v40 = keys;
    operator delete(keys);
  }

  return sub_10001021C(&theDict);
}

void sub_1015D44F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, const void *a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, const void *a24)
{
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  sub_1000296E0(&a17);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  sub_10001021C(&a24);
  _Unwind_Resume(a1);
}

const void **sub_1015D45B8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

const void **sub_1015D4630(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

uint64_t sub_1015D46BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  *v3 = 0;
  subscriber::makeSimSlotRange();
  v4 = v7;
  if (v7 == v8)
  {
    goto LABEL_12;
  }

  do
  {
    if (v9(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v8);
  if (v4 == v8)
  {
LABEL_12:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (sub_1015C683C(v2, *v4, v3))
      {
        v5 = 1;
        if (*v3)
        {
          break;
        }
      }

      do
      {
        ++v4;
      }

      while (v4 != v8 && (v9(*v4) & 1) == 0);
    }

    while (v4 != v8);
  }

  return v5 & 1;
}

uint64_t sub_1015D4798(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v14 = *(v1 + 8);
  subscriber::makeSimSlotRange();
  v3 = v16;
  if (v16 == v17)
  {
    goto LABEL_24;
  }

  do
  {
    if (v18(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v17);
  if (v3 == v17)
  {
LABEL_24:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = &kCFBooleanTrue;
    if (!v14)
    {
      v5 = &kCFBooleanFalse;
    }

    v6 = *v5;
    v15 = kCommCenterSharedSettingsBundleId;
    do
    {
      v7 = (*(**(v2 + 48) + 16))(*(v2 + 48), *v3);
      v20 = 0;
      v21 = 0;
      Registry::getMobileHelper(&v20, *(v2 + 240));
      if (v20)
      {
        v8 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CSIBOOLAsString(v14);
          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Saving the auto read out preference: %s to the persistent store", buf, 0xCu);
        }

        *buf = 0;
        sub_100045C8C(buf);
        v19 = v6;
        *buf = 0;
        sub_100045C8C(buf);
        v10 = (*(*v20 + 24))(v20, v15, @"AutoReadOutPref", v6);
        if ((v10 & 1) == 0)
        {
          v11 = *v7;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to save auto read out preferences", buf, 2u);
          }
        }

        sub_100045C8C(&v19);
      }

      else
      {
        v12 = *(v2 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Mobile helper interface is absent", buf, 2u);
        }

        v10 = 0;
      }

      if (v21)
      {
        sub_100004A34(v21);
      }

      do
      {
        ++v3;
      }

      while (v3 != v17 && (v18(*v3) & 1) == 0);
      v4 |= v10;
    }

    while (v3 != v17);
  }

  return v4 & 1;
}

void sub_1015D4A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1015D4AA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  sub_100010024(&theDict, (v3 + 8));
  *v60 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = *v60;
    *v60 = Mutable;
    *buf = v6;
    sub_1000296E0(buf);
  }

  if (!theDict)
  {
    v15 = *(v4 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Empty settings dict", buf, 2u);
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, @"AlertType");
  v8 = Value;
  if (!Value || (v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
  {
    v14 = *(v4 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Empty alert name", buf, 2u);
    }

LABEL_13:
    sub_100010180(a2, v60);
    goto LABEL_75;
  }

  v59 = 0;
  v67 = 0;
  sub_1015C78A0(&v67, v4, v8, @"EnableAlwaysDeliverByDefault");
  if (v67)
  {
    v66 = 0;
    v10 = CFDictionaryGetValue(v67, @"EnableAlwaysDeliverByDefault");
    v11 = v10;
    if (v10)
    {
      v12 = CFGetTypeID(v10);
      if (v12 == CFBooleanGetTypeID())
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v66 = v13;
    v63 = 0;
    v64 = 0;
    Registry::getMobileHelper(&v63, *(v4 + 240));
    v17 = v63;
    if (v63)
    {
      cf = 0;
      v62 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v8, @"AlwaysDeliverPref");
      (*(*v17 + 16))(buf, v17, kCommCenterSharedSettingsBundleId, v62);
      sub_10002FE1C(&cf, buf);
      sub_10000A1EC(buf);
      sub_100005978(&v62);
      v18 = cf;
      if (cf)
      {
        v59 = cf;
        CFRetain(cf);
        v19 = *(v4 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOBYTE(v62) = 0;
          ctu::cf::assign(&v62, v18, v20);
          v21 = "disabled";
          if (v62)
          {
            v21 = "enable";
          }

          *buf = 138543618;
          *&buf[4] = v8;
          v69 = 2080;
          v70 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Custom preference read for %{public}@ - [Always Deliver: %s]", buf, 0x16u);
        }
      }

      else
      {
        v23 = *(v4 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOBYTE(v62) = 0;
          ctu::cf::assign(&v62, v66, v24);
          v25 = "disabled";
          if (v62)
          {
            v25 = "enable";
          }

          *buf = 138543618;
          *&buf[4] = v8;
          v69 = 2080;
          v70 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Custom preference read from bundle for %{public}@ - [Always Deliver: %s]", buf, 0x16u);
        }

        v59 = v66;
        v66 = 0;
      }

      sub_100045C8C(&cf);
    }

    else
    {
      v22 = *(v4 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to get MobileHelper using bundle config for Always deliver", buf, 2u);
      }

      v59 = v66;
      v66 = 0;
    }

    if (v64)
    {
      sub_100004A34(v64);
    }

    sub_100045C8C(&v66);
  }

  else
  {
    v16 = *(v4 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v8;
      v69 = 2112;
      v70 = @"EnableAlwaysDeliverByDefault";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Missing key for %{public}@ - %@", buf, 0x16u);
    }

    v59 = 0;
  }

  sub_10001021C(&v67);
  if (v59)
  {
    sub_1002E0298(*v60, @"AlwaysDeliverPref", v59);
  }

  v58 = 0;
  *buf = 0;
  sub_100045C8C(buf);
  v67 = kCFBooleanFalse;
  *buf = 0;
  sub_100045C8C(buf);
  v66 = 0;
  sub_1015C78A0(&v66, v4, v8, @"EnableEnhancedDelivery");
  if (!v66)
  {
    v45 = *(v4 + 40);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *buf = 0;
    v46 = "Missing bundle dict";
    v47 = v45;
    v48 = 2;
LABEL_68:
    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
    goto LABEL_71;
  }

  v26 = CFDictionaryGetValue(v66, @"EnableEnhancedDelivery");
  v27 = v26;
  buf[0] = 0;
  if (v26)
  {
    v28 = CFGetTypeID(v26);
    if (v28 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v27, v29);
    }
  }

  if ((buf[0] & 1) == 0)
  {
    v49 = *(v4 + 40);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *buf = 138412290;
    *&buf[4] = @"EnableAlwaysDeliverByDefault";
    v46 = "Feature disabled from bundle: %@";
    goto LABEL_67;
  }

  v30 = CFDictionaryGetValue(v66, @"AlertType");
  v31 = v30;
  if (!v30 || (v32 = CFGetTypeID(v30), v32 != CFDictionaryGetTypeID()))
  {
    v49 = *(v4 + 40);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *buf = 138412290;
    *&buf[4] = @"AlertType";
    v46 = "Missing bundle config: EnhancedDelivery.%@";
LABEL_67:
    v47 = v49;
    v48 = 12;
    goto LABEL_68;
  }

  v33 = CFDictionaryGetValue(v31, @"UserConfigurable");
  v34 = v33;
  buf[0] = 0;
  if (v33)
  {
    v35 = CFGetTypeID(v33);
    if (v35 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v34, v36);
    }
  }

  if (buf[0])
  {
    cf = 0;
    v37 = CFDictionaryGetValue(v31, @"EnabledByDefault");
    v38 = v37;
    if (v37 && (v39 = CFGetTypeID(v37), v39 == CFBooleanGetTypeID()))
    {
      cf = v38;
      CFRetain(v38);
      if (cf)
      {
        v63 = 0;
        v64 = 0;
        Registry::getMobileHelper(&v63, *(v4 + 240));
        v40 = v63;
        if (v63)
        {
          v62 = 0;
          v61 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v8, @"EnhancedDeliveryPref");
          (*(*v40 + 16))(buf, v40, kCommCenterSharedSettingsBundleId, v61);
          sub_10002FE1C(&v62, buf);
          sub_10000A1EC(buf);
          sub_100005978(&v61);
          v41 = v62;
          if (v62)
          {
            v58 = v62;
            CFRetain(v62);
            v42 = *(v4 + 40);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              LOBYTE(v61) = 0;
              ctu::cf::assign(&v61, v41, v43);
              v44 = "disabled";
              if (v61)
              {
                v44 = "enable";
              }

              *buf = 138543618;
              *&buf[4] = v8;
              v69 = 2080;
              v70 = v44;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Custom preference read for %{public}@ - [Enhanced delivery: %s]", buf, 0x16u);
            }
          }

          else
          {
            v54 = *(v4 + 40);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              LOBYTE(v61) = 0;
              ctu::cf::assign(&v61, cf, v55);
              v56 = "disabled";
              if (v61)
              {
                v56 = "enable";
              }

              *buf = 138543618;
              *&buf[4] = v8;
              v69 = 2080;
              v70 = v56;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Custom preference read from bundle for %{public}@ - [Enhanced delivery: %s]", buf, 0x16u);
            }

            v58 = cf;
            cf = 0;
          }

          sub_100045C8C(&v62);
        }

        else
        {
          v53 = *(v4 + 40);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to get MobileHelper using bundle config for enhanced delivery", buf, 2u);
          }

          v58 = v67;
          v67 = 0;
        }

        if (v64)
        {
          sub_100004A34(v64);
        }

LABEL_80:
        sub_100045C8C(&cf);
        goto LABEL_72;
      }
    }

    else
    {
      cf = 0;
    }

    v52 = *(v4 + 40);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"EnabledByDefault";
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Missing bundle config: EnhancedDelivery.%@", buf, 0xCu);
    }

    v58 = v67;
    v67 = 0;
    goto LABEL_80;
  }

  v50 = *(v4 + 40);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Enhanced delivery not user configurable", buf, 2u);
  }

LABEL_71:
  v58 = v67;
  v67 = 0;
LABEL_72:
  sub_10001021C(&v66);
  sub_100045C8C(&v67);
  if (v58)
  {
    sub_1002E0298(*v60, @"EnhancedDeliveryPref", v58);
  }

  sub_100010180(a2, v60);
  sub_100045C8C(&v58);
  sub_100045C8C(&v59);
LABEL_75:
  sub_1000296E0(v60);
  return sub_10001021C(&theDict);
}

void sub_1015D54A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va6, a4);
  va_start(va5, a4);
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  v12 = va_arg(va3, void);
  va_copy(va4, va3);
  v13 = va_arg(va4, const void *);
  v15 = va_arg(va4, void);
  v16 = va_arg(va4, std::__shared_weak_count *);
  va_copy(va5, va4);
  v17 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v19 = va_arg(va6, const void *);
  sub_100045C8C(va3);
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100045C8C(va4);
  sub_10001021C(va5);
  sub_100045C8C(va6);
  sub_100045C8C(va1);
  sub_1000296E0(va2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D5600(uint64_t a1)
{
  v1 = **(a1 + 40);
  subscriber::makeSimSlotRange();
  v2 = *v36;
  v3 = v37;
  if (*v36 != v37)
  {
    v4 = v38;
    do
    {
      if (v38(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v37);
    v5 = v37;
    if (v2 != v37)
    {
      v26 = v37;
      v27 = v1;
      while (1)
      {
        v6 = *v2;
        theDict = 0;
        sub_1015C5A74(&keys, *(v1 + 368), v6);
        sub_100010180(&theDict, &keys);
        sub_10000A1EC(&keys);
        if (!theDict)
        {
          goto LABEL_21;
        }

        v34 = 0;
        keys = CFDictionaryGetValue(theDict, @"AlertConfigurations");
        sub_100010180(&v34, &keys);
        if (!v34)
        {
          break;
        }

        Count = CFDictionaryGetCount(v34);
        keys = 0;
        v32 = 0;
        v33 = 0;
        values = 0;
        sub_1002C40F0(&keys, Count);
        values = 0;
        v29 = 0;
        v30 = 0;
        *buf = 0;
        sub_1002C40F0(&values, Count);
        CFDictionaryGetKeysAndValues(v34, keys, values);
        if (Count < 1)
        {
          v9 = 0;
        }

        else
        {
          v8 = 0;
          v9 = 1;
          while (1)
          {
            v10 = values[v8];
            if (v10)
            {
              v11 = CFGetTypeID(values[v8]);
              v12 = v11 == CFDictionaryGetTypeID() ? v10 : 0;
            }

            else
            {
              v12 = 0;
            }

            Value = CFDictionaryGetValue(v12, @"OverrideAccessibilityVibrationSetting");
            v14 = Value;
            if (Value)
            {
              v15 = CFGetTypeID(Value);
              if (v15 == CFBooleanGetTypeID())
              {
                break;
              }
            }

            v9 = ++v8 < Count;
            if (Count == v8)
            {
              v5 = v26;
              goto LABEL_25;
            }
          }

          buf[0] = 0;
          ctu::cf::assign(buf, v14, v16);
          v17 = buf[0];
          v18 = *(v27 + 40);
          v5 = v26;
          v25 = buf[0];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = CSIBOOLAsString(v17);
            v20 = subscriber::asString();
            *buf = 136315394;
            *&buf[4] = v19;
            v40 = 2080;
            v41 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Override accessibility vibration setting %s [slot:%s]", buf, 0x16u);
          }
        }

LABEL_25:
        if (values)
        {
          v29 = values;
          operator delete(values);
        }

        if (keys)
        {
          v32 = keys;
          operator delete(keys);
        }

        sub_10001021C(&v34);
        sub_10001021C(&theDict);
        if (v9)
        {
          v23 = v25;
          return v23 & 1;
        }

        v1 = v27;
        do
        {
LABEL_31:
          ++v2;
        }

        while (v2 != v3 && (v4(*v2) & 1) == 0);
        if (v2 == v5)
        {
          goto LABEL_34;
        }
      }

      sub_10001021C(&v34);
LABEL_21:
      sub_10001021C(&theDict);
      goto LABEL_31;
    }
  }

LABEL_34:
  v21 = *(v1 + 40);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  v23 = 0;
  if (v22)
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Override accessibility vibration setting: false", v36, 2u);
    v23 = 0;
  }

  return v23 & 1;
}

void sub_1015D5950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_10001021C(&a21);
  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D59CC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  sub_100010024(&theDict, v1[1]);
  if (theDict)
  {
    v42 = 0;
    *buf = CFDictionaryGetValue(theDict, @"AlertType");
    sub_100060DE8(&v42, buf);
    if (!v42)
    {
      v9 = *(v2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Empty alert name", buf, 2u);
      }

      v8 = 0;
      goto LABEL_60;
    }

    v40 = 0;
    v41 = 0;
    Registry::getMobileHelper(&v40, *(v2 + 240));
    if (!v40)
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get MobileHelper", buf, 2u);
      }

      v8 = 0;
      goto LABEL_58;
    }

    Value = CFDictionaryGetValue(theDict, @"AlwaysDeliverPref");
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFBooleanGetTypeID())
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = CFDictionaryGetValue(theDict, @"EnhancedDeliveryPref");
    v12 = v11;
    if (v11)
    {
      v13 = CFGetTypeID(v11);
      if (v13 != CFBooleanGetTypeID())
      {
        v12 = 0;
      }

      v39 = 0;
      if (!v6)
      {
        if (v12)
        {
          v14 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v42, @"EnhancedDeliveryPref");
          *buf = v39;
          v39 = v14;
          v46 = 0;
          sub_100005978(buf);
          sub_100005978(&v46);
          v46 = 0;
          v15 = kCommCenterSharedSettingsBundleId;
          (*(*v40 + 16))(buf);
          sub_10002FE1C(&v46, buf);
          sub_10000A1EC(buf);
          if (((*(*v40 + 24))(v40, v15, v39, v12) & 1) == 0)
          {
            v28 = *(v2 + 40);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to store custom preference", buf, 2u);
            }

            sub_100045C8C(&v46);
            goto LABEL_56;
          }

          if (v46)
          {
            if (v46 == v12)
            {
LABEL_44:
              v30 = *(v2 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v42;
                v33 = v39;
                v43 = 0;
                ctu::cf::assign(&v43, v12, v31);
                *buf = 138543874;
                if (v43)
                {
                  v34 = "enabled";
                }

                else
                {
                  v34 = "disabled";
                }

                *&buf[4] = v32;
                *&buf[12] = 2112;
                *&buf[14] = v33;
                *&buf[22] = 2080;
                v45 = v34;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Stored custom preference for %{public}@ - [%@: %s]", buf, 0x20u);
              }

              sub_100045C8C(&v46);
LABEL_50:
              if (v39)
              {
                v35 = *(v2 + 192);
                if (v35)
                {
                  v46 = v39;
                  memset(buf, 0, sizeof(buf));
                  sub_10005B328(buf, &v46, &v47, 1uLL);
                  (*(*v35 + 16))(v35, v15, buf);
                  if (*buf)
                  {
                    *&buf[8] = *buf;
                    operator delete(*buf);
                  }
                }

                v8 = 1;
                goto LABEL_57;
              }

              goto LABEL_55;
            }

            v16 = *(v2 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v17 = "#I Dispatching Darwin notification for Enhanced Delivery preference change";
LABEL_42:
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
            }
          }

          else
          {
            v16 = *(v2 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v17 = "#I Dispatching Darwin notification for Enhanced Delivery initial change";
              goto LABEL_42;
            }
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCTSMSCellBroadcastConfigChangedNotification", 0, 0, 0);
          goto LABEL_44;
        }

LABEL_55:
        v36 = *(v2 + 40);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        *buf = 138543362;
        *&buf[4] = v42;
        v25 = "No valid custom preference for %{public}@";
        v26 = v36;
        v27 = 12;
        goto LABEL_63;
      }
    }

    else
    {
      v39 = 0;
      if (!v6)
      {
        goto LABEL_55;
      }
    }

    v18 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v42, @"AlwaysDeliverPref");
    *buf = v39;
    v39 = v18;
    v46 = 0;
    sub_100005978(buf);
    sub_100005978(&v46);
    v15 = kCommCenterSharedSettingsBundleId;
    v19 = (*(*v40 + 24))(v40, kCommCenterSharedSettingsBundleId, v39, v6);
    v20 = *(v2 + 40);
    if ((v19 & 1) == 0)
    {
      if (!os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
LABEL_56:
        v8 = 0;
LABEL_57:
        sub_100005978(&v39);
LABEL_58:
        if (v41)
        {
          sub_100004A34(v41);
        }

LABEL_60:
        sub_100005978(&v42);
        goto LABEL_61;
      }

      *buf = 0;
      v25 = "Failed to store custom preference";
      v26 = v20;
      v27 = 2;
LABEL_63:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      goto LABEL_56;
    }

    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v22 = v42;
      v23 = v39;
      LOBYTE(v46) = 0;
      ctu::cf::assign(&v46, v6, v21);
      *buf = 138543874;
      if (v46)
      {
        v24 = "enabled";
      }

      else
      {
        v24 = "disabled";
      }

      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 2080;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Stored custom preference for %{public}@ - [%@: %s]", buf, 0x20u);
    }

    goto LABEL_50;
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Empty settings dict", buf, 2u);
  }

  v8 = 0;
LABEL_61:
  sub_10001021C(&theDict);
  return v8;
}

void sub_1015D6080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16, const void *a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_100045C8C((v20 - 64));
  sub_100005978(&a14);
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100005978(&a17);
  sub_10001021C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D611C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v3);
  *v4 = 0;
  v6 = sub_1015C6100(v2, v3);
  theDict = v6;
  if (v6)
  {
    Count = CFDictionaryGetCount(v6);
    v20 = 0;
    keys = 0;
    v18 = 0;
    v19 = 0;
    sub_1002C40F0(&keys, Count);
    values = 0;
    v15 = 0;
    v16 = 0;
    sub_1002C40F0(&values, Count);
    CFDictionaryGetKeysAndValues(theDict, keys, values);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v9 = keys[i];
        if (v9)
        {
          v10 = CFGetTypeID(keys[i]);
          if (v10 == CFStringGetTypeID())
          {
            v11 = v9;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        if (CellBroadcastConfig::getCellBroadcastSettingForAlertType_sync(v2, v3, v11, &v20))
        {
          *v4 |= v20;
        }
      }
    }

    if (values)
    {
      v15 = values;
      operator delete(values);
    }

    if (keys)
    {
      v18 = keys;
      operator delete(keys);
    }
  }

  else
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(keys) = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No Alert types found", &keys, 2u);
    }
  }

  sub_10001021C(&theDict);
  return 1;
}

void sub_1015D62DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_10001021C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D6340(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = **v1;
  v5 = *(v2 + 22);
  v4 = *(v2 + 23);
  v12 = v5;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v7 + 3);
  v11[0] = *v7;
  *(v11 + 12) = v8;
  v9 = sub_100DAB070(v3, &v12, v6, v11, *v1[4]);
  if (v13)
  {
    sub_100004A34(v13);
  }

  return v9;
}

void sub_1015D63C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015D641C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1);
  v3 = *v1;
  v16 = 0;
  v17 = 0;
  Registry::getMobileHelper(&v16, *(v2 + 240));
  if (v16)
  {
    v4 = &kCFBooleanTrue;
    if (!v3)
    {
      v4 = &kCFBooleanFalse;
    }

    v5 = *v4;
    *buf = 0;
    sub_100045C8C(buf);
    v15 = v5;
    *buf = 0;
    sub_100045C8C(buf);
    v6 = (*(*v16 + 24))(v16, kCommCenterSharedSettingsBundleId, @"CellBroadcastMMIPref", v5);
    v7 = *(v2 + 40);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = CSIBOOLAsString(v3);
        *buf = 136315138;
        *&buf[4] = v9;
        v10 = "#I MMI preference saved successfully value:[%s]";
        v11 = v7;
        v12 = 12;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }

    else if (v8)
    {
      *buf = 0;
      v10 = "#I MMI preference save error";
      v11 = v7;
      v12 = 2;
      goto LABEL_12;
    }

    sub_100045C8C(&v15);
    goto LABEL_14;
  }

  v13 = *(v2 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MobileHelperInterface is absent", buf, 2u);
  }

  v6 = 0;
LABEL_14:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v6;
}

void sub_1015D65F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100045C8C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1015D6620(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 16);
  v7[0] = *(v1 + 8);
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1015CA3D4(v2, v7);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10032EAB4(&v6);
  return sub_1000049E0(&v5);
}

void sub_1015D668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10032EAB4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1015D66B4(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1015D7070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, xpc_object_t object, char a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t *sub_1015D7370(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

__n128 sub_1015D743C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F540D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1015D7470(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(*(**(*(a1 + 8) + 48) + 16))(*(*(a1 + 8) + 48), *(a1 + 16));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "is not";
    if (v2)
    {
      v4 = "is";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband online assertion %s granted", &v5, 0xCu);
  }
}

uint64_t sub_1015D7554(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015D75B4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1015D75F0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1015D7648(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v3);
  result = sub_1015C635C(v2);
  if (result)
  {
    *type = 0;
    sub_1015C5B00(buf, v2[46], v3, @"DataThrottleOnMessageReceive", 0);
    sub_10002FE1C(type, buf);
    sub_10000A1EC(buf);
    if (*type)
    {
      buf[0] = 0;
      ctu::cf::assign(buf, *type, v8);
      *v5 = buf[0];
      *buf = 0;
      sub_1015C5B00(&v11, v2[46], v3, @"DataThrottleTimeout", 0);
      sub_10010B240(buf, &v11);
      sub_10000A1EC(&v11);
      if (*buf)
      {
        LODWORD(v11) = 0;
        ctu::cf::assign(&v11, *buf, v9);
        *v4 = v11;
      }

      sub_100029A48(buf);
    }

    else
    {
      v10 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No throttling key specified, assuming not enabled", buf, 2u);
      }

      *v5 = 0;
    }

    return sub_100045C8C(type);
  }

  else
  {
    *v5 = 0;
  }

  return result;
}

void sub_1015D77C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_100045C8C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D7808(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[2];
  v3 = *(*v1 + 368);
  v8 = 0;
  sub_1015C5B00(&v7, v3, v2, @"IgnoreInvalidLengthPage", kCFBooleanFalse);
  sub_10002FE1C(&v8, &v7);
  sub_10000A1EC(&v7);
  LOBYTE(v7) = 0;
  ctu::cf::assign(&v7, v8, v4);
  v5 = v7;
  sub_100045C8C(&v8);
  return v5;
}

void sub_1015D7890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void *sub_1015D78B4(void *a1)
{
  *a1 = off_101F54230;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015D7900(void *a1)
{
  *a1 = off_101F54230;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1015D79E0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F54230;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015D7A20(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015D7A30(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1015D7A70(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v1 + 8));
  operator new();
}

uint64_t sub_1015D7B64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015D7BB0(void **a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = v1[2];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*v1)
      {
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v3[28] - v3[27];
          v8 = 0x8E38E38E38E38E39 * (v7 >> 4);
          if (v7 == 144)
          {
            v9 = "";
          }

          else
          {
            v9 = "s";
          }

          *buf = 134218242;
          v16 = v8;
          v17 = 2080;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting %lu metric%s now.", buf, 0x16u);
        }

        v10 = v3[27];
        v11 = v3[28];
        if (v10 != v11)
        {
          do
          {
            sub_1015CFE18(v3, v10);
            v10 += 144;
          }

          while (v10 != v11);
          v10 = v3[27];
          v11 = v3[28];
        }

        while (v11 != v10)
        {
          v11 -= 144;
          sub_1015D1A58(v11);
        }

        v3[28] = v10;
      }

      sub_100004A34(v5);
    }
  }

  sub_100EE477C(&v14);
  return sub_1000049E0(&v13);
}

void sub_1015D7D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100EE477C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D7D3C()
{
  if (qword_101FCAE10 != -1)
  {
    dispatch_once(&qword_101FCAE10, &stru_101F542F0);
  }

  return qword_101FCAE08;
}

uint64_t sub_1015D7DBC()
{
  if (qword_101FCAE20 != -1)
  {
    dispatch_once(&qword_101FCAE20, &stru_101F54330);
  }

  return qword_101FCAE18;
}

uint64_t sub_1015D7EF8@<X0>(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  result = subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      result = v6(*v2);
      if (result)
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    if (v2 != v5)
    {
      sub_100DA38EC(&v3);
    }
  }

  return result;
}

void sub_1015D80AC(NetworkNameFactoryInterface *this)
{
  *this = off_101F543A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkNameFactoryInterface::~NetworkNameFactoryInterface(this);
}

void sub_1015D8108(NetworkNameFactoryInterface *this)
{
  *this = off_101F543A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkNameFactoryInterface::~NetworkNameFactoryInterface(this);

  operator delete();
}

void sub_1015D821C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_1015D8244(void *a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "pp.cb");
  sub_1015D8338(a1 + 1, a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101F543E0;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = 0;
  a1[9] = 0;
  a1[8] = a1 + 9;
  return a1;
}

void sub_1015D8314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CarrierBundleMatchProxyInterface::~CarrierBundleMatchProxyInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_1015D8338(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1015D83A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1015D83C4(uint64_t a1)
{
  *a1 = off_101F543E0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  if (v4 < 0)
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

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
LABEL_14:
    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (*(a1 + 80))
  {
    sub_100714E00(v14, a1 + 64);
    (*(*v10 + 88))(v10, v14);
    sub_10070C9CC(v14, v14[1]);
    if (v11)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100004A34(v9);
    goto LABEL_16;
  }

  v12 = *(a1 + 40);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_14;
  }

  *buf = 0;
  _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Empty matching results", buf, 2u);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_10070C9CC(a1 + 64, *(a1 + 72));
  v13 = *(a1 + 56);
  if (v13)
  {
    sub_100004A34(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CarrierBundleMatchProxyInterface::~CarrierBundleMatchProxyInterface(a1);
}

void sub_1015D8598(uint64_t a1)
{
  sub_1015D83C4(a1);

  operator delete();
}

void sub_1015D85D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100049564(&v6, a3);
  v7 = *(a3 + 200);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015D8880(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1015D8954);
  __cxa_rethrow();
}

void sub_1015D88C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015D8914(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015D8954(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015D8980(uint64_t a1)
{
  sub_10001021C((a1 + 224));
  sub_10001021C((a1 + 216));

  return sub_1000490A0(a1);
}

uint64_t *sub_1015D89C4(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 72);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(v1 + 8);
  v5 = *v1 + 72;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v5 == *v1 + 72 || v4 < *(v5 + 32))
  {
LABEL_8:
    ServiceMap = Registry::getServiceMap(*(v2 + 48));
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
    *buf = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
LABEL_14:
          v16 = *(v2 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get CarrierBundleInterface", buf, 2u);
          }

          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          goto LABEL_25;
        }

LABEL_18:
        v17 = *(v2 + 16);
        *buf = *(v2 + 8);
        if (v17)
        {
          *&buf[8] = std::__shared_weak_count::lock(v17);
          if (*&buf[8])
          {
            v23 = *(v1 + 8);
            sub_100049564(v24, v1 + 16);
            v24[200] = *(v1 + 216);
            v25 = 0;
            operator new();
          }
        }

        else
        {
          *&buf[8] = 0;
        }

        sub_100013CC4();
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

    goto LABEL_18;
  }

  v18 = *(v2 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Already have match result for %s", buf, 0xCu);
  }

LABEL_25:
  sub_1015D8DE8(&v21);
  return sub_1000049E0(&v20);
}

void sub_1015D8D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1010752D4(v13 - 104);
  sub_1015D8E38(&a11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_1015D8DE8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015D8DE8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000490A0(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1015D8E38(uint64_t a1)
{
  sub_1000490A0(a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_1015D8E70(void *a1)
{
  *a1 = off_101F54510;
  sub_1000490A0((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1015D8EC0(void *a1)
{
  *a1 = off_101F54510;
  sub_1000490A0((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1015D8FC0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D8FE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101F54510;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  result = sub_100049564(a2 + 32, a1 + 32);
  *(a2 + 232) = *(a1 + 232);
  return result;
}

void sub_1015D9054(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015D9074(void *a1)
{
  sub_1015D9374(a1 + 8);

  operator delete(a1);
}

void sub_1015D90B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100049564(v7, a1 + 32);
  v7[200] = *(a1 + 232);
  v7[208] = *a2;
  sub_100010024(&v8, (a2 + 8));
  sub_100010024(&v8 + 1, (a2 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015D930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015D9328(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54580))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015D9374(uint64_t a1)
{
  sub_1000490A0(a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t *sub_1015D93C0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  sub_100049564(&v10, v1 + 24);
  v11 = *(v1 + 224);
  v12 = *(v1 + 232);
  sub_100010024(&v13, (v1 + 240));
  sub_100010024(&v14, (v1 + 248));
  v3 = *(v2 + 72);
  if (!v3)
  {
LABEL_9:
    operator new();
  }

  v4 = *(v1 + 16);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v6 <= v4)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_9;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  sub_10001021C(&v14);
  sub_10001021C(&v13);
  sub_1000490A0(&v10);
  sub_1015D95E4(&v9);
  return sub_1000049E0(&v8);
}

void sub_1015D95B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_1015D8980(va2);
  sub_1015D95E4(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015D95E4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C((v1 + 248));
    sub_10001021C((v1 + 240));
    sub_1000490A0(v1 + 24);
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1015D9650@<X0>(_BYTE *a1@<X8>)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__p = 0u;
  v10 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = 0u;
  sub_10000C320(&v6);
  sub_10000C030(&v7);
  v2 = std::ostream::operator<<();
  sub_10000C030(v2);
  v3 = std::ostream::operator<<();
  sub_10000C030(v3);
  sub_100061574(&v6, a1);
  *&v7 = v4;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

ctu::OsLogLogger *sub_1015D9850(ctu::OsLogLogger *a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(a1, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  return a1;
}

BOOL sub_1015D98CC(os_log_t *a1, const char *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  ctu::TextConverter::TextConverter(v19);
  ctu::TextConverter::pushConversion();
  v4 = a2[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a2;
    a2 = *a2;
    v4 = *(v5 + 1);
  }

  ctu::TextConverter::setSource(v19, a2, v4);
  SourceAvailableCount = ctu::TextConverter::getSourceAvailableCount(v19);
  if (SourceAvailableCount)
  {
    if (ctu::TextConverter::getSourceAvailableCount(v19) > 3)
    {
      Code = ctu::TextConverter::nextCode(v19);
      v8 = ctu::TextConverter::nextCode(v19);
      v9 = ctu::TextConverter::nextCode(v19);
      v10 = ctu::TextConverter::nextCode(v19);
      v11 = v8 | (Code << 8);
      v12 = *a1;
      v13 = v10 | (v9 << 8);
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CSIBOOLAsString(0);
        buf = 67109634;
        *buf_4 = v11;
        *&buf_4[4] = 1024;
        *&buf_4[6] = v13;
        *v22 = 2080;
        *&v22[2] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Wham MessageId : %u Serial : %u combined: %s", &buf, 0x18u);
      }

      operator new();
    }

    v15 = *a1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      SourceCount = ctu::TextConverter::getSourceCount(v19);
      v18 = CSIBOOLAsString(0);
      buf = 134218242;
      *buf_4 = SourceCount;
      *&buf_4[8] = 2080;
      *v22 = v18;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to decode Active Alert tuple. Only %zu bytes left isCommon: %s", &buf, 0x16u);
    }
  }

  ctu::TextConverter::~TextConverter(v19);
  return SourceAvailableCount == 0;
}

void sub_1015D9BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::TextConverter::~TextConverter(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D9C40(os_log_t *a1, char *__s)
{
  v4 = strlen(__s);
  if (!v4)
  {
    v8 = *a1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Empty Wham data..", buf, 2u);
    }

    return 1;
  }

  v5 = v4;
  v31[0] = 0;
  v31[1] = 0;
  ctu::TextConverter::TextConverter(v31);
  memset(&__dst, 0, sizeof(__dst));
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  ctu::TextConverter::pushConversion();
  do
  {
    while (1)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__dst.__r_.__value_.__l.__size_ <= 2)
        {
          v9 = 1;
          goto LABEL_75;
        }

        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) <= 2u)
        {
          v9 = 1;
          goto LABEL_76;
        }

        p_dst = &__dst;
      }

      ctu::TextConverter::setSource(v31, p_dst, v5);
      Code = ctu::TextConverter::nextCode(v31);
      v12 = (8 * (Code & 0xF)) | (ctu::TextConverter::nextCode(v31) >> 5);
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size < v12)
      {
        v24 = *a1;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Not enough bytes left to resize. Decode failure.", buf, 2u);
        }

        goto LABEL_69;
      }

      if (ctu::TextConverter::getSourceAvailableCount(v31) < v12)
      {
        v25 = *a1;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          SourceAvailableCount = ctu::TextConverter::getSourceAvailableCount(v31);
          *buf = 134218240;
          *&buf[4] = SourceAvailableCount;
          *&buf[12] = 1024;
          *&buf[14] = v12;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "TLV parsing failed. %zu bytes available for parsing, but length indicates %u", buf, 0x12u);
        }

LABEL_69:
        v9 = 0;
        goto LABEL_71;
      }

      memset(&v29, 0, sizeof(v29));
      std::string::basic_string(&v29, &__dst, 4uLL, 2 * v12 - 4, buf);
      v14 = Code >> 4;
      v15 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "Unknown TLV";
        if ((v14 - 1) <= 3)
        {
          v16 = off_101F545E0[v14 - 1];
        }

        v17 = &v29;
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v29.__r_.__value_.__r.__words[0];
        }

        if (!v12)
        {
          v17 = "";
        }

        *buf = 136315650;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = v12;
        *&buf[18] = 2080;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Wham TLV [%s] of length [%u] : %s", buf, 0x1Cu);
      }

      if (v12)
      {
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v29;
        }

        switch(v14)
        {
          case 4:
            v19 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid TLV in Wham parsing.", buf, 2u);
            }

            v20 = 0;
            goto LABEL_51;
          case 2:
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              *buf = __p;
              goto LABEL_49;
            }

            break;
          case 1:
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              *buf = __p;
LABEL_49:
              v20 = sub_1015D98CC(a1, buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

LABEL_51:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (v20)
                {
LABEL_56:
                  std::string::erase(&__dst, 0, (2 * v12));
                  goto LABEL_57;
                }
              }

              else if (v20)
              {
                goto LABEL_56;
              }

              v22 = *a1;
              if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
              {
                v23 = "Unknown TLV";
                if ((v14 - 1) <= 3)
                {
                  v23 = off_101F545E0[v14 - 1];
                }

                *buf = 136315138;
                *&buf[4] = v23;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Wham TLV [%s] decode failure", buf, 0xCu);
              }

              goto LABEL_56;
            }

            break;
          default:
            v21 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unhandled TLV in Wham parsing.", buf, 2u);
            }

            v20 = 1;
            goto LABEL_51;
        }

        sub_100005F2C(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        goto LABEL_49;
      }

      v18 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Wham decoding complete", buf, 2u);
      }

LABEL_57:
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_70;
      }
    }

    operator delete(v29.__r_.__value_.__l.__data_);
  }

  while (v12);
LABEL_70:
  v9 = 1;
LABEL_71:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_75:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_76:
  ctu::TextConverter::~TextConverter(v31);
  return v9;
}

void sub_1015DA23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  ctu::TextConverter::~TextConverter(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_1015DA2D8(uint64_t a1)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  sub_10000C320(&v18);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  for (i = a1; v2 != v3; v2 += 2)
  {
    v5 = *v2;
    v4 = v2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      sub_10000C030(&v19);
      v6 = std::ostream::operator<<();
      sub_10000C030(v6);
      v7 = std::ostream::operator<<();
      v8 = sub_10000C030(v7);
      v9 = sub_10000C030(v8);
      v10 = CSIBOOLAsString(*(v5 + 4));
      strlen(v10);
      sub_10000C030(v9);
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  v11 = *a1;
  if (os_log_type_enabled(*i, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(&v18, __p);
    v12 = v17 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Wham: %s", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *&v19 = v13;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1015DA5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10068C9D8(va);
  _Unwind_Resume(a1);
}

void sub_1015DA628(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000210A8(a1, a2);
  }

  sub_1015DA664();
}

uint64_t sub_1015DA67C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_1015DA6B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1015DA628(result, a4);
  }

  return result;
}

void sub_1015DA71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1015DA73C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[3] = 1;
  v8 = a4;
  v7[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v9 = v4;
  }

  sub_1015DA67C(v7);
  return v4;
}

void sub_1015DA7E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F545A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015DB3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_10001021C(&a12);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DB584(void *a1, Registry *this)
{
  ServiceMap = Registry::getServiceMap(this);
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
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  *a1 = v11;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void sub_1015DC0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_10001021C(&a12);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DCC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, char a12, int a13, const void *a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  sub_10001021C(&a14);
  if (a27)
  {
    sub_100004A34(a27);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DD284(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1015DD6D4(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1015DDD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DE188(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1015DE48C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1015DEA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DF0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DF61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1015DFC8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1015DFD24(uint64_t a1)
{

  operator delete();
}

id sub_1015DFDD8(uint64_t a1, void *a2)
{
  *a2 = off_101F54610;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1015DFE28(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1015DFE7C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54680))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015DFEFC(uint64_t a1)
{

  operator delete();
}

id sub_1015DFFC4(uint64_t a1, void *a2)
{
  *a2 = off_101F546A0;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1015E001C(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1015E0058(id *a1)
{

  operator delete(a1);
}

void sub_1015E009C(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      [v5 getLogContext];
      v6 = *(&v12 + 1);
    }

    else
    {
      v6 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "device list:\n%@", &v12, 0xCu);
    }

    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      [v7 getLogContext];
      v8 = *(&v12 + 1);
    }

    else
    {
      v8 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device list is not ready yet", &v12, 2u);
    }

    v10 = *(a1 + 16);
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0, v12];
    (*(v10 + 16))(v10, 0, v11);
  }
}

uint64_t sub_1015E0254(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54700))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015E02D4(uint64_t a1)
{

  operator delete();
}

id sub_1015E039C(uint64_t a1, void *a2)
{
  *a2 = off_101F54720;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1015E03F4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1015E0430(id *a1)
{

  operator delete(a1);
}

void sub_1015E0474(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      [v5 getLogContext];
      v6 = *(&v12 + 1);
    }

    else
    {
      v6 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "device info:\n%@", &v12, 0xCu);
    }

    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      [v7 getLogContext];
      v8 = *(&v12 + 1);
    }

    else
    {
      v8 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device info is not ready yet", &v12, 2u);
    }

    v10 = *(a1 + 16);
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0, v12];
    (*(v10 + 16))(v10, 0, v11);
  }
}

uint64_t sub_1015E062C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54780))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015E0850(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1015E0958(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1015E0970(void *a1)
{
  *a1 = off_101F547A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1015E09CC(void *a1)
{
  *a1 = off_101F547A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_1015E0AF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0B90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F548E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0CC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0D64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015E0DE8(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2[1] = 0;
    a2 = *a2;
  }

  else
  {
    *(a2 + 23) = 0;
  }

  *a2 = 0;
  return 1;
}

uint64_t IMSCallCommandDriver::IMSCallCommandDriver(uint64_t a1, uint64_t a2, void *a3, NSObject **a4, uint64_t a5, uint64_t a6)
{
  object = *a4;
  *a4 = 0;
  CallCommandDriver::CallCommandDriver();
  v9 = object;
  if (object)
  {
    dispatch_release(object);
  }

  v13[0] = off_101E2B528;
  v13[1] = sub_1000A8594;
  v13[3] = v13;
  *(a1 + 120) = 0;
  if ((capabilities::ct::supportsGemini(v9) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 120))
  {
    operator new();
  }

  sub_1000A8744(v13);
  *a1 = off_101F54A60;
  *(a1 + 8) = off_101F54C78;
  *(a1 + 128) = 2;
  *(a1 + 136) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  sub_1000BA174(a1 + 192);
  *(a1 + 632) = 0;
  *(a1 + 634) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 656) = a1 + 664;
  *(a1 + 680) = 0;
  *(a1 + 688) = a1 + 688;
  *(a1 + 696) = a1 + 688;
  *(a1 + 704) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 712) = a1 + 720;
  *(a1 + 744) = 0u;
  *(a1 + 736) = a1 + 744;
  *(a1 + 760) = 0;
  sub_100AE91C4((a1 + 768), &rest::kDefaultBundles);
  *(a1 + 800) = 0u;
  *(a1 + 792) = a1 + 800;
  *(a1 + 816) = *a3;
  v10 = a3[1];
  *(a1 + 824) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 840) = 0uLL;
  *(a1 + 832) = a1 + 840;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0uLL;
  sub_100109304((a1 + 888), &rest::kDefaultRegistrationStatuses);
  return a1;
}

void sub_1015E120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000A8744(va);
  operator delete();
}

void sub_1015E1398(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1015E1388);
}

void sub_1015E13AC(uint64_t a1)
{
  *a1 = off_101F54A60;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101F54C78;
  sub_10006DCAC(a1 + 888, *(a1 + 896));
  v9 = (a1 + 864);
  sub_1000B2AF8(&v9);
  sub_10006DCAC(a1 + 832, *(a1 + 840));
  v3 = *(a1 + 824);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100077CD4(a1 + 792, *(a1 + 800));
  sub_10032D3A4(a1 + 768, *(a1 + 776));
  sub_1001A904C(a1 + 736, *(a1 + 744));
  sub_100009970(a1 + 712, *(a1 + 720));
  sub_1000FEFCC((a1 + 688));
  sub_100DE3E98(*(a1 + 664));
  v4 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1000BFE80(a1 + 192);
  v5 = *(a1 + 176);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CallCommandDriver::~CallCommandDriver(v2);
  IMSCallCommandDriverInterface::~IMSCallCommandDriverInterface(a1);
}

void sub_1015E152C(uint64_t a1)
{
  sub_1015E13AC(a1);

  operator delete();
}

void sub_1015E1564(uint64_t a1)
{
  sub_1015E13AC(a1 - 8);

  operator delete();
}

const void **sub_1015E15A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = (*(**(a1 + 120) + 16))(*(a1 + 120), *(a3 + 16));
  v12 = (*(**(a1 + 136) + 416))();
  if (v12)
  {
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Filling the optional emergency parameters", &buf, 2u);
    }

    if (a5)
    {
      sub_1015E2114(a1, a2, a5, a6, a3);
    }

    else
    {
      v14 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "StackConfig is NULL, cannot fill config with emergency params", &buf, 2u);
      }
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v16 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *&buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &buf);
  if (!v21)
  {
    std::mutex::unlock(v16);
    goto LABEL_16;
  }

  v22 = v21[3];
  v23 = v21[4];
  if (!v23)
  {
    std::mutex::unlock(v16);
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_16:
    v24 = 0;
    goto LABEL_32;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  if (!v22)
  {
    v24 = 0;
LABEL_31:
    sub_100004A34(v23);
    goto LABEL_32;
  }

LABEL_18:
  buf = 0uLL;
  *&v75 = 0;
  PersonalityIdFromSlotIdEx();
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  (*(*v22 + 40))(&__p, v22, &buf);
  if (__p.__r_.__value_.__r.__words[0])
  {
    cf.__r_.__value_.__r.__words[0] = 0;
    (*(*__p.__r_.__value_.__l.__data_ + 40))(&cf);
    v25 = cf.__r_.__value_.__r.__words[0];
    __str.__r_.__value_.__s.__data_[0] = 0;
    if (cf.__r_.__value_.__r.__words[0] && (v26 = CFGetTypeID(cf.__r_.__value_.__l.__data_), v26 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&__str, v25, v27);
      v24 = __str.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v24 = 0;
    }

    sub_10000A1EC(&cf.__r_.__value_.__l.__data_);
  }

  else
  {
    v28 = *(a1 + 48);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v62 = BYTE7(v75);
      if (SBYTE7(v75) < 0)
      {
        v62 = *(&buf + 1);
      }

      p_buf = &buf;
      if (SBYTE7(v75) < 0)
      {
        p_buf = buf;
      }

      if (v62)
      {
        v64 = p_buf;
      }

      else
      {
        v64 = "<invalid>";
      }

      LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
      *(cf.__r_.__value_.__r.__words + 4) = v64;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "IMS config not found for pid %s", &cf, 0xCu);
    }

    v24 = 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_100004A34(__p.__r_.__value_.__l.__size_);
  }

  if (SBYTE7(v75) < 0)
  {
    operator delete(buf);
  }

  if (v23)
  {
    goto LABEL_31;
  }

LABEL_32:
  v29 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    DWORD1(buf) = v12;
    WORD4(buf) = 1024;
    *(&buf + 10) = v24 & 1;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Setting the CLIR setting.. sendEmParams: %d ignoreRestrictionFlags: %d", &buf, 0xEu);
  }

  if ((v12 & v24 & 1) == 0)
  {
    v38 = CallCommandDriver::computeClirValue_sync((a1 + 8), a3);
    v39 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v40 = asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I CLIR setting evaluated to %s", &buf, 0xCu);
    }

    if ((v38 - 2) < 2)
    {
      (*(**a4 + 64))(*a4, 0, 0);
      v41 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Not setting the CLIR setting for call to be dialed", &buf, 2u);
      }
    }

    else if (v38)
    {
      if (v38 == 1)
      {
        (*(**a4 + 64))(*a4, 1, 1);
      }
    }

    else
    {
      (*(**a4 + 64))(*a4, 1, 0);
    }
  }

  v31 = *a4;
  v30 = a4[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = (*(**(a1 + 120) + 16))(*(a1 + 120), *(a3 + 16));
  v33 = *(a3 + 167);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(a3 + 152);
  }

  if (v33)
  {
    std::string::operator=((a2 + 8), (a3 + 144));
  }

  if (v31)
  {
    v34 = (*(**(a1 + 136) + 344))(*(a1 + 136), a3);
    v35 = *v32;
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v36)
      {
        LOWORD(buf) = 0;
        v37 = 2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode enabled", &buf, 2u);
      }

      else
      {
        v37 = 2;
      }
    }

    else
    {
      if (v36)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode disabled", &buf, 2u);
      }

      v37 = 0;
    }

    (*(*v31 + 40))(v31, v37);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
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
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  buf = 0u;
  sub_1000BA174(&buf);
  sub_1000BA468(&v70, a3);
  sub_1001DB8CC(&v70, &__p);
  v42 = sub_1015E42AC(a1, &__p, &buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000475BC(&v70);
  v43 = &buf;
  if (!v42)
  {
    v43 = a3;
  }

  v44 = *(v43 + 16);
  (*(**a4 + 48))(*a4, v44 == 1);
  v45 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v46 = "Disabled";
    if (v44 == 1)
    {
      v46 = "Enabled";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Setting relay mode to %s", &__p, 0xCu);
  }

  if (*(a1 + 184) == 1)
  {
    v68 = 0;
    v69 = 0;
    memset(&__p, 0, sizeof(__p));
    memset(&cf, 0, sizeof(cf));
    memset(&__str, 0, sizeof(__str));
    memset(&v66, 0, sizeof(v66));
    *(a1 + 184) = 0;
    v47 = Registry::getServiceMap(*(a1 + 56));
    v48 = v47;
    if (v49 < 0)
    {
      v50 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
      v51 = 5381;
      do
      {
        v49 = v51;
        v52 = *v50++;
        v51 = (33 * v51) ^ v52;
      }

      while (v52);
    }

    std::mutex::lock(v47);
    *v71 = v49;
    v53 = sub_100009510(&v48[1].__m_.__sig, v71);
    v54 = v11;
    if (v53)
    {
      v56 = v53[3];
      v55 = v53[4];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v48);
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v55);
        v57 = 0;
LABEL_77:
        (*(*v56 + 24))(v56, &v69, &v68, &__p, &cf, &__str, &v66);
        if ((v57 & 1) == 0)
        {
          sub_100004A34(v55);
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v59 = *v54;
          if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
          {
            *v71 = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Filling the optional short code parameters", v71, 2u);
          }

          *(a2 + 32) = 1;
          v60 = v68;
          *(a2 + 64) = v69;
          *(a2 + 72) = v60;
          std::string::operator=((a2 + 112), &__p);
          std::string::operator=((a2 + 136), &cf);
          std::string::operator=((a2 + 160), &__str);
          std::string::operator=((a2 + 184), &v66);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return sub_1000BFE80(&buf);
      }
    }

    else
    {
      v56 = 0;
    }

    std::mutex::unlock(v48);
    v55 = 0;
    v57 = 1;
    goto LABEL_77;
  }

  return sub_1000BFE80(&buf);
}

void sub_1015E1FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a37)
  {
    sub_100004A34(a37);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E2114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v179 = *(a5 + 108);
  v184 = (a1 + 56);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *v201 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v201);
  v15 = a3;
  if (v14)
  {
    v16 = v14[4];
    v182 = v14[3];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = a3;
      sub_100004A34(v16);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v182 = 0;
  }

  std::mutex::unlock(v9);
  v16 = 0;
  v17 = 1;
LABEL_9:
  v178 = a5;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  (*(**a4 + 248))(&v192);
  v177 = v17;
  v18 = v182;
  v19 = (*(**a4 + 256))(*a4);
  v20 = (*(**(a1 + 120) + 16))(*(a1 + 120), v19);
  *(v15 + 724) = subscriber::simSlotAsInstance();
  if (*(v178 + 52) == 2)
  {
    v21 = (*(**(a1 + 136) + 408))(*(a1 + 136), v19);
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*v182 + 288))(v182, v19);
  *(v15 + 320) = sd::IMSSubscriberConfigInterface::shouldUseAPMediaStack(v21, v22, 0, v23) ^ 1;
  memset(&__str, 0, sizeof(__str));
  (*(*v182 + 56))(&__str, v182);
  std::string::operator=((v15 + 248), &__str);
  v24 = Registry::getServiceMap(*v184);
  v25 = v24;
  v27 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v24);
  *v201 = v27;
  v31 = sub_100009510(&v25[1].__m_.__sig, v201);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v25);
  v32 = 0;
  v34 = 1;
LABEL_20:
  v35 = (*(*v33 + 96))(v33);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (v35)
  {
    PersonalityIdFromSlotIdEx();
    sub_10000501C(__p, "");
    (*(*v18 + 112))(v201, v18, &buf, __p);
    sub_100071A6C(a3 + 296);
    *(a3 + 296) = *v201;
    *(a3 + 312) = *&v201[16];
    memset(v201, 0, 24);
    v187[0] = v201;
    sub_1000087B4(v187);
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v36 = buf.__r_.__value_.__r.__words[0];
LABEL_127:
      operator delete(v36);
      goto LABEL_128;
    }

    goto LABEL_128;
  }

  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v202 = 0u;
  memset(v201, 0, sizeof(v201));
  LODWORD(v195[0]) = -1;
  __p[0] = 0;
  __p[1] = 0;
  v190 = 0;
  v187[0] = 0;
  v187[1] = 0;
  v188 = 0;
  v37 = Registry::getServiceMap(*v184);
  v38 = v37;
  v39 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v40 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
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
  buf.__r_.__value_.__r.__words[0] = v39;
  v43 = sub_100009510(&v38[1].__m_.__sig, &buf);
  if (v43)
  {
    v45 = v43[3];
    v44 = v43[4];
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v38);
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v44);
      v46 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v45 = 0;
  }

  std::mutex::unlock(v38);
  v44 = 0;
  v46 = 1;
LABEL_35:
  (*(*v45 + 112))(v45, v195, __p, v187);
  if ((v46 & 1) == 0)
  {
    sub_100004A34(v44);
  }

  *&v185.__r_.__value_.__l.__data_ = 0uLL;
  PersonalityIdFromSlotIdEx();
  (*(*v18 + 48))(&v185, v18, &buf);
  v47 = a3;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::string::operator=(v201, (v185.__r_.__value_.__r.__words[0] + 72));
  v48 = v185.__r_.__value_.__r.__words[0];
  if (&v201[24] != (v185.__r_.__value_.__r.__words[0] + 120))
  {
    sub_100008234(&v201[24], *(v185.__r_.__value_.__r.__words[0] + 120), *(v185.__r_.__value_.__r.__words[0] + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v185.__r_.__value_.__r.__words[0] + 128) - *(v185.__r_.__value_.__r.__words[0] + 120)) >> 3));
    v48 = v185.__r_.__value_.__r.__words[0];
  }

  std::string::operator=(&v203, v48 + 6);
  if ((&v204 + 8) != (v185.__r_.__value_.__r.__words[0] + 168))
  {
    sub_100008234(&v204 + 1, *(v185.__r_.__value_.__r.__words[0] + 168), *(v185.__r_.__value_.__r.__words[0] + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v185.__r_.__value_.__r.__words[0] + 176) - *(v185.__r_.__value_.__r.__words[0] + 168)) >> 3));
  }

  sub_100008234(&v206, v187[0], v187[1], 0xAAAAAAAAAAAAAAABLL * ((v187[1] - v187[0]) >> 3));
  v50 = *(&v206 + 1);
  v49 = v206;
  v51 = (a3 + 504);
  if (v206 == *(&v206 + 1))
  {
    if (v51 == (&v204 + 8))
    {
      goto LABEL_49;
    }

    v49 = *(&v204 + 1);
    v50 = v205;
    goto LABEL_48;
  }

  if (v51 != &v206)
  {
LABEL_48:
    sub_100008234(v51, v49, v50, 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3));
  }

LABEL_49:
  v52 = (a3 + 456);
  std::string::operator=((a3 + 456), &v203);
  v53 = (a3 + 432);
  std::string::operator=((a3 + 432), v201);
  if ((a3 + 480) != &v201[24])
  {
    sub_100008234((a3 + 480), *&v201[24], v202, 0xAAAAAAAAAAAAAAABLL * ((v202 - *&v201[24]) >> 3));
  }

  v54 = v185.__r_.__value_.__r.__words[0];
  *(a3 + 552) = *(v185.__r_.__value_.__r.__words[0] + 192) != 2;
  *(a3 + 328) = v195[0];
  std::string::operator=((a3 + 384), v54 + 4);
  memset(&v186, 0, sizeof(v186));
  sub_100005308(&v186, __p);
  if ((a3 + 296) != &v186)
  {
    sub_100008234((a3 + 296), v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v186.__r_.__value_.__l.__size_ - v186.__r_.__value_.__r.__words[0]) >> 3));
  }

  if (v20)
  {
    v55 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 479) < 0)
      {
        v52 = *v52;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v52;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: DOMAIN - %s", &buf, 0x16u);
      v55 = *v20;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 455) < 0)
      {
        v53 = *v53;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v53;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Private Identity - %s", &buf, 0x16u);
      v55 = *v20;
    }

    v47 = a3;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 488) - *(a3 + 480)) >> 3);
      if (*(v185.__r_.__value_.__r.__words[0] + 192) == 2)
      {
        v57 = "I";
      }

      else
      {
        v57 = "U";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v56;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      *v198 = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Num public identities - %lu (%sSIM)", &buf, 0x20u);
    }
  }

  v175 = a2;
  v59 = *(v47 + 480);
  for (i = *(v47 + 488); v59 != i; v59 = (v59 + 24))
  {
    memset(&buf, 0, sizeof(buf));
    if (*(v59 + 23) < 0)
    {
      sub_100005F2C(&buf, *v59, *(v59 + 1));
    }

    else
    {
      v60 = *v59;
      buf.__r_.__value_.__r.__words[2] = *(v59 + 2);
      *&buf.__r_.__value_.__l.__data_ = v60;
    }

    if (v20)
    {
      v61 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v196 = 136315394;
        *&v196[4] = "fillConfigWithEmergencyParams";
        *&v196[12] = 2080;
        *&v196[14] = p_buf;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Public Identity - %s", v196, 0x16u);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v20)
  {
    v63 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v64 = 0xAAAAAAAAAAAAAAABLL * ((*(v185.__r_.__value_.__r.__words[0] + 176) - *(v185.__r_.__value_.__r.__words[0] + 168)) >> 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Num PCSCFs [SIM] - %lu", &buf, 0x16u);
    }
  }

  v66 = *(v185.__r_.__value_.__r.__words[0] + 168);
  for (j = *(v185.__r_.__value_.__r.__words[0] + 176); v66 != j; v66 = (v66 + 24))
  {
    memset(&buf, 0, sizeof(buf));
    if (*(v66 + 23) < 0)
    {
      sub_100005F2C(&buf, *v66, *(v66 + 1));
    }

    else
    {
      v67 = *v66;
      buf.__r_.__value_.__r.__words[2] = *(v66 + 2);
      *&buf.__r_.__value_.__l.__data_ = v67;
    }

    if (v20)
    {
      v68 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v69 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = buf.__r_.__value_.__r.__words[0];
        }

        *v196 = 136315394;
        *&v196[4] = "fillConfigWithEmergencyParams";
        *&v196[12] = 2080;
        *&v196[14] = v69;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: PCSCF [SIM] - %s", v196, 0x16u);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v20)
  {
    v70 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((*(&v206 + 1) - v206) >> 3);
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Num PCSCFs [PCO] - %lu", &buf, 0x16u);
    }
  }

  v71 = *(&v206 + 1);
  for (k = v206; k != v71; k = (k + 24))
  {
    memset(&buf, 0, sizeof(buf));
    if (*(k + 23) < 0)
    {
      sub_100005F2C(&buf, *k, *(k + 1));
    }

    else
    {
      v73 = *k;
      buf.__r_.__value_.__r.__words[2] = *(k + 2);
      *&buf.__r_.__value_.__l.__data_ = v73;
    }

    if (v20)
    {
      v74 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v75 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v75 = buf.__r_.__value_.__r.__words[0];
        }

        *v196 = 136315394;
        *&v196[4] = "fillConfigWithEmergencyParams";
        *&v196[12] = 2080;
        *&v196[14] = v75;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: PCSCF [PCO] - %s", v196, 0x16u);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  a2 = v175;
  v18 = v182;
  if (v20)
  {
    v76 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v190 >= 0)
      {
        v77 = __p;
      }

      else
      {
        v77 = __p[0];
      }

      v78 = (v185.__r_.__value_.__r.__words[0] + 96);
      if (*(v185.__r_.__value_.__r.__words[0] + 119) < 0)
      {
        v78 = *v78;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v77;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      *v198 = v195[0];
      *&v198[4] = 2080;
      *&v198[6] = v78;
      v199 = 2080;
      v200 = p_str;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: network interface: %s, app ID: %d, mdn: %s, country: %s", &buf, 0x30u);
    }
  }

  buf.__r_.__value_.__r.__words[0] = &v186;
  sub_1000087B4(&buf);
  if (v185.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v185.__r_.__value_.__l.__size_);
  }

  buf.__r_.__value_.__r.__words[0] = v187;
  sub_1000087B4(&buf);
  if (SHIBYTE(v190) < 0)
  {
    operator delete(__p[0]);
  }

  buf.__r_.__value_.__r.__words[0] = &v206;
  sub_1000087B4(&buf);
  buf.__r_.__value_.__r.__words[0] = &v204 + 8;
  sub_1000087B4(&buf);
  if (SBYTE7(v204) < 0)
  {
    operator delete(v203);
  }

  buf.__r_.__value_.__r.__words[0] = &v201[24];
  sub_1000087B4(&buf);
  if ((v201[23] & 0x80000000) != 0)
  {
    v36 = *v201;
    goto LABEL_127;
  }

LABEL_128:
  __p[0] = 0;
  __p[1] = 0;
  v190 = 0;
  v187[0] = 0;
  v187[1] = 0;
  v188 = 0;
  v80 = Registry::getServiceMap(*v184);
  v81 = v80;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v82 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v83 = 5381;
    do
    {
      v26 = v83;
      v84 = *v82++;
      v83 = (33 * v83) ^ v84;
    }

    while (v84);
  }

  std::mutex::lock(v80);
  *v201 = v26;
  v85 = sub_100009510(&v81[1].__m_.__sig, v201);
  if (v85)
  {
    v87 = v85[3];
    v86 = v85[4];
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v81);
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v86);
      v88 = 0;
      goto LABEL_136;
    }
  }

  else
  {
    v87 = 0;
  }

  std::mutex::unlock(v81);
  v86 = 0;
  v88 = 1;
LABEL_136:
  v89 = (*(*v87 + 88))(v87);
  if ((v88 & 1) == 0)
  {
    sub_100004A34(v86);
  }

  if (v89)
  {
    (*(*v18 + 120))(v201, v18);
    v90 = a3;
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v201;
    v190 = *&v201[16];
    PersonalityIdFromSlotIdEx();
    (*(*v18 + 128))(v201, v18, &buf);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(v187[0]);
    }

    *v187 = *v201;
    v188 = *&v201[16];
    v201[23] = 0;
    v201[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    PersonalityIdFromSlotIdEx();
    (*(*v18 + 176))(&buf, v18, v201);
    if ((v201[23] & 0x80000000) != 0)
    {
      operator delete(*v201);
    }

    PersonalityIdFromSlotId();
    (*(*v18 + 192))(&v186, v18, v201);
    if ((v201[23] & 0x80000000) != 0)
    {
      operator delete(*v201);
    }

    if (v20)
    {
      v91 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v92 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v92 = buf.__r_.__value_.__r.__words[0];
        }

        v93 = &v186;
        if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v93 = v186.__r_.__value_.__r.__words[0];
        }

        *v201 = 136315650;
        *&v201[4] = "fillConfigWithEmergencyParams";
        *&v201[12] = 2080;
        *&v201[14] = v92;
        *&v201[22] = 2080;
        *&v201[24] = v93;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Last Access Type = %s, Last Access Info = %s", v201, 0x20u);
      }
    }

    ims::AccessNetwork::set();
    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    PersonalityIdFromSlotId();
    v90 = a3;
    (*(*v18 + 176))(v201, v18, &buf);
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v201;
    v190 = *&v201[16];
    v201[23] = 0;
    v201[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    PersonalityIdFromSlotId();
    (*(*v18 + 192))(v201, v18, &buf);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(v187[0]);
    }

    *v187 = *v201;
    v188 = *&v201[16];
    v201[23] = 0;
    v201[0] = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  ims::AccessNetwork::set();
  if (v20)
  {
    v94 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v95 = __p;
      if (v190 < 0)
      {
        v95 = __p[0];
      }

      v96 = v187;
      if (v188 < 0)
      {
        v96 = v187[0];
      }

      *v201 = 136315650;
      *&v201[4] = "fillConfigWithEmergencyParams";
      *&v201[12] = 2080;
      *&v201[14] = v95;
      *&v201[22] = 2080;
      *&v201[24] = v96;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Access Type = %s, Access Info = %s", v201, 0x20u);
    }
  }

  v97 = Registry::getServiceMap(*v184);
  v98 = v97;
  if (v99 < 0)
  {
    v100 = (v99 & 0x7FFFFFFFFFFFFFFFLL);
    v101 = 5381;
    do
    {
      v99 = v101;
      v102 = *v100++;
      v101 = (33 * v101) ^ v102;
    }

    while (v102);
  }

  std::mutex::lock(v97);
  *v201 = v99;
  v103 = sub_100009510(&v98[1].__m_.__sig, v201);
  if (!v103)
  {
    v104 = 0;
    goto LABEL_181;
  }

  v104 = v103[3];
  v105 = v103[4];
  if (!v105)
  {
LABEL_181:
    std::mutex::unlock(v98);
    v176 = 0;
    v180 = 1;
    goto LABEL_182;
  }

  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v98);
  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = v182;
  v90 = a3;
  v176 = v105;
  sub_100004A34(v105);
  v180 = 0;
LABEL_182:
  v106 = (*(*v104 + 440))(v104, v19);
  v107 = (*(*v104 + 448))(v104, v19, v106);
  v108 = v107;
  v109 = *(a1 + 896);
  if (!v109)
  {
    goto LABEL_189;
  }

  v110 = a1 + 896;
  do
  {
    if (*(v109 + 28) >= v19)
    {
      v110 = v109;
    }

    v109 = *(v109 + 8 * (*(v109 + 28) < v19));
  }

  while (v109);
  if (v110 != a1 + 896 && *(v110 + 28) <= v19)
  {
    v111 = *(v110 + 32);
    if (!v20)
    {
      goto LABEL_192;
    }
  }

  else
  {
LABEL_189:
    v111 = 0;
    if (!v20)
    {
      goto LABEL_192;
    }
  }

  v112 = *v20;
  v107 = os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT);
  if (v107)
  {
    v113 = CSIBOOLAsString(v108);
    v114 = asString();
    *v201 = 136315650;
    *&v201[4] = "fillConfigWithEmergencyParams";
    *&v201[12] = 2080;
    *&v201[14] = v113;
    *&v201[22] = 2080;
    *&v201[24] = v114;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: isLimitedService = %s, regStatus = %s", v201, 0x20u);
  }

LABEL_192:
  *(v90 + 556) = v111 == 5;
  *(v90 + 557) = v108;
  v115 = capabilities::ct::supportsVoiceCall(v107);
  *(v90 + 712) = v115;
  if (v115)
  {
    memset(v201, 0, 24);
    sub_10000501C(v201, "");
    v116 = *(a1 + 800);
    if (!v116)
    {
      goto LABEL_200;
    }

    v117 = a1 + 800;
    do
    {
      if (*(v116 + 32) >= v19)
      {
        v117 = v116;
      }

      v116 = *(v116 + 8 * (*(v116 + 32) < v19));
    }

    while (v116);
    if (v117 != a1 + 800 && v19 >= *(v117 + 32))
    {
      std::string::operator=(v201, (v117 + 40));
      v155 = *v20;
      v119 = v178;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v156 = v201;
        if (v201[23] < 0)
        {
          v156 = *v201;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v156;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "#I Device ID found: %s", &buf, 0xCu);
      }
    }

    else
    {
LABEL_200:
      v118 = *v20;
      v119 = v178;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "No device ID found for the sim!", &buf, 2u);
      }
    }

    std::string::operator=((v90 + 616), v201);
    goto LABEL_230;
  }

  memset(v201, 0, 24);
  v120 = Registry::getServiceMap(*v184);
  v119 = v178;
  v121 = v120;
  if ((v122 & 0x8000000000000000) != 0)
  {
    v123 = (v122 & 0x7FFFFFFFFFFFFFFFLL);
    v124 = 5381;
    do
    {
      v122 = v124;
      v125 = *v123++;
      v124 = (33 * v124) ^ v125;
    }

    while (v125);
  }

  std::mutex::lock(v120);
  buf.__r_.__value_.__r.__words[0] = v122;
  v126 = sub_100009510(&v121[1].__m_.__sig, &buf);
  if (v126)
  {
    v128 = v126[3];
    v127 = v126[4];
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v121);
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v127);
      v129 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v128 = 0;
  }

  std::mutex::unlock(v121);
  v127 = 0;
  v129 = 1;
LABEL_213:
  (*(*v128 + 160))(v201, v128);
  if ((v129 & 1) == 0)
  {
    sub_100004A34(v127);
  }

  *&v186.__r_.__value_.__l.__data_ = 0uLL;
  v130 = Registry::getServiceMap(*v184);
  v131 = v130;
  if ((v132 & 0x8000000000000000) != 0)
  {
    v133 = (v132 & 0x7FFFFFFFFFFFFFFFLL);
    v134 = 5381;
    do
    {
      v132 = v134;
      v135 = *v133++;
      v134 = (33 * v134) ^ v135;
    }

    while (v135);
  }

  std::mutex::lock(v130);
  buf.__r_.__value_.__r.__words[0] = v132;
  v136 = sub_100009510(&v131[1].__m_.__sig, &buf);
  v137 = a2;
  if (!v136)
  {
    v139 = 0;
    goto LABEL_222;
  }

  v139 = v136[3];
  v138 = v136[4];
  if (!v138)
  {
LABEL_222:
    std::mutex::unlock(v131);
    v138 = 0;
    v140 = 1;
    goto LABEL_223;
  }

  atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v131);
  atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = v182;
  sub_100004A34(v138);
  v140 = 0;
LABEL_223:
  (**v139)(&v186, v139, v201);
  a2 = v137;
  if ((v140 & 1) == 0)
  {
    sub_100004A34(v138);
  }

  v90 = a3;
  if (v186.__r_.__value_.__r.__words[0])
  {
    memset(&buf, 0, sizeof(buf));
    (*(*v186.__r_.__value_.__l.__data_ + 120))(&buf);
    std::string::operator=((a3 + 616), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v186.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v186.__r_.__value_.__l.__size_);
  }

LABEL_230:
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  memset(&v186, 0, sizeof(v186));
  sub_10000501C(&v186, "");
  memset(v196, 0, 24);
  sub_10000501C(v196, "");
  (*(*v18 + 88))(v18, &v192, &v186, v196);
  std::string::operator=((v90 + 640), &v186);
  v141 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    v142 = HIBYTE(v194);
    if (v194 < 0)
    {
      v142 = v193;
    }

    v143 = &v192;
    if (v194 < 0)
    {
      v143 = v192;
    }

    if (v142)
    {
      v144 = v143;
    }

    else
    {
      v144 = "<invalid>";
    }

    v145 = &v186;
    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v145 = v186.__r_.__value_.__r.__words[0];
    }

    v146 = v196;
    if ((v196[23] & 0x80u) != 0)
    {
      v146 = *v196;
    }

    *v201 = 136315650;
    *&v201[4] = v144;
    *&v201[12] = 2080;
    *&v201[14] = v145;
    *&v201[22] = 2080;
    *&v201[24] = v146;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I Address ref Id associated with %s: %s with expiry %s", v201, 0x20u);
  }

  memset(&v185, 0, sizeof(v185));
  (*(*v18 + 144))(&v185, v18, &v192);
  v147 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    v148 = &v185;
    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v148 = v185.__r_.__value_.__r.__words[0];
    }

    v149 = HIBYTE(v194);
    if (v194 < 0)
    {
      v149 = v193;
    }

    v150 = &v192;
    if (v194 < 0)
    {
      v150 = v192;
    }

    if (v149)
    {
      v151 = v150;
    }

    else
    {
      v151 = "<invalid>";
    }

    *v201 = 136315394;
    *&v201[4] = v148;
    *&v201[12] = 2080;
    *&v201[14] = v151;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "#I IMSI based Identity = %s for PID: %s", v201, 0x16u);
  }

  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v185.__r_.__value_.__l.__size_)
    {
      goto LABEL_261;
    }

    goto LABEL_260;
  }

  if (*(&v185.__r_.__value_.__s + 23))
  {
LABEL_260:
    std::string::operator=((a2 + 40), &v185);
  }

LABEL_261:
  v152 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *v201 = 67109376;
    *&v201[4] = v179 & 0x1F;
    *&v201[8] = 1024;
    *&v201[10] = v179;
    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I Emergency Services Category Value masked off: %d for %d.", v201, 0xEu);
  }

  if (v179)
  {
    v154 = 2;
  }

  else if ((v179 & 2) != 0)
  {
    v154 = 3;
  }

  else if ((v179 & 4) != 0)
  {
    v154 = 4;
  }

  else if ((v179 & 8) != 0)
  {
    v154 = 5;
  }

  else if ((v179 & 0x10) != 0)
  {
    v154 = 6;
  }

  else
  {
    v153 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *v201 = 67109120;
      *&v201[4] = v179;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "#I No IMS emergency category found for %d, defaulting to kNone", v201, 8u);
    }

    v154 = 1;
  }

  v157 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *v201 = 67109376;
    *&v201[4] = v179;
    *&v201[8] = 1024;
    *&v201[10] = v154;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "#I Emergency category is %d converted to ims category: %d", v201, 0xEu);
  }

  *(a2 + 208) = v154;
  v158 = *(v119 + 135);
  v159 = v158;
  if ((v158 & 0x80u) != 0)
  {
    v158 = *(v119 + 120);
  }

  if (v158)
  {
    v160 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v161 = *(v119 + 112);
      if (v159 >= 0)
      {
        v161 = v119 + 112;
      }

      *v201 = 136315138;
      *&v201[4] = v161;
      _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I Emergency category URN: %s", v201, 0xCu);
    }

    memset(v201, 0, 24);
    sub_10000501C(v201, "urn:service:sos");
    v162 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v119 + 135) >= 0)
      {
        v163 = v119 + 112;
      }

      else
      {
        v163 = *(v119 + 112);
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v163;
      _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "#I Extended Emergency Category: %s", &buf, 0xCu);
    }

    v164 = *(v119 + 135);
    if ((v164 & 0x80u) != 0)
    {
      v164 = *(v119 + 120);
    }

    if (v164)
    {
      if (v201[23] >= 0)
      {
        v165 = v201[23];
      }

      else
      {
        v165 = *&v201[8];
      }

      memset(&buf, 0, sizeof(buf));
      v166 = &buf;
      sub_1000677C4(&buf, v165 + 1);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v166 = buf.__r_.__value_.__r.__words[0];
      }

      if (v165)
      {
        if (v201[23] >= 0)
        {
          v167 = v201;
        }

        else
        {
          v167 = *v201;
        }

        memmove(v166, v167, v165);
      }

      *(&v166->__r_.__value_.__l.__data_ + v165) = 46;
      v168 = *(v119 + 135);
      if (v168 >= 0)
      {
        v169 = (v119 + 112);
      }

      else
      {
        v169 = *(v119 + 112);
      }

      if (v168 >= 0)
      {
        v170 = *(v119 + 135);
      }

      else
      {
        v170 = *(v119 + 120);
      }

      v171 = std::string::append(&buf, v169, v170);
      v172 = v171->__r_.__value_.__r.__words[0];
      v195[0] = v171->__r_.__value_.__l.__size_;
      *(v195 + 7) = *(&v171->__r_.__value_.__r.__words[1] + 7);
      v173 = HIBYTE(v171->__r_.__value_.__r.__words[2]);
      v171->__r_.__value_.__l.__size_ = 0;
      v171->__r_.__value_.__r.__words[2] = 0;
      v171->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if ((v201[23] & 0x80000000) != 0)
      {
        operator delete(*v201);
      }
    }

    else
    {
      v195[0] = *&v201[8];
      v172 = *v201;
      *(v195 + 7) = *&v201[15];
      v173 = v201[23];
    }

    if (*(a2 + 239) < 0)
    {
      operator delete(*(a2 + 216));
    }

    v174 = v195[0];
    *(a2 + 216) = v172;
    *(a2 + 224) = v174;
    *(a2 + 231) = *(v195 + 7);
    *(a2 + 239) = v173;
  }

  *(a2 + 272) = CallInfo::isSuspicious380Redirect(v119);
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  if (v196[23] < 0)
  {
    operator delete(*v196);
  }

  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  if ((v180 & 1) == 0)
  {
    sub_100004A34(v176);
  }

  if (SHIBYTE(v188) < 0)
  {
    operator delete(v187[0]);
  }

  if (SHIBYTE(v190) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v194) < 0)
  {
    operator delete(v192);
    if (v177)
    {
      return;
    }
  }

  else if (v177)
  {
    return;
  }

  sub_100004A34(v16);
}

void sub_1015E3F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, int a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v55 - 201) < 0)
  {
    operator delete(*(v55 - 224));
  }

  if ((a18 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if ((a15 & 1) == 0)
  {
    sub_100004A34(v54);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015E42AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v16 = *(a2 + 16);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v20 = v16;
  }

  v18 = 0;
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v24 = v20;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v18;
    v18 = v21;
    v22 = v6;
    sub_100005978(&v22);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

  v7 = v18;
  v17 = v18;
  v18 = 0;
  sub_100005978(&v18);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = CFUUIDCreateFromString(kCFAllocatorDefault, v7);
  __p[0] = v8;
  v9 = *(a1 + 136);
  v14 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v10 = (*(*v9 + 272))(v9, &v14, a3);
  sub_1000475BC(&v14);
  if ((v10 & 1) == 0)
  {
    v11 = *(a1 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received notification with unknown UUID: %s", buf, 0xCu);
    }
  }

  sub_1000475BC(__p);
  sub_100005978(&v17);
  return v10;
}

void sub_1015E44F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1015E4584(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 768);
  v3 = (a1 + 776);
  if (v2 != (a1 + 776))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_1015F26D0(a1, v7, v2 + 40);
    goto LABEL_13;
  }
}

void sub_1015E4654(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v39 = 0;
  sub_1015E4B14(&v38, a1, a2);
  v4 = v38;
  if (v38)
  {
    v36 = 0;
    v37 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
LABEL_20:
        (*(*v13 + 24))(&v36, v13, a2);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        v20 = v36;
        if (v36)
        {
          buf = 0uLL;
          v45 = 0;
          sub_1015E4C64(&buf, a2);
          __p[0] = 0;
          __p[1] = 0;
          v35 = 0;
          sub_1015E4C64(__p, a2);
          v21 = *(a1 + 48);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a2 + 23);
            v23 = (v22 & 0x80u) != 0;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(a2 + 8);
            }

            if (v23)
            {
              v24 = *a2;
            }

            else
            {
              v24 = a2;
            }

            if (v22)
            {
              v25 = v24;
            }

            else
            {
              v25 = "<invalid>";
            }

            *v40 = 136315138;
            v41 = v25;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Setting call and default IMS delegates for %s", v40, 0xCu);
            v21 = *(a1 + 48);
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            p_buf = &buf;
            if (v45 < 0)
            {
              p_buf = buf;
            }

            v27 = __p;
            if (v35 < 0)
            {
              v27 = __p[0];
            }

            *v40 = 136315394;
            v41 = p_buf;
            v42 = 2080;
            v43 = v27;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Call Manager Delegate: %s, Call Delegate: %s.", v40, 0x16u);
          }

          v28 = v39;
          v32 = v4 + 8;
          v33 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v20 + 160))(v20, &buf, &v32, *(a1 + 32));
          if (v33)
          {
            sub_100004A34(v33);
          }

          v30 = v4;
          v31 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v20 + 168))(v20, __p, &v30, *(a1 + 32));
          if (v31)
          {
            sub_100004A34(v31);
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(buf);
          }
        }

        else
        {
          v29 = *(a1 + 48);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to set delegate: call client is NULL!!", &buf, 2u);
          }
        }

        if (v37)
        {
          sub_100004A34(v37);
        }

        goto LABEL_55;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_20;
  }

  v15 = *(a1 + 48);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::setDelegatesOnIMSClientHandle: No Model found for PID: %s", &buf, 0xCu);
  }

LABEL_55:
  if (v39)
  {
    sub_100004A34(v39);
  }
}

void sub_1015E4A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E4B14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 664);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a2 + 664;
  v8 = a2 + 664;
  do
  {
    v9 = sub_1000068BC((v6 + 32), a3);
    if ((v9 & 0x80u) == 0)
    {
      v8 = v6;
    }

    v6 = *(v6 + ((v9 >> 4) & 8));
  }

  while (v6);
  if (v8 == v7 || (sub_1000068BC(a3, (v8 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v11 = *(a2 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a3 + 23);
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a3 + 8);
      }

      if (v13)
      {
        v14 = *a3;
      }

      else
      {
        v14 = a3;
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = "<invalid>";
      }

      v16 = 136315138;
      v17 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::getIMSCallModelForPersonalityID: Model not found for PID %s", &v16, 0xCu);
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v10 = *(v8 + 64);
    *a1 = *(v8 + 56);
    a1[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

double sub_1015E4C64(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a2 + 23);
  v4 = (v3 & 0x80u) != 0;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = "<invalid>";
  }

  sub_10000501C(a1, v6);
  std::operator+<char>();
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  return result;
}

void sub_1015E4D14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E4D34(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v30 = 0;
  sub_1015E4B14(&v29, a1, a2);
  v4 = v29;
  if (v29)
  {
    v27 = 0;
    v28 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
LABEL_20:
        (*(*v13 + 16))(&v27, v13);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        v20 = v27;
        if (v27)
        {
          sub_10000501C(buf, "ims.manager.e911");
          v21 = v30;
          v25 = v4 + 8;
          v26 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v20 + 160))(v20, buf, &v25, *(a1 + 32));
          if (v26)
          {
            sub_100004A34(v26);
          }

          if (v32 < 0)
          {
            operator delete(*buf);
          }

          sub_10000501C(buf, "ims.call.e911");
          v23 = v4;
          v24 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v20 + 168))(v20, buf, &v23, *(a1 + 32));
          if (v24)
          {
            sub_100004A34(v24);
          }

          if (v32 < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v22 = *(a1 + 48);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to set delegate: Emergency client is NULL!!", buf, 2u);
          }
        }

        if (v28)
        {
          sub_100004A34(v28);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_20;
  }

  v15 = *(a1 + 48);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::setDelegatesOnIMSClientHandle: No Model found for PID: %s", buf, 0xCu);
  }

LABEL_39:
  if (v30)
  {
    sub_100004A34(v30);
  }
}

void sub_1015E505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E50E0(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v29 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v29 = 1;
  if (v11)
  {
LABEL_11:
    v14 = *(a1 + 712);
    if (v14 == (a1 + 720))
    {
      goto LABEL_36;
    }

    while (1)
    {
      v15 = SlotIdFromPersonalityId();
      v16 = v12;
      v17 = (*(**(a1 + 120) + 16))(*(a1 + 120), v15);
      v18 = sub_100007A6C(a2, v14 + 4);
      v19 = *(v14 + 56);
      if (a2 + 8 == v18 || *(v18 + 56) != v19)
      {
        v22 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
        {
          v23 = "not ready";
          if (v19)
          {
            v23 = "ready";
          }

          *buf = 136315138;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I IMS client is now %s", buf, 0xCu);
          if ((v14[7] & 1) == 0)
          {
            goto LABEL_30;
          }

          v22 = *v17;
LABEL_24:
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Registering for IMS call status change notifications", buf, 2u);
          }

          (*(**(a1 + 152) + 16))(buf);
          v24 = *buf;
          memset(buf, 0, sizeof(buf));
          v25 = *(a1 + 176);
          *(a1 + 168) = v24;
          if (v25)
          {
            sub_100004A34(v25);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }
          }

          sub_1015E4654(a1, (v14 + 4));
          sub_1015E4D34(a1, (v14 + 4));
          goto LABEL_30;
        }

        if (v19)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v20 = *v17;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "not ready";
          if (v19)
          {
            v21 = "ready";
          }

          *buf = 136315138;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I IMS client has not changed state from %s", buf, 0xCu);
        }
      }

LABEL_30:
      v26 = v14[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v14[2];
          v28 = *v27 == v14;
          v14 = v27;
        }

        while (!v28);
      }

      v14 = v27;
      v12 = v16;
      if (v27 == (a1 + 720))
      {
        goto LABEL_36;
      }
    }
  }

LABEL_7:
  v13 = *(a1 + 48);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not found!", buf, 2u);
  }

LABEL_36:
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1015E5480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1015E54BC(uint64_t a1, unsigned int *a2)
{
  v4 = (*(**(a1 + 120) + 16))(*(a1 + 120), *a2);
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Received proactive call command from STK", &buf, 2u);
  }

  v84 = 0;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  v71 = 0u;
  v70 = 0u;
  memset(&buf_12[4], 0, 32);
  buf = 0;
  *buf_12 = 0x100000001;
  buf_8 = CallInfo::kDefaultCallId;
  *&buf_12[8] = 9;
  sub_10000501C(&buf_12[12], kCallerIdDefaultValue);
  LODWORD(v70) = 1;
  BYTE4(v70) = 1;
  *(&v70 + 1) = 0x200000004;
  LODWORD(v71) = 0;
  BYTE4(v71) = 0;
  DWORD2(v71) = 0;
  sub_10000501C(v72, "");
  memset(&v72[1] + 8, 0, 34);
  sub_10000501C(&v73, "");
  BYTE8(v74) = 0;
  HIDWORD(v74) = 0;
  LOBYTE(v75) = 0;
  BYTE8(v75) = 0;
  LOBYTE(v77[0]) = 0;
  memset(v77 + 8, 0, 32);
  *(&v77[2] + 1) = 0u;
  memset(&v77[3] + 4, 0, 64);
  BYTE4(v77[7]) = 1;
  BYTE8(v77[7]) = 0;
  BYTE12(v77[7]) = 0;
  LOWORD(v79) = 0;
  BYTE4(v79) = 0;
  BYTE8(v79) = 0;
  LOBYTE(v80) = 0;
  LOBYTE(v83) = 0;
  BYTE8(v83) = 0;
  BYTE4(v84) = 0;
  *(&v78 + 3) = 0;
  LODWORD(v78) = 0;
  *(&v78 + 11) = 0;
  DWORD2(v78) = 0;
  CSIPhoneNumber::getBaseNumber(v37, (a2 + 2));
  if ((buf_12[35] & 0x80000000) != 0)
  {
    operator delete(*&buf_12[12]);
  }

  *&buf_12[12] = *v37;
  *&buf_12[28] = v38;
  *&buf_12[4] = *a2;
  v66 = 0;
  v65 = 0;
  (*(*a1 + 56))(&v65, a1);
  if (v65)
  {
    v6 = a2[42];
    if (v6 <= 5)
    {
      v7 = 1 << v6;
      if ((v7 & 3) != 0)
      {
        v64 = 0;
        v63 = 0u;
        v62 = 0u;
        v61 = 0u;
        v60 = 0u;
        v59 = 0u;
        v58 = 0u;
        v57 = 0u;
        v56 = 0u;
        v55 = 0u;
        v54 = 0u;
        v53 = 0u;
        v52 = 0u;
        v51 = 0u;
        v50 = 0u;
        v49 = 0u;
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v45 = 0u;
        v44 = 0u;
        v43 = 0u;
        v42 = 0u;
        v41 = 0u;
        v40 = 0u;
        v39 = 0u;
        v38 = 0u;
        *v37 = 0u;
        sub_1000BA174(v37);
        v35 = 0;
        v34 = 0;
        v36 = 0;
        (*(**(a1 + 136) + 240))(&v34);
        v10 = v34 != v35 && *(v34 + 16) == *&buf_12[4];
        v12 = (*(**(a1 + 136) + 248))(*(a1 + 136), v37);
        v32 = 0;
        v31 = 0;
        v33 = 0;
        (*(**(a1 + 136) + 264))(&v31);
        v13 = v31 != v32 && *(v31 + 4) == *&buf_12[4];
        if (((v10 | v12) & 1) != 0 || v13)
        {
          v14 = *v4;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (buf_12[35] >= 0)
            {
              v26 = &buf_12[12];
            }

            else
            {
              v26 = *&buf_12[12];
            }

            *v85 = 136315138;
            *&v85[4] = v26;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cannot dial normal STK proactive call to %s as calls already exist", v85, 0xCu);
          }

          v11 = 6;
        }

        else
        {
          sub_100E03FE8(v30, &buf);
          sub_1015E5E1C(a1, v30, 1);
          sub_1000BFE80(v30);
          v11 = 0;
        }

        *v85 = &v31;
        sub_1000B42B0(v85);
        v31 = &v34;
        sub_1000B42B0(&v31);
        sub_1000BFE80(v37);
LABEL_30:
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        v16 = ServiceMap;
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

        std::mutex::lock(ServiceMap);
        *v37 = v17;
        v21 = sub_100009510(&v16[1].__m_.__sig, v37);
        if (v21)
        {
          v23 = v21[3];
          v22 = v21[4];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v16);
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v22);
            v24 = 0;
            if (!v23)
            {
LABEL_40:
              if ((v24 & 1) == 0)
              {
                sub_100004A34(v22);
              }

              goto LABEL_42;
            }

LABEL_39:
            (*(*v23 + 72))(v23, *a2, a2[1], v11);
            goto LABEL_40;
          }
        }

        else
        {
          v23 = 0;
        }

        std::mutex::unlock(v16);
        v22 = 0;
        v24 = 1;
        if (!v23)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if ((v7 & 0xC) != 0)
      {
        v35 = 0;
        v34 = 0;
        v36 = 0;
        (*(**(a1 + 136) + 240))(&v34);
        if (v34 != v35)
        {
          v64 = 0;
          v63 = 0u;
          v62 = 0u;
          v61 = 0u;
          v60 = 0u;
          v59 = 0u;
          v58 = 0u;
          v57 = 0u;
          v56 = 0u;
          v55 = 0u;
          v54 = 0u;
          v53 = 0u;
          v52 = 0u;
          v51 = 0u;
          v50 = 0u;
          v49 = 0u;
          v48 = 0u;
          v47 = 0u;
          v46 = 0u;
          v45 = 0u;
          v44 = 0u;
          v43 = 0u;
          v42 = 0u;
          v41 = 0u;
          v40 = 0u;
          v39 = 0u;
          v38 = 0u;
          *v37 = 0u;
          sub_100E03FE8(v37, v34);
          if (v38 == *&buf_12[4])
          {
            v8 = v65;
            sub_100E03FE8(v29, v37);
            (*(*v8 + 344))(v8, v29);
            sub_1000BFE80(v29);
          }

          sub_1000BFE80(v37);
        }

        sub_100E03FE8(v28, &buf);
        sub_1015E5E1C(a1, v28, 1);
        sub_1000BFE80(v28);
        *v37 = &v34;
        sub_1000B42B0(v37);
      }

      else
      {
        (*(*a1 + 200))(a1, *&buf_12[4]);
        sub_100E03FE8(v27, &buf);
        sub_1015E5E1C(a1, v27, 1);
        sub_1000BFE80(v27);
      }
    }

    v11 = 0;
    goto LABEL_30;
  }

  v9 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::handleSTKProactiveCall_sync: IMS Call model not found!", v37, 2u);
  }

LABEL_42:
  if (v66)
  {
    sub_100004A34(v66);
  }

  return sub_1000BFE80(&buf);
}

void sub_1015E5CC8(_Unwind_Exception *a1)
{
  sub_1000BFE80(&STACK[0x370]);
  sub_1000BFE80(&STACK[0x710]);
  STACK[0x710] = &STACK[0x6F8];
  sub_1000B42B0(&STACK[0x710]);
  if (STACK[0x8D8])
  {
    sub_100004A34(STACK[0x8D8]);
  }

  sub_1000BFE80(&STACK[0x8E0]);
  _Unwind_Resume(a1);
}

void sub_1015E5E1C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a2 + 24);
    if (*(a2 + 47) < 0)
    {
      v7 = *v7;
    }

    sub_1000BA468(&v62, a2);
    printUuid();
    v8 = v65;
    v9 = *v64;
    v10 = CSIBOOLAsString(a3);
    v11 = v64;
    *buf = 136315650;
    if (v8 < 0)
    {
      v11 = v9;
    }

    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    *&buf[22] = 2080;
    v67 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Performing dial for %s (%s Is baseband call: %s)", buf, 0x20u);
    if (v65 < 0)
    {
      operator delete(*v64);
    }

    sub_1000475BC(&v62);
  }

  v60 = 0;
  v61 = 0;
  (*(*a1 + 56))(&v60, a1, *(a2 + 16));
  if (v60)
  {
    sub_100E03FE8(v57, a2);
    v12 = CallInfo::isEmergencyCallEmergencySetup(v57);
    v13 = v12;
    v14 = v59;
    if (v59 == 2)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    if (v15 == 1)
    {
      v16 = *(a1 + 48);
      v17 = 0;
      v18 = 0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = CSIBOOLAsString(v13);
        v20 = CSIBOOLAsString(v14 == 2);
        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Call does not need civic location. Emergency: %s, Wifi Call: %s", buf, 0x16u);
        v17 = 0;
        v18 = 0;
      }

      goto LABEL_41;
    }

    memset(buf, 0, sizeof(buf));
    (*(*v60 + 248))(buf);
    v21 = buf[23];
    if ((buf[23] & 0x80u) != 0)
    {
      v21 = *&buf[8];
    }

    if (!v21)
    {
      v18 = 0;
      v17 = 0;
LABEL_37:
      v32 = *(a1 + 48);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = CSIBOOLAsString(v17);
        v34 = CSIBOOLAsString(v18);
        *v64 = 136315394;
        *&v64[4] = v33;
        *&v64[12] = 2080;
        *&v64[14] = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Call requires civic location info: %s, force location lookup: %s", v64, 0x16u);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_41:
      sub_1000BFE80(v57);
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v36 = ServiceMap;
      if (v37 < 0)
      {
        v38 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
        v39 = 5381;
        do
        {
          v37 = v39;
          v40 = *v38++;
          v39 = (33 * v39) ^ v40;
        }

        while (v40);
      }

      std::mutex::lock(ServiceMap);
      *buf = v37;
      v41 = sub_100009510(&v36[1].__m_.__sig, buf);
      if (v41)
      {
        v43 = v41[3];
        v42 = v41[4];
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v36);
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v42);
          v44 = 0;
LABEL_49:
          if (v43)
          {
            v45 = v17;
          }

          else
          {
            v45 = 0;
          }

          if (v45 == 1)
          {
            v46 = (*(*v43 + 32))(v43, v18);
          }

          else
          {
            v46 = 0;
          }

          v52[0] = _NSConcreteStackBlock;
          v52[1] = 1174405120;
          v52[2] = sub_1015E8BDC;
          v52[3] = &unk_101F54EB8;
          v52[4] = a1;
          v55 = v46;
          sub_100E03FE8(v53, a2);
          v56 = a3;
          v53[55] = v60;
          v54 = v61;
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47 = *(a1 + 24);
          if (!v47 || (v48 = *(a1 + 16), (v49 = std::__shared_weak_count::lock(v47)) == 0))
          {
            sub_100013CC4();
          }

          v50 = v49;
          v51 = *(a1 + 32);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 1174405120;
          *&buf[16] = sub_1015F284C;
          v67 = &unk_101F551C8;
          v69 = v48;
          v70 = v50;
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v68 = v52;
          dispatch_async(v51, buf);
          if (v70)
          {
            sub_100004A34(v70);
          }

          sub_100004A34(v50);
          if (v54)
          {
            sub_100004A34(v54);
          }

          sub_1000BFE80(v53);
          if ((v44 & 1) == 0)
          {
            sub_100004A34(v42);
          }

          goto LABEL_65;
        }
      }

      else
      {
        v43 = 0;
      }

      std::mutex::unlock(v36);
      v42 = 0;
      v44 = 1;
      goto LABEL_49;
    }

    *v64 = 0;
    *&v64[8] = 0;
    v22 = Registry::getServiceMap(*(a1 + 56));
    v23 = v22;
    if ((v24 & 0x8000000000000000) != 0)
    {
      v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(v22);
    v63 = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, &v63);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
LABEL_28:
        (**v30)(v64, v30, buf);
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        if (*v64)
        {
          if ((*(**v64 + 152))(*v64, v58))
          {
            v18 = 1;
            v17 = 1;
          }

          else
          {
            v17 = (*(**v64 + 160))(*v64, v58);
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
          v17 = 0;
        }

        if (*&v64[8])
        {
          sub_100004A34(*&v64[8]);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v31 = 1;
    goto LABEL_28;
  }

LABEL_65:
  if (v61)
  {
    sub_100004A34(v61);
  }
}

void sub_1015E6494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *(v72 - 200);
  if (v74)
  {
    sub_100004A34(v74);
  }

  if (*(v72 - 153) < 0)
  {
    operator delete(*(v72 - 176));
  }

  sub_1000BFE80(&a72);
  v75 = *(v72 - 232);
  if (v75)
  {
    sub_100004A34(v75);
  }

  _Unwind_Resume(a1);
}

void sub_1015E655C(void *a1, int a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1015E6678;
  v8[3] = &unk_101F54E78;
  v8[4] = a1;
  v9 = a2;
  v3 = a1[3];
  if (!v3 || (v4 = a1[2], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    sub_100013CC4();
  }

  v6 = v5;
  v7 = a1[4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1015F284C;
  block[3] = &unk_101F551C8;
  block[5] = v4;
  v11 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v6);
}

void sub_1015E66E8(uint64_t a1, uint64_t a2)
{
  v32 = 0;
  v33 = 0;
  (*(*a1 + 56))(&v32);
  if (!v32)
  {
    goto LABEL_33;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
LABEL_12:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_13:
    v15 = *(a1 + 760);
    v16 = (*(*v32 + 384))(v32);
    v30 = 0;
    *buf = 0u;
    v29 = 0u;
    (*(*v32 + 248))(__p);
    v17 = sub_100007A6C(a1 + 736, __p);
    if (a1 + 744 == v17)
    {
      v18 = *(a1 + 48);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v21 = __p[1];
        }

        v22 = __p;
        if ((v27 & 0x80u) != 0)
        {
          v22 = __p[0];
        }

        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = "<invalid>";
        }

        *v34 = 136315138;
        v35 = v23;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "rest::vowifi_prov_state not initialized or pid not found! : %s", v34, 0xCu);
      }

      *buf = 0;
      buf[4] = 1;
      buf[8] = 0;
      LOBYTE(v30) = 0;
    }

    else
    {
      *buf = *(v17 + 56);
      buf[4] = *(v17 + 60);
      sub_10006F264(&buf[8], (v17 + 64));
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else if (!v16)
    {
LABEL_23:
      v19 = *(*(**(a1 + 120) + 16))(*(a1 + 120), *(a2 + 16));
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I VoLTE or VoWifi (not Thumper) call will be made, do a SIM call control check", __p, 2u);
      }

      if ((*(*v12 + 232))(v12, *(a2 + 16), 30))
      {
        sub_100E03FE8(v25, a2);
        v20 = v25;
        (*(*a1 + 376))(a1, v25);
LABEL_28:
        sub_1000BFE80(v20);
        if (v30 == 1 && SHIBYTE(v29) < 0)
        {
          operator delete(*&buf[8]);
        }

        goto LABEL_31;
      }

LABEL_27:
      sub_100E03FE8(v24, a2);
      v20 = v24;
      sub_1015E5E1C(a1, v24, 0);
      goto LABEL_28;
    }

    if (*buf != 1 || (v15 & 1) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_8:
  v14 = *(a1 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Subscriber module is not available, perform SIM call control then dial", buf, 2u);
  }

  sub_100E03FE8(v31, a2);
  (*(*a1 + 376))(a1, v31);
  sub_1000BFE80(v31);
LABEL_31:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_33:
  if (v33)
  {
    sub_100004A34(v33);
  }
}

void sub_1015E6B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000BFE80(&a64);
  if (LOBYTE(STACK[0x3B0]) == 1 && SLOBYTE(STACK[0x3AF]) < 0)
  {
    operator delete(STACK[0x398]);
  }

  if ((v65 & 1) == 0)
  {
    sub_100004A34(v64);
  }

  v68 = *(v66 - 120);
  if (v68)
  {
    sub_100004A34(v68);
  }

  _Unwind_Resume(a1);
}

void sub_1015E6C24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Performing SIM call control first and then dialing", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_13:
      *(a1 + 634) = 1;
      v15 = *(a1 + 24);
      if (v15)
      {
        v16 = *(a1 + 16);
        v17 = std::__shared_weak_count::lock(v15);
        if (v17)
        {
          v18 = v17;
          atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v17);
          CSIPhoneNumber::CSIPhoneNumber();
          sub_100E03FE8(&v19 + 8, a2);
          v20[0] = v16;
          v20[1] = v18;
          atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v23 = 0;
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_100E03FE8(v21, a2);
  sub_1015E5E1C(a1, v21, 0);
  sub_1000BFE80(v21);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1015E7060(_Unwind_Exception *a1)
{
  sub_1000BFE80(&STACK[0x278]);
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015E70EC(uint64_t a1)
{
  v2 = *(a1 + 456);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1000BFE80(a1 + 8);
  return a1;
}

void sub_1015E7124(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  if (*a4)
  {
    memset(&__str, 0, sizeof(__str));
    v8 = (a2 + 24);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&__str, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *&__str.__r_.__value_.__l.__data_ = *v8;
      __str.__r_.__value_.__r.__words[2] = *(a2 + 40);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v11 = 0;
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v13 = 1;
      while (1)
      {
        v14 = p_str->__r_.__value_.__s.__data_[v11];
        if (v14 == 59 || v14 == 44)
        {
          break;
        }

        v11 = v13;
        if (size <= v13++)
        {
          goto LABEL_20;
        }
      }

      std::string::basic_string(&buf, &__str, 0, v11, v174);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = buf;
    }

LABEL_20:
    (*(**a4 + 248))(&buf);
    sub_1015E4D34(a1, &buf);
    v55 = v8;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v187 = 0;
    v186 = 0u;
    v185 = 0u;
    v182 = 0;
    memset(v174, 0, sizeof(v174));
    v175 = 0x40A7700000000000;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    memset(v181, 0, sizeof(v181));
    v183 = 0;
    v184 = 0uLL;
    bzero(&buf, 0x2E0uLL);
    *&v151[8] = 1;
    *&v151[12] = 257;
    *v152 = 0u;
    memset(v153, 0, sizeof(v153));
    *v154 = 0u;
    memset(v155, 0, sizeof(v155));
    *v156 = 0u;
    memset(v157, 0, sizeof(v157));
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    sub_10000501C(&v161, "ims");
    *&v163[4] = 0;
    v163[6] = 1;
    *v164 = 0u;
    memset(v165, 0, sizeof(v165));
    v166 = 0;
    memset(v170, 0, sizeof(v170));
    v169 = 0u;
    v167 = 0u;
    memset(v168, 0, sizeof(v168));
    v171 = 257;
    v172 = 0x1010000000000;
    v173 = 0;
    v16 = (*(**(a1 + 136) + 416))();
    if (a3 && !*a2)
    {
      v17 = CFUUIDCreate(kCFAllocatorDefault);
      v18 = *a2;
      *a2 = v17;
      v195.__r_.__value_.__r.__words[0] = v18;
      sub_1000475BC(&v195.__r_.__value_.__l.__data_);
    }

    v124 = 0;
    v123 = 0;
    sub_1015E8644(&v123, a1, a2, v16);
    if (!v123)
    {
      v28 = *(a1 + 48);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v195.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to create IMS call object!", &v195, 2u);
      }

LABEL_193:
      if (v124)
      {
        sub_100004A34(v124);
      }

      sub_1015F2400(&buf);
      sub_1015F2488(v174);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      return;
    }

    (*(**a4 + 248))(__p);
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v20 = ServiceMap;
    if ((v21 & 0x8000000000000000) != 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(ServiceMap);
    v195.__r_.__value_.__r.__words[0] = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, &v195);
    v54 = a3;
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        if (!v27)
        {
LABEL_95:
          sub_100004A34(v26);
          goto LABEL_96;
        }

LABEL_37:
        v192 = 0;
        v193 = 0;
        (*(*v27 + 40))(&v192, v27, __p);
        if (v192)
        {
          v191 = 0;
          (*(*v192 + 40))(&v195);
          sub_100010180(&v191, &v195.__r_.__value_.__l.__data_);
          sub_10000A1EC(&v195.__r_.__value_.__l.__data_);
          v29 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = __str.__r_.__value_.__r.__words[0];
          }

          if (v29->__r_.__value_.__s.__data_[0] == 43 && v191)
          {
            v30 = *(a1 + 48);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v195.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Trimming + character off front of Call destination address", &v195, 2u);
            }

            std::string::basic_string(&v195, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v190);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v195;
            memset(&v190, 0, sizeof(v190));
            CFDictionaryGetValue(v191, @"Local");
            memset(&v195, 0, sizeof(v195));
            ctu::cf::assign();
            v190 = v195;
            memset(&v189, 0, sizeof(v189));
            CFDictionaryGetValue(v191, @"International");
            memset(&v195, 0, sizeof(v195));
            ctu::cf::assign();
            v189 = v195;
            v31 = v190.__r_.__value_.__l.__size_;
            if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = HIBYTE(v190.__r_.__value_.__r.__words[2]);
            }

            if (v31)
            {
              v32 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
              v33 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
              if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v32 = v189.__r_.__value_.__l.__size_;
              }

              if (v32)
              {
                v34 = &v190;
                if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = v190.__r_.__value_.__r.__words[0];
                }

                if (v34->__r_.__value_.__s.__data_[0] == 43)
                {
                  std::string::basic_string(&v195, &v190, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v194);
                  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v190.__r_.__value_.__l.__data_);
                  }

                  v190 = v195;
                  v33 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
                }

                v35 = v33 < 0;
                v36 = &v189;
                if (v35)
                {
                  v36 = v189.__r_.__value_.__r.__words[0];
                }

                if (v36->__r_.__value_.__s.__data_[0] == 43)
                {
                  std::string::basic_string(&v195, &v189, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v194);
                  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v189.__r_.__value_.__l.__data_);
                  }

                  v189 = v195;
                }

                if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = HIBYTE(v190.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v37 = v190.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v195, &__str, 0, v37, &v194);
                v38 = SHIBYTE(v195.__r_.__value_.__r.__words[2]);
                if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v39 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v39 = v195.__r_.__value_.__l.__size_;
                }

                v40 = HIBYTE(v190.__r_.__value_.__r.__words[2]);
                if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v40 = v190.__r_.__value_.__l.__size_;
                }

                if (v39 == v40)
                {
                  if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v41 = &v195;
                  }

                  else
                  {
                    v41 = v195.__r_.__value_.__r.__words[0];
                  }

                  if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v42 = &v190;
                  }

                  else
                  {
                    v42 = v190.__r_.__value_.__r.__words[0];
                  }

                  v43 = memcmp(v41, v42, v39) == 0;
                }

                else
                {
                  v43 = 0;
                }

                if (v38 < 0)
                {
                  operator delete(v195.__r_.__value_.__l.__data_);
                }

                if (!v43)
                {
                  sub_100168A48(&v189.__r_.__value_.__l.__data_, &__str.__r_.__value_.__l.__data_, &v195);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  __str = v195;
                }
              }
            }

            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v190.__r_.__value_.__l.__data_);
            }
          }

          sub_10001021C(&v191);
        }

        if (v193)
        {
          sub_100004A34(v193);
        }

        if (!v26)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      std::mutex::unlock(v20);
      if (v27)
      {
        goto LABEL_37;
      }
    }

    else
    {
      std::mutex::unlock(v20);
    }

LABEL_96:
    if (v122 < 0)
    {
      operator delete(__p[0]);
    }

    v44 = v124;
    v120[0] = v123;
    v120[1] = v124;
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = 0;
    }

    sub_1015E15A0(a1, v174, a2, v120, p_buf, a4);
    if (v44)
    {
      sub_100004A34(v44);
    }

    v46 = *(a1 + 48);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 47) < 0)
      {
        v55 = *v8;
      }

      v47 = CSIBOOLAsString(v54);
      CallInfo::toString(&v190, a2);
      if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v190;
      }

      else
      {
        v48 = v190.__r_.__value_.__r.__words[0];
      }

      LODWORD(v195.__r_.__value_.__l.__data_) = 136315650;
      *(v195.__r_.__value_.__r.__words + 4) = v55;
      WORD2(v195.__r_.__value_.__r.__words[1]) = 2080;
      *(&v195.__r_.__value_.__r.__words[1] + 6) = v47;
      HIWORD(v195.__r_.__value_.__r.__words[2]) = 2080;
      v196 = v48;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I PerformDial number: %s, bbCall: %s  %s", &v195, 0x20u);
      if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v190.__r_.__value_.__l.__data_);
      }
    }

    v49 = *(a1 + 864);
    v50 = *(a1 + 872);
    v51 = (*(**a4 + 256))(*a4);
    if (v49 != v50)
    {
      while (*v49 != v51)
      {
        v49 += 42;
        if (v49 == v50)
        {
          v49 = v50;
          break;
        }
      }
    }

    if (v49 == *(a1 + 872) || (subscriber::isSimAbsent() & 1) != 0)
    {
      isSimUnreadable = 1;
    }

    else
    {
      isSimUnreadable = subscriber::isSimUnreadable();
    }

    v53 = *a4;
    v118 = v123;
    v119 = v124;
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100E03FE8(v117, a2);
    sub_1015F2004(v116, v174);
    v57 = buf;
    if (SHIBYTE(v127) < 0)
    {
      sub_100005F2C(&v58, __src, *(&__src + 1));
    }

    else
    {
      v58 = __src;
      v59 = v127;
    }

    if (SHIBYTE(v129) < 0)
    {
      sub_100005F2C(&v60, v128, *(&v128 + 1));
    }

    else
    {
      v60 = v128;
      v61 = v129;
    }

    v62 = v130;
    v63 = v131;
    if (SHIBYTE(v133) < 0)
    {
      sub_100005F2C(&v64, v132, *(&v132 + 1));
    }

    else
    {
      v64 = v132;
      v65 = v133;
    }

    if (SHIBYTE(v135) < 0)
    {
      sub_100005F2C(&v66, v134, *(&v134 + 1));
    }

    else
    {
      v66 = v134;
      v67 = v135;
    }

    v68 = v136;
    v69 = v137;
    if (SHIBYTE(v139) < 0)
    {
      sub_100005F2C(&v70, v138, *(&v138 + 1));
    }

    else
    {
      v70 = v138;
      v71 = v139;
    }

    if (SHIBYTE(v141) < 0)
    {
      sub_100005F2C(&v72, v140, *(&v140 + 1));
    }

    else
    {
      v72 = v140;
      v73 = v141;
    }

    v74 = v142;
    v75 = v143;
    v76 = v144;
    if (SHIBYTE(v146) < 0)
    {
      sub_100005F2C(&v77, v145, *(&v145 + 1));
    }

    else
    {
      v77 = v145;
      v78 = v146;
    }

    if (SHIBYTE(v148) < 0)
    {
      sub_100005F2C(&v79, v147, *(&v147 + 1));
    }

    else
    {
      v79 = v147;
      v80 = v148;
    }

    memset(v81, 0, sizeof(v81));
    sub_10004EFD0(v81, v149, v150, 0xAAAAAAAAAAAAAAABLL * ((v150 - v149) >> 3));
    *(v82 + 6) = *&v151[6];
    v82[0] = *v151;
    if (SHIBYTE(v153[0]) < 0)
    {
      sub_100005F2C(&v83, v152[0], v152[1]);
    }

    else
    {
      v83 = *v152;
      v84 = v153[0];
    }

    if (SHIBYTE(v153[3]) < 0)
    {
      sub_100005F2C(&v85, v153[1], v153[2]);
    }

    else
    {
      v85 = *&v153[1];
      v86 = v153[3];
    }

    if (SHIBYTE(v155[0]) < 0)
    {
      sub_100005F2C(&v87, v154[0], v154[1]);
    }

    else
    {
      v87 = *v154;
      v88 = v155[0];
    }

    if (SHIBYTE(v155[3]) < 0)
    {
      sub_100005F2C(&v89, v155[1], v155[2]);
    }

    else
    {
      v89 = *&v155[1];
      v90 = v155[3];
    }

    if (SHIBYTE(v157[0]) < 0)
    {
      sub_100005F2C(&v91, v156[0], v156[1]);
    }

    else
    {
      v91 = *v156;
      v92 = v157[0];
    }

    if (SHIBYTE(v157[3]) < 0)
    {
      sub_100005F2C(&v93, v157[1], v157[2]);
    }

    else
    {
      v93 = *&v157[1];
      v94 = v157[3];
    }

    memset(v95, 0, sizeof(v95));
    sub_10004EFD0(v95, v158, *(&v158 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v158 + 1) - v158) >> 3));
    memset(v96, 0, sizeof(v96));
    sub_10004EFD0(v96, *(&v159 + 1), v160, 0xAAAAAAAAAAAAAAABLL * ((v160 - *(&v159 + 1)) >> 3));
    if (SHIBYTE(v162) < 0)
    {
      sub_100005F2C(&v97, v161, *(&v161 + 1));
    }

    else
    {
      v97 = v161;
      v98 = v162;
    }

    *(v99 + 3) = *&v163[3];
    v99[0] = *v163;
    if (SHIBYTE(v165[0]) < 0)
    {
      sub_100005F2C(&v100, v164[0], v164[1]);
    }

    else
    {
      v100 = *v164;
      v101 = v165[0];
    }

    if (SHIBYTE(v165[3]) < 0)
    {
      sub_100005F2C(&v102, v165[1], v165[2]);
    }

    else
    {
      v102 = *&v165[1];
      v103 = v165[3];
    }

    v104 = v166;
    if (SHIBYTE(v168[0]) < 0)
    {
      sub_100005F2C(&v105, v167, *(&v167 + 1));
    }

    else
    {
      v105 = v167;
      v106 = v168[0];
    }

    if (SHIBYTE(v168[3]) < 0)
    {
      sub_100005F2C(&v107, v168[1], v168[2]);
    }

    else
    {
      v107 = *&v168[1];
      v108 = v168[3];
    }

    if (SHIBYTE(v170[0]) < 0)
    {
      sub_100005F2C(&v109, v169, *(&v169 + 1));
    }

    else
    {
      v109 = v169;
      v110 = v170[0];
    }

    if (SHIBYTE(v170[3]) < 0)
    {
      sub_100005F2C(&v111, v170[1], v170[2]);
    }

    else
    {
      v111 = *&v170[1];
      v112 = v170[3];
    }

    v113 = v171;
    v114 = v172;
    v115 = v173;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __str;
    }

    (*(*v53 + 320))(v53, &v118, v117, v116, &v57, v54, &__dst, isSimUnreadable);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_1015F2400(&v57);
    sub_1015F2488(v116);
    sub_1000BFE80(v117);
    if (v119)
    {
      sub_100004A34(v119);
    }

    goto LABEL_193;
  }

  v9 = *(a1 + 48);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::dialNormalCall_Sync: IMS Call model is NULL!", &buf, 2u);
  }
}

void sub_1015E81A0(_Unwind_Exception *a1)
{
  if (*(v2 - 217) < 0)
  {
    operator delete(*(v2 - 240));
  }

  if (*(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  sub_10001021C((v2 - 176));
  v4 = *(v2 - 160);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (STACK[0x638])
  {
    sub_100004A34(STACK[0x638]);
  }

  sub_1015F2400(&STACK[0x640]);
  sub_1015F2488(&STACK[0x920]);
  if (SLOBYTE(STACK[0xA57]) < 0)
  {
    operator delete(STACK[0xA40]);
  }

  _Unwind_Resume(a1);
}

void sub_1015E8644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  v6 = *(a2 + 816);
  sub_1015EA940(&v7, a2, a3);
  (*(*v6 + 64))(v6, a3, &v7, a4);
  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1015E86D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E86E8(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v2 = *(a1 + 640);
    *(a1 + 640) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Got civic location information, continuing with call", &v6, 2u);
    }

    sub_100E03FE8(v36, a1 + 192);
    v4 = *(a1 + 632);
    (*(*a1 + 56))(&v6, a1, *(a1 + 208));
    sub_1015E7124(a1, v36, v4, &v6);
    if (*v7)
    {
      sub_100004A34(*v7);
    }

    sub_1000BFE80(v36);
    v6 = 0;
    *v7 = CallInfo::kDefaultCallId;
    *&v7[4] = 0x100000001;
    v8 = 9;
    sub_10000501C(v9, kCallerIdDefaultValue);
    v10 = 1;
    v11 = 1;
    v12 = 0x200000004;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_10000501C(v16, "");
    v19 = 0;
    v18 = 0u;
    v17 = 0u;
    sub_10000501C(v20, "");
    v20[24] = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0u;
    memset(v26, 0, 25);
    memset(&v26[28], 0, 64);
    v26[92] = 1;
    v26[96] = 0;
    v26[100] = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    *(v27 + 3) = 0;
    v27[0] = 0;
    *(v28 + 3) = 0;
    v28[0] = 0;
    sub_1015E89D4(a1 + 192, &v6);
    sub_1000BFE80(&v6);
    *(a1 + 632) = 0;
  }

  else
  {
    v5 = *(a1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Received location information but has no call pending!", &v6, 2u);
    }
  }
}

void sub_1015E895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_1000475BC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015E89D4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    *a1 = 0;
    v22 = v4;
    *a1 = *a2;
    *a2 = 0;
    sub_1000475BC(&v22);
  }

  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v6 = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 60) = v6;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v7 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v7;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v8;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  *(a1 + 136) = *(a2 + 136);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v9 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v9;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  v10 = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = v10;
  sub_1004EDCD0(a1 + 184, (a2 + 184));
  *(a1 + 216) = *(a2 + 216);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  *(a1 + 256) = *(a2 + 256);
  v12 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v12);
  }

  v13 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *v12 = v13;
  *(a2 + 287) = 0;
  *(a2 + 264) = 0;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v14 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v14;
  *(a2 + 311) = 0;
  *(a2 + 288) = 0;
  v16 = *(a2 + 344);
  v15 = *(a2 + 360);
  v17 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v17;
  *(a1 + 344) = v16;
  *(a1 + 360) = v15;
  v18 = *(a2 + 376);
  v19 = *(a2 + 392);
  v20 = *(a2 + 408);
  *(a1 + 421) = *(a2 + 421);
  *(a1 + 392) = v19;
  *(a1 + 408) = v20;
  *(a1 + 376) = v18;
  return a1;
}

void sub_1015E8BDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 496) == 1)
  {
    v3 = *(v2 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Requested civic info, pending the call until we get an update w/ the location information", buf, 2u);
    }

    *(v2 + 184) = 1;
    sub_1000BA4A0((v2 + 192), (a1 + 40));
    *(v2 + 200) = *(a1 + 48);
    std::string::operator=((v2 + 216), (a1 + 64));
    v4 = *(a1 + 100);
    *(v2 + 240) = *(a1 + 88);
    *(v2 + 252) = v4;
    std::string::operator=((v2 + 272), (a1 + 120));
    *(v2 + 296) = *(a1 + 144);
    std::string::operator=((v2 + 304), (a1 + 152));
    *(v2 + 328) = *(a1 + 176);
    std::string::operator=((v2 + 336), (a1 + 184));
    v5 = *(a1 + 216);
    *(v2 + 360) = *(a1 + 208);
    *(v2 + 368) = v5;
    sub_1000FAA0C(v2 + 376, a1 + 224);
    *(v2 + 408) = *(a1 + 256);
    std::string::operator=((v2 + 424), (a1 + 272));
    *(v2 + 448) = *(a1 + 296);
    std::string::operator=((v2 + 456), (a1 + 304));
    std::string::operator=((v2 + 480), (a1 + 328));
    v6 = *(a1 + 400);
    v8 = *(a1 + 352);
    v7 = *(a1 + 368);
    *(v2 + 536) = *(a1 + 384);
    *(v2 + 552) = v6;
    *(v2 + 504) = v8;
    *(v2 + 520) = v7;
    v10 = *(a1 + 432);
    v9 = *(a1 + 448);
    v11 = *(a1 + 416);
    *(v2 + 613) = *(a1 + 461);
    *(v2 + 584) = v10;
    *(v2 + 600) = v9;
    *(v2 + 568) = v11;
    *(v2 + 632) = *(a1 + 497);
    Registry::getTimerService(buf, *(v2 + 56));
    v12 = *buf;
    sub_10000501C(__p, "Call with Location Timer");
    v13 = *(v2 + 32);
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1015E939C;
    aBlock[3] = &unk_101F54E98;
    aBlock[4] = v2;
    v34 = _Block_copy(aBlock);
    sub_100D23364(v12, __p, 1, 30000000, &object, &v34);
    v14 = __dst;
    *&__dst = 0;
    v15 = *(v2 + 640);
    *(v2 + 640) = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      v16 = __dst;
      *&__dst = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    if (v34)
    {
      _Block_release(v34);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (v65)
    {
      sub_100004A34(v65);
    }
  }

  else
  {
    if (*(a1 + 108) == 1)
    {
      sub_100E03FE8(cf, a1 + 40);
      v17 = *(a1 + 480);
      if (v17)
      {
        v18 = *(a1 + 497);
        (*(*v17 + 488))(buf);
        v19 = v66;
        sub_1001754E8(buf);
        if (v19)
        {
          v63 = 0;
          v62 = 0;
          sub_1015E8644(buf, v2, cf, 0);
          sub_10037FC9C(buf, &v62);
          if (v65)
          {
            sub_100004A34(v65);
          }

          if (v62)
          {
            v61 = 0;
            v59 = 0u;
            v60 = 0u;
            v55 = 0;
            v47 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            __dst = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            memset(v54, 0, sizeof(v54));
            v48 = 0x40A7700000000000;
            v56 = 0;
            v58 = 0;
            v57 = 0;
            v20 = v63;
            v41[0] = v62;
            v41[1] = v63;
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1015E15A0(v2, &__dst, cf, v41, 0, (a1 + 480));
            if (v20)
            {
              sub_100004A34(v20);
            }

            v21 = *(a1 + 480);
            v39 = v62;
            v40 = v63;
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100E03FE8(buf, cf);
            sub_1015F2004(v38, &__dst);
            (*(*v21 + 336))(v21, &v39, buf, v38);
            sub_1015F2488(v38);
            sub_1000BFE80(buf);
            if (v40)
            {
              sub_100004A34(v40);
            }

            sub_1015F2488(&__dst);
          }

          else
          {
            v25 = *(v2 + 48);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "pullThumperCall_Sync: cannot create an ims call object", buf, 2u);
            }
          }

          if (v63)
          {
            sub_100004A34(v63);
          }
        }

        else
        {
          v24 = *(v2 + 48);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Pulling call via short code", buf, 2u);
          }

          __dst = 0uLL;
          *&v43 = 0;
          if (SHIBYTE(v32) < 0)
          {
            sub_100005F2C(&__dst, v31, *(&v31 + 1));
          }

          else
          {
            __dst = v31;
            *&v43 = v32;
          }

          v26 = BYTE7(v43);
          if (SBYTE7(v43) < 0)
          {
            v26 = *(&__dst + 1);
          }

          if (v26)
          {
            sub_100E03FE8(buf, cf);
            sub_1015E7124(v2, buf, v18, (a1 + 480));
            sub_1000BFE80(buf);
          }

          else
          {
            v27 = *(v2 + 48);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "No short code found. Cannot pull this call, ending it!", buf, 2u);
            }

            v28 = *(v2 + 136);
            *buf = cf[0];
            if (cf[0])
            {
              CFRetain(cf[0]);
            }

            (*(*v28 + 40))(v28, buf);
            sub_1000475BC(buf);
          }

          if (SBYTE7(v43) < 0)
          {
            operator delete(__dst);
          }
        }
      }

      else
      {
        v23 = *(v2 + 48);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "pullThumperCall_Sync: cannot find ims model.", buf, 2u);
        }
      }

      v22 = cf;
    }

    else
    {
      sub_100E03FE8(v29, a1 + 40);
      sub_1015E7124(v2, v29, *(a1 + 497), (a1 + 480));
      v22 = v29;
    }

    sub_1000BFE80(v22);
  }
}

void sub_1015E92A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000475BC(&STACK[0x630]);
  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  sub_1000BFE80(&a65);
  _Unwind_Resume(a1);
}

const void **sub_1015E939C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 640);
  *(v1 + 640) = 0;
  if (result)
  {
    result = (*(*result + 1))(result);
  }

  if (*(v1 + 184) == 1)
  {
    v3 = *(v1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Location timer expired, continuing with call", &v6, 2u);
    }

    *(v1 + 184) = 0;
    sub_100E03FE8(v36, v1 + 192);
    v4 = *(v1 + 632);
    (*(*v1 + 56))(&v6, v1, *(v1 + 208));
    sub_1015E7124(v1, v36, v4, &v6);
    if (*v7)
    {
      sub_100004A34(*v7);
    }

    sub_1000BFE80(v36);
    v6 = 0;
    v5 = CallInfo::kDefaultCallId;
    *v7 = CallInfo::kDefaultCallId;
    *&v7[4] = 0x100000001;
    v8 = 9;
    sub_10000501C(v9, kCallerIdDefaultValue);
    v10 = 1;
    v11 = 1;
    v12 = 0x200000004;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_10000501C(v16, "");
    v19 = 0;
    v18 = 0u;
    v17 = 0u;
    sub_10000501C(v20, "");
    v20[24] = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0u;
    memset(v26, 0, 25);
    memset(&v26[28], 0, 64);
    v26[92] = 1;
    v26[96] = 0;
    v26[100] = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    *(v27 + 3) = 0;
    v27[0] = 0;
    *(v28 + 3) = 0;
    v28[0] = 0;
    sub_1015E89D4(v1 + 192, &v6);
    result = sub_1000BFE80(&v6);
    *(v1 + 632) = 0;
    *(v1 + 633) = v5;
  }

  return result;
}

void sub_1015E95D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_1000475BC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015E9650(uint64_t a1, uint64_t a2)
{
  result = sub_100E03FE8(a1 + 40, a2 + 40);
  v5 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

const void **sub_1015E9698(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_1000BFE80(a1 + 40);
}

void sub_1015E96D8(void *a1, const void **a2)
{
  v4 = a1[6];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BA468(&v12, a2);
    printUuid();
    if (SHIBYTE(v14) >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I IMSCallCommandDriver::answerWaitingHoldOther uuid: %s", buf, 0xCu);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000475BC(&v12);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1015E98D0;
  v11[3] = &unk_101F54EE8;
  v11[4] = a1;
  v6 = a1[3];
  if (!v6 || (v7 = a1[2], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    sub_100013CC4();
  }

  v9 = v8;
  v10 = a1[4];
  __p[0] = _NSConcreteStackBlock;
  __p[1] = 1174405120;
  v14 = sub_1015F284C;
  v15 = &unk_101F551C8;
  v17 = v7;
  v18 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = v11;
  dispatch_async(v10, __p);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_100004A34(v9);
}

void sub_1015E98A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

const void **sub_1015E98D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
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
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  sub_1000BA174(&v18);
  v2 = (*(**(v1 + 136) + 248))(*(v1 + 136), &v18);
  v16 = 0;
  v15 = 0;
  v17 = 0;
  (*(**(v1 + 136) + 240))(&v15);
  v3 = v15;
  v4 = v16;
  if (((v15 != v16) & v2) == 0)
  {
    v5 = *(v1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::answerWaitingHoldOther does not have a waiting and an active call", buf, 2u);
      v5 = *(v1 + 48);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CSIBOOLAsString(v2);
      v7 = CSIBOOLAsString(v3 != v4);
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Waiting: %s, Active: %s", buf, 0x16u);
    }
  }

  if (v3 == v4)
  {
    if (!v2)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v72 = 0;
  v70 = 0u;
  v71 = 0u;
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
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_100E03FE8(buf, v15);
  v14 = 0;
  v13 = 0;
  (*(*v1 + 56))(&v13, v1, *&buf[16]);
  v8 = v13;
  if (v13)
  {
    sub_100E03FE8(v12, buf);
    (*(*v8 + 344))(v8, v12);
    sub_1000BFE80(v12);
    if (v14)
    {
      sub_100004A34(v14);
    }

    sub_1000BFE80(buf);
    if ((v2 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    *&buf[8] = 0;
    *buf = 0;
    (*(*v1 + 56))(buf, v1, v19);
    v9 = *buf;
    if (*buf)
    {
      sub_100E03FE8(v11, &v18);
      (*(*v9 + 328))(v9, v11);
      sub_1000BFE80(v11);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    goto LABEL_20;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1000BFE80(buf);
LABEL_20:
  *buf = &v15;
  sub_1000B42B0(buf);
  return sub_1000BFE80(&v18);
}

void sub_1015E9C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000BFE80(va);
  if (STACK[0x568])
  {
    sub_100004A34(STACK[0x568]);
  }

  STACK[0x560] = &STACK[0x388];
  sub_1000B42B0(&STACK[0x560]);
  sub_1000BFE80(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

void sub_1015E9D20(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I IMSCallCommandDriver::answerWaitingEndActive", buf, 2u);
  }

  if (*(a1 + 168))
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *buf = 0u;
    sub_1000BA174(buf);
    v5 = (*(**(a1 + 136) + 248))(*(a1 + 136), buf);
    v38 = 0;
    v37 = 0;
    v39 = 0;
    (*(**(a1 + 136) + 240))(&v37);
    v6 = v37;
    v7 = v38;
    if (((v37 != v38) & v5) == 0)
    {
      v8 = *(a1 + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *block = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E IMSCallCommandDriver::answerWaitingEndActive does not have a waiting and an active call", block, 2u);
        v8 = *(a1 + 48);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CSIBOOLAsString(v5);
        v10 = CSIBOOLAsString(v6 != v7);
        *block = 136315394;
        *&block[4] = v9;
        *&block[12] = 2080;
        *&block[14] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Waiting: %s, Active: %s", block, 0x16u);
      }
    }

    if (v6 != v7)
    {
      v11 = v37;
      v12 = 0x6FB586FB586FB587 * ((v38 - v37) >> 3);
      if (v38 - v37 == 440)
      {
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 1174405120;
        v35[2] = sub_1015EA4D8;
        v35[3] = &unk_101F54F08;
        v35[4] = a1;
        memset(v36, 0, sizeof(v36));
        sub_1015F2538(v36, v37, v38, v12);
        v13 = *(a1 + 24);
        if (!v13 || (v14 = *(a1 + 16), (v15 = std::__shared_weak_count::lock(v13)) == 0))
        {
          sub_100013CC4();
        }

        v16 = v15;
        v17 = *(a1 + 32);
        *block = _NSConcreteStackBlock;
        *&block[8] = 1174405120;
        *&block[16] = sub_1015F284C;
        *&block[24] = &unk_101F551C8;
        *(&v76 + 1) = v14;
        *&v77 = v16;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        *&v76 = v35;
        dispatch_async(v17, block);
        if (v77)
        {
          sub_100004A34(v77);
        }

        sub_100004A34(v16);
        *block = v36;
        sub_1000B42B0(block);
      }

      else if (v12 >= 2)
      {
        v19 = *(a1 + 48);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *block = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Ending conference call", block, 2u);
          v11 = v37;
        }

        v101 = 0;
        v100 = 0u;
        v99 = 0u;
        v98 = 0u;
        v97 = 0u;
        v96 = 0u;
        v95 = 0u;
        v94 = 0u;
        v93 = 0u;
        v92 = 0u;
        v91 = 0u;
        v90 = 0u;
        v89 = 0u;
        v88 = 0u;
        v87 = 0u;
        v86 = 0u;
        v85 = 0u;
        v84 = 0u;
        v83 = 0u;
        v82 = 0u;
        v81 = 0u;
        v80 = 0u;
        v79 = 0u;
        v78 = 0u;
        v77 = 0u;
        v76 = 0u;
        memset(block, 0, sizeof(block));
        sub_100E03FE8(block, v11);
        sub_1015EA940(&lpsrc, a1, block);
        if (lpsrc)
        {
        }

        else
        {
          v20 = 0;
        }

        if (v69)
        {
          sub_100004A34(v69);
        }

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 0x40000000;
        v34[2] = sub_1015EA9EC;
        v34[3] = &unk_101F54F38;
        v34[4] = v20;
        v21 = *(a1 + 24);
        if (!v21 || (v22 = *(a1 + 16), (v23 = std::__shared_weak_count::lock(v21)) == 0))
        {
          sub_100013CC4();
        }

        v24 = v23;
        v25 = *(a1 + 32);
        lpsrc = _NSConcreteStackBlock;
        v69 = 1174405120;
        v70 = sub_1015F284C;
        v71 = &unk_101F551C8;
        v73 = v22;
        v74 = v24;
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v72 = v34;
        dispatch_async(v25, &lpsrc);
        if (v74)
        {
          sub_100004A34(v74);
        }

        sub_100004A34(v24);
        sub_1000BFE80(block);
      }

      if (!*a2)
      {
        *a2 = 1;
        v26 = *(a1 + 48);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *block = 67109120;
          *&block[4] = 1;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I numOfActiveCallsEnded incremented to %d", block, 8u);
        }
      }
    }

    if (v5)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 1174405120;
      v32[2] = sub_1015EAA24;
      v32[3] = &unk_101F54F58;
      v32[4] = a1;
      sub_100E03FE8(v33, buf);
      v27 = *(a1 + 24);
      if (!v27 || (v28 = *(a1 + 16), (v29 = std::__shared_weak_count::lock(v27)) == 0))
      {
        sub_100013CC4();
      }

      v30 = v29;
      v31 = *(a1 + 32);
      *block = _NSConcreteStackBlock;
      *&block[8] = 1174405120;
      *&block[16] = sub_1015F284C;
      *&block[24] = &unk_101F551C8;
      *(&v76 + 1) = v28;
      *&v77 = v30;
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v76 = v32;
      dispatch_async(v31, block);
      if (v77)
      {
        sub_100004A34(v77);
      }

      sub_100004A34(v30);
      sub_1000BFE80(v33);
    }

    *block = &v37;
    sub_1000B42B0(block);
    sub_1000BFE80(buf);
  }

  else
  {
    v18 = *(a1 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Telephony Daemon is not in a valid state to take requests", buf, 2u);
    }
  }
}

void sub_1015EA470(_Unwind_Exception *a1)
{
  sub_1000BFE80(&STACK[0x450]);
  STACK[0x450] = &STACK[0x248];
  sub_1000B42B0(&STACK[0x450]);
  sub_1000BFE80(&STACK[0x260]);
  _Unwind_Resume(a1);
}

const void **sub_1015EA4D8(uint64_t a1)
{
  v35 = 0;
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
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *cf = 0u;
  v1 = *(a1 + 32);
  sub_100E03FE8(cf, *(a1 + 40));
  v2 = *(v1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    sub_1001DB8CC(&v5, __p);
    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315138;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Ending single call with uuid: %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000475BC(&v5);
  }

  sub_1015EA660(v1, cf, 0);
  return sub_1000BFE80(cf);
}