uint64_t DataServiceController::msimConfigMode(DataServiceController *this)
{
  v2 = capabilities::ct::supportsGemini(this);
  if (!v2)
  {
    return 1;
  }

  if (capabilities::ct::supportsDataSubscriptionController(v2))
  {
    return 1;
  }

  v3 = atomic_load(this + 1135);
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void DataServiceController::handleRecommendedDataSIMChange_sync(capabilities::ct *a1, uint64_t a2)
{
  v4 = (*(*a1 + 1112))(a1);
  v5 = *(a1 + 5);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: recommendation: %s", &v9, 0xCu);
      v5 = *(a1 + 5);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: oosReason %s", &v9, 0xCu);
    }

    if (SHIDWORD(a2) > 1)
    {
      if (HIDWORD(a2) == 3)
      {
        if ((*(*a1 + 1104))(a1) == a2)
        {
          v8 = 5;
        }

        else
        {
          v8 = 4;
        }

        goto LABEL_20;
      }

      if (HIDWORD(a2) == 2)
      {
        v8 = 4;
        goto LABEL_20;
      }
    }

    else
    {
      if (!HIDWORD(a2))
      {
        v8 = 5;
        goto LABEL_20;
      }

      if (HIDWORD(a2) == 1)
      {
        v8 = 3;
LABEL_20:
        DataServiceController::switchDataToSim_sync(a1, a2, v8);
        return;
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: recommendation: while Data SIM not configured yet, ignore recommendation", &v9, 2u);
  }
}

void DataServiceController::switchDataToSim_sync(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  if (capabilities::ct::supportsGemini(a1))
  {

    DataServiceController::checkCurrentSIMSwitch_sync(a1, a2, "sim switch call", a3);
  }

  else
  {
    v6 = *(a1 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E MSIM switch: called on a non-Gemini device", v7, 2u);
    }
  }
}

const void **DataServiceController::checkCurrentSIMSwitch_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100097DB0(*(a1 + 144), a2);
  if (result)
  {
    result = (*(*a1 + 1120))(a1);
    if (result != a2)
    {
      result = (*(*a1 + 2232))(a1, a2, a3);
      if (result)
      {
        cf = 0;
        ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
            sub_100004A34(v16);
            v18 = 0;
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
LABEL_12:
        v19 = (*(*a1 + 1104))(a1);
        TypeID = (*(*v17 + 96))(&cf, v17, v19, 1, @"InformBBOfTempDataSubSwitch", kCFBooleanTrue, 0);
        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        v21 = cf;
        buf[0] = 1;
        if (cf)
        {
          v22 = CFGetTypeID(cf);
          TypeID = CFBooleanGetTypeID();
          if (v22 == TypeID)
          {
            TypeID = ctu::cf::assign(buf, v21, v23);
          }
        }

        if (buf[0] != 1 || (capabilities::ct::supportsDataQMIExtensions(TypeID) & 1) == 0)
        {
          goto LABEL_46;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I InformBBOfTempDataSubSwitch", buf, 2u);
          v24 = *(a1 + 40);
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = asString();
          v26 = asString();
          *buf = 136315394;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState = %s, cause = %s", buf, 0x16u);
        }

        v27 = (*(*a1 + 1104))(a1);
        v28 = *(a1 + 4864);
        if (v27 == a2)
        {
          if (v28)
          {
            if (v28 != 2)
            {
              if (v28 == 1)
              {
                v29 = *(a1 + 40);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I toDDS received before tempSwitchComplete. set fPendingOnSwitchBackToPreferredDataSIM", buf, 2u);
                }

                *(a1 + 4868) = 1;
              }

              return sub_10000A1EC(&cf);
            }

            *buf = 0;
            *&buf[8] = 0;
            sub_1007B5E68(*(a1 + 104), buf);
            if (*buf)
            {
              v36[0] = off_101E7EB38;
              v36[1] = a1;
              v36[2] = a2 | (a4 << 32);
              v36[3] = v36;
              (*(**buf + 56))(*buf, 0, 1, v36);
              sub_10000FF50(v36);
              *(a1 + 4864) = 3;
              v30 = *(a1 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *v34 = 0;
                v31 = "#I fTempDataSubSwitchState back to DDS tempSwitchBackRequested";
                goto LABEL_38;
              }
            }

            goto LABEL_39;
          }

          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 0;
          v33 = "#I fTempDataSubSwitchState non-voice call back to DDS";
        }

        else
        {
          if (v28)
          {
            return sub_10000A1EC(&cf);
          }

          if (a4 == 3)
          {
            *buf = 0;
            *&buf[8] = 0;
            sub_1007B5E68(*(a1 + 104), buf);
            if (*buf)
            {
              v37[0] = off_101E7EAB8;
              v37[1] = a2 | 0x300000000;
              v37[2] = a1;
              v37[3] = v37;
              (*(**buf + 56))(*buf, a2 | &_mh_execute_header, 2, v37);
              sub_10000FF50(v37);
              *(a1 + 4864) = 1;
              v30 = *(a1 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *v34 = 0;
                v31 = "#I fTempDataSubSwitchState to nDDS kTempSwitchToNddsRequested";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, v34, 2u);
              }
            }

LABEL_39:
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            return sub_10000A1EC(&cf);
          }

          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
LABEL_46:
            DataServiceController::switchCurrentDataSim_sync(a1, a2, "sim switch call", a4);
            return sub_10000A1EC(&cf);
          }

          *buf = 0;
          v33 = "#I fTempDataSubSwitchState non-voice call to nDDS";
        }

        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
        goto LABEL_46;
      }
    }
  }

  return result;
}

void sub_1007B5528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  sub_10000FF50(&a15);
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_10000A1EC(&a10);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::checkIfSIMSwitchOK_sync(void **a1, uint64_t a2, uint64_t a3)
{
  if ((*a1)[138])(a1) == a2 || (((*a1)[133])(a1, a2) & 1) != 0 || (((*a1)[136])(a1, a2))
  {
    return 1;
  }

  v7 = *(*(*a1[6] + 16))(a1[6], a2);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v9 = 136315138;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: cannot switch to non-preferred data SIM in roaming (%s)", &v9, 0xCu);
    return 0;
  }

  return result;
}

void DataServiceController::temporaryDataSubSwitchRequestComplete(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void DataServiceController::switchCurrentDataSim_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 1120))(a1);
  DataServiceController::shutdownAllInternetConnections_sync(a1, "MSIM: switching SIM", 0);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asString();
    atomic_load((a1 + 4544));
    v11 = subscriber::asString();
    v12 = subscriber::asString();
    v13 = (*(*a1 + 1104))(a1);
    *buf = 136316162;
    v14 = "no data";
    *&buf[4] = a3;
    *&buf[12] = 2080;
    if (v13 == a2)
    {
      v14 = "data";
    }

    *&buf[14] = v10;
    v44 = 2080;
    v45 = v11;
    v46 = 2080;
    v47 = v12;
    v48 = 2080;
    v49 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MSIM switch: <%s: %s> (change states) fCurrentDataSIM %s ==>> %s (%s)", buf, 0x34u);
  }

  atomic_store(a2, (a1 + 4544));
  DataServiceController::updateCurrentDataSIMToBB_sync(a1, a4);
  if (*(a1 + 3864) != a2)
  {
    *(a1 + 3864) = a2;
    v15 = *(a1 + 3856);
    if (v15)
    {
      (*(*v15 + 48))(v15, a1 + 3864);
    }
  }

  v16 = 0;
  *buf = v8;
  *&buf[4] = a2;
  do
  {
    v17 = sub_1000A8A0C(*(a1 + 144), *&buf[v16]);
    v18 = *(v17 + 56);
    v19 = *(v17 + 64);
    while (v18 != v19)
    {
      if ((*(**v18 + 232))(*v18, 0, 1, 0))
      {
        (*(**v18 + 1096))(*v18);
        break;
      }

      v18 += 2;
    }

    v16 += 4;
  }

  while (v16 != 8);
  (*(**(a1 + 4584) + 56))(*(a1 + 4584), a2);
  DataServiceController::initAgentPolicies_sync(a1);
  sub_10000501C(__p, "currentDataSIM updated");
  (*(*a1 + 1376))(a1, 3, __p);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  DataServiceController::enableContextStateChangeNotificationRepost(a1, a2, 0, "current data SIM changed", 2);
  DataServiceController::enableContextStateChangeNotificationRepost(a1, v8, 0, "current data SIM changed", 2);
  if (capabilities::ct::supportsGemini(v20))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v22);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        v30 = 0;
        if (!v29)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v29 = 0;
    }

    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
LABEL_24:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177E6EC();
      }

LABEL_36:
      if ((v30 & 1) == 0)
      {
        sub_100004A34(v28);
      }

      goto LABEL_38;
    }

LABEL_28:
    *buf = 0;
    *&buf[8] = 0;
    (*(*v29 + 8))(buf, v29, a2);
    PDPActivators = DataServiceController::getPDPActivators(a1);
    v32 = *PDPActivators;
    v33 = *(PDPActivators + 8);
    if (*PDPActivators != v33)
    {
      do
      {
        v34 = *v32;
        v39 = *buf;
        v40 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        }

        (*(*v34 + 360))(v34, &v39);
        if (v40)
        {
          sub_100004A34(v40);
        }

        v32 += 2;
      }

      while (v32 != v33);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    goto LABEL_36;
  }

LABEL_38:
  DataServiceController::reactivateAsserted_sync(a1, a2, 33, 0);
  sub_10000501C(v37, "new TM recommendation");
  DataServiceController::setConnectionActive_sync(a1, a2, 0, 1, v37, 0, 1);
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  DataServiceController::updateTetheringStatus_sync(a1);
  sub_10000501C(buf, "switch current Data SIM");
  if (a2)
  {
    v35 = v8 == a2;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  (*(*a1 + 2424))(a1, 3, buf, v36);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007B5DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B5E68(Registry *a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(a1);
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
  *a2 = v11;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void DataServiceController::shutdownAllInternetConnections_sync(DataServiceController *this, const char *a2, int a3)
{
  DataServiceController::setInternetActive_sync(this, 0, a2, a3);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  sub_10000501C(v16, "shutdownAllInternetConnections_sync: forced shutdown");
  v4 = *(this + 14);
  v12[0] = *(this + 13);
  v12[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v12[1])
  {
    sub_100004A34(v12[1]);
  }

  v5 = v13;
  v6 = v14;
  if (v13 != v14)
  {
    v7 = v15;
    do
    {
      if (v15(*v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != v14);
    v8 = v14;
    while (v5 != v8)
    {
      v9 = *v5;
      memset(&v12[1], 0, 32);
      v12[0] = this;
      LODWORD(v12[1]) = v9;
      if (SHIBYTE(v17) < 0)
      {
        sub_100005F2C(&v12[2], v16[0], v16[1]);
      }

      else
      {
        *&v12[2] = *v16;
        v12[4] = v17;
      }

      for (i = 28; i != 36; ++i)
      {
        sub_1007B6118(v12, i);
      }

      for (j = 0; j != 2; ++j)
      {
        sub_1007B6118(v12, dword_10183A5A4[j]);
      }

      if (SHIBYTE(v12[4]) < 0)
      {
        operator delete(v12[2]);
      }

      do
      {
        ++v5;
      }

      while (v5 != v6 && (v7(*v5) & 1) == 0);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1007B60C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B6118(uint64_t a1, int a2)
{
  v4 = *a1;
  v8 = 0;
  v9 = 0;
  DataServiceController::getConnection_sync(v4, *(a1 + 8), a2, &v8);
  if (v8 && (*(*v8 + 168))(v8))
  {
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      *buf = 136315394;
      v11 = "operator()";
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Deactivating %s...", buf, 0x16u);
    }

    v7 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v7 = *v7;
    }

    DataServiceController::enableContextStateChangeNotificationRepost(v4, *(a1 + 8), a2, v7, 1);
    (*(*v8 + 96))(v8, "shutdownAllInternetConnections_sync", "CommCenter");
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1007B6290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleCriticalActivityOnSim_sync(DataServiceController *this)
{
  v1 = *(this + 18);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 != v3)
  {
    v5 = this + 864;
    while (1)
    {
      v7 = *(v2 + 416);
      v6 = *(v2 + 424);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v7 + 52);
        sub_100004A34(v6);
      }

      else
      {
        v8 = *(v7 + 52);
      }

      v9 = (*(**(this + 6) + 16))(*(this + 6), v8);
      if (!*(v2 + 24))
      {
        goto LABEL_26;
      }

      v10 = v9;
      v11 = *(v2 + 416);
      v12 = *(v2 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v11 + 49))
      {
        break;
      }

      if (*(v11 + 47) < 0)
      {
        sub_100005F2C(__p, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        *__p = *(v11 + 24);
        v25 = *(v11 + 40);
      }

      v17 = sub_100007A6C(this + 856, __p);
      if (v5 == v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v17 + 56);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      v19 = *(v2 + 392);
      v20 = *v10;
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19 != (v18 & 1))
      {
        if (v21)
        {
          v23 = asStringBool(v18 & 1);
          *buf = 136315138;
          v27 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I handle critical activity: setting to %s", buf, 0xCu);
        }

        (*(**(v2 + 24) + 840))(*(v2 + 24), v18 & 1);
        *(v2 + 392) = v18 & 1;
        if (!v12)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_100004A34(v12);
        goto LABEL_26;
      }

      if (v21)
      {
        v22 = asStringBool(v18 & 1);
        *buf = 136315138;
        v27 = v22;
        v14 = v20;
        v15 = "#I handle critical activity: already handled: %s";
        v16 = 12;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
      }

LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

LABEL_26:
      v2 += 432;
      if (v2 == v3)
      {
        return;
      }
    }

    v13 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v14 = v13;
    v15 = "#N handle critical activity: wrong personality type";
    v16 = 2;
    goto LABEL_23;
  }
}

void sub_1007B6544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleBasebandDataSlotUpdated_sync(DataServiceController *this)
{
  v2 = atomic_load(this + 1134);
  v3 = atomic_load(this + 1136);
  v4 = *(this + 280);
  if (v2 != v4)
  {
    *(this + 1216) = 0;
    DataServiceController::shutdownAllInternetConnections_sync(this, "MSIM: changing preferred SIM", 1);
    DataServiceController::updateIpcConfiguration_sync(this);
  }

  atomic_store(v4, this + 1134);
  atomic_store(v4, this + 1136);
  if (*(this + 966) != v4)
  {
    *(this + 966) = v4;
    v5 = *(this + 482);
    if (v5)
    {
      (*(*v5 + 48))(v5, this + 3864);
    }
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = subscriber::asString();
    v32 = 2080;
    v33 = subscriber::asString();
    v34 = 2080;
    v35 = subscriber::asString();
    v36 = 2080;
    v37 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: (change states) fPreferredDataSIM %s ==>> %s, fCurrentDataSIM %s ==>> %s", buf, 0x2Au);
  }

  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  DataServiceController::updateCurrentDataSIMToBB_sync(this, v7);
  (*(**(this + 573) + 56))(*(this + 573), v4);
  (*(**(this + 573) + 48))(*(this + 573), v4);
  ServiceMap = Registry::getServiceMap(*(this + 13));
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
  if (!v14)
  {
    v16 = 0;
LABEL_19:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_20:
    v18 = (**v16)(v16);
    DataServiceController::notifyCellularDataSwitchingAllowed_sync(this, v18);
  }

LABEL_21:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = *(this + 18);
  v20 = *(v19 + 8);
  for (i = *(v19 + 16); v20 != i; v20 += 54)
  {
    v23 = v20[52];
    v22 = v20[53];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *(v23 + 52);
      sub_100004A34(v22);
    }

    else
    {
      v24 = *(v23 + 52);
    }

    if (v24 != v4)
    {
      v25 = v20[7];
      v26 = v20[8];
      while (v25 != v26)
      {
        if ((*(**v25 + 232))(*v25, 0, 1, 0))
        {
          (*(**v25 + 1160))(*v25, "MSIM reconfig", 0, 0);
        }

        v25 += 2;
      }
    }
  }

  DataServiceController::initAgentPolicies_sync(this);
  sub_10000501C(__p, "preferredDataSIM updated");
  (*(*this + 1376))(this, 3, __p);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  DataServiceController::updateTetheringStatus_sync(this);
  sub_10000501C(buf, "changed preferred Data SIM");
  v28 = v2 != v4 && v4 != 0;
  (*(*this + 2424))(this, 3, buf, v28);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007B6A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::notifyCellularDataSwitchingAllowed(DataServiceController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void DataServiceController::processCongestionInd(os_log_t *a1, int a2)
{
  v8 = a2;
  v2 = a1[5];
  if (a2)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I processCongestionInd simSlot %s", buf, 0xCu);
    }

    v7 = ((*a1)[138].isa)(a1);
    *buf = 1;
    v11 = 0u;
    v12 = 0;
    *&buf[8] = a1 + 455;
    sub_1000517E4(&v11, (a1 + 459));
    v5 = a1[5];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v7 == a2)
    {
      if (v6)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I preferredDataSIM has congestion", v9, 2u);
      }

      *v9 = &v8;
      *(sub_100051AD8(&v11, &v8) + 32) = 1;
    }

    else
    {
      if (v6)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I congestion relieved or timeout", v9, 2u);
      }

      *v9 = &v7;
      *(sub_100051AD8(&v11, &v7) + 32) = 0;
    }

    sub_1007B92F0(buf);
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10177E72C();
  }
}

void sub_1007B6D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007B92F0(va);
  _Unwind_Resume(a1);
}

void DataServiceController::dumpMsimData_sync(DataServiceController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========================== MSIM ==========================", buf, 2u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = subscriber::asString();
    atomic_load(this + 1134);
    v4 = subscriber::asString();
    *buf = 136315394;
    v39 = v3;
    v40 = 2080;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: PreferredDataSIM = %s / %s", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = subscriber::asString();
    atomic_load(this + 1136);
    v6 = subscriber::asString();
    *buf = 136315394;
    v39 = v5;
    v40 = 2080;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: CurrentDataSIM = %s / %s", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = subscriber::asString();
    v8 = subscriber::asString();
    *buf = 136315394;
    v39 = v7;
    v40 = 2080;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: BasebandDataSIM = %s / %s", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = subscriber::asString();
    *buf = 136315138;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: UIDataSIM = %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = subscriber::asString();
    atomic_load(this + 1135);
    v11 = subscriber::asString();
    v12 = subscriber::asString();
    *buf = 136315650;
    v39 = v10;
    v40 = 2080;
    v41 = v11;
    v42 = 2080;
    v43 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: config mode = %s / %s, target = %s", buf, 0x20u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asStringBool(*(this + 588) != 0);
    v14 = subscriber::asString();
    v15 = subscriber::asString();
    *buf = 136315650;
    v39 = v13;
    v40 = 2080;
    v41 = v14;
    v42 = 2080;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: backoff timer: %s, sim %s, mode %s", buf, 0x20u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(this + 577) != 0);
    v17 = asStringBool(*(this + 4680));
    v18 = asStringBool(*(this + 579) != 0);
    v19 = asString();
    v20 = subscriber::asString();
    v21 = subscriber::asString();
    v22 = asStringBool(*(this + 4696));
    *buf = 136316674;
    v39 = v16;
    v40 = 2080;
    v41 = v17;
    v42 = 2080;
    v43 = v18;
    v44 = 2080;
    v45 = v19;
    v46 = 2080;
    v47 = v20;
    v48 = 2080;
    v49 = v21;
    v50 = 2080;
    v51 = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: waiting: fMSIMAirplaneAssertion = %s, fAlreadyInAirplaneMode = %s, fMSIMPowerAssertion = %s, fRemapStatus = %s, fSimSlot = %s, fMSimConfigMode = %s, fConfigResult = %s", buf, 0x48u);
  }

  v23 = *(this + 18);
  v24 = *(v23 + 8);
  for (i = *(v23 + 16); v24 != i; v24 += 432)
  {
    v26 = *(this + 5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v24 + 424);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v27);
      }

      v28 = subscriber::asString();
      *buf = 136315138;
      v39 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: for %s:", buf, 0xCu);
    }

    v30 = *(v24 + 416);
    v29 = *(v24 + 424);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      if (v30)
      {
        v30 = *(v24 + 416);
        v31 = *(v24 + 424);
        if (!v31)
        {
          goto LABEL_28;
        }

        v32 = 0;
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_29;
      }
    }

    else if (v30)
    {
      v31 = 0;
LABEL_28:
      v32 = 1;
LABEL_29:
      v33 = sub_100007A6C(this + 856, (v30 + 24));
      if ((v32 & 1) == 0)
      {
        sub_100004A34(v31);
      }

      if ((this + 864) != v33)
      {
        v34 = *(this + 5);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = asStringBool(v33[56]);
          *buf = 136315138;
          v39 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: CriticalActivityOnSimPersonality = %s", buf, 0xCu);
        }
      }
    }

    v36 = *(this + 5);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asStringBool(*(v24 + 392));
      *buf = 136315138;
      v39 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I DATA:: MSIM:: simCriticalActivity = %s", buf, 0xCu);
    }
  }
}

void sub_1007B7354(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007B7374(uint64_t **a1)
{
  v1 = a1;
  DataServiceController::setMsimBackoff_sync(**a1, *(*a1 + 2), *(*a1 + 3), 0, 0, *(*a1 + 16), "onFullCompleteMSIM_sync failure");
  operator delete();
}

void *sub_1007B740C(void *a1)
{
  *a1 = off_101E7E880;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1007B7470(void *a1)
{
  *a1 = off_101E7E880;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

__n128 sub_1007B75D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7E880;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v4;
  v5 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 80) = v6;
  v7 = *(a1 + 112);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 112) = v7;
  result = *(a1 + 128);
  *(a2 + 128) = result;
  return result;
}

void sub_1007B7678(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1007B76D4(void *__p)
{
  v2 = __p[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_1007B772C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 16))
      {
        v5 = *(a1 + 40);
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6 = *(a1 + 72);
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
        }

        *&v7[9] = *(a1 + 112);
        v7[11] = *(a1 + 120);
        *v7 = 0;
        *&v7[2] = 0;
        sub_100004AA0(v7, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1007B7920(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007B7930(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1007B797C(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 4616);
  if (v3)
  {
    v4 = *(v3 + 68);
    if (v4 == 2)
    {
      if (*(v1 + 8))
      {
        if (*(v2 + 884) != 2)
        {
          v9 = *(v2 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(v1 + 112);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MSIM update: Acquired airplane mode assertion - postpone execution till actual airplane mode (reason '%s')", &buf, 0xCu);
          }

          v11 = *(v1 + 24);
          *&buf = *(v1 + 16);
          *(&buf + 1) = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
          }

          v16 = *(v1 + 32);
          v17 = *(v1 + 40);
          v12 = *(v1 + 56);
          v18 = *(v1 + 48);
          v19 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
          }

          v20[0] = *(v1 + 64);
          *(v20 + 12) = *(v1 + 76);
          v21 = *(v1 + 96);
          v22 = *(v1 + 104);
          operator new();
        }

        *(v2 + 4680) = 1;
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v1 + 112);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: Acquired airplane mode assertion - already in airplane mode (reason '%s')", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177E76C();
      }
    }

    else if (v4)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177E84C();
      }
    }

    else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177E7DC();
    }

    sub_1007B7D18(v1 + 16);
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177E8BC();
    }

    v5 = *(v2 + 4680);
    DataServiceController::MsimLpmWaiting::reset((v2 + 4616));
    DataServiceController::setMsimBackoff_sync(v2, *(v1 + 120), *(v1 + 124), 0, 0, (v5 & 1) == 0, "lost airplane assertion");
  }

  sub_1007B7CB8(&v14);
  return sub_1000049E0(&v13);
}

void sub_1007B7C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1007B3E04(&a11);
  sub_1007B7CB8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007B7CB8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 56);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void sub_1007B7D18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*a1)
      {
        v6 = *(v3 + 40);
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          v8 = *(a1 + 80);
          *buf = 136315138;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MSIM update: onAirplaneMode (reason '%s')", buf, 0xCu);
        }

        *(v3 + 4688) = *(a1 + 24);
        v9 = *(a1 + 88);
        if (!v9)
        {
          v9 = atomic_load((v3 + 4540));
        }

        *(v3 + 4692) = v9;
        v10 = capabilities::ct::supportsDualSIMSingleStackWithCrossMapping(v7);
        v11 = *(v3 + 144);
        if (v10)
        {
          if (sub_100097DB0(v11, 1) && *(sub_1000A8A0C(*(v3 + 144), 1) + 24))
          {
            sub_1000A8A0C(*(v3 + 144), 1);
            v12 = *(a1 + 40);
            if (v12)
            {
              atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }

        else if (sub_100097DB0(v11, *(a1 + 24)) && *(sub_1000A8A0C(*(v3 + 144), *(a1 + 24)) + 24))
        {
          sub_1000A8A0C(*(v3 + 144), *(a1 + 24));
          v13 = *(a1 + 40);
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007B8024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10000FF50(va);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void *sub_1007B806C(void *a1)
{
  *a1 = off_101E7E8F0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1007B80C4(void *a1)
{
  *a1 = off_101E7E8F0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

__n128 sub_1007B81F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7E8F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 24) = v4;
  v5 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 56);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 56) = result;
  v7 = *(a1 + 96);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v7;
  return result;
}

void sub_1007B8278(void *a1)
{
  sub_1007B8308(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1007B82BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B8308(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_1007B8358(void *a1)
{
  *a1 = off_101E7E970;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007B83A4(void *a1)
{
  *a1 = off_101E7E970;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

__n128 sub_1007B8490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7E970;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 24) = result;
  *(a2 + 52) = 0;
  return result;
}

void sub_1007B84DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007B84EC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007B852C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(v3);
    v7 = *(a1 + 40);
    *buf = 136315650;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v13 = 2080;
    v14 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MSIM update: configuration completed with result %s (reason '%s' msimMode %s)", buf, 0x20u);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      if (*(a1 + 8) && (v3 & 1) == 0)
      {
        DataServiceController::MsimLpmWaiting::reset((v4 + 4616));
        v10 = *(*(**(v4 + 48) + 16))(*(v4 + 48), *(a1 + 32));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 40);
          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E MSIM update: Cannot update preferredData SIM, will try again (reason '%s')", buf, 0xCu);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100004AA0(buf, (v4 + 8));
        operator new();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1007B877C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1007B87A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B87F4(uint64_t **a1)
{
  v1 = a1;
  DataServiceController::setMsimBackoff_sync(**a1, *(*a1 + 2), *(*a1 + 3), 0, 0, *(*a1 + 16), "updatePreferredDataSIM_sync failure");
  operator delete();
}

void sub_1007B888C(uint64_t **a1)
{
  v18 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 16);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I temporaryDataSubSwitchRequestComplete success = %d", buf, 8u);
  }

  if (*(v2 + 4868) != 1)
  {
    *(v2 + 4864) = 2;
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState to nDDS kTempSwitchToNddsCompleted", buf, 2u);
    }

    DataServiceController::switchCurrentDataSim_sync(v2, *(v1 + 2), "sim switch call", *(v1 + 3));
LABEL_20:
    operator delete();
  }

  *(v2 + 4868) = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 104));
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
LABEL_18:
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_20;
      }

LABEL_16:
      v16 = v1[1];
      v19[0] = off_101E7EA38;
      v19[1] = v2;
      v19[2] = v16;
      v19[3] = v19;
      (*(*v13 + 56))(v13, 0, 1, v19);
      sub_10000FF50(v19);
      *(v2 + 4864) = 3;
      v17 = *(v2 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState back to DDS kTempSwitchBackRequested due to pending", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
    goto LABEL_18;
  }

  goto LABEL_16;
}

void sub_1007B8B30(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

__n128 sub_1007B8BFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7EA38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007B8C2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

uint64_t sub_1007B8D20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B8D6C(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 4864) = 0;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 16);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState back to DDS due to pending, success = %d. kInit", buf, 8u);
  }

  DataServiceController::switchCurrentDataSim_sync(v2, *(v1 + 2), "sim switch call", *(v1 + 3));
  operator delete();
}

__n128 sub_1007B8EEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7EAB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007B8F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1007B8FF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7EB38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007B9020(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

uint64_t sub_1007B9114(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007B9160(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 4864) = 0;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 16);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fTempDataSubSwitchState back to DDS success = %d, return to init", buf, 8u);
  }

  DataServiceController::switchCurrentDataSim_sync(v2, *(v1 + 2), "sim switch call", *(v1 + 3));
  operator delete();
}

void sub_1007B926C(DataServiceController ***a1)
{
  v1 = a1;
  DataServiceController::notifyCellularDataSwitchingAllowed_sync(**a1, *(*a1 + 8));
  operator delete();
}

uint64_t sub_1007B92F0(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_10031E330(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

double sub_1007B9344(uint64_t a1)
{
  *a1 = off_101E7EBB8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *&result = 1;
  *(a1 + 96) = 1;
  return result;
}

void sub_1007B938C(uint64_t a1)
{
  *a1 = off_101E7EBB8;
  v4 = *(a1 + 88);
  v2 = (a1 + 88);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5)
  {
    sub_100140988(a1 + 80, v5);
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v6)
  {
    sub_100140988(a1 + 72, v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    sub_100140988(a1 + 64, v7);
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v8)
  {
    sub_100140988(a1 + 56, v8);
  }

  sub_100140928((a1 + 48), 0);
  v9 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v9)
  {
    sub_100140988(a1 + 40, v9);
  }

  sub_100140928((a1 + 32), 0);
  v10 = (a1 + 8);
  sub_1000087B4(&v10);
  PB::Base::~Base(a1);
}

void sub_1007B9478(uint64_t a1)
{
  sub_1007B938C(a1);

  operator delete();
}

uint64_t sub_1007B94B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *a1 = off_101E7EBB8;
  *(a1 + 24) = 0u;
  *(a1 + 96) = 1;
  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 100))
  {
    v3 = *(a2 + 96);
    *(a1 + 100) |= 1u;
    *(a1 + 96) = v3;
  }

  if (*(a2 + 88))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_100008234((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  return a1;
}

uint64_t sub_1007B98CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 100))
  {
    PB::TextFormatter::format(this, "consentType", *(a1 + 96));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    PB::TextFormatter::format(this, "csn", v7);
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    PB::TextFormatter::format(this, "targetCsn", v8);
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 72))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 80))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 88))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007B9A2C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 8);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_80;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        if (v23 <= 7)
        {
          if (v23 == 6)
          {
            *(a1 + 100) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v36 = 0;
              v37 = 0;
              v32 = 0;
              v18 = v27 >= v28;
              v38 = v27 - v28;
              if (!v18)
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
                  goto LABEL_78;
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
                v15 = v37++ > 8;
                if (v15)
                {
LABEL_64:
                  LODWORD(v32) = 0;
                  goto LABEL_78;
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
                v15 = v31++ > 8;
                if (v15)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_78:
            *(a1 + 96) = v32;
            goto LABEL_52;
          }

          if (v23 == 7)
          {
            operator new();
          }
        }

        else
        {
          switch(v23)
          {
            case 8:
              operator new();
            case 9:
              operator new();
            case 0xA:
              v24 = *(a1 + 16);
              v25 = *(a1 + 24);
              if (v24 >= v25)
              {
                v42 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
                v43 = v42 + 1;
                if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                v44 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
                if (2 * v44 > v43)
                {
                  v43 = 2 * v44;
                }

                if (v44 >= 0x555555555555555)
                {
                  v45 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v45 = v43;
                }

                v54[4] = v7;
                if (v45)
                {
                  sub_100005348(v7, v45);
                }

                v46 = 24 * v42;
                *v46 = 0;
                *(v46 + 8) = 0;
                *(v46 + 16) = 0;
                v26 = 24 * v42 + 24;
                v47 = *(a1 + 8);
                v48 = *(a1 + 16) - v47;
                v49 = 24 * v42 - v48;
                memcpy((v46 - v48), v47, v48);
                v50 = *(a1 + 8);
                *(a1 + 8) = v49;
                *(a1 + 16) = v26;
                v51 = *(a1 + 24);
                *(a1 + 24) = 0;
                v54[2] = v50;
                v54[3] = v51;
                v54[0] = v50;
                v54[1] = v50;
                sub_1000054E0(v54);
              }

              else
              {
                *v24 = 0;
                v24[1] = 0;
                v26 = (v24 + 3);
                v24[2] = 0;
              }

              *(a1 + 16) = v26;
              PB::Reader::read();
              goto LABEL_52;
          }
        }
      }

      else if (v23 <= 2)
      {
        if (v23 == 1)
        {
          operator new();
        }

        if (v23 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v23, v11 & 7, 0))
      {
        v53 = 0;
        return v53 & 1;
      }

LABEL_52:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_80:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_1007BA058(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 40))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 48);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 3u);
  }

  if (*(v3 + 64))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 100))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 96), 6u);
  }

  if (*(v3 + 88))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 72))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 80))
  {
    result = PB::Writer::write();
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    result = PB::Writer::write();
    v7 += 24;
  }

  return result;
}

BOOL sub_1007BA160(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_100022D3C(&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_1007BA1E0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void CellularPlanDeliveryModel::CellularPlanDeliveryModel(uint64_t a1, uint64_t a2, NSObject **a3)
{
  sub_100118594((a1 + 8), a3, &kCtLoggingSystemName, &off_101E7EBF8);
  *a1 = off_101E7EC10;
  *(a1 + 48) = off_101E7EEA0;
  *(a1 + 56) = off_101E7EEC8;
  *(a1 + 64) = off_101E7EEF0;
  *(a1 + 72) = off_101E7EF28;
  *(a1 + 80) = off_101E7EF60;
  *(a1 + 88) = off_101E7EFB8;
  (***a2)(v17);
  v5 = v17[0];
  *(a1 + 96) = *v17;
  v6 = *(a2 + 8);
  *(a1 + 112) = *a2;
  *(a1 + 120) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 96);
  }

  else
  {
    v7 = v5;
  }

  ServiceMap = Registry::getServiceMap(v7);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v18 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v18);
  if (v14)
  {
    v15 = v14[3];
    v16 = v14[4];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v17[0] = v15;
  v17[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    sub_100004A34(v16);
  }

  v18 = a1 + 40;
  sub_1007CDBBC();
}

void sub_1007BA814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, MonitorModeStatusDelegate *a9, CellularPlanMultiplePlanInstallSchedulerDelegateInterface *a10, CellularPlanProvisioningMonitorModeDelegate *a11, CellularPlanProvisioningMonitorModeDelegate *a12, CoreUtilsMessageSessionDelegateInterface *a13, dispatch_object_t object, dispatch_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (*(v24 + 503) < 0)
  {
    operator delete(*(v24 + 480));
  }

  sub_100643184(v23 + 224);
  if (*(v24 + 424) == 1)
  {
    sub_100009970(v23 + 192, *(v24 + 408));
  }

  sub_100009970(v23 + 168, *(v24 + 384));
  v28 = *(v24 + 368);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v24 + 344);
  *(v24 + 344) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v24 + 336);
  *(v24 + 336) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  a22 = v23 + 104;
  sub_10005C284(&a22);
  v31 = *(v24 + 304);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  sub_1000DD0AC(v26, *(v24 + 272));
  a22 = v23 + 24;
  sub_1000B2AF8(&a22);
  a22 = v23;
  sub_100112048(&a22);
  v32 = *(v24 + 200);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v24 + 184);
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = *(v24 + 168);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v24 + 152);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v36 = *(v24 + 136);
  if (v36)
  {
    sub_100004A34(v36);
  }

  v37 = *(v24 + 120);
  if (v37)
  {
    sub_100004A34(v37);
  }

  v38 = *(v24 + 104);
  if (v38)
  {
    sub_100004A34(v38);
  }

  MonitorModeStatusDelegate::~MonitorModeStatusDelegate(a9);
  CellularPlanMultiplePlanInstallSchedulerDelegateInterface::~CellularPlanMultiplePlanInstallSchedulerDelegateInterface(a10);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(a11);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(a12);
  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(a13);
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v24 + 40));
  sub_1000C0544(v25);
  CellularPlanDeliveryModelInterface::~CellularPlanDeliveryModelInterface(v24);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::connectRestResources_sync(Registry **this)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, this[12]);
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1007CDD2C();
}

void sub_1007BACAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleVinylInfoUpdated_sync(CellularPlanDeliveryModel *this)
{
  v1 = *(this + 39);
  v2 = *(this + 40);
  if (v1 != v2)
  {
    while (1)
    {
      if ((*(v1 + 479) & 0x8000000000000000) != 0)
      {
        if (*(v1 + 464))
        {
          break;
        }
      }

      else if (*(v1 + 479))
      {
        break;
      }

      if (*(v1 + 1225) == 1)
      {
        break;
      }

LABEL_39:
      v1 += 1280;
      if (v1 == v2)
      {
        return;
      }
    }

    v4 = *(v1 + 1176);
    if (v4)
    {
      (*(*v4 + 48))(v4, this + 208);
    }

    if (*(v1 + 1) == 12)
    {
      goto LABEL_39;
    }

    v5 = *(v1 + 1192);
    if (v5)
    {
      (*(*v5 + 48))(v5, this + 208);
    }

    v6 = *(v1 + 1208);
    if (v6)
    {
      (*(*v6 + 48))(v6, this + 208);
    }

    v7 = (v1 + 456);
    memset(__str, 0, sizeof(__str));
    sub_1007C4FBC(v1 + 456, (v1 + 480), this + 26, __str);
    v8 = __str[24];
    if (__str[24] != 1)
    {
LABEL_36:
      if ((v8 & 1) != 0 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      goto LABEL_39;
    }

    if ((*(v1 + 479) & 0x8000000000000000) != 0)
    {
      if (!*(v1 + 464))
      {
LABEL_19:
        std::string::operator=((v1 + 456), __str);
      }
    }

    else if (!*(v1 + 479))
    {
      goto LABEL_19;
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (v1 + 432);
      if (*(v1 + 455) < 0)
      {
        v10 = *v10;
      }

      v11 = v1 + 456;
      if (*(v1 + 479) < 0)
      {
        v11 = *v7;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I plan (%s) has got successfully transferred as (%s)", buf, 0x16u);
    }

    *(v1 + 1225) = 0;
    if (*(this + 472) == 1)
    {
      if (*(v1 + 479) < 0)
      {
        sub_100005F2C(buf, *(v1 + 456), *(v1 + 464));
      }

      else
      {
        *buf = *v7;
        *&buf[16] = *(v1 + 472);
      }

      v14 = 1;
      (*(*this + 112))(this, v1 + 432, 12, buf);
    }

    else
    {
      buf[0] = 0;
      v14 = 0;
      (*(*this + 112))(this, v1 + 432, 12, buf);
    }

    if (v14 == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    CellularPlanDeliveryModel::maybeSubmitTransferTimestampsWhenVinylInfoUpdate(this, v1);
    v8 = __str[24];
    goto LABEL_36;
  }
}

void sub_1007BAFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleSimStateUpdated_sync(CellularPlanDeliveryModel *this)
{
  v2 = *(this + 29);
  v3 = *(this + 30);
  if (v2 == v3)
  {
LABEL_46:
    CellularPlanDeliveryModel::notifyPlansUpdate(this);
  }

  while (1)
  {
    isSimReady = subscriber::isSimReady();
    v5 = *(v2 + 64) == 1 ? isSimReady : 0;
    if (v5 == 1)
    {
      break;
    }

LABEL_42:
    v2 += 168;
    if (v2 == v3)
    {
      goto LABEL_46;
    }
  }

  v6 = *(this + 39);
  v7 = *(this + 40);
  v8 = (v2 + 72);
  if (*(v2 + 95) < 0)
  {
    sub_100005F2C(__p, *(v2 + 72), *(v2 + 80));
  }

  else
  {
    *__p = *v8;
    v20 = *(v2 + 88);
  }

  v9 = HIBYTE(v20);
  if (v6 == v7)
  {
    v7 = v6;
LABEL_27:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v20 >= 0)
    {
      v10 = HIBYTE(v20);
    }

    else
    {
      v10 = __p[1];
    }

    if (v20 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = v6 + 432;
    while (1)
    {
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v10 == v13)
      {
        v15 = v14 >= 0 ? v12 : *v12;
        if (!memcmp(v11, v15, v10))
        {
          break;
        }
      }

      v16 = v12 + 848;
      v12 += 1280;
      if (v16 == v7)
      {
        goto LABEL_27;
      }
    }

    v7 = v12 - 432;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_29;
    }
  }

  operator delete(__p[0]);
LABEL_29:
  v17 = *(this + 40);
  if (v7 != v17 && *v7 != 7 && (*(v7 + 9) & 1) == 0)
  {
    v18 = *(this + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 95) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 4FF plan inserted removed from pending transfer plans (%s)", buf, 0xCu);
      v17 = *(this + 40);
    }

    if (v7 + 1280 != v17)
    {
      do
      {
        sub_1007CC0DC(v7, (v7 + 1280));
        v7 += 1280;
      }

      while (v7 + 1280 != v17);
      v17 = *(this + 40);
    }

    while (v17 != v7)
    {
      v17 -= 1280;
      sub_1002813D0(v17);
    }

    *(this + 40) = v7;
  }

  goto LABEL_42;
}

void CellularPlanDeliveryModel::handleDumpState_sync(CellularPlanDeliveryModel *this)
{
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 40) - *(this + 39)) >> 8);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I pending transfer plans count: %lu", &v7, 0xCu);
  }

  v6 = *(this + 39);
  v5 = *(this + 40);
  while (v6 != v5)
  {
    sub_10064A7C8(v6, v2);
    v6 += 1280;
  }
}

void CellularPlanDeliveryModel::handleBuddyStateUpdated_sync(CellularPlanDeliveryModel *this)
{
  if (*(this + 64) == 2)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (this + 480);
      if (*(this + 503) < 0)
      {
        v3 = *v3;
      }

      v4 = 136315138;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I clearing source imei [%s] after buddy exit", &v4, 0xCu);
    }

    if (*(this + 503) < 0)
    {
      **(this + 60) = 0;
      *(this + 61) = 0;
    }

    else
    {
      *(this + 480) = 0;
      *(this + 503) = 0;
    }
  }
}

void sub_1007BB434(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/bound_sims");
  v4[0] = off_101E7F830;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007BB4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::createTransferSessionHandler_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 112);
  v6 = a2[1];
  v17 = *a2;
  v18 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v20, (a1 + 8));
  v7 = v21;
  if (v21)
  {
    v8 = v20;
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
    v15 = 0;
    v16 = 0;
    v9 = std::__shared_weak_count::lock(v7);
    v10 = v9;
    if (v9)
    {
      v11 = v8 + 56;
      if (!v8)
      {
        v11 = 0;
      }

      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = v11;
      v16 = v9;
      std::__shared_weak_count::__release_weak(v7);
      sub_100004A34(v10);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  (*(*v5 + 472))(&v19, v5, &v17, &v15);
  v12 = v19;
  v19 = 0uLL;
  v13 = *(a1 + 152);
  *(a1 + 144) = v12;
  if (v13)
  {
    sub_100004A34(v13);
    if (*(&v19 + 1))
    {
      sub_100004A34(*(&v19 + 1));
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  v14 = *(a1 + 152);
  *a3 = *(a1 + 144);
  a3[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1007BB680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t CellularPlanDeliveryModel::activateCrossPlatformTransport_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  if (v4 && (*(*v4 + 40))(v4))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177E92C();
    }

    return sub_10025BA88(a2, 269);
  }

  else
  {
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = *(a1 + 120);
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1009C0B00(2, &v12);
    v8 = v12;
    v12 = 0uLL;
    v9 = *(a1 + 168);
    *(a1 + 160) = v8;
    if (v9)
    {
      sub_100004A34(v9);
      if (*(&v12 + 1))
      {
        sub_100004A34(*(&v12 + 1));
      }
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (*(a1 + 160))
    {
      sub_10043A78C(v13, a2);
      v14 = 0;
      operator new();
    }

    return sub_10025BA88(a2, 260);
  }
}

void sub_1007BB884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_10028ED7C(v16 - 56);
  sub_10039D5CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::deactivateCrossPlatformTransport_sync(void *a1, uint64_t a2)
{
  v3 = a1[20];
  if (v3)
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deactivate cross platform transfer", v8, 2u);
      v3 = a1[20];
    }

    (*(*v3 + 24))(v3, 1);
    v6 = a1[21];
    a1[20] = 0;
    a1[21] = 0;
    if (v6)
    {
      sub_100004A34(v6);
    }

    return sub_10025BA88(a2, 0);
  }

  else
  {

    return sub_10025BA88(a2, 260);
  }
}

void CellularPlanDeliveryModel::appendPendingTransferPlans(CellularPlanDeliveryModel *this, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
LABEL_5:
    v6 = *(this + 39);
    v7 = *(this + 40);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = v7 - v6 - 1280;
      v10 = vdupq_n_s64(v9 / 0x500);
      do
      {
        v11 = vdupq_n_s64(v8);
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1017DF6E0)));
        if (vuzp1_s8(vuzp1_s16(v12, *v10.i8), *v10.i8).u8[0])
        {
          v6[10] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v12, *&v10), *&v10).i8[1])
        {
          v6[1290] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1017DF6D0)))), *&v10).i8[2])
        {
          v6[2570] = 0;
          v6[3850] = 0;
        }

        v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC60)));
        if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i32[1])
        {
          v6[5130] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i8[5])
        {
          v6[6410] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC50))))).i8[6])
        {
          v6[7690] = 0;
          v6[8970] = 0;
        }

        v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC40)));
        if (vuzp1_s8(vuzp1_s16(v14, *v10.i8), *v10.i8).u8[0])
        {
          v6[10250] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v14, *&v10), *&v10).i8[1])
        {
          v6[11530] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC30)))), *&v10).i8[2])
        {
          v6[12810] = 0;
          v6[14090] = 0;
        }

        v15 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC20)));
        if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i32[1])
        {
          v6[15370] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i8[5])
        {
          v6[16650] = 0;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_10183AC10))))).i8[6])
        {
          v6[17930] = 0;
          v6[19210] = 0;
        }

        v8 += 16;
        v6 += 20480;
      }

      while (((v9 / 0x500 + 16) & 0x7FFFFFFFFFFFF0) != v8);
    }
  }

  else
  {
    v5 = *a2;
    while ((*(v5 + 10) & 1) != 0)
    {
      v5 += 1280;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_127:
    CellularPlanDeliveryModel::handleDumpState_sync(this);
    v42 = this;
    if (atomic_load_explicit(this + 44, memory_order_acquire) != -1)
    {
      __str.__r_.__value_.__r.__words[0] = &v42;
      *&v43 = &__str;
      std::__call_once(this + 44, &v43, sub_1007CEAC0);
    }

    CellularPlanDeliveryModel::notifyPlansUpdate(this);
  }

  while (1)
  {
    v16 = *(this + 39);
    v17 = *(this + 40);
    if (v16 != v17)
    {
      v18 = *(v3 + 455);
      if (v18 >= 0)
      {
        v19 = *(v3 + 455);
      }

      else
      {
        v19 = *(v3 + 440);
      }

      v20 = v16 + 27;
      while (1)
      {
        v21 = *(v20 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v20 + 1);
        }

        if (v19 == v21)
        {
          v23 = v18 >= 0 ? (v3 + 432) : *(v3 + 432);
          v24 = v22 >= 0 ? v20 : *v20;
          if (!memcmp(v23, v24, v19))
          {
            break;
          }
        }

        v25 = v20 + 53;
        v20 += 80;
        if (v25 == v17)
        {
          goto LABEL_69;
        }
      }

      v16 = v20 - 27;
    }

    if (v16 == v17)
    {
LABEL_69:
      v16 = sub_1007BC200(this + 39, v17, v3);
      CellularPlanDeliveryModel::updatePlanStates_sync(this, v16, *(v16 + 1));
      if (*(v16 + 1) == 5)
      {
        *(v16 + 2) = 1;
      }

      if ((*(v16 + 311) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 37))
        {
          goto LABEL_75;
        }
      }

      else if (!*(v16 + 311))
      {
LABEL_75:
        (***(this + 14))(&__str);
        ServiceMap = Registry::getServiceMap(__str.__r_.__value_.__l.__data_);
        v28 = ServiceMap;
        if (v29 < 0)
        {
          v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
          v31 = 5381;
          do
          {
            v29 = v31;
            v32 = *v30++;
            v31 = (33 * v31) ^ v32;
          }

          while (v32);
        }

        std::mutex::lock(ServiceMap);
        *&v43 = v29;
        v33 = sub_100009510(&v28[1].__m_.__sig, &v43);
        if (v33)
        {
          v35 = v33[3];
          v34 = v33[4];
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v28);
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v34);
            v36 = 0;
            goto LABEL_83;
          }
        }

        else
        {
          v35 = 0;
        }

        std::mutex::unlock(v28);
        v34 = 0;
        v36 = 1;
LABEL_83:
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__str.__r_.__value_.__l.__size_);
        }

        if (!v35)
        {
          goto LABEL_93;
        }

        memset(&__str, 0, sizeof(__str));
        (*(*v35 + 24))(&__str, v35, v16 + 24);
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::operator=(v16 + 12, &__str);
          v39 = v16 + 33;
          sub_10092C8F4(&v43, v16 + 264, &__str);
          if (*(v16 + 287) < 0)
          {
            operator delete(*v39);
          }

          *v39 = v43;
          *(v16 + 35) = v44;
          v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if (v38 < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          if ((v36 & 1) == 0)
          {
LABEL_94:
            sub_100004A34(v34);
          }
        }

        else
        {
LABEL_93:
          if ((v36 & 1) == 0)
          {
            goto LABEL_94;
          }
        }
      }

      if ((*(v16 + 479) & 0x8000000000000000) != 0)
      {
        if (*(v16 + 58))
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (!*(v16 + 479))
        {
          goto LABEL_106;
        }

LABEL_99:
        if ((*(v16 + 503) & 0x8000000000000000) != 0)
        {
          if (!*(v16 + 61))
          {
LABEL_103:
            sub_10092CDF4(v16 + 456, &__str);
            if (*(v16 + 503) < 0)
            {
              operator delete(*(v16 + 60));
            }

            *(v16 + 20) = __str;
          }
        }

        else if (!*(v16 + 503))
        {
          goto LABEL_103;
        }
      }

LABEL_106:
      if (*(v16 + 1224) == 1 && *(v16 + 2) == 4)
      {
        v40 = *(this + 5);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__str.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I monitor mode exhausted, should hide PendingTransferPlan", &__str, 2u);
        }

        *(v16 + 2) = 1;
      }

      goto LABEL_119;
    }

    *(v16 + 8) = *(v3 + 8);
    std::string::operator=(v16 + 10, (v3 + 240));
    std::string::operator=(v16 + 12, (v3 + 288));
    std::string::operator=(v16 + 11, (v3 + 264));
    std::string::operator=(v16 + 5, (v3 + 120));
    std::string::operator=(v16 + 6, (v3 + 144));
    std::string::operator=(v16 + 7, (v3 + 168));
    std::string::operator=(v16 + 8, (v3 + 192));
    *(v16 + 1) = *(v3 + 4);
    *(v16 + 10) = *(v3 + 10);
    if (*(v3 + 913) == 1)
    {
      *(v16 + 456) = *(v3 + 912);
    }

    v26 = *(v16 + 150);
    *(v16 + 1192) = 0u;
    if (v26)
    {
      sub_100004A34(v26);
    }

    *(v16 + 612) = *(v3 + 1224);
    *(v16 + 1226) = *(v3 + 1226);
    if (*(v3 + 16) != 1)
    {
      goto LABEL_119;
    }

    *(v16 + 16) = 1;
    if ((*(v3 + 407) & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*(v3 + 392))
    {
      goto LABEL_59;
    }

LABEL_60:
    if ((*(v3 + 335) & 0x8000000000000000) == 0)
    {
      if (!*(v3 + 335))
      {
        goto LABEL_63;
      }

LABEL_62:
      std::string::operator=(v16 + 13, (v3 + 312));
      goto LABEL_63;
    }

    if (*(v3 + 320))
    {
      goto LABEL_62;
    }

LABEL_63:
    if ((*(v3 + 383) & 0x8000000000000000) == 0)
    {
      if (!*(v3 + 383))
      {
        goto LABEL_66;
      }

LABEL_65:
      std::string::operator=(v16 + 15, (v3 + 360));
      goto LABEL_66;
    }

    if (*(v3 + 368))
    {
      goto LABEL_65;
    }

LABEL_66:
    if ((*(v3 + 359) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 344))
      {
        goto LABEL_119;
      }

LABEL_118:
      std::string::operator=(v16 + 14, (v3 + 336));
      goto LABEL_119;
    }

    if (*(v3 + 359))
    {
      goto LABEL_118;
    }

LABEL_119:
    if (*(v16 + 913) == 1 && *(v16 + 912) == 1)
    {
      v41 = *(this + 22);
      if (v41)
      {
        (*(*v41 + 48))(v41, v16 + 15, v16 + 456, v16 + 1);
      }
    }

    CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(this, v16);
    CellularPlanDeliveryModel::maybeStartRecoveryDelayProvisioningMonitorMode(this, v16);
    CellularPlanDeliveryModel::maybeStartRetryTransferMonitorMode(this, v16);
    v3 += 1280;
    if (v3 == v4)
    {
      goto LABEL_127;
    }
  }

  if (!*(v3 + 407))
  {
    goto LABEL_60;
  }

LABEL_59:
  std::string::operator=(v16 + 16, (v3 + 384));
  goto LABEL_60;
}

void sub_1007BC1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_1007BC200(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    if (v9 > 0x33333333333333)
    {
      sub_1000CE3D4();
    }

    v10 = a2 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 8);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    }

    if (v11 >= 0x19999999999999)
    {
      v13 = 0x33333333333333;
    }

    else
    {
      v13 = v12;
    }

    v18 = a1;
    if (v13)
    {
      sub_10027B5B4(a1, v13);
    }

    *&v15 = 0;
    *(&v15 + 1) = v10 >> 8 << 8;
    v16 = *(&v15 + 1);
    v17 = 0;
    sub_1007CC600(&v15, a3);
    v4 = sub_1007CC798(a1, &v15, v4);
    sub_100281380(&v15);
  }

  else if (a2 == v7)
  {
    sub_10027B690(a1[1], a3);
    a1[1] = v7 + 80;
  }

  else
  {
    bzero(&v15, 0x500uLL);
    v19 = a1;
    sub_10027B690(&v15, a3);
    sub_1007CC01C(a1, v4, a1[1], (v4 + 80));
    sub_1007CC0DC(v4, &v15);
    sub_1002813D0(&v15);
  }

  return v4;
}

void CellularPlanDeliveryModel::updatePlanStates_sync(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((sub_10064A65C(a3) & 1) == 0)
  {
    *(a2 + 1) = a3;
  }

  if (sub_10064A65C(a3))
  {
    *(a2 + 2) = a3;
    goto LABEL_9;
  }

  if (a3 <= 9 && ((1 << a3) & 0x320) != 0)
  {
    v6 = 4;
LABEL_8:
    *(a2 + 2) = v6;
    goto LABEL_9;
  }

  if ((a3 & 0xFE) != 0xC)
  {
    v6 = 1;
    goto LABEL_8;
  }

  *(a2 + 2) = 0;
  if (*(a2 + 1160))
  {
    v8 = *(a2 + 1168);
    *(a2 + 1160) = 0;
    *(a2 + 1168) = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

LABEL_9:
  if (sub_10064A65C(*(a2 + 1)))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10177E960(a2, a2 + 1, v7);
    }

    *(a2 + 1) = 1;
  }
}

void CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  if (v3 <= 0xC && ((1 << v3) & 0x1801) != 0)
  {
    v5 = *(a1 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = sub_10064A0D0(v3);
    v6 = "#I Not starting monitor mode for plan with state:%s";
    goto LABEL_7;
  }

  v10 = *(a2 + 479);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 464);
  }

  if (v10)
  {
    v12 = (a2 + 456);
    if (*(a2 + 1176))
    {
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v12;
        if (v11 >= 0)
        {
          v13 = v12;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        v6 = "#I monitor mode (dp) already running for plan with targetIccid:%s";
LABEL_7:
        v7 = v5;
LABEL_8:
        v8 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      if (v3 == 9)
      {
        goto LABEL_25;
      }

      v15 = *(a2 + 527);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 512);
      }

      if (v15)
      {
LABEL_25:
        v16 = *(a2 + 1224);
        v17 = *(a1 + 40);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v16 == 1)
        {
          if (v18)
          {
            v19 = *v12;
            if (v11 >= 0)
            {
              v19 = a2 + 456;
            }

            *buf = 136315138;
            *&buf[4] = v19;
            v6 = "#I Monitor mode exhausted for plan with targetIccid: %s";
            v7 = v17;
            goto LABEL_8;
          }
        }

        else
        {
          if (v18)
          {
            v20 = *v12;
            if (v11 >= 0)
            {
              v20 = a2 + 456;
            }

            *buf = 136315138;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I starting monitor mode for plan with targetIccid:%s", buf, 0xCu);
          }

          v21 = *(a1 + 112);
          v22 = *(a1 + 24);
          object = v22;
          if (v22)
          {
            dispatch_retain(v22);
          }

          sub_100004AA0(&v36, (a1 + 8));
          if (v36)
          {
            v23 = v36 + 64;
          }

          else
          {
            v23 = 0;
          }

          v41 = v23;
          v42 = v37;
          v36 = 0;
          v37 = 0;
          if (*(a2 + 479) < 0)
          {
            sub_100005F2C(__p, *(a2 + 456), *(a2 + 464));
          }

          else
          {
            *__p = *v12;
            v40 = *(a2 + 472);
          }

          (*(*v21 + 976))(buf, v21, &object, a1 + 96, &v41, __p);
          v27 = (a2 + 1176);
          v28 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          v29 = *(a2 + 1184);
          *(a2 + 1176) = v28;
          if (v29)
          {
            sub_100004A34(v29);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          if (v42)
          {
            sub_100004A34(v42);
          }

          if (v37)
          {
            sub_100004A34(v37);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (*v27)
          {
            memset(buf, 0, sizeof(buf));
            v30 = *(a1 + 112);
            sub_10000501C(&v36, "");
            (*(*v30 + 1000))(buf, v30, 2, a2 + 24, a2 + 48, a2 + 72, a2 + 96, &v36);
            if (v38 < 0)
            {
              operator delete(v36);
            }

            v31 = *v27;
            v34 = 0;
            v35 = 0;
            v33 = 0;
            sub_100645A60(&v33, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
            (*(*v31 + 16))(v31, &v33);
            if (v33)
            {
              v34 = v33;
              operator delete(v33);
            }

            v32 = (a2 + 1120);
            if ((*(a2 + 1152) & 1) == 0)
            {
              *v32 = 0u;
              *(a2 + 1136) = 0u;
              *(a2 + 1152) = 1;
            }

            *v32 = CFAbsoluteTimeGetCurrent();
            (*(**v27 + 24))();
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_10177EA04();
          }
        }
      }

      else
      {
        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10064A0D0(v3);
          if (*(a2 + 479) >= 0)
          {
            v26 = a2 + 456;
          }

          else
          {
            v26 = *(a2 + 456);
          }

          *buf = 136315394;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          v6 = "#I Not starting monitor mode for plan with empty smdp url with state%s targetIccid:%s";
          v7 = v24;
          v8 = 22;
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I Not starting monitor mode for plan with empty targetIccid";
      v7 = v14;
      v8 = 2;
      goto LABEL_9;
    }
  }
}

void sub_1007BC9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, dispatch_object_t object)
{
  if (a25)
  {
    sub_100004A34(a25);
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

void CellularPlanDeliveryModel::maybeStartRecoveryDelayProvisioningMonitorMode(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 312);
  v4 = *(a1 + 320);
  sub_10027B690(v57, a2);
  if (v3 != v4)
  {
    if ((v59 & 0x80u) == 0)
    {
      v5 = v59;
    }

    else
    {
      v5 = v58[1];
    }

    if ((v59 & 0x80u) == 0)
    {
      v6 = v58;
    }

    else
    {
      v6 = v58[0];
    }

    v7 = v57[17] & (v57[1] != 12);
    v8 = v3 + 54;
    do
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if (v9 < 0)
      {
        v9 = v8[1];
      }

      if (v5 == v9)
      {
        if (v10 >= 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = *v8;
        }

        if ((memcmp(v6, v11, v5) == 0) | v7 & 1)
        {
          v3 = v8 - 54;
          goto LABEL_20;
        }
      }

      else if (v7)
      {
        goto LABEL_20;
      }

      v3 += 160;
      v12 = v8 + 106;
      v8 += 160;
    }

    while (v12 != v4);
    v3 = v4;
  }

LABEL_20:
  sub_1002813D0(v57);
  if (v3 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EA6C();
    }

    return;
  }

  if ((*(v3 + 1225) & 1) == 0)
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = v3 + 54;
    if (*(v3 + 455) < 0)
    {
      v21 = *v21;
    }

    v22 = v3 + 30;
    if (*(v3 + 263) < 0)
    {
      v22 = *v22;
    }

    *buf = 136315394;
    *&buf[4] = v21;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    v17 = "#I not starting recovery monitor mode for plan with source iccid:(%s) carrier name:(%s)";
    goto LABEL_37;
  }

  if (*(v3 + 1) == 12)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = sub_10064A0D0(12);
    v15 = v3 + 54;
    if (*(v3 + 455) < 0)
    {
      v15 = *v15;
    }

    v16 = v3 + 30;
    if (*(v3 + 263) < 0)
    {
      v16 = *v16;
    }

    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    *&buf[22] = 2080;
    v56 = v16;
    v17 = "#I Not starting recovery monitor mode for plan with state:(%s) sourceIccid:(%s) carrierName:(%s)";
    v18 = v13;
    v19 = 32;
    goto LABEL_38;
  }

  if (v3[149] && (*(v3 + 17) & 1) == 0)
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v29 = v3 + 54;
    if (*(v3 + 455) < 0)
    {
      v29 = *v29;
    }

    v30 = v3 + 30;
    if (*(v3 + 263) < 0)
    {
      v30 = *v30;
    }

    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = v30;
    v17 = "#I recovery monitor mode already running for plan with source iccid:(%s) carrier name:(%s)";
LABEL_37:
    v18 = v20;
    v19 = 22;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    return;
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v3 + 54;
    if (*(v3 + 455) < 0)
    {
      v24 = *v24;
    }

    v25 = v3 + 30;
    if (*(v3 + 263) < 0)
    {
      v25 = *v25;
    }

    *buf = 136315394;
    *&buf[4] = v24;
    *&buf[12] = 2080;
    *&buf[14] = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I starting recovery monitor mode for plan with source iccid:(%s) carrier name:(%s)", buf, 0x16u);
  }

  v26 = *(a1 + 112);
  v27 = *(a1 + 24);
  object = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  sub_100004AA0(&v46, (a1 + 8));
  if (v46)
  {
    v28 = v46 + 64;
  }

  else
  {
    v28 = 0;
  }

  v52 = v28;
  v53 = v47;
  v46 = 0;
  *&v47 = 0;
  if (*(v3 + 263) < 0)
  {
    sub_100005F2C(__p, v3[30], v3[31]);
  }

  else
  {
    *__p = *(v3 + 15);
    v51 = v3[32];
  }

  v31 = *(a1 + 120);
  v48 = *(a1 + 112);
  v49 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v26 + 984))(buf, v26, &object, a1 + 96, &v52, __p, a1 + 208, &v48);
  v32 = (v3 + 149);
  v33 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v34 = v3[150];
  *(v3 + 149) = v33;
  if (v34)
  {
    sub_100004A34(v34);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v49)
  {
    sub_100004A34(v49);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
  }

  if (v53)
  {
    sub_100004A34(v53);
  }

  if (v47)
  {
    sub_100004A34(v47);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (*v32)
  {
    memset(buf, 0, sizeof(buf));
    if (*(v3 + 17) == 1)
    {
      v35 = *(a1 + 112);
      sub_10000501C(v44, "");
      (*(*v35 + 1072))(&v46, v35, v3 + 3, v3 + 6, v3 + 9, v3 + 12, v44);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v36 = v46;
      *buf = v46;
      v37 = v47;
      *&buf[8] = v47;
      v47 = 0uLL;
      v46 = 0;
      if (v45 < 0)
      {
        operator delete(v44[0]);
        v36 = *buf;
        v38 = *&buf[8];
      }

      else
      {
        v38 = v37;
      }

      if (v36 != v38)
      {
        goto LABEL_90;
      }

      v39 = &qword_101FBABD0;
    }

    else
    {
      v39 = &qword_101FBABB8;
    }

    sub_1000D0394(buf, *v39, v39[1], (v39[1] - *v39) >> 3);
LABEL_90:
    v40 = *v32;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    sub_100645A60(&v41, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
    (*(*v40 + 16))(v40, &v41);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if ((v3[144] & 1) == 0)
    {
      *(v3 + 71) = 0u;
      *(v3 + 70) = 0u;
      *(v3 + 1152) = 1;
    }

    *(v3 + 141) = CFAbsoluteTimeGetCurrent();
    (*(*v3[149] + 24))(v3[149]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EA38();
  }
}

void sub_1007BD0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, dispatch_object_t object, void *a33, uint64_t a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::maybeStartRetryTransferMonitorMode(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 312);
  v4 = *(a1 + 320);
  sub_10027B690(v56, a2);
  if (v5 == v4)
  {
    v4 = v5;
  }

  else
  {
    if ((v58 & 0x80u) == 0)
    {
      v6 = v58;
    }

    else
    {
      v6 = v57[1];
    }

    if ((v58 & 0x80u) == 0)
    {
      v7 = v57;
    }

    else
    {
      v7 = v57[0];
    }

    v8 = v5 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v4)
      {
        goto LABEL_20;
      }
    }

    v4 = v8 - 432;
  }

LABEL_20:
  sub_1002813D0(v56);
  if (v4 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EB44();
    }

    return;
  }

  if (*(v4 + 1) == 12)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = sub_10064A0D0(12);
    v15 = (v4 + 432);
    if (*(v4 + 455) < 0)
    {
      v15 = *v15;
    }

    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    v16 = "#I Not starting retry monitor mode for plan with state:%s sourceIccid: %s";
    v17 = v13;
    v18 = 22;
    goto LABEL_40;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    v19 = *(a1 + 40);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = (v4 + 432);
    if (*(v4 + 455) < 0)
    {
      v21 = *v21;
    }

    *buf = 136315138;
    *&buf[4] = v21;
    v16 = "#I Not starting retry monitor mode for plan which is not deleted on source for sourceIccid:%s";
    goto LABEL_38;
  }

  if (*(v4 + 1208))
  {
    v19 = *(a1 + 40);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v20 = (v4 + 432);
    if (*(v4 + 455) < 0)
    {
      v20 = *v20;
    }

    *buf = 136315138;
    *&buf[4] = v20;
    v16 = "#I Retry transfer monitor mode already running for plan with sourceIccid:%s";
    goto LABEL_38;
  }

  v22 = *(v4 + 335);
  if (v22 < 0)
  {
    if (!*(v4 + 320))
    {
      goto LABEL_54;
    }
  }

  else if (!*(v4 + 335))
  {
    goto LABEL_54;
  }

  v23 = *(v4 + 407);
  if (v23 < 0)
  {
    v23 = *(v4 + 392);
  }

  if (!v23)
  {
LABEL_54:
    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (v4 + 312);
      if ((v22 & 0x80000000) != 0)
      {
        v26 = *v26;
      }

      v27 = (v4 + 384);
      if (*(v4 + 407) < 0)
      {
        v27 = *v27;
      }

      v28 = (v4 + 432);
      if (*(v4 + 455) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315650;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v27;
      *&buf[22] = 2080;
      v55 = v28;
      v16 = "#I Not starting retry monitor mode for plan with transfer token:%s, imsi:%s and sourceIccid:%s";
      v17 = v25;
      v18 = 32;
      goto LABEL_40;
    }

    return;
  }

  if (*(v4 + 1226) == 1)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a2 + 432;
      if (*(a2 + 455) < 0)
      {
        v24 = *(a2 + 432);
      }

      *buf = 136315138;
      *&buf[4] = v24;
      v16 = "#I Retry Monitor mode exhausted for plan with sourceIccid: %s";
LABEL_38:
      v17 = v19;
LABEL_39:
      v18 = 12;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  else
  {
    v29 = *(v4 + 479);
    if (v29 < 0)
    {
      v30 = *(v4 + 464);
    }

    else
    {
      v30 = *(v4 + 479);
    }

    v31 = *(a1 + 40);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v32)
      {
        v33 = (v4 + 456);
        if ((v29 & 0x80000000) != 0)
        {
          v33 = *v33;
        }

        *buf = 136315138;
        *&buf[4] = v33;
        v16 = "#I Not starting retry monitor mode for plan with targetIccid:%s";
        v17 = v31;
        goto LABEL_39;
      }
    }

    else
    {
      if (v32)
      {
        v34 = (v4 + 432);
        if (*(v4 + 455) < 0)
        {
          v34 = *v34;
        }

        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I starting retry transfer monitor mode for plan with sourceIccid:%s", buf, 0xCu);
      }

      *(v4 + 1) = 11;
      v35 = *(a1 + 112);
      v36 = *(a1 + 24);
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      sub_100004AA0(&v46, (a1 + 8));
      if (v46)
      {
        v37 = v46 + 72;
      }

      else
      {
        v37 = 0;
      }

      v51 = v37;
      v52 = v47;
      v46 = 0;
      v47 = 0;
      if (*(v4 + 455) < 0)
      {
        sub_100005F2C(__p, *(v4 + 432), *(v4 + 440));
      }

      else
      {
        *__p = *(v4 + 432);
        v50 = *(v4 + 448);
      }

      (*(*v35 + 992))(buf, v35, &object, a1 + 96, &v51, __p);
      v38 = (v4 + 1208);
      v39 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v40 = *(v4 + 1216);
      *(v4 + 1208) = v39;
      if (v40)
      {
        sub_100004A34(v40);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }

      if (v52)
      {
        sub_100004A34(v52);
      }

      if (v47)
      {
        sub_100004A34(v47);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (*v38)
      {
        memset(buf, 0, sizeof(buf));
        v41 = *(a1 + 112);
        sub_10000501C(&v46, "");
        (*(*v41 + 1000))(buf, v41, 4, v4 + 24, v4 + 48, v4 + 72, v4 + 96, &v46);
        if (v48 < 0)
        {
          operator delete(v46);
        }

        v42 = *v38;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        sub_100645A60(&v43, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
        (*(*v42 + 16))(v42, &v43);
        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if ((*(v4 + 1152) & 1) == 0)
        {
          *(v4 + 1136) = 0u;
          *(v4 + 1120) = 0u;
          *(v4 + 1152) = 1;
        }

        *(v4 + 1136) = CFAbsoluteTimeGetCurrent();
        (*(**(v4 + 1208) + 24))(*(v4 + 1208));
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177EB10();
      }
    }
  }
}

void sub_1007BD7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, dispatch_object_t object, void *a27, uint64_t a28)
{
  if (a25)
  {
    sub_100004A34(a25);
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

void CellularPlanDeliveryModel::notifyPlansUpdate(CellularPlanDeliveryModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void CellularPlanDeliveryModel::appendPurchaseIccidPlan(CellularPlanDeliveryModel *a1, std::string *__str, int a3, const std::string *a4, char a5)
{
  v11 = *(a1 + 39);
  v10 = *(a1 + 40);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v11 == v10)
  {
    v10 = v11;
LABEL_22:
    if (v12 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = v11 + 456;
    while (1)
    {
      v16 = v15[23];
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 1);
      }

      if (size == v16)
      {
        v18 = v17 >= 0 ? v15 : *v15;
        if (!memcmp(p_p, v18, size))
        {
          break;
        }
      }

      v19 = (v15 + 824);
      v15 += 1280;
      if (v19 == v10)
      {
        goto LABEL_22;
      }
    }

    v10 = (v15 - 456);
    if (v12 < 0)
    {
LABEL_23:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v10 == *(a1 + 40))
  {
    v10 = sub_1007BDB1C(a1 + 312, v10);
  }

  std::string::operator=(v10 + 19, __str);
  sub_10092CDF4(__str, &v20);
  if (*(v10 + 503) < 0)
  {
    operator delete(*(v10 + 60));
  }

  v10[30] = v20;
  *(v10 + 62) = v21;
  std::string::operator=(v10 + 10, a4);
  *(v10 + 984) = a5;
  if ((a3 - 4) > 0xFFFFFFFD)
  {
    *(v10 + 1) = 1033;
    CellularPlanDeliveryModel::startPurchasePlanReleaseWaitTimer(a1, v10, 0x18u, 0);
    CellularPlanDeliveryModel::handleDumpState_sync(a1);
    CellularPlanDeliveryModel::notifyPlansUpdate(a1);
  }

  CellularPlanDeliveryModel::handleDumpState_sync(a1);
}

__int128 *sub_1007BDB1C(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = *a1;
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 8) + 1;
    if (v7 > 0x33333333333333)
    {
      sub_1000CE3D4();
    }

    v8 = a2 - v6;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v6) >> 8);
    v10 = 2 * v9;
    if (2 * v9 <= v7)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 8) + 1;
    }

    if (v9 >= 0x19999999999999)
    {
      v11 = 0x33333333333333;
    }

    else
    {
      v11 = v10;
    }

    v16 = a1;
    if (v11)
    {
      sub_10027B5B4(a1, v11);
    }

    *&v13 = 0;
    *(&v13 + 1) = v8 >> 8 << 8;
    v14 = *(&v13 + 1);
    v15 = 0;
    sub_1007CC854(&v13);
    v2 = sub_1007CC798(a1, &v13, v2);
    sub_100281380(&v13);
  }

  else if (a2 == v5)
  {
    bzero(*(a1 + 8), 0x500uLL);
    *(a1 + 8) = v5 + 1280;
  }

  else
  {
    v17 = a1;
    bzero(&v13, 0x500uLL);
    sub_1007CC01C(a1, v2, v5, (v2 + 80));
    sub_1007CC0DC(v2, &v13);
    sub_1002813D0(&v13);
  }

  return v2;
}

void CellularPlanDeliveryModel::startPurchasePlanReleaseWaitTimer(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if (*(a2 + 1160))
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Profile release timer running", &buf, 2u);
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    (***(a1 + 112))(&buf);
    Registry::getTimerService(&v29, buf);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v29)
    {
      buf = 0uLL;
      v28 = 0;
      if (*(a2 + 503) < 0)
      {
        sub_100005F2C(&buf, *(a2 + 480), *(a2 + 488));
      }

      else
      {
        buf = *(a2 + 480);
        v28 = *(a2 + 496);
      }

      __dst = 0uLL;
      v26 = 0;
      if (*(a2 + 263) < 0)
      {
        sub_100005F2C(&__dst, *(a2 + 240), *(a2 + 248));
      }

      else
      {
        __dst = *(a2 + 240);
        v26 = *(a2 + 256);
      }

      sub_100004AA0(&v31, (a1 + 8));
      v10 = v31;
      v9 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
      }

      v11 = v29;
      sub_10000501C(__p, "Pending profile release wait timer");
      v12 = *(a1 + 24);
      object = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_1007C600C;
      aBlock[3] = &unk_101E7F000;
      aBlock[4] = a1;
      aBlock[5] = v10;
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(&v16, buf, *(&buf + 1));
      }

      else
      {
        v16 = buf;
        v17 = v28;
      }

      if (SHIBYTE(v26) < 0)
      {
        sub_100005F2C(&v18, __dst, *(&__dst + 1));
      }

      else
      {
        v18 = __dst;
        v19 = v26;
      }

      v20 = a4;
      v21 = _Block_copy(aBlock);
      sub_100D23364(v11, __p, 0, 60000000 * a3, &object, &v21);
      sub_10039C50C((a2 + 1160), &v31);
      v13 = v31;
      v31 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
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

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(buf);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBBC();
    }

    if (v30)
    {
      sub_100004A34(v30);
    }
  }
}

void sub_1007BE02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *aBlock, dispatch_object_t object, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  v46 = *(v44 - 104);
  if (v46)
  {
    sub_100004A34(v46);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BE118()
{
  if (!*(v0 - 136))
  {
    JUMPOUT(0x1007BE110);
  }

  JUMPOUT(0x1007BE10CLL);
}

void CellularPlanDeliveryModel::appendPendingPlanWithExpectedIccid(CellularPlanDeliveryModel *a1, uint64_t a2)
{
  v4 = *(a1 + 39);
  v5 = *(a1 + 40);
  sub_10027B690(v19, a2);
  if (v4 != v5)
  {
    if ((v21 & 0x80u) == 0)
    {
      v6 = v21;
    }

    else
    {
      v6 = v20[1];
    }

    if ((v21 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v20[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v8 = v23;
    }

    else
    {
      v8 = v22[1];
    }

    if ((v23 & 0x80u) == 0)
    {
      v9 = v22;
    }

    else
    {
      v9 = v22[0];
    }

    do
    {
      v10 = *(v4 + 479);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v4 + 58);
      }

      if (v6 == v10)
      {
        v12 = v11 >= 0 ? v4 + 456 : *(v4 + 57);
        if (!memcmp(v7, v12, v6))
        {
          goto LABEL_30;
        }
      }

      v13 = *(v4 + 503);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v4 + 61);
      }

      if (v8 == v13)
      {
        v15 = v14 >= 0 ? v4 + 30 : *(v4 + 60);
        if (!memcmp(v9, v15, v8))
        {
          goto LABEL_30;
        }
      }

      v4 += 80;
    }

    while (v4 != v5);
    v4 = v5;
  }

LABEL_30:
  sub_1002813D0(v19);
  if (v4 == *(a1 + 40))
  {
    v4 = sub_1007BE304(a1 + 39, v4, a2);
  }

  v16 = *(a2 + 479);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 464);
  }

  if (v16)
  {
    sub_10092CDF4(a2 + 456, &v17);
    if (*(v4 + 503) < 0)
    {
      operator delete(*(v4 + 60));
    }

    v4[30] = v17;
    *(v4 + 62) = v18;
    CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(a1, v4);
  }

  CellularPlanDeliveryModel::handleDumpState_sync(a1);
  CellularPlanDeliveryModel::notifyPlansUpdate(a1);
}

__int128 *sub_1007BE304(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    if (v9 > 0x33333333333333)
    {
      sub_1000CE3D4();
    }

    v10 = a2 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 8);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    }

    if (v11 >= 0x19999999999999)
    {
      v13 = 0x33333333333333;
    }

    else
    {
      v13 = v12;
    }

    v18 = a1;
    if (v13)
    {
      sub_10027B5B4(a1, v13);
    }

    *&v15 = 0;
    *(&v15 + 1) = v10 >> 8 << 8;
    v16 = *(&v15 + 1);
    v17 = 0;
    sub_1007CC9E8(&v15, a3);
    v4 = sub_1007CC798(a1, &v15, v4);
    sub_100281380(&v15);
  }

  else if (a2 == v7)
  {
    sub_10027B690(a1[1], a3);
    a1[1] = v7 + 80;
  }

  else
  {
    bzero(&v15, 0x500uLL);
    v19 = a1;
    sub_10027B690(&v15, a3);
    sub_1007CC01C(a1, v4, a1[1], (v4 + 80));
    sub_1007CC0DC(v4, &v15);
    sub_1002813D0(&v15);
  }

  return v4;
}

void CellularPlanDeliveryModel::appendPendingCarrierPlansWithoutIccid(CellularPlanDeliveryModel *a1, std::string *__str, unsigned int a3)
{
  v6 = *(a1 + 39);
  v7 = *(a1 + 40);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v6 != v7)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    do
    {
      v11 = *(v6 + 263);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v6 + 31);
      }

      if (size == v11)
      {
        v13 = v12 >= 0 ? v6 + 15 : *(v6 + 30);
        if (!memcmp(p_p, v13, size))
        {
          v14 = *(v6 + 455);
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v6 + 55);
          }

          if (!v14)
          {
            v15 = *(v6 + 503);
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v6 + 61);
            }

            if (!v15)
            {
              goto LABEL_26;
            }
          }
        }
      }

      v6 += 80;
    }

    while (v6 != v7);
    v6 = v7;
  }

LABEL_26:
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 == *(a1 + 40))
  {
    v6 = sub_1007BDB1C(a1 + 312, v6);
  }

  std::string::operator=(v6 + 10, __str);
  *(v6 + 1) = 1033;
  CellularPlanDeliveryModel::startPurchasePlanReleaseWaitTimer(a1, v6, a3, 1);
  CellularPlanDeliveryModel::handleDumpState_sync(a1);
  CellularPlanDeliveryModel::notifyPlansUpdate(a1);
}

void CellularPlanDeliveryModel::appendPendingPlanForCarrierSignup(CellularPlanDeliveryModel *a1, std::string *__str, void *a3)
{
  v6 = *(a1 + 39);
  v7 = *(a1 + 40);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 455);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v6 + 55);
      }

      if (!v8 && (*(v6 + 17) & 1) != 0)
      {
        goto LABEL_11;
      }

      v6 += 80;
    }

    while (v6 != v7);
    v6 = v7;
  }

LABEL_11:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 == *(a1 + 40))
  {
    v9 = *(a1 + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I pending plan not found for signup plan", v10, 2u);
    }

    v6 = sub_1007BDB1C(a1 + 312, v6);
  }

  std::string::operator=(v6 + 10, __str);
  *(v6 + 17) = 1;
  *(v6 + 1225) = 1;
  *(v6 + 1) = 1033;
  if (*a3 != a3[1])
  {
    std::string::operator=(v6 + 1, (*a3 + 32));
    std::string::operator=(v6 + 2, (*a3 + 56));
    std::string::operator=(v6 + 3, (*a3 + 80));
    std::string::operator=(v6 + 4, (*a3 + 104));
  }

  CellularPlanDeliveryModel::maybeStartRecoveryDelayProvisioningMonitorMode(a1, v6);
  CellularPlanDeliveryModel::handleDumpState_sync(a1);
  CellularPlanDeliveryModel::notifyPlansUpdate(a1);
}

void CellularPlanDeliveryModel::getPendingTransferPlans(uint64_t a1, const void **a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = *(a1 + 312);
  v7 = *(a1 + 320);
  while (v6 != v7)
  {
    if (*(v6 + 9) == 1 && sub_10064A65C(*(v6 + 2)))
    {
      v8 = v12;
      if (v12 >= v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!*(v6 + 1160))
      {
        goto LABEL_12;
      }

      v8 = v12;
      if (v12 >= v13)
      {
LABEL_10:
        v9 = sub_1007CCB80(&v11, v6);
        goto LABEL_11;
      }
    }

    sub_10027B690(v12, v6);
    v9 = v8 + 1280;
LABEL_11:
    v12 = v9;
LABEL_12:
    v6 += 1280;
  }

  sub_100926044((a1 + 40), &v11, a2, &v10);
  sub_1000D8F90(a3, &v10, 0);
  sub_100010250(&v10);
  v14 = &v11;
  sub_10005C284(&v14);
}

void sub_1007BE8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_100010250(&a10);
  a14 = &a11;
  sub_10005C284(&a14);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::getPendingTransferPlansForTestability(uint64_t a1, const void **a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = *(a1 + 312);
  v7 = *(a1 + 320);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      if ((*(a1 + 256) == 1 || *v6 != 7) && (*(v6 + 12) != 1 || *(v6 + 2) == 4))
      {
        if (v8 >= v14)
        {
          v8 = sub_1007CCB80(&v12, v6);
        }

        else
        {
          sub_10027B690(v8, v6);
          v8 += 1280;
        }

        v13 = v8;
      }

      v6 += 1280;
    }

    while (v6 != v7);
  }

  sub_100926044((a1 + 40), &v12, a2, &v11);
  sub_1000D8F90(a3, &v11, 0);
  sub_100010250(&v11);
  v15 = &v12;
  sub_10005C284(&v15);
}

void sub_1007BEA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_100010250(&a10);
  a14 = &a11;
  sub_10005C284(&a14);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::getOnDeviceTransferredIccidList@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 312);
  for (i = *(this + 320); v2 != i; v2 += 1280)
  {
    if (*v2 == 7)
    {
      this = sub_100005308(a2, (v2 + 432));
    }
  }

  return this;
}

void sub_1007BEAC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::activatePendingTransferPlan(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = *(a1 + 312);
  v6 = *(a1 + 320);
  v8 = a2 + 23;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    v44 = *(a2 + 2);
  }

  v9 = HIBYTE(v44);
  if (v7 == v6)
  {
    v6 = v7;
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v44 >= 0)
    {
      v10 = HIBYTE(v44);
    }

    else
    {
      v10 = __p[1];
    }

    if (v44 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = v7 + 432;
    while (1)
    {
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v10 == v13)
      {
        v15 = v14 >= 0 ? v12 : *v12;
        if (!memcmp(v11, v15, v10))
        {
          break;
        }
      }

      v16 = v12 + 848;
      v12 += 1280;
      if (v16 == v6)
      {
        if (v9 < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }
    }

    v6 = v12 - 432;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  operator delete(__p[0]);
LABEL_21:
  if (v6 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }

    v41 = 0;
    v42 = 0;
    sub_1007BF334(a3, 0, &v42, &v41, 6);
    sub_10001021C(&v41);
    sub_100005978(&v42);
  }

  else
  {
    v17 = *(a1 + 304);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = *(a1 + 296);
        if (v19)
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = *a2;
            }

            v22 = sub_10064A0D0(*(v6 + 1));
            v23 = sub_10064A0D0(*(v6 + 2));
            *buf = 136315650;
            *v46 = v21;
            *&v46[8] = 2080;
            v47 = v22;
            v48 = 2080;
            v49 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Activating pending plan with sourceIccid: %s in terminal state: %s and display state: %s", buf, 0x20u);
          }

          if (*(v6 + 1) - 7 > 2)
          {
            v32 = (*(*v19 + 112))(v19);
            v25 = (*(*v19 + 120))(v19);
            v26 = (*(*v19 + 128))(v19);
            v27 = *(a1 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v46 = v32;
              *&v46[4] = 1024;
              *&v46[6] = v25;
              LOWORD(v47) = 1024;
              *(&v47 + 2) = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I iCloud signed in: [%d], boostrap enabled: [%d], Wifi active: [%d]", buf, 0x14u);
            }

            if ((v32 & (v25 ^ 1 | v26)) == 1)
            {
              *(v6 + 2) = 4;
              (*(*v19 + 48))(v19);
              v52 = a1;
              if (*v8 < 0)
              {
                sub_100005F2C(&v53, *a2, *(a2 + 1));
              }

              else
              {
                v53 = *a2;
                v54 = *(a2 + 2);
              }

              sub_1007CEC24(v55, a3);
              v55[7] = 0;
              operator new();
            }

            v28 = *(v6 + 1) - 5;
            v29 = *(a1 + 40);
            v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            if (v28 <= 1)
            {
              if (v30)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Attempting plan activation", buf, 2u);
              }

              *(v6 + 2) = 4;
              (*(*v19 + 48))(v19);
              bzero(buf, 0x500uLL);
              sub_10027B690(buf, v6);
              (*(**(a1 + 112) + 808))(v35);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(v50);
              }

              v50 = *v35;
              v51 = v36;
              (*(*v19 + 40))(v19, buf, 0, *(v6 + 1) == 9);
              v31 = *(a1 + 40);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v35 = 0;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Caching activate pending plan callback to show intro pane if (and after) activation fails", v35, 2u);
              }

              sub_1007BF3CC((a1 + 432), a3);
              sub_1002813D0(buf);
              goto LABEL_42;
            }

            if (v30)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Not attempting installation. Showing intro pane to the user", buf, 2u);
            }

            v33 = 0;
            v34 = 0;
            sub_1007BF334(a3, 0, &v34, &v33, 49);
            sub_10001021C(&v33);
            v24 = &v34;
          }

          else
          {
            *(v6 + 2) = 4;
            (*(*v19 + 48))(v19);
            (*(*v19 + 40))(v19, v6, 0, *(v6 + 1) == 9);
            v37 = 0;
            v38 = 0;
            sub_1007BF334(a3, 1, &v38, &v37, 0);
            sub_10001021C(&v37);
            v24 = &v38;
          }

          sub_100005978(v24);
LABEL_42:
          sub_100004A34(v18);
          return;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    v39 = 0;
    v40 = 0;
    sub_1007BF334(a3, 0, &v40, &v39, 4);
    sub_10001021C(&v39);
    sub_100005978(&v40);
    if (v18)
    {
      goto LABEL_42;
    }
  }
}

void sub_1007BF248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  operator delete(v46);
  sub_1007BF390(v47 - 200);
  sub_100004A34(v45);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BF334(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  return (*(*v5 + 48))(v5, &v8, a3, a4, &v7);
}

uint64_t sub_1007BF390(uint64_t a1)
{
  sub_100643184(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1007BF3CC(void *a1, uint64_t a2)
{
  sub_1007CEC24(v4, a2);
  sub_1007CF130(v4, a1);
  sub_100643184(v4);
  return a1;
}

void CellularPlanDeliveryModel::cancelPendingTransferPlan(uint64_t a1, uint64_t a2)
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
    v17 = *(a2 + 16);
  }

  v5 = HIBYTE(v17);
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
    if (v17 >= 0)
    {
      v6 = HIBYTE(v17);
    }

    else
    {
      v6 = __p[1];
    }

    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 432;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }
  }

  else
  {
    v13 = *(a1 + 304);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(a1 + 296);
        if (v15)
        {
          CellularPlanDeliveryModel::updatePlanStates_sync(a1, v3, *(v3 + 1));
          (*(*v15 + 48))(v15);
          (*(*v15 + 32))(v15, v3);
LABEL_35:
          sub_100004A34(v14);
          return;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    if (v14)
    {
      goto LABEL_35;
    }
  }
}

void CellularPlanDeliveryModel::updatePendingTransferPlanState(uint64_t a1, __int128 *a2, unsigned __int8 a3, uint64_t a4)
{
  v81 = a3;
  __dst[0] = 0;
  __dst[1] = 0;
  v80 = 0;
  if (*(a2 + 23) < 0)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      sub_100005F2C(__dst, *a2, v7);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    *__dst = *a2;
    v80 = *(a2 + 2);
    goto LABEL_7;
  }

  sub_1007C005C(a4, "", __dst);
LABEL_7:
  v8 = *(a1 + 312);
  v9 = *(a1 + 320);
  v72 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v73, *a2, *(a2 + 1));
  }

  else
  {
    v73 = *a2;
    v74 = *(a2 + 2);
  }

  sub_10006F264(&__p, a4);
  if (v8 != v9)
  {
    while (1)
    {
      if (v74 >= 0)
      {
        v10 = HIBYTE(v74);
      }

      else
      {
        v10 = *(&v73 + 1);
      }

      v11 = *(v8 + 455);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 440);
      }

      if (v10 == v11)
      {
        v13 = v74 >= 0 ? &v73 : v73;
        v14 = v12 >= 0 ? (v8 + 432) : *(v8 + 432);
        if (!memcmp(v13, v14, v10) && (v10 || (*(v8 + 1225) & 1) != 0))
        {
          goto LABEL_75;
        }
      }

      if (v78 == 1)
      {
        v15 = (v77 & 0x80u) == 0 ? v77 : v76;
        if (v15 && *(v72 + 472) == 1)
        {
          break;
        }
      }

LABEL_73:
      v8 += 1280;
      if (v8 == v9)
      {
        v8 = v9;
        goto LABEL_75;
      }
    }

    v16 = *(v8 + 479);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v8 + 464);
    }

    if (v16 == v15)
    {
      v18 = v17 >= 0 ? (v8 + 456) : *(v8 + 456);
      v19 = (v77 & 0x80u) == 0 ? &__p : __p;
      if (!memcmp(v18, v19, v15))
      {
        goto LABEL_75;
      }
    }

    sub_10092CDF4(&__p, buf);
    v20 = (v8 + 480);
    v21 = buf[23];
    if (buf[23] >= 0)
    {
      v22 = buf[23];
    }

    else
    {
      v22 = *&buf[8];
    }

    v23 = *(v8 + 503);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v8 + 488);
    }

    if (v22 == v23)
    {
      if (buf[23] >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      if (v24 >= 0)
      {
        v26 = (v8 + 480);
      }

      else
      {
        v26 = *v20;
      }

      v27 = memcmp(v25, v26, v22) == 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v27 = 0;
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_58:
        if (v27)
        {
          goto LABEL_75;
        }

        if ((v78 & 1) == 0)
        {
          sub_1000D1644();
        }

        if ((v77 & 0x80u) == 0)
        {
          v28 = v77;
        }

        else
        {
          v28 = v76;
        }

        v29 = *(v8 + 503);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v8 + 488);
        }

        if (v28 == v29)
        {
          v31 = (v77 & 0x80u) == 0 ? &__p : __p;
          v32 = v30 >= 0 ? (v8 + 480) : *v20;
          if (!memcmp(v31, v32, v28))
          {
            goto LABEL_75;
          }
        }

        goto LABEL_73;
      }
    }

    operator delete(*buf);
    goto LABEL_58;
  }

LABEL_75:
  if (v78 == 1 && v77 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (v8 != *(a1 + 320))
  {
    if (*(a4 + 24) != 1)
    {
      goto LABEL_144;
    }

    v33 = *(v8 + 503);
    if (v33 >= 0)
    {
      v34 = *(v8 + 503);
    }

    else
    {
      v34 = *(v8 + 488);
    }

    v35 = *(a4 + 23);
    if (v35 >= 0)
    {
      v36 = *(a4 + 23);
    }

    else
    {
      v36 = *(a4 + 8);
    }

    if (v34 == v36)
    {
      v37 = v33 >= 0 ? (v8 + 480) : *(v8 + 480);
      v38 = v35 >= 0 ? a4 : *a4;
      if (!memcmp(v37, v38, v34))
      {
        v41 = 1;
        goto LABEL_145;
      }
    }

    if (!v36)
    {
LABEL_144:
      v41 = 0;
LABEL_145:
      CellularPlanDeliveryModel::updatePlanStates_sync(a1, v8, v81);
      if (v81 == 9)
      {
        *(v8 + 19) = 1;
      }

      v56 = *(a1 + 40);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        if (v80 >= 0)
        {
          v57 = __dst;
        }

        else
        {
          v57 = __dst[0];
        }

        v58 = sub_10064A0D0(*(v8 + 1));
        v59 = sub_10064A0D0(*(v8 + 2));
        *buf = 136315650;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = v58;
        *&buf[22] = 2080;
        v83 = v59;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I updated state of plan (%s) to %s, display state: %s", buf, 0x20u);
      }

      v60 = *(a1 + 176);
      if (v60)
      {
        if (v41)
        {
          sub_1007C005C(a4, "", buf);
          (*(*v60 + 40))(v60, a2, buf, &v81);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          (*(*v60 + 40))(*(a1 + 176), a2, v8 + 456, &v81);
        }
      }

      if (*(v8 + 1112) == 1)
      {
        v61 = v81;
        if (v81 == 5)
        {
          if (*(v8 + 1056) == 0.0)
          {
            *(v8 + 1056) = CFAbsoluteTimeGetCurrent();
          }
        }

        else if ((v81 & 0xFE) == 6)
        {
          if (*(v8 + 1064) == 0.0)
          {
            *(v8 + 1064) = CFAbsoluteTimeGetCurrent();
            v61 = v81;
          }

          if (v61 == 6)
          {
            *(v8 + 1019) = 2;
            if (*(v8 + 1104) == 0.0)
            {
              *(v8 + 1104) = CFAbsoluteTimeGetCurrent();
            }
          }
        }

        else
        {
          switch(v81)
          {
            case 0xCu:
              if (*(v8 + 1088) == 0.0)
              {
                *(v8 + 1088) = CFAbsoluteTimeGetCurrent();
              }

              break;
            case 0xAu:
              if (*(v8 + 1080) == 0.0)
              {
                *(v8 + 1080) = CFAbsoluteTimeGetCurrent();
              }

              break;
            case 9u:
              if (*(v8 + 1056) > 0.0 && *(v8 + 1064) == 0.0)
              {
                *(v8 + 1064) = CFAbsoluteTimeGetCurrent();
              }

              if (*(v8 + 1072) == 0.0)
              {
                *(v8 + 1072) = CFAbsoluteTimeGetCurrent();
              }

              *(v8 + 1018) = 1;
              break;
          }
        }
      }

      CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(a1, v8);
      if (v81 == 11)
      {
        CellularPlanDeliveryModel::clearTransferringStatus_sync(a1, v8 + 432);
      }

      v62 = *(a1 + 160);
      if (v62)
      {
        v63 = *(a1 + 40);
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        v65 = v81;
        if (v64)
        {
          v66 = SHIBYTE(v80);
          v67 = __dst[0];
          v68 = sub_10064A0D0(v81);
          v69 = __dst;
          if (v66 < 0)
          {
            v69 = v67;
          }

          *buf = 136315394;
          *&buf[4] = v69;
          *&buf[12] = 2080;
          *&buf[14] = v68;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I send transfer status update %s -> %s", buf, 0x16u);
          v62 = *(a1 + 160);
          v65 = v81;
        }

        (*(*v62 + 56))(v62, a2, v65);
      }

      CellularPlanDeliveryModel::notifyPlansUpdate(a1);
    }

    v39 = (*(**(a1 + 112) + 1064))(*(a1 + 112), v8 + 24, v8 + 48, v8 + 72, v8 + 96, v8 + 432);
    memset(&__str, 0, sizeof(__str));
    v40 = *(a4 + 23);
    if (v39)
    {
      if (v40 < 0)
      {
        sub_100005F2C(&v70, *a4, *(a4 + 8));
      }

      else
      {
        v70 = *a4;
      }

      sub_1009227E0(&v70, &__str);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }
    }

    else if (v40 < 0)
    {
      sub_100005F2C(&__str, *a4, *(a4 + 8));
    }

    else
    {
      __str = *a4;
    }

    v42 = (v8 + 456);
    v43 = *(v8 + 479);
    if (v43 < 0)
    {
      if (!*(v8 + 464))
      {
        goto LABEL_134;
      }
    }

    else if (!*(v8 + 479))
    {
      goto LABEL_134;
    }

    if (v43 >= 0)
    {
      v44 = *(v8 + 479);
    }

    else
    {
      v44 = *(v8 + 464);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v46 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v44 != size || (v43 >= 0 ? (v47 = (v8 + 456)) : (v47 = *v42), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v48 = &__str) : (v48 = __str.__r_.__value_.__r.__words[0]), memcmp(v47, v48, v44)))
    {
      v49 = *(a1 + 40);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        v50 = __dst;
        if (v80 < 0)
        {
          v50 = __dst[0];
        }

        v51 = (v8 + 456);
        if ((v43 & 0x80000000) != 0)
        {
          v51 = *v42;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
        if (v46 >= 0)
        {
          p_str = &__str;
        }

        *buf = 136315650;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = v51;
        *&buf[22] = 2080;
        v83 = p_str;
        _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "update target iccid for pending plan (%s) %s -> %s", buf, 0x20u);
      }

      goto LABEL_140;
    }

LABEL_134:
    v53 = *(a1 + 40);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = __dst;
      if (v80 < 0)
      {
        v54 = __dst[0];
      }

      v55 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v54;
      *&buf[12] = 2080;
      *&buf[14] = v55;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I update target ICCID for pending plan (%s) to (%s)", buf, 0x16u);
    }

LABEL_140:
    std::string::operator=((v8 + 456), &__str);
    sub_10092CDF4(v8 + 456, buf);
    if (*(v8 + 503) < 0)
    {
      operator delete(*(v8 + 480));
    }

    *(v8 + 480) = *buf;
    *(v8 + 496) = *&buf[16];
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_144;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EC8C();
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1007BFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1007C005C@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if (result[24] != 1)
  {
    return sub_10000501C(a3, a2);
  }

  if (result[23] < 0)
  {
    return sub_100005F2C(a3, *result, *(result + 1));
  }

  *a3 = *result;
  *(a3 + 16) = *(result + 2);
  return result;
}

uint64_t sub_1007C0098(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void CellularPlanDeliveryModel::clearTransferringStatus_sync(CellularPlanDeliveryModel *this, uint64_t a2)
{
  v4 = *(this + 39);
  v3 = *(this + 40);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  v5 = HIBYTE(v17);
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
    if (v17 >= 0)
    {
      v6 = HIBYTE(v17);
    }

    else
    {
      v6 = __p[1];
    }

    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 432;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  v13 = *(this + 40);
  if (v3 == v13)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }
  }

  else
  {
    *(v3 + 10) = 0;
    if ((*(this + 472) & 1) == 0)
    {
      v14 = *(this + 39);
      if (v14 == v13)
      {
        goto LABEL_30;
      }

      do
      {
        v15 = *(v14 + 10);
        if (v15)
        {
          break;
        }

        v14 += 1280;
      }

      while (v14 != v13);
      if ((v15 & 1) == 0)
      {
LABEL_30:
        CellularPlanDeliveryModel::sessionInvalidated(this);
      }
    }
  }
}

void CellularPlanDeliveryModel::getCrossPlatformPendingTransferPlans(CellularPlanDeliveryModel *this@<X0>, const void **a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  sub_10000501C(__p, "");
  v4 = (*(*this + 64))(this);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10005A388(&v13, *v4, v4[1], 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 8));
  v5 = v13;
  v6 = v14;
  while (v5 != v6)
  {
    v7 = sub_10064A7C0(v5);
    if (*(v5 + 1) == 12)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v8 == 1)
    {
      v9 = v19;
      if (v19 >= v20)
      {
        v10 = sub_1007CCB80(&v18, v5);
      }

      else
      {
        sub_10027B690(v19, v5);
        v10 = v9 + 1280;
      }

      v19 = v10;
      (*(**(this + 14) + 832))(&v11);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v11;
      v17 = v12;
      break;
    }

    v5 += 1280;
  }

  sub_1009326B0(&v18, __p, a2);
  *&v11 = &v13;
  sub_10005C284(&v11);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = &v18;
  sub_10005C284(__p);
}

void sub_1007C040C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  a9 = &a12;
  sub_10005C284(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = (v20 - 56);
  sub_10005C284(&__p);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::updatePendingTransferPlanInfo(CellularPlanDeliveryModel *this, uint64_t a2, __int128 **a3)
{
  v7 = *(this + 39);
  v6 = *(this + 40);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v66 = *(a2 + 16);
  }

  v8 = HIBYTE(v66);
  if (v7 == v6)
  {
    v6 = v7;
LABEL_22:
    if (v8 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v66 >= 0)
    {
      v9 = HIBYTE(v66);
    }

    else
    {
      v9 = __p[1];
    }

    if (v66 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = v7 + 432;
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

      v15 = v11 + 848;
      v11 += 1280;
      if (v15 == v6)
      {
        goto LABEL_22;
      }
    }

    v6 = v11 - 432;
    if (v8 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v6 != *(this + 40))
  {
    v16 = *a3;
    v17 = a3[1];
    if (*a3 == v17)
    {
LABEL_258:
      CellularPlanDeliveryModel::notifyPlansUpdate(this);
    }

    v18 = (v6 + 360);
    v19 = (v6 + 504);
    while (1)
    {
      v82 = 0;
      memset(__dst, 0, sizeof(__dst));
      sub_100176498(__dst, v16);
      memset(__s1, 0, 24);
      if (SBYTE7(__dst[1]) < 0)
      {
        sub_100005F2C(__s1, *&__dst[0], *(&__dst[0] + 1));
      }

      else
      {
        *__s1 = __dst[0];
        __s1[2] = *&__dst[1];
      }

      memset(v80, 0, sizeof(v80));
      if (*(&__dst[1] + 1))
      {
        (*(&__dst[1] + 1))(1, &__dst[1] + 8, v80, 0, 0);
      }

      v20 = *(this + 5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        v22 = __s1;
        if (SHIBYTE(__s1[2]) < 0)
        {
          v22 = __s1[0];
        }

        *buf = 136315394;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I update info of pending plan (%s) to %s", buf, 0x16u);
      }

      if (SHIBYTE(__s1[2]) < 0)
      {
        if (__s1[1] != 11)
        {
          goto LABEL_48;
        }

        v23 = __s1[0];
      }

      else
      {
        if (HIBYTE(__s1[2]) != 11)
        {
          v32 = __s1;
          if (HIBYTE(__s1[2]) <= 0x12u)
          {
            if (HIBYTE(__s1[2]) == 4)
            {
              goto LABEL_119;
            }

            if (HIBYTE(__s1[2]) != 13)
            {
              goto LABEL_204;
            }

LABEL_77:
            if (__s1[0] == 0x726566736E617254 && *(__s1 + 5) == 0x6E656B6F54726566)
            {
              goto LABEL_82;
            }

            goto LABEL_204;
          }

          if (HIBYTE(__s1[2]) != 19)
          {
            if (HIBYTE(__s1[2]) == 20)
            {
              v39 = __s1[0] == 0x4D726F74696E6F4DLL && __s1[1] == 0x747261745365646FLL;
              if (v39 && LODWORD(__s1[2]) == 1701669204)
              {
LABEL_138:
                if ((*(v6 + 1152) & 1) == 0)
                {
                  *(v6 + 1120) = 0u;
                  *(v6 + 1136) = 0u;
                  *(v6 + 1152) = 1;
                }

                v43 = sub_1007CF4B8(v80);
                if (!v43)
                {
LABEL_255:
                  sub_1007CF3E8();
                }

                *(v6 + 1144) = *v43;
                goto LABEL_231;
              }
            }

            goto LABEL_204;
          }

          v27 = __s1[1];
          goto LABEL_143;
        }

        v23 = __s1;
      }

      v24 = *v23;
      v25 = *(v23 + 3);
      if (v24 == 0x4670646D53746C41 && v25 == 0x6E64714670646D53)
      {
        v37 = sub_1007CF39C(v80);
        if (!v37)
        {
          sub_1007CF3E8();
        }

        if (*(v37 + 23) < 0)
        {
          sub_100005F2C(buf, *v37, v37[1]);
        }

        else
        {
          v38 = *v37;
          *&buf[16] = v37[2];
          *buf = v38;
        }

        if (*(v6 + 527) < 0)
        {
          operator delete(*v19);
        }

        *v19 = *buf;
        *(v6 + 520) = *&buf[16];
        goto LABEL_231;
      }

LABEL_48:
      v27 = __s1[1];
      if ((HIBYTE(__s1[2]) & 0x80) != 0 && __s1[1] == 26)
      {
        if (*__s1[0] == 0x726566736E617254 && *(__s1[0] + 1) == 0x69767265536D6953 && *(__s1[0] + 2) == 0x6E6F707365526563 && *(__s1[0] + 12) == 25971)
        {
          v31 = sub_1007CF420(v80);
          if (!v31)
          {
            sub_1007CF3E8();
          }

          sub_100282340(buf, v31);
          sub_1007C1318((v6 + 528), buf);
          if (v78 < 0)
          {
            operator delete(v76);
          }

          if (v75 == 1 && SHIBYTE(v74) < 0)
          {
            operator delete(*(&v73 + 1));
          }

          if (v73 == 1 && SHIBYTE(v72) < 0)
          {
            operator delete(*(&v71 + 1));
          }

          if (v71 == 1 && SHIBYTE(v70) < 0)
          {
            operator delete(v69);
          }

          v67.__vftable = buf;
          sub_10016C644(&v67);
          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if ((HIBYTE(__s1[2]) & 0x80) != 0 && __s1[1] == 39)
      {
        if (!memcmp(__s1[0], "TransferSimServiceViaWebServiceResponse", 0x27uLL))
        {
          v36 = sub_1007CF46C(v80);
          if (!v36)
          {
            sub_1007CF3E8();
          }

          sub_1002852A0(buf, v36);
          sub_1007C1354(v6 + 688, buf);
          if (v79 < 0)
          {
            operator delete(v77);
          }

          if (SHIBYTE(v76) < 0)
          {
            operator delete(v75);
          }

          if (v74 == 1 && SHIBYTE(v73) < 0)
          {
            operator delete(*(&v72 + 1));
          }

          if (v72 == 1 && SHIBYTE(v71) < 0)
          {
            operator delete(*(&v70 + 1));
          }

          if (v70 == 1 && SHIBYTE(v69) < 0)
          {
            operator delete(*&buf[8]);
          }

          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if ((HIBYTE(__s1[2]) & 0x80) == 0)
      {
        if (HIBYTE(__s1[2]) != 4)
        {
          goto LABEL_204;
        }

LABEL_118:
        v32 = __s1;
LABEL_119:
        if (*v32 == 1769172297)
        {
          sub_1007C12B0(v80, buf);
          if (*(v6 + 407) < 0)
          {
            operator delete(*(v6 + 384));
          }

          *(v6 + 384) = *buf;
          *(v6 + 400) = *&buf[16];
          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if (__s1[1] == 19)
      {
        v32 = __s1[0];
LABEL_143:
        v44 = *v32;
        v45 = v32[1];
        v46 = *(v32 + 11);
        if (v44 == 0x4D726F74696E6F4DLL && v45 == 0x6C706D6F4365646FLL && v46 == 0x6574656C706D6F43)
        {
          v53 = sub_1007CF504(v80);
          if (!v53)
          {
            goto LABEL_255;
          }

          v54 = *v53;
          *(v6 + 13) = v54;
          if (v54 == 1)
          {
            CellularPlanDeliveryModel::maybeSubmitTransferSimTimestamps_sync(this, v6);
          }

          goto LABEL_231;
        }

        goto LABEL_150;
      }

      if (__s1[1] == 20)
      {
        if (*__s1[0] == 0x4D726F74696E6F4DLL && *(__s1[0] + 1) == 0x747261745365646FLL && *(__s1[0] + 4) == 1701669204)
        {
          goto LABEL_138;
        }

        v27 = 20;
        goto LABEL_170;
      }

LABEL_150:
      if ((HIBYTE(__s1[2]) & 0x80) != 0 && v27 == 23)
      {
        if (*__s1[0] == 0x7465656873626557 && *(__s1[0] + 1) == 0x6465726975716552 && *(__s1[0] + 15) == 0x79646475626E4964)
        {
          v51 = sub_1007CF504(v80);
          if (!v51)
          {
            goto LABEL_255;
          }

          *(v6 + 14) = *v51;
          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if ((HIBYTE(__s1[2]) & 0x80) != 0 && v27 == 50)
      {
        if (!memcmp(__s1[0], "IsTransferUsingRecoveryWithoutExplicitIccidMapping", 0x32uLL))
        {
          v52 = sub_1007CF504(v80);
          if (!v52)
          {
            goto LABEL_255;
          }

          *(v6 + 1225) = *v52;
          goto LABEL_231;
        }

        goto LABEL_204;
      }

LABEL_170:
      if ((HIBYTE(__s1[2]) & 0x80) == 0)
      {
        if (HIBYTE(__s1[2]) == 4)
        {
          goto LABEL_118;
        }

        if (HIBYTE(__s1[2]) != 13)
        {
          if (HIBYTE(__s1[2]) == 19)
          {
            v55 = __s1[0] == 0x656372756F537349 && __s1[1] == 0x656C65446E616C50;
            if (v55 && *(&__s1[1] + 3) == 0x646574656C65446ELL)
            {
              goto LABEL_194;
            }
          }

          goto LABEL_204;
        }

        goto LABEL_77;
      }

      switch(v27)
      {
        case 4:
          v32 = __s1[0];
          goto LABEL_119;
        case 13:
          if (*__s1[0] == 0x726566736E617254 && *(__s1[0] + 5) == 0x6E656B6F54726566)
          {
LABEL_82:
            v34 = sub_1007CF39C(v80);
            if (!v34)
            {
              sub_1007CF3E8();
            }

            if (*(v34 + 23) < 0)
            {
              sub_100005F2C(buf, *v34, v34[1]);
            }

            else
            {
              v35 = *v34;
              *&buf[16] = v34[2];
              *buf = v35;
            }

            if (*(v6 + 335) < 0)
            {
              operator delete(*(v6 + 312));
            }

            v60 = *buf;
            v61 = v6 + 312;
LABEL_230:
            *v61 = v60;
            *(v61 + 16) = *&buf[16];
            goto LABEL_231;
          }

          break;
        case 19:
          v57 = *__s1[0] == 0x656372756F537349 && *(__s1[0] + 1) == 0x656C65446E616C50;
          if (v57 && *(__s1[0] + 11) == 0x646574656C65446ELL)
          {
LABEL_194:
            v59 = sub_1007CF504(v80);
            if (!v59)
            {
              goto LABEL_255;
            }

            *(v6 + 16) = *v59;
            goto LABEL_231;
          }

          break;
      }

LABEL_204:
      if (sub_100318068(__s1, "CarrierTransferData"))
      {
        sub_1007C12B0(v80, buf);
        if (*(v6 + 383) < 0)
        {
          operator delete(*v18);
        }

        *v18 = *buf;
        *(v6 + 376) = *&buf[16];
        goto LABEL_231;
      }

      if (sub_100318068(__s1, "TransferTokenExpiration"))
      {
        sub_1007C12B0(v80, buf);
        if (*(v6 + 359) < 0)
        {
          operator delete(*(v6 + 336));
        }

        *(v6 + 336) = *buf;
        *(v6 + 352) = *&buf[16];
        goto LABEL_231;
      }

      if (sub_100318068(__s1, "SourceImei"))
      {
        sub_1007C12B0(v80, buf);
        if (*(v6 + 215) < 0)
        {
          operator delete(*(v6 + 192));
        }

        *(v6 + 192) = *buf;
        *(v6 + 208) = *&buf[16];
        goto LABEL_231;
      }

      if (!sub_100318068(__s1, "SourceCsn"))
      {
        if (sub_100318068(__s1, "SourceDeviceType"))
        {
          sub_1007C12B0(v80, buf);
          if (*(v6 + 959) < 0)
          {
            operator delete(*(v6 + 936));
          }

          v60 = *buf;
          v61 = v6 + 936;
        }

        else if (sub_100318068(__s1, "SourceDisplayName"))
        {
          sub_1007C12B0(v80, buf);
          if (*(v6 + 983) < 0)
          {
            operator delete(*(v6 + 960));
          }

          v60 = *buf;
          v61 = v6 + 960;
        }

        else
        {
          if (!sub_100318068(__s1, "PhoneNumber"))
          {
            if (sub_100318068(__s1, "TransferType"))
            {
              *v6 = sub_1007C1558(v80);
            }

            else if (sub_100318068(__s1, "TransferAuthRequestTime"))
            {
              if (*(v6 + 263) < 0)
              {
                sub_100005F2C(buf, *(v6 + 240), *(v6 + 248));
              }

              else
              {
                *buf = *(v6 + 240);
                *&buf[16] = *(v6 + 256);
              }

              LOBYTE(v69) = *(v6 + 8);
              *(&v69 + 1) = 0;
              BYTE3(v69) = 3;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75 = 0;
              sub_1007C157C(v6 + 992, buf);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              *(v6 + 1024) = CFAbsoluteTimeGetCurrent();
            }

            else if (sub_100318068(__s1, "TransferAuthResponseTime"))
            {
              *(v6 + 1032) = CFAbsoluteTimeGetCurrent();
            }

            else if (sub_100318068(__s1, "TransferAuthWebServRequestTime"))
            {
              *(v6 + 1040) = CFAbsoluteTimeGetCurrent();
            }

            else if (sub_100318068(__s1, "TransferAuthWebServResponseTime"))
            {
              *(v6 + 1048) = CFAbsoluteTimeGetCurrent();
            }

            goto LABEL_231;
          }

          sub_1007C12B0(v80, buf);
          if (*(v6 + 287) < 0)
          {
            operator delete(*(v6 + 264));
          }

          v60 = *buf;
          v61 = v6 + 264;
        }

        goto LABEL_230;
      }

      *(v6 + 914) = sub_1007C1530(v80);
      *(v6 + 922) = v63;
LABEL_231:
      sub_100176638(v80);
      if (SHIBYTE(__s1[2]) < 0)
      {
        operator delete(__s1[0]);
      }

      sub_100176638(&__dst[1] + 1);
      if (SBYTE7(__dst[1]) < 0)
      {
        operator delete(*&__dst[0]);
      }

      v16 = (v16 + 56);
      if (v16 == v17)
      {
        goto LABEL_258;
      }
    }
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177EC24();
  }
}

void **sub_1007C12B0@<X0>(uint64_t (**a1)(uint64_t, void, void, _UNKNOWN **, void *)@<X0>, uint64_t a2@<X8>)
{
  result = sub_1007CF39C(a1);
  if (!result)
  {
    sub_1007CF3E8();
  }

  if (*(result + 23) < 0)
  {
    v5 = *result;
    v6 = result[1];

    return sub_100005F2C(a2, v5, v6);
  }

  else
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
  }

  return result;
}

__n128 *sub_1007C1318(__n128 *a1, uint64_t a2)
{
  if (a1[9].n128_u8[8] == 1)
  {
    sub_10016D5E4(a1, a2);
  }

  else
  {
    sub_10016D688(a1, a2);
  }

  return a1;
}

uint64_t sub_1007C1354(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == 1)
  {
    sub_10016D8AC(a1, a2);
  }

  else
  {
    sub_10016D95C(a1, a2);
  }

  return a1;
}

void CellularPlanDeliveryModel::maybeSubmitTransferSimTimestamps_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 479);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 464);
  }

  if (v4)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 503);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 488);
  }

  if (v5)
  {
LABEL_7:
    if (*(a2 + 1112) == 1)
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
            v9 = *(a1 + 40);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *v11 = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I submitting commCenterCellularPlanTransferDurations awd metric", v11, 2u);
            }

            *(a2 + 1096) = CFAbsoluteTimeGetCurrent();
            (*(*v8 + 72))(v8, a2 + 992);
            v10 = *(a1 + 344);
            *(a1 + 344) = 0;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            if (*(a2 + 1112) == 1)
            {
              if (*(a2 + 1015) < 0)
              {
                operator delete(*(a2 + 992));
              }

              *(a2 + 1112) = 0;
            }

LABEL_23:
            sub_100004A34(v7);
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
      }

      if (v7)
      {
        goto LABEL_23;
      }
    }
  }
}

uint64_t sub_1007C1530(uint64_t (**a1)(uint64_t, void, void, _UNKNOWN **, void *))
{
  v1 = sub_1007CF550(a1);
  if (!v1)
  {
    sub_1007CF3E8();
  }

  return *v1;
}

uint64_t sub_1007C1558(uint64_t (**a1)(uint64_t, void, void, _UNKNOWN **, void *))
{
  v1 = sub_1007CF59C(a1);
  if (!v1)
  {
    sub_1007CF3E8();
  }

  return *v1;
}

uint64_t sub_1007C157C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    v5 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v5;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
  }

  else
  {
    v9 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v9;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    v11 = *(a2 + 56);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v13;
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 120) = 1;
  }

  return a1;
}

void CellularPlanDeliveryModel::resetPendingTransferPlanInfo(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v7 = *(a1 + 312);
  v6 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  v8 = HIBYTE(v28);
  if (v7 == v6)
  {
    v6 = v7;
LABEL_22:
    if (v8 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v28 >= 0)
    {
      v9 = HIBYTE(v28);
    }

    else
    {
      v9 = __p[1];
    }

    if (v28 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = v7 + 432;
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

      v15 = v11 + 848;
      v11 += 1280;
      if (v15 == v6)
      {
        goto LABEL_22;
      }
    }

    v6 = v11 - 432;
    if (v8 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v6 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }
  }

  else
  {
    v16 = *a3;
    v17 = a3[1];
    if (*a3 != v17)
    {
      do
      {
        __s1[1] = 0;
        v26 = 0;
        __s1[0] = 0;
        if (*(v16 + 23) < 0)
        {
          sub_100005F2C(__s1, *v16, *(v16 + 1));
        }

        else
        {
          v18 = *v16;
          v26 = *(v16 + 2);
          *__s1 = v18;
        }

        v19 = *(a1 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = __s1;
          if (v26 < 0)
          {
            v20 = __s1[0];
          }

          if (*(a2 + 23) >= 0)
          {
            v21 = a2;
          }

          else
          {
            v21 = *a2;
          }

          *buf = 136315394;
          v30 = v20;
          v31 = 2080;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I resetting info (%s) of pending plan with source iccid:(%s)", buf, 0x16u);
        }

        if (SHIBYTE(v26) < 0 && __s1[1] == 26)
        {
          if (*__s1[0] == 0x726566736E617254 && *(__s1[0] + 1) == 0x69767265536D6953 && *(__s1[0] + 2) == 0x6E6F707365526563 && *(__s1[0] + 12) == 25971)
          {
            sub_1007C194C(v6 + 528);
          }
        }

        else if (SHIBYTE(v26) < 0 && __s1[1] == 39 && !memcmp(__s1[0], "TransferSimServiceViaWebServiceResponse", 0x27uLL))
        {
          sub_1007C19F8(v6 + 688);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__s1[0]);
        }

        v16 = (v16 + 24);
      }

      while (v16 != v17);
    }
  }
}

void sub_1007C194C(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v4[0] = a1;
    sub_10016C644(v4);
    *(a1 + 152) = 0;
  }
}

void sub_1007C19F8(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 160) = 0;
  }
}

uint64_t CellularPlanDeliveryModel::deletePendingTransferPlan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 312);
  v6 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v22 = *(a2 + 16);
  }

  v8 = HIBYTE(v22);
  if (v7 == v6)
  {
    v6 = v7;
LABEL_22:
    if (v8 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v22 >= 0)
    {
      v9 = HIBYTE(v22);
    }

    else
    {
      v9 = __p[1];
    }

    if (v22 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = v7 + 432;
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

      v15 = v11 + 848;
      v11 += 1280;
      if (v15 == v6)
      {
        goto LABEL_22;
      }
    }

    v6 = v11 - 432;
    if (v8 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v6 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177ED98();
    }

    return sub_100186828(a3, 6);
  }

  else
  {
    v16 = sub_10064A674(v6);
    v17 = *(a1 + 40);
    if (!v16)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I deleting pending transfer plan (%s)", buf, 0xCu);
      }

      v20 = *(a1 + 320);
      if (v6 + 1280 != v20)
      {
        do
        {
          sub_1007CC0DC(v6, (v6 + 1280));
          v6 += 1280;
        }

        while (v6 + 1280 != v20);
        v20 = *(a1 + 320);
      }

      while (v20 != v6)
      {
        v20 -= 1280;
        sub_1002813D0(v20);
      }

      *(a1 + 320) = v6;
      sub_100186828(a3, 0);
      CellularPlanDeliveryModel::notifyPlansUpdate(a1);
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177ED30();
    }

    return sub_100186828(a3, 4);
  }
}

void sub_1007C1E1C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::deletePendingTransferPlan(void *a1, uint64_t a2)
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  sub_10092CDF4(a2, v24);
  v4 = a1[39];
  v5 = a1[40];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v20, *a2, *(a2 + 8));
  }

  else
  {
    *v20 = *a2;
    v21 = *(a2 + 16);
  }

  p_p = &__p;
  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(&__p, v24[0], v24[1]);
  }

  else
  {
    __p = *v24;
    v23 = v25;
  }

  v7 = HIBYTE(v23);
  if (v4 != v5)
  {
    if (v23 >= 0)
    {
      v8 = HIBYTE(v23);
    }

    else
    {
      v8 = *(&__p + 1);
    }

    if (v23 < 0)
    {
      p_p = __p;
    }

    if (v21 >= 0)
    {
      v9 = HIBYTE(v21);
    }

    else
    {
      v9 = v20[1];
    }

    if (v21 >= 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = v20[0];
    }

    while (1)
    {
      v11 = *(v4 + 503);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v4 + 488);
      }

      if (v8 == v11)
      {
        v13 = v12 >= 0 ? (v4 + 480) : *(v4 + 480);
        if (!memcmp(p_p, v13, v8))
        {
          break;
        }
      }

      v14 = *(v4 + 479);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v4 + 464);
      }

      if (v9 == v14)
      {
        v16 = v15 >= 0 ? (v4 + 456) : *(v4 + 456);
        if (!memcmp(v10, v16, v9))
        {
          break;
        }
      }

      v4 += 1280;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  v17 = a1[40];
  if (v4 != v17 && (*(v4 + 9) & 1) == 0)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      *buf = 136315138;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I deleting transfer plan (%s)", buf, 0xCu);
      v17 = a1[40];
    }

    if (v4 + 1280 != v17)
    {
      do
      {
        sub_1007CC0DC(v4, (v4 + 1280));
        v4 += 1280;
      }

      while (v4 + 1280 != v17);
      v17 = a1[40];
    }

    while (v17 != v4)
    {
      v17 -= 1280;
      sub_1002813D0(v17);
    }

    a1[40] = v4;
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_1007C20E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::maybeDeleteCrossPlatformPendingTransferPlan_sync(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 312);
  v7 = *(a1 + 320);
  if (v6 != v7)
  {
    while ((sub_10064A7C0(v6) & 1) == 0)
    {
      v6 += 1280;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(a1 + 320);
  }

  if (v6 == v7)
  {
    return;
  }

  if (a3)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I force deleting cross platform transfer plan", __p, 2u);
      v7 = *(a1 + 320);
    }

    if (v6 + 1280 != v7)
    {
      do
      {
        v9 = v6 + 1280;
        sub_1007CC0DC(v6, (v6 + 1280));
        v10 = v6 + 2560;
        v6 += 1280;
      }

      while (v10 != v7);
      v7 = *(a1 + 320);
      v6 = v9;
    }

    while (v7 != v6)
    {
      v7 -= 1280;
      sub_1002813D0(v7);
    }

    *(a1 + 320) = v6;
    return;
  }

  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (!v11)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I updating state for cross platform transfer plan", __p, 2u);
    }

    CellularPlanDeliveryModel::updatePlanStates_sync(a1, v6, 0xCu);
    return;
  }

  (***(a1 + 112))(&v49);
  sub_100923D58(&v49, a2, v6 + 24, __p);
  v12 = *(v6 + 287);
  if (v12 >= 0)
  {
    v13 = *(v6 + 287);
  }

  else
  {
    v13 = *(v6 + 272);
  }

  v14 = BYTE7(v26[0]);
  v15 = SBYTE7(v26[0]);
  if (SBYTE7(v26[0]) < 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 0;
    if ((SBYTE7(v26[0]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v12 >= 0)
  {
    v16 = (v6 + 264);
  }

  else
  {
    v16 = *(v6 + 264);
  }

  if ((SBYTE7(v26[0]) & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) == 0;
  if (v15 < 0)
  {
LABEL_37:
    operator delete(__p[0]);
  }

LABEL_38:
  if (v50)
  {
    sub_100004A34(v50);
  }

  if (v18)
  {
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I deleting cross platform transfer plan", __p, 2u);
    }

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
    memset(v26, 0, sizeof(v26));
    *__p = 0u;
    if (*(v6 + 263) < 0)
    {
      sub_100005F2C(__p, *(v6 + 240), *(v6 + 248));
    }

    else
    {
      *__p = *(v6 + 240);
      *&v26[0] = *(v6 + 256);
    }

    WORD4(v26[0]) = 512;
    BYTE4(v26[1]) = 0;
    BYTE8(v26[1]) = 0;
    BYTE12(v26[1]) = 0;
    LOBYTE(v27) = 0;
    BYTE8(v27) = 0;
    LOBYTE(v29) = 0;
    LODWORD(v30) = 0;
    BYTE8(v30) = 0;
    LOBYTE(v32) = 0;
    BYTE8(v32) = 0;
    LOBYTE(v34) = 0;
    BYTE8(v34) = 0;
    LOBYTE(v35) = 0;
    BYTE4(v37) = 0;
    BYTE8(v37) = 0;
    LOBYTE(v38) = 0;
    BYTE8(v38) = 0;
    LOBYTE(v39) = 0;
    BYTE8(v40) = 0;
    LOBYTE(v41) = 0;
    BYTE8(v42) = 0;
    LOBYTE(v43) = 0;
    BYTE8(v44) = 0;
    LOBYTE(v45) = 0;
    BYTE8(v46) = 0;
    LOBYTE(v47) = 0;
    BYTE8(v48) = 0;
    *(v26 + 13) = 0;
    *(v26 + 10) = 0;
    DWORD2(v29) = 0;
    WORD6(v29) = 0;
    v36 = 0uLL;
    *(&v35 + 1) = 0;
    LOBYTE(v37) = 0;
    v21 = *(a1 + 320);
    if (v6 + 1280 != v21)
    {
      do
      {
        sub_1007CC0DC(v6, (v6 + 1280));
        v6 += 1280;
      }

      while (v6 + 1280 != v21);
      v21 = *(a1 + 320);
    }

    while (v21 != v6)
    {
      v21 -= 1280;
      sub_1002813D0(v21);
    }

    *(a1 + 320) = v6;
    v22 = *(a1 + 304);
    if (v22)
    {
      v23 = std::__shared_weak_count::lock(v22);
      if (v23)
      {
        v24 = *(a1 + 296);
        if (v24)
        {
          (*(*v24 + 80))(v24, __p);
LABEL_59:
          sub_100004A34(v23);
LABEL_60:
          sub_10028290C(__p);
          return;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    if (!v23)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }
}

void sub_1007C255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100004A34(v9);
  sub_10028290C(&a9);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::getMessageSessionWrapper_sync@<X0>(CellularPlanDeliveryModel *this@<X0>, void *a2@<X8>)
{
  result = *(this + 20);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

_BYTE *CellularPlanDeliveryModel::getDCTCode_sync@<X0>(CellularPlanDeliveryModel *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 20);
  if (v3)
  {
    v4 = *(*v3 + 64);

    return v4();
  }

  else
  {
    result = sub_10000501C(a2, 0);
    a2[24] = 1;
  }

  return result;
}

uint64_t CellularPlanDeliveryModel::deleteAllPendingTransferPlans(CellularPlanDeliveryModel *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I deleting all pending transfer items", __p, 2u);
  }

  v4 = *(this + 39);
  v3 = *(this + 40);
  if (v4 == v3)
  {
    goto LABEL_23;
  }

  v5 = *(this + 40);
  while (1)
  {
    if ((*(v4 + 9) & 1) == 0)
    {
      sub_1007C4FBC(v4 + 456, (v4 + 480), this + 26, __p);
      v6 = v12;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v6)
      {
        break;
      }
    }

    v4 += 1280;
    if (v4 == v3)
    {
      return sub_1007C279C(this + 312, v5, *(this + 40));
    }
  }

  if (v4 != v3)
  {
    v7 = v4 + 1280;
    if (v4 + 1280 != v3)
    {
      v5 = v4;
      do
      {
        if (*(v7 + 9))
        {
          goto LABEL_20;
        }

        sub_1007C4FBC(v7 + 456, (v7 + 480), this + 26, __p);
        v8 = v12;
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v8 & 1) == 0)
        {
LABEL_20:
          sub_1007CC0DC(v5, v7);
          v5 += 1280;
        }

        v7 += 1280;
      }

      while (v7 != v3);
      return sub_1007C279C(this + 312, v5, *(this + 40));
    }

LABEL_23:
    v5 = v4;
  }

  return sub_1007C279C(this + 312, v5, *(this + 40));
}

uint64_t sub_1007C279C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_1007CC0DC(v7, v4);
        v4 += 80;
        v7 += 1280;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 1280;
      sub_1002813D0(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

char *CellularPlanDeliveryModel::getTransferSourceIMEIDuringBuddyTransfer@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[503] < 0)
  {
    return sub_100005F2C(a2, *(this + 60), *(this + 61));
  }

  *a2 = *(this + 30);
  *(a2 + 16) = *(this + 62);
  return this;
}

std::string *CellularPlanDeliveryModel::setTransferSourceIMEIDuringBuddyTransfer(std::string *result, const std::string *a2)
{
  if (LODWORD(result[10].__r_.__value_.__r.__words[2]) == 1)
  {
    v3 = result;
    v4 = result[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a2;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v5 = a2->__r_.__value_.__r.__words[0];
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I detected source imei [%s] during buddy", &v6, 0xCu);
    }

    return std::string::operator=(v3 + 20, a2);
  }

  return result;
}

void CellularPlanDeliveryModel::getPendingInstallPlansConsentStatus(CellularPlanDeliveryModel *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v79 = a2[1];
  if (*a2 != v79)
  {
    v6 = 0;
    do
    {
      v7 = (v4 + 72);
      v8 = *(v4 + 95);
      if (v8 < 0)
      {
        v11 = *(v4 + 80);
        if (!v11)
        {
LABEL_50:
          v31 = *(a1 + 39);
          v32 = *(a1 + 40);
          if (v31 != v32)
          {
            v33 = *(v4 + 71);
            if (v33 >= 0)
            {
              v34 = *(v4 + 71);
            }

            else
            {
              v34 = *(v4 + 56);
            }

            v35 = v31 + 240;
            while (1)
            {
              v36 = *(v35 + 23);
              v37 = v36;
              if ((v36 & 0x80u) != 0)
              {
                v36 = *(v35 + 8);
              }

              if (v34 == v36)
              {
                v38 = v33 >= 0 ? (v4 + 48) : *(v4 + 48);
                v39 = v37 >= 0 ? v35 : *v35;
                if (!memcmp(v38, v39, v34) && *(v35 - 239) == 9)
                {
                  break;
                }
              }

              v41 = v35 + 1040;
              v35 += 1280;
              if (v41 == v32)
              {
                goto LABEL_128;
              }
            }

            v31 = v35 - 240;
          }

          if (v31 != v32)
          {
            if (*(v4 + 304) == 1)
            {
              v3 = a3;
              std::string::operator=((v4 + 152), (v31 + 432));
            }

            else
            {
              __p = 0uLL;
              v81 = 0;
              v3 = a3;
              if (*(v31 + 455) < 0)
              {
                sub_100005F2C(&v82, *(v31 + 432), *(v31 + 440));
              }

              else
              {
                v82 = *(v31 + 432);
                v83 = *(v31 + 448);
              }

              v84 = 0;
              v85 = 0;
              v87 = 0;
              v86 = 0;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              sub_1007C3418(v4 + 128, &__p);
              if (SHIBYTE(v93) < 0)
              {
                operator delete(*(&v92 + 1));
              }

              if (SBYTE7(v92) < 0)
              {
                operator delete(v91);
              }

              if (SHIBYTE(v90) < 0)
              {
                operator delete(*(&v89 + 1));
              }

              if (SBYTE7(v89) < 0)
              {
                operator delete(v88);
              }

              if (SHIBYTE(v86) < 0)
              {
                operator delete(v84);
              }

              if (SHIBYTE(v83) < 0)
              {
                operator delete(v82);
              }

              if (SHIBYTE(v81) < 0)
              {
                operator delete(__p);
              }
            }

            if ((*(v31 + 479) & 0x8000000000000000) != 0)
            {
              if (*(v31 + 464))
              {
                goto LABEL_185;
              }
            }

            else
            {
              if (!*(v31 + 479))
              {
                goto LABEL_186;
              }

LABEL_185:
              std::string::operator=((v4 + 128), (v31 + 456));
            }

LABEL_186:
            LOBYTE(__p) = 1;
            v52 = v3[1];
            if (v52 >= v3[2])
            {
              goto LABEL_188;
            }

LABEL_187:
            *v52 = 1;
            v72 = *v4;
            *(v52 + 24) = *(v4 + 16);
            *(v52 + 8) = v72;
            *(v4 + 8) = 0;
            *(v4 + 16) = 0;
            *v4 = 0;
            v73 = *(v4 + 24);
            *(v52 + 48) = *(v4 + 40);
            *(v52 + 32) = v73;
            *(v4 + 32) = 0;
            *(v4 + 40) = 0;
            *(v4 + 24) = 0;
            v74 = *(v4 + 48);
            *(v52 + 72) = *(v4 + 64);
            *(v52 + 56) = v74;
            *(v4 + 56) = 0;
            *(v4 + 64) = 0;
            *(v4 + 48) = 0;
            v75 = *v7;
            *(v52 + 96) = *(v4 + 88);
            *(v52 + 80) = v75;
            *v7 = 0;
            *(v4 + 80) = 0;
            *(v4 + 88) = 0;
            v76 = *(v4 + 96);
            *(v52 + 120) = *(v4 + 112);
            *(v52 + 104) = v76;
            *(v4 + 96) = 0;
            *(v4 + 104) = 0;
            *(v4 + 112) = 0;
            *(v52 + 128) = *(v4 + 120);
            sub_1000DE908(v52 + 136, (v4 + 128));
            v6 = v52 + 320;
            goto LABEL_190;
          }

LABEL_128:
          v59 = *(a1 + 5);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v77 = (v4 + 48);
            if (*(v4 + 71) < 0)
            {
              v77 = *v77;
            }

            LODWORD(__p) = 136315138;
            *(&__p + 4) = v77;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Empty iccidHash from ALS for carrier: %s", &__p, 0xCu);
            v6 = a3[1];
          }

          LOBYTE(__p) = 0;
          v3 = a3;
          if (v6 >= a3[2])
          {
            goto LABEL_131;
          }

          *v6 = 0;
          v60 = *v4;
          *(v6 + 24) = *(v4 + 16);
          *(v6 + 8) = v60;
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *v4 = 0;
          v61 = *(v4 + 24);
          *(v6 + 48) = *(v4 + 40);
          *(v6 + 32) = v61;
          *(v4 + 32) = 0;
          *(v4 + 40) = 0;
          *(v4 + 24) = 0;
          v62 = *(v4 + 48);
          *(v6 + 72) = *(v4 + 64);
          *(v6 + 56) = v62;
          *(v4 + 56) = 0;
          *(v4 + 64) = 0;
          *(v4 + 48) = 0;
          v63 = *v7;
          *(v6 + 96) = *(v4 + 88);
          *(v6 + 80) = v63;
          *v7 = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
          v64 = *(v4 + 96);
          *(v6 + 120) = *(v4 + 112);
          *(v6 + 104) = v64;
          *(v4 + 96) = 0;
          *(v4 + 104) = 0;
          *(v4 + 112) = 0;
          *(v6 + 128) = *(v4 + 120);
          sub_1000DE908(v6 + 136, (v4 + 128));
          v6 += 320;
          goto LABEL_190;
        }

        v10 = *v7;
        v9 = (*v7 + v11);
      }

      else
      {
        if (!*(v4 + 95))
        {
          goto LABEL_50;
        }

        v9 = v7 + v8;
        v10 = (v4 + 72);
      }

      while (v10 != v9)
      {
        *v10 = __tolower(*v10);
        ++v10;
      }

      v13 = *(a1 + 39);
      v12 = *(a1 + 40);
      if (v13 != v12)
      {
        v14 = v13 + 456;
        while (1)
        {
          v15 = *(v4 + 95);
          if (v15 >= 0)
          {
            v16 = *(v4 + 95);
          }

          else
          {
            v16 = *(v4 + 80);
          }

          v17 = *(v14 + 47);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v14 + 32);
          }

          if (v16 == v17)
          {
            v19 = v15 >= 0 ? (v4 + 72) : *v7;
            v20 = v18 >= 0 ? (v14 + 24) : *(v14 + 24);
            if (!memcmp(v19, v20, v16))
            {
              break;
            }
          }

          __p = 0uLL;
          v81 = 0;
          sub_10092CF84(v14, &__p);
          v21 = *(v4 + 95);
          if (v21 >= 0)
          {
            v22 = *(v4 + 95);
          }

          else
          {
            v22 = *(v4 + 80);
          }

          v23 = HIBYTE(v81);
          v24 = HIBYTE(v81);
          if (v81 < 0)
          {
            v23 = *(&__p + 1);
          }

          if (v22 == v23 && (v21 >= 0 ? (v25 = (v4 + 72)) : (v25 = *v7), v81 >= 0 ? (p_p = &__p) : (p_p = __p), !memcmp(v25, p_p, v22)))
          {
            v29 = *(a1 + 5);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v14 + 23) >= 0)
              {
                v30 = v14;
              }

              else
              {
                v30 = *v14;
              }

              *buf = 136315138;
              v95 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I find a match by padding iccid %s", buf, 0xCu);
              v27 = 1;
              v24 = HIBYTE(v81);
            }

            else
            {
              v27 = 1;
            }
          }

          else
          {
            v27 = 0;
          }

          if (v24 < 0)
          {
            operator delete(__p);
          }

          if (v27)
          {
            v13 = v14 - 456;
            break;
          }

          v13 += 1280;
          v28 = v14 + 824;
          v14 += 1280;
          if (v28 == v12)
          {
            v13 = v12;
            break;
          }
        }

        v12 = *(a1 + 40);
        v3 = a3;
      }

      if (v13 != v12)
      {
        if (*(v4 + 121) == 1)
        {
          *(v13 + 984) = 1;
        }

        if (*(v4 + 304) == 1)
        {
          std::string::operator=((v4 + 152), (v13 + 432));
        }

        else
        {
          __p = 0uLL;
          v81 = 0;
          if (*(v13 + 455) < 0)
          {
            sub_100005F2C(&v82, *(v13 + 432), *(v13 + 440));
          }

          else
          {
            v82 = *(v13 + 432);
            v83 = *(v13 + 448);
          }

          v84 = 0;
          v85 = 0;
          v87 = 0;
          v86 = 0;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          sub_1007C3418(v4 + 128, &__p);
          if (SHIBYTE(v93) < 0)
          {
            operator delete(*(&v92 + 1));
          }

          if (SBYTE7(v92) < 0)
          {
            operator delete(v91);
          }

          if (SHIBYTE(v90) < 0)
          {
            operator delete(*(&v89 + 1));
          }

          if (SBYTE7(v89) < 0)
          {
            operator delete(v88);
          }

          if (SHIBYTE(v86) < 0)
          {
            operator delete(v84);
          }

          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82);
          }

          if (SHIBYTE(v81) < 0)
          {
            operator delete(__p);
          }
        }

        if ((*(v13 + 479) & 0x8000000000000000) != 0)
        {
          if (!*(v13 + 464))
          {
            goto LABEL_152;
          }
        }

        else if (!*(v13 + 479))
        {
LABEL_152:
          if ((*(v13 + 455) & 0x8000000000000000) != 0)
          {
            if (!*(v13 + 440))
            {
LABEL_156:
              CellularPlanDeliveryModel::updatePlanStates_sync(a1, v13, 0xCu);
              CellularPlanDeliveryModel::notifyPlansUpdate(a1);
            }
          }

          else if (!*(v13 + 455))
          {
            goto LABEL_156;
          }

          LOBYTE(__p) = 1;
          v52 = v3[1];
          if (v52 >= v3[2])
          {
LABEL_188:
            v65 = sub_1007CCCB0(v3, &__p, v4);
            goto LABEL_189;
          }

          goto LABEL_187;
        }

        std::string::operator=((v4 + 128), (v13 + 456));
        goto LABEL_152;
      }

      v42 = *(a1 + 39);
      v43 = v42;
      if (v42 != v12)
      {
        v44 = *(v4 + 71);
        if (v44 >= 0)
        {
          v45 = *(v4 + 71);
        }

        else
        {
          v45 = *(v4 + 56);
        }

        v43 = *(a1 + 39);
        while (1)
        {
          v46 = *(v43 + 263);
          v47 = v46;
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(v43 + 248);
          }

          if (v45 == v46)
          {
            v48 = v44 >= 0 ? (v4 + 48) : *(v4 + 48);
            v49 = v47 >= 0 ? (v43 + 240) : *(v43 + 240);
            if (!memcmp(v48, v49, v45))
            {
              v50 = *(v43 + 455);
              if ((v50 & 0x80u) != 0)
              {
                v50 = *(v43 + 440);
              }

              if (!v50)
              {
                v51 = *(v43 + 503);
                if ((v51 & 0x80u) != 0)
                {
                  v51 = *(v43 + 488);
                }

                if (!v51)
                {
                  break;
                }
              }
            }
          }

          v43 += 1280;
          if (v43 == v12)
          {
            goto LABEL_104;
          }
        }
      }

      if (v43 != v12)
      {
        std::string::operator=((v43 + 480), (v4 + 72));
        CellularPlanDeliveryModel::updatePlanStates_sync(a1, v43, 0xCu);
        CellularPlanDeliveryModel::notifyPlansUpdate(a1);
      }

LABEL_104:
      if (*(v4 + 121) == 1)
      {
        v3 = a3;
        CellularPlanDeliveryModel::appendPendingODAPlan(a1, v4);
        LOBYTE(__p) = 1;
        v52 = a3[1];
        if (v52 >= a3[2])
        {
          goto LABEL_188;
        }

        goto LABEL_187;
      }

      if (v42 != v12)
      {
        v53 = *(v4 + 71);
        if (v53 >= 0)
        {
          v54 = *(v4 + 71);
        }

        else
        {
          v54 = *(v4 + 56);
        }

        while (1)
        {
          v55 = *(v42 + 263);
          v56 = v55;
          if ((v55 & 0x80u) != 0)
          {
            v55 = *(v42 + 248);
          }

          if (v54 == v55)
          {
            v57 = v53 >= 0 ? (v4 + 48) : *(v4 + 48);
            v58 = v56 >= 0 ? (v42 + 240) : *(v42 + 240);
            if (!memcmp(v57, v58, v54) && (*(v42 + 1225) & 1) != 0)
            {
              break;
            }
          }

          v42 += 1280;
          if (v42 == v12)
          {
            goto LABEL_163;
          }
        }
      }

      if (v42 != v12)
      {
        std::string::operator=((v42 + 480), (v4 + 72));
        CellularPlanDeliveryModel::notifyPlansUpdate(a1);
      }

LABEL_163:
      LOBYTE(__p) = 0;
      v3 = a3;
      v66 = a3[1];
      if (v66 >= a3[2])
      {
LABEL_131:
        v65 = sub_1007CCCB0(a3, &__p, v4);
LABEL_189:
        v6 = v65;
        goto LABEL_190;
      }

      *v66 = 0;
      v67 = *v4;
      *(v66 + 24) = *(v4 + 16);
      *(v66 + 8) = v67;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      v68 = *(v4 + 24);
      *(v66 + 48) = *(v4 + 40);
      *(v66 + 32) = v68;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      v69 = *(v4 + 48);
      *(v66 + 72) = *(v4 + 64);
      *(v66 + 56) = v69;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 48) = 0;
      v70 = *v7;
      *(v66 + 96) = *(v4 + 88);
      *(v66 + 80) = v70;
      *v7 = 0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      v71 = *(v4 + 96);
      *(v66 + 120) = *(v4 + 112);
      *(v66 + 104) = v71;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 112) = 0;
      *(v66 + 128) = *(v4 + 120);
      sub_1000DE908(v66 + 136, (v4 + 128));
      v6 = v66 + 320;
LABEL_190:
      v3[1] = v6;
      v4 += 312;
    }

    while (v4 != v79);
  }
}