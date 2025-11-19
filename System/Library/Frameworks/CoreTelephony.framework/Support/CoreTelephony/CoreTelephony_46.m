void sub_1002E5478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_1000296E0(va);
  sub_1000296E0(va1);
  sub_100010250(va2);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportManageAccountUrlOverEntitlement(uint64_t a1)
{
  theDict = 0;
  v9 = 0;
  (*(*a1 + 232))(&theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A334();
    }

    goto LABEL_10;
  }

  if (!CFDictionaryContainsKey(theDict, @"SupportManageAccountUrlOverEntitlement"))
  {
    v6 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10176A2C4();
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"SupportManageAccountUrlOverEntitlement");
  v2 = Value;
  v10 = 0;
  if (Value)
  {
    v3 = CFGetTypeID(Value);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v10, v2, v4);
      LOBYTE(v2) = v10;
      goto LABEL_11;
    }

LABEL_10:
    LOBYTE(v2) = 0;
  }

LABEL_11:
  sub_10001021C(&v9);
  sub_10001021C(&theDict);
  return v2 & 1;
}

void sub_1002E55FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_10001021C(va1);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportsEligibilityOniPhoneForAddOnPlan(uint64_t a1)
{
  theDict = 0;
  v9 = 0;
  (*(*a1 + 232))(&theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A334();
    }

    goto LABEL_10;
  }

  if (!CFDictionaryContainsKey(theDict, @"SupportsEligibilityOniPhoneForAddOnPlan"))
  {
    v6 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10176A3A4();
    }

LABEL_10:
    LOBYTE(v2) = 1;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"SupportsEligibilityOniPhoneForAddOnPlan");
  v2 = Value;
  v10 = 0;
  if (Value)
  {
    v3 = CFGetTypeID(Value);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v10, v2, v4);
      LOBYTE(v2) = v10;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

LABEL_11:
  sub_10001021C(&v9);
  sub_10001021C(&theDict);
  return v2 & 1;
}

void sub_1002E574C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_10001021C(va1);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::cellularDataPlanAccountURLForESim@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  theDict = 0;
  CellularPlanSettingsDevice::getCellularDataPlanSettingsFromBundle(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
    v21 = Value;
    if (Value)
    {
      CFRetain(Value);
      if (CFDictionaryContainsKey(v21, @"CellularDataPlanAccountURLForESim"))
      {
        CFDictionaryGetValue(v21, @"CellularDataPlanAccountURLForESim");
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v11 = *buf;
        v10 = *&buf[8];
        v12 = *&buf[15];
        *a7 = *buf;
        *(a7 + 8) = v10;
        *(a7 + 15) = v12;
        v13 = buf[23];
        *(a7 + 23) = buf[23];
        v14 = *sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a6 + 23) >= 0)
          {
            v15 = a6;
          }

          else
          {
            v15 = *a6;
          }

          if (v13 >= 0)
          {
            v16 = a7;
          }

          else
          {
            v16 = v11;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I CellularDataPlanAccountURLForESim for iccid: [%s] is [%s]", buf, 0x16u);
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A414();
        }
      }
    }

    else
    {
      v17 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        sub_10176A334();
      }
    }

    sub_10001021C(&v21);
  }

  else
  {
    v18 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_10176A484();
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1002E595C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10001021C(&a9);
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::cellularPlanStatusFromPlanExpiryDetection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getCellularDataPlanSettingsFromBundle(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
    v15 = Value;
    if (Value)
    {
      CFRetain(Value);
      if (CFDictionaryContainsKey(v15, @"CellularPlanStatusFromPlanExpiryDetection"))
      {
        v7 = CFDictionaryGetValue(v15, @"CellularPlanStatusFromPlanExpiryDetection");
        v8 = v7;
        v17 = 0;
        if (!v7)
        {
LABEL_10:
          sub_10001021C(&v15);
          goto LABEL_14;
        }

        v9 = CFGetTypeID(v7);
        if (v9 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v17, v8, v10);
          LOBYTE(v8) = v17;
          goto LABEL_10;
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A4F4();
        }
      }
    }

    else
    {
      v11 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_10176A334();
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_10;
  }

  v12 = sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_10176A484();
  }

  LOBYTE(v8) = 0;
LABEL_14:
  sub_10001021C(&theDict);
  return v8 & 1;
}

void sub_1002E5B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::requiresChinaCertOnEuiccCheck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"RequiresChinaCertOnEuiccCheck"))
          {
            v18 = CFDictionaryGetValue(v16, @"RequiresChinaCertOnEuiccCheck");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (!v18)
            {
LABEL_22:
              sub_10001021C(&theDict);
              sub_100010250(&v29);
              return v19 & 1;
            }

            v20 = CFGetTypeID(v18);
            if (v20 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v27, v19, v21);
              LOBYTE(v19) = v27;
              goto LABEL_22;
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176A564();
            }
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002E5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::suppressMonitorModeFailureAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"SuppressMonitorModeFailureAlert"))
          {
            v18 = CFDictionaryGetValue(v16, @"SuppressMonitorModeFailureAlert");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (!v18)
            {
LABEL_22:
              sub_10001021C(&theDict);
              sub_100010250(&v29);
              return v19 & 1;
            }

            v20 = CFGetTypeID(v18);
            if (v20 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v27, v19, v21);
              LOBYTE(v19) = v27;
              goto LABEL_22;
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176A600();
            }
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A670();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002E604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

unsigned int *CellularPlanSettingsDevice::getWaitTimeForProfileRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    return 0;
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (!v8)
  {
    return 0;
  }

  values = @"WaitTimeForProfileRelease";
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v23 = v14;
  v21 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v21, buf);
  sub_100010180(&theDict, buf);
  sub_1000296E0(buf);
  sub_100010250(&v21);
  if (theDict && CFDictionaryContainsKey(theDict, @"WaitTimeForProfileRelease"))
  {
    Value = CFDictionaryGetValue(theDict, @"WaitTimeForProfileRelease");
    v16 = Value;
    *buf = 0;
    if (Value)
    {
      v17 = CFGetTypeID(Value);
      if (v17 == CFNumberGetTypeID())
      {
        ctu::cf::assign(buf, v16, v18);
        v16 = *buf;
      }

      else
      {
        v16 = 0;
      }
    }

    v19 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Wait time for profile install: [%u]", buf, 8u);
    }
  }

  else
  {
    v16 = 0;
  }

  sub_10001021C(&theDict);
  sub_100010250(&v23);
  return v16;
}

void sub_1002E62A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierNameFromSlot(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v15, v13, a2, 1, @"CarrierName", 0, 0);
  sub_100060DE8(a3, &v15);
  sub_10000A1EC(&v15);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002E643C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10000A1EC(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierName(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v15, v13, a2, 1, @"CarrierName", 0, 0);
  sub_100060DE8(a3, &v15);
  sub_10000A1EC(&v15);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002E65A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10000A1EC(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1002E6634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createBootstrapProvisioningController(uint64_t a1@<X0>, dispatch_object_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  *a2 = 0;
  *v7 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_100004AA0(&v5, (a1 + 40));
  v6 = v5;
  v5 = 0uLL;
  sub_10057CCE4(&v6, &v9);
  *a4 = v9;
  v9 = 0uLL;
  if (*(&v6 + 1))
  {
    sub_100004A34(*(&v6 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }

  if (v8)
  {
    dispatch_release(v8);
  }
}

void sub_1002E66F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createMultiplexer(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if ((atomic_load_explicit(qword_101FBA1F0, memory_order_acquire) & 1) == 0)
  {
    sub_10176A6E0();
  }

  if (!xmmword_101FBA200)
  {
    __src = 0;
    v22 = 0;
    v23 = 0;
    v8 = capabilities::ct::supportsRemoteCellularPlan(a1);
    if (v8)
    {
      sub_100004AA0(&v19, a1 + 5);
      sub_1002F35CC();
    }

    if (capabilities::ct::supportedVinylSlotCount(v8))
    {
      v9 = *a2;
      object = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      sub_100004AA0(&v17, a1 + 5);
      v19 = v17;
      v17 = 0uLL;
      sub_10010DF94(&v20);
    }

    if (capabilities::ct::supportsRegisteredIDSService(0))
    {
      v20 = 0uLL;
      sub_100004AA0(&v24, a1 + 5);
      sub_1002F3A04();
    }

    v10 = *a2;
    v16[3] = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    memset(v16, 0, 24);
    sub_1002F2830(v16, __src, v22, (v22 - __src) >> 4);
    sub_1009E105C();
  }

  if (*a3)
  {
    v11 = xmmword_101FBA200;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 16))(v11, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  v13 = *(&xmmword_101FBA200 + 1);
  *a4 = xmmword_101FBA200;
  a4[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1002E6D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, char *a21, std::__shared_weak_count *a22, uint64_t a23, char a24)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  a21 = &a24;
  sub_1000212F4(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E6E68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1002E6F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createSubscriptionPushObserver(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v9, (a1 + 40));
  v10 = v9;
  v9 = 0uLL;
  sub_100188F04(&object, &v14);
  *a4 = v14;
  v14 = 0uLL;
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_100004A34(*(&v9 + 1));
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1002E6FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createEntitlementsController(CellularPlanSettingsDevice *this, queue a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_100AB2484(&v3);
}

void sub_1002E70B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCellularPlanSourceTransferAuthController(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    sub_1002F3E84();
  }

  *a3 = 0;
  a3[1] = 0;
}

const void **CellularPlanSettingsDevice::createProximityTransportController@<X0>(const void **result@<X0>, int a2@<W1>, const void **a3@<X2>, NSObject **a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v9 = result;
  if (a2 == 2)
  {
    sub_100010024(v22, a3);
    v12 = *a4;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    sub_100004AA0(&v28, v9 + 5);
    v19 = v28;
    v20 = v29;
    v28 = 0;
    v29 = 0;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(v15, *a5, *(a5 + 8));
    }

    else
    {
      *v15 = *a5;
      v16 = *(a5 + 16);
    }

    if (*(a5 + 47) < 0)
    {
      sub_100005F2C(v17, *(a5 + 24), *(a5 + 32));
    }

    else
    {
      *v17 = *(a5 + 24);
      v18 = *(a5 + 40);
    }

    sub_100186218(2, &v34);
    *a7 = v34;
    v34 = 0uLL;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v29)
    {
      sub_100004A34(v29);
    }

    if (object)
    {
      dispatch_release(object);
    }

    v14 = v22;
  }

  else
  {
    if (a2 != 1)
    {
      *a7 = 0;
      *(a7 + 8) = 0;
      return result;
    }

    sub_100010024(&v33, a3);
    v32 = *a4;
    if (v32)
    {
      dispatch_retain(v32);
    }

    sub_100004AA0(&v28, v9 + 5);
    v30 = v28;
    v31 = v29;
    v28 = 0;
    v29 = 0;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(__dst, *a5, *(a5 + 8));
    }

    else
    {
      *__dst = *a5;
      v25 = *(a5 + 16);
    }

    if (*(a5 + 47) < 0)
    {
      sub_100005F2C(&__p, *(a5 + 24), *(a5 + 32));
    }

    else
    {
      __p = *(a5 + 24);
      v27 = *(a5 + 40);
    }

    v13 = *(a6 + 8);
    v22[1] = *a6;
    v23 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100906F30(1, &v34);
    *a7 = v34;
    v34 = 0uLL;
    if (v23)
    {
      sub_100004A34(v23);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v31)
    {
      sub_100004A34(v31);
    }

    if (v29)
    {
      sub_100004A34(v29);
    }

    if (v32)
    {
      dispatch_release(v32);
    }

    v14 = &v33;
  }

  return sub_10001021C(v14);
}

void sub_1002E73D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, const void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  v32 = *(v30 - 120);
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (object)
  {
    dispatch_release(object);
  }

  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::createTransferFlowController@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = a3;
  if (a2 == 1)
  {
    sub_100004AA0(&v4, (result + 40));
    sub_1002F4278();
  }

  if (a2 == 2)
  {
    sub_100004AA0(&v4, (result + 40));
    sub_1002F4018();
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1002E7594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::createPrivateNetworksController@<X0>(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  result = capabilities::ct::supportsCerberus(a1);
  if (result)
  {
    v11 = *a2;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    v12 = a4[1];
    v17 = *a4;
    v18 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = a3[1];
    v15 = *a3;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(v14, a1 + 5);
    v14[1] = v14[0];
    v14[0] = 0uLL;
    CellularPlanPrivateNetworksController::create();
  }

  *a5 = 0;
  a5[1] = 0;
  return result;
}

void sub_1002E76C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createPrivateNetworkTelemetryController(CellularPlanSettingsDevice *this, queue a2)
{
  v3 = *a2.fObj.fObj;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  sub_100004AA0(v4, this + 5);
  v4[1] = v4[0];
  v4[0] = 0uLL;
  PrivateNetworkTelemetryController::create();
}

void sub_1002E77D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCountryEstimator(CellularPlanSettingsDevice *this@<X0>, _OWORD *a2@<X8>)
{
  sub_100004AA0(&v3, this + 5);
  v4 = v3;
  v3 = 0uLL;
  sub_100991158(&v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  if (*(&v3 + 1))
  {
    sub_100004A34(*(&v3 + 1));
  }
}

void sub_1002E787C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createBootstrapPolicyManager(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a3 + 8);
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 64);
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BootstrapPolicyManager::create(&object, a4);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1002E7950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCellularPlanPolicyManager(CellularPlanSettingsDevice *this, queue a2)
{
  v5 = *a2.fObj.fObj;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_100004AA0(v4, this + 5);
  v4[1] = v4[0];
  v4[0] = 0uLL;
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003956A4();
}

void sub_1002E7A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createOffloadSIMController(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  v9 = *a2;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  sub_100643F7C();
}

void sub_1002E7B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createCoreUtilsMessageSessionHandler(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 8);
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a3 + 8);
  v8 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031E46C(&v9, &v13);
  *a4 = v13;
  v13 = 0uLL;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_1002E7CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_10176A750(v10 + 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCellularPlanDeliveryModel(uint64_t a1, dispatch_object_t *a2, void *a3)
{
  sub_100004AA0(v5, (a1 + 40));
  v5[1] = v5[0];
  v5[0] = 0uLL;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  *a3 = 0;
  a3[1] = 0;
  CellularPlanDeliveryModel::create();
}

void sub_1002E7D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_10176A784(&a12);
  _Unwind_Resume(a1);
}

void sub_1002E7E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E7EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::createCellularPlanControllerPhone(capabilities::ct *a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = capabilities::ct::supportsSIMProvisioningAsSignupSource(a1);
  if (v8)
  {
    v15[0] = 0;
    v15[1] = 0;
    v9 = *a2;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    sub_100004AA0(v13, a1 + 5);
    v13[1] = v13[0];
    v13[0] = 0uLL;
    v10 = *(a3 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a4 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    cellplan::CellularPlanControllerPhone::create(v15);
  }

  return v8;
}

void sub_1002E8138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::createCellularPlanControllerWatch@<X0>(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = capabilities::ct::supportsSIMProvisioningAsSignupDestination(a1);
  if (result)
  {
    v9 = *a2;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    sub_100004AA0(v11, a1 + 5);
    v11[1] = v11[0];
    v11[0] = 0uLL;
    v10 = *(a3 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100322AE8(&v13);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1002E8278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createSelectionControllerWatch(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_100004AA0(v7, (a1 + 40));
  v7[1] = v7[0];
  v7[0] = 0uLL;
  v6 = *(a3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100C022BC(&v9);
}

void sub_1002E8384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createEntitlementProvisioningMonitorMode(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a3 + 8);
  v12 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10013CFE4(&v13, a4, a5);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1002E8498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::createProvisioningMonitorMode@<X0>(uint64_t result@<X0>, int a2@<W1>, dispatch_object_t *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X6>, void *a6@<X8>)
{
  if (((1 << a2) & 0x35) == 0)
  {
    v8 = result;
    if (a2 == 1)
    {
      if (*a3)
      {
        dispatch_retain(*a3);
      }

      v9 = *(v8 + 64);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(a4 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *a5;
      if (*(a5 + 39) < 0)
      {
        sub_100005F2C(__p, *(a5 + 2), *(a5 + 3));
      }

      else
      {
        *__p = a5[1];
        __p[2] = *(a5 + 4);
      }

      v17 = *(a5 + 40);
      CellularPlanAttachProvisioningMonitorMode::create();
    }

    if (*a3)
    {
      dispatch_retain(*a3);
    }

    v11 = *(v8 + 64);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a4 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(a5 + 39) < 0)
    {
      sub_100005F2C(v13, *(a5 + 2), *(a5 + 3));
    }

    else
    {
      *v13 = a5[1];
      v13[2] = *(a5 + 4);
    }

    v14 = *(a5 + 40);
    CellularPlanAttachProvisioningMonitorMode::create();
  }

  *a6 = 0;
  a6[1] = 0;
  return result;
}

void sub_1002E8744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, dispatch_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E8794(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (!a18)
  {
    JUMPOUT(0x1002E878CLL);
  }

  JUMPOUT(0x1002E8788);
}

uint64_t CellularPlanSettingsDevice::createRemoteCommandReceiver@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  v3 = capabilities::ct::supportsSIMProvisioningAsSignupDestination(a1);
  if (v3 || (result = capabilities::ct::supportsRegisteredIDSService(v3), result))
  {
    sub_1002F4E54();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void CellularPlanSettingsDevice::createCellularPlanCarrierEntitlementHelper(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  v9 = *a2;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  sub_100BFE980();
}

void sub_1002E8904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(exception_object);
}

void *CellularPlanSettingsDevice::getCellularPlanControllerPhoneSettings@<X0>(CellularPlanSettingsDevice *this@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, this + 5);
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 8;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

void CellularPlanSettingsDevice::createDatabaseController(CellularPlanSettingsDevice *this, queue a2)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  v5 = sub_10000501C(&v17, WirelessUserDirectory);
  v6 = std::string::append(v5, "/Library/Preferences/no_backup", 0x1EuLL);
  v19 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  v7 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  size = v19.__r_.__value_.__l.__size_;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v19.__r_.__value_.__l.__size_;
  }

  memset(&v16, 0, sizeof(v16));
  v10 = &v16;
  sub_1000677C4(&v16, v9 + 1);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v16.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if (v7 >= 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, v9);
  }

  *(&v10->__r_.__value_.__l.__data_ + v9) = 47;
  v12 = std::string::append(&v16, "remoteplandb.sqlite", 0x13uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v18 = v12->__r_.__value_.__r.__words[2];
  v17 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002E8C98;
  block[3] = &unk_101E3E800;
  block[4] = this;
  if (v7 < 0)
  {
    sub_100005F2C(&__p, v19.__r_.__value_.__l.__data_, size);
  }

  else
  {
    __p = v19;
  }

  if (qword_101FBA1E0 != -1)
  {
    dispatch_once(&qword_101FBA1E0, block);
  }

  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_1002F50AC();
}

void sub_1002E8BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  if (v31 < 0)
  {
    operator delete(*(v32 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E8C84()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x1002E8C78);
  }

  JUMPOUT(0x1002E8C7CLL);
}

void sub_1002E8C98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  v4 = 0;
  Registry::getFileSystemInterface(&v3, *(v2 + 56));
  if (v3 && ((*(*v3 + 88))(v3, a1 + 40) & 1) == 0)
  {
    (*(*v3 + 72))();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002E8D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002E8D70(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1002E8D9C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t CellularPlanSettingsDevice::shouldResetVolteOnSignupIntent(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v20 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v20);
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
  (*(*v11 + 80))(&v18, v11, a2, 1, @"RemoteCardProvisioningSettings", 0, 0);
  sub_100010180(&theDict, &v18);
  sub_10000A1EC(&v18);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (!theDict)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"ResetVolteSettingOnSignupIntent");
  v14 = Value;
  LOBYTE(v20) = 0;
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v14, v16);
      LOBYTE(v14) = v20;
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v14) = 0;
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v14 & 1;
}

void sub_1002E8F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::resetVolteToDefault(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[7]);
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
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  (*(*v9 + 8))(&v11, v9, 1);
  (*(*v11 + 64))(v11, 2);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1002E90C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::enableLte(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[7]);
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
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (MaxDataRateInterface::getUserPreferenceEnableLTE(v9) != 2)
  {
    v13 = 0;
    (*(*v9 + 24))(v9, 1, 3, v12);
    sub_1002F5210(v12);
  }

LABEL_12:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1002E925C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002F5210(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createConnectivityProbe(CellularPlanSettingsDevice *this, queue a2, char a3)
{
  v4 = a3;
  sub_100004AA0(&v3, this + 5);
  sub_1002F5290();
}

void sub_1002E9310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E93A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::createUploadTriggersModel@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, void *a4@<X8>)
{
  if (*(result + 56))
  {
    sub_100004AA0(v8, (result + 40));
    v8[1] = v8[0];
    v8[0] = 0uLL;
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a3 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10078D2AC(&v9);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1002E958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176A7C4(v10 + 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCloudMonitor(uint64_t a1, uint64_t a2, dispatch_object_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v10 = *(a4 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a5 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a6 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100938A40();
}

void sub_1002E96D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10176A804(v11 + 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCellularPlanSourceTransferModel(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  CellularPlanSourceTransferModel::create(&v7);
}

void sub_1002E97D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10176A784(va);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createCellularPlanMultiplePlanInstallScheduler(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  sub_100004AA0(v6, (a1 + 40));
  v6[1] = v6[0];
  v6[0] = 0uLL;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10063E1E0();
}

void sub_1002E98CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_10176A784(&a12);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  values = @"PhoneAccountTransfer";
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v17 = 0;
  v18 = v14;
  v16 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v16, &v17);
  sub_100010250(&v16);
  sub_100010180(a7, &v17);
  sub_1000296E0(&v17);
  return sub_100010250(&v18);
}

void sub_1002E99FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **CellularPlanSettingsDevice::getLocalSmdpUrl_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict && CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
    v9 = Value;
    if (Value && (v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v9, @"LocalInstallSMDPURL"))
      {
        CFDictionaryGetValue(v9, @"LocalInstallSMDPURL");
        v16 = 0;
        v17 = 0uLL;
        ctu::cf::assign();
        v11 = v17;
        v12 = *(&v17 + 7);
        *a7 = v16;
        *(a7 + 8) = v11;
        *(a7 + 15) = v12;
        *(a7 + 23) = HIBYTE(v17);
      }
    }

    else
    {
      CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
      {
        sub_10176A858();
      }
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1002E9B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getTransferWebsheetUrl_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (theDict && CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
    v9 = Value;
    if (Value && (v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v9, @"TransferPageURL"))
      {
        CFDictionaryGetValue(v9, @"TransferPageURL");
        v16 = 0;
        v17 = 0uLL;
        ctu::cf::assign();
        v11 = v17;
        v12 = *(&v17 + 7);
        *a7 = v16;
        *(a7 + 8) = v11;
        *(a7 + 15) = v12;
        *(a7 + 23) = HIBYTE(v17);
      }
    }

    else
    {
      CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
      {
        sub_10176A858();
      }
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1002E9C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierAuthHost_sync@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v10)
    {
      v15 = result;
      values = @"CarrierAuthHost";
      v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v25 = v16;
      v23 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v23, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v23);
      if (theDict)
      {
        if (CFDictionaryContainsKey(theDict, @"CarrierAuthHost"))
        {
          CFDictionaryGetValue(theDict, @"CarrierAuthHost");
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          v18 = *buf;
          v17 = *&buf[8];
          v19 = *&buf[15];
          *a7 = *buf;
          *(a7 + 8) = v17;
          *(a7 + 15) = v19;
          v20 = buf[23];
          *(a7 + 23) = buf[23];
          v21 = *sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            if (v20 >= 0)
            {
              v22 = a7;
            }

            else
            {
              v22 = v18;
            }

            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Carrier auth host endpoint: [%s]", buf, 0xCu);
          }
        }
      }

      sub_10001021C(&theDict);
      return sub_100010250(&v25);
    }
  }

  return result;
}

void sub_1002E9EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10001021C(&a10);
  sub_100010250(&a11);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierAuthHostWithCarrierIdentification_sync(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void **a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a6 + 23);
  if (v7 < 0)
  {
    v7 = a6[1];
  }

  if (!v7)
  {
    v12 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Carrier identification is empty", buf, 2u);
    }

    sub_10000501C(buf, "");
    CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
    if (SBYTE7(v52) < 0)
    {
      operator delete(*buf);
    }

    return;
  }

  values = @"CarrierIdentificationToCarrierInformation";
  v9 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v64 = 0;
  v65 = v9;
  v63 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  CellularPlanSettingsDevice::getMatchingCountryBundleValuesByKeys(a1, a2, a3, &v63, &v64);
  sub_100010250(&v63);
  if (!v64 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v64)))
  {
    v11 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Failed to find key from country bundle", buf, 2u);
    }

    sub_10000501C(buf, "");
    CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
    goto LABEL_93;
  }

  v62 = v64;
  if (v64)
  {
    CFRetain(v64);
    *&v60 = v62;
    CFRetain(v62);
  }

  else
  {
    *&v60 = 0;
  }

  v59.__r_.__value_.__r.__words[0] = 0;
  *buf = 0;
  sub_10006DD00(buf, &v60);
  if (*buf)
  {
    sub_1002F5980(&v59.__r_.__value_.__l.__data_, buf);
  }

  sub_100010250(buf);
  *v49 = v59.__r_.__value_.__r.__words[0];
  v59.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&v59.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v60);
  v13 = *v49;
  sub_100010250(v49);
  sub_10000A1EC(&v62);
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    goto LABEL_90;
  }

  v15 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v15);
    v17 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v18 = CFGetTypeID(ValueAtIndex);
      if (v18 != CFDictionaryGetTypeID())
      {
        v17 = 0;
      }
    }

    Value = CFDictionaryGetValue(v17, @"CarrierIdentification");
    if (Value)
    {
      CFGetTypeID(Value);
      CFStringGetTypeID();
    }

    memset(buf, 0, sizeof(buf));
    *&v52 = 0;
    ctu::cf::assign();
    v61 = v52;
    v60 = *buf;
    v20 = a6[1];
    v21 = *(a6 + 23);
    v22 = SBYTE7(v52);
    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      v23 = HIBYTE(v61);
    }

    else
    {
      v23 = *(&v60 + 1);
    }

    if (v21 >= 0)
    {
      v20 = *(a6 + 23);
    }

    if (v23 != v20)
    {
      v26 = 0;
      if ((SBYTE7(v52) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_42:
      operator delete(v60);
      goto LABEL_43;
    }

    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      v24 = &v60;
    }

    else
    {
      v24 = v60;
    }

    if (v21 >= 0)
    {
      v25 = a6;
    }

    else
    {
      v25 = *a6;
    }

    v26 = memcmp(v24, v25, v23) == 0;
    if (v22 < 0)
    {
      goto LABEL_42;
    }

LABEL_43:
    if (v26)
    {
      break;
    }

    if (Count == ++v15)
    {
      goto LABEL_90;
    }
  }

  v27 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Found a matching carrier identification from bundle", buf, 2u);
  }

  v28 = CFDictionaryGetValue(v17, @"CarrierInformation");
  v29 = v28;
  if (v28)
  {
    v30 = CFGetTypeID(v28);
    if (v30 == CFArrayGetTypeID())
    {
      v60 = 0uLL;
      v61 = 0;
      sub_10000501C(&v60, "");
      v31 = CFArrayGetCount(v29);
      if (v31 < 1)
      {
LABEL_84:
        v38 = *sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Fallback to carrier bundle again", buf, 2u);
        }

        sub_10000501C(buf, "");
        CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
        if (SBYTE7(v52) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v32 = 0;
        while (1)
        {
          memset(&v59, 0, sizeof(v59));
          CFArrayGetValueAtIndex(v29, v32);
          memset(buf, 0, sizeof(buf));
          *&v52 = 0;
          ctu::cf::assign();
          *&v59.__r_.__value_.__l.__data_ = *buf;
          v59.__r_.__value_.__r.__words[2] = v52;
          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          *v54 = 0u;
          *v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          *buf = 0u;
          getCarrierInformation(&v59, buf);
          v33 = HIBYTE(v58);
          if (v58 < 0)
          {
            v33 = *(&v57 + 1);
          }

          if (v33)
          {
            sub_10000501C(__p, "");
            CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, &v52 + 8, v54, &v55[1], &v57, __p, v49);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60);
            }

            v60 = *v49;
            v61 = v50;
            HIBYTE(v50) = 0;
            v49[0] = 0;
            if (v48 < 0)
            {
              operator delete(__p[0]);
            }

            v34 = HIBYTE(v61);
            if (v61 < 0)
            {
              v34 = *(&v60 + 1);
            }

            if (v34)
            {
              v35 = *sGetCellularPlanSettingsDeviceLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Found a carrier auth URL with carrier identification", v49, 2u);
              }

              *a7 = v60;
              *(a7 + 16) = v61;
              v61 = 0;
              v60 = 0uLL;
              v36 = 1;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v37 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *v49 = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Skip using carrier information with empty GID2", v49, 2u);
            }

            v36 = 15;
          }

          if (SHIBYTE(v58) < 0)
          {
            operator delete(v57);
          }

          if (SHIBYTE(v56) < 0)
          {
            operator delete(v55[1]);
          }

          if (SHIBYTE(v55[0]) < 0)
          {
            operator delete(v54[0]);
          }

          if (SHIBYTE(v53) < 0)
          {
            operator delete(*(&v52 + 1));
          }

          if (SBYTE7(v52) < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }

          if (v36 != 15 && v36)
          {
            break;
          }

          if (v31 == ++v32)
          {
            goto LABEL_84;
          }
        }
      }

      if (SHIBYTE(v61) < 0)
      {
        v39 = v60;
        goto LABEL_95;
      }

      goto LABEL_96;
    }
  }

LABEL_90:
  v40 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I No matching carrier identification from country bundle and fallback to carrier bundle", buf, 2u);
  }

  sub_10000501C(buf, "");
  CellularPlanSettingsDevice::getCarrierAuthHost_sync(a1, a2, a3, a4, a5, buf, a7);
LABEL_93:
  if (SBYTE7(v52) < 0)
  {
    v39 = *buf;
LABEL_95:
    operator delete(v39);
  }

LABEL_96:
  sub_10000A1EC(&v64);
  sub_100010250(&v65);
}

void sub_1002EA6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 153) < 0)
  {
    operator delete(*(v31 - 176));
  }

  sub_10000A1EC((v31 - 128));
  sub_100010250((v31 - 120));
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getRemoteProvisioningSettings@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  *a2 = *(this + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *non-virtual thunk toCellularPlanSettingsDevice::getTimerService_sync@<X0>(Registry **this@<X0>, uint64_t *a2@<X8>)
{
  return Registry::getTimerService(a2, this[4]);
}

{
  return Registry::getTimerService(a2, this[3]);
}

void CellularPlanSettingsDevice::createBootstrapDataConnectionAssertion(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1006CB7F4(a2);
}

void sub_1002EA8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createProbeHttpRequest(void *a1@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  *a1 = 0;
  a1[1] = 0;
  sub_10000501C(&__p, "http://www.apple.com/library/test/success.html");
  ctu::Http::HttpRequest::create();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (*a1)
  {
    (*(**a1 + 152))(*a1, kCTDataConnectionServiceTypeInternetProbe);
    (*(**a1 + 176))(*a1, 1);
  }

  sub_1000DD0AC(&v5, v6[0]);
}

void sub_1002EA9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000DD0AC(&a17, a18);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createSimCommandOperationControl(CellularPlanSettingsDevice *this, queue a2)
{
  v3 = *a2.fObj.fObj;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  sub_100004AA0(&v5, this + 5);
  if (v5)
  {
    v4 = v5 + 24;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = v6;
  v5 = 0;
  v6 = 0;
  sub_100460DE4(&v10);
}

void sub_1002EAAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::resetSim_sync(CellularPlanSettingsDevice *this)
{
  v2 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Send sim reprovision APDU", v3, 2u);
  }

  CellularPlanSettingsDevice::reprovisionSim_sync(this);
}

void CellularPlanSettingsDevice::reprovisionSim_sync(CellularPlanSettingsDevice *this)
{
  v3 = 0x15F14430000000A0;
  v4 = 16868198;
  qmemcpy(v5, "CI1", sizeof(v5));
  v2 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1000DCF88(buf, &v3, &v6, 15);
  operator new();
}

void sub_1002EAEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  sub_100004A34(v17);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1002EAF78(id a1, BOOL a2)
{
  v2 = a2;
  v3 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sent SIM reprovision: %d", v4, 8u);
  }
}

uint64_t CellularPlanSettingsDevice::saveLastIccidToReset_sync(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (*(a2 + 31) < 0)
    {
      sub_100005F2C(v6, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *v6 = *(a2 + 8);
      v7 = *(a2 + 24);
    }

    if (SHIBYTE(v7) < 0)
    {
      sub_100005F2C(__p, v6[0], v6[1]);
    }

    else
    {
      *__p = *v6;
      v11 = v7;
    }

    v9 = 0;
    if (SHIBYTE(v11) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v13 = v11;
    }

    v14 = 0;
    if (ctu::cf::convert_copy())
    {
      v3 = v9;
      v9 = v14;
      v15 = v3;
      sub_100005978(&v15);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst);
    }

    v4 = v9;
    v8 = v9;
    v9 = 0;
    sub_100005978(&v9);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    v2 = kRemoteCellularPlanStorage;
    if (v4)
    {
      CFPreferencesSetAppValue(@"RemotePlanSimOperationLastResetKey", v4, kRemoteCellularPlanStorage);
    }

    sub_100005978(&v8);
  }

  else
  {
    v2 = kRemoteCellularPlanStorage;
    CFPreferencesSetAppValue(@"RemotePlanSimOperationLastResetKey", 0, kRemoteCellularPlanStorage);
  }

  return CFPreferencesAppSynchronize(v2);
}

void sub_1002EB1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::loadLastIccidToReset_sync@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  v7 = CFPreferencesCopyAppValue(@"RemotePlanSimOperationLastResetKey", kRemoteCellularPlanStorage);
  sub_100222990(&v6, &v7);
  if (v6)
  {
    v7 = 0;
    v8 = 0uLL;
    ctu::cf::assign();
    *&v9[7] = *(&v8 + 7);
    *v9 = v8;
    v3 = HIBYTE(v8);
    v4 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 23) = *&v9[7];
    *(a1 + 31) = v3;
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
  }

  return sub_100005978(&v6);
}

void sub_1002EB2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getCBSettingNeedsSimReset_sync(Registry **this)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(this[7]);
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
  v16 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v16);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  (*(*v9 + 40))(&cf, v9, kCarrier1BundleId, @"CardProvisioningRequiresResetTrigger", 0, 0);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  v11 = cf;
  LOBYTE(v16) = 0;
  if (cf)
  {
    v12 = CFGetTypeID(cf);
    if (v12 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v16, v11, v13);
      LOBYTE(v11) = v16;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v11 & 1;
}

void sub_1002EB484(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::getCBSettingNeedsSimReprovision_sync(Registry **this)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(this[7]);
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
  v16 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v16);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  (*(*v9 + 40))(&cf, v9, kCarrier1BundleId, @"CardSupportsReprovisionTrigger", 0, 0);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  v11 = cf;
  LOBYTE(v16) = 0;
  if (cf)
  {
    v12 = CFGetTypeID(cf);
    if (v12 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v16, v11, v13);
      LOBYTE(v11) = v16;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v11 & 1;
}

void sub_1002EB628(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

const void **CellularPlanSettingsDevice::getCarrierEntitlementsAndPushSettingsFromBundle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  values[0] = @"CarrierEntitlements";
  values[1] = @"PushSettings";
  v14 = CFArrayCreate(kCFAllocatorDefault, values, 2, &kCFTypeArrayCallBacks);
  theDict = 0;
  v43 = v14;
  v41 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v41, &theDict);
  sub_100010250(&v41);
  v40 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
    v16 = Value;
    if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v16);
      v19 = v40;
      v40 = MutableCopy;
      v37 = v19;
      sub_1000296E0(&v37);
      if (CFDictionaryContainsKey(v40, @"SupportedActions"))
      {
        theArray = 0;
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (Mutable)
        {
          v21 = theArray;
          theArray = Mutable;
          v37 = v21;
          sub_1000279DC(&v37);
        }

        v22 = CFDictionaryGetValue(v40, @"SupportedActions");
        v23 = v22;
        if (v22)
        {
          v24 = CFGetTypeID(v22);
          if (v24 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v23);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
                v28 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v29 = CFGetTypeID(ValueAtIndex);
                  if (v29 == CFStringGetTypeID() && (CFStringCompare(v28, @"TransferSIMService", 1uLL) == kCFCompareEqualTo || CFStringCompare(v28, @"transferAuthorization", 1uLL) == kCFCompareEqualTo))
                  {
                    sub_1002F5B6C(theArray, v28);
                  }
                }
              }
            }
          }
        }

        CFDictionaryRemoveValue(v40, @"SupportedActions");
        if (CFArrayGetCount(theArray) >= 1)
        {
          sub_1002B24E0(v40, @"SupportedActions", theArray);
        }

        sub_1000279DC(&theArray);
      }
    }

    else
    {
      CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
      {
        sub_10176A8D8();
      }
    }

    theArray = 0;
    if (theDict)
    {
      v31 = CFDictionaryGetValue(theDict, @"PushSettings");
      v32 = v31;
      if (v31)
      {
        v33 = CFGetTypeID(v31);
        if (v33 == CFDictionaryGetTypeID())
        {
          v34 = CFDictionaryCreateMutableCopy(0, 0, v32);
          v35 = theArray;
          theArray = v34;
          v37 = v35;
          sub_1000296E0(&v37);
        }
      }
    }
  }

  else
  {
    theArray = 0;
  }

  v37 = v40;
  if (v40)
  {
    CFRetain(v40);
  }

  v38 = theArray;
  if (theArray)
  {
    CFRetain(theArray);
  }

  sub_1002F2978(a7, &v37);
  sub_1000296E0(&v38);
  sub_1000296E0(&v37);
  sub_1000296E0(&theArray);
  sub_1000296E0(&v40);
  sub_1000296E0(&theDict);
  return sub_100010250(&v43);
}

void sub_1002EB9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  sub_1000279DC(va);
  sub_1000296E0(va1);
  sub_1000296E0(va2);
  sub_100010250(va3);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getLimitedCarrierEntitlementsBundleFromBundle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = 0;
  v7 = 0;
  (*(*a1 + 232))(&value);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v8 = 0;
    sub_1000296E0(&v8);
  }

  if (value)
  {
    CFDictionaryAddValue(theDict, @"CarrierEntitlements", value);
  }

  if (v7)
  {
    CFDictionaryAddValue(theDict, @"PushSettings", v7);
  }

  sub_100010180(a2, &theDict);
  sub_1000296E0(&theDict);
  sub_10001021C(&v7);
  return sub_10001021C(&value);
}

void sub_1002EBB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000296E0(&a9);
  sub_10001021C((v10 + 8));
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierSettingsForUsableSIM@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *v10 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    *v10 = Mutable;
    v11 = 0;
    sub_1000279DC(&v11);
    Mutable = *v10;
  }

  sub_1002F5B6C(Mutable, @"CarrierEntitlements");
  sub_1002F5B6C(*v10, @"PhoneNumberRegistrationGatewayAddress");
  sub_100010024(&v9, a2);
  sub_10002A7D8(&v8, v10);
  sub_1002E2AC4((a1 + 56), &v9, &v8, &v11);
  sub_100010180(a3, &v11);
  sub_1000296E0(&v11);
  sub_100010250(&v8);
  sub_10001021C(&v9);
  return sub_1000279DC(v10);
}

void sub_1002EBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12)
{
  sub_1000296E0(&a12);
  sub_100010250(&a9);
  sub_10001021C(&a10);
  sub_1000279DC(&a11);
  _Unwind_Resume(a1);
}

unint64_t CellularPlanSettingsDevice::isiPhonePlanTransferSupported_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  values = @"CarrierEntitlements";
  v12 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v25 = v12;
  v23 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v23, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v23);
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements"), (v14 = Value) != 0) && (v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
  {
    v21 = 0;
    v22 = 0;
    v16 = *(a1 + 64);
    v20 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    sub_100A80D48(v14, 8u, &v21);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v21)
    {
      v17 = (sub_100A80E30(v21) >> 13) & 1;
    }

    else
    {
      v17 = 0;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }
  }

  else
  {
    v17 = 0;
  }

  sub_10001021C(&theDict);
  v18 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I iPhone Transfer supported: [%d]", __p, 8u);
  }

  sub_100010250(&v25);
  return v17;
}

void sub_1002EBF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, int a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10001021C(&a16);
  sub_100010250(&a17);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isCrossPlatformTransferSupported_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  values = @"CarrierEntitlements";
  v12 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v29 = v12;
  v27 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v27, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v27);
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements"), (v14 = Value) != 0) && (v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
  {
    v25 = 0;
    v26 = 0;
    v16 = *(a1 + 64);
    v23 = *(a1 + 56);
    v24 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    sub_100A80D48(v14, 8u, &v25);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v25)
    {
      sub_100A83764(v25, @"SupportCrossPlatformSIMTransfer", __p);
      v17 = __p[0];
      LOBYTE(v23) = 0;
      if (__p[0])
      {
        v18 = CFGetTypeID(__p[0]);
        if (v18 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v23, v17, v19);
          LOBYTE(v17) = v23;
        }

        else
        {
          LOBYTE(v17) = 0;
        }
      }

      sub_10000A1EC(__p);
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    if (v26)
    {
      sub_100004A34(v26);
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  sub_10001021C(&theDict);
  sub_100010250(&v29);
  return v17 & 1;
}

void sub_1002EC1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, int a20, const void *a21, const void *a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C(&a21);
  sub_100010250(&a22);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isPasscodeRequiredForCrossPlatformTransfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresPasscodeForCrossPlatformTransfer"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I CrossPlatformPasscodeRequiredForTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"RequiresPasscodeForCrossPlatformTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I CrossPlatformPasscodeRequiredForTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002EC460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isEntitlementRequestViaWebServiceEnabled_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v28 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v13 = *v28;
    *v28 = Mutable;
    __p[0] = v13;
    sub_1000279DC(__p);
  }

  sub_1002F5B6C(*v28, @"CarrierEntitlements");
  theDict = 0;
  sub_10002A7D8(&v26, v28);
  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v26);
  if (!theDict)
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
  v15 = Value;
  if (!Value)
  {
    goto LABEL_17;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  v24 = 0;
  v25 = 0;
  v17 = *(a1 + 64);
  v22 = *(a1 + 56);
  v23 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_100A80D48(v15, 8u, &v24);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v18 = v24;
  if (v24)
  {
    LOBYTE(a1) = sub_100A8379C(v24, @"EntitlementRequestViaWebService", 0);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (!v18)
  {
LABEL_17:
    LOBYTE(a1) = 0;
  }

  sub_10001021C(&theDict);
  sub_1000279DC(v28);
  return a1 & 1;
}

void sub_1002EC66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, int a20, const void *a21, const void *a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C(&a21);
  sub_1000279DC(&a22);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isPhysicalToeSIMTransferSupported_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v28 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v13 = *v28;
    *v28 = Mutable;
    __p[0] = v13;
    sub_1000279DC(__p);
  }

  sub_1002F5B6C(*v28, @"CarrierEntitlements");
  theDict = 0;
  sub_10002A7D8(&v26, v28);
  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, __p);
  sub_100010180(&theDict, __p);
  sub_1000296E0(__p);
  sub_100010250(&v26);
  if (!theDict)
  {
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
  v15 = Value;
  if (!Value)
  {
    goto LABEL_17;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  v24 = 0;
  v25 = 0;
  v17 = *(a1 + 64);
  v22 = *(a1 + 56);
  v23 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_100A80D48(v15, 8u, &v24);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v18 = v24;
  if (v24)
  {
    LOBYTE(a1) = sub_100A8379C(v24, @"SupportPhysicalSIMtoESIMTransfer", 0);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (!v18)
  {
LABEL_17:
    LOBYTE(a1) = 0;
  }

  sub_10001021C(&theDict);
  sub_1000279DC(v28);
  return a1 & 1;
}

void sub_1002EC8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, int a20, const void *a21, const void *a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C(&a21);
  sub_1000279DC(&a22);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::setSubscriberId(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CarrierEntitlements::setSubscriberId();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1002EC994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::setServiceToken(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CarrierEntitlements::setServiceToken();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1002ECA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::setTransferTargetSlot(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CarrierEntitlements::setTransferTargetSlot();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1002ECA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *CellularPlanSettingsDevice::getCellularPlanControllerWatchSettings@<X0>(CellularPlanSettingsDevice *this@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, this + 5);
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 16;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

void CellularPlanSettingsDevice::sendRemoteSimSubscriptionInfoDidUpdate(uint64_t a1, int a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  v8 = xpc_int64_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = &v10;
  v7[1] = "kCTCellularPlanSimSubscriptionStatusKey";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  v7[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v7[0] = xpc_null_create();
  }

  v6 = xpc_null_create();
  sub_10002A37C(137, v7, &v6);
  xpc_release(v6);
  xpc_release(v7[0]);
  xpc_release(v10);
}

void sub_1002ECC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(*(v10 - 24));
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isLocationAvailable(CellularPlanSettingsDevice *this)
{
  result = +[CTLocationManager sharedManager];
  if (result)
  {
    v2 = result;
    result = [result isLocationServiceAuthorized];
    if (result)
    {
      [v2 startLocationUpdatesWithReason:"Cellular Plan"];
      return 1;
    }
  }

  return result;
}

uint64_t CellularPlanSettingsDevice::translateRegulatoryRestrictionErrorType(CellularPlanSettingsDevice *this)
{
  v1 = +[CTLocationManager sharedManager];
  if (!v1)
  {
    return 58;
  }

  v2 = v1;
  if (![v1 isLocationServiceEnabled])
  {
    return 59;
  }

  if ([v2 isLocationServiceAuthorized])
  {
    return 58;
  }

  return 60;
}

void CellularPlanSettingsDevice::getLatLong(CellularPlanSettingsDevice *this@<X0>, double *a2@<X8>)
{
  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  v4 = [+[CTLocationManager sharedManager](CTLocationManager "sharedManager")];
  v5 = v4;
  if (v4)
  {
    [v4 coordinate];
    v7 = v6;
    [v5 coordinate];
    *(a2 + 1) = v7;
    *(a2 + 2) = v8;
    *a2 = 1;
    v9 = [v5 sourceInformation];
    v10 = v9;
    if (v9)
    {
      if ([v9 isSimulatedBySoftware])
      {
        v11 = 1;
      }

      else
      {
        v11 = [v10 isProducedByAccessory];
      }

      v12 = v11 ^ 1;
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

  if (sub_10000BAA0())
  {
    cf = 0;
    (*(**(this + 9) + 40))(&cf);
    v13 = cf;
    if (cf)
    {
      LOBYTE(__p[0]) = 0;
      v14 = CFGetTypeID(cf);
      if (v14 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(__p, v13, v15);
      }

      v16 = LOBYTE(__p[0]);
    }

    else
    {
      v16 = 0;
    }

    v26 = 0.0;
    v27 = 0.0;
    v18 = sub_10005D028();
    sub_10000501C(__p, "SequoiaSignIdMap::LatitudeOverride");
    sub_100A107D8(v18, __p, &v27);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = sub_10005D028();
    sub_10000501C(__p, "SequoiaSignIdMap::LongitureOverride");
    sub_100A107D8(v19, __p, &v26);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 == 0.0 && v26 == 0.0)
    {
      sub_10000A1EC(&cf);
      if (((v16 | v12) & 1) != 0 || !v5)
      {
        return;
      }

      goto LABEL_29;
    }

    v21 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I overriding lat and long", __p, 2u);
    }

    v23 = v26;
    v22 = v27;
    if (!v5)
    {
      *a2 = 1;
    }

    a2[1] = v22;
    a2[2] = v23;
    sub_10000A1EC(&cf);
  }

  else
  {
    if (v5)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
LABEL_29:
      v20 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I block untrusted locations", __p, 2u);
      }

      *a2 = 0;
    }
  }
}

void sub_1002ED034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17)
{
  sub_10000A1EC(&a17);
  if (v18)
  {
    *v17 = 0;
  }

  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::writeToFileWithProtection(uint64_t a1, uint64_t *a2, id *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v7 = 0;
  if (!*a3 || ([*a3 writeToFile:v5 options:0x40000000 error:&v7] & 1) == 0)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A94C();
    }
  }
}

void CellularPlanSettingsDevice::writeToFile(uint64_t a1, uint64_t *a2, id *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (!*a3 || ([*a3 writeToFile:v5 atomically:1] & 1) == 0)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A9C0();
    }
  }
}

void CellularPlanSettingsDevice::readFromFile(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  v8 = 0;
  v9 = 0;
  Registry::getFileSystemInterface(&v8, *(a1 + 56));
  if (v8)
  {
    if ((*(*v8 + 88))(v8, a2))
    {
      (*(*v8 + 168))(&v7);
      if (&v7 != a3)
      {
        *buf = *a3;
        *a3 = v7;
        v7 = 0;
        sub_10002D760(buf);
      }

      sub_10002D760(&v7);
    }

    else
    {
      v6 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No cache file to load", buf, 2u);
      }
    }
  }

  else
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_10176A9F4();
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1002ED2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002D760(v12);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::removeFile(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v8 = 0;
  Registry::getFileSystemInterface(&v7, *(a1 + 56));
  if (v7)
  {
    if ((*(*v7 + 88))(v7, a2))
    {
      if ((*(*v7 + 112))(v7, a2))
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176AA28();
        }
      }
    }

    else
    {
      v5 = *sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        *buf = 136315138;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No cache file to remove: %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176A9F4();
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1002ED498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::requiresPairingSupported(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v20 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v20);
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
  (*(*v11 + 80))(&v18, v11, a2, 1, @"RemoteCardProvisioningSettings", 0, 0);
  sub_100010180(&theDict, &v18);
  sub_10000A1EC(&v18);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (!theDict)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"RequiresPairingSupportIndicator");
  v14 = Value;
  LOBYTE(v20) = 0;
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v14, v16);
      LOBYTE(v14) = v20;
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v14) = 0;
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v14 & 1;
}

void sub_1002ED658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::getMinWatchOsVersion(uint64_t a1, uint64_t a2, int a3)
{
  theDict = 0;
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
  v24 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v24);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v22, v13, a2, 1, @"RemoteCardProvisioningSettings", 0, 0);
  sub_100010180(&theDict, &v22);
  sub_10000A1EC(&v22);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (theDict)
  {
    if (a3 == 2)
    {
      CFDictionaryGetValue(theDict, @"MinCompatibleWatchOSForStandaloneMode");
    }

    else
    {
      CFDictionaryGetValue(theDict, @"MinCompatibleWatchOS");
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    ctu::cf::assign();
    v16 = v24;
    LODWORD(v22) = v26;
    *(&v22 + 3) = *(&v26 + 3);
    v17 = HIBYTE(v26);
    if (v26 < 0)
    {
      sub_100005F2C(__p, v24, v25);
    }

    else
    {
      __p[0] = v24;
      __p[1] = v25;
      *v20 = v22;
      *&v20[3] = *(&v22 + 3);
      v21 = HIBYTE(v26);
    }

    v15 = sub_100927A9C(__p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v17 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v16);
    goto LABEL_21;
  }

  v15 = 0;
LABEL_21:
  sub_10001021C(&theDict);
  return v15;
}

void sub_1002ED8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::getCarrierIdsAndAuthRespCodesToDisableColdPhysicalSim(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memset(v75, 0, sizeof(v75));
  v74 = 0u;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __src = 0;
  v69 = 0;
  v70 = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    goto LABEL_56;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
LABEL_56:
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    a7[3] = 0;
    v74 = 0uLL;
    v75[0] = 0;
    v75[1] = 0;
    a7[4] = 0;
    a7[5] = 0;
    v75[2] = 0;
    v75[3] = 0;
    goto LABEL_68;
  }

  values = @"SupportDualSimSuppressionOnColdPhysicalSIM";
  v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v67 = v16;
  v65 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v65, &v55);
  sub_100010180(&theDict, &v55.__r_.__value_.__l.__data_);
  sub_1000296E0(&v55.__r_.__value_.__l.__data_);
  sub_100010250(&v65);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SupportDualSimSuppressionOnColdPhysicalSIM");
    v18 = Value;
    if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v18, @"SIMsRequireSuppression") && CFDictionaryContainsKey(v18, @"AuthRespCodesRequireSuppression"))
      {
        v20 = CFDictionaryGetValue(v18, @"AuthRespCodesRequireSuppression");
        v21 = v20;
        if (v20 && (v22 = CFGetTypeID(v20), v22 == CFArrayGetTypeID()))
        {
          v23 = CFDictionaryGetValue(v18, @"SIMsRequireSuppression");
          v24 = v23;
          if (v23)
          {
            v25 = CFGetTypeID(v23);
            if (v25 == CFArrayGetTypeID())
            {
              Count = CFArrayGetCount(v21);
              if (Count >= 1)
              {
                for (i = 0; i != Count; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                  v30 = ValueAtIndex;
                  if (ValueAtIndex)
                  {
                    v31 = CFGetTypeID(ValueAtIndex);
                    if (v31 == CFNumberGetTypeID())
                    {
                      v32 = v30;
                    }

                    else
                    {
                      v32 = 0;
                    }
                  }

                  else
                  {
                    v32 = 0;
                  }

                  LODWORD(v55.__r_.__value_.__l.__data_) = 0;
                  ctu::cf::assign(&v55, v32, v29);
                  v33 = v69;
                  if (v69 >= v70)
                  {
                    v35 = __src;
                    v36 = v69 - __src;
                    v37 = (v69 - __src) >> 2;
                    v38 = v37 + 1;
                    if ((v37 + 1) >> 62)
                    {
                      sub_1000CE3D4();
                    }

                    v39 = v70 - __src;
                    if ((v70 - __src) >> 1 > v38)
                    {
                      v38 = v39 >> 1;
                    }

                    if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v40 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v40 = v38;
                    }

                    if (v40)
                    {
                      sub_100016740(&__src, v40);
                    }

                    *(4 * v37) = v55.__r_.__value_.__l.__data_;
                    v34 = 4 * v37 + 4;
                    memcpy(0, v35, v36);
                    v41 = __src;
                    __src = 0;
                    v69 = v34;
                    v70 = 0;
                    if (v41)
                    {
                      operator delete(v41);
                    }
                  }

                  else
                  {
                    *v69 = v55.__r_.__value_.__l.__data_;
                    v34 = (v33 + 4);
                  }

                  v69 = v34;
                }
              }

              v42 = CFArrayGetCount(v24);
              if (v42 >= 1)
              {
                for (j = 0; j != v42; ++j)
                {
                  memset(&v64, 0, sizeof(v64));
                  CFArrayGetValueAtIndex(v24, j);
                  memset(&v55, 0, sizeof(v55));
                  ctu::cf::assign();
                  v64 = v55;
                  getCarrierIdentifier(&v64, &v55);
                  v44 = v72;
                  if (v72 >= v73)
                  {
                    v72 = sub_1002F29C4(&v71, &v55);
                    if (SHIBYTE(v63) < 0)
                    {
                      operator delete(__p);
                    }
                  }

                  else
                  {
                    v45 = *&v55.__r_.__value_.__l.__data_;
                    *(v72 + 16) = *(&v55.__r_.__value_.__l + 2);
                    *v44 = v45;
                    memset(&v55, 0, sizeof(v55));
                    v46 = v57;
                    *(v44 + 24) = v56;
                    *(v44 + 40) = v46;
                    v56 = 0uLL;
                    v47 = v58;
                    *(v44 + 64) = v59;
                    *(v44 + 48) = v47;
                    v59 = 0;
                    v57 = 0;
                    v58 = 0uLL;
                    v48 = v60;
                    *(v44 + 88) = v61;
                    *(v44 + 72) = v48;
                    v60 = 0uLL;
                    v49 = __p;
                    *(v44 + 112) = v63;
                    *(v44 + 96) = v49;
                    v61 = 0;
                    __p = 0uLL;
                    v63 = 0;
                    v72 = v44 + 120;
                  }

                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v60);
                  }

                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(v58);
                  }

                  if (SHIBYTE(v57) < 0)
                  {
                    operator delete(v56);
                  }

                  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v55.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v64.__r_.__value_.__l.__data_);
                  }
                }
              }

              sub_1002F2E74(a7, &v71, &__src);
              goto LABEL_66;
            }
          }
        }

        else
        {
          CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
          {
            sub_10176AA98();
          }
        }
      }

      else
      {
        v52 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
        {
          sub_10176AACC();
        }
      }
    }

    else
    {
      v50 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        sub_10176A598();
      }
    }
  }

  else
  {
    v51 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      sub_10176A5CC();
    }
  }

  *a7 = v74;
  v54 = v75[3];
  a7[2] = v75[0];
  v74 = 0uLL;
  *(a7 + 3) = *&v75[1];
  a7[5] = v54;
  memset(v75, 0, sizeof(v75));
LABEL_66:
  sub_10001021C(&theDict);
  sub_100010250(&v67);
  if (__src)
  {
    v69 = __src;
    operator delete(__src);
  }

LABEL_68:
  v55.__r_.__value_.__r.__words[0] = &v71;
  sub_10016DD88(&v55);
  if (v75[1])
  {
    v75[2] = v75[1];
    operator delete(v75[1]);
  }

  v55.__r_.__value_.__r.__words[0] = &v74;
  sub_10016DD88(&v55);
}

void sub_1002EDF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, int a35, const void *a36, const void *a37, void *__p, uint64_t a39)
{
  sub_10001021C(&a36);
  sub_100010250(&a37);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  __p = (v39 - 184);
  sub_10016DD88(&__p);
  sub_10016DD40(v39 - 160);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::enableAttachMonitorMode_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"EnableAttachMonitorMode"))
          {
            v18 = CFDictionaryGetValue(v16, @"EnableAttachMonitorMode");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (v18)
            {
              v20 = CFGetTypeID(v18);
              if (v20 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&v27, v19, v21);
                LOBYTE(v19) = v27;
              }

              else
              {
                LOBYTE(v19) = 0;
              }
            }

            goto LABEL_22;
          }

          CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
          {
            sub_10176AB00();
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 1;
LABEL_22:
      sub_10001021C(&theDict);
      sub_100010250(&v29);
      return v19 & 1;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002EE234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::requireEntitlementCheckForAttachMonitorMode_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      values = @"CellularPlanProvisioningSettings";
      v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v29 = v14;
      v26 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a2, a3, a4, a5, a6, &v26, &v27);
      sub_100010180(&theDict, &v27);
      sub_1000296E0(&v27);
      sub_100010250(&v26);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v16 = Value;
        if (Value && (v17 = CFGetTypeID(Value), v17 == CFDictionaryGetTypeID()))
        {
          if (CFDictionaryContainsKey(v16, @"RequireEntitlementCheckForAttachMonitorMode"))
          {
            v18 = CFDictionaryGetValue(v16, @"RequireEntitlementCheckForAttachMonitorMode");
            v19 = v18;
            LOBYTE(v27) = 0;
            if (!v18)
            {
LABEL_22:
              sub_10001021C(&theDict);
              sub_100010250(&v29);
              return v19 & 1;
            }

            v20 = CFGetTypeID(v18);
            if (v20 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v27, v19, v21);
              LOBYTE(v19) = v27;
              goto LABEL_22;
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176AB34();
            }
          }
        }

        else
        {
          v22 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v23 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      LOBYTE(v19) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

void sub_1002EE4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void sub_1002EE5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002EE688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *CellularPlanSettingsDevice::getSubscriptionHost@<X0>(_BYTE *a1@<X8>)
{
  v8 = -1;
  v3 = sub_10005D028();
  sub_10000501C(__p, "TestEnvIndexKey");
  sub_1002D5DB8(v3, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 >= 7)
  {
    v4 = "https://sq-device.apple.com/customer/";
  }

  else
  {
    v4 = off_101E3F1E0[v8];
  }

  return sub_10000501C(a1, v4);
}

void sub_1002EE7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSettingsDevice::saveBootstrapProvisioningInfo(uint64_t a1, CFPropertyListRef *a2)
{
  v2 = kCommCenterPreferencesNoBackupAppID;
  CFPreferencesSetValue(@"BootstrapProvisioningState", *a2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return CFPreferencesSynchronize(v2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

uint64_t CellularPlanSettingsDevice::setValue(CellularPlanSettingsDevice *this, const __CFString *a2, const void *a3)
{
  (*(**(this + 9) + 16))(*(this + 9), a2, a3, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v4 = *(**(this + 9) + 48);

  return v4();
}

void CellularPlanSettingsDevice::createEnablePlanSelectionAlert(UserAlertGenerationInterface *a1)
{
  v1 = 0;
  v2 = 0;
  UserAlertGenerationInterface::create(a1);
}

void sub_1002EF2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, dispatch_object_t object, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, const void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, uint64_t a36, uint64_t a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100005978(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100005978(&a26);
  sub_100005978(&a31);
  sub_100005978(&a32);
  sub_100005978(&a33);
  sub_100005978(&a34);
  sub_100005978(&a35);
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002EF58C(uint64_t a1)
{
  sub_1002F31C8(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void CellularPlanSettingsDevice::createSecureIntentController(CellularPlanSettingsDevice *this, queue a2)
{
  sub_100004AA0(v3, this + 5);
  v3[1] = v3[0];
  v3[0] = 0uLL;
  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_1009A2DE8();
}

void sub_1002EF690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_10176A750(v10 | 8);
  _Unwind_Resume(a1);
}

void CellularPlanSettingsDevice::createDtoEvaluator(CellularPlanSettingsDevice *this, queue a2)
{
  if (*a2.fObj.fObj)
  {
    dispatch_retain(*a2.fObj.fObj);
  }

  sub_100A7EDC0();
}

void sub_1002EF704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createOffloadRecoveryMonitorMode(uint64_t a1, dispatch_object_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = *(a4 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005CA214(&v6);
}

void sub_1002EF7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createDelayProvisioningMonitorMode(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v11 = *a4;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v10 = *(a5 + 16);
  }

  sub_10071D134();
}

void sub_1002EF8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createRecoveryDelayProvisioningMonitorMode(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = a4[1];
  v15 = *a4;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v14 = *(a5 + 16);
  }

  v12 = *(a7 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10018DCB8();
}

void sub_1002EFA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, dispatch_object_t object)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createRetryTransferMonitorMode(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v11 = *a4;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v10 = *(a5 + 16);
  }

  sub_1005A9014();
}

void sub_1002EFB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::getMonitorModeBackoffTimes(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void **a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  if (a2 == 2)
  {
    *buf = *"x";
    v57 = unk_1017EDEE8;
    v58 = xmmword_1017EDEF8;
    v59 = 3600;
    values[1] = 0;
    v62 = 0;
    values[0] = 0;
    sub_1002F3248(values, buf, &v60, 7uLL);
LABEL_10:
    v18 = *a8;
    if (*a8)
    {
      a8[1] = v18;
      operator delete(v18);
    }

    *a8 = *values;
    v17 = v62;
    goto LABEL_13;
  }

  if (a2 != 4)
  {
    if (a2 == 1)
    {
      *buf = xmmword_1017EDF10;
      v57 = unk_1017EDF20;
      v58 = xmmword_1017EDF30;
      values[1] = 0;
      v62 = 0;
      values[0] = 0;
      sub_1002F3248(values, buf, &v59, 6uLL);
    }

    else
    {
      *buf = xmmword_1017EDF40;
      v57 = unk_1017EDF50;
      v58 = xmmword_1017EDF60;
      v59 = 1200;
      values[1] = 0;
      v62 = 0;
      values[0] = 0;
      sub_1002F3248(values, buf, &v60, 7uLL);
    }

    goto LABEL_10;
  }

  values[0] = 30;
  *&v57 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1002F3248(buf, values, &values[1], 1uLL);
  v16 = *a8;
  if (*a8)
  {
    a8[1] = v16;
    operator delete(v16);
  }

  *a8 = *buf;
  v17 = v57;
LABEL_13:
  a8[2] = v17;
  v19 = *(a3 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a3 + 8);
  }

  if (v19)
  {
    v20 = *(a4 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a4 + 8);
    }

    if (v20)
    {
      values[0] = @"CellularPlanProvisioningSettings";
      v21 = CFArrayCreate(kCFAllocatorDefault, values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v55 = v21;
      v53 = v21;
      if (v21)
      {
        CFRetain(v21);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a3, a4, a5, a6, a7, &v53, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v53);
      if (!theDict)
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }

        goto LABEL_32;
      }

      Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
      v23 = Value;
      if (!Value || (v24 = CFGetTypeID(Value), v24 != CFDictionaryGetTypeID()))
      {
        v27 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
        {
          sub_10176A598();
        }

        goto LABEL_32;
      }

      if (a2 == 2)
      {
        if (!CFDictionaryContainsKey(v23, @"DelayMonitorModeBackoffTimes"))
        {
          v50 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
          {
            sub_10176AC6C();
          }

          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(v23, @"DelayMonitorModeBackoffTimes");
        v26 = v25;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      else if (a2 == 4)
      {
        if (!CFDictionaryContainsKey(v23, @"RetryTransferMonitorModeBackoffTimes"))
        {
          v51 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
          {
            sub_10176AC04();
          }

          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(v23, @"RetryTransferMonitorModeBackoffTimes");
        v26 = v25;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!CFDictionaryContainsKey(v23, @"AttachMonitorModeBackoffTimes"))
        {
          v52 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
          {
            sub_10176ABD0();
          }

          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(v23, @"AttachMonitorModeBackoffTimes");
        v26 = v25;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      v29 = CFGetTypeID(v25);
      if (v29 == CFArrayGetTypeID())
      {
        a8[1] = *a8;
        Count = CFArrayGetCount(v26);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
            v34 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v35 = CFGetTypeID(ValueAtIndex);
              if (v35 == CFNumberGetTypeID())
              {
                v36 = v34;
              }

              else
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
            }

            *buf = 0;
            ctu::cf::assign(buf, v36, v33);
            v38 = a8[1];
            v37 = a8[2];
            if (v38 >= v37)
            {
              v40 = *a8;
              v41 = v38 - *a8;
              v42 = v41 >> 3;
              v43 = (v41 >> 3) + 1;
              if (v43 >> 61)
              {
                sub_1000CE3D4();
              }

              v44 = v37 - v40;
              if (v44 >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF8)
              {
                v45 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                sub_10006A8B4(a8, v45);
              }

              *(8 * v42) = *buf;
              v39 = 8 * v42 + 8;
              memcpy(0, v40, v41);
              v46 = *a8;
              *a8 = 0;
              a8[1] = v39;
              a8[2] = 0;
              if (v46)
              {
                operator delete(v46);
              }
            }

            else
            {
              *v38 = *buf;
              v39 = (v38 + 8);
            }

            a8[1] = v39;
          }
        }

        v47 = *sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = (a8[1] - *a8) >> 3;
          *buf = 134217984;
          *&buf[4] = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I MonitorModeBackoffTimes [%lu]", buf, 0xCu);
        }

LABEL_32:
        sub_10001021C(&theDict);
        sub_100010250(&v55);
        return;
      }

LABEL_63:
      v49 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
      {
        sub_10176AC38();
      }

      goto LABEL_32;
    }
  }
}

void sub_1002F0140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isSupportsTransferRecoveryOnSMDP(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"SupportsTransferRecoveryOnSMDP"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SupportsTransferRecoveryOnSMDP not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"SupportsTransferRecoveryOnSMDP");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I SupportsTransferRecoveryOnSMDP is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F03FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isTransferSupportedOverCloud(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"TransferSupportedOverCloud"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I TransferSupportedOverCloud not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 1;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"TransferSupportedOverCloud");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I TransferSupportedOverCloud is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F0640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isDeletePlanBeforeTransferRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresDeleteBeforeTransfer"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I RequiresDeleteBeforeTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"RequiresDeleteBeforeTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I kRequiresDeleteBeforeTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F0884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isDeletePlanAfterTransferRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresDeleteAfterTransfer"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I RequiresDeleteAfterTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 1;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"RequiresDeleteAfterTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I kRequiresDeleteAfterTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F0AC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierCharacteristicValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  theDict = 0;
  v20 = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict || !CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Value);
  v10 = v20;
  v20 = Copy;
  *buf = v10;
  sub_10001021C(buf);
  if (!v20 || !CFDictionaryContainsKey(v20, @"CarrierCharacteristics"))
  {
    v16 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I CarrierCharacteristics not present in CB", buf, 2u);
    }

LABEL_13:
    a7[2] = 0;
    a7[1] = 0;
    *a7 = a7 + 1;
    goto LABEL_14;
  }

  a7[2] = 0;
  a7[1] = 0;
  *a7 = a7 + 1;
  v11 = CFDictionaryGetValue(v20, @"CarrierCharacteristics");
  Count = CFArrayGetCount(v11);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      CFArrayGetValueAtIndex(v11, i);
      memset(buf, 0, sizeof(buf));
      v22 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v18 = v22;
      sub_100005BA0(a7, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_14:
  sub_10001021C(&theDict);
  return sub_10001021C(&v20);
}

void sub_1002F0CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100009970(v23, *(v23 + 8));
  sub_10001021C(&a16);
  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierCharacteristicValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  theDict = 0;
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(__p, v13, a2, 1, @"PhoneAccountTransfer", 0, 0);
  sub_100010180(&theDict, __p);
  sub_10000A1EC(__p);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!theDict)
  {
    v22 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = subscriber::asString();
      sub_10176ACA0(v23, buf, v22);
    }

    goto LABEL_24;
  }

  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
  v16 = v28;
  v28 = Copy;
  *buf = v16;
  sub_10001021C(buf);
  if (!v28 || !CFDictionaryContainsKey(v28, @"CarrierCharacteristics"))
  {
    v20 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I CarrierCharacteristics not present in CB for slot: [%s]", buf, 0xCu);
    }

LABEL_24:
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    goto LABEL_25;
  }

  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  Value = CFDictionaryGetValue(v28, @"CarrierCharacteristics");
  Count = CFArrayGetCount(Value);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      CFArrayGetValueAtIndex(Value, i);
      memset(buf, 0, sizeof(buf));
      v30 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v26 = v30;
      sub_100005BA0(a3, __p);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_25:
  sub_10001021C(&theDict);
  return sub_10001021C(&v28);
}

uint64_t CellularPlanSettingsDevice::shouldPadIccidWithChecksum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"PadIccidWithCheckSum"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I PadIccidWithCheckSum not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"PadIccidWithCheckSum");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PadIccidWithCheckSum is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F12FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getMCCsOfSupportedSIMs_sync@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[2] = 0;
  a7[1] = 0;
  *a7 = a7 + 1;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v14 = result;
    values = @"SupportedSIMs";
    v15 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    v35 = 0;
    v36 = v15;
    v34 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v14, a2, a3, a4, a5, a6, &v34, v25);
    sub_100010180(&v35, v25);
    sub_1000296E0(v25);
    sub_100010250(&v34);
    if (v35)
    {
      Value = CFDictionaryGetValue(v35, @"SupportedSIMs");
      v17 = Value;
      if (Value && (v18 = CFGetTypeID(Value), v18 == CFArrayGetTypeID()))
      {
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            memset(&v33, 0, sizeof(v33));
            CFArrayGetValueAtIndex(v17, i);
            v25[0] = 0;
            v25[1] = 0;
            v26[0] = 0;
            ctu::cf::assign();
            *&v33.__r_.__value_.__l.__data_ = *v25;
            v33.__r_.__value_.__r.__words[2] = v26[0];
            v32 = 0;
            v30 = 0u;
            *__p = 0u;
            *v28 = 0u;
            *v29 = 0u;
            *v26 = 0u;
            v27 = 0u;
            *v25 = 0u;
            getCarrierInformation(&v33, v25);
            v21 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              if (v27 >= 0)
              {
                v22 = &v26[1];
              }

              else
              {
                v22 = v26[1];
              }

              *buf = 136315138;
              v38 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Adding MCC [%s]", buf, 0xCu);
            }

            sub_100073EE8(a7, &v26[1]);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
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

            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176ACE8();
        }
      }
    }

    else
    {
      v24 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        sub_10176A5CC();
      }
    }

    sub_10001021C(&v35);
    return sub_100010250(&v36);
  }

  return result;
}

void sub_1002F1654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10001021C((v36 - 128));
  sub_100010250((v36 - 120));
  sub_100009970(v35, *(v35 + 8));
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getPlanAutoInstallBackoffTimes_sync@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v10)
    {
      v15 = result;
      values = @"CellularPlanProvisioningSettings";
      v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v47 = v16;
      v45 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v45, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v45);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v18 = Value;
        if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
        {
          v20 = CFDictionaryGetValue(v18, @"PlanAutoInstallBackoffTimes");
          v21 = v20;
          if (v20 && (v22 = CFGetTypeID(v20), v22 == CFArrayGetTypeID()))
          {
            Count = CFArrayGetCount(v21);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                v27 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v28 = CFGetTypeID(ValueAtIndex);
                  if (v28 == CFNumberGetTypeID())
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                *buf = 0;
                ctu::cf::assign(buf, v29, v26);
                v31 = a7[1];
                v30 = a7[2];
                if (v31 >= v30)
                {
                  v33 = *a7;
                  v34 = v31 - *a7;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_10006A8B4(a7, v38);
                  }

                  *(8 * v35) = *buf;
                  v32 = 8 * v35 + 8;
                  memcpy(0, v33, v34);
                  v39 = *a7;
                  *a7 = 0;
                  a7[1] = v32;
                  a7[2] = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v31 = *buf;
                  v32 = (v31 + 8);
                }

                a7[1] = v32;
              }
            }

            v40 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = (a7[1] - *a7) >> 3;
              *buf = 134217984;
              v49 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I PlanAutoInstallBackoffTimes [%lu]", buf, 0xCu);
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176AC38();
            }
          }
        }

        else
        {
          v42 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v43 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      sub_10001021C(&theDict);
      return sub_100010250(&v47);
    }
  }

  return result;
}

void sub_1002F1AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportsSimultaneousSIMTransfer_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_11;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"SupportsSimultaneousSIMTransfer"))
  {
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v8 = CFDictionaryGetValue(Value, @"SupportsSimultaneousSIMTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v16 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "false";
    if (v12)
    {
      v17 = "true";
    }

    if (*(a6 + 23) >= 0)
    {
      v18 = a6;
    }

    else
    {
      v18 = *a6;
    }

    *buf = 136315394;
    v21 = v17;
    v22 = 2080;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I SupportsSimultaneousSIMTransfer is set to %s for ICCID: [%s]", buf, 0x16u);
  }

LABEL_12:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F1CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getAdditionalRejectCauseCodes@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v10)
    {
      v15 = result;
      values = @"CellularPlanProvisioningSettings";
      v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v47 = v16;
      v45 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v45, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v45);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v18 = Value;
        if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
        {
          v20 = CFDictionaryGetValue(v18, @"AdditionalRejectCauseCodesForAttachMonitorMode");
          v21 = v20;
          if (v20 && (v22 = CFGetTypeID(v20), v22 == CFArrayGetTypeID()))
          {
            Count = CFArrayGetCount(v21);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                v27 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v28 = CFGetTypeID(ValueAtIndex);
                  if (v28 == CFNumberGetTypeID())
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                *buf = 0;
                ctu::cf::assign(buf, v29, v26);
                v31 = a7[1];
                v30 = a7[2];
                if (v31 >= v30)
                {
                  v33 = *a7;
                  v34 = v31 - *a7;
                  v35 = v34 >> 2;
                  v36 = (v34 >> 2) + 1;
                  if (v36 >> 62)
                  {
                    sub_1000CE3D4();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 1 > v36)
                  {
                    v36 = v37 >> 1;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v38 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_100016740(a7, v38);
                  }

                  *(4 * v35) = *buf;
                  v32 = 4 * v35 + 4;
                  memcpy(0, v33, v34);
                  v39 = *a7;
                  *a7 = 0;
                  a7[1] = v32;
                  a7[2] = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v31 = *buf;
                  v32 = (v31 + 4);
                }

                a7[1] = v32;
              }
            }

            v40 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = (a7[1] - *a7) >> 2;
              *buf = 134217984;
              v49 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I AdditionalRejectCauseCodesForAttachMonitorMode [%lu]", buf, 0xCu);
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176AD1C();
            }
          }
        }

        else
        {
          v42 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v43 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      sub_10001021C(&theDict);
      return sub_100010250(&v47);
    }
  }

  return result;
}

void sub_1002F20BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getAdditionalAttachMonitorModeBackoffTimes@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X8>)
{
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    goto LABEL_37;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
LABEL_37:
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    return result;
  }

  v15 = result;
  values = @"CellularPlanProvisioningSettings";
  v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v48 = v16;
  v46 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v46, buf);
  sub_100010180(&theDict, buf);
  sub_1000296E0(buf);
  sub_100010250(&v46);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
    v18 = Value;
    if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v18, @"AdditionalAttachMonitorModeBackoffTimes"))
      {
        v20 = CFDictionaryGetValue(v18, @"AdditionalAttachMonitorModeBackoffTimes");
        v21 = v20;
        if (v20)
        {
          v22 = CFGetTypeID(v20);
          if (v22 == CFArrayGetTypeID())
          {
            *a7 = 0;
            a7[1] = 0;
            a7[2] = 0;
            Count = CFArrayGetCount(v21);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                v27 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v28 = CFGetTypeID(ValueAtIndex);
                  if (v28 == CFNumberGetTypeID())
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                *buf = 0;
                ctu::cf::assign(buf, v29, v26);
                v31 = a7[1];
                v30 = a7[2];
                if (v31 >= v30)
                {
                  v33 = *a7;
                  v34 = v31 - *a7;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_10006A8B4(a7, v38);
                  }

                  *(8 * v35) = *buf;
                  v32 = 8 * v35 + 8;
                  memcpy(0, v33, v34);
                  v39 = *a7;
                  *a7 = 0;
                  a7[1] = v32;
                  a7[2] = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v31 = *buf;
                  v32 = (v31 + 8);
                }

                a7[1] = v32;
              }
            }

            v40 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = (a7[1] - *a7) >> 3;
              *buf = 134217984;
              v50 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I AdditionalAttachMonitorModeBackoffTimes [%lu]", buf, 0xCu);
            }

            goto LABEL_43;
          }
        }

        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176AC38();
        }
      }

      else
      {
        v45 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
        {
          sub_10176AC6C();
        }
      }
    }

    else
    {
      v42 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
      {
        sub_10176A598();
      }
    }
  }

  else
  {
    v43 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      sub_10176A5CC();
    }
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_43:
  sub_10001021C(&theDict);
  return sub_100010250(&v48);
}

void sub_1002F252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void sub_1002F25C0(void *a1)
{
  sub_1002F32BC(a1);

  operator delete();
}

void sub_1002F2600(uint64_t a1)
{
  sub_1002F32BC((a1 - 8));

  operator delete();
}

void sub_1002F2644(uint64_t a1)
{
  sub_1002F32BC((a1 - 16));

  operator delete();
}

void sub_1002F2688(uint64_t a1)
{
  sub_1002F32BC((a1 - 24));

  operator delete();
}

void sub_1002F26CC(uint64_t a1)
{
  sub_1002F32BC((a1 - 32));

  operator delete();
}

uint64_t sub_1002F2708(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_1002F2788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F27AC(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002F2830(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1002F2898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1002F28B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
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
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1002F2940(v7);
  return v4;
}

uint64_t sub_1002F2940(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

void *sub_1002F2978(void *a1, CFTypeRef *a2)
{
  v4 = sub_100010180(a1, a2);
  sub_100010180(v4 + 1, a2 + 1);
  return a1;
}

uint64_t sub_1002F29C4(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_1000CE3D4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_1002F2B5C(a1, v6);
  }

  v7 = 120 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 11);
  *(v7 + 72) = v11;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v12 = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 96) = v12;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *&v21 = 120 * v2 + 120;
  v13 = a1[1];
  v14 = 120 * v2 + *a1 - v13;
  sub_1002F2BB4(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1002F2DF4(&v19);
  return v18;
}

void sub_1002F2B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002F2DF4(va);
  _Unwind_Resume(a1);
}

void sub_1002F2B5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1002F2BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v12 = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(a4 + 96) = v12;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v7 += 120;
      a4 += 120;
    }

    while (v7 != a3);
    v17 = a4;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_1002F2CE0(a1, v5);
      v5 += 120;
    }
  }

  return sub_1002F2D68(v14);
}

void sub_1002F2CE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1002F2D68(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1002F2DA0(a1);
  }

  return a1;
}

void sub_1002F2DA0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      sub_1002F2CE0(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1002F2DF4(uint64_t a1)
{
  sub_1002F2E2C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002F2E2C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    sub_1002F2CE0(v5, v4 - 120);
  }
}

void *sub_1002F2E74(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1002F2F00(a1, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_10024064C((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_1002F2EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10016DD88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F2F00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002F2F88(result, a4);
  }

  return result;
}

void sub_1002F2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10016DD88(&a9);
  _Unwind_Resume(a1);
}

void sub_1002F2F88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_1002F2B5C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1002F2FD4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1002F3074(v4, v6);
      v6 = (v6 + 120);
      v4 = v11 + 120;
      v11 += 120;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1002F2D68(v8);
  return v4;
}

char *sub_1002F3074(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  return __dst;
}

void sub_1002F3164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F31C8(uint64_t a1)
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

uint64_t sub_1002F3248(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1002F32A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F32BC(void *a1)
{
  *a1 = off_101E3E208;
  a1[1] = &off_101E3E6F8;
  a1[2] = off_101E3E730;
  a1[3] = off_101E3E758;
  a1[4] = off_101E3E7C0;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

void *sub_1002F3470(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E908;
  sub_1002F3568((a1 + 3), a2);
  return a1;
}

void sub_1002F34EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3568(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_100443B34(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return a1;
}

void sub_1002F35B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3658(void *a1, NSObject **a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E958;
  sub_1002F3750((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F36D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3750(uint64_t a1, NSObject **a2, __int128 *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1009D5440(a1, &object, &v7);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F37C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3874(void *a1, NSObject **a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E9A8;
  sub_1002F396C((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F38F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F396C(uint64_t a1, NSObject **a2, __int128 *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_10091AB5C(a1, &object, &v7);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F39E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3A90(void *a1, NSObject **a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E9F8;
  sub_1002F3B88((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F3B0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3B88(uint64_t a1, NSObject **a2, __int128 *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1007F46C0(a1, &object, &v7);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F3BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3CBC(void *a1, NSObject **a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EA48;
  sub_1002F3DB4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002F3D38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3DB4(uint64_t a1, NSObject **a2, uint64_t *a3, __int128 *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  sub_1000D5C1C(a1, &object, &v11, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F3E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176AD50(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F3F20(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EA98;
  sub_100302B90(a1 + 3);
  return a1;
}

void sub_1002F3F9C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EA98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F40D4(void *a1, NSObject **a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E363E8;
  sub_1002F4130((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t sub_1002F4130(uint64_t a1, NSObject **a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  v24 = *a2;
  if (v24)
  {
    dispatch_retain(v24);
  }

  v13 = a3[1];
  v22 = *a3;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v14 = a5[1];
  v19 = *a5;
  v20 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v17 = *a6;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100251894(a1, &v24, &v22, &v21, &v19, &v17, *a7);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(&v21 + 1))
  {
    sub_100004A34(*(&v21 + 1));
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  return a1;
}

void sub_1002F424C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176AD84(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F4334(void *a1, dispatch_object_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EAE8;
  sub_1002F442C((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_1002F43B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EAE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F442C(uint64_t a1, dispatch_object_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7)
{
  v24 = *a2;
  if (v24)
  {
    dispatch_retain(v24);
  }

  v13 = a3[1];
  v22 = *a3;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v14 = a5[1];
  v19 = *a5;
  v20 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v17 = *a6;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100BB6C4C(a1, &v24, &v22, &v21, &v19, &v17, *a7);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(&v21 + 1))
  {
    sub_100004A34(*(&v21 + 1));
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  return a1;
}

void sub_1002F4548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176AD84(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F45E8(void *a1, uint64_t *a2, NSObject **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EB38;
  sub_1002F46C4(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F4664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F46C4(void *a1, uint64_t *a2, NSObject **a3)
{
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1006CBCB0(a1, v4, &object);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F4720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F47C4(void *a1, NSObject **a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EB88;
  sub_1002F48BC((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F4840(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EB88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F48BC(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1003BB610(a1, &object, a3);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F4918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F49BC(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EBD8;
  sub_1002F4AB4((a1 + 3), a2);
  return a1;
}

void sub_1002F4A38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F4AB4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MonitorModeController::MonitorModeController(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return a1;
}

void sub_1002F4B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F4B9C(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EC28;
  sub_1002F4C94((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002F4C18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F4C94(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  *v7 = *a4;
  v8 = v5;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_100B2B510(a1, a2, &v8, v7);
  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  return a1;
}

void sub_1002F4CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F4D3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002F4DD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F4EF8(void *a1, NSObject **a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3ECE0;
  sub_1002F4FF0((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F4F74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3ECE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F4FF0(uint64_t a1, NSObject **a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a3[1];
  v12 = *a3;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005DF9D8(a1, &object, &v12, a4, *a5);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F5088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F5118(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3ED30;
  sub_1001DD5DC(a1 + 3);
  return a1;
}

void sub_1002F5194(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3ED30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F5210(uint64_t a1)
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

void *sub_1002F532C(void *a1, NSObject **a2, void *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3ED80;
  sub_1002F5424((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002F53A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3ED80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F5424(uint64_t a1, NSObject **a2, void *a3, unsigned __int8 *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  if (*a3)
  {
    v9 = *a3 + 32;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v12 = v8;
  *a3 = 0;
  a3[1] = 0;
  sub_100425A00(a1, &object, &v11, *a4);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F54B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F557C(void *a1, dispatch_object_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EDD0;
  sub_1002F5674((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F55F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F5674(uint64_t a1, dispatch_object_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v17 = *a2;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v16 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v9 = a4[1];
  v14 = *a4;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  v12 = *a5;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A4BC90(a1, &v17, &v16, &v14, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (*(&v16 + 1))
  {
    sub_100004A34(*(&v16 + 1));
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  return a1;
}

void sub_1002F5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176ADD8(v10 + 8);
  _Unwind_Resume(a1);
}

void sub_1002F5798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002F5888(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EE70;
  entitlements::WebServiceDelegate::WebServiceDelegate(a1 + 3);
}

void sub_1002F5904(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1002F5980(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_10006F22C(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100010250(&v5);
  }

  return a1;
}

void sub_1002F59F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EEC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002F5A4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_1002F5A88(uint64_t a1, void *a2)
{
  *a2 = off_101E3EF10;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_1002F5AD4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1002F5B20(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E3EF70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002F5B6C(__CFArray *a1, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    CFArrayAppendValue(a1, cf);
  }

  sub_100DA3324(&v5);
  return cf != 0;
}

void sub_1002F5BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

void *sub_1002F5C50(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EF90;
  sub_10073B54C(a1 + 3);
  return a1;
}

void sub_1002F5CCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F5DBC(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EFE0;
  sub_1002F5EB4(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F5E38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F5EB4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10046A680(a1, &v9, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return a1;
}

void sub_1002F5F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F6000(void *a1, dispatch_object_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F030;
  sub_1002F60F8((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F607C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F60F8(uint64_t a1, dispatch_object_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v17 = *a2;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v16 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v9 = a4[1];
  v14 = *a4;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  v12 = *a5;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CellularPlanListModelLocal::CellularPlanListModelLocal(a1, &v17, &v16, &v14, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (*(&v16 + 1))
  {
    sub_100004A34(*(&v16 + 1));
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  return a1;
}

void sub_1002F61D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176ADD8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F62A0(void *a1, uint64_t a2, NSObject **a3, uint64_t *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F080;
  sub_1002F6398((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F631C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}