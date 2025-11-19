void sub_100623B98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableLegacyRats(uint64_t a1, char a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100630D9C(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100623CE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(uint64_t a1, int a2, uint64_t a3, NSObject **a4)
{
  if (a3 != 1)
  {
    goto LABEL_10;
  }

  sub_10061D524(*(a1 + 568) + 120, a2);
  v8 = *(a1 + 584);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 40);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *(a1 + 584) = 0;
LABEL_9:
    (*(*v8 + 8))(v8);
    goto LABEL_10;
  }

  v10 = "disables";
  if (a2)
  {
    v10 = "enables";
  }

  *buf = 136315138;
  *&buf[4] = v10;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User %s Legacy RATs while temporary timer is running. Reset timer", buf, 0xCu);
  v8 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  MaxDataRateManager::retrieveSavedSwitchSupport_sync(a1);
  MaxDataRateManager::evaluateUserPreference_sync(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_18:
  if (MaxDataRateManager::supportsBB2GMitigation_sync(a1))
  {
    v21 = *a4;
    group = v21;
    if (v21)
    {
      dispatch_retain(v21);
      dispatch_group_enter(v21);
    }

    (*(*v19 + 368))(v19, 3, a3, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  v22 = *a4;
  object = v22;
  if (v22)
  {
    dispatch_retain(v22);
    dispatch_group_enter(v22);
  }

  (*(*v19 + 360))(v19, 3, a3, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_100623FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableLegacyRats_sync(MaxDataRateManager *this)
{
  v2 = *(this + 71);
  v3 = *(v2 + 16);
  if (v3 < 2)
  {
    goto LABEL_4;
  }

  v4 = "default value";
  if (v3 == 2)
  {
    LOBYTE(v10) = 0;
    if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(this, *(v2 + 128), &v10))
    {
      v4 = "user preference";
    }

    if (v10)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    if (v3 == 3)
    {
LABEL_4:
      v5 = 2;
      v4 = "default value";
      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_11:
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    v8 = asString();
    v10 = 136315650;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable Legacy RATs: %s with %s; based on %s", &v10, 0x20u);
  }

  return v5;
}

uint64_t MaxDataRateManager::enableLegacyRatsWithDuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0 || !*(a3 + 24))
  {
    *buf = a1;
    *&buf[8] = a2;
    sub_100631A5C(&v9, a3);
    v7[0] = 0;
    v7[1] = 0;
    sub_100004AA0(v7, (a1 + 8));
    operator new();
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Unable to enable legacy RATs with a negative duration", buf, 2u);
  }

  return sub_100624328(a3, 2);
}

void sub_100624318(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100624328(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t MaxDataRateManager::getRegulatedRatsSwitchSupport(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1006322D4;
  v7[3] = &unk_101E6C030;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100069D38;
    v12 = &unk_101E6BFE0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100058DDC;
    v12 = &unk_101E6BFC0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

BOOL MaxDataRateManager::getRegulatedRatsSwitchSupport_sync(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v4);
  if (v4)
  {
    v2 = *(v4 + 376) == 2;
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

BOOL MaxDataRateManager::areRegulatedRatsAllowedForAllSlots_sync(MaxDataRateManager *this)
{
  subscriber::makeSimSlotRange();
  v2 = v5;
  if (v5 == v6)
  {
    return 1;
  }

  do
  {
    if (v7(*v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != v6);
  if (v2 == v6)
  {
    return 1;
  }

  do
  {
    v3 = MaxDataRateManager::areRegulatedRatsAllowed_sync(this, *v2);
    if (!v3)
    {
      break;
    }

    do
    {
      ++v2;
    }

    while (v2 != v6 && (v7(*v2) & 1) == 0);
  }

  while (v2 != v6);
  return v3;
}

uint64_t MaxDataRateManager::getUserPreferenceEnableRegulatedRats(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100631468(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_100624710(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableRegulatedRats(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_100630D9C(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100624864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableRegulatedRats_sync(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, NSObject **a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v23 = 0;
  v24 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v23);
  v11 = v23;
  if (v23)
  {
    if (a4 != 1)
    {
      goto LABEL_18;
    }

    if ((a3 & 0x100) != 0)
    {
      sub_10061D524(v23 + 840, a3 & 1);
    }

    else
    {
      sub_100624C58((v23 + 840));
      v12 = *(v11 + 888);
      if (v12)
      {
        LODWORD(v12) = (*(*v12 + 48))(v12);
      }

      *(v11 + 856) = v12;
    }

    v13 = *(a1 + 584);
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "enables";
      if ((a3 & 0x100) == 0)
      {
        v15 = "disables";
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I User %s regulated RATs while temporary timer is running. Reset timer", buf, 0xCu);
      v13 = *(a1 + 584);
      *(a1 + 584) = 0;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 584) = 0;
    }

    (*(*v13 + 8))(v13);
LABEL_18:
    *buf = 1;
    memset(v28, 0, sizeof(v28));
    *&buf[8] = a1 + 312;
    LOBYTE(v28[0]) = *(a1 + 344);
    sub_1000517E4(v28 + 1, a1 + 352);
    v16 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
    LODWORD(v26) = a2;
    v25 = !v16;
    sub_100626598(v28 + 1, &v26, &v25);
    if (MaxDataRateManager::supportsBB2GMitigation_sync(a1))
    {
      v17 = *v10;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (!*(a1 + 584) && *(*(a1 + 568) + 16) != 2)
        {
          MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
        }

        v18 = asString();
        LODWORD(v26) = 136315138;
        *(&v26 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Device supports enable 2G option in system selection, sending it down with 2G preference set to %s", &v26, 0xCu);
      }

      v26 = 0uLL;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      sub_10017AE44(ServiceMap, &v26);
      v20 = v26;
      if (v26)
      {
        v21 = *a5;
        group = v21;
        if (v21)
        {
          dispatch_retain(v21);
          dispatch_group_enter(v21);
        }

        (*(*v20 + 368))(v20, a2, a4, &group);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }
      }

      if (*(&v26 + 1))
      {
        sub_100004A34(*(&v26 + 1));
      }
    }

    sub_10062A978(buf);
    goto LABEL_33;
  }

  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101776138();
  }

LABEL_33:
  if (v24)
  {
    sub_100004A34(v24);
  }
}

void sub_100624BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_10062A978(&a15);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100624C58(uint64_t *result)
{
  if (result[10])
  {
    v1 = result;
    sub_10062FE2C((result + 7), result[1]);
    result = v1[6];
    if (result)
    {
      result = (*(*result + 48))(result);
    }

    *(v1 + 4) = result;
  }

  return result;
}

void MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(uint64_t a1, unsigned __int16 a2, uint64_t a3, NSObject **a4)
{
  v5 = *(a1 + 544);
  v6 = (a1 + 552);
  if (v5 != (a1 + 552))
  {
    v10 = a2;
    do
    {
      if (MaxDataRateManager::getRegulatedRatsSwitchSupport_sync(a1, *(v5 + 8)))
      {
        v11 = *(v5 + 8);
        v12 = *a4;
        v16 = v12;
        if (v12)
        {
          dispatch_retain(v12);
          dispatch_group_enter(v12);
        }

        v4 = v4 & 0xFFFFFFFFFFFF0000 | v10;
        MaxDataRateManager::setUserPreferenceEnableRegulatedRats_sync(a1, v11, v4, a3, &v16);
        if (v12)
        {
          dispatch_group_leave(v12);
          dispatch_release(v12);
        }
      }

      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v6);
  }
}

void sub_100624DC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::carrierAndDeviceSupportLTE(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1006324C0(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100624F20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::evaluate5gSupport_sync(uint64_t a1, int a2)
{
  if (*(a1 + 184) != a2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I 5G activation support is now (%s)", &v4, 0xCu);
    }

    MaxDataRateManager::evaluateSwitchStatesForSlot_sync(a1);
  }
}

uint64_t MaxDataRateManager::handleNrDisableStatusChanged_sync(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] == *(result + 208))
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return result;
    }

    v5 = *(result + 192);
    while (*(v4 + 7) == *(v5 + 7))
    {
      result = NRDisableStatus::operator==();
      if (!result)
      {
        break;
      }

      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v4 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v8 = *v4 == v7;
          v7 = v4;
        }

        while (!v8);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v8 = *v10 == v5;
          v5 = v10;
        }

        while (!v8);
      }

      v5 = v10;
      if (v4 == v3)
      {
        return result;
      }
    }
  }

  v11 = *(v2 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I NR disable status changed, notifying clients", buf, 2u);
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v12) == &_xpc_type_dictionary)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  *buf = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *buf = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(119, buf, &object);
  xpc_release(object);
  xpc_release(*buf);
  *buf = 0;
  xpc_release(v13);
  return (*(**(v2 + 624) + 160))(*(v2 + 624));
}

void sub_100625204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::handleNrEntitlementStatusChanged_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 280))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 264);
    while (*(v5 + 7) == *(v6 + 7) && rest::NREntitlementStatus::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  sub_100632658(&v32, a2);
  v12 = *(a1 + 264);
  if (v12 != (a1 + 272))
  {
    v13 = a2 + 1;
    do
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        goto LABEL_27;
      }

      v16 = a2 + 1;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 != v13 && v15 >= *(v16 + 7))
      {
        if (rest::NREntitlementStatus::operator==())
        {
          goto LABEL_60;
        }

        v23 = *(v12 + 7);
        v17 = a1;
        v24 = v33[0];
        if (!v33[0])
        {
          goto LABEL_57;
        }

        v25 = v33;
        do
        {
          if (*(v24 + 7) >= v23)
          {
            v25 = v24;
          }

          v24 = v24[*(v24 + 7) < v23];
        }

        while (v24);
        if (v25 == v33 || *(v25 + 7) > v23 || (v26 = *(v25 + 32), v27 = *(v12 + 32), v26 != v27))
        {
LABEL_57:
          v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v12 + 7));
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Enable 5G changed due to entitlements, evaluating state of switches", buf, 2u);
          }

          MaxDataRateManager::evaluateSwitchStatesForSlot_sync(v17);
          goto LABEL_60;
        }

        if ((v26 & 1) != 0 || *(v25 + 33) == 1)
        {
          v28 = *(v25 + 34);
          if (v27)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v28 = 0;
          if (v27)
          {
            goto LABEL_69;
          }
        }

        if (*(v12 + 33))
        {
LABEL_69:
          if ((v28 & 1) != *(v12 + 34))
          {
            goto LABEL_57;
          }

          goto LABEL_60;
        }

        if (v28)
        {
          goto LABEL_57;
        }
      }

      else
      {
LABEL_27:
        v17 = a1;
        v18 = v33[0];
        if (!v33[0])
        {
          goto LABEL_57;
        }

        v19 = v33;
        do
        {
          if (*(v18 + 7) >= v15)
          {
            v19 = v18;
          }

          v18 = v18[*(v18 + 7) < v15];
        }

        while (v18);
        if (v19 == v33)
        {
          goto LABEL_57;
        }

        if (*(v19 + 7) > v15)
        {
          goto LABEL_57;
        }

        v20 = *(v19 + 32);
        v21 = *(v12 + 32);
        if (v20 != v21)
        {
          goto LABEL_57;
        }

        if ((v20 & 1) != 0 || *(v19 + 33) == 1)
        {
          v22 = *(v19 + 34);
          if (v21)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v22 = 0;
          if (v21)
          {
            goto LABEL_54;
          }
        }

        if (*(v12 + 33))
        {
LABEL_54:
          if ((v22 & 1) != *(v12 + 34))
          {
            goto LABEL_57;
          }

          goto LABEL_60;
        }

        if (v22)
        {
          goto LABEL_57;
        }
      }

LABEL_60:
      v30 = v12[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v12[2];
          v9 = *v31 == v12;
          v12 = v31;
        }

        while (!v9);
      }

      v12 = v31;
    }

    while (v31 != (a1 + 272));
  }

  sub_10006DCAC(&v32, v33[0]);
}

uint64_t MaxDataRateManager::isVoiceOverCSSupported_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 248);
  v2 = a1 + 248;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 28) <= a2)
  {
    v6 = ((*(v5 + 32) & 0x100) == 0) | *(v5 + 32);
  }

  else
  {
LABEL_8:
    v6 = 1;
  }

  return v6 & 1;
}

void MaxDataRateManager::handleVoiceOverCSSupportChanged_sync(uint64_t a1, void *a2)
{
  if (*(a1 + 256) == a2[2])
  {
    v4 = *(a1 + 240);
    if (v4 == (a1 + 248))
    {
      return;
    }

    v5 = *a2;
    while (*(v4 + 7) == *(v5 + 7))
    {
      v6 = *(v4 + 33);
      v7 = *(v5 + 33);
      v8 = v6 != v7 || v6 == 0;
      if (!v8)
      {
        v6 = *(v4 + 32);
        v7 = *(v5 + 32);
      }

      if (v6 != v7)
      {
        break;
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v8 = *v10 == v4;
          v4 = v10;
        }

        while (!v8);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v8 = *v12 == v5;
          v5 = v12;
        }

        while (!v8);
      }

      v5 = v12;
      v4 = v10;
      if (v10 == (a1 + 248))
      {
        return;
      }
    }
  }

  subscriber::makeSimSlotRange();
  v13 = v33;
  v14 = v34;
  if (v33 != v34)
  {
    v15 = v35;
    do
    {
      if (v35(*v13))
      {
        break;
      }

      ++v13;
    }

    while (v13 != v34);
    v16 = v34;
    if (v13 != v34)
    {
      v17 = a2 + 1;
      v18 = (a1 + 248);
      do
      {
        v19 = *v13;
        v20 = (*(**(a1 + 48) + 16))(*(a1 + 48), v19);
        if (MaxDataRateManager::getMaxDataRate_sync(a1, v19) - 1 <= 1)
        {
          v21 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = asString();
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I User selected %s. CS voice support ignored", &buf, 0xCu);
          }

          goto LABEL_66;
        }

        buf = 0uLL;
        v37 = 0;
        MaxDataRateManager::copySupportedSetMaxDataRates_sync(a1, v19, &buf);
        v23 = buf;
        if (buf != *(&buf + 1))
        {
          while ((*v23 - 1) >= 2)
          {
            if (++v23 == *(&buf + 1))
            {
              goto LABEL_54;
            }
          }
        }

        if (v23 == *(&buf + 1))
        {
LABEL_54:
          v30 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I 2G/3G not supported. CS voice support ignored", v32, 2u);
          }

          v29 = 3;
        }

        else
        {
          v24 = *v17;
          if (!*v17)
          {
            goto LABEL_44;
          }

          v25 = v17;
          do
          {
            if (*(v24 + 28) >= v19)
            {
              v25 = v24;
            }

            v24 = *(v24 + 8 * (*(v24 + 28) < v19));
          }

          while (v24);
          if (v25 != v17 && *(v25 + 7) <= v19)
          {
            v26 = ((v25[4] & 0x100) == 0) | *(v25 + 16);
          }

          else
          {
LABEL_44:
            LOBYTE(v26) = 1;
          }

          v27 = *v18;
          if (!*v18)
          {
            goto LABEL_52;
          }

          v28 = a1 + 248;
          do
          {
            if (*(v27 + 28) >= v19)
            {
              v28 = v27;
            }

            v27 = *(v27 + 8 * (*(v27 + 28) < v19));
          }

          while (v27);
          if (v28 != v18 && *(v28 + 28) <= v19)
          {
            if ((v26 & 1) == (((*(v28 + 32) & 0x100) == 0) | *(v28 + 32) & 1))
            {
LABEL_53:
              v29 = 0;
              goto LABEL_62;
            }
          }

          else
          {
LABEL_52:
            if (v26)
            {
              goto LABEL_53;
            }
          }

          v31 = *(a1 + 40);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I CS voice support changed, notifying clients", v32, 2u);
          }

          (*(**(a1 + 624) + 160))(*(a1 + 624));
          v29 = 1;
        }

LABEL_62:
        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        if (v29 != 3 && v29)
        {
          return;
        }

        do
        {
LABEL_66:
          ++v13;
        }

        while (v13 != v14 && (v15(*v13) & 1) == 0);
      }

      while (v13 != v16);
    }
  }
}

void sub_100625A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::handleDebugInRegulatedRatsCountryChange_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 304))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
LABEL_20:
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Debug in-regulated-rats-country stays the same", buf, 2u);
      }

      return;
    }

    v4 = *(a1 + 288);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 32) == *(v5 + 32);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v4 = *(a1 + 288);
  }

  v12 = (a1 + 296);
  if (v4 != (a1 + 296))
  {
    v13 = a2 + 1;
    do
    {
      v14 = *v13;
      v15 = *(v4 + 7);
      if (!*v13)
      {
        goto LABEL_32;
      }

      v16 = v13;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 != v13 && v15 >= *(v16 + 7))
      {
        v23 = *(v4 + 32);
        if (*(v16 + 32) == v23)
        {
          goto LABEL_36;
        }

        v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = CSIBOOLAsString(v23);
          *buf = 136315138;
          v27 = v25;
          v20 = v24;
          goto LABEL_34;
        }
      }

      else
      {
LABEL_32:
        v17 = *(v4 + 32);
        v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = CSIBOOLAsString(v17);
          *buf = 136315138;
          v27 = v19;
          v20 = v18;
LABEL_34:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Debug in-regulated-rats-country is now (%s)", buf, 0xCu);
        }
      }

      MaxDataRateManager::evaluateSwitchStates_sync(a1, v15);
LABEL_36:
      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v6 = *v22 == v4;
          v4 = v22;
        }

        while (!v6);
      }

      v4 = v22;
    }

    while (v22 != v12);
  }
}

uint64_t sub_100625D94(uint64_t a1)
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

uint64_t sub_100625E14(void *a1, int *a2, __int128 *a3)
{
  v5 = a1 + 1;
  v6 = a1[1];
  if (!v6)
  {
    return sub_100625EB0(a1, v5, a2);
  }

  v7 = *a2;
  v8 = a1 + 1;
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
    v5 = v8;
    return sub_100625EB0(a1, v5, a2);
  }

  v10 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = v8[6];
  *(v8 + 5) = v10;
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v8;
}

uint64_t sub_100625EB0(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_100625FE8(void *a1, uint64_t a2, __int128 *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E6A800;
  sub_1006260C4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100626064(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6A800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006260C4(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int *a4)
{
  v6 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_10062612C(a1, a2, &v6, *a4);
  if (*(&v6 + 1))
  {
    sub_100004A34(*(&v6 + 1));
  }

  return a1;
}

void sub_100626114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**a3 + 16))();
  *a1 = 4;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  v9 = (*(**a3 + 24))();
  *(a1 + 120) = 3;
  *(a1 + 128) = v9;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  v10 = (*(**a3 + 32))();
  *(a1 + 240) = 2;
  *(a1 + 248) = v10;
  *(a1 + 256) = 0;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  v11 = (*(**a3 + 40))();
  *(a1 + 360) = 1;
  *(a1 + 368) = v11;
  *(a1 + 376) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 472) = 0;
  v12 = (*(**a3 + 48))();
  *(a1 + 480) = 4;
  *(a1 + 488) = v12;
  *(a1 + 496) = 0;
  *(a1 + 528) = 0;
  *(a1 + 560) = 0;
  *(a1 + 592) = 0;
  v13 = (*(**a3 + 56))();
  *(a1 + 600) = 3;
  *(a1 + 608) = v13;
  *(a1 + 616) = 0;
  *(a1 + 648) = 0;
  *(a1 + 680) = 0;
  *(a1 + 712) = 0;
  v14 = (*(**a3 + 64))();
  *(a1 + 720) = 2;
  *(a1 + 728) = v14;
  *(a1 + 736) = 0;
  *(a1 + 768) = 0;
  *(a1 + 800) = 0;
  *(a1 + 832) = 0;
  v15 = (*(**a3 + 72))();
  *(a1 + 840) = 1;
  *(a1 + 848) = v15;
  *(a1 + 856) = 0;
  *(a1 + 888) = 0;
  *(a1 + 920) = 0;
  *(a1 + 952) = 0;
  sub_100375B34(a1 + 960, a2, a4);
  return a1;
}

void sub_100626394(_Unwind_Exception *a1)
{
  sub_100626418(v1 + 840);
  sub_100626418(v1 + 720);
  sub_100626418(v1 + 600);
  sub_100626418(v1 + 480);
  sub_10061FF88(v1 + 360);
  sub_10061FF88(v1 + 240);
  sub_10061FF88(v1 + 120);
  sub_10061FF88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100626418(uint64_t a1)
{
  sub_1006272D0(a1 + 88);
  sub_100627150(a1 + 56);
  sub_100627250(a1 + 24);
  return a1;
}

uint64_t sub_100626454(uint64_t a1)
{
  sub_100375B78((a1 + 960));
  sub_1006272D0(a1 + 928);
  sub_100627150(a1 + 896);
  sub_100627250(a1 + 864);
  sub_1006272D0(a1 + 808);
  sub_100627150(a1 + 776);
  sub_100627250(a1 + 744);
  sub_1006272D0(a1 + 688);
  sub_100627150(a1 + 656);
  sub_100627250(a1 + 624);
  sub_1006272D0(a1 + 568);
  sub_100627150(a1 + 536);
  sub_100627250(a1 + 504);
  sub_1006271D0(a1 + 448);
  sub_100627150(a1 + 416);
  sub_1006270D0(a1 + 384);
  sub_1006271D0(a1 + 328);
  sub_100627150(a1 + 296);
  sub_1006270D0(a1 + 264);
  sub_1006271D0(a1 + 208);
  sub_100627150(a1 + 176);
  sub_1006270D0(a1 + 144);
  sub_1006271D0(a1 + 88);
  sub_100627150(a1 + 56);
  sub_1006270D0(a1 + 24);
  return a1;
}

_BYTE *sub_100626540(_BYTE *a1, char **a2, char **a3)
{
  v5 = sub_10000501C(a1, *a2);
  sub_10000501C(v5 + 24, *a3);
  return a1;
}

void sub_10062657C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100626598(void *a1, int *a2, _BYTE *a3)
{
  v5 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 1;
    do
    {
      if (*(v6 + 28) >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < v7));
    }

    while (v6);
    if (v8 != v5 && v7 >= *(v8 + 7))
    {
      *(v8 + 32) = *a3;
      return v8;
    }

    v5 = v8;
  }

  return sub_10062661C(a1, v5, a2);
}

uint64_t sub_10062661C(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000504CC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1006266CC(uint64_t a1)
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

uint64_t sub_10062674C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_1006267A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1006267C4(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int *sub_100626874(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_100626928(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

int *sub_100626CC0(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_100626E8C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_100626E8C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_100626E8C(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t sub_100626F50(uint64_t a1)
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

uint64_t sub_100626FD0(uint64_t a1)
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

uint64_t sub_100627050(uint64_t a1)
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

uint64_t sub_1006270D0(uint64_t a1)
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

uint64_t sub_100627150(uint64_t a1)
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

uint64_t sub_1006271D0(uint64_t a1)
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

uint64_t sub_100627250(uint64_t a1)
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

uint64_t sub_1006272D0(uint64_t a1)
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

void sub_1006273D0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1006274A4);
  __cxa_rethrow();
}

void sub_100627410(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100627464(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006274A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006274D0(ServiceManager::Service *this)
{
  *this = off_101E6A978;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10062752C(ServiceManager::Service *this)
{
  *this = off_101E6A978;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_1006275AC(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4.var0.fObj = &v6;
    MaxDataRateManager::notifyServiceBootstrap(v2, v4);
  }

  v5.var0.fObj = &v6;
  MaxDataRateManager::notifyServiceBootstrap(v2, v5);
}

void sub_100627634(uint64_t a1, void **a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v12 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v6 = *a3;
  v11 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    v7.fObj.fObj = &v12;
    v8.var0.fObj = &v11;
    MaxDataRateManager::notifyServiceMigration(v4, v7, v8);
  }

  v9.fObj.fObj = &v12;
  v10.var0.fObj = &v11;
  MaxDataRateManager::notifyServiceMigration(v4, v9, v10);
}

void sub_1006277C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6AA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100627818(uint64_t a1)
{
  sub_1006272D0(a1 + 232);
  sub_100627150(a1 + 200);
  sub_100627250(a1 + 168);
  sub_1006271D0(a1 + 112);
  sub_100627150(a1 + 80);

  return sub_1006270D0(a1 + 48);
}

void *sub_100627878(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006278D0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1006278D0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100627958(v5, v5 + 1, v4 + 8);
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
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100627958(void *a1, uint64_t *a2, int *a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1006279F8();
  }

  return v3;
}

void sub_100627AAC(_Unwind_Exception *a1)
{
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_1001AD950(v1);
  _Unwind_Resume(a1);
}

void *sub_100627AD8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100627B30(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100627B30(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100627BB8(v5, v5 + 1, v4 + 7);
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
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100627BB8(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000504CC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_100627C5C(void *a1, uint64_t a2)
{
  sub_100627CD0(v4, a2);
  sub_100627D68(v4, a1);
  sub_100627250(v4);
  return a1;
}

uint64_t sub_100627CD0(uint64_t a1, uint64_t a2)
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

void *sub_100627D68(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_100627FC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_10062804C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AA70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100628090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006280DC(void *a1, uint64_t a2)
{
  sub_100628150(v4, a2);
  sub_1006281E8(v4, a1);
  sub_1006272D0(v4);
  return a1;
}

uint64_t sub_100628150(uint64_t a1, uint64_t a2)
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

void *sub_1006281E8(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_100628448(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_1006284CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AB00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062851C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100628568(void *a1, uint64_t a2)
{
  sub_1006285DC(v4, a2);
  sub_100628674(v4, a1);
  sub_100627150(v4);
  return a1;
}

uint64_t sub_1006285DC(uint64_t a1, uint64_t a2)
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

void *sub_100628674(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_1006288D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_100628958(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AB90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006289A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006289EC(void *a1, uint64_t a2)
{
  sub_100628A60(v4, a2);
  sub_100628AF8(v4, a1);
  sub_1006270D0(v4);
  return a1;
}

uint64_t sub_100628A60(uint64_t a1, uint64_t a2)
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

void *sub_100628AF8(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_100628D58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_100628DDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AC20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100628E24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100628E70(void *a1, uint64_t a2)
{
  sub_100628EE4(v4, a2);
  sub_100628F7C(v4, a1);
  sub_1006271D0(v4);
  return a1;
}

uint64_t sub_100628EE4(uint64_t a1, uint64_t a2)
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

void *sub_100628F7C(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_1006291DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_100629260(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ACB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006292B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629374(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AD40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006293BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629480(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ADC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006294C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629588(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AE40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006295D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062969C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006296E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006297A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AF40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006297F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006298B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AFC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629904(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006299C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B040;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629A10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629AD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B0C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629BDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B140;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629C2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629CF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B1C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629D38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629DFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B240;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

unsigned __int8 *sub_100629E30(uint64_t a1, const __CFString ***a2)
{
  v2 = *(*(a1 + 8) + 568);
  if (*(v2 + 16) == 2 && *(v2 + 136) != 2)
  {
    return 3;
  }

  else
  {
    return MaxDataRateManager::getSwitchSupportFromPersistence_sync(*(a1 + 8), *(a1 + 16), *a2);
  }
}

uint64_t sub_100629E68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629F2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B2C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629F7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A040(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B340;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A088(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A14C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B3C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A190(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A254(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B440;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A2A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A368(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B4C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A3B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A474(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A4B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A574(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B5C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A5A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A664(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B640;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A6A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A75C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B6C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A794(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A850(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B740;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A88C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10062A8D8(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 88));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10062A95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10062A978(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (rest::operator!=())
    {
      sub_10062A9D8(v2, a1 + 16);
    }
  }

  sub_10006DCAC(a1 + 24, *(a1 + 32));
  return a1;
}

uint64_t sub_10062A9D8(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    *(a1 + 32) = *a2;
    sub_10062AA68((a1 + 40), *(a2 + 8), (a2 + 16));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t **sub_10062AA68(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 32) = *(v9 + 32);
          sub_1001720F4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_10062ABD4();
  }

  return result;
}

void sub_10062ABC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void sub_10062AC74(void *a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  *(v2 + 608) = v12;
  v13 = *(v2 + 616);
  *(v2 + 616) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = Registry::getServiceMap(*(v2 + 56));
  v15 = v14;
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

  std::mutex::lock(v14);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      goto LABEL_21;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
LABEL_21:
  *(v2 + 592) = v22;
  v23 = *(v2 + 600);
  *(v2 + 600) = v21;
  if (v23)
  {
    sub_100004A34(v23);
  }

  *buf = MaxDataRateManager::handleDeviceTypesChanged_sync;
  *&buf[8] = 0;
  sub_10062B9AC();
}

void sub_10062B3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10062B444(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/mcc_mnc_computed_info");
  v4[0] = off_101E6BA60;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10062B4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10062B524(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/save_data_mode_user_preference");
  v4[0] = off_101E6BBE0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10062B5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10062B604(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10062EBF4(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_10062B668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *aBlock)
{
  if (a2 && aBlock && *a5)
  {
    v11 = _Block_copy(aBlock);
    v12 = v11;
    object = *a5;
    *a5 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_10062F0CC;
    v15[3] = &unk_101E6BE60;
    v13 = a4[1];
    v15[4] = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    aBlocka = v14;
    (*(*a1 + 40))(a1, a2, a3, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_10062B7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062B808(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::getTelephonyCapabilities(&v5, *(v1 + 56));
  v2 = (*(*v5 + 40))(v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v2)
  {
    MaxDataRateManager::submit5GSwitchStateToCA_sync(v1);
    MaxDataRateManager::submit5GSDMStatusToCA_sync(v1);
  }

  MaxDataRateManager::submit4GSwitchStateToCA_sync(v1);
  MaxDataRateManager::submit3GSwitchStateToCA_sync(v1);
  v3 = *(v1 + 568);
  v13 = 0;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v16[3] = 0;
  v17[3] = 0;
  v18[3] = 0;
  v7 = 0;
  v8 = *(v3 + 128);
  v9 = *(v3 + 136);
  sub_100627CD0(v10, v3 + 144);
  v11[3] = 0;
  v12[3] = 0;
  MaxDataRateManager::submitLegacyRatsSwitchStateToCA_sync(v1);
  sub_1006272D0(v12);
  sub_100627150(v11);
  sub_100627250(v10);
  sub_1006271D0(v18);
  sub_100627150(v17);
  return sub_1006270D0(v16);
}

void sub_10062B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100626418(&a12);
  sub_10061FF88(&a27);
  _Unwind_Resume(a1);
}

void sub_10062BA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062BB48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B7E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062BB80(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1008FC53C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10062BC58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062BE40(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B860;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062BE78(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_10062BF50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062C128(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B8E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062C160(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10062C1A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062C390(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B960;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062C3C8(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_10062C4B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_100249B60(va);
  sub_100249BE0(va1);
  sub_100249C60(va2);
  _Unwind_Resume(a1);
}

__n128 sub_10062C690(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B9E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062C6C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    return (*(*v6 + v4))();
  }

  else
  {
    return v4(v6, a3);
  }
}

uint64_t sub_10062C714(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062C7D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6BA60;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062C804(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062C9EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BAE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062CA24(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10062CB1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062CC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062CD04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BB60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062CD3C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10062CE60(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10062CE14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062CE60(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100008EA4(&v12, &object, 0);
    xpc_release(object);
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, &object, count);
    xpc_release(object);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object = &v12;
      v8 = i;
      sub_10003EAD4(&object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        object = 0;
        v8 = 0;
        v9 = 0;
        NRDisableStatus::NRDisableStatus((&object + 4), 1, 1);
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062D100(&object, &v6);
        xpc_release(v6);
        sub_10062D2B4(a1, &object);
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_10062D070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a17);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_10062D100(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    read_rest_value((a1 + 1), &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10062D260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10062D2B4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10062D3F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6BBE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062D42C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062D478(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v7[0] = 0;
        rest::SaveDataModePreference::SaveDataModePreference((v7 + 4), 0, 0, 1);
        v6 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062D718(v7, &v6);
        xpc_release(v6);
        sub_10062D8CC(a1, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10062D688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10062D718(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "first";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v5);
      *a1 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "second";
    sub_100006354(&v7, &object);
    rest::read_rest_value((a1 + 1), &object, v6);
    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

void sub_10062D878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10062D8CC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10062DA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062DB44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BC60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062DB7C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10062DCA0(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10062DC54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062DCA0(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062DF1C(v7, &v6);
        xpc_release(v6);
        sub_10062D8CC(a1, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10062DE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10062DF1C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "first";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v5);
      *a1 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "second";
    sub_100006354(&v7, &object);
    rest::read_rest_value((a1 + 1), &object, v6);
    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

void sub_10062E07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_10062E1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062E26C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BCE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062E2A4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10062E3C8(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10062E37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062E3C8(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062E644(v7, &v6);
        xpc_release(v6);
        sub_10062E828(a1, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10062E5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10062E644(int *a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    p_object = &object;
    v9 = "first";
    sub_100006354(&p_object, &v10);
    type = xpc_get_type(v10);
    if (type == &_xpc_type_string)
    {
      v12 = *a1;
      ctu::rest::detail::read_enum_string_value(&v12, &v10, v6);
      *a1 = v12;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v10, 0, v6);
    }

    xpc_release(v10);
    p_object = &object;
    v9 = "second";
    sub_100006354(&p_object, &v10);
    if (xpc_get_type(v10) == &_xpc_type_null)
    {
      if (*(a1 + 5))
      {
        *(a1 + 5) = 0;
      }
    }

    else
    {
      if ((*(a1 + 5) & 1) == 0)
      {
        *(a1 + 2) = 256;
      }

      *(a1 + 4) = xpc::dyn_cast_or_default(&v10, 0, v7);
    }

    xpc_release(v10);
  }

  xpc_release(object);
}

uint64_t *sub_10062E828(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10062E9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062EA98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BD60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062EAD0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10062EBA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10062EBF4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E6BDE0;
  v5[1] = v3;
  v5[3] = v5;
  sub_10062EE60(v5, a1);
  sub_100625D94(v5);
  return a1;
}

uint64_t sub_10062ECF8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6BDE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062ED2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062ED78(uint64_t a1, rest *a2)
{
  v5 = 0;
  rest::write_rest_value(a2, a2);
  sub_10000501C(&__p, "/cc/props/rats_2g_restriction");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10062EE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_10062EE60(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_10062F0C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10062F0CC(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_10062F158(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_10062F1A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10062F1F8(void **a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v3 = *v1;
  v2 = v1[1];
  v15 = *v1;
  v16 = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v16 = v2;
  }

  v4 = v1[2];
  v17 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  ServiceMap = Registry::getServiceMap(*(v3 + 56));
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
  v22[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v22);
  if (v11 && (v12 = v11[4]) != 0)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  else
  {
    std::mutex::unlock(v6);
  }

  v18 = v3;
  v19 = v3;
  object = v2;
  group = v4;
  v16 = xpc_null_create();
  v17 = 0;
  v22[3] = 0;
  operator new();
}

void sub_10062F438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10062F4AC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 16);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t sub_10062F51C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_10062F568(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_10062F5B4(uint64_t a1)
{
  *a1 = off_101E6BEA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  return a1;
}

void sub_10062F61C(uint64_t a1)
{
  *a1 = off_101E6BEA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;

  operator delete();
}

void sub_10062F744(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BEA0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    *(a2 + 24) = xpc_null_create();
  }

  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a2 + 32);
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void sub_10062F7E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
}

void sub_10062F828(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));

  operator delete(a1);
}

void sub_10062F880(void *a1)
{
  v2 = a1[1];
  a1[3] = xpc_null_create();
  a1[4] = 0;
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v2 + 8));
  operator new();
}

uint64_t sub_10062F9A8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E6BF10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10062F9F4(unsigned __int8 **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v5.fObj.fObj = &object;
  MaxDataRateManager::handleMigration_sync(v4, v2, v5);
  xpc_release(object);
  sub_10062FA98(&v8);
  return sub_1000049E0(&v7);
}

void sub_10062FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  sub_10062FA98(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10062FA98(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 24);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    operator delete();
  }

  return result;
}

uint64_t sub_10062FB08(uint64_t a1)
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

void sub_10062FB88(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v11, *(v1 + 56));
  ctu::RestModule::connect();
  if (v12)
  {
    sub_100004A34(v12);
  }

  Registry::getTelephonyCapabilities(buf, *(v1 + 56));
  v3 = (*(**buf + 32))(*buf);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v3)
  {
    subscriber::makeSimSlotRange();
    v4 = *buf;
    v5 = v9;
    if (*buf != v9)
    {
      v6 = v10;
      do
      {
        if (v6(LODWORD(v4->__vftable)))
        {
          break;
        }

        v4 = (v4 + 4);
      }

      while (v4 != v5);
      v7 = v9;
      while (v4 != v7)
      {
        MaxDataRateManager::migrateCSIKeysToPersonalWallet_sync(v1, LODWORD(v4->__vftable));
        do
        {
          v4 = (v4 + 4);
        }

        while (v4 != v5 && (v6(LODWORD(v4->__vftable)) & 1) == 0);
      }
    }
  }

  MaxDataRateManager::retrieveSavedSwitchSupport_sync(v1);
  MaxDataRateManager::evaluateUserPreference_sync(v1);
  operator delete();
}

void sub_10062FD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t sub_10062FD74(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10062FDD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10062FE2C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10062FE80(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_10062FED4(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resetting Enable 3G/LTE switch preferences as network settings have been reset", buf, 2u);
  }

  v4 = sub_100A7F520();
  v5 = *(*(v2 + 568) + 136);
  if ((v4 & 1) == 0)
  {
    if (v5 == 2)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177616C();
    }

    goto LABEL_11;
  }

  if (v5 != 3)
  {
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs are enabled when in lockdown, resetting the preference", buf, 2u);
    }

LABEL_11:
    v25 = 0;
    MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, v4 ^ 1, 1, &v25);
  }

  v7 = 0;
LABEL_13:
  *buf = 1;
  memset(v24, 0, sizeof(v24));
  *&buf[8] = v2 + 312;
  LOBYTE(v24[0]) = *(v2 + 344);
  sub_1000517E4(v24 + 1, v2 + 352);
  LOBYTE(v24[0]) = *(*(v2 + 568) + 16) == 2;
  v22 = 0;
  MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v2, 0, 1, &v22);
  v8 = *(v2 + 544);
  if (v8 != (v2 + 552))
  {
    do
    {
      v9 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v8 + 8));
      v10 = v9;
      v11 = v8[5];
      if (v7 && v11[184] != 2)
      {
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I 3G was disabled, resetting the preference", v21, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v8 + 8), 2, 1);
        v11 = v8[5];
      }

      if (v11[154] == 3)
      {
        v13 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I LTE was disabled, resetting the preference", v21, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v8 + 8), 3, 1);
        v11 = v8[5];
      }

      if (v11[124] == 3)
      {
        v14 = *v10;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I 5G was disabled, resetting the preference", v21, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v8 + 8), 4, 1);
      }

      v15 = v8[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != (v2 + 552));
  }

  sub_10062A978(buf);
  sub_1000FF844(&v20);
  return sub_1000049E0(&v19);
}

void sub_100630224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10062A978(&a13);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100630254(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1006302D4(uint64_t *a1)
{
  v1 = *a1;
  v32 = a1;
  v33 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  __p = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__p);
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
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((*(*v12 + 16))(v12))
  {
    goto LABEL_26;
  }

  v14 = Registry::getServiceMap(*(v2 + 56));
  v15 = v14;
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

  std::mutex::lock(v14);
  __p = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &__p);
  if (!v20)
  {
    std::mutex::unlock(v15);
    goto LABEL_26;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    std::mutex::unlock(v15);
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_26:
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }

    v38 = 0;
    v39 = 0;
    __p = 0;
    MaxDataRateManager::copySupportedSetMaxDataRates_sync(v2, *(v1 + 8), &__p);
    v23 = *(v1 + 8);
    if ((MaxDataRateManager::isVoiceOverCSSupported_sync(v2, *(v1 + 8)) & 1) == 0 && MaxDataRateManager::getMaxDataRate_sync(v2, v23) - 1 >= 2)
    {
      v25 = __p;
      v24 = v38;
      v26 = sub_100630884(__p, v38, sub_100625A88);
      if (v26 != v38)
      {
        v38 = v26;
      }

      if (v24 - v25 != v26 - __p)
      {
        v27 = *v3;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N 2G/3G data rates removed due to no CS voice support", buf, 2u);
        }
      }
    }

    *buf = 0;
    v35 = 0;
    v36 = 0;
    sub_100630910(buf, __p, v38, (v38 - __p) >> 2);
    v28 = *(v1 + 40);
    if (!v28)
    {
      sub_100022DB4();
    }

    (*(*v28 + 48))(v28, buf);
    if (*buf)
    {
      v35 = *buf;
      operator delete(*buf);
    }

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    goto LABEL_40;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  if (!v22)
  {
LABEL_25:
    sub_100004A34(v21);
    goto LABEL_26;
  }

LABEL_20:
  *buf = 0;
  v35 = 0;
  (*(*v22 + 8))(buf, v22, *(v1 + 8));
  if (!*buf || ((*(**buf + 72))(*buf, 2) & 1) != 0)
  {
    if (v35)
    {
      sub_100004A34(v35);
    }

    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v30 = *v3;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#N Current operator does not allow switching data rate", &__p, 2u);
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  v31 = *(v1 + 40);
  if (!v31)
  {
    sub_100022DB4();
  }

  (*(*v31 + 48))(v31, &__p);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_40:
  sub_100630834(&v33);
  return sub_1000049E0(&v32);
}

void sub_100630770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
    if (!v17)
    {
LABEL_5:
      if (v18)
      {
LABEL_10:
        sub_100630834(&a10);
        sub_1000049E0(&a9);
        _Unwind_Resume(a1);
      }

LABEL_9:
      sub_100004A34(v16);
      goto LABEL_10;
    }
  }

  else if (!v17)
  {
    goto LABEL_5;
  }

  sub_100004A34(v17);
  if (v18)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t *sub_100630834(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1006266CC(v1 + 16);
    operator delete();
  }

  return result;
}

_DWORD *sub_100630884(_DWORD *a1, _DWORD *a2, uint64_t (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((a3(*v3) & 1) == 0)
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if ((a3(*i) & 1) == 0)
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_100630910(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_100630970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063098C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1006309D8(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t sub_100630C08(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100630C88(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  MaxDataRate_sync = MaxDataRateManager::getMaxDataRate_sync(*v1, *(v1 + 8));
  sub_100630D48(v1 + 16, MaxDataRate_sync);
  sub_100630CF8(&v5);
  return sub_1000049E0(&v4);
}

void sub_100630CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100630CF8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100630CF8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100626F50(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_100630D48(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100630D9C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100630E1C(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (MaxDataRateManager::isMaxDataRateValid_sync(v2, *(v1 + 8), *(v1 + 12)))
  {
    MaxDataRate_sync = MaxDataRateManager::getMaxDataRate_sync(v2, *(v1 + 8));
    v5 = *(v1 + 12);
    if (MaxDataRate_sync == v5)
    {
      v6 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = asString();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Provided data rate %s is already one the device has been set to, bailing out", buf, 0xCu);
      }

      if (*(v1 + 40))
      {
        v7 = 0;
LABEL_15:
        v9 = std::generic_category();
        sub_100631050(v1 + 16, v7, v9);
      }
    }

    else
    {
      if (MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v1 + 8), v5, 1))
      {
        v7 = 0;
      }

      else
      {
        v7 = 35;
      }

      if (*(v1 + 40))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Provided data rate %s is not valid", buf, 0xCu);
    }

    if (*(v1 + 40))
    {
      v7 = 22;
      goto LABEL_15;
    }
  }

  sub_100631000(&v12);
  return sub_1000049E0(&v11);
}

void sub_100630FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631000(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631000(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1002F5210(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_100631050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, v5);
}

uint64_t *sub_1006310A4(const void ***a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(*v1 + 2))(*v1, *(v1 + 8));
  sub_100631110(&v4);
  return sub_1000049E0(&v3);
}

void sub_1006310F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void **a10)
{
  sub_100631110(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

const void ***sub_100631110(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete();
  }

  return result;
}

__n128 sub_1006311E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BF30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

void sub_10063121C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(*(a1 + 8) + 56));
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
  group = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &group);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_8:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_9:
  (*(*v10 + 344))(v10, *(a1 + 16), *(a1 + 20));
  (*(*v10 + 352))(v10, *(a1 + 16), *(a1 + 20));
  v12 = *(a1 + 16);
  v13 = *(a1 + 20);
  group = 0;
  (*(*v10 + 360))(v10, v12, v13, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1006313C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100631468(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1006314E8(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  MaxDataRateManager::getModel_sync(v2, *(v1 + 8), &v7);
  v3 = v7;
  if (v7)
  {
    sub_1006315E8(v1 + 16, *(v7 + 496));
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v3)
  {
    sub_1006315E8(v1 + 16, 0);
  }

  sub_100631598(&v6);
  return sub_1000049E0(&v5);
}

void sub_100631568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631598(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10010B9AC(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1006315E8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_10063163C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  MaxDataRateManager::getModel_sync(v2, *(v1 + 8), &v7);
  v3 = v7;
  if (v7)
  {
    sub_1006315E8(v1 + 16, *(v7 + 616));
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v3)
  {
    sub_1006315E8(v1 + 16, 0);
  }

  sub_100631598(&v6);
  return sub_1000049E0(&v5);
}

void sub_1006316BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006316EC(int **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(*v1 + 584))
  {
    v3 = 2;
LABEL_3:
    sub_1006315E8((v1 + 4), v3);
    goto LABEL_4;
  }

  v5 = *(v2 + 568);
  if (*(v5 + 16) == 2 && *(v5 + 136) != 2)
  {
    v3 = 3;
    goto LABEL_3;
  }

  v9 = 0;
  v10 = 0;
  MaxDataRateManager::getModel_sync(v2, v1[2], &v9);
  v6 = v9;
  if (v9)
  {
    sub_1006315E8((v1 + 4), *(v9 + 736));
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (!v6)
  {
    v3 = 0;
    goto LABEL_3;
  }

LABEL_4:
  sub_100631598(&v8);
  return sub_1000049E0(&v7);
}

void sub_1006317A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006317D0(int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(*v1 + 584))
  {
    v3 = 2;
  }

  else
  {
    v4 = *(v2 + 568);
    if (*(v4 + 16) == 2)
    {
      v3 = *(v4 + 136);
    }

    else if (MaxDataRateManager::areRegulatedRatsAllowed_sync(v2, v1[2]))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  sub_1006315E8((v1 + 4), v3);
  sub_100631598(&v7);
  return sub_1000049E0(&v6);
}

void sub_100631854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631870(uint64_t *a1)
{
  v3 = a1;
  v4 = *a1;
  if (*(*v4 + 584))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(*(*v4 + 568) + 136);
  }

  sub_1006315E8(v4 + 8, v1);
  sub_1006318EC(&v4);
  return sub_1000049E0(&v3);
}

void sub_1006318D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1006318EC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006318EC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10010B9AC(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_10063193C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(*(*v1 + 568) + 16) == 2)
  {
    v3 = *(v1 + 8);
    v9 = 0;
    MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, v3, 1, &v9);
    if (*(v1 + 40))
    {
      v4 = 0;
LABEL_8:
      v5 = std::generic_category();
      sub_100631050(v1 + 16, v4, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017761A0();
    }

    if (*(v1 + 40))
    {
      v4 = 1;
      goto LABEL_8;
    }
  }

  sub_100631A0C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1006319F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100631A0C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631A0C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1002F5210(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_100631A5C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100631ADC(MaxDataRateManager ***a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(*v1 + 71);
  v4 = *(v3 + 16) != 2 || *(v3 + 136) == 2;
  if ((v4 & MaxDataRateManager::areRegulatedRatsAllowedForAllSlots_sync(*v1)) == 1)
  {
    if (v1[5])
    {
      sub_100624328((v1 + 2), 0);
    }
  }

  else
  {
    v5 = dispatch_group_create();
    v6 = v1[1];
    if (v6 < 1)
    {
      v8 = *(v2 + 584);
      if (v8)
      {
        *(v2 + 584) = 0;
        (*(*v8 + 8))(v8);
        v9 = *(v2 + 568);
        if (*(v9 + 16) == 2 && *(v9 + 136) != 2)
        {
          *&buf = 0;
          MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, 0, 2, &buf);
        }

        else
        {
          *&buf = 0;
          MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v2, 0x100u, 2, &buf);
        }
      }
    }

    else
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Temporary Legacy RATs enablement requested for %lld seconds", &buf, 0xCu);
      }

      if (v4)
      {
        v24 = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v5);
        }

        MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v2, 0x101u, 2, &v24);
      }

      else
      {
        v24 = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v5);
        }

        MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, 1, 2, &v24);
      }

      if (v5)
      {
        dispatch_group_leave(v5);
        dispatch_release(v5);
      }

      sub_100004AA0(&buf, (v2 + 8));
      v10 = buf;
      if (*(&buf + 1))
      {
        atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v10 + 1));
      }

      Registry::getTimerService(&v26, *(v2 + 56));
      v11 = v26;
      sub_10000501C(__p, "Legacy RATs temporary enablement");
      v12 = v1[1];
      v13 = *(v2 + 24);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 1174405120;
      v29 = sub_100632058;
      v30 = &unk_101E6C000;
      v31 = v2;
      v32 = v10;
      if (*(&v10 + 1))
      {
        atomic_fetch_add_explicit((*(&v10 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v33 = v2;
      aBlock = _Block_copy(&buf);
      sub_100D23364(v11, __p, 2, 1000000 * v12, &object, &aBlock);
      v14 = v25;
      v25 = 0;
      v15 = *(v2 + 584);
      *(v2 + 584) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v25;
        v25 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27)
      {
        sub_100004A34(v27);
      }

      if (*(&v32 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v32 + 1));
      }

      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v10 + 1));
      }
    }

    if (v1[5])
    {
      sub_10063223C(&v26, (v1 + 2));
      operator new();
    }

    if (v5)
    {
      dispatch_release(v5);
    }
  }

  sub_100632008(&v19);
  return sub_1000049E0(&v18);
}

void sub_100631F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *aBlock, dispatch_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  sub_100632008(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100632008(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100626FD0(v1 + 16);
    operator delete();
  }

  return result;
}

void sub_100632058(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Temporary Legacy RATs enablement timer fired", v10, 2u);
        }

        v7 = *(v3 + 584);
        *(v3 + 584) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = a1[7];
        v9 = *(v8 + 568);
        if (*(v9 + 16) == 2 && *(v9 + 136) != 2)
        {
          v10[0] = 0;
          MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v8, 0, 2, v10);
        }

        else
        {
          v10[0] = 0;
          MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v8, 0x100u, 2, v10);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10063217C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100632198(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_1006321A8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100626FD0(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1006321F0(uint64_t a1)
{
  v2 = a1;
  sub_100624328(a1, 1);
  return sub_1006321A8(&v2);
}

void sub_100632228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006321A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063223C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1006322E4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v8 = 0;
  v9 = 0;
  MaxDataRateManager::getModel_sync(v2, *(v1 + 8), &v8);
  if (v8)
  {
    v3 = *(v8 + 856);
  }

  else
  {
    v3 = 0;
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(v2 + 584))
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  sub_1006315E8(v1 + 16, v4);
  sub_100631598(&v7);
  return sub_1000049E0(&v6);
}

void sub_100632378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100632394(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  if (MaxDataRateManager::getRegulatedRatsSwitchSupport_sync(*v1, *(v1 + 8)))
  {
    v3 = *(v1 + 8);
    v4 = *(v1 + 12);
    v10 = 0;
    MaxDataRateManager::setUserPreferenceEnableRegulatedRats_sync(v2, v3, v4 | 0x100, 1, &v10);
    if (*(v1 + 40))
    {
      v5 = 0;
LABEL_8:
      v6 = std::generic_category();
      sub_100631050(v1 + 16, v5, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017761D4();
    }

    if (*(v1 + 40))
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  sub_100632470(&v9);
  return sub_1000049E0(&v8);
}

void sub_100632454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100632470(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100632470(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1002F5210(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1006324C0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100632540(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(*v1, *(v1 + 8));
  sub_100632604(v1 + 16, v2);
  sub_1006325B4(&v5);
  return sub_1000049E0(&v4);
}

void sub_100632598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1006325B4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006325B4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100627050(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_100632604(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_100632658(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006326B0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1006326B0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100632738(v5, v5 + 1, v4 + 7);
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
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100632738(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000504CC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

double sub_1006327F4(uint64_t a1, int a2, char a3, char a4, char a5, char a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 5) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = a5;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 169) = a6;
  *(a1 + 170) = 0;
  return result;
}

void sub_1006329BC(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_100632B14(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100632C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100632CF8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100632D20(uint64_t result)
{
  *result = off_101E6C140;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_100632D44(void ***a1)
{
  *a1 = off_101E6C140;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_100632D9C(void ***a1)
{
  *a1 = off_101E6C140;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_100632E08(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100632E9C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1006331A4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

double sub_100633230(uint64_t a1)
{
  *a1 = &off_101E6C258;
  *(a1 + 72) = 0;
  *(a1 + 84) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_10063326C(PB::Base *this)
{
  *this = &off_101E6C258;
  v4 = *(this + 7);
  v2 = (this + 56);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    sub_100140988(this + 48, v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    sub_100140988(this + 40, v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

void sub_100633338(PB::Base *a1)
{
  sub_10063326C(a1);

  operator delete();
}

uint64_t sub_100633370(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E6C258;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 84) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 84);
  if (v4)
  {
    v5 = *(a2 + 72);
    *(a1 + 84) |= 1u;
    *(a1 + 72) = v5;
    v4 = *(a2 + 84);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 76);
    *(a1 + 84) |= 2u;
    *(a1 + 76) = v6;
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if ((*(a2 + 84) & 4) != 0)
  {
    v7 = *(a2 + 80);
    *(a1 + 84) |= 4u;
    *(a1 + 80) = v7;
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_1006335DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  PB::TextFormatter::format();
  if ((*(a1 + 84) & 4) != 0)
  {
    PB::TextFormatter::format(this, "isPresentInResponse", *(a1 + 80));
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "manageAccountInfo");
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 84))
  {
    PB::TextFormatter::format(this, "status", *(a1 + 72));
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  if ((*(a1 + 84) & 2) != 0)
  {
    PB::TextFormatter::format(this, "type", *(a1 + 76));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10063371C(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_91;
          }

          v13 = v20;
          v21 = *v19;
          *(this + 1) = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          *(this + 1) = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 84) |= 1u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v52 = 0;
              v53 = 0;
              v37 = 0;
              v47 = v32 >= v33;
              v54 = v32 - v33;
              if (!v47)
              {
                v54 = 0;
              }

              v55 = (v34 + v33);
              v56 = v33 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_89;
                }

                v57 = *v55;
                *(this + 1) = v56;
                v37 |= (v57 & 0x7F) << v52;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                --v54;
                ++v55;
                ++v56;
                v15 = v53++ > 8;
                if (v15)
                {
LABEL_79:
                  LODWORD(v37) = 0;
                  goto LABEL_89;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(this + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v15 = v36++ > 8;
                if (v15)
                {
                  goto LABEL_79;
                }
              }
            }

LABEL_89:
            *(a1 + 72) = v37;
            goto LABEL_56;
          }

          if (v22 == 4)
          {
            *(a1 + 84) |= 2u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v45 = 0;
              v46 = 0;
              v28 = 0;
              v47 = v23 >= v24;
              v48 = v23 - v24;
              if (!v47)
              {
                v48 = 0;
              }

              v49 = (v25 + v24);
              v50 = v24 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_86;
                }

                v51 = *v49;
                *(this + 1) = v50;
                v28 |= (v51 & 0x7F) << v45;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v48;
                ++v49;
                ++v50;
                v15 = v46++ > 8;
                if (v15)
                {
LABEL_71:
                  LODWORD(v28) = 0;
                  goto LABEL_86;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v15 = v27++ > 8;
                if (v15)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_86:
            *(a1 + 76) = v28;
            goto LABEL_56;
          }
        }

        else
        {
          if (v22 == 1)
          {
            PB::Reader::read();
            goto LABEL_56;
          }

          if (v22 == 2)
          {
            if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
            {
              *(this + 24) = 1;
            }

            else
            {
              *(a1 + 64) = *(v7 + v13);
              *(this + 1) += 8;
            }

            goto LABEL_56;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          operator new();
        }

        if (v22 == 6)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            operator new();
          case 8:
            *(a1 + 84) |= 4u;
            v41 = *(this + 1);
            if (v41 >= *(this + 2))
            {
              v44 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v42 = v41 + 1;
              v43 = *(*this + v41);
              *(this + 1) = v42;
              v44 = v43 != 0;
            }

            *(a1 + 80) = v44;
            goto LABEL_56;
          case 9:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v59 = 0;
        return v59 & 1;
      }

LABEL_56:
      v3 = *(this + 1);
      v2 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_91:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t sub_100633CF8(uint64_t a1, PB::Writer *a2)
{
  PB::Writer::write();
  result = PB::Writer::write(a2, *(a1 + 64), 2u);
  v5 = *(a1 + 84);
  if (v5)
  {
    result = PB::Writer::writeVarInt(a2, *(a1 + 72), 3u);
    v5 = *(a1 + 84);
  }

  if ((v5 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(a2, *(a1 + 76), 4u);
  }

  if (*(a1 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(a1 + 56))
  {
    result = PB::Writer::write();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(a2, v6, 7u);
  }

  if ((*(a1 + 84) & 4) != 0)
  {
    result = PB::Writer::write(a2, *(a1 + 80), 8u);
  }

  if (*(a1 + 40))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_100633DEC(uint64_t result)
{
  if (!*(result + 32))
  {
    operator new();
  }

  return result;
}

const char *sub_100633EA4(int a1)
{
  if ((a1 + 1) > 3)
  {
    return "???";
  }

  else
  {
    return off_101E6C2D8[a1 + 1];
  }
}

_DWORD *sub_100633ECC(_DWORD *a1, int a2, __int128 *a3, int a4)
{
  *a1 = a2;
  v6 = a1 + 2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(v6 + 2) = *(a3 + 2);
    *v6 = v7;
  }

  a1[8] = a4;
  return a1;
}

BOOL sub_100633F20(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 8)) : (v8 = *(a1 + 8)), v7 >= 0 ? (v9 = (a2 + 8)) : (v9 = *(a2 + 8)), !memcmp(v8, v9, v5)))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

const char *sub_100633FEC(_DWORD *a1)
{
  if (*a1 == 2 || a1[8] != 2)
  {
    return asString();
  }

  else
  {
    return "WiFiCalling-only";
  }
}

char *sub_100634018@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100005F2C(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

void sub_1006340B4(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v17 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_int64_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v13 = &v17;
  v14 = "telephonyEnabled";
  sub_10000F688(&v13, &object, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(object);
  object = 0;
  if (*(a1 + 31) >= 0)
  {
    v7 = (a1 + 2);
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v11 = xpc_string_create(v7);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "reason";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(a1[8]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "wifiCallingEnabled";
  sub_10000F688(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v17;
  *a2 = v17;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void sub_1006342C8(uint64_t a1, void **a2)
{
  sub_10000501C(v19, "");
  LODWORD(__p) = 0;
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(&v16, *v19, *&v19[2]);
    v4 = __p;
  }

  else
  {
    v4 = 0;
    v16 = *v19;
    v17 = v20;
  }

  v5 = 0;
  v18 = 0;
  *a1 = v4;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v5 = v18;
  }

  *(a1 + 8) = v16;
  *(a1 + 24) = v17;
  HIBYTE(v17) = 0;
  LOBYTE(v16) = 0;
  *(a1 + 32) = v5;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(*v19);
  }

  v6 = *a2;
  object = v6;
  if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    v7 = object;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    __p = &object;
    *&v16 = "telephonyEnabled";
    sub_100006354(&__p, v19);
    type = xpc_get_type(*v19);
    if (type == &_xpc_type_string)
    {
      LODWORD(v12[0]) = *a1;
      ctu::rest::detail::read_enum_string_value(v12, v19, v9);
      *a1 = v12[0];
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(v19, 0, v9);
    }

    xpc_release(*v19);
    v12[0] = &object;
    v12[1] = "reason";
    sub_100006354(v12, &v13);
    __p = 0;
    v16 = 0uLL;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v19;
    *(a1 + 24) = v20;
    xpc_release(v13);
    __p = &object;
    *&v16 = "wifiCallingEnabled";
    sub_100006354(&__p, v19);
    v10 = xpc_get_type(*v19);
    if (v10 == &_xpc_type_string)
    {
      LODWORD(v12[0]) = *(a1 + 32);
      ctu::rest::detail::read_enum_string_value(v12, v19, v11);
      *(a1 + 32) = v12[0];
    }

    else if (v10 == &_xpc_type_BOOL || v10 == &_xpc_type_int64 || v10 == &_xpc_type_uint64)
    {
      *(a1 + 32) = xpc::dyn_cast_or_default(v19, 0, v11);
    }

    xpc_release(*v19);
  }

  xpc_release(object);
}

_DWORD *sub_100634618(_DWORD *a1, int a2, __int128 *a3)
{
  *a1 = a2;
  v4 = a1 + 2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v4, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(v4 + 2) = *(a3 + 2);
    *v4 = v5;
  }

  return a1;
}

BOOL sub_100634664(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

const char *sub_100634704(_DWORD *a1)
{
  v1 = *a1 + 1;
  if (v1 > 3)
  {
    return "???";
  }

  else
  {
    return off_101E6C2D8[v1];
  }
}