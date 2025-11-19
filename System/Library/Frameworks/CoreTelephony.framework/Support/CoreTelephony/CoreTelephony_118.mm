void sub_1007C33A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v19 - 112) = v18;
  sub_1007CD1B8((v19 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1007C3418(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == 1)
  {
    sub_1000DE530(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v3;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a1 + 72) = *(a2 + 72);
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    v8 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v8;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    v9 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v9;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a1 + 176) = 1;
  }

  return a1;
}

uint64_t CellularPlanDeliveryModel::appendPendingODAPlan(void *a1, uint64_t a2)
{
  bzero(&v13, 0x500uLL);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::string::operator=(v21, a2);
  BYTE8(v13) = 1;
  LOWORD(v13) = 2311;
  if (*(a2 + 304) == 1)
  {
    std::string::operator=(&v14, (a2 + 208));
    std::string::operator=(&v15, (a2 + 232));
    std::string::operator=(&v16, (a2 + 256));
    std::string::operator=(v17, (a2 + 280));
    std::string::operator=(v18, (a2 + 176));
    std::string::operator=(v20, (a2 + 128));
    v4 = *(a2 + 175);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 160);
    }

    if (v4)
    {
      v5 = (a2 + 152);
    }

    else
    {
      v5 = (a2 + 128);
    }

    std::string::operator=(&v19, v5);
  }

  v22 = 1;
  v10 = sub_1002811AC(&v9, &v13);
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v20;
    if ((v20[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v20[0].__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I append pending ODA plan with iccid: %s", buf, 0xCu);
  }

  (*(*a1 + 32))(a1, &v9);
  *buf = &v9;
  sub_10005C284(buf);
  return sub_1002813D0(&v13);
}

void sub_1007C370C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(v7, va);
  sub_10005C284(va1);
  sub_1002813D0(va2);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::addExpiredPlan_sync(uint64_t a1, char *a2)
{
  if (!sub_10016FA58(a1 + 376, a2))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I add expired plan: %s", &v6, 0xCu);
    }

    sub_1007CF5E8(a1 + 376, a2);
    if (!CellularPlanDeliveryModel::PersistenceHelper::savePlans(*(a1 + 128), (a1 + 376), @"com.apple.commcenter.cellular_plan", @"kExpiredPlans") && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EE00();
    }
  }
}

void CellularPlanDeliveryModel::deleteExpiredPlan_sync(uint64_t a1, char *a2)
{
  if (sub_10016FA58(a1 + 376, a2))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I remove expired plan: %s", &v6, 0xCu);
    }

    sub_1000727F0((a1 + 376), a2);
    if (!CellularPlanDeliveryModel::PersistenceHelper::savePlans(*(a1 + 128), (a1 + 376), @"com.apple.commcenter.cellular_plan", @"kExpiredPlans") && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EE00();
    }
  }
}

uint64_t CellularPlanDeliveryModel::getFilteredPlans_sync@<X0>(CellularPlanDeliveryModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_100074920(a2, this + 376);
  v5 = *(this + 33);
  v6 = this + 272;
  if (v5 != v6)
  {
    do
    {
      result = sub_100005BA0(a2, v5 + 7);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  return result;
}

void CellularPlanDeliveryModel::getSourcePlanInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = (a2 + 23);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EE9C();
    }

    goto LABEL_84;
  }

  v8 = *(a1 + 312);
  v9 = *(a1 + 320);
  if (v8 != v9)
  {
    while (1)
    {
      v10 = *(v8 + 455);
      if (v10 >= 0)
      {
        v11 = *(v8 + 455);
      }

      else
      {
        v11 = *(v8 + 440);
      }

      v12 = *(a2 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v11 == v12)
      {
        v14 = v10 >= 0 ? (v8 + 432) : *(v8 + 432);
        v15 = v13 >= 0 ? a2 : *a2;
        if (!memcmp(v14, v15, v11))
        {
          break;
        }
      }

      if (*(v8 + 479) < 0)
      {
        sub_100005F2C(__dst, *(v8 + 456), *(v8 + 464));
        if ((*v6 & 0x80) != 0)
        {
LABEL_22:
          sub_100005F2C(v41, *a2, *(a2 + 8));
          goto LABEL_23;
        }
      }

      else
      {
        *__dst = *(v8 + 456);
        v44 = *(v8 + 472);
        if ((v13 & 0x80) != 0)
        {
          goto LABEL_22;
        }
      }

      *v41 = *a2;
      v42 = *(a2 + 16);
LABEL_23:
      if (sub_100922660(__dst, v41))
      {
        goto LABEL_24;
      }

      v17 = (v8 + 480);
      v18 = *(v8 + 503);
      if (v18 >= 0)
      {
        v19 = *(v8 + 503);
      }

      else
      {
        v19 = *(v8 + 488);
      }

      v20 = *(a2 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(a2 + 8);
      }

      if (v19 == v20)
      {
        v22 = v18 >= 0 ? (v8 + 480) : *v17;
        v23 = v21 >= 0 ? a2 : *a2;
        if (!memcmp(v22, v23, v19))
        {
LABEL_24:
          v16 = 1;
          goto LABEL_69;
        }
      }

      sub_10092CDF4(a2, v39);
      v24 = *(v8 + 503);
      if (v24 >= 0)
      {
        v25 = *(v8 + 503);
      }

      else
      {
        v25 = *(v8 + 488);
      }

      v26 = v40;
      v27 = v40;
      if ((v40 & 0x80u) != 0)
      {
        v26 = v39[1];
      }

      if (v25 == v26)
      {
        v28 = v24 >= 0 ? (v8 + 480) : *v17;
        v29 = (v40 & 0x80u) == 0 ? v39 : v39[0];
        if (!memcmp(v28, v29, v25))
        {
          v16 = 1;
          if ((v27 & 0x80) == 0)
          {
            goto LABEL_69;
          }

LABEL_68:
          operator delete(v39[0]);
          goto LABEL_69;
        }
      }

      sub_10092CF84(a2, __p);
      v30 = *(v8 + 503);
      if (v30 >= 0)
      {
        v31 = *(v8 + 503);
      }

      else
      {
        v31 = *(v8 + 488);
      }

      v32 = v38;
      v33 = v38;
      if ((v38 & 0x80u) != 0)
      {
        v32 = __p[1];
      }

      if (v31 != v32)
      {
        v16 = 0;
        if ((v38 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

LABEL_66:
        operator delete(__p[0]);
        goto LABEL_67;
      }

      if (v30 >= 0)
      {
        v34 = (v8 + 480);
      }

      else
      {
        v34 = *v17;
      }

      if ((v38 & 0x80u) == 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      v16 = memcmp(v34, v35, v31) == 0;
      if (v33 < 0)
      {
        goto LABEL_66;
      }

LABEL_67:
      if ((v40 & 0x80) != 0)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v16)
      {
        break;
      }

      v8 += 1280;
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }
  }

  if (v8 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EE34();
    }

LABEL_84:
    v36 = 0;
    *a3 = 0;
    goto LABEL_85;
  }

  sub_10027B690(a3, v8);
  v36 = 1;
LABEL_85:
  a3[1280] = v36;
}

void sub_1007C3D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::getPendingTransferPlansForCarrier@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(result + 312);
  for (i = *(result + 320); v4 != i; v4 += 80)
  {
    bzero(v14, 0x500uLL);
    sub_10027B690(v14, v4);
    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = v15[1];
    }

    v8 = *(a2 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (v7 == v8)
    {
      v10 = (v16 & 0x80u) == 0 ? v15 : v15[0];
      v11 = v9 >= 0 ? a2 : *a2;
      if (!memcmp(v10, v11, v7))
      {
        v12 = a3[1];
        if (v12 >= a3[2])
        {
          v13 = sub_1002811AC(a3, v14);
        }

        else
        {
          sub_10027B690(a3[1], v14);
          v13 = v12 + 1280;
        }

        a3[1] = v13;
      }
    }

    result = sub_1002813D0(v14);
  }

  return result;
}

void sub_1007C3ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  sub_1002813D0(&a10);
  a10 = v10;
  sub_10005C284(&a10);
  _Unwind_Resume(a1);
}

CellularPlanDeliveryModel *CellularPlanDeliveryModel::startPushListenerForPendingPlans_sync(CellularPlanDeliveryModel *this)
{
  v1 = *(this + 39);
  v2 = *(this + 40);
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      if (*(v1 + 1) == 8)
      {
        v4[0] = off_101E7F9B0;
        v4[3] = v4;
        CellularPlanDeliveryModel::maybeStartEntitlementPushListenerForPlan(v3, v1 + 432, v4);
        this = sub_10002B644(v4);
      }

      v1 += 1280;
    }

    while (v1 != v2);
  }

  return this;
}

void sub_1007C3FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::maybeStartEntitlementPushListenerForPlan(CellularPlanDeliveryModel *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    v9 = *(a2 + 8);
    if (!v9)
    {
      return;
    }

    v6 = (this + 320);
    v7 = *(this + 39);
    v8 = *(this + 40);
    sub_100005F2C(__p, *a2, v9);
  }

  else
  {
    if (!*(a2 + 23))
    {
      return;
    }

    v6 = (this + 320);
    v7 = *(this + 39);
    v8 = *(this + 40);
    *__p = *a2;
    v22 = *(a2 + 16);
  }

  v10 = HIBYTE(v22);
  if (v7 == v8)
  {
LABEL_23:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v22 >= 0)
    {
      v11 = HIBYTE(v22);
    }

    else
    {
      v11 = __p[1];
    }

    if (v22 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = v7 + 432;
    while (1)
    {
      v14 = *(v13 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v13 + 8);
      }

      if (v11 == v14)
      {
        v16 = v15 >= 0 ? v13 : *v13;
        if (!memcmp(v12, v16, v11))
        {
          break;
        }
      }

      v17 = v13 + 848;
      v13 += 1280;
      if (v17 == v8)
      {
        v7 = v8;
        goto LABEL_23;
      }
    }

    v7 = v13 - 432;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_25;
    }
  }

  operator delete(__p[0]);
LABEL_25:
  if (v7 != *v6)
  {
    CellularPlanDeliveryModel::getPushPendingPlanController_sync(this, &v19);
    v18 = v19;
    if (v19)
    {
      sub_10025ABF0((v7 + 1248), a3);
      (*(*v18 + 16))(v18, a2, v7 + 24, v7 + 48, v7 + 72, v7 + 96);
    }

    else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EED0();
    }

    if (v20)
    {
      sub_100004A34(v20);
    }
  }
}

void sub_1007C4190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::getPushPendingPlanController_sync(CellularPlanDeliveryModel *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 45);
  if (!v4)
  {
    v5 = *(this + 14);
    sub_100004AA0(&v17, this + 1);
    v6 = v18;
    if (v18)
    {
      v7 = v17;
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v14 = 0;
      v15 = 0;
      v8 = std::__shared_weak_count::lock(v6);
      v9 = v8;
      if (v8)
      {
        v10 = v7 + 48;
        if (!v7)
        {
          v10 = 0;
        }

        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v10;
        v15 = v8;
        std::__shared_weak_count::__release_weak(v6);
        sub_100004A34(v9);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    (*(*v5 + 496))(&v16, v5, this + 24, &v14);
    v11 = v16;
    v16 = 0uLL;
    v12 = *(this + 46);
    *(this + 360) = v11;
    if (v12)
    {
      sub_100004A34(v12);
      if (*(&v16 + 1))
      {
        sub_100004A34(*(&v16 + 1));
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    v4 = *(this + 45);
  }

  v13 = *(this + 46);
  *a2 = v4;
  a2[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1007C4300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::getMonitorModeType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (((*(**(a1 + 112) + 360))(*(a1 + 112), a3, a4, a5, a6, a2) & 1) == 0)
  {
    v24 = *(a1 + 176);
    if (v24)
    {
      (*(*v24 + 64))(v24, a2, 1);
    }

    return 0;
  }

  (***(a1 + 112))(&v44);
  ServiceMap = Registry::getServiceMap(v44);
  v15 = ServiceMap;
  v16 = "22TravelHandlerInterface";
  if (("22TravelHandlerInterface" & 0x8000000000000000) != 0)
  {
    v17 = ("22TravelHandlerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v46 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v46);
  v41 = a7;
  v39 = a5;
  v40 = a6;
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
      v23 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_12:
  if (v45)
  {
    sub_100004A34(v45);
  }

  if (!v22 || ((*(*v22 + 48))(v22, a2) & 1) == 0)
  {
    v25 = 1;
    if (v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v25 = 0;
  if ((v23 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v21);
  }

LABEL_20:
  if (!v25)
  {
    return 0;
  }

  if ((*(**(a1 + 112) + 104))(*(a1 + 112)))
  {
    v26 = 1;
  }

  else
  {
    v26 = (*(**(a1 + 112) + 40))(*(a1 + 112));
  }

  v28 = *(a1 + 312);
  v29 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v43 = *(a2 + 16);
  }

  v30 = HIBYTE(v43);
  if (v28 == v29)
  {
    v29 = v28;
LABEL_47:
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v43 >= 0)
    {
      v31 = HIBYTE(v43);
    }

    else
    {
      v31 = __p[1];
    }

    if (v43 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    v33 = v28 + 456;
    while (1)
    {
      v34 = *(v33 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v33 + 8);
      }

      if (v31 == v34)
      {
        v36 = v35 >= 0 ? v33 : *v33;
        if (!memcmp(v32, v36, v31))
        {
          break;
        }
      }

      v37 = v33 + 824;
      v33 += 1280;
      if (v37 == v29)
      {
        goto LABEL_47;
      }
    }

    v29 = v33 - 456;
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_49;
    }
  }

  operator delete(__p[0]);
LABEL_49:
  if (v29 != *(a1 + 320))
  {
    if ((*(v29 + 8) & 1) == 0 && (v41 & 1) == 0)
    {
      v38 = *(a1 + 176);
      if (v38)
      {
        (*(*v38 + 64))(v38, a2, 1);
      }

      v26 = 0;
    }

    if (*(v29 + 984) == 2 && ((*(**(a1 + 112) + 344))(*(a1 + 112), a3, a4, v39, v40) & 1) != 0)
    {
      return 1;
    }
  }

  return v26;
}

void sub_1007C46F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::reportTransferSimServiceOnTimedOut(uint64_t a1, const void **a2)
{
  v35 = 0u;
  v37 = 0u;
  v36 = 0u;
  v42 = 0u;
  v41 = 0u;
  memset(__p, 0, sizeof(__p));
  v38 = 0u;
  v40 = 23;
  HIBYTE(v35) = 8;
  v34 = 0x72616C756C6C6543;
  BYTE7(v37) = 13;
  qmemcpy(&v36, "eSIM Transfer", 13);
  sub_1000167D4((&v37 + 8), "No service after 3 min timeout", 0x1EuLL);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  memset(&v33, 0, sizeof(v33));
  v5 = &v33;
  sub_1000677C4(&v33, v4 + 1);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v33.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 32;
  if (v38 >= 0)
  {
    v7 = &v37 + 8;
  }

  else
  {
    v7 = *(&v37 + 1);
  }

  if (v38 >= 0)
  {
    v8 = HIBYTE(v38);
  }

  else
  {
    v8 = v38;
  }

  v9 = std::string::append(&v33, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[0];
  v45[0] = v9->__r_.__value_.__l.__size_;
  *(v45 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v10;
  __p[1] = v45[0];
  *(&__p[1] + 7) = *(v45 + 7);
  HIBYTE(__p[2]) = v11;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v40 |= 3uLL;
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I report Transfer Sim Service On Timeout.", &v33, 2u);
  }

  (***(a1 + 112))(&v33);
  ServiceMap = Registry::getServiceMap(v33.__r_.__value_.__l.__data_);
  v14 = ServiceMap;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  v45[0] = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, v45);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_31:
  sub_100D9EC48(__dst, &v34);
  v44 = 0;
  (*(*v21 + 16))(v21, __dst, v43);
  sub_10010DF14(v43);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if ((v24 & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  operator delete(__dst[0]);
  if ((v22 & 1) == 0)
  {
LABEL_41:
    sub_100004A34(v20);
  }

LABEL_42:
  if (v33.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v33.__r_.__value_.__l.__size_);
  }

  if (SBYTE7(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(*(&v37 + 1));
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }
}

void sub_1007C4AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, std::__shared_weak_count *a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_10010DF14(v35 - 120);
  sub_100D9E764(&a10);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  sub_100D9E764(&a33);
  _Unwind_Resume(a1);
}

BOOL CellularPlanDeliveryModel::isOnDeviceTransferredPlan(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 312);
  v3 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v5 = HIBYTE(v15);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = __p[1];
    }

    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 456;
    while (1)
    {
      v9 = v8[23];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 1);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 824;
      v8 += 1280;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 456;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  return v3 != *(a1 + 320) && *v3 == 7;
}

void CellularPlanDeliveryModel::setPendingTransferPlansReportStateAsSent(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = *(a1 + 320);
    do
    {
      v6 = *(a1 + 312);
      if (*(v2 + 23) < 0)
      {
        sub_100005F2C(__p, *v2, *(v2 + 1));
      }

      else
      {
        v7 = *v2;
        v18 = *(v2 + 2);
        *__p = v7;
      }

      v8 = HIBYTE(v18);
      if (v6 == v5)
      {
        v5 = v6;
LABEL_24:
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 >= 0)
        {
          v9 = HIBYTE(v18);
        }

        else
        {
          v9 = __p[1];
        }

        if (v18 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v11 = v6 + 456;
        while (1)
        {
          v12 = *(v11 + 23);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v11 + 8);
          }

          if (v9 == v12)
          {
            v14 = v13 >= 0 ? v11 : *v11;
            if (!memcmp(v10, v14, v9))
            {
              break;
            }
          }

          v15 = v11 + 824;
          v11 += 1280;
          if (v15 == v5)
          {
            goto LABEL_24;
          }
        }

        v5 = v11 - 456;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_26;
        }
      }

      operator delete(__p[0]);
LABEL_26:
      v16 = *(a1 + 320);
      if (v5 != v16 && (*(v5 + 11) & 1) == 0)
      {
        *(v5 + 11) = 1;
      }

      v2 = (v2 + 24);
      v5 = v16;
    }

    while (v2 != v3);
  }
}

void CellularPlanDeliveryModel::getTransferPlansNeedStatusReport(CellularPlanDeliveryModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 39);
  v4 = *(this + 40);
  if (v3 != v4)
  {
    v6 = v3 + 456;
    do
    {
      sub_1007C4FBC(v6, (v6 + 24), this + 26, __p);
      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(*__p);
        }

        if (sub_10064A68C(v6 - 456, this + 5))
        {
          v7 = a2[1];
          if (v7 >= a2[2])
          {
            v8 = sub_1000053A0(a2, v6);
          }

          else
          {
            sub_10011C7A4(a2, v6);
            v8 = v7 + 24;
          }

          a2[1] = v8;
          goto LABEL_20;
        }

        v13 = *(this + 5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v6;
          if (*(v6 + 23) < 0)
          {
            v14 = *v6;
          }

          *__p = 136315138;
          *&__p[4] = v14;
          v11 = v13;
          v12 = "#I Plan (%s) does not need status report";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, __p, 0xCu);
        }
      }

      else
      {
        v9 = *(this + 5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v6;
          if (*(v6 + 23) < 0)
          {
            v10 = *v6;
          }

          *__p = 136315138;
          *&__p[4] = v10;
          v11 = v9;
          v12 = "#I Plan (%s) is not available yet";
          goto LABEL_17;
        }
      }

LABEL_20:
      v15 = v6 + 824;
      v6 += 1280;
    }

    while (v15 != v4);
  }
}

void sub_1007C4FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void sub_1007C4FBC(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a4;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v30 = 0;
    goto LABEL_58;
  }

  while (1)
  {
    if (*(v5 + 12) == 3 && *(v5 + 80) == 1)
    {
      v9 = *(v5 + 64);
      v10 = *(v5 + 56);
      if (v10 != v9)
      {
        break;
      }
    }

LABEL_55:
    v5 += 88;
    if (v5 == v6)
    {
      v30 = 0;
      v4 = a4;
LABEL_58:
      *v4 = 0;
      goto LABEL_59;
    }
  }

  while (1)
  {
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13 = *(v10 + 39);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v10 + 24);
    }

    if (v12 == v13)
    {
      v15 = v11 >= 0 ? a1 : *a1;
      v16 = v14 >= 0 ? (v10 + 16) : *(v10 + 16);
      if (!memcmp(v15, v16, v12))
      {
        break;
      }
    }

    sub_10092CDF4(v10 + 16, v35);
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    v19 = v36;
    v20 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v19 = v35[1];
    }

    if (v18 == v19)
    {
      v21 = v17 >= 0 ? a2 : *a2;
      v22 = (v36 & 0x80u) == 0 ? v35 : v35[0];
      if (!memcmp(v21, v22, v18))
      {
        v29 = 1;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_49;
        }

LABEL_48:
        operator delete(v35[0]);
        goto LABEL_49;
      }
    }

    sub_10092CF84(v10 + 16, __p);
    v23 = *(a2 + 23);
    if (v23 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = a2[1];
    }

    v25 = v34;
    v26 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v25 = __p[1];
    }

    if (v24 != v25)
    {
      v29 = 0;
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_46:
      operator delete(__p[0]);
      goto LABEL_47;
    }

    if (v23 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if ((v34 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    v29 = memcmp(v27, v28, v24) == 0;
    if (v26 < 0)
    {
      goto LABEL_46;
    }

LABEL_47:
    if ((v36 & 0x80) != 0)
    {
      goto LABEL_48;
    }

LABEL_49:
    if (v29)
    {
      break;
    }

    v10 += 216;
    if (v10 == v9)
    {
      v10 = v9;
      break;
    }
  }

  if (v10 == *(v5 + 64))
  {
    goto LABEL_55;
  }

  if (*(v10 + 39) < 0)
  {
    v4 = a4;
    sub_100005F2C(a4, *(v10 + 16), *(v10 + 24));
  }

  else
  {
    v31 = *(v10 + 16);
    v4 = a4;
    *(a4 + 16) = *(v10 + 32);
    *a4 = v31;
  }

  v30 = 1;
LABEL_59:
  v4[24] = v30;
}

void sub_1007C5214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::encodeTransferStatusReport_sync(CellularPlanDeliveryModel *this@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(this + 39);
  v4 = *(this + 40);
  if (v3 == v4)
  {
    return;
  }

  v6 = v3 + 264;
  do
  {
    v7 = (v6 + 192);
    sub_1007C4FBC(v6 + 192, (v6 + 216), this + 26, __p);
    if (BYTE8(v29) == 1)
    {
      if (SBYTE7(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_10064A68C(v6 - 264, this + 5))
      {
        v8 = *(this + 5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v6 + 215) < 0)
          {
            v9 = *v7;
          }

          else
          {
            v9 = (v6 + 192);
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Plan (%s) needs status report", __p, 0xCu);
        }

        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        *__src = 0u;
        *v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        *__p = 0u;
        sub_10000D518(__p);
        v11 = sub_10000C030(__p);
        v12 = sub_10000C030(v11);
        v13 = sub_10000C030(v12);
        v14 = sub_10000C030(v13);
        sub_10000C030(v14);
        if ((BYTE8(v34) & 0x10) != 0)
        {
          v16 = v34;
          if (v34 < __src[1])
          {
            *&v34 = __src[1];
            v16 = __src[1];
          }

          v17 = __src[0];
        }

        else
        {
          if ((BYTE8(v34) & 8) == 0)
          {
            v15 = 0;
            v27 = 0;
LABEL_29:
            *(__dst + v15) = 0;
            if ((v27 & 0x80u) == 0)
            {
              v18 = __dst;
            }

            else
            {
              v18 = __dst[0];
            }

            if ((v27 & 0x80u) == 0)
            {
              v19 = v27;
            }

            else
            {
              v19 = __dst[1];
            }

            std::string::append(v2, v18, v19);
            if (v27 < 0)
            {
              operator delete(__dst[0]);
            }

            __p[0] = v25;
            *(__p + *(v25 - 3)) = v24;
            if (SHIBYTE(v33) < 0)
            {
              operator delete(v32[1]);
            }

            std::locale::~locale(&v29);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_40;
          }

          v17 = *(&v29 + 1);
          v16 = *(&v30 + 1);
        }

        v15 = v16 - v17;
        if ((v16 - v17) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1000A2378();
        }

        if (v15 >= 0x17)
        {
          operator new();
        }

        v27 = v16 - v17;
        if (v15)
        {
          memmove(__dst, v17, v15);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v10 = *(this + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v6 + 215) < 0)
        {
          v7 = *v7;
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Plan (%s) is not available yet", __p, 0xCu);
      }
    }

LABEL_40:
    v20 = v6 + 1016;
    v6 += 1280;
  }

  while (v20 != v4);
  v21 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if (v21 < 0)
  {
    size = v2->__r_.__value_.__l.__size_;
    if (size)
    {
      v22 = size - 1;
      v2->__r_.__value_.__l.__size_ = v22;
      v2 = v2->__r_.__value_.__r.__words[0];
LABEL_46:
      v2->__r_.__value_.__s.__data_[v22] = 0;
    }
  }

  else if (*(&v2->__r_.__value_.__s + 23))
  {
    v22 = v21 - 1;
    *(&v2->__r_.__value_.__s + 23) = v22;
    goto LABEL_46;
  }
}

void sub_1007C56A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::maybeSubmitTransferTimestampsWhenVinylInfoUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1112) != 1 || (*(a2 + 1017) & 1) != 0)
  {
    return;
  }

  v4 = (a2 + 456);
  sub_1007C4FBC(a2 + 456, (a2 + 480), (a1 + 208), &__dst);
  v5 = v29;
  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  if (!v5)
  {
    return;
  }

  if ((*(a2 + 1016) & 1) == 0)
  {
    v6 = *(a1 + 304);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(a1 + 296);
        if (v8)
        {
          (*(*v8 + 72))(v8, a2 + 992);
          if (*(a2 + 1112) == 1)
          {
            if (*(a2 + 1015) < 0)
            {
              operator delete(*(a2 + 992));
            }

            *(a2 + 1112) = 0;
          }

LABEL_23:
          v9 = v7;
LABEL_52:
          sub_100004A34(v9);
          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    goto LABEL_23;
  }

  v25 = 0;
  v26 = 0;
  Registry::getTimerService(&v25, *(a1 + 96));
  if (v25)
  {
    __dst = 0uLL;
    v28 = 0;
    if (*(a2 + 479) < 0)
    {
      sub_100005F2C(&__dst, *(a2 + 456), *(a2 + 464));
    }

    else
    {
      __dst = *v4;
      v28 = *(a2 + 472);
    }

    sub_100004AA0(&v30, (a1 + 8));
    v11 = v30;
    v10 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v12 = v25;
    sub_10000501C(__p, "Delay Transfer Sim Timestamps Metric Submission");
    v13 = *(a1 + 24);
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1007C5B44;
    aBlock[3] = &unk_101E7EFD0;
    aBlock[4] = a1;
    aBlock[5] = v11;
    v18 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(&v19, __dst, *(&__dst + 1));
    }

    else
    {
      v19 = __dst;
      v20 = v28;
    }

    v21 = _Block_copy(aBlock);
    sub_100D23364(v12, __p, 1, 180000000, &object, &v21);
    v14 = v30;
    v30 = 0;
    v15 = *(a1 + 344);
    *(a1 + 344) = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      v16 = v30;
      v30 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    if (v21)
    {
      _Block_release(v21);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EF04();
  }

  v9 = v26;
  if (v26)
  {
    goto LABEL_52;
  }
}

void sub_1007C5A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *aBlock, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  v33 = *(v31 - 104);
  if (v33)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C5B44(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_18:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 304);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 296);
          if (v8)
          {
            v9 = *(v3 + 344);
            *(v3 + 344) = 0;
            if (v9)
            {
              (*(*v9 + 8))(v9);
            }

            v10 = *(v3 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 3min expiry, submit TransferTimestamps", buf, 2u);
            }

            v12 = *(v3 + 312);
            v11 = *(v3 + 320);
            if (*(a1 + 79) < 0)
            {
              sub_100005F2C(__p, *(a1 + 56), *(a1 + 64));
            }

            else
            {
              *__p = *(a1 + 56);
              v22 = *(a1 + 72);
            }

            v13 = HIBYTE(v22);
            if (v12 == v11)
            {
              v11 = v12;
            }

            else
            {
              if (v22 >= 0)
              {
                v14 = HIBYTE(v22);
              }

              else
              {
                v14 = __p[1];
              }

              if (v22 >= 0)
              {
                v15 = __p;
              }

              else
              {
                v15 = __p[0];
              }

              v16 = v12 + 456;
              while (1)
              {
                v17 = *(v16 + 23);
                v18 = v17;
                if ((v17 & 0x80u) != 0)
                {
                  v17 = *(v16 + 8);
                }

                if (v14 == v17)
                {
                  v19 = v18 >= 0 ? v16 : *v16;
                  if (!memcmp(v15, v19, v14))
                  {
                    break;
                  }
                }

                v20 = v16 + 824;
                v16 += 1280;
                if (v20 == v11)
                {
                  goto LABEL_40;
                }
              }

              v11 = v16 - 456;
            }

LABEL_40:
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }

            if (v11 != *(v3 + 320) && *(v11 + 1112) == 1)
            {
              *(v11 + 1017) = 1;
              (*(*v8 + 72))(v8, v11 + 992);
              CellularPlanDeliveryModel::reportTransferSimServiceOnTimedOut(v3, (v11 + 240));
              if (*(v11 + 1112) == 1)
              {
                if (*(v11 + 1015) < 0)
                {
                  operator delete(*(v11 + 992));
                }

                *(v11 + 1112) = 0;
              }
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177EBF0();
      }

LABEL_16:
      if (v7)
      {
        sub_100004A34(v7);
      }

      goto LABEL_18;
    }
  }
}

void sub_1007C5DA0(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

char *sub_1007C5DC0(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1007C5E24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C5E3C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void CellularPlanDeliveryModel::sessionInvalidated(CellularPlanDeliveryModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void CellularPlanDeliveryModel::handleActivateResult(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    LOBYTE(__p) = 0;
    v5 = 0;
    (*(*a1 + 112))(a1, a2, 11, &__p);
    if (v5 == 1 && v4 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1007C5FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C600C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_66:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 39);
      v7 = *(v3 + 40);
      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__dst = *(a1 + 56);
        v30 = *(a1 + 72);
      }

      p_p = &__p;
      v9 = (a1 + 80);
      if (*(a1 + 103) < 0)
      {
        sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        __p = *v9;
        v32 = *(a1 + 96);
      }

      if (v6 == v7)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v28 = v5;
        if (v30 >= 0)
        {
          v10 = HIBYTE(v30);
        }

        else
        {
          v10 = __dst[1];
        }

        if (v30 >= 0)
        {
          v11 = __dst;
        }

        else
        {
          v11 = __dst[0];
        }

        v12 = HIBYTE(v32);
        if (v32 >= 0)
        {
          v13 = HIBYTE(v32);
        }

        else
        {
          v13 = *(&__p + 1);
        }

        if (v32 < 0)
        {
          p_p = __p;
        }

        while (1)
        {
          v14 = *(v6 + 503);
          v15 = v14 >= 0 ? *(v6 + 503) : *(v6 + 488);
          if (v10 == v15)
          {
            v16 = v14 >= 0 ? (v6 + 480) : *(v6 + 480);
            if (!memcmp(v11, v16, v10))
            {
              break;
            }
          }

          v17 = *(v6 + 263);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v6 + 248);
          }

          if (v13 == v17)
          {
            v19 = v18 >= 0 ? (v6 + 240) : *(v6 + 240);
            if (!memcmp(p_p, v19, v13))
            {
              v20 = *(v6 + 455);
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(v6 + 440);
              }

              if (!(v20 | v15))
              {
                break;
              }
            }
          }

          v6 += 1280;
          if (v6 == v7)
          {
            v6 = v7;
            break;
          }
        }

        v9 = (a1 + 80);
        v5 = v28;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_44;
        }
      }

      operator delete(__p);
LABEL_44:
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__dst[0]);
      }

      v21 = *(v3 + 40);
      if (v6 != v21)
      {
        if (*(a1 + 104) == 1)
        {
          v22 = *(v3 + 5);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v9;
            if (*(a1 + 103) < 0)
            {
              v23 = *v9;
            }

            *buf = 136315138;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I deleting pending plan carrier (%s) after timeout", buf, 0xCu);
            v21 = *(v3 + 40);
          }

          if (v6 + 1280 != v21)
          {
            do
            {
              sub_1007CC0DC(v6, (v6 + 1280));
              v6 += 1280;
            }

            while (v6 + 1280 != v21);
            v21 = *(v3 + 40);
          }

          while (v21 != v6)
          {
            v21 -= 1280;
            sub_1002813D0(v21);
          }

          *(v3 + 40) = v6;
          v24 = *(v3 + 38);
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            if (v25)
            {
              v26 = v25;
              v27 = *(v3 + 37);
              if (v27)
              {
                (*(*v27 + 64))(v27, v9);
              }

              sub_100004A34(v26);
            }
          }
        }

        else
        {
          CellularPlanDeliveryModel::updatePlanStates_sync(v3, v6, 0xDu);
        }

        CellularPlanDeliveryModel::notifyPlansUpdate(v3);
      }

      goto LABEL_66;
    }
  }
}

void sub_1007C6344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100004A34(v17);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

char *sub_1007C6384(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(result + 9) = *(a2 + 72);
    *(result + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    return sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  v6 = *(a2 + 80);
  *(v3 + 12) = *(a2 + 96);
  *(v3 + 5) = v6;
  return result;
}

void sub_1007C6410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C6440(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void CellularPlanDeliveryModel::onEsimReleased(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

BOOL CellularPlanDeliveryModel::PersistenceHelper::savePlans(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10177EF6C();
    return 0;
  }

  if (!a4)
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10177EF38();
    return 0;
  }

  v22 = 0;
  v8 = a2[2];
  if (v8)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v8, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v10 = v22;
      v22 = Mutable;
      __p[0] = v10;
      sub_1000279DC(__p);
    }

    v13 = *a2;
    v11 = a2 + 1;
    v12 = v13;
    if (v13 != v11)
    {
      do
      {
        v21 = 0;
        if (*(v12 + 55) < 0)
        {
          sub_100005F2C(v19, v12[4], v12[5]);
        }

        else
        {
          *v19 = *(v12 + 2);
          v20 = v12[6];
        }

        if (SHIBYTE(v20) < 0)
        {
          sub_100005F2C(__dst, v19[0], v19[1]);
        }

        else
        {
          *__dst = *v19;
          v25 = v20;
        }

        v23 = 0;
        if (SHIBYTE(v25) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v27 = v25;
        }

        v28 = 0;
        if (ctu::cf::convert_copy())
        {
          v14 = v23;
          v23 = v28;
          v29 = v14;
          sub_100005978(&v29);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        v21 = v23;
        v23 = 0;
        sub_100005978(&v23);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }

        CFArrayAppendValue(v22, v21);
        sub_100005978(&v21);
        v15 = v12[1];
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
            v16 = v12[2];
            v17 = *v16 == v12;
            v12 = v16;
          }

          while (!v17);
        }

        v12 = v16;
      }

      while (v16 != v11);
    }
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a4, v22, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(a1 + 8) + 48))(*(a1 + 8), a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000279DC(&v22);
  return 1;
}

void CellularPlanDeliveryModel::PersistenceHelper::loadPlans(CellularPlanDeliveryModel::PersistenceHelper *this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 48))(v6, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    theArray = 0;
    (*(**(this + 1) + 40))(&v15);
    sub_10006DD00(&theArray, &v15);
    sub_10000A1EC(&v15);
    v7 = theArray;
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          __p[0] = 0;
          __p[1] = 0;
          v13 = 0;
          CFArrayGetValueAtIndex(theArray, i);
          v15 = 0uLL;
          v16 = 0;
          ctu::cf::assign();
          *__p = v15;
          v13 = v16;
          v10 = *(&v15 + 1);
          v11 = HIBYTE(v16);
          if ((v16 & 0x8000000000000000) == 0)
          {
            v10 = HIBYTE(v16);
          }

          if (v10)
          {
            sub_10017695C(a3, __p);
            v11 = HIBYTE(v13);
          }

          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_100010250(&theArray);
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      sub_10177EF6C();
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }
}

void sub_1007C6AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_100009970(v22, *(v22 + 8));
  sub_100010250(&a16);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::PersistenceHelper::saveStoreVisitStatus(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    v18 = 0;
    v4 = a2[2];
    if (v4)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, v4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v6 = v18;
        v18 = Mutable;
        __p[0] = v6;
        sub_1000296E0(__p);
      }

      v9 = *a2;
      v7 = a2 + 1;
      v8 = v9;
      if (v9 != v7)
      {
        do
        {
          v17 = 0;
          if (*(v8 + 55) < 0)
          {
            sub_100005F2C(v15, v8[4], v8[5]);
          }

          else
          {
            *v15 = *(v8 + 2);
            v16 = v8[6];
          }

          if (SHIBYTE(v16) < 0)
          {
            sub_100005F2C(__dst, v15[0], v15[1]);
          }

          else
          {
            *__dst = *v15;
            v21 = v16;
          }

          v19 = 0;
          if (SHIBYTE(v21) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v23 = v21;
          }

          v24 = 0;
          if (ctu::cf::convert_copy())
          {
            v10 = v19;
            v19 = v24;
            v25 = v10;
            sub_100005978(&v25);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          v17 = v19;
          v19 = 0;
          sub_100005978(&v19);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(v15[0]);
          }

          if (*(v8 + 56))
          {
            v11 = kCFBooleanTrue;
          }

          else
          {
            v11 = kCFBooleanFalse;
          }

          CFDictionarySetValue(v18, v17, v11);
          sub_100005978(&v17);
          v12 = v8[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v8[2];
              v14 = *v13 == v8;
              v8 = v13;
            }

            while (!v14);
          }

          v8 = v13;
        }

        while (v13 != v7);
      }
    }

    (*(**(a1 + 8) + 16))(*(a1 + 8), @"kVisitStoreStatus", v18, @"com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**(a1 + 8) + 48))(*(a1 + 8), @"com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1000296E0(&v18);
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_10177EF6C();
  }
}

void CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(CellularPlanDeliveryModel::PersistenceHelper *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 48))(v4, @"com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    theDict = 0;
    (*(**(this + 1) + 40))(&v20);
    sub_100010180(&theDict, &v20);
    sub_10000A1EC(&v20);
    v5 = theDict;
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    if (v5)
    {
      Count = CFDictionaryGetCount(v5);
      if (Count >= 1)
      {
        keys = 0;
        v17 = 0;
        v18 = 0;
        sub_100222418(&keys, Count);
        values = 0;
        v14 = 0;
        v15 = 0;
        sub_1007CD260(&values, Count);
        CFDictionaryGetKeysAndValues(theDict, keys, values);
        for (i = 0; i != Count; ++i)
        {
          __p[0] = 0;
          __p[1] = 0;
          v12 = 0;
          v20 = 0uLL;
          v21 = 0;
          ctu::cf::assign();
          v12 = v21;
          *__p = v20;
          v8 = HIBYTE(v21);
          v9 = HIBYTE(v21);
          if ((v21 & 0x8000000000000000) != 0)
          {
            v8 = __p[1];
          }

          if (v8)
          {
            v10 = values[i];
            if (v10)
            {
              LOBYTE(v20) = CFBooleanGetValue(v10) != 0;
              sub_1007CFD58(a2, __p);
              v9 = HIBYTE(v12);
            }
          }

          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (values)
        {
          v14 = values;
          operator delete(values);
        }

        if (keys)
        {
          v17 = keys;
          operator delete(keys);
        }
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      sub_10177EF6C();
    }

    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_1007C70D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, const void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  sub_100009970(v22, *(v22 + 8));
  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::PersistenceHelper::saveSimSetupInfo(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 23) < 0)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        sub_100005F2C(v8, *a2, v5);
        goto LABEL_9;
      }
    }

    else if (*(a2 + 23))
    {
      *v8 = *a2;
      v9 = *(a2 + 16);
LABEL_9:
      if (SHIBYTE(v9) < 0)
      {
        sub_100005F2C(__dst, v8[0], v8[1]);
      }

      else
      {
        *__dst = *v8;
        v13 = v9;
      }

      v11 = 0;
      if (SHIBYTE(v13) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v15 = v13;
      }

      v16 = 0;
      if (ctu::cf::convert_copy())
      {
        v6 = v11;
        v11 = v16;
        v17 = v6;
        sub_100005978(&v17);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v11;
      v10 = v11;
      v11 = 0;
      sub_100005978(&v11);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(v8[0]);
      }

      (*(**(a1 + 8) + 16))(*(a1 + 8), v7, *a3, @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(**(a1 + 8) + 48))(*(a1 + 8), @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100005978(&v10);
      return;
    }

    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177EFA0();
    }
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_10177EF6C();
  }
}

void sub_1007C7384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

void CellularPlanDeliveryModel::PersistenceHelper::loadSimSetupInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177EF6C();
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*(a2 + 23))
  {
LABEL_9:
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177EFA0();
    }

LABEL_11:
    *a3 = 0;
    return;
  }

LABEL_4:
  (*(*v5 + 48))(v5, @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v10 = *(a2 + 16);
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__dst, v9[0], v9[1]);
  }

  else
  {
    *__dst = *v9;
    v14 = v10;
  }

  v12 = 0;
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v16 = v14;
  }

  v17 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v12;
    v12 = v17;
    v18 = v7;
    sub_100005978(&v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v12;
  v11 = v12;
  v12 = 0;
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  (*(**(a1 + 8) + 40))(*(a1 + 8), v8, @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v11);
}

void sub_1007C761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

void CellularPlanDeliveryModel::maybeRecoveryMonitorModeCompleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString(a2);
    v8 = a3 + 240;
    if (*(a3 + 455) >= 0)
    {
      v9 = a3 + 432;
    }

    else
    {
      v9 = *(a3 + 432);
    }

    if (*(a3 + 263) < 0)
    {
      v8 = *(a3 + 240);
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2080;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I recovery monitor mode completed with status: %s for sourceIccid: %s carrierName: %s", buf, 0x20u);
  }

  if (!a2)
  {
LABEL_30:
    v20 = *(a3 + 1200);
    *(a3 + 1192) = 0u;
    if (v20)
    {
      sub_100004A34(v20);
    }

    *(a3 + 1225) = 0;
    if (*(a3 + 1152) == 1 && *(a3 + 1128) > 0.0)
    {
      v21 = *(a1 + 304);
      if (v21)
      {
        v22 = std::__shared_weak_count::lock(v21);
        if (v22)
        {
          v23 = v22;
          v24 = *(a1 + 296);
          if (v24)
          {
            Current = CFAbsoluteTimeGetCurrent();
            v26 = *(a3 + 1128);
            v27 = *(a1 + 176);
            if (v27)
            {
              v28 = (*(*v27 + 72))(v27);
            }

            else
            {
              v28 = 0;
            }

            (*(*v24 + 136))(v24, 5, a3 + 240, a2, (Current - v26), a3 + 456, v28);
          }

          sub_100004A34(v23);
        }
      }

      *(a3 + 1128) = 0;
    }

    CellularPlanDeliveryModel::notifyPlansUpdate(a1);
  }

  (***(a1 + 112))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
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
  v29 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v29);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
LABEL_17:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v18)
      {
        (*(*v18 + 24))(v18, 3);
      }

      if ((v19 & 1) == 0)
      {
        sub_100004A34(v17);
      }

      if (*(a3 + 479) < 0)
      {
        sub_100005F2C(buf, *(a3 + 456), *(a3 + 464));
      }

      else
      {
        *buf = *(a3 + 456);
        *&buf[16] = *(a3 + 472);
      }

      LOBYTE(v31) = 1;
      (*(*a1 + 112))(a1, a3 + 432, 12, buf);
      if (v31 == 1 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      CellularPlanDeliveryModel::maybeSubmitTransferTimestampsWhenVinylInfoUpdate(a1, a3);
      goto LABEL_30;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
  goto LABEL_17;
}

uint64_t CellularPlanDeliveryModel::isMultiPlanInstallation_sync(CellularPlanDeliveryModel *this)
{
  result = *(this + 22);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void CellularPlanDeliveryModel::maybeRetryTransferMonitorModeCompleted(uint64_t a1, char a2, uint64_t a3, void **a4)
{
  v5 = *(a3 + 455);
  if (v5 >= 0)
  {
    v6 = *(a3 + 455);
  }

  else
  {
    v6 = *(a3 + 440);
  }

  v7 = *(a4 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a4[1];
  }

  if (v6 == v7)
  {
    v12 = v5 >= 0 ? (a3 + 432) : *(a3 + 432);
    v13 = v8 >= 0 ? a4 : *a4;
    if (!memcmp(v12, v13, v6))
    {
      if (a2)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString(1);
          if (*(a4 + 23) >= 0)
          {
            v16 = a4;
          }

          else
          {
            v16 = *a4;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I retry transfer monitor mode completed with status: %s for sourceIccid: %s", buf, 0x16u);
        }

        v17 = *(a3 + 1216);
        v18 = 0uLL;
        *(a3 + 1208) = 0u;
        if (v17)
        {
          sub_100004A34(v17);
          v18 = 0uLL;
        }

        *(a3 + 1226) = 1;
        *(a3 + 16) = 0;
        v19 = *(a3 + 1240);
        *(a3 + 1232) = v18;
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (*(a3 + 1152) == 1 && *(a3 + 1136) > 0.0)
        {
          v20 = *(a1 + 304);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = v21;
              v23 = *(a1 + 296);
              if (v23)
              {
                Current = CFAbsoluteTimeGetCurrent();
                v25 = *(a3 + 1136);
                v26 = *(a1 + 176);
                if (v26)
                {
                  v27 = (*(*v26 + 72))(v26);
                }

                else
                {
                  v27 = 0;
                }

                (*(*v23 + 136))(v23, 5, a3 + 240, 1, (Current - v25), a3 + 456, v27);
              }

              sub_100004A34(v22);
            }
          }

          *(a3 + 1136) = 0;
        }

        CellularPlanDeliveryModel::notifyPlansUpdate(a1);
      }

      v37 = 0;
      v38 = 0;
      Registry::getTimerService(&v37, *(a1 + 96));
      if (v37)
      {
        sub_10000501C(v35, "cp.mm.ret.tr unsuccessful timer");
        *&v30 = a1;
        sub_100004AA0(buf, (a1 + 8));
        v28 = *&buf[8];
        *(&v30 + 1) = *buf;
        v31 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v28);
        }

        if (*(a4 + 23) < 0)
        {
          sub_100005F2C(v32, *a4, a4[1]);
        }

        else
        {
          *v32 = *a4;
          v33 = a4[2];
        }

        v34 = a2;
        *v39 = *v35;
        v40 = v36;
        v35[0] = 0;
        v35[1] = 0;
        v36 = 0;
        *buf = v30;
        *&buf[16] = v31;
        if (SHIBYTE(v33) < 0)
        {
          sub_100005F2C(__p, v32[0], v32[1]);
          v29 = v34;
        }

        else
        {
          v29 = 0;
          *__p = *v32;
          __p[2] = v33;
        }

        v43 = v29;
        v44 = 0;
        operator new();
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177EF04();
      }

      if (v38)
      {
        sub_100004A34(v38);
      }
    }
  }
}

void CellularPlanDeliveryModel::maybeDelayProvisioningMonitorModeCompleted(CellularPlanDeliveryModel *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(a1 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString(a2);
    if (a4[23] >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    v36 = 2080;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I delay provisioning monitor mode completed with status: %s for targetIccid: %s", buf, 0x16u);
  }

  v11 = *(a3 + 479);
  if (v11 >= 0)
  {
    v12 = *(a3 + 479);
  }

  else
  {
    v12 = *(a3 + 464);
  }

  v13 = *(a4 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 1);
  }

  if (v12 == v13)
  {
    v15 = v11 >= 0 ? (a3 + 456) : *(a3 + 456);
    v16 = v14 >= 0 ? a4 : *a4;
    if (!memcmp(v15, v16, v12))
    {
      v17 = *(a3 + 1184);
      *(a3 + 1176) = 0u;
      if (v17)
      {
        sub_100004A34(v17);
      }

      *(a3 + 1224) = 1;
      if (a2)
      {
LABEL_22:
        if (*(a3 + 1152) == 1 && *(a3 + 1120) > 0.0)
        {
          v18 = *(a1 + 38);
          if (v18)
          {
            v19 = std::__shared_weak_count::lock(v18);
            if (v19)
            {
              v20 = v19;
              v21 = *(a1 + 37);
              if (v21)
              {
                Current = CFAbsoluteTimeGetCurrent();
                v23 = *(a3 + 1120);
                v24 = *(a1 + 22);
                if (v24)
                {
                  v25 = (*(*v24 + 72))(v24);
                }

                else
                {
                  v25 = 0;
                }

                (*(*v21 + 136))(v21, 2, a3 + 240, a2, (Current - v23), a3 + 456, v25);
              }

              sub_100004A34(v20);
            }
          }

          *(a3 + 1120) = 0;
        }

        sub_10000501C(buf, "TransferSimServiceResponse");
        sub_10000501C(v39, "TransferSimServiceViaWebServiceResponse");
        memset(v33, 0, sizeof(v33));
        sub_10016FB64(v33, buf, &v40, 2uLL);
        (*(*a1 + 128))(a1, a3 + 432, v33);
        v34 = v33;
        sub_1000087B4(&v34);
        v32 = 0;
        while (1)
        {
          if (v39[v32 + 23] < 0)
          {
            operator delete(*&v39[v32]);
          }

          v32 -= 24;
          if (v32 == -48)
          {
            CellularPlanDeliveryModel::notifyPlansUpdate(a1);
          }
        }
      }

      v26 = *(a1 + 5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (a4[23] < 0)
        {
          a4 = *a4;
        }

        v27 = sub_10064A0D0(*(a3 + 1));
        *buf = 136315394;
        *&buf[4] = a4;
        v36 = 2080;
        v37 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Setting display state of plan with target iccid: %s to %s", buf, 0x16u);
      }

      v28 = *(a3 + 1);
      buf[0] = 0;
      v39[0] = 0;
      (*(*a1 + 112))(a1, a3 + 432, v28, buf);
      if (v39[0] == 1 && v38 < 0)
      {
        operator delete(*buf);
      }

      *(a3 + 2) = 1;
      v29 = *(a1 + 38);
      if (v29)
      {
        v30 = std::__shared_weak_count::lock(v29);
        if (v30)
        {
          v31 = *(a1 + 37);
          if (v31)
          {
            (*(*v31 + 104))(v31, 0, a3 + 240, a3 + 264);
            sub_100004A34(v30);
            goto LABEL_22;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      if (os_log_type_enabled(*(a1 + 5), OS_LOG_TYPE_ERROR))
      {
        sub_10177EBF0();
      }

      if (v30)
      {
        sub_100004A34(v30);
      }
    }
  }
}

void CellularPlanDeliveryModel::monitorModeCompleted(CellularPlanDeliveryModel *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v5 = *(a1 + 39);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    while (1)
    {
      v7 = v5[149];
      if (v7 && v7 == a4)
      {
        break;
      }

      v9 = v5[147];
      if (v9 && v9 == a4)
      {
        break;
      }

      v11 = v5[151];
      if (v11 && v11 == a4)
      {
        break;
      }

      v5 += 160;
      if (v5 == v6)
      {
        goto LABEL_23;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_23:
    v15 = *(a1 + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I No pending plan found for any monitor mode", v18, 2u);
    }
  }

  else
  {
    v13 = (a2 >> 8) & 1;
    if (v5[149] == a4)
    {
      v16 = v13 & a2;

      CellularPlanDeliveryModel::maybeRecoveryMonitorModeCompleted(a1, v16, v5);
    }

    if (v5[147] == a4)
    {
      v17 = v13 & a2;

      CellularPlanDeliveryModel::maybeDelayProvisioningMonitorModeCompleted(a1, v17, v5, a3);
    }

    else if (v5[151] == a4)
    {
      v14 = v13 & a2;

      CellularPlanDeliveryModel::maybeRetryTransferMonitorModeCompleted(a1, v14, v5, a3);
    }
  }
}

void non-virtual thunk toCellularPlanDeliveryModel::monitorModeCompleted(uint64_t a1, unsigned __int16 a2, char *a3, uint64_t a4)
{
  CellularPlanDeliveryModel::monitorModeCompleted((a1 - 64), a2, a3, a4);
}

{
  CellularPlanDeliveryModel::monitorModeCompleted((a1 - 72), a2, a3, a4);
}

void CellularPlanDeliveryModel::recoveryPullAndInstallProfile(CellularPlanDeliveryModel *this, const CellularPlanProvisioningMonitorModeInterface *a2)
{
  v3 = *(this + 38);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5 || (v6 = *(this + 37)) == 0)
  {
LABEL_17:
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    goto LABEL_19;
  }

  v7 = *(this + 39);
  v8 = *(this + 40);
  if (v7 != v8)
  {
    do
    {
      sub_10027B690(&v16, v7);
      v9 = v20;
      if (v20)
      {
        sub_1002813D0(&v16);
        if (v9 == a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1002813D0(&v16);
      }

      v7 += 1280;
    }

    while (v7 != v8);
    v7 = v8;
LABEL_11:
    v8 = *(this + 40);
  }

  if (v7 == v8)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EFD4();
    }
  }

  else
  {
    v10 = *(v7 + 2);
    v11 = *(this + 5);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == 10)
    {
      if (v12)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Pending plan already undergoing installation. Skipping recovery monitor mode attempt", &v16, 2u);
      }
    }

    else
    {
      if (v12)
      {
        v13 = (v7 + 432);
        if (*(v7 + 455) < 0)
        {
          v13 = *v13;
        }

        v14 = (v7 + 240);
        if (*(v7 + 263) < 0)
        {
          v14 = *v14;
        }

        v16 = 136315394;
        v17 = v13;
        v18 = 2080;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Attempting recovery installation of plan with sourceIccid:(%s) carrierName:(%s) using recovery monitor mode", &v16, 0x16u);
      }

      if (*(v7 + 17))
      {
        v15 = 1;
      }

      else
      {
        v15 = (*(**(this + 14) + 1008))(*(this + 14), v7 + 24, v7 + 48, v7 + 72, v7 + 96, v7 + 432) ^ 1;
      }

      (*(*v6 + 40))(v6, v7, 0, v15);
    }
  }

LABEL_19:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void CellularPlanDeliveryModel::pullAndInstallProfile(uint64_t a1, char *a2)
{
  v3 = *(a1 + 304);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 296);
      if (v6)
      {
        bzero(v21, 0x508uLL);
        (*(*a1 + 168))(v21, a1, a2);
        if (v23)
        {
          v7 = BYTE1(v21[0]);
          v8 = BYTE2(v21[0]);
          v9 = *(a1 + 40);
          v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (v7 == 12 || v8 == 10)
          {
            if (v10)
            {
              v12 = sub_10064A0D0(v7);
              v13 = sub_10064A0D0(SBYTE2(v21[0]));
              if (a2[23] >= 0)
              {
                v14 = a2;
              }

              else
              {
                v14 = *a2;
              }

              v15 = 136315650;
              v16 = v12;
              v17 = 2080;
              v18 = v13;
              v19 = 2080;
              v20 = v14;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Not attempting installation of plan with terminal state:%s, display state:%s using provisioning monitor mode for target iccid: %s", &v15, 0x20u);
            }
          }

          else
          {
            if (v10)
            {
              if (a2[23] >= 0)
              {
                v11 = a2;
              }

              else
              {
                v11 = *a2;
              }

              v15 = 136315138;
              v16 = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Attempting installation of plan with targetIccid:%s using monitor mode", &v15, 0xCu);
              if ((v23 & 1) == 0)
              {
                sub_1000D1644();
              }
            }

            (*(*v6 + 40))(v6, v21, 0, (BYTE1(v21[0]) == 9) | (v22 & 1));
          }
        }

        else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10177F008();
        }

        if (v23 == 1)
        {
          sub_1002813D0(v21);
        }

LABEL_27:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (v5)
  {
    goto LABEL_27;
  }
}

void sub_1007C8B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (LOBYTE(STACK[0x520]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::retryTransfer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 304);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 296);
      if (v6)
      {
        bzero(v23, 0x508uLL);
        (*(*a1 + 168))(v23, a1, a2);
        if (v27)
        {
          v7 = BYTE1(v23[0]);
          if (BYTE1(v23[0]) != 11 || BYTE2(v23[0]) == 10)
          {
            v12 = *(a1 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = sub_10064A0D0(v7);
              v14 = sub_10064A0D0(SBYTE2(v23[0]));
              if (*(a2 + 23) >= 0)
              {
                v15 = a2;
              }

              else
              {
                v15 = *a2;
              }

              v17 = 136315650;
              v18 = v13;
              v19 = 2080;
              v20 = v14;
              v21 = 2080;
              v22 = v15;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not attempting installation of plan with terminal state:%s, display state:%s using retry monitor mode for source iccid: %s", &v17, 0x20u);
            }
          }

          else
          {
            v8 = v26;
            v9 = *(a1 + 40);
            v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
            if (v8)
            {
              if (v10)
              {
                v11 = &v24;
                if (v25 < 0)
                {
                  v11 = v24;
                }

                v17 = 136315138;
                v18 = v11;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Not starting retry monitor mode for plan with recovery delay provisioning monitor mode ongoing. sourceIccid: %s", &v17, 0xCu);
              }
            }

            else
            {
              if (v10)
              {
                v16 = *(a2 + 23) >= 0 ? a2 : *a2;
                v17 = 136315138;
                v18 = v16;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Attempting installation of plan with sourceIccid:%s using retry transfer monitor mode", &v17, 0xCu);
                if ((v27 & 1) == 0)
                {
                  sub_1000D1644();
                }
              }

              (*(*v6 + 24))(v6, v23, &stru_101E7F050);
            }
          }
        }

        else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10177F078();
        }

        if (v27 == 1)
        {
          sub_1002813D0(v23);
        }

LABEL_32:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (v5)
  {
    goto LABEL_32;
  }
}

void sub_1007C8E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (LOBYTE(STACK[0x520]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::checkPlanInstalled(os_log_t *a1, uint64_t a2)
{
  bzero(v6, 0x508uLL);
  ((*a1)[21].isa)(v6, a1, a2);
  if (v7)
  {
    IsProfileInstalled = sIsProfileInstalled();
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177F078();
    }

    IsProfileInstalled = 0;
  }

  if (v7 == 1)
  {
    sub_1002813D0(v6);
  }

  return IsProfileInstalled;
}

void sub_1007C8FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x500])
  {
    sub_1002813D0(&a9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::didTransferFromWebsheet(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  switch(a3)
  {
    case 1:
      v9 = a1[5];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = sub_100649E24(1);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Transfer status: %s", __p, 0xCu);
      }

      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v11 = *(a4 + 16);
      }

      v12 = 1;
      (*(*a1 + 112))(a1, a2, 7, __p);
      break;
    case 3:
      v8 = a1[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = sub_100649E24(3);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Waiting for ES push to install: %s", __p, 0xCu);
      }

      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v11 = *(a4 + 16);
      }

      v12 = 1;
      (*(*a1 + 112))(a1, a2, 8, __p);
      break;
    case 4:
      v7 = a1[5];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = sub_100649E24(4);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Waiting DS trigger to install: %s", __p, 0xCu);
      }

      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v11 = *(a4 + 16);
      }

      v12 = 1;
      (*(*a1 + 112))(a1, a2, 9, __p);
      break;
    default:
      return;
  }

  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007C92C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleFailedInstallation(void *a1, size_t *a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling failed installation of plan with sourceIccid: %s", buf, 0xCu);
  }

  v6 = a1[39];
  v7 = a1[40];
  if (v6 != v7)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(v6 + 455);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v6 + 440);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? (v6 + 432) : *(v6 + 432);
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v14 = *(v6 + 479);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v6 + 464);
      }

      if (v14 == v9)
      {
        v16 = v15 >= 0 ? (v6 + 456) : *(v6 + 456);
        if (!memcmp(v16, v10, v9))
        {
          break;
        }
      }

      v6 += 1280;
      if (v6 == v7)
      {
        goto LABEL_42;
      }
    }
  }

  if (v6 != v7)
  {
    v17 = a1[5];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_10064A0D0(*(v6 + 1));
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Pending plan terminal state: %s", buf, 0xCu);
    }

    v19 = *(v6 + 1);
    buf[0] = 0;
    v26 = 0;
    if (v19 == 5)
    {
      (*(*a1 + 112))(a1, a2, 11, buf);
    }

    else
    {
      (*(*a1 + 112))(a1, a2, v19, buf);
    }

    if (v26 == 1 && v25 < 0)
    {
      operator delete(*buf);
    }

    if (!*(v6 + 1176))
    {
      v20 = a1[5];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Provisioning monitor mode exhausted. Setting display state of plan to kTransferable", buf, 2u);
      }

      *(v6 + 2) = 1;
    }
  }

LABEL_42:
  if (a1[57])
  {
    v21 = a1[5];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Invoking callback for activating pending plan", buf, 2u);
    }

    v22 = 0;
    v23 = 0;
    sub_1007BF334((a1 + 54), 0, &v23, &v22, 49);
    sub_10001021C(&v22);
    sub_100005978(&v23);
    sub_1007D03F4((a1 + 54));
  }
}

void sub_1007C9624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::setIsSimAvailableInBuddyTransferList_sync(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    *(result + 468) = a2;
  }

  else
  {
    *(result + 464) = a2;
  }

  return result;
}

uint64_t CellularPlanDeliveryModel::getIsSimAvailableInBuddyTransferList_sync(CellularPlanDeliveryModel *this, int a2)
{
  v2 = 464;
  if (a2)
  {
    v2 = 468;
  }

  return *(this + v2);
}

void CellularPlanDeliveryModel::saveStoreVisitStatus_sync(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(*(a1 + 128), &v9);
    v12 = a2;
    *(sub_100170224(&v9, a2) + 56) = a3;
    v7 = *(a1 + 128);
    sub_100134BF4(v8, &v9);
    CellularPlanDeliveryModel::PersistenceHelper::saveStoreVisitStatus(v7, v8);
    sub_100009970(v8, v8[1]);
    sub_100009970(&v9, v10);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177F0E8();
  }
}

void sub_1007C977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100009970(&a9, a10);
  sub_100009970(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::loadStoreVisitStatus_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v8 = 0;
    v9[0] = 0;
    v9[1] = 0;
    CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(*(a1 + 128), &v8);
    v4 = sub_100007A6C(&v8, a2);
    if (v9 == v4)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = *(v4 + 56);
      v6 = 1;
    }

    sub_100009970(&v8, v9[0]);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177F0E8();
    }

    v5 = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

void CellularPlanDeliveryModel::loadStoreVisitStatus_sync(CellularPlanDeliveryModel::PersistenceHelper **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(this[16], a2);
  v4 = this[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2[2];
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I loaded store visit status for %zu carriers", &v6, 0xCu);
  }
}

void CellularPlanDeliveryModel::saveSimSetupInfo_sync(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    if (*a3)
    {
      v6 = *(a1 + 128);
      if (v5 < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v9 = *(a2 + 16);
      }

      sub_100060E84(&v7, a3);
      CellularPlanDeliveryModel::PersistenceHelper::saveSimSetupInfo(v6, __p, &v7);
      sub_10000A1EC(&v7);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177F11C();
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EFA0();
  }
}

void sub_1007C9A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10000A1EC(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::loadSimSetupInfo_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      *a3 = 0;
      v4 = *(a1 + 128);
      sub_100005F2C(__p, *a2, v5);
LABEL_6:
      CellularPlanDeliveryModel::PersistenceHelper::loadSimSetupInfo(v4, __p, a3);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }
  }

  else if (*(a2 + 23))
  {
    *a3 = 0;
    v4 = *(a1 + 128);
    *__p = *a2;
    v7 = *(a2 + 16);
    goto LABEL_6;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EFA0();
  }

  *a3 = 0;
}

void sub_1007C9AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleInstallMultiplePlans(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[22];
  if (v10)
  {
    if ((*(*v10 + 24))(v10))
    {
      v11 = a1[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Override the install plans at multi plan scheduler", buf, 2u);
      }
    }
  }

  *buf = 0;
  v27 = 0;
  v28 = 0;
  v12 = a1[14];
  sub_10000501C(__p, "");
  (*(*v12 + 160))(buf, v12, a4 + 32, a4 + 56, a4 + 80, a4 + 104, __p, 1);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = a1[14];
  v14 = a1[3];
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  sub_100004AA0(&v19, a1 + 1);
  if (v19)
  {
    v15 = v19 + 80;
  }

  else
  {
    v15 = 0;
  }

  v21 = v15;
  v22 = v20;
  v19 = 0;
  v20 = 0;
  (*(*v13 + 712))(__p, v13, &object, &v21);
  v16 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v17 = a1[23];
  *(a1 + 11) = v16;
  if (v17)
  {
    sub_100004A34(v17);
    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v18 = a1[22];
  sub_100293290(v29, a5);
  (*(*v18 + 16))(v18, a2, a3, buf, v29);
  sub_10028ED7C(v29);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007C9D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10028ED7C(v27 - 88);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::cancelPlanInstallation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 176))
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = *(a1 + 112);
    sub_10000501C(__p, "");
    (*(*v6 + 160))(v10, v6, a2 + 32, a2 + 56, a2 + 80, a2 + 104, __p, 1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a1 + 176);
    sub_100293290(v12, a3);
    (*(*v7 + 56))(v7, v10, v12);
    sub_10028ED7C(v12);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177F150();
    }

    sub_100186828(a3, 5);
  }
}

void sub_1007C9F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_10028ED7C(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::isDeferPlanEnablement_sync(CellularPlanDeliveryModel *this)
{
  result = *(this + 22);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void CellularPlanDeliveryModel::setUserEnabledIccids_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = *(*v4 + 80);

    v5();
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177F184(a2, v6);
    }
  }
}

void CellularPlanDeliveryModel::handleTransferPlanTapped_sync(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 304);
  if (v8)
  {
    v10 = std::__shared_weak_count::lock(v8);
    if (v10 && *(a1 + 296))
    {
      v11 = *(a1 + 176);
      if (v11)
      {
        sub_10000501C(__dst, "");
        LOBYTE(v13[0]) = 2;
        (*(*v11 + 40))(v11, a3 + 40, __dst, v13);
        if (v25 < 0)
        {
          operator delete(__dst[0]);
        }
      }

      sub_10027E9BC(__dst, a3);
      memset(v13, 0, sizeof(v13));
      sub_1007CD2D8(v13, __dst, &v26, 1uLL);
      v18 = a1;
      sub_1007CEC24(&v19, a6);
      sub_10027E9BC(v20, a3);
      sub_100004AA0(&v16, (a1 + 8));
      v12 = v17;
      v21 = v16;
      v22 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
      }

      v23 = 0;
      operator new();
    }
  }

  else
  {
    v10 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  v14 = 0;
  v15 = 0;
  sub_1007BF334(a6, 0, &v15, &v14, 4);
  sub_10001021C(&v14);
  sub_100005978(&v15);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1007CA360(_Unwind_Exception *a1)
{
  if (*(v2 - 225) < 0)
  {
    operator delete(*(v2 - 248));
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1007CA418(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100005978(va1);
  if (!v3)
  {
    JUMPOUT(0x1007CA3F8);
  }

  JUMPOUT(0x1007CA3F0);
}

uint64_t sub_1007CA434(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_100643184(a1 + 8);
  return a1;
}

void CellularPlanDeliveryModel::handleInstallPendingPlan_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 304);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 296))
    {
      v9 = *(a1 + 312);
      v8 = *(a1 + 320);
      sub_100FB5378(&__dst, a2);
      if (v9 == v8)
      {
        v8 = v9;
      }

      else
      {
        if ((v24 & 0x80u) == 0)
        {
          v10 = v24;
        }

        else
        {
          v10 = v23[1];
        }

        if ((v24 & 0x80u) == 0)
        {
          v11 = v23;
        }

        else
        {
          v11 = v23[0];
        }

        v12 = v9 + 30;
        while (1)
        {
          v13 = *(v12 + 23);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v12 + 1);
          }

          if (v10 == v13)
          {
            v15 = v14 >= 0 ? v12 : *v12;
            if (!memcmp(v11, v15, v10))
            {
              break;
            }
          }

          v16 = v12 + 50;
          v12 += 80;
          if (v16 == v8)
          {
            goto LABEL_29;
          }
        }

        v8 = v12 - 30;
      }

LABEL_29:
      if (v41 == 1)
      {
        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }
      }

      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(__dst);
      }

      if (v8 == *(a1 + 320))
      {
        v8 = sub_1007BDB1C(a1 + 312, v8);
      }

      std::string::operator=(v8 + 21, a2);
      std::string::operator=(v8 + 20, (a2 + 72));
      std::string::operator=(v8 + 10, (a2 + 48));
      *(v8 + 984) = 1;
      *(v8 + 8) = 1;
      *(v8 + 1) = 1033;
      CellularPlanDeliveryModel::handleDumpState_sync(a1);
      CellularPlanDeliveryModel::notifyPlansUpdate(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  sub_100186828(a3, 4);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1007CA868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::getEnabledIccids(CellularPlanDeliveryModel *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 38);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = *(this + 37);
      if (v8)
      {
        (*(*v8 + 160))(v8, a2);
LABEL_9:
        sub_100004A34(v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (v7)
  {
    goto LABEL_9;
  }
}

void CellularPlanDeliveryModel::setEnableIccids(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 304);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 296);
      if (v6)
      {
        sub_100074920(v7, a2);
        v8[0] = off_101E7FBB0;
        v8[3] = v8;
        (*(*v6 + 168))(v6, v7, v8);
        sub_10039D5CC(v8);
        sub_100009970(v7, v7[1]);
LABEL_9:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (v5)
  {
    goto LABEL_9;
  }
}

void sub_1007CAAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12)
{
  sub_10039D5CC(&a12);
  sub_100009970(&a9, a10);
  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::isESimDisableAllowed_sync(uint64_t a1, uint64_t a2)
{
  bzero(&v10, 0x508uLL);
  (*(*a1 + 168))(&v10, a1, a2);
  if (v12 == 1 && v11 != 1)
  {
    v8 = 1;
  }

  else
  {
    v4 = *(a1 + 304);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 296);
        if (v6)
        {
          v7 = (*(*v6 + 176))(v6, a2, 1);
LABEL_11:
          sub_100004A34(v5);
          v8 = v7;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    v7 = 0;
    v8 = 0;
    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  if (v12 == 1)
  {
    sub_1002813D0(&v10);
  }

  return v8;
}

void sub_1007CAC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100004A34(v9);
  if (LOBYTE(STACK[0x500]) == 1)
  {
    sub_1002813D0(&a9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::sendTransferConfirmation_sync(uint64_t a1, __int128 **a2)
{
  if (*(a1 + 144))
  {
    v4 = *(a1 + 304);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 296);
        if (v6)
        {
          memset(v51, 0, sizeof(v51));
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
          v39 = 0u;
          v40 = 0u;
          (*(*v6 + 96))(&v39);
          v38 = 20;
          v7 = *a2;
          if (*a2 != a2[1])
          {
            *v37 = 0;
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v9 = *v37;
              *v37 = Mutable;
              *&buf = v9;
              sub_1000296E0(&buf);
            }

            v36 = 0;
            if (*(v7 + 23) < 0)
            {
              sub_100005F2C(__p, *v7, *(v7 + 1));
            }

            else
            {
              v10 = *v7;
              v35 = *(v7 + 2);
              *__p = v10;
            }

            if (SHIBYTE(v35) < 0)
            {
              sub_100005F2C(&__dst, __p[0], __p[1]);
            }

            else
            {
              __dst = *__p;
              v54 = v35;
            }

            v52 = 0;
            if (SHIBYTE(v54) < 0)
            {
              sub_100005F2C(&buf, __dst, *(&__dst + 1));
            }

            else
            {
              buf = __dst;
              v58 = v54;
            }

            v55 = 0;
            if (ctu::cf::convert_copy())
            {
              v11 = v52;
              v52 = v55;
              v56[0] = v11;
              sub_100005978(v56);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(buf);
            }

            v36 = v52;
            v52 = 0;
            sub_100005978(&v52);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v35) < 0)
            {
              operator delete(__p[0]);
            }

            v33 = 0;
            if (SBYTE7(v42) < 0)
            {
              sub_100005F2C(v31, v41, *(&v41 + 1));
            }

            else
            {
              *v31 = v41;
              v32 = v42;
            }

            if (SHIBYTE(v32) < 0)
            {
              sub_100005F2C(&__dst, v31[0], v31[1]);
            }

            else
            {
              __dst = *v31;
              v54 = v32;
            }

            v52 = 0;
            if (SHIBYTE(v54) < 0)
            {
              sub_100005F2C(&buf, __dst, *(&__dst + 1));
            }

            else
            {
              buf = __dst;
              v58 = v54;
            }

            v55 = 0;
            if (ctu::cf::convert_copy())
            {
              v12 = v52;
              v52 = v55;
              v56[0] = v12;
              sub_100005978(v56);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(buf);
            }

            v33 = v52;
            v52 = 0;
            sub_100005978(&v52);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[0]);
            }

            v30 = 0;
            if (SHIBYTE(v51[3]) < 0)
            {
              sub_100005F2C(v28, v51[1], v51[2]);
            }

            else
            {
              *v28 = *&v51[1];
              v29 = v51[3];
            }

            if (SHIBYTE(v29) < 0)
            {
              sub_100005F2C(&__dst, v28[0], v28[1]);
            }

            else
            {
              __dst = *v28;
              v54 = v29;
            }

            v52 = 0;
            if (SHIBYTE(v54) < 0)
            {
              sub_100005F2C(&buf, __dst, *(&__dst + 1));
            }

            else
            {
              buf = __dst;
              v58 = v54;
            }

            v55 = 0;
            if (ctu::cf::convert_copy())
            {
              v13 = v52;
              v52 = v55;
              v56[0] = v13;
              sub_100005978(v56);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(buf);
            }

            v30 = v52;
            v52 = 0;
            sub_100005978(&v52);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28[0]);
            }

            sub_1001768B8(*v37, @"kSourceIccid", v36);
            sub_1001768B8(*v37, @"kTargetEid", v33);
            sub_1001768B8(*v37, @"kTargetName", v30);
            v14 = *(a1 + 40);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v7;
              if (*(v7 + 23) < 0)
              {
                v15 = *v7;
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I send transfer confirmation for source iccid: %s", &buf, 0xCu);
            }

            v16 = sub_100649C38(2);
            sub_10000501C(&buf, v16);
            sub_100010180(&v27, v37);
            if (*(v7 + 23) < 0)
            {
              sub_100005F2C(v26, *v7, *(v7 + 1));
            }

            else
            {
              v17 = *v7;
              v26[2] = *(v7 + 2);
              *v26 = v17;
            }

            v56[4] = 0;
            operator new();
          }

          sub_100FBB8C8(&v39);
LABEL_68:
          if (v5)
          {
            sub_100004A34(v5);
          }

          return;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101761510();
    }

    v23 = *a2;
    v24 = a2[1];
    while (v23 != v24)
    {
      *&v40 = 0;
      v39 = 0uLL;
      if (*(v23 + 23) < 0)
      {
        sub_100005F2C(&v39, *v23, *(v23 + 1));
      }

      else
      {
        v25 = *v23;
        *&v40 = *(v23 + 2);
        v39 = v25;
      }

      CellularPlanDeliveryModel::clearTransferringStatus_sync(a1, &v39);
      if (SBYTE7(v40) < 0)
      {
        operator delete(v39);
      }

      v23 = (v23 + 24);
    }

    goto LABEL_68;
  }

  v18 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    do
    {
      *&v40 = 0;
      v39 = 0uLL;
      if (*(v18 + 23) < 0)
      {
        sub_100005F2C(&v39, *v18, *(v18 + 1));
      }

      else
      {
        v20 = *v18;
        *&v40 = *(v18 + 2);
        v39 = v20;
      }

      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if ((SBYTE7(v40) & 0x80u) == 0)
        {
          v22 = &v39;
        }

        else
        {
          v22 = v39;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "cumessage is invalid, skip send transfer confirmation for %s", &buf, 0xCu);
      }

      CellularPlanDeliveryModel::clearTransferringStatus_sync(a1, &v39);
      if (SBYTE7(v40) < 0)
      {
        operator delete(v39);
      }

      v18 = (v18 + 24);
    }

    while (v18 != v19);
  }
}

void sub_1007CB470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CB644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1007CB63CLL);
}

void sub_1007CB65C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1007CB62CLL);
}

uint64_t (***CellularPlanDeliveryModel::isMonitorModeInProgress(uint64_t a1, __int128 *a2))(void, void **)
{
  v2 = *(a1 + 504);
  if (v2)
  {
    sub_10006F264(__p, a2);
    v2 = (**v2)(v2, __p);
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_1007CB704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::isMonitorModeIccid(uint64_t a1)
{
  result = *(a1 + 504);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t non-virtual thunk toCellularPlanDeliveryModel::isMonitorModeIccid(uint64_t a1)
{
  result = *(a1 + 424);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CellularPlanDeliveryModel::stopMonitorMode_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 504);
  if (v2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v4 = *(a2 + 16);
    }

    (*(*v2 + 16))(v2, __p, 256);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007CB824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::personalityChanged_sync(uint64_t a1)
{
  result = *(a1 + 504);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

void CellularPlanDeliveryModel::configureMonitorMode_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 504);
  if (v7)
  {
    sub_100074920(v13, a2);
    (*(*v7 + 24))(v7, v13, a3, a4, a5, a6, a7);
    sub_100009970(v13, v13[1]);
  }
}

void CellularPlanDeliveryModel::setMonitorModeInterfaceDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 504);
  if (v3)
  {
    v4 = a2[1];
    v11 = *a2;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 32))(v3, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = *(a1 + 504);
    sub_100004AA0(&v7, (a1 + 8));
    if (v7)
    {
      v6 = v7 + 88;
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;
    v10 = v8;
    v7 = 0;
    v8 = 0;
    (*(*v5 + 40))(v5, &v9);
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_1007CBA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
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

void CellularPlanDeliveryModel::updateMonitorModeStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 176);
  if (v6)
  {
    (*(*v6 + 64))(v6, a2, a3);
  }

  (***(a1 + 112))(&v25);
  ServiceMap = Registry::getServiceMap(v25);
  v8 = ServiceMap;
  v9 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v10 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
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
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_11:
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v15)
  {
    if (v17)
    {
      if ((v16 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(*v17 + 136);
      if (v3 == 3)
      {
        v18();
        bzero(&v25, 0x508uLL);
        (*(*a1 + 168))(&v25, a1, a2);
        if (v28 == 1)
        {
          Current = CFAbsoluteTimeGetCurrent();
          sub_10000501C(__p, "MonitorModeStartTime");
          v24[1] = *&Current;
          v24[0] = sub_1002983F8;
          memset(v20, 0, sizeof(v20));
          sub_1001762DC(v20, __p, &v25, 1uLL);
          (*(*a1 + 120))(a1, &v27, v20);
          v21 = v20;
          sub_100176578(&v21);
          sub_100176638(v24);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            sub_1002813D0(&v25);
          }
        }
      }

      else
      {
        v18();
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1007CBD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void **);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_100176578(va);
  sub_1001765FC(va1);
  if (LOBYTE(STACK[0x560]) == 1)
  {
    sub_1002813D0(va2);
    if (!v5)
    {
LABEL_3:
      if (v6)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_100004A34(v5);
      goto LABEL_8;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  sub_100004A34(v5);
  if (v6)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1007CBE4C(uint64_t a1)
{
  sub_1007CD400(a1);

  operator delete();
}

void sub_1007CBE8C(uint64_t a1)
{
  sub_1007CD400(a1 - 48);

  operator delete();
}

void sub_1007CBED0(uint64_t a1)
{
  sub_1007CD400(a1 - 56);

  operator delete();
}

void sub_1007CBF14(uint64_t a1)
{
  sub_1007CD400(a1 - 64);

  operator delete();
}

void sub_1007CBF58(uint64_t a1)
{
  sub_1007CD400(a1 - 72);

  operator delete();
}

void sub_1007CBF9C(uint64_t a1)
{
  sub_1007CD400(a1 - 80);

  operator delete();
}

void sub_1007CBFE0(uint64_t a1)
{
  sub_1007CD400(a1 - 88);

  operator delete();
}

uint64_t sub_1007CC01C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = sub_1002939FC(v10, v8);
      v8 += 80;
      v10 += 1280;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 1280;
    v12 = a4 - v7;
    v13 = (a2 + v7 - 1280 - a4);
    do
    {
      result = sub_1007CC0DC(v11, v13);
      v11 -= 1280;
      v13 -= 80;
      v12 += 1280;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1007CC0DC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  std::string::operator=((a1 + 144), a2 + 6);
  std::string::operator=((a1 + 168), a2 + 7);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v10 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v11;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v12 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v12;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  v13 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 35);
  *v13 = v14;
  *(a2 + 287) = 0;
  *(a2 + 264) = 0;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v15 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v15;
  *(a2 + 311) = 0;
  *(a2 + 288) = 0;
  v16 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *v16 = v17;
  *(a2 + 335) = 0;
  *(a2 + 312) = 0;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v18 = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a1 + 336) = v18;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  v19 = (a1 + 360);
  if (*(a1 + 383) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *v19 = v20;
  *(a2 + 383) = 0;
  *(a2 + 360) = 0;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v21 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 384) = v21;
  *(a2 + 407) = 0;
  *(a2 + 384) = 0;
  v22 = (a1 + 408);
  if (*(a1 + 431) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 53);
  *v22 = v23;
  *(a2 + 431) = 0;
  *(a2 + 408) = 0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v24 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v24;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  v25 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 59);
  *v25 = v26;
  *(a2 + 479) = 0;
  *(a2 + 456) = 0;
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v27 = a2[30];
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 480) = v27;
  *(a2 + 503) = 0;
  *(a2 + 480) = 0;
  v28 = (a1 + 504);
  if (*(a1 + 527) < 0)
  {
    operator delete(*v28);
  }

  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 65);
  *v28 = v29;
  *(a2 + 527) = 0;
  *(a2 + 504) = 0;
  sub_10016D4E8(a1 + 528, (a2 + 33));
  sub_10016D7BC(a1 + 688, (a2 + 43));
  v30 = (a1 + 856);
  if (*(a1 + 879) < 0)
  {
    operator delete(*v30);
  }

  v31 = *(a2 + 856);
  *(a1 + 872) = *(a2 + 109);
  *v30 = v31;
  *(a2 + 879) = 0;
  *(a2 + 856) = 0;
  sub_10016A270(a1 + 880, a2 + 55);
  v32 = a2[57];
  *(a1 + 928) = *(a2 + 464);
  *(a1 + 912) = v32;
  v33 = (a1 + 936);
  if (*(a1 + 959) < 0)
  {
    operator delete(*v33);
  }

  v34 = *(a2 + 936);
  *(a1 + 952) = *(a2 + 119);
  *v33 = v34;
  *(a2 + 959) = 0;
  *(a2 + 936) = 0;
  v35 = (a1 + 960);
  if (*(a1 + 983) < 0)
  {
    operator delete(*v35);
  }

  v36 = a2[60];
  *(a1 + 976) = *(a2 + 122);
  *v35 = v36;
  *(a2 + 983) = 0;
  *(a2 + 960) = 0;
  *(a1 + 984) = *(a2 + 984);
  sub_10016DA50(a1 + 992, a2 + 62);
  v37 = a2[70];
  v38 = a2[71];
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v38;
  *(a1 + 1120) = v37;
  v39 = *(a2 + 1160);
  *(a2 + 145) = 0;
  *(a2 + 146) = 0;
  v40 = *(a1 + 1168);
  *(a1 + 1160) = v39;
  if (v40)
  {
    sub_100004A34(v40);
  }

  v41 = *(a2 + 1176);
  *(a2 + 147) = 0;
  *(a2 + 148) = 0;
  v42 = *(a1 + 1184);
  *(a1 + 1176) = v41;
  if (v42)
  {
    sub_100004A34(v42);
  }

  v43 = *(a2 + 1192);
  *(a2 + 149) = 0;
  *(a2 + 150) = 0;
  v44 = *(a1 + 1200);
  *(a1 + 1192) = v43;
  if (v44)
  {
    sub_100004A34(v44);
  }

  v45 = *(a2 + 1208);
  *(a2 + 151) = 0;
  *(a2 + 152) = 0;
  v46 = *(a1 + 1216);
  *(a1 + 1208) = v45;
  if (v46)
  {
    sub_100004A34(v46);
  }

  v47 = *(a2 + 612);
  *(a1 + 1226) = *(a2 + 1226);
  *(a1 + 1224) = v47;
  v48 = a2[77];
  a2[77] = 0u;
  v49 = *(a1 + 1240);
  *(a1 + 1232) = v48;
  if (v49)
  {
    sub_100004A34(v49);
  }

  sub_10016DB50(a1 + 1248, (a2 + 78));
  return a1;
}

uint64_t sub_1007CC600(__int128 **a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 8);
      }

      v10 = a1[4];
      v12 = a1[4];
      sub_10027B5B4(v10, v9);
    }

    v8 = (0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / -2;
    v5 = &v6[-80 * ((0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        sub_1007CC0DC(v5, v6);
        v6 += 80;
        v5 += 1280;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[80 * v8];
    a1[2] = v5;
  }

  result = sub_10027B690(v5, a2);
  a1[2] += 80;
  return result;
}

void sub_1007CC780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CC798(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_1002812DC(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_1002812DC(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void sub_1007CC854(void **a1)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    v5 = v4 - *a1;
    if (v4 <= *a1)
    {
      if (v2 == *a1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 0x999999999999999ALL * ((v2 - *a1) >> 8);
      }

      v8 = a1[4];
      v9 = a1[4];
      sub_10027B5B4(v8, v7);
    }

    v6 = (0xCCCCCCCCCCCCCCCDLL * (v5 >> 8) + 1) / -2;
    v3 = &v4[-80 * ((0xCCCCCCCCCCCCCCCDLL * (v5 >> 8) + 1) / 2)];
    if (v4 != v2)
    {
      do
      {
        sub_1007CC0DC(v3, v4);
        v4 += 80;
        v3 += 80;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[80 * v6];
    a1[2] = v3;
  }

  bzero(v3, 0x500uLL);
  a1[2] = a1[2] + 1280;
}

void sub_1007CC9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CC9E8(__int128 **a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 8);
      }

      v10 = a1[4];
      v12 = a1[4];
      sub_10027B5B4(v10, v9);
    }

    v8 = (0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / -2;
    v5 = &v6[-80 * ((0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        sub_1007CC0DC(v5, v6);
        v6 += 80;
        v5 += 1280;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[80 * v8];
    a1[2] = v5;
  }

  result = sub_10027B690(v5, a2);
  a1[2] += 80;
  return result;
}

void sub_1007CCB68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CCB80(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 8);
  v3 = v2 + 1;
  if (v2 + 1 > 0x33333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 8) >= 0x19999999999999)
  {
    v6 = 0x33333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027B5B4(a1, v6);
  }

  v13 = 0;
  v14 = 1280 * v2;
  sub_10027B690(1280 * v2, a2);
  v15 = 1280 * v2 + 1280;
  v7 = *(a1 + 8);
  v8 = 1280 * v2 + *a1 - v7;
  sub_1002812DC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100281380(&v13);
  return v12;
}

void sub_1007CCC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CCCB0(uint64_t *a1, _BYTE *a2, __int128 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 6);
  v4 = v3 + 1;
  if (v3 + 1 > 0xCCCCCCCCCCCCCCLL)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 6) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 6);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 6) >= 0x66666666666666)
  {
    v7 = 0xCCCCCCCCCCCCCCLL;
  }

  else
  {
    v7 = v4;
  }

  v23 = a1;
  if (v7)
  {
    sub_1007CCE68(a1, v7);
  }

  v8 = 320 * v3;
  v20 = 0;
  v21 = v8;
  *(&v22 + 1) = 0;
  *v8 = *a2;
  v9 = *a3;
  *(v8 + 24) = *(a3 + 2);
  *(v8 + 8) = v9;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v10 = *(a3 + 24);
  *(v8 + 48) = *(a3 + 5);
  *(v8 + 32) = v10;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v11 = a3[3];
  *(v8 + 72) = *(a3 + 8);
  *(v8 + 56) = v11;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 6) = 0;
  v12 = *(a3 + 72);
  *(v8 + 96) = *(a3 + 11);
  *(v8 + 80) = v12;
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v13 = a3[6];
  *(v8 + 120) = *(a3 + 14);
  *(v8 + 104) = v13;
  *(a3 + 12) = 0;
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(v8 + 128) = *(a3 + 60);
  sub_1000DE908(v8 + 136, a3 + 8);
  *&v22 = v8 + 320;
  v14 = a1[1];
  v15 = v8 + *a1 - v14;
  sub_1007CCEC0(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_1007CD138(&v20);
  return v19;
}

void sub_1007CCE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007CD138(va);
  _Unwind_Resume(a1);
}

void sub_1007CCE68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1007CCEC0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v5 = a2;
    v7 = (a2 + 136);
    do
    {
      *a4 = *(v7 - 136);
      v8 = *(v7 - 8);
      *(a4 + 24) = *(v7 - 14);
      *(a4 + 8) = v8;
      *(v7 - 15) = 0;
      *(v7 - 14) = 0;
      *(v7 - 16) = 0;
      v9 = *(v7 - 104);
      *(a4 + 48) = *(v7 - 11);
      *(a4 + 32) = v9;
      *(v7 - 12) = 0;
      *(v7 - 11) = 0;
      *(v7 - 13) = 0;
      v10 = *(v7 - 5);
      *(a4 + 72) = *(v7 - 8);
      *(a4 + 56) = v10;
      *(v7 - 9) = 0;
      *(v7 - 8) = 0;
      *(v7 - 10) = 0;
      v11 = *(v7 - 56);
      *(a4 + 96) = *(v7 - 5);
      *(a4 + 80) = v11;
      *(v7 - 7) = 0;
      *(v7 - 6) = 0;
      *(v7 - 5) = 0;
      v12 = *(v7 - 2);
      *(a4 + 120) = *(v7 - 2);
      *(a4 + 104) = v12;
      *(v7 - 4) = 0;
      *(v7 - 3) = 0;
      *(v7 - 2) = 0;
      *(a4 + 128) = *(v7 - 4);
      sub_1000DE908(a4 + 136, v7);
      a4 = v18 + 320;
      v18 += 320;
      v13 = v7 + 184;
      v7 += 20;
    }

    while (v13 != a3);
    LOBYTE(v16) = 1;
    while (v5 != a3)
    {
      sub_1007CD010(a1, v5);
      v5 += 320;
    }
  }

  return sub_1007CD0AC(v15);
}

void sub_1007CD010(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 312) == 1)
  {
    sub_1013A800C(a2 + 136);
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

uint64_t sub_1007CD0AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007CD0E4(a1);
  }

  return a1;
}

void sub_1007CD0E4(uint64_t *a1)
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
      v3 -= 320;
      sub_1007CD010(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1007CD138(uint64_t a1)
{
  sub_1007CD170(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007CD170(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 320;
    sub_1007CD010(v5, v4 - 320);
  }
}

void sub_1007CD1B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007CD20C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007CD20C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1007CD010(a1, i))
  {
    i -= 320;
  }

  *(a1 + 8) = a2;
}

void *sub_1007CD260(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10005B39C(result, a2);
  }

  return result;
}

void sub_1007CD2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007CD2D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10027EBE0(result, a4);
  }

  return result;
}

void sub_1007CD340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027EE48(&a9);
  _Unwind_Resume(a1);
}

char *sub_1007CD360(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
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
      sub_10027E9BC(v4, v6);
      v6 += 10;
      v4 = v11 + 160;
      v11 += 160;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_10027ED24(v8);
  return v4;
}

void sub_1007CD400(uint64_t a1)
{
  *a1 = off_101E7EC10;
  *(a1 + 48) = off_101E7EEA0;
  v2 = (a1 + 56);
  *(a1 + 56) = off_101E7EEC8;
  v3 = (a1 + 64);
  *(a1 + 64) = off_101E7EEF0;
  v4 = (a1 + 72);
  *(a1 + 72) = off_101E7EF28;
  v5 = (a1 + 80);
  *(a1 + 80) = off_101E7EF60;
  v6 = (a1 + 88);
  *(a1 + 88) = off_101E7EFB8;
  v7 = *(a1 + 512);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  sub_100643184(a1 + 432);
  if (*(a1 + 424) == 1)
  {
    sub_100009970(a1 + 400, *(a1 + 408));
  }

  sub_100009970(a1 + 376, *(a1 + 384));
  v8 = *(a1 + 368);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 336);
  *(a1 + 336) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v19 = (a1 + 312);
  sub_10005C284(&v19);
  v11 = *(a1 + 304);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_1000DD0AC(a1 + 264, *(a1 + 272));
  v19 = (a1 + 232);
  sub_1000B2AF8(&v19);
  v19 = (a1 + 208);
  sub_100112048(&v19);
  v12 = *(a1 + 200);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 168);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(a1 + 120);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(a1 + 104);
  if (v18)
  {
    sub_100004A34(v18);
  }

  MonitorModeStatusDelegate::~MonitorModeStatusDelegate(v6);
  CellularPlanMultiplePlanInstallSchedulerDelegateInterface::~CellularPlanMultiplePlanInstallSchedulerDelegateInterface(v5);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v4);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v3);
  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v2);
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CellularPlanDeliveryModelInterface::~CellularPlanDeliveryModelInterface(a1);
}

void sub_1007CD750(void *a1, uint64_t a2, NSObject **a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7F1A8;
  sub_1007CD848((a1 + 3), a2, a3, a4);
}

void sub_1007CD7CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7F1A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007CD848(uint64_t a1, uint64_t a2, NSObject **a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  CellularPlanDeliveryModel::CellularPlanDeliveryModel(a1, a2, a3);
}

void sub_1007CD970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CD98C(uint64_t a1)
{
  sub_1007CD400(a1);

  operator delete();
}

void sub_1007CD9CC(uint64_t a1)
{
  sub_1007CD400(a1 - 48);

  operator delete();
}

void sub_1007CDA10(uint64_t a1)
{
  sub_1007CD400(a1 - 56);

  operator delete();
}

void sub_1007CDA54(uint64_t a1)
{
  sub_1007CD400(a1 - 64);

  operator delete();
}

void sub_1007CDA98(uint64_t a1)
{
  sub_1007CD400(a1 - 72);

  operator delete();
}

void sub_1007CDADC(uint64_t a1)
{
  sub_1007CD400(a1 - 80);

  operator delete();
}

void sub_1007CDB20(uint64_t a1)
{
  sub_1007CD400(a1 - 88);

  operator delete();
}

void sub_1007CDB5C(Registry ****a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  CellularPlanDeliveryModel::init_sync(*v1);
}

void sub_1007CDBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1007CDC30(void *a1, void *a2, const ctu::OsLogLogger **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7F5E0;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a3);
  v5 = a2[1];
  a1[4] = *a2;
  a1[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1007CDCCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7F5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007CDE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CDEC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F630;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CDF08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CDF54(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1007CE0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CE16C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F6B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CE1AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CE1F8(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1007CE350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CE400(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CE438(void *a1)
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

uint64_t sub_1007CE480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CE5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CE668(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F7B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CE6A0(void *a1, xpc_object_t *a2)
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

uint64_t sub_1007CE790(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CE84C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7F830;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007CE880(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007CE8CC(void *a1)
{
  *a1 = off_101E7F8B0;
  sub_10039D5CC((a1 + 1));
  return a1;
}

void sub_1007CE910(void *a1)
{
  *a1 = off_101E7F8B0;
  sub_10039D5CC((a1 + 1));

  operator delete();
}

void sub_1007CEA20(void *a1)
{
  sub_10039D5CC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1007CEA5C(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = *a2 | 0x100;
  }

  else
  {
    v2 = 0;
  }

  return sub_10025BA88(a1 + 8, v2);
}

uint64_t sub_1007CEA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CEAC0(uint64_t ***a1)
{
  v1 = ***a1;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_1007CEBA4(CellularPlanDeliveryModel ***a1)
{
  v1 = a1;
  CellularPlanDeliveryModel::startPushListenerForPendingPlans_sync(**a1);
  operator delete();
}

uint64_t sub_1007CEC24(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007CECBC(uint64_t a1)
{
  *a1 = off_101E7F930;
  sub_100643184(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1007CED10(uint64_t a1)
{
  *a1 = off_101E7F930;
  sub_100643184(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1007CEE44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E7F930;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return sub_1007CEC24(a2 + 40, a1 + 40);
}

void sub_1007CEEBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CEEE0(void *a1)
{
  sub_1007CF0E0(a1 + 8);

  operator delete(a1);
}

const void **sub_1007CEF1C(uint64_t a1, char *a2, const void **a3, const void **a4, unsigned __int8 *a5)
{
  v6 = *a2;
  v7 = *a3;
  *a3 = 0;
  v8 = *a4;
  v12 = *a4;
  v13 = v7;
  *a4 = 0;
  v9 = *a5;
  v10 = *(a1 + 8);
  v15 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  sub_1007BF334(a1 + 40, v6, &v15, &v14, v9);
  sub_10001021C(&v14);
  sub_100005978(&v15);
  CellularPlanDeliveryModel::handleActivateResult(v10, a1 + 16, v9);
  sub_10001021C(&v12);
  return sub_100005978(&v13);
}

void sub_1007CEFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CF014(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CF060(uint64_t a1, uint64_t a2)
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

void sub_1007CF0E0(uint64_t a1)
{
  sub_100643184(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_1007CF130(void *result, void *a2)
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

void sub_1007CF390(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t (**sub_1007CF39C(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1007CF3E8()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = sub_101170F74(exception);
}

uint64_t (**sub_1007CF420(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF46C(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF4B8(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF504(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF550(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF59C(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007CF5E8(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1007CF674();
  }

  return result;
}

void sub_1007CF708(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CF7B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CF7FC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 304);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(v1 + 296);
      if (v4)
      {
        v5 = *(v1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I notifying pending transfer plans update", buf, 2u);
        }

        (*(*v4 + 56))(v4, v1 + 312);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (!v3)
  {
LABEL_12:
    operator delete();
  }

LABEL_11:
  sub_100004A34(v3);
  goto LABEL_12;
}

uint64_t *sub_1007CF940(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v4 = *(*v1 + 312);
  v3 = *(*v1 + 320);
  v5 = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v6 = *v5;
    v24 = *(v1 + 24);
    *__p = v6;
  }

  v7 = HIBYTE(v24);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v7 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v24 >= 0)
    {
      v8 = HIBYTE(v24);
    }

    else
    {
      v8 = __p[1];
    }

    if (v24 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = v4 + 432;
    while (1)
    {
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v8 == v11)
      {
        v13 = v12 >= 0 ? v10 : *v10;
        if (!memcmp(v9, v13, v8))
        {
          break;
        }
      }

      v14 = v10 + 848;
      v10 += 1280;
      if (v14 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v10 - 432;
    if (v7 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == *(v2 + 320))
  {
    v18 = *(v2 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I plan : %s is done. ignore transfer push notification", buf, 0xCu);
    }
  }

  else
  {
    v15 = *(v2 + 304);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = *(v2 + 296);
        if (v17)
        {
          *buf = 0u;
          v26 = 0u;
          if ((*(v3 + 479) & 0x8000000000000000) != 0)
          {
            if (!*(v3 + 464))
            {
LABEL_44:
              (*(*v17 + 40))(v17, v3, 1, 0);
              v19 = *(v3 + 1272);
              if (v19)
              {
                (*(*v19 + 48))(v19);
                sub_10016DBD4(v3 + 1248);
              }

              if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
              {
                operator delete(*buf);
              }

LABEL_49:
              sub_100004A34(v16);
              goto LABEL_50;
            }
          }

          else if (!*(v3 + 479))
          {
            goto LABEL_44;
          }

          sub_1001696A4(buf, (v3 + 456));
          goto LABEL_44;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    if (v16)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  sub_1000EF424(&v22);
  return sub_1000049E0(&v21);
}

void sub_1007CFC38(void **a1)
{
  v1 = **a1;
  if (v1[18])
  {
    v2 = v1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session invalidate", buf, 2u);
    }

    v3 = v1[38];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = v1[37];
        if (v6)
        {
          (*(*v6 + 88))(v6);
        }

        sub_100004A34(v5);
      }
    }

    v7 = v1[19];
    v1[18] = 0;
    v1[19] = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  operator delete();
}

uint64_t sub_1007CFD58(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1007CFE14(uint64_t a1)
{
  *a1 = off_101E7FA30;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007CFE70(uint64_t a1)
{
  *a1 = off_101E7FA30;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1007CFFA0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1007CFFC0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E7FA30;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = v3[56];
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1007D0058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D0078(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_1007D00B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 16))
      {
LABEL_47:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = asString(*(a1 + 56));
        v8 = a1 + 32;
        if (*(a1 + 55) < 0)
        {
          v8 = *(a1 + 32);
        }

        *__p = 136315394;
        *&__p[4] = v7;
        *&__p[12] = 2080;
        *&__p[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I retry transfer monitor mode completed with status: %s for sourceIccid: %s", __p, 0x16u);
      }

      v10 = *(v3 + 39);
      v9 = *(v3 + 40);
      if (*(a1 + 55) < 0)
      {
        sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        *__p = *(a1 + 32);
        *&__p[16] = *(a1 + 48);
      }

      v11 = __p[23];
      if (v10 == v9)
      {
        v9 = v10;
        if ((__p[23] & 0x80) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (__p[23] >= 0)
        {
          v12 = __p[23];
        }

        else
        {
          v12 = *&__p[8];
        }

        if (__p[23] >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        v14 = v10 + 432;
        while (1)
        {
          v15 = *(v14 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v14 + 8);
          }

          if (v15 == v12)
          {
            v17 = v16 >= 0 ? v14 : *v14;
            if (!memcmp(v17, v13, v12))
            {
              break;
            }
          }

          v18 = v14 + 848;
          v14 += 1280;
          if (v18 == v9)
          {
            if (v11 < 0)
            {
              goto LABEL_39;
            }

            goto LABEL_28;
          }
        }

        v9 = v14 - 432;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_39:
      operator delete(*__p);
LABEL_28:
      if (v9 != *(v3 + 40))
      {
        v19 = *(v9 + 1216);
        *(v9 + 1208) = 0u;
        if (v19)
        {
          sub_100004A34(v19);
        }

        *(v9 + 1226) = 1;
        *(v9 + 16) = 0;
        if (*(v9 + 1152) == 1 && *(v9 + 1136) > 0.0)
        {
          v20 = *(v3 + 38);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = v21;
              v23 = *(v3 + 37);
              if (v23)
              {
                v24 = *(a1 + 56);
                Current = CFAbsoluteTimeGetCurrent();
                v26 = *(v9 + 1136);
                v27 = *(v3 + 22);
                if (v27)
                {
                  v28 = (*(*v27 + 72))(v27);
                }

                else
                {
                  v28 = 0;
                }

                (*(*v23 + 136))(v23, 4, v9 + 240, v24, (Current - v26), v9 + 456, v28);
              }

              sub_100004A34(v22);
            }
          }

          *(v9 + 1136) = 0;
        }

        CellularPlanDeliveryModel::notifyPlansUpdate(v3);
      }

      goto LABEL_47;
    }
  }
}

void sub_1007D0380(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D03A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D03F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *sub_1007D0478(void *a1)
{
  *a1 = off_101E7FAB0;
  sub_1007CA434((a1 + 1));
  return a1;
}

void sub_1007D04BC(void *a1)
{
  *a1 = off_101E7FAB0;
  sub_1007CA434((a1 + 1));

  operator delete();
}

void sub_1007D05AC(_Unwind_Exception *a1)
{
  sub_100643184(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1007D05D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E7FAB0;
  *(a2 + 8) = v4;
  sub_1007CEC24(a2 + 16, a1 + 16);
  result = sub_10027E9BC((a2 + 48), (a1 + 48));
  v6 = *(a1 + 216);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 216) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007D0660(void *a1)
{
  sub_1007CA434(a1 + 8);

  operator delete(a1);
}

const void **sub_1007D069C(void *a1, char *a2, const void **a3, CFTypeRef *a4, unsigned __int8 *a5)
{
  v6 = *a2;
  v7 = *a3;
  *a3 = 0;
  cf = *a4;
  v16 = v7;
  *a4 = 0;
  v8 = a1[27];
  if (v8)
  {
    v9 = *a5;
    v10 = a1[1];
    v11 = std::__shared_weak_count::lock(v8);
    if (v11 && a1[26])
    {
      if (v9)
      {
        v12 = *(v10 + 176);
        sub_10000501C(__p, "");
        LOBYTE(v17) = 11;
        (*(*v12 + 40))(v12, a1 + 11, __p, &v17);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = v16;
      }

      __p[0] = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v17 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_1007BF334((a1 + 2), v6, __p, &v17, v9);
      sub_10001021C(&v17);
      sub_100005978(__p);
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
  }

  ctu::OsLogContext::OsLogContext(__p, kCtLoggingSystemName, "cp.p.tr");
  v13 = __p[1];
  ctu::OsLogContext::~OsLogContext(__p);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10177F24C();
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v11)
  {
LABEL_16:
    sub_100004A34(v11);
  }

LABEL_17:
  sub_10001021C(&cf);
  return sub_100005978(&v16);
}

void sub_1007D0834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v19);
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D0894(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007D08E0(void *a1)
{
  *a1 = off_101E7FB30;
  sub_10028ED7C((a1 + 1));
  return a1;
}

void sub_1007D0924(void *a1)
{
  *a1 = off_101E7FB30;
  sub_10028ED7C((a1 + 1));

  operator delete();
}

void sub_1007D0A34(void *a1)
{
  sub_10028ED7C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1007D0A7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D0B54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D0BA0(uint64_t a1)
{
  *a1 = off_101E7FC30;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1007D0BF0(uint64_t a1)
{
  *a1 = off_101E7FC30;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1007D0CFC(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101E7FC30;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_1007D0D48(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1007D0D5C(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **sub_1007D0DA0(uint64_t a1, unsigned __int8 *a2, const void **a3)
{
  v4 = *a2;
  v7 = *a3;
  *a3 = 0;
  v5 = *(a1 + 8);
  if (v4 == 1 && os_log_type_enabled(v5[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177F280();
  }

  CellularPlanDeliveryModel::clearTransferringStatus_sync(v5, a1 + 16);
  return sub_10001021C(&v7);
}

void sub_1007D0E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D0E38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D0E98()
{
  v1 = xmmword_10183AC70;
  v2 = unk_10183AC80;
  *&v3 = 120;
  qword_101FBABC0 = 0;
  unk_101FBABC8 = 0;
  qword_101FBABB8 = 0;
  sub_1002F3248(&qword_101FBABB8, &v1, &v3 + 8, 5uLL);
  __cxa_atexit(sub_1007BA1E0, &qword_101FBABB8, &_mh_execute_header);
  v1 = xmmword_10183AC98;
  v2 = unk_10183ACA8;
  v3 = xmmword_10183ACB8;
  v4 = 300;
  qword_101FBABD8 = 0;
  unk_101FBABE0 = 0;
  qword_101FBABD0 = 0;
  sub_1002F3248(&qword_101FBABD0, &v1, &v5, 7uLL);
  return __cxa_atexit(sub_1007BA1E0, &qword_101FBABD0, &_mh_execute_header);
}

const char *sub_1007D0FAC(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return "???";
  }

  else
  {
    return off_101E7FD28[a1];
  }
}

const char *sub_1007D0FD0(unint64_t a1)
{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101E7FD98[a1];
  }
}

uint64_t sub_1007D0FF4(uint64_t a1, char a2, NSObject **a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v12 = *a4;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A83CAC(a1, a2, &object, &v12, a5);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E7FCB0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_1007D10B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
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

uint64_t sub_1007D10DC(uint64_t a1)
{
  *a1 = off_101E7FCB0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  return sub_100A83DC4(a1);
}

void sub_1007D114C(uint64_t a1, int a2, BOOL a3)
{
  (***(a1 + 56))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  v69 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v69);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  if (v68)
  {
    sub_100004A34(v68);
  }

  if (v14)
  {
    v69 = 0;
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      v69 = v16;
    }

    else
    {
      v17 = xpc_null_create();
      v69 = v17;
      if (!v17)
      {
        v19 = xpc_null_create();
        v17 = 0;
        goto LABEL_21;
      }
    }

    if (xpc_get_type(v17) == &_xpc_type_dictionary)
    {
      xpc_retain(v17);
LABEL_22:
      xpc_release(v17);
      v20 = *(a1 + 88);
      if (v20)
      {
        v21 = [v20 carrierName];
        v65 = xpc_string_create([v21 UTF8String]);
        if (!v65)
        {
          v65 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "carrierName";
        sub_10000F688(buf, &v65, &v66);
        xpc_release(v66);
        v66 = 0;
        xpc_release(v65);
        v65 = 0;

        v22 = [*(a1 + 88) gid1];
        v63 = xpc_string_create([v22 UTF8String]);
        if (!v63)
        {
          v63 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "gid1";
        sub_10000F688(buf, &v63, &v64);
        xpc_release(v64);
        v64 = 0;
        xpc_release(v63);
        v63 = 0;

        v23 = [*(a1 + 88) gid2];
        v61 = xpc_string_create([v23 UTF8String]);
        if (!v61)
        {
          v61 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "gid1";
        sub_10000F688(buf, &v61, &v62);
        xpc_release(v62);
        v62 = 0;
        xpc_release(v61);
        v61 = 0;

        v24 = [*(a1 + 88) imsi];
        object = xpc_BOOL_create([v24 length] != 0);
        if (!object)
        {
          object = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasImsi";
        sub_10000F688(buf, &object, &v60);
        xpc_release(v60);
        v60 = 0;
        xpc_release(object);
        object = 0;

        v25 = [*(a1 + 88) imei];
        v57 = xpc_BOOL_create([v25 length] != 0);
        if (!v57)
        {
          v57 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasImei";
        sub_10000F688(buf, &v57, &v58);
        xpc_release(v58);
        v58 = 0;
        xpc_release(v57);
        v57 = 0;

        v26 = [*(a1 + 88) phoneNumber];
        v55 = xpc_BOOL_create([v26 length] != 0);
        if (!v55)
        {
          v55 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasPhoneNumber";
        sub_10000F688(buf, &v55, &v56);
        xpc_release(v56);
        v56 = 0;
        xpc_release(v55);
        v55 = 0;

        v27 = [*(a1 + 88) token];
        v28 = [v27 token];
        v53 = xpc_BOOL_create([v28 length] != 0);
        if (!v53)
        {
          v53 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasToken";
        sub_10000F688(buf, &v53, &v54);
        xpc_release(v54);
        v54 = 0;
        xpc_release(v53);
        v53 = 0;

        v51 = xpc_BOOL_create([*(a1 + 88) simType] != 2);
        if (!v51)
        {
          v51 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "isPsim";
        sub_10000F688(buf, &v51, &v52);
        xpc_release(v52);
        v52 = 0;
        xpc_release(v51);
        v51 = 0;
        v29 = [*(a1 + 88) mcc];
        v49 = xpc_string_create([v29 UTF8String]);
        if (!v49)
        {
          v49 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "mcc";
        sub_10000F688(buf, &v49, &v50);
        xpc_release(v50);
        v50 = 0;
        xpc_release(v49);
        v49 = 0;

        v30 = [*(a1 + 88) mnc];
        v47 = xpc_string_create([v30 UTF8String]);
        if (!v47)
        {
          v47 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "mnc";
        sub_10000F688(buf, &v47, &v48);
        xpc_release(v48);
        v48 = 0;
        xpc_release(v47);
        v47 = 0;
      }

      v31 = *(a1 + 120);
      v32 = a3;
      if (v31)
      {
        v33 = sub_1007D0FD0(v31);
        v45 = xpc_string_create(v33);
        if (!v45)
        {
          v45 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "messageError";
        sub_10000F688(buf, &v45, &v46);
        xpc_release(v46);
        v46 = 0;
        xpc_release(v45);
        v32 = 0;
        v45 = 0;
      }

      v34 = *(a1 + 128);
      if (v34)
      {
        v35 = sub_1007D0FAC(v34);
        v43 = xpc_string_create(v35);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "SIMTransferErrorCode";
        sub_10000F688(buf, &v43, &v44);
        xpc_release(v44);
        v44 = 0;
        xpc_release(v43);
        v43 = 0;
        v32 = *(a1 + 128) == 1;
      }

      v41 = xpc_BOOL_create(a3);
      if (!v41)
      {
        v41 = xpc_null_create();
      }

      *buf = &v69;
      v68 = "dctConnectionStateCode";
      sub_10000F688(buf, &v41, &v42);
      xpc_release(v42);
      v42 = 0;
      xpc_release(v41);
      v41 = 0;
      if (!v32)
      {
        v36 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v36 = *v36;
        }

        v39 = xpc_string_create(v36);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "phase";
        sub_10000F688(buf, &v39, &v40);
        xpc_release(v40);
        v40 = 0;
        xpc_release(v39);
        v39 = 0;
      }

      if (a2)
      {
        v38 = v69;
        if (v69)
        {
          xpc_retain(v69);
        }

        else
        {
          v38 = xpc_null_create();
        }

        (*(*v14 + 16))(v14, "crossPlatformTransferSourceMetrics", &v38);
        xpc_release(v38);
        v38 = 0;
      }

      else
      {
        v37 = v69;
        if (v69)
        {
          xpc_retain(v69);
        }

        else
        {
          v37 = xpc_null_create();
        }

        (*(*v14 + 16))(v14, "crossPlatformTransferTargetMetrics", &v37);
        xpc_release(v37);
        v37 = 0;
      }

      xpc_release(v69);
      goto LABEL_70;
    }

    v19 = xpc_null_create();
LABEL_21:
    v69 = v19;
    goto LABEL_22;
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
  }

LABEL_70:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1007D19CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1007D1B2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007D1B68(a1, a2);

  sub_100A84B0C(a1, v3);
}

uint64_t sub_1007D1B68(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_10183C518[a2 - 1];
  }
}

void sub_1007D1BB4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1007D1BDC(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_101E7FDE8;
  return result;
}

void sub_1007D1C00(uint64_t a1)
{
  *a1 = off_101E7FDE8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1007D1C90(uint64_t a1)
{
  sub_1007D1C00(a1);

  operator delete();
}

uint64_t sub_1007D1CC8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "details");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D1D5C(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 4)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this, v21, v9 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v22 = v4 ^ 1;
  return v22 & 1;
}